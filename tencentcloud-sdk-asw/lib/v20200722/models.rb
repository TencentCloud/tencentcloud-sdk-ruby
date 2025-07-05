# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module TencentCloud
  module Asw
    module V20200722
      # CreateFlowService请求参数结构体
      class CreateFlowServiceRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 定义文本（JSON格式）
        # @type Definition: String
        # @param FlowServiceName: 状态机所属服务名
        # @type FlowServiceName: String
        # @param IsNewRole: 是不是新的角色
        # @type IsNewRole: Boolean
        # @param Type: 状态机类型（EXPRESS，STANDARD）
        # @type Type: String
        # @param FlowServiceChineseName: 状态机所属服务中文名
        # @type FlowServiceChineseName: String
        # @param RoleResource: 角色资源名, 比如: qcs::cam::uin/20103392:roleName/SomeRoleForYourStateMachine
        # @type RoleResource: String
        # @param Description: 备注
        # @type Description: String
        # @param EnableCLS: 是否开启CLS日志投递功能
        # @type EnableCLS: Boolean
        # @param Input: 该状态机的默认输入
        # @type Input: String

        attr_accessor :Definition, :FlowServiceName, :IsNewRole, :Type, :FlowServiceChineseName, :RoleResource, :Description, :EnableCLS, :Input

        def initialize(definition=nil, flowservicename=nil, isnewrole=nil, type=nil, flowservicechinesename=nil, roleresource=nil, description=nil, enablecls=nil, input=nil)
          @Definition = definition
          @FlowServiceName = flowservicename
          @IsNewRole = isnewrole
          @Type = type
          @FlowServiceChineseName = flowservicechinesename
          @RoleResource = roleresource
          @Description = description
          @EnableCLS = enablecls
          @Input = input
        end

        def deserialize(params)
          @Definition = params['Definition']
          @FlowServiceName = params['FlowServiceName']
          @IsNewRole = params['IsNewRole']
          @Type = params['Type']
          @FlowServiceChineseName = params['FlowServiceChineseName']
          @RoleResource = params['RoleResource']
          @Description = params['Description']
          @EnableCLS = params['EnableCLS']
          @Input = params['Input']
        end
      end

      # CreateFlowService返回参数结构体
      class CreateFlowServiceResponse < TencentCloud::Common::AbstractModel
        # @param FlowServiceResource: 状态机所属服务资源
        # @type FlowServiceResource: String
        # @param CreateDate: 生成日期
        # @type CreateDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowServiceResource, :CreateDate, :RequestId

        def initialize(flowserviceresource=nil, createdate=nil, requestid=nil)
          @FlowServiceResource = flowserviceresource
          @CreateDate = createdate
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowServiceResource = params['FlowServiceResource']
          @CreateDate = params['CreateDate']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExecutionHistory请求参数结构体
      class DescribeExecutionHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ExecutionResourceName: 执行资源名
        # @type ExecutionResourceName: String

        attr_accessor :ExecutionResourceName

        def initialize(executionresourcename=nil)
          @ExecutionResourceName = executionresourcename
        end

        def deserialize(params)
          @ExecutionResourceName = params['ExecutionResourceName']
        end
      end

      # DescribeExecutionHistory返回参数结构体
      class DescribeExecutionHistoryResponse < TencentCloud::Common::AbstractModel
        # @param Events: 执行的事件列表
        # @type Events: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Events, :RequestId

        def initialize(events=nil, requestid=nil)
          @Events = events
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              executionevent_tmp = ExecutionEvent.new
              executionevent_tmp.deserialize(i)
              @Events << executionevent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeExecution请求参数结构体
      class DescribeExecutionRequest < TencentCloud::Common::AbstractModel
        # @param ExecutionResourceName: 执行资源名
        # @type ExecutionResourceName: String

        attr_accessor :ExecutionResourceName

        def initialize(executionresourcename=nil)
          @ExecutionResourceName = executionresourcename
        end

        def deserialize(params)
          @ExecutionResourceName = params['ExecutionResourceName']
        end
      end

      # DescribeExecution返回参数结构体
      class DescribeExecutionResponse < TencentCloud::Common::AbstractModel
        # @param ExecutionResourceName: 执行资源名
        # @type ExecutionResourceName: String
        # @param Name: 资源名称
        # @type Name: String
        # @param StartDate: 执行开始时间，毫秒
        # @type StartDate: String
        # @param StopDate: 执行结束时间，毫秒
        # @type StopDate: String
        # @param StateMachineResourceName: 状态机资源名
        # @type StateMachineResourceName: String
        # @param Status: 执行状态。INIT，RUNNING，SUCCEED，FAILED，TERMINATED
        # @type Status: String
        # @param Input: 执行的输入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: String
        # @param Output: 执行的输出
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: String
        # @param ExecutionDefinition: 启动执行时，状态机的定义
        # @type ExecutionDefinition: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExecutionResourceName, :Name, :StartDate, :StopDate, :StateMachineResourceName, :Status, :Input, :Output, :ExecutionDefinition, :RequestId

        def initialize(executionresourcename=nil, name=nil, startdate=nil, stopdate=nil, statemachineresourcename=nil, status=nil, input=nil, output=nil, executiondefinition=nil, requestid=nil)
          @ExecutionResourceName = executionresourcename
          @Name = name
          @StartDate = startdate
          @StopDate = stopdate
          @StateMachineResourceName = statemachineresourcename
          @Status = status
          @Input = input
          @Output = output
          @ExecutionDefinition = executiondefinition
          @RequestId = requestid
        end

        def deserialize(params)
          @ExecutionResourceName = params['ExecutionResourceName']
          @Name = params['Name']
          @StartDate = params['StartDate']
          @StopDate = params['StopDate']
          @StateMachineResourceName = params['StateMachineResourceName']
          @Status = params['Status']
          @Input = params['Input']
          @Output = params['Output']
          @ExecutionDefinition = params['ExecutionDefinition']
          @RequestId = params['RequestId']
        end
      end

      # DescribeExecutions请求参数结构体
      class DescribeExecutionsRequest < TencentCloud::Common::AbstractModel
        # @param StateMachineResourceName: 状态机资源名
        # @type StateMachineResourceName: String
        # @param PageSize: 页大小，最大100
        # @type PageSize: Integer
        # @param PageIndex: 页序号，从1开始
        # @type PageIndex: Integer
        # @param FilterExecutionStatus: 按状态过滤条件，INIT，RUNNING，SUCCEED，FAILED，TERMINATED
        # @type FilterExecutionStatus: String
        # @param FilterExecutionResourceName: 按执行名过滤条件
        # @type FilterExecutionResourceName: String

        attr_accessor :StateMachineResourceName, :PageSize, :PageIndex, :FilterExecutionStatus, :FilterExecutionResourceName

        def initialize(statemachineresourcename=nil, pagesize=nil, pageindex=nil, filterexecutionstatus=nil, filterexecutionresourcename=nil)
          @StateMachineResourceName = statemachineresourcename
          @PageSize = pagesize
          @PageIndex = pageindex
          @FilterExecutionStatus = filterexecutionstatus
          @FilterExecutionResourceName = filterexecutionresourcename
        end

        def deserialize(params)
          @StateMachineResourceName = params['StateMachineResourceName']
          @PageSize = params['PageSize']
          @PageIndex = params['PageIndex']
          @FilterExecutionStatus = params['FilterExecutionStatus']
          @FilterExecutionResourceName = params['FilterExecutionResourceName']
        end
      end

      # DescribeExecutions返回参数结构体
      class DescribeExecutionsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowServiceDetail请求参数结构体
      class DescribeFlowServiceDetailRequest < TencentCloud::Common::AbstractModel
        # @param FlowServiceResource: 状态机所属服务资源名
        # @type FlowServiceResource: String

        attr_accessor :FlowServiceResource

        def initialize(flowserviceresource=nil)
          @FlowServiceResource = flowserviceresource
        end

        def deserialize(params)
          @FlowServiceResource = params['FlowServiceResource']
        end
      end

      # DescribeFlowServiceDetail返回参数结构体
      class DescribeFlowServiceDetailResponse < TencentCloud::Common::AbstractModel
        # @param FlowServiceName: 状态机所属服务名
        # @type FlowServiceName: String
        # @param Status: 状态机状态
        # @type Status: String
        # @param Definition: 定义文本（JSON格式）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Definition: String
        # @param RoleResource: 角色资源名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoleResource: String
        # @param Type: 状态机的类型，可以为 （EXPRESS/STANDARD）
        # @type Type: String
        # @param CreateDate: 生成时间
        # @type CreateDate: String
        # @param Description: 备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param FlowServiceChineseName: 状态机所属服务中文名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowServiceChineseName: String
        # @param EnableCLS: 是否开启日志CLS服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnableCLS: Boolean
        # @param CLSUrl: CLS日志查看地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CLSUrl: String
        # @param FlowInput: 工作流提示输入
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowInput: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowServiceName, :Status, :Definition, :RoleResource, :Type, :CreateDate, :Description, :FlowServiceChineseName, :EnableCLS, :CLSUrl, :FlowInput, :RequestId

        def initialize(flowservicename=nil, status=nil, definition=nil, roleresource=nil, type=nil, createdate=nil, description=nil, flowservicechinesename=nil, enablecls=nil, clsurl=nil, flowinput=nil, requestid=nil)
          @FlowServiceName = flowservicename
          @Status = status
          @Definition = definition
          @RoleResource = roleresource
          @Type = type
          @CreateDate = createdate
          @Description = description
          @FlowServiceChineseName = flowservicechinesename
          @EnableCLS = enablecls
          @CLSUrl = clsurl
          @FlowInput = flowinput
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowServiceName = params['FlowServiceName']
          @Status = params['Status']
          @Definition = params['Definition']
          @RoleResource = params['RoleResource']
          @Type = params['Type']
          @CreateDate = params['CreateDate']
          @Description = params['Description']
          @FlowServiceChineseName = params['FlowServiceChineseName']
          @EnableCLS = params['EnableCLS']
          @CLSUrl = params['CLSUrl']
          @FlowInput = params['FlowInput']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowServices请求参数结构体
      class DescribeFlowServicesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件，详见下表：实例过滤条件表。每次请求的Filter.Values的上限为5。参数名字仅支持FlowServiceName， Status, Type三种情况
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeFlowServices返回参数结构体
      class DescribeFlowServicesResponse < TencentCloud::Common::AbstractModel
        # @param FlowServiceSet: 用户的状态机列表
        # @type FlowServiceSet: Array
        # @param TotalCount: 用户的状态机总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowServiceSet, :TotalCount, :RequestId

        def initialize(flowserviceset=nil, totalcount=nil, requestid=nil)
          @FlowServiceSet = flowserviceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FlowServiceSet'].nil?
            @FlowServiceSet = []
            params['FlowServiceSet'].each do |i|
              statemachine_tmp = StateMachine.new
              statemachine_tmp.deserialize(i)
              @FlowServiceSet << statemachine_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 执行的事件历史
      class ExecutionEvent < TencentCloud::Common::AbstractModel
        # @param ExecutionResourceName: 执行资源名
        # @type ExecutionResourceName: String
        # @param EventId: 自增序号
        # @type EventId: Integer
        # @param EventCategory: 事件类型
        # @type EventCategory: String
        # @param StepName: 步骤节点名称
        # @type StepName: String
        # @param ResourceName: 该步骤引用的资源名
        # @type ResourceName: String
        # @param Timestamp: 该事件发生时间，毫秒
        # @type Timestamp: String
        # @param Content: 事件内容
        # @type Content: String
        # @param Exception: 异常信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Exception: String

        attr_accessor :ExecutionResourceName, :EventId, :EventCategory, :StepName, :ResourceName, :Timestamp, :Content, :Exception

        def initialize(executionresourcename=nil, eventid=nil, eventcategory=nil, stepname=nil, resourcename=nil, timestamp=nil, content=nil, exception=nil)
          @ExecutionResourceName = executionresourcename
          @EventId = eventid
          @EventCategory = eventcategory
          @StepName = stepname
          @ResourceName = resourcename
          @Timestamp = timestamp
          @Content = content
          @Exception = exception
        end

        def deserialize(params)
          @ExecutionResourceName = params['ExecutionResourceName']
          @EventId = params['EventId']
          @EventCategory = params['EventCategory']
          @StepName = params['StepName']
          @ResourceName = params['ResourceName']
          @Timestamp = params['Timestamp']
          @Content = params['Content']
          @Exception = params['Exception']
        end
      end

      # 模版过滤类型
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤器名字
        # @type Name: String
        # @param Values: 过滤器值的数组
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # ModifyFlowService请求参数结构体
      class ModifyFlowServiceRequest < TencentCloud::Common::AbstractModel
        # @param FlowServiceResource: 状态机资源名
        # @type FlowServiceResource: String
        # @param Definition: 定义JSON
        # @type Definition: String
        # @param FlowServiceName: 状态机所属服务名
        # @type FlowServiceName: String
        # @param FlowServiceChineseName: 状态机所属服务中文名
        # @type FlowServiceChineseName: String
        # @param IsNewRole: 是否是新角色
        # @type IsNewRole: Boolean
        # @param Type: 状态机类型
        # @type Type: String
        # @param RoleResource: 角色资源名
        # @type RoleResource: String
        # @param Description: 状态机备注
        # @type Description: String
        # @param EnableCLS: 是否允许日志投递
        # @type EnableCLS: Boolean

        attr_accessor :FlowServiceResource, :Definition, :FlowServiceName, :FlowServiceChineseName, :IsNewRole, :Type, :RoleResource, :Description, :EnableCLS

        def initialize(flowserviceresource=nil, definition=nil, flowservicename=nil, flowservicechinesename=nil, isnewrole=nil, type=nil, roleresource=nil, description=nil, enablecls=nil)
          @FlowServiceResource = flowserviceresource
          @Definition = definition
          @FlowServiceName = flowservicename
          @FlowServiceChineseName = flowservicechinesename
          @IsNewRole = isnewrole
          @Type = type
          @RoleResource = roleresource
          @Description = description
          @EnableCLS = enablecls
        end

        def deserialize(params)
          @FlowServiceResource = params['FlowServiceResource']
          @Definition = params['Definition']
          @FlowServiceName = params['FlowServiceName']
          @FlowServiceChineseName = params['FlowServiceChineseName']
          @IsNewRole = params['IsNewRole']
          @Type = params['Type']
          @RoleResource = params['RoleResource']
          @Description = params['Description']
          @EnableCLS = params['EnableCLS']
        end
      end

      # ModifyFlowService返回参数结构体
      class ModifyFlowServiceResponse < TencentCloud::Common::AbstractModel
        # @param FlowServiceResource: 状态机资源名
        # @type FlowServiceResource: String
        # @param UpdateDate: 更新时间
        # @type UpdateDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowServiceResource, :UpdateDate, :RequestId

        def initialize(flowserviceresource=nil, updatedate=nil, requestid=nil)
          @FlowServiceResource = flowserviceresource
          @UpdateDate = updatedate
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowServiceResource = params['FlowServiceResource']
          @UpdateDate = params['UpdateDate']
          @RequestId = params['RequestId']
        end
      end

      # StartExecution请求参数结构体
      class StartExecutionRequest < TencentCloud::Common::AbstractModel
        # @param StateMachineResourceName: 状态机资源名
        # @type StateMachineResourceName: String
        # @param Input: 输入参数，内容为JsonObject，长度不大于524288字符。
        # @type Input: String
        # @param Name: 本次执行名。如果不填，系统会自动生成。如果填，应保证状态机下唯一
        # @type Name: String

        attr_accessor :StateMachineResourceName, :Input, :Name

        def initialize(statemachineresourcename=nil, input=nil, name=nil)
          @StateMachineResourceName = statemachineresourcename
          @Input = input
          @Name = name
        end

        def deserialize(params)
          @StateMachineResourceName = params['StateMachineResourceName']
          @Input = params['Input']
          @Name = params['Name']
        end
      end

      # StartExecution返回参数结构体
      class StartExecutionResponse < TencentCloud::Common::AbstractModel
        # @param ExecutionResourceName: 执行资源名
        # @type ExecutionResourceName: String
        # @param StartDate: 执行开始时间
        # @type StartDate: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExecutionResourceName, :StartDate, :RequestId

        def initialize(executionresourcename=nil, startdate=nil, requestid=nil)
          @ExecutionResourceName = executionresourcename
          @StartDate = startdate
          @RequestId = requestid
        end

        def deserialize(params)
          @ExecutionResourceName = params['ExecutionResourceName']
          @StartDate = params['StartDate']
          @RequestId = params['RequestId']
        end
      end

      # 状态机
      class StateMachine < TencentCloud::Common::AbstractModel
        # @param FlowServiceResource: 状态机资源
        # @type FlowServiceResource: String
        # @param Type: 状态机类型。EXPRESS，STANDARD
        # @type Type: String
        # @param FlowServiceName: 状态机名称
        # @type FlowServiceName: String
        # @param FlowServiceChineseName: 状态机中文名
        # @type FlowServiceChineseName: String
        # @param CreateDate: 创建时间。timestamp
        # @type CreateDate: String
        # @param ModifyDate: 修改时间。timestamp
        # @type ModifyDate: String
        # @param Status: 状态机状态
        # @type Status: String
        # @param Creator: 创建者的subAccountUin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param Modifier: 修改者的subAccountUin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Modifier: String
        # @param FlowServiceId: 状态机id
        # @type FlowServiceId: String
        # @param TemplateId: 模板id
        # @type TemplateId: String
        # @param Description: 备注
        # @type Description: String

        attr_accessor :FlowServiceResource, :Type, :FlowServiceName, :FlowServiceChineseName, :CreateDate, :ModifyDate, :Status, :Creator, :Modifier, :FlowServiceId, :TemplateId, :Description

        def initialize(flowserviceresource=nil, type=nil, flowservicename=nil, flowservicechinesename=nil, createdate=nil, modifydate=nil, status=nil, creator=nil, modifier=nil, flowserviceid=nil, templateid=nil, description=nil)
          @FlowServiceResource = flowserviceresource
          @Type = type
          @FlowServiceName = flowservicename
          @FlowServiceChineseName = flowservicechinesename
          @CreateDate = createdate
          @ModifyDate = modifydate
          @Status = status
          @Creator = creator
          @Modifier = modifier
          @FlowServiceId = flowserviceid
          @TemplateId = templateid
          @Description = description
        end

        def deserialize(params)
          @FlowServiceResource = params['FlowServiceResource']
          @Type = params['Type']
          @FlowServiceName = params['FlowServiceName']
          @FlowServiceChineseName = params['FlowServiceChineseName']
          @CreateDate = params['CreateDate']
          @ModifyDate = params['ModifyDate']
          @Status = params['Status']
          @Creator = params['Creator']
          @Modifier = params['Modifier']
          @FlowServiceId = params['FlowServiceId']
          @TemplateId = params['TemplateId']
          @Description = params['Description']
        end
      end

      # StopExecution请求参数结构体
      class StopExecutionRequest < TencentCloud::Common::AbstractModel
        # @param ExecutionQrn: 执行名称
        # @type ExecutionQrn: String

        attr_accessor :ExecutionQrn

        def initialize(executionqrn=nil)
          @ExecutionQrn = executionqrn
        end

        def deserialize(params)
          @ExecutionQrn = params['ExecutionQrn']
        end
      end

      # StopExecution返回参数结构体
      class StopExecutionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

