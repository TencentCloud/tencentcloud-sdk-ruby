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
  module Tic
    module V20201117
      # ApplyStack请求参数结构体
      class ApplyStackRequest < TencentCloud::Common::AbstractModel
        # @param StackId: 资源栈ID
        # @type StackId: String
        # @param VersionId: 待执行apply事件的版本ID
        # @type VersionId: String

        attr_accessor :StackId, :VersionId

        def initialize(stackid=nil, versionid=nil)
          @StackId = stackid
          @VersionId = versionid
        end

        def deserialize(params)
          @StackId = params['StackId']
          @VersionId = params['VersionId']
        end
      end

      # ApplyStack返回参数结构体
      class ApplyStackResponse < TencentCloud::Common::AbstractModel
        # @param EventId: 执行的事件ID
        # @type EventId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventId, :RequestId

        def initialize(eventid=nil, requestid=nil)
          @EventId = eventid
          @RequestId = requestid
        end

        def deserialize(params)
          @EventId = params['EventId']
          @RequestId = params['RequestId']
        end
      end

      # CreateStack请求参数结构体
      class CreateStackRequest < TencentCloud::Common::AbstractModel
        # @param StackName: 资源栈名称，不得超过60个字符
        # @type StackName: String
        # @param StackRegion: 资源栈所在地域
        # @type StackRegion: String
        # @param TemplateUrl: HCL模板URL，⽬前仅限 COS URL, ⽂件为zip压缩格式
        # @type TemplateUrl: String
        # @param Description: 资源栈描述，不得超过200个字符
        # @type Description: String

        attr_accessor :StackName, :StackRegion, :TemplateUrl, :Description

        def initialize(stackname=nil, stackregion=nil, templateurl=nil, description=nil)
          @StackName = stackname
          @StackRegion = stackregion
          @TemplateUrl = templateurl
          @Description = description
        end

        def deserialize(params)
          @StackName = params['StackName']
          @StackRegion = params['StackRegion']
          @TemplateUrl = params['TemplateUrl']
          @Description = params['Description']
        end
      end

      # CreateStack返回参数结构体
      class CreateStackResponse < TencentCloud::Common::AbstractModel
        # @param StackId: 创建得到的资源栈ID
        # @type StackId: String
        # @param VersionId: 资源栈版本ID
        # @type VersionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StackId, :VersionId, :RequestId

        def initialize(stackid=nil, versionid=nil, requestid=nil)
          @StackId = stackid
          @VersionId = versionid
          @RequestId = requestid
        end

        def deserialize(params)
          @StackId = params['StackId']
          @VersionId = params['VersionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateStackVersion请求参数结构体
      class CreateStackVersionRequest < TencentCloud::Common::AbstractModel
        # @param StackId: 待增加版本的资源栈ID
        # @type StackId: String
        # @param TemplateUrl: 模板 URL，⽬前仅限 COS URL, ⽂件为zip压缩格式
        # @type TemplateUrl: String
        # @param VersionName: 版本名称，不得超过60个字符
        # @type VersionName: String
        # @param Description: 版本描述，不得超过200个字符
        # @type Description: String

        attr_accessor :StackId, :TemplateUrl, :VersionName, :Description

        def initialize(stackid=nil, templateurl=nil, versionname=nil, description=nil)
          @StackId = stackid
          @TemplateUrl = templateurl
          @VersionName = versionname
          @Description = description
        end

        def deserialize(params)
          @StackId = params['StackId']
          @TemplateUrl = params['TemplateUrl']
          @VersionName = params['VersionName']
          @Description = params['Description']
        end
      end

      # CreateStackVersion返回参数结构体
      class CreateStackVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionId: 新创建的版本ID
        # @type VersionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionId, :RequestId

        def initialize(versionid=nil, requestid=nil)
          @VersionId = versionid
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteStack请求参数结构体
      class DeleteStackRequest < TencentCloud::Common::AbstractModel
        # @param StackId: 待删除的资源栈ID
        # @type StackId: String

        attr_accessor :StackId

        def initialize(stackid=nil)
          @StackId = stackid
        end

        def deserialize(params)
          @StackId = params['StackId']
        end
      end

      # DeleteStack返回参数结构体
      class DeleteStackResponse < TencentCloud::Common::AbstractModel
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

      # DeleteStackVersion请求参数结构体
      class DeleteStackVersionRequest < TencentCloud::Common::AbstractModel
        # @param VersionId: 待删除的版本ID
        # @type VersionId: String

        attr_accessor :VersionId

        def initialize(versionid=nil)
          @VersionId = versionid
        end

        def deserialize(params)
          @VersionId = params['VersionId']
        end
      end

      # DeleteStackVersion返回参数结构体
      class DeleteStackVersionResponse < TencentCloud::Common::AbstractModel
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

      # DescribeStackEvent请求参数结构体
      class DescribeStackEventRequest < TencentCloud::Common::AbstractModel
        # @param EventId: 事件ID
        # @type EventId: String

        attr_accessor :EventId

        def initialize(eventid=nil)
          @EventId = eventid
        end

        def deserialize(params)
          @EventId = params['EventId']
        end
      end

      # DescribeStackEvent返回参数结构体
      class DescribeStackEventResponse < TencentCloud::Common::AbstractModel
        # @param EventId: 事件ID
        # @type EventId: String
        # @param VersionId: 版本ID
        # @type VersionId: String
        # @param StackId: 资源栈ID
        # @type StackId: String
        # @param Type: 事件类型
        # @type Type: String
        # @param Status: 事件状态
        # @type Status: String
        # @param EventMessage: 状态信息
        # @type EventMessage: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ConsoleLog: 控制台输出文本
        # @type ConsoleLog: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventId, :VersionId, :StackId, :Type, :Status, :EventMessage, :CreateTime, :ConsoleLog, :RequestId

        def initialize(eventid=nil, versionid=nil, stackid=nil, type=nil, status=nil, eventmessage=nil, createtime=nil, consolelog=nil, requestid=nil)
          @EventId = eventid
          @VersionId = versionid
          @StackId = stackid
          @Type = type
          @Status = status
          @EventMessage = eventmessage
          @CreateTime = createtime
          @ConsoleLog = consolelog
          @RequestId = requestid
        end

        def deserialize(params)
          @EventId = params['EventId']
          @VersionId = params['VersionId']
          @StackId = params['StackId']
          @Type = params['Type']
          @Status = params['Status']
          @EventMessage = params['EventMessage']
          @CreateTime = params['CreateTime']
          @ConsoleLog = params['ConsoleLog']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStackEvents请求参数结构体
      class DescribeStackEventsRequest < TencentCloud::Common::AbstractModel
        # @param EventIds: 按照⼀个或者多个事件ID查询
        # @type EventIds: Array
        # @param Filters: <li>**VersionId**</li>
        # 按照【**版本ID**】过滤，VersionId形如 `ver-kg8hn58h`
        # 类型：string

        # <li>**StackId**</li>
        # 按照【**资源栈ID**】过滤，StackId形如 `stk-hz5vn3te`
        # 类型：string

        # <li>**Type**</li>
        # 按照【**事件类型**】过滤，Type 形如 plan, apply, destroy
        # 类型：string

        # <li>**Status**</li>
        # 按照【**事件状态**】过滤，Status形如 queueing, running, success, failed
        # 类型：string
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节
        # @type Limit: Integer

        attr_accessor :EventIds, :Filters, :Offset, :Limit

        def initialize(eventids=nil, filters=nil, offset=nil, limit=nil)
          @EventIds = eventids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EventIds = params['EventIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeStackEvents返回参数结构体
      class DescribeStackEventsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的事件数量
        # @type TotalCount: Integer
        # @param Events: 事件详细信息列表
        # @type Events: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Events, :RequestId

        def initialize(totalcount=nil, events=nil, requestid=nil)
          @TotalCount = totalcount
          @Events = events
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Events'].nil?
            @Events = []
            params['Events'].each do |i|
              eventinfo_tmp = EventInfo.new
              eventinfo_tmp.deserialize(i)
              @Events << eventinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStackVersions请求参数结构体
      class DescribeStackVersionsRequest < TencentCloud::Common::AbstractModel
        # @param VersionIds: 按照⼀个或者多个版本ID查询
        # @type VersionIds: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节
        # @type Limit: Integer
        # @param Filters: <li>**Name**</li>
        # 按照【**版本名称**】进行过滤
        # 类型：string

        # <li>**Status**</li>
        # 按照【**版本状态**】过滤，形如`VERSION_EDITING`，`PLAN_IN_PROGRESS`等
        # 类型：string

        # <li>**StackId**</li>
        # 按照版本所属的【**资源栈ID**】进行过滤，形如`stk-xxxxxx`
        # 类型：string
        # @type Filters: Array

        attr_accessor :VersionIds, :Offset, :Limit, :Filters

        def initialize(versionids=nil, offset=nil, limit=nil, filters=nil)
          @VersionIds = versionids
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @VersionIds = params['VersionIds']
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

      # DescribeStackVersions返回参数结构体
      class DescribeStackVersionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的版本数量
        # @type TotalCount: Integer
        # @param Versions: 版本详细信息列表
        # @type Versions: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Versions, :RequestId

        def initialize(totalcount=nil, versions=nil, requestid=nil)
          @TotalCount = totalcount
          @Versions = versions
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Versions'].nil?
            @Versions = []
            params['Versions'].each do |i|
              versioninfo_tmp = VersionInfo.new
              versioninfo_tmp.deserialize(i)
              @Versions << versioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStacks请求参数结构体
      class DescribeStacksRequest < TencentCloud::Common::AbstractModel
        # @param StackIds: 按照⼀个或者多个资源栈ID查询
        # @type StackIds: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        # @type Limit: Integer

        attr_accessor :StackIds, :Offset, :Limit

        def initialize(stackids=nil, offset=nil, limit=nil)
          @StackIds = stackids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @StackIds = params['StackIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeStacks返回参数结构体
      class DescribeStacksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的资源栈数量
        # @type TotalCount: Integer
        # @param Stacks: 资源栈详细信息列表
        # @type Stacks: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Stacks, :RequestId

        def initialize(totalcount=nil, stacks=nil, requestid=nil)
          @TotalCount = totalcount
          @Stacks = stacks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Stacks'].nil?
            @Stacks = []
            params['Stacks'].each do |i|
              stackinfo_tmp = StackInfo.new
              stackinfo_tmp.deserialize(i)
              @Stacks << stackinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyStack请求参数结构体
      class DestroyStackRequest < TencentCloud::Common::AbstractModel
        # @param StackId: 资源栈ID
        # @type StackId: String
        # @param VersionId: 待执行destroy事件的版本ID
        # @type VersionId: String

        attr_accessor :StackId, :VersionId

        def initialize(stackid=nil, versionid=nil)
          @StackId = stackid
          @VersionId = versionid
        end

        def deserialize(params)
          @StackId = params['StackId']
          @VersionId = params['VersionId']
        end
      end

      # DestroyStack返回参数结构体
      class DestroyStackResponse < TencentCloud::Common::AbstractModel
        # @param EventId: 事件ID
        # @type EventId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventId, :RequestId

        def initialize(eventid=nil, requestid=nil)
          @EventId = eventid
          @RequestId = requestid
        end

        def deserialize(params)
          @EventId = params['EventId']
          @RequestId = params['RequestId']
        end
      end

      # 事件详情
      class EventInfo < TencentCloud::Common::AbstractModel
        # @param EventId: 事件ID
        # @type EventId: String
        # @param VersionId: 版本ID
        # @type VersionId: String
        # @param StackId: 资源栈ID
        # @type StackId: String
        # @param Type: 事件类型
        # @type Type: String
        # @param Status: 版本状态
        # @type Status: String
        # @param Message: 状态信息
        # @type Message: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :EventId, :VersionId, :StackId, :Type, :Status, :Message, :CreateTime

        def initialize(eventid=nil, versionid=nil, stackid=nil, type=nil, status=nil, message=nil, createtime=nil)
          @EventId = eventid
          @VersionId = versionid
          @StackId = stackid
          @Type = type
          @Status = status
          @Message = message
          @CreateTime = createtime
        end

        def deserialize(params)
          @EventId = params['EventId']
          @VersionId = params['VersionId']
          @StackId = params['StackId']
          @Type = params['Type']
          @Status = params['Status']
          @Message = params['Message']
          @CreateTime = params['CreateTime']
        end
      end

      # 查询过滤条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 条件名字
        # @type Name: String
        # @param Values: 匹配的值，可以有多个
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

      # PlanStack请求参数结构体
      class PlanStackRequest < TencentCloud::Common::AbstractModel
        # @param StackId: 资源栈ID
        # @type StackId: String
        # @param VersionId: 待执行plan事件的版本ID
        # @type VersionId: String

        attr_accessor :StackId, :VersionId

        def initialize(stackid=nil, versionid=nil)
          @StackId = stackid
          @VersionId = versionid
        end

        def deserialize(params)
          @StackId = params['StackId']
          @VersionId = params['VersionId']
        end
      end

      # PlanStack返回参数结构体
      class PlanStackResponse < TencentCloud::Common::AbstractModel
        # @param EventId: 执行的事件ID
        # @type EventId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventId, :RequestId

        def initialize(eventid=nil, requestid=nil)
          @EventId = eventid
          @RequestId = requestid
        end

        def deserialize(params)
          @EventId = params['EventId']
          @RequestId = params['RequestId']
        end
      end

      # 资源栈信息
      class StackInfo < TencentCloud::Common::AbstractModel
        # @param StackId: 资源栈ID
        # @type StackId: String
        # @param StackName: 资源栈名称
        # @type StackName: String
        # @param Description: 资源栈描述
        # @type Description: String
        # @param Region: 所处地域
        # @type Region: String
        # @param Status: 资源栈状态
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :StackId, :StackName, :Description, :Region, :Status, :CreateTime

        def initialize(stackid=nil, stackname=nil, description=nil, region=nil, status=nil, createtime=nil)
          @StackId = stackid
          @StackName = stackname
          @Description = description
          @Region = region
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @StackId = params['StackId']
          @StackName = params['StackName']
          @Description = params['Description']
          @Region = params['Region']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # UpdateStack请求参数结构体
      class UpdateStackRequest < TencentCloud::Common::AbstractModel
        # @param StackId: 待更新的资源栈ID
        # @type StackId: String
        # @param StackName: 资源栈名称，不得超过60个字符
        # @type StackName: String
        # @param Description: 资源栈描述，不得超过200个字符
        # @type Description: String

        attr_accessor :StackId, :StackName, :Description

        def initialize(stackid=nil, stackname=nil, description=nil)
          @StackId = stackid
          @StackName = stackname
          @Description = description
        end

        def deserialize(params)
          @StackId = params['StackId']
          @StackName = params['StackName']
          @Description = params['Description']
        end
      end

      # UpdateStack返回参数结构体
      class UpdateStackResponse < TencentCloud::Common::AbstractModel
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

      # UpdateStackVersion请求参数结构体
      class UpdateStackVersionRequest < TencentCloud::Common::AbstractModel
        # @param VersionId: 待更新的版本ID
        # @type VersionId: String
        # @param TemplateUrl: 模板 URL，⽬前仅限 COS URL, ⽂件为zip压缩格式
        # @type TemplateUrl: String
        # @param VersionName: 版本名称，不得超过60个字符
        # @type VersionName: String
        # @param Description: 版本描述，不得超过200个字符
        # @type Description: String

        attr_accessor :VersionId, :TemplateUrl, :VersionName, :Description

        def initialize(versionid=nil, templateurl=nil, versionname=nil, description=nil)
          @VersionId = versionid
          @TemplateUrl = templateurl
          @VersionName = versionname
          @Description = description
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @TemplateUrl = params['TemplateUrl']
          @VersionName = params['VersionName']
          @Description = params['Description']
        end
      end

      # UpdateStackVersion返回参数结构体
      class UpdateStackVersionResponse < TencentCloud::Common::AbstractModel
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

      # 版本信息
      class VersionInfo < TencentCloud::Common::AbstractModel
        # @param VersionId: 版本ID
        # @type VersionId: String
        # @param VersionName: 版本名称
        # @type VersionName: String
        # @param Description: 版本描述
        # @type Description: String
        # @param StackId: 资源栈ID
        # @type StackId: String
        # @param Status: 版本状态
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :VersionId, :VersionName, :Description, :StackId, :Status, :CreateTime

        def initialize(versionid=nil, versionname=nil, description=nil, stackid=nil, status=nil, createtime=nil)
          @VersionId = versionid
          @VersionName = versionname
          @Description = description
          @StackId = stackid
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @VersionName = params['VersionName']
          @Description = params['Description']
          @StackId = params['StackId']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

    end
  end
end

