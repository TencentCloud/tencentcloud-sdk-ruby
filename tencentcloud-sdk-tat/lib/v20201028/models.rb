# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
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
  module Tat
    module V20201028
      # 自动化助手客户端信息
      class AutomationAgentInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Version: Agent 版本号。
        # @type Version: String
        # @param LastHeartbeatTime: 上次心跳时间
        # @type LastHeartbeatTime: String
        # @param AgentStatus: Agent状态，取值范围：
        # <li> Online：在线
        # <li> Offline：离线
        # @type AgentStatus: String
        # @param Environment: Agent运行环境
        # @type Environment: String

        attr_accessor :InstanceId, :Version, :LastHeartbeatTime, :AgentStatus, :Environment
        
        def initialize(instanceid=nil, version=nil, lastheartbeattime=nil, agentstatus=nil, environment=nil)
          @InstanceId = instanceid
          @Version = version
          @LastHeartbeatTime = lastheartbeattime
          @AgentStatus = agentstatus
          @Environment = environment
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Version = params['Version']
          @LastHeartbeatTime = params['LastHeartbeatTime']
          @AgentStatus = params['AgentStatus']
          @Environment = params['Environment']
        end
      end

      # 命令详情。
      class Command < TencentCloud::Common::AbstractModel
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param CommandName: 命令名称。
        # @type CommandName: String
        # @param Description: 命令描述。
        # @type Description: String
        # @param Content: Base64编码后的命令内容。
        # @type Content: String
        # @param CommandType: 命令类型。
        # @type CommandType: String
        # @param WorkingDirectory: 命令执行路径。
        # @type WorkingDirectory: String
        # @param Timeout: 命令超时时间。
        # @type Timeout: Integer
        # @param CreatedTime: 命令创建时间。
        # @type CreatedTime: String
        # @param UpdatedTime: 命令更新时间。
        # @type UpdatedTime: String

        attr_accessor :CommandId, :CommandName, :Description, :Content, :CommandType, :WorkingDirectory, :Timeout, :CreatedTime, :UpdatedTime
        
        def initialize(commandid=nil, commandname=nil, description=nil, content=nil, commandtype=nil, workingdirectory=nil, timeout=nil, createdtime=nil, updatedtime=nil)
          @CommandId = commandid
          @CommandName = commandname
          @Description = description
          @Content = content
          @CommandType = commandtype
          @WorkingDirectory = workingdirectory
          @Timeout = timeout
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @CommandName = params['CommandName']
          @Description = params['Description']
          @Content = params['Content']
          @CommandType = params['CommandType']
          @WorkingDirectory = params['WorkingDirectory']
          @Timeout = params['Timeout']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # 命令执行详情。
      class CommandDocument < TencentCloud::Common::AbstractModel
        # @param Content: Base64 编码后的执行命令。
        # @type Content: String
        # @param CommandType: 命令类型。
        # @type CommandType: String
        # @param Timeout: 超时时间。
        # @type Timeout: Integer
        # @param WorkingDirectory: 执行路径。
        # @type WorkingDirectory: String

        attr_accessor :Content, :CommandType, :Timeout, :WorkingDirectory
        
        def initialize(content=nil, commandtype=nil, timeout=nil, workingdirectory=nil)
          @Content = content
          @CommandType = commandtype
          @Timeout = timeout
          @WorkingDirectory = workingdirectory
        end

        def deserialize(params)
          @Content = params['Content']
          @CommandType = params['CommandType']
          @Timeout = params['Timeout']
          @WorkingDirectory = params['WorkingDirectory']
        end
      end

      # CreateCommand请求参数结构体
      class CreateCommandRequest < TencentCloud::Common::AbstractModel
        # @param CommandName: 命令名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        # @type CommandName: String
        # @param Content: Base64编码后的命令内容，长度不可超过64KB。
        # @type Content: String
        # @param Description: 命令描述。不超过120字符。
        # @type Description: String
        # @param CommandType: 命令类型，目前仅支持取值：SHELL。默认：SHELL。
        # @type CommandType: String
        # @param WorkingDirectory: 命令执行路径，默认：/root。
        # @type WorkingDirectory: String
        # @param Timeout: 命令超时时间，默认60秒。取值范围[1, 86400]。
        # @type Timeout: Integer

        attr_accessor :CommandName, :Content, :Description, :CommandType, :WorkingDirectory, :Timeout
        
        def initialize(commandname=nil, content=nil, description=nil, commandtype=nil, workingdirectory=nil, timeout=nil)
          @CommandName = commandname
          @Content = content
          @Description = description
          @CommandType = commandtype
          @WorkingDirectory = workingdirectory
          @Timeout = timeout
        end

        def deserialize(params)
          @CommandName = params['CommandName']
          @Content = params['Content']
          @Description = params['Description']
          @CommandType = params['CommandType']
          @WorkingDirectory = params['WorkingDirectory']
          @Timeout = params['Timeout']
        end
      end

      # CreateCommand返回参数结构体
      class CreateCommandResponse < TencentCloud::Common::AbstractModel
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CommandId, :RequestId
        
        def initialize(commandid=nil, requestid=nil)
          @CommandId = commandid
          @RequestId = requestid
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCommand请求参数结构体
      class DeleteCommandRequest < TencentCloud::Common::AbstractModel
        # @param CommandId: 待删除的命令ID。
        # @type CommandId: String

        attr_accessor :CommandId
        
        def initialize(commandid=nil)
          @CommandId = commandid
        end

        def deserialize(params)
          @CommandId = params['CommandId']
        end
      end

      # DeleteCommand返回参数结构体
      class DeleteCommandResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAutomationAgentStatus请求参数结构体
      class DescribeAutomationAgentStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待查询的实例ID列表。
        # @type InstanceIds: Array
        # @param Filters: 过滤条件。<br> <li> agent-status - String - 是否必填：否 -（过滤条件）按照agent状态过滤，取值：Online 在线，Offline 离线。<br> <li> environment - String - 是否必填：否 -（过滤条件）按照agent运行环境查询，取值：Linux。<br> <li> instance-id - String - 是否必填：否 -（过滤条件）按照实例ID过滤。 <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `InstanceIds` 和 `Filters` 。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :InstanceIds, :Filters, :Limit, :Offset
        
        def initialize(instanceids=nil, filters=nil, limit=nil, offset=nil)
          @InstanceIds = instanceids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Filters = params['Filters']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAutomationAgentStatus返回参数结构体
      class DescribeAutomationAgentStatusResponse < TencentCloud::Common::AbstractModel
        # @param AutomationAgentSet: Agent 信息列表。
        # @type AutomationAgentSet: Array
        # @param TotalCount: 符合条件的 Agent 总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutomationAgentSet, :TotalCount, :RequestId
        
        def initialize(automationagentset=nil, totalcount=nil, requestid=nil)
          @AutomationAgentSet = automationagentset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @AutomationAgentSet = params['AutomationAgentSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCommands请求参数结构体
      class DescribeCommandsRequest < TencentCloud::Common::AbstractModel
        # @param CommandIds: 命令ID列表，每次请求的上限为100。参数不支持同时指定 `CommandIds` 和 `Filters` 。
        # @type CommandIds: Array
        # @param Filters: 过滤条件。<br> <li> command-id - String - 是否必填：否 -（过滤条件）按照命令ID过滤。<br> <li> command-name - String - 是否必填：否 -（过滤条件）按照命令名称过滤。 <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `CommandIds` 和 `Filters` 。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :CommandIds, :Filters, :Limit, :Offset
        
        def initialize(commandids=nil, filters=nil, limit=nil, offset=nil)
          @CommandIds = commandids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @CommandIds = params['CommandIds']
          @Filters = params['Filters']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeCommands返回参数结构体
      class DescribeCommandsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的命令总数。
        # @type TotalCount: Integer
        # @param CommandSet: 命令详情列表。
        # @type CommandSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CommandSet, :RequestId
        
        def initialize(totalcount=nil, commandset=nil, requestid=nil)
          @TotalCount = totalcount
          @CommandSet = commandset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @CommandSet = params['CommandSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocationTasks请求参数结构体
      class DescribeInvocationTasksRequest < TencentCloud::Common::AbstractModel
        # @param InvocationTaskIds: 执行任务ID列表，每次请求的上限为100。参数不支持同时指定 `InvocationTaskIds` 和 `Filters`。
        # @type InvocationTaskIds: Array
        # @param Filters: 过滤条件。<br> <li> invocation-id - String - 是否必填：否 -（过滤条件）按照执行活动ID过滤。<br> <li> invocation-task-id - String - 是否必填：否 -（过滤条件）按照执行任务ID过滤。<br> <li> instance-id - String - 是否必填：否 -（过滤条件）按照实例ID过滤。 <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `InvocationTaskIds` 和 `Filters` 。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param HideOutput: 是否隐藏输出，取值范围：<br><li>True：隐藏输出 <br><li>False：不隐藏 <br>默认为 True。
        # @type HideOutput: Boolean

        attr_accessor :InvocationTaskIds, :Filters, :Limit, :Offset, :HideOutput
        
        def initialize(invocationtaskids=nil, filters=nil, limit=nil, offset=nil, hideoutput=nil)
          @InvocationTaskIds = invocationtaskids
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @HideOutput = hideoutput
        end

        def deserialize(params)
          @InvocationTaskIds = params['InvocationTaskIds']
          @Filters = params['Filters']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @HideOutput = params['HideOutput']
        end
      end

      # DescribeInvocationTasks返回参数结构体
      class DescribeInvocationTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的执行任务总数。
        # @type TotalCount: Integer
        # @param InvocationTaskSet: 执行任务列表。
        # @type InvocationTaskSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InvocationTaskSet, :RequestId
        
        def initialize(totalcount=nil, invocationtaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @InvocationTaskSet = invocationtaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @InvocationTaskSet = params['InvocationTaskSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInvocations请求参数结构体
      class DescribeInvocationsRequest < TencentCloud::Common::AbstractModel
        # @param InvocationIds: 执行活动ID列表，每次请求的上限为100。参数不支持同时指定 `InvocationIds` 和 `Filters`。
        # @type InvocationIds: Array
        # @param Filters: 过滤条件。<br> <li> invocation-id - String - 是否必填：否 -（过滤条件）按照执行活动ID过滤。<br> <li> command-id - String - 是否必填：否 -（过滤条件）按照命令ID过滤。 <br>每次请求的 `Filters` 的上限为10， `Filter.Values` 的上限为5。参数不支持同时指定 `InvocationIds` 和 `Filters` 。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于 `Limit` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于 `Offset` 的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer

        attr_accessor :InvocationIds, :Filters, :Limit, :Offset
        
        def initialize(invocationids=nil, filters=nil, limit=nil, offset=nil)
          @InvocationIds = invocationids
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InvocationIds = params['InvocationIds']
          @Filters = params['Filters']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeInvocations返回参数结构体
      class DescribeInvocationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的执行活动总数。
        # @type TotalCount: Integer
        # @param InvocationSet: 执行活动列表。
        # @type InvocationSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InvocationSet, :RequestId
        
        def initialize(totalcount=nil, invocationset=nil, requestid=nil)
          @TotalCount = totalcount
          @InvocationSet = invocationset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @InvocationSet = params['InvocationSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 地域数量
        # @type TotalCount: Integer
        # @param RegionSet: 地域信息列表
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionSet, :RequestId
        
        def initialize(totalcount=nil, regionset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RegionSet = params['RegionSet']
          @RequestId = params['RequestId']
        end
      end

      # >描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
      # > * 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
      # > * 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
      # >
      # > 以[DescribeInstances](https://cloud.tencent.com/document/api/213/15728)接口的`Filter`为例。若我们需要查询可用区（`zone`）为广州一区 ***并且*** 实例计费模式（`instance-charge-type`）为包年包月 ***或者*** 按量计费的实例时，可如下实现：
      # ```
      # Filters.0.Name=zone
      # &Filters.0.Values.0=ap-guangzhou-1
      # &Filters.1.Name=instance-charge-type
      # &Filters.1.Values.0=PREPAID
      # &Filters.1.Values.1=POSTPAID_BY_HOUR
      # ```
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
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

      # 执行活动详情。
      class Invocation < TencentCloud::Common::AbstractModel
        # @param InvocationId: 执行活动ID。
        # @type InvocationId: String
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param InvocationStatus: 执行活动状态。
        # @type InvocationStatus: String
        # @param InvocationTaskBasicInfoSet: 执行任务信息列表。
        # @type InvocationTaskBasicInfoSet: Array
        # @param Description: 执行活动描述。
        # @type Description: String
        # @param StartTime: 执行活动开始时间。
        # @type StartTime: String
        # @param EndTime: 执行活动结束时间。
        # @type EndTime: String
        # @param CreatedTime: 执行活动创建时间。
        # @type CreatedTime: String
        # @param UpdatedTime: 执行活动更新时间。
        # @type UpdatedTime: String

        attr_accessor :InvocationId, :CommandId, :InvocationStatus, :InvocationTaskBasicInfoSet, :Description, :StartTime, :EndTime, :CreatedTime, :UpdatedTime
        
        def initialize(invocationid=nil, commandid=nil, invocationstatus=nil, invocationtaskbasicinfoset=nil, description=nil, starttime=nil, endtime=nil, createdtime=nil, updatedtime=nil)
          @InvocationId = invocationid
          @CommandId = commandid
          @InvocationStatus = invocationstatus
          @InvocationTaskBasicInfoSet = invocationtaskbasicinfoset
          @Description = description
          @StartTime = starttime
          @EndTime = endtime
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
        end

        def deserialize(params)
          @InvocationId = params['InvocationId']
          @CommandId = params['CommandId']
          @InvocationStatus = params['InvocationStatus']
          @InvocationTaskBasicInfoSet = params['InvocationTaskBasicInfoSet']
          @Description = params['Description']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
        end
      end

      # 执行任务。
      class InvocationTask < TencentCloud::Common::AbstractModel
        # @param InvocationId: 执行活动ID。
        # @type InvocationId: String
        # @param InvocationTaskId: 执行任务ID。
        # @type InvocationTaskId: String
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param TaskStatus: 执行任务状态。取值范围：
        # <li> PENDING：等待下发
        # <li> DELIVERING：下发中
        # <li> DELIVER_DELAYED：延时下发
        # <li> DELIVER_FAILED：下发失败
        # <li> RUNNING：命令运行中
        # <li> SUCCESS：命令成功
        # <li> FAILED：命令失败
        # <li> TIMEOUT：命令超时
        # <li> TASK_TIMEOUT：执行任务超时
        # @type TaskStatus: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param TaskResult: 执行结果。
        # @type TaskResult: :class:`Tencentcloud::Tat.v20201028.models.TaskResult`
        # @param StartTime: 执行任务开始时间。
        # @type StartTime: String
        # @param EndTime: 执行任务结束时间。
        # @type EndTime: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param UpdatedTime: 更新时间。
        # @type UpdatedTime: String
        # @param CommandDocument: 执行任务所执行的命令详情。
        # @type CommandDocument: :class:`Tencentcloud::Tat.v20201028.models.CommandDocument`

        attr_accessor :InvocationId, :InvocationTaskId, :CommandId, :TaskStatus, :InstanceId, :TaskResult, :StartTime, :EndTime, :CreatedTime, :UpdatedTime, :CommandDocument
        
        def initialize(invocationid=nil, invocationtaskid=nil, commandid=nil, taskstatus=nil, instanceid=nil, taskresult=nil, starttime=nil, endtime=nil, createdtime=nil, updatedtime=nil, commanddocument=nil)
          @InvocationId = invocationid
          @InvocationTaskId = invocationtaskid
          @CommandId = commandid
          @TaskStatus = taskstatus
          @InstanceId = instanceid
          @TaskResult = taskresult
          @StartTime = starttime
          @EndTime = endtime
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @CommandDocument = commanddocument
        end

        def deserialize(params)
          @InvocationId = params['InvocationId']
          @InvocationTaskId = params['InvocationTaskId']
          @CommandId = params['CommandId']
          @TaskStatus = params['TaskStatus']
          @InstanceId = params['InstanceId']
          unless params['TaskResult'].nil?
            @TaskResult = TaskResult.new.deserialize(params[TaskResult])
          end
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          unless params['CommandDocument'].nil?
            @CommandDocument = CommandDocument.new.deserialize(params[CommandDocument])
          end
        end
      end

      # 执行活动任务简介。
      class InvocationTaskBasicInfo < TencentCloud::Common::AbstractModel
        # @param InvocationTaskId: 执行任务ID。
        # @type InvocationTaskId: String
        # @param TaskStatus: 执行任务状态。取值范围：
        # <li> PENDING：等待下发
        # <li> DELIVERING：下发中
        # <li> DELIVER_DELAYED：延时下发
        # <li> DELIVER_FAILED：下发失败
        # <li> RUNNING：命令运行中
        # <li> SUCCESS：命令成功
        # <li> FAILED：命令失败
        # <li> TIMEOUT：命令超时
        # <li> TASK_TIMEOUT：执行任务超时
        # @type TaskStatus: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String

        attr_accessor :InvocationTaskId, :TaskStatus, :InstanceId
        
        def initialize(invocationtaskid=nil, taskstatus=nil, instanceid=nil)
          @InvocationTaskId = invocationtaskid
          @TaskStatus = taskstatus
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InvocationTaskId = params['InvocationTaskId']
          @TaskStatus = params['TaskStatus']
          @InstanceId = params['InstanceId']
        end
      end

      # InvokeCommand请求参数结构体
      class InvokeCommandRequest < TencentCloud::Common::AbstractModel
        # @param CommandId: 待触发的命令ID。
        # @type CommandId: String
        # @param InstanceIds: 待执行命令的实例ID列表。
        # @type InstanceIds: Array

        attr_accessor :CommandId, :InstanceIds
        
        def initialize(commandid=nil, instanceids=nil)
          @CommandId = commandid
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @InstanceIds = params['InstanceIds']
        end
      end

      # InvokeCommand返回参数结构体
      class InvokeCommandResponse < TencentCloud::Common::AbstractModel
        # @param InvocationId: 执行活动ID。
        # @type InvocationId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvocationId, :RequestId
        
        def initialize(invocationid=nil, requestid=nil)
          @InvocationId = invocationid
          @RequestId = requestid
        end

        def deserialize(params)
          @InvocationId = params['InvocationId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCommand请求参数结构体
      class ModifyCommandRequest < TencentCloud::Common::AbstractModel
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param CommandName: 命令名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        # @type CommandName: String
        # @param Description: 命令描述。不超过120字符。
        # @type Description: String
        # @param Content: Base64编码后的命令内容，长度不可超过64KB。
        # @type Content: String
        # @param CommandType: 命令类型，目前仅支持取值：SHELL。
        # @type CommandType: String
        # @param WorkingDirectory: 命令执行路径，默认：`/root`。
        # @type WorkingDirectory: String
        # @param Timeout: 命令超时时间，默认60秒。取值范围[1, 86400]。
        # @type Timeout: Integer

        attr_accessor :CommandId, :CommandName, :Description, :Content, :CommandType, :WorkingDirectory, :Timeout
        
        def initialize(commandid=nil, commandname=nil, description=nil, content=nil, commandtype=nil, workingdirectory=nil, timeout=nil)
          @CommandId = commandid
          @CommandName = commandname
          @Description = description
          @Content = content
          @CommandType = commandtype
          @WorkingDirectory = workingdirectory
          @Timeout = timeout
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @CommandName = params['CommandName']
          @Description = params['Description']
          @Content = params['Content']
          @CommandType = params['CommandType']
          @WorkingDirectory = params['WorkingDirectory']
          @Timeout = params['Timeout']
        end
      end

      # ModifyCommand返回参数结构体
      class ModifyCommandResponse < TencentCloud::Common::AbstractModel
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

      # 描述单个地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域名称，例如，ap-guangzhou
        # @type Region: String
        # @param RegionName: 地域描述，例如: 广州
        # @type RegionName: String
        # @param RegionState: 地域是否可用状态
        # @type RegionState: String

        attr_accessor :Region, :RegionName, :RegionState
        
        def initialize(region=nil, regionname=nil, regionstate=nil)
          @Region = region
          @RegionName = regionname
          @RegionState = regionstate
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
        end
      end

      # RunCommand请求参数结构体
      class RunCommandRequest < TencentCloud::Common::AbstractModel
        # @param Content: Base64编码后的命令内容，长度不可超过64KB。
        # @type Content: String
        # @param InstanceIds: 待执行命令的实例ID列表。 支持实例类型：
        # <li> CVM
        # <li> LIGHTHOUSE
        # @type InstanceIds: Array
        # @param CommandName: 命令名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。
        # @type CommandName: String
        # @param Description: 命令描述。不超过120字符。
        # @type Description: String
        # @param CommandType: 命令类型，目前仅支持取值：SHELL。默认：SHELL。
        # @type CommandType: String
        # @param WorkingDirectory: 命令执行路径，默认：/root。
        # @type WorkingDirectory: String
        # @param Timeout: 命令超时时间，默认60秒。取值范围[1, 86400]。
        # @type Timeout: Integer
        # @param SaveCommand: 是否保存命令，取值范围：
        # <li> True：保存
        # <li> False：不保存
        # 默认为 False。
        # @type SaveCommand: Boolean

        attr_accessor :Content, :InstanceIds, :CommandName, :Description, :CommandType, :WorkingDirectory, :Timeout, :SaveCommand
        
        def initialize(content=nil, instanceids=nil, commandname=nil, description=nil, commandtype=nil, workingdirectory=nil, timeout=nil, savecommand=nil)
          @Content = content
          @InstanceIds = instanceids
          @CommandName = commandname
          @Description = description
          @CommandType = commandtype
          @WorkingDirectory = workingdirectory
          @Timeout = timeout
          @SaveCommand = savecommand
        end

        def deserialize(params)
          @Content = params['Content']
          @InstanceIds = params['InstanceIds']
          @CommandName = params['CommandName']
          @Description = params['Description']
          @CommandType = params['CommandType']
          @WorkingDirectory = params['WorkingDirectory']
          @Timeout = params['Timeout']
          @SaveCommand = params['SaveCommand']
        end
      end

      # RunCommand返回参数结构体
      class RunCommandResponse < TencentCloud::Common::AbstractModel
        # @param CommandId: 命令ID。
        # @type CommandId: String
        # @param InvocationId: 执行活动ID。
        # @type InvocationId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CommandId, :InvocationId, :RequestId
        
        def initialize(commandid=nil, invocationid=nil, requestid=nil)
          @CommandId = commandid
          @InvocationId = invocationid
          @RequestId = requestid
        end

        def deserialize(params)
          @CommandId = params['CommandId']
          @InvocationId = params['InvocationId']
          @RequestId = params['RequestId']
        end
      end

      # 任务结果。
      class TaskResult < TencentCloud::Common::AbstractModel
        # @param ExitCode: 命令执行ExitCode。
        # @type ExitCode: Integer
        # @param Output: Base64编码后的命令输出。最大长度24KB。
        # @type Output: String
        # @param ExecStartTime: 命令执行开始时间。
        # @type ExecStartTime: String
        # @param ExecEndTime: 命令执行结束时间。
        # @type ExecEndTime: String

        attr_accessor :ExitCode, :Output, :ExecStartTime, :ExecEndTime
        
        def initialize(exitcode=nil, output=nil, execstarttime=nil, execendtime=nil)
          @ExitCode = exitcode
          @Output = output
          @ExecStartTime = execstarttime
          @ExecEndTime = execendtime
        end

        def deserialize(params)
          @ExitCode = params['ExitCode']
          @Output = params['Output']
          @ExecStartTime = params['ExecStartTime']
          @ExecEndTime = params['ExecEndTime']
        end
      end

    end
  end
end

