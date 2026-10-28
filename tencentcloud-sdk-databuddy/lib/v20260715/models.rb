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
  module Databuddy
    module V20260715
      # AddConsoleUsers请求参数结构体
      class AddConsoleUsersRequest < TencentCloud::Common::AbstractModel
        # @param UserUins: <p>用户 UIN 列表，单次最多100个</p>
        # @type UserUins: Array
        # @param RoleIds: <p>角色 ID 列表</p><p>枚举值：</p><ul><li>2001： 控制台管理员</li><li>2002： 控制台成员</li></ul><p>可通过 ListConsoleRoles 接口获取</p>
        # @type RoleIds: Array

        attr_accessor :UserUins, :RoleIds

        def initialize(useruins=nil, roleids=nil)
          @UserUins = useruins
          @RoleIds = roleids
        end

        def deserialize(params)
          @UserUins = params['UserUins']
          @RoleIds = params['RoleIds']
        end
      end

      # AddConsoleUsers返回参数结构体
      class AddConsoleUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.AddConsoleUsersRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AddConsoleUsersRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 添加控制台用户响应
      class AddConsoleUsersRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # AddWorkspaceGroups请求参数结构体
      class AddWorkspaceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: <p>用户组ID，可通过 ListConsoleGroups 接口获取</p>
        # @type GroupIds: Array
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String
        # @param RoleIds: <p>角色ID，可通过 ListWorkspaceRoles 接口获取</p>
        # @type RoleIds: Array

        attr_accessor :GroupIds, :WorkspaceId, :RoleIds

        def initialize(groupids=nil, workspaceid=nil, roleids=nil)
          @GroupIds = groupids
          @WorkspaceId = workspaceid
          @RoleIds = roleids
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @WorkspaceId = params['WorkspaceId']
          @RoleIds = params['RoleIds']
        end
      end

      # AddWorkspaceGroups返回参数结构体
      class AddWorkspaceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>添加结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.PlatformStatusRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PlatformStatusRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # AddWorkspaceUsers请求参数结构体
      class AddWorkspaceUsersRequest < TencentCloud::Common::AbstractModel
        # @param UserUins: <p>用户ID</p>
        # @type UserUins: Array
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String
        # @param RoleIds: <p>角色ID，可通过 ListWorkspaceRoles 接口获取</p>
        # @type RoleIds: Array

        attr_accessor :UserUins, :WorkspaceId, :RoleIds

        def initialize(useruins=nil, workspaceid=nil, roleids=nil)
          @UserUins = useruins
          @WorkspaceId = workspaceid
          @RoleIds = roleids
        end

        def deserialize(params)
          @UserUins = params['UserUins']
          @WorkspaceId = params['WorkspaceId']
          @RoleIds = params['RoleIds']
        end
      end

      # AddWorkspaceUsers返回参数结构体
      class AddWorkspaceUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.PlatformStatusRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PlatformStatusRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 高级依赖配置
      class AdvancedDependencyConfig < TencentCloud::Common::AbstractModel
        # @param Operator: 逻辑运算符号OR / AND
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param Conditions: 任务运行条件规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Conditions: Array

        attr_accessor :Operator, :Conditions

        def initialize(operator=nil, conditions=nil)
          @Operator = operator
          @Conditions = conditions
        end

        def deserialize(params)
          @Operator = params['Operator']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              taskrunconditionrule_tmp = TaskRunConditionRule.new
              taskrunconditionrule_tmp.deserialize(i)
              @Conditions << taskrunconditionrule_tmp
            end
          end
        end
      end

      # 高级运行参数（工作流高级运行时用户填入的参数）
      class AdvancedParameter < TencentCloud::Common::AbstractModel
        # @param ParamKey: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKey: String
        # @param ParamValue: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamValue: String

        attr_accessor :ParamKey, :ParamValue

        def initialize(paramkey=nil, paramvalue=nil)
          @ParamKey = paramkey
          @ParamValue = paramvalue
        end

        def deserialize(params)
          @ParamKey = params['ParamKey']
          @ParamValue = params['ParamValue']
        end
      end

      # 告警配置
      class AlarmBrief < TencentCloud::Common::AbstractModel
        # @param AlarmId: 告警 ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmId: String
        # @param AlarmMonitorType: 告警的监控对象类型，如工作流、任务等，当前支持 1. WORKFLOW 2. TASK
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmMonitorType: String
        # @param AlarmGroups: 告警组，最多 50 个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmGroups: Array
        # @param DoNotDisturbWhenSkipped: 被跳过时免打扰，默认值 false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DoNotDisturbWhenSkipped: Boolean
        # @param DoNotDisturbWhenManuallyTerminated: 被手动终止时免打扰，默认值 false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DoNotDisturbWhenManuallyTerminated: Boolean
        # @param DoNotDisturbUntilTheLastRetry: 最后一次重试前免打扰，默认值 false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DoNotDisturbUntilTheLastRetry: Boolean

        attr_accessor :AlarmId, :AlarmMonitorType, :AlarmGroups, :DoNotDisturbWhenSkipped, :DoNotDisturbWhenManuallyTerminated, :DoNotDisturbUntilTheLastRetry

        def initialize(alarmid=nil, alarmmonitortype=nil, alarmgroups=nil, donotdisturbwhenskipped=nil, donotdisturbwhenmanuallyterminated=nil, donotdisturbuntilthelastretry=nil)
          @AlarmId = alarmid
          @AlarmMonitorType = alarmmonitortype
          @AlarmGroups = alarmgroups
          @DoNotDisturbWhenSkipped = donotdisturbwhenskipped
          @DoNotDisturbWhenManuallyTerminated = donotdisturbwhenmanuallyterminated
          @DoNotDisturbUntilTheLastRetry = donotdisturbuntilthelastretry
        end

        def deserialize(params)
          @AlarmId = params['AlarmId']
          @AlarmMonitorType = params['AlarmMonitorType']
          unless params['AlarmGroups'].nil?
            @AlarmGroups = []
            params['AlarmGroups'].each do |i|
              alarmgroup_tmp = AlarmGroup.new
              alarmgroup_tmp.deserialize(i)
              @AlarmGroups << alarmgroup_tmp
            end
          end
          @DoNotDisturbWhenSkipped = params['DoNotDisturbWhenSkipped']
          @DoNotDisturbWhenManuallyTerminated = params['DoNotDisturbWhenManuallyTerminated']
          @DoNotDisturbUntilTheLastRetry = params['DoNotDisturbUntilTheLastRetry']
        end
      end

      # 告警组
      class AlarmGroup < TencentCloud::Common::AbstractModel
        # @param ChannelId: <p>通知渠道ID，可通过基础平台通知渠道相关接口获取</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelId: String
        # @param ChannelName: <p>通知渠道名称，可以是用户组名称或邮箱地址</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelName: String
        # @param IsEmailChannel: <p>是否启用邮件渠道，默认值：false</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsEmailChannel: Boolean
        # @param AlarmConditions: <p>告警条件列表。取值：<br>START：启动<br>SUCCESS：成功<br>FAILURE：失败<br>MONITOR_INDICATOR_ALARM：监控指标告警</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmConditions: Array
        # @param ChannelType: <p>通知渠道类型。取值：0 未指定，1 Email，2 Webhook，3 Teams，4 Slack</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChannelType: Integer

        attr_accessor :ChannelId, :ChannelName, :IsEmailChannel, :AlarmConditions, :ChannelType

        def initialize(channelid=nil, channelname=nil, isemailchannel=nil, alarmconditions=nil, channeltype=nil)
          @ChannelId = channelid
          @ChannelName = channelname
          @IsEmailChannel = isemailchannel
          @AlarmConditions = alarmconditions
          @ChannelType = channeltype
        end

        def deserialize(params)
          @ChannelId = params['ChannelId']
          @ChannelName = params['ChannelName']
          @IsEmailChannel = params['IsEmailChannel']
          @AlarmConditions = params['AlarmConditions']
          @ChannelType = params['ChannelType']
        end
      end

      # 资产标签投票记录
      class AssetTagVote < TencentCloud::Common::AbstractModel
        # @param Id: 主键ID
        # @type Id: String
        # @param PropertyType: 资产类型，取值参考AssetType定义，如CATALOG、SCHEMA、TABLE、VIEW、MODEL、VOLUME、FUNCTION等
        # @type PropertyType: String
        # @param PropertyId: 资产ID
        # @type PropertyId: String
        # @param LabelId: 标签ID
        # @type LabelId: String
        # @param LabelName: 标签名称
        # @type LabelName: String
        # @param LabelValueId: 标签值ID
        # @type LabelValueId: String
        # @param LabelValue: 标签值
        # @type LabelValue: String
        # @param Creator: 创建人
        # @type Creator: String
        # @param Modifier: 修改者
        # @type Modifier: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifiedTime: 修改时间
        # @type ModifiedTime: String
        # @param OwnerAccount: 所有者账号
        # @type OwnerAccount: String
        # @param Type: 标签类型，取值：0=未知，1=治理标签，2=自定义标签，3=属性标签，4=脱敏标签
        # @type Type: Integer
        # @param Deleted: 是否删除
        # @type Deleted: Boolean

        attr_accessor :Id, :PropertyType, :PropertyId, :LabelId, :LabelName, :LabelValueId, :LabelValue, :Creator, :Modifier, :CreateTime, :ModifiedTime, :OwnerAccount, :Type, :Deleted

        def initialize(id=nil, propertytype=nil, propertyid=nil, labelid=nil, labelname=nil, labelvalueid=nil, labelvalue=nil, creator=nil, modifier=nil, createtime=nil, modifiedtime=nil, owneraccount=nil, type=nil, deleted=nil)
          @Id = id
          @PropertyType = propertytype
          @PropertyId = propertyid
          @LabelId = labelid
          @LabelName = labelname
          @LabelValueId = labelvalueid
          @LabelValue = labelvalue
          @Creator = creator
          @Modifier = modifier
          @CreateTime = createtime
          @ModifiedTime = modifiedtime
          @OwnerAccount = owneraccount
          @Type = type
          @Deleted = deleted
        end

        def deserialize(params)
          @Id = params['Id']
          @PropertyType = params['PropertyType']
          @PropertyId = params['PropertyId']
          @LabelId = params['LabelId']
          @LabelName = params['LabelName']
          @LabelValueId = params['LabelValueId']
          @LabelValue = params['LabelValue']
          @Creator = params['Creator']
          @Modifier = params['Modifier']
          @CreateTime = params['CreateTime']
          @ModifiedTime = params['ModifiedTime']
          @OwnerAccount = params['OwnerAccount']
          @Type = params['Type']
          @Deleted = params['Deleted']
        end
      end

      # 批量异步操作的逐项结果
      class AsyncActionRsp < TencentCloud::Common::AbstractModel
        # @param ActionResults: 多个操作项的结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActionResults: Array

        attr_accessor :ActionResults

        def initialize(actionresults=nil)
          @ActionResults = actionresults
        end

        def deserialize(params)
          unless params['ActionResults'].nil?
            @ActionResults = []
            params['ActionResults'].each do |i|
              runactionbrief_tmp = RunActionBrief.new
              runactionbrief_tmp.deserialize(i)
              @ActionResults << runactionbrief_tmp
            end
          end
        end
      end

      # OneFlow 透传的 Workspace 异步文件操作信息；作业状态由 Workspace 持久化和维护
      class AsyncOperation < TencentCloud::Common::AbstractModel
        # @param IsAsync: 是否异步执行；ZIP 解压创建时为 true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsAsync: Boolean
        # @param JobId: Workspace 持久化的异步作业 ID，用于查询作业进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param OperationId: 调用方生成的提交幂等与链路追踪标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperationId: String
        # @param Status: 异步作业状态：0-未指定，1-已受理，2-解压中，3-回调处理中，4-成功，5-部分失败，6-失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :IsAsync, :JobId, :OperationId, :Status

        def initialize(isasync=nil, jobid=nil, operationid=nil, status=nil)
          @IsAsync = isasync
          @JobId = jobid
          @OperationId = operationid
          @Status = status
        end

        def deserialize(params)
          @IsAsync = params['IsAsync']
          @JobId = params['JobId']
          @OperationId = params['OperationId']
          @Status = params['Status']
        end
      end

      # 审计信息
      class Audit < TencentCloud::Common::AbstractModel
        # @param Creator: 创建者。注意：此字段可能返回null，表示取不到有效值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Creator: String
        # @param CreatedAt: 创建时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedAt: String
        # @param LastModifier: 最后修改者。注意：此字段可能返回null，表示取不到有效值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifier: String
        # @param LastModifiedAt: 最后修改时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifiedAt: String
        # @param CreatorName: 创建者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorName: String
        # @param LastModifierName: 最后修改者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastModifierName: String

        attr_accessor :Creator, :CreatedAt, :LastModifier, :LastModifiedAt, :CreatorName, :LastModifierName

        def initialize(creator=nil, createdat=nil, lastmodifier=nil, lastmodifiedat=nil, creatorname=nil, lastmodifiername=nil)
          @Creator = creator
          @CreatedAt = createdat
          @LastModifier = lastmodifier
          @LastModifiedAt = lastmodifiedat
          @CreatorName = creatorname
          @LastModifierName = lastmodifiername
        end

        def deserialize(params)
          @Creator = params['Creator']
          @CreatedAt = params['CreatedAt']
          @LastModifier = params['LastModifier']
          @LastModifiedAt = params['LastModifiedAt']
          @CreatorName = params['CreatorName']
          @LastModifierName = params['LastModifierName']
        end
      end

      # 分桶分区策略
      class BucketPartitioning < TencentCloud::Common::AbstractModel
        # @param FiledNames: 分桶字段
        # @type FiledNames: Array
        # @param NumBuckets: 分桶数
        # @type NumBuckets: String

        attr_accessor :FiledNames, :NumBuckets

        def initialize(filednames=nil, numbuckets=nil)
          @FiledNames = filednames
          @NumBuckets = numbuckets
        end

        def deserialize(params)
          @FiledNames = params['FiledNames']
          @NumBuckets = params['NumBuckets']
        end
      end

      # 数据目录实体结构
      class Catalog < TencentCloud::Common::AbstractModel
        # @param Id: <p>数据目录唯一id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: <p>数据目录名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Type: <p>数据目录类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Comment: <p>数据目录描述信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Status: <p>状态信息：注册中0，待测试1，连接成功2，连接失败3，删除中4，已删除5</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Properties: <p>数据目录属性</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param Operator: <p>操作人</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param MetaOwner: <p>责任人信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaOwner: :class:`Tencentcloud::Databuddy.v20260715.models.MetaOwner`
        # @param Audit: <p>审计信息</p>
        # @type Audit: :class:`Tencentcloud::Databuddy.v20260715.models.Audit`
        # @param AssetGuid: <p>资产全局唯一ID</p>
        # @type AssetGuid: String
        # @param CurrentWorkspacePermissionLevel: <p>当前workspace权限级别，取值对应PermissionLevel，0-无权限，1-只读，2-读写</p>
        # @type CurrentWorkspacePermissionLevel: Integer
        # @param Identifier: <p>tccatalog属性中的tccatalog.identifier</p>
        # @type Identifier: String
        # @param PermissionDetail: <p>当前用户对该实体的权限信息</p>
        # @type PermissionDetail: :class:`Tencentcloud::Databuddy.v20260715.models.PermissionDetail`
        # @param IsExternal: <p>是否为外部数据目录（基于数据源连接创建的Catalog，如MYSQL、EMR_HIVE、TCHOUSE_D、POSTGRESQL、DLC等）。true:外部目录, false:内置目录（TABLE/MODEL/VOLUME）</p>
        # @type IsExternal: Boolean
        # @param Tags: <p>标签信息列表。注意：仅当请求中 FetchTags=true 时返回，默认不返回</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param CatalogSource: <p>数据目录来源</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogSource: String
        # @param ConnectionCatalogName: <p>连接侧数据目录名或数据库名（仅分析版三段式数据源有值，二段式数据源为空字符串）。Doris/StarRocks/TChouse-D 等 MySQL 内核三段式数据源：external catalog 名称；PostgreSQL/Tencent PG/GaussDB/Hologres 等 PG 内核三段式数据源：databaseName；MySQL 等二段式数据源：空字符串。注意：此字段仅分析版（CatalogSource=CONNECTION）有效，专业版（METALAKE）不填充。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionCatalogName: String

        attr_accessor :Id, :Name, :Type, :Comment, :Status, :Properties, :Operator, :MetaOwner, :Audit, :AssetGuid, :CurrentWorkspacePermissionLevel, :Identifier, :PermissionDetail, :IsExternal, :Tags, :CatalogSource, :ConnectionCatalogName

        def initialize(id=nil, name=nil, type=nil, comment=nil, status=nil, properties=nil, operator=nil, metaowner=nil, audit=nil, assetguid=nil, currentworkspacepermissionlevel=nil, identifier=nil, permissiondetail=nil, isexternal=nil, tags=nil, catalogsource=nil, connectioncatalogname=nil)
          @Id = id
          @Name = name
          @Type = type
          @Comment = comment
          @Status = status
          @Properties = properties
          @Operator = operator
          @MetaOwner = metaowner
          @Audit = audit
          @AssetGuid = assetguid
          @CurrentWorkspacePermissionLevel = currentworkspacepermissionlevel
          @Identifier = identifier
          @PermissionDetail = permissiondetail
          @IsExternal = isexternal
          @Tags = tags
          @CatalogSource = catalogsource
          @ConnectionCatalogName = connectioncatalogname
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @Status = params['Status']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          @Operator = params['Operator']
          unless params['MetaOwner'].nil?
            @MetaOwner = MetaOwner.new
            @MetaOwner.deserialize(params['MetaOwner'])
          end
          unless params['Audit'].nil?
            @Audit = Audit.new
            @Audit.deserialize(params['Audit'])
          end
          @AssetGuid = params['AssetGuid']
          @CurrentWorkspacePermissionLevel = params['CurrentWorkspacePermissionLevel']
          @Identifier = params['Identifier']
          unless params['PermissionDetail'].nil?
            @PermissionDetail = PermissionDetail.new
            @PermissionDetail.deserialize(params['PermissionDetail'])
          end
          @IsExternal = params['IsExternal']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              commontaginfo_tmp = CommonTagInfo.new
              commontaginfo_tmp.deserialize(i)
              @Tags << commontaginfo_tmp
            end
          end
          @CatalogSource = params['CatalogSource']
          @ConnectionCatalogName = params['ConnectionCatalogName']
        end
      end

      # 字段简要信息，用于批量修改表字段描述时传入
      class ColumnBrief < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param Type: 字段类型
        # @type Type: String
        # @param Comment: 描述配置
        # @type Comment: String

        attr_accessor :Name, :Type, :Comment

        def initialize(name=nil, type=nil, comment=nil)
          @Name = name
          @Type = type
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
        end
      end

      # 字段描述更新失败信息
      class ColumnErrorMessages < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param ErrorMessage: 错误原因
        # @type ErrorMessage: String

        attr_accessor :Name, :ErrorMessage

        def initialize(name=nil, errormessage=nil)
          @Name = name
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          @Name = params['Name']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # 字段信息
      class ColumnInfo < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param Type: 字段类型
        # @type Type: String
        # @param Comment: 字段描述
        # @type Comment: String
        # @param FieldSetting: 字段设置
        # @type FieldSetting: String
        # @param IsPrimaryKey: 是否为主键
        # @type IsPrimaryKey: Boolean
        # @param DataMaskStrategyInfo: 字段策略
        # @type DataMaskStrategyInfo: :class:`Tencentcloud::Databuddy.v20260715.models.DataMaskStrategyInfo`
        # @param Tags: 字段级标签列表，仅当请求中FetchOption.FetchTags=true时返回，默认不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param DictDimension: 字段关联的字典维度信息，仅当请求中FetchOption.FetchDictDimensions=true时返回，默认不返回；若该字段未关联任何字典维度则为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DictDimension: :class:`Tencentcloud::Databuddy.v20260715.models.DictDimensionInfo`

        attr_accessor :Name, :Type, :Comment, :FieldSetting, :IsPrimaryKey, :DataMaskStrategyInfo, :Tags, :DictDimension

        def initialize(name=nil, type=nil, comment=nil, fieldsetting=nil, isprimarykey=nil, datamaskstrategyinfo=nil, tags=nil, dictdimension=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @FieldSetting = fieldsetting
          @IsPrimaryKey = isprimarykey
          @DataMaskStrategyInfo = datamaskstrategyinfo
          @Tags = tags
          @DictDimension = dictdimension
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @FieldSetting = params['FieldSetting']
          @IsPrimaryKey = params['IsPrimaryKey']
          unless params['DataMaskStrategyInfo'].nil?
            @DataMaskStrategyInfo = DataMaskStrategyInfo.new
            @DataMaskStrategyInfo.deserialize(params['DataMaskStrategyInfo'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              commontaginfo_tmp = CommonTagInfo.new
              commontaginfo_tmp.deserialize(i)
              @Tags << commontaginfo_tmp
            end
          end
          unless params['DictDimension'].nil?
            @DictDimension = DictDimensionInfo.new
            @DictDimension.deserialize(params['DictDimension'])
          end
        end
      end

      # 通用错误信息
      class CommonFailItem < TencentCloud::Common::AbstractModel
        # @param Item: <p>uin或者groupId</p>
        # @type Item: String
        # @param FailReason: <p>错误信息</p>
        # @type FailReason: String

        attr_accessor :Item, :FailReason

        def initialize(item=nil, failreason=nil)
          @Item = item
          @FailReason = failreason
        end

        def deserialize(params)
          @Item = params['Item']
          @FailReason = params['FailReason']
        end
      end

      # 通用标签信息（用于查询展示场景），适用于表标签、字段标签等各类资产标签的轻量展示，供GetTable等接口返回使用
      class CommonTagInfo < TencentCloud::Common::AbstractModel
        # @param LabelId: 标签ID
        # @type LabelId: String
        # @param LabelName: 标签名称
        # @type LabelName: String
        # @param LabelValueId: 标签值ID，属性标签（LabelType=3）可为0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValueId: String
        # @param LabelValue: 标签值，脱敏标签（LabelType=4）时可为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param Type: 标签类型，取值参考LabelType枚举定义：1-治理标签，2-自定义标签，3-属性标签，4-脱敏标签
        # @type Type: Integer
        # @param Deleted: 标签是否已删除。true表示该LabelId在meta_biz_label中查不到记录，标签已被物理删除；false（默认）表示标签仍存在
        # @type Deleted: Boolean

        attr_accessor :LabelId, :LabelName, :LabelValueId, :LabelValue, :Type, :Deleted

        def initialize(labelid=nil, labelname=nil, labelvalueid=nil, labelvalue=nil, type=nil, deleted=nil)
          @LabelId = labelid
          @LabelName = labelname
          @LabelValueId = labelvalueid
          @LabelValue = labelvalue
          @Type = type
          @Deleted = deleted
        end

        def deserialize(params)
          @LabelId = params['LabelId']
          @LabelName = params['LabelName']
          @LabelValueId = params['LabelValueId']
          @LabelValue = params['LabelValue']
          @Type = params['Type']
          @Deleted = params['Deleted']
        end
      end

      # 控制台用户组信息（对外标准版，与内部 UserGroupRoleInfo 解耦）
      class ConsoleGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 用户组 ID
        # @type GroupId: String
        # @param GroupName: 用户组名称
        # @type GroupName: String
        # @param Roles: 角色列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Roles: Array
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param UserCount: 用户组下用户数量
        # @type UserCount: Integer
        # @param GroupType: 用户组类型。取值为枚举数值的字符串形式："0"=控制台系统类型（包含全部user）、"1"=控制台自定义类型、"2"=工作空间系统类型、"3"=工作空间自定义类型
        # @type GroupType: String

        attr_accessor :GroupId, :GroupName, :Roles, :CreateTime, :UpdateTime, :UserCount, :GroupType

        def initialize(groupid=nil, groupname=nil, roles=nil, createtime=nil, updatetime=nil, usercount=nil, grouptype=nil)
          @GroupId = groupid
          @GroupName = groupname
          @Roles = roles
          @CreateTime = createtime
          @UpdateTime = updatetime
          @UserCount = usercount
          @GroupType = grouptype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          unless params['Roles'].nil?
            @Roles = []
            params['Roles'].each do |i|
              rolebasicinfo_tmp = RoleBasicInfo.new
              rolebasicinfo_tmp.deserialize(i)
              @Roles << rolebasicinfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @UserCount = params['UserCount']
          @GroupType = params['GroupType']
        end
      end

      # 控制台用户组成员信息（对外标准版，与内部 GroupUserInfo 解耦）
      class ConsoleGroupUserInfo < TencentCloud::Common::AbstractModel
        # @param UserUin: 用户 UIN
        # @type UserUin: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Nickname: 昵称
        # @type Nickname: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :UserUin, :UserName, :Nickname, :CreateTime, :UpdateTime

        def initialize(useruin=nil, username=nil, nickname=nil, createtime=nil, updatetime=nil)
          @UserUin = useruin
          @UserName = username
          @Nickname = nickname
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @UserName = params['UserName']
          @Nickname = params['Nickname']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 控制台角色信息（对外标准版，与内部 Role 解耦）
      class ConsoleRoleInfo < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 角色基本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicInfo: :class:`Tencentcloud::Databuddy.v20260715.models.RoleBasicInfo`
        # @param MetaData: 角色元信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Databuddy.v20260715.models.RoleMetaData`
        # @param Permissions: 角色权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permissions: Array

        attr_accessor :BasicInfo, :MetaData, :Permissions

        def initialize(basicinfo=nil, metadata=nil, permissions=nil)
          @BasicInfo = basicinfo
          @MetaData = metadata
          @Permissions = permissions
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = RoleBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['MetaData'].nil?
            @MetaData = RoleMetaData.new
            @MetaData.deserialize(params['MetaData'])
          end
          unless params['Permissions'].nil?
            @Permissions = []
            params['Permissions'].each do |i|
              rolepermission_tmp = RolePermission.new
              rolepermission_tmp.deserialize(i)
              @Permissions << rolepermission_tmp
            end
          end
        end
      end

      # 控制台用户信息（规范化，与内部 UserDetailInfo 解耦）
      class ConsoleUserInfo < TencentCloud::Common::AbstractModel
        # @param UserUin: 用户 UIN
        # @type UserUin: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Nickname: 昵称
        # @type Nickname: String
        # @param Roles: 角色列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Roles: Array
        # @param UserSource: 用户来源，group：用户组、user:用户
        # @type UserSource: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param IsOwner: 是否主账号
        # @type IsOwner: Boolean
        # @param UserTag: 0: 普通用户 1: entraId用户
        # @type UserTag: Integer
        # @param IsAdmin: 是否具有 admin 权限的子账号
        # @type IsAdmin: Boolean

        attr_accessor :UserUin, :UserName, :Nickname, :Roles, :UserSource, :CreateTime, :UpdateTime, :IsOwner, :UserTag, :IsAdmin

        def initialize(useruin=nil, username=nil, nickname=nil, roles=nil, usersource=nil, createtime=nil, updatetime=nil, isowner=nil, usertag=nil, isadmin=nil)
          @UserUin = useruin
          @UserName = username
          @Nickname = nickname
          @Roles = roles
          @UserSource = usersource
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsOwner = isowner
          @UserTag = usertag
          @IsAdmin = isadmin
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @UserName = params['UserName']
          @Nickname = params['Nickname']
          unless params['Roles'].nil?
            @Roles = []
            params['Roles'].each do |i|
              rolebasicinfo_tmp = RoleBasicInfo.new
              rolebasicinfo_tmp.deserialize(i)
              @Roles << rolebasicinfo_tmp
            end
          end
          @UserSource = params['UserSource']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsOwner = params['IsOwner']
          @UserTag = params['UserTag']
          @IsAdmin = params['IsAdmin']
        end
      end

      # CreateCatalog请求参数结构体
      class CreateCatalogRequest < TencentCloud::Common::AbstractModel
        # @param Name: <p>catalog名称</p>
        # @type Name: String
        # @param Type: <p>catalog类型, 可选值TABLE、MODEL、VOLUME</p>
        # @type Type: String
        # @param WorkspaceId: <p>工作空间唯一id</p>
        # @type WorkspaceId: String
        # @param Comment: <p>描述</p>
        # @type Comment: String
        # @param ConnectionId: <p>connection 的 ID，通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（融合版新增字段），取值参考 CatalogSourceEnum：METALAKE（专业版）/ CONNECTION（分析版），不传时默认按 METALAKE 处理</p>
        # @type CatalogSource: String
        # @param ConnectionCatalogName: <p>连接侧数据目录名或数据库名，三段式数据源必填，二段式数据源（如 MySQL）不填。Doris/StarRocks/TChouse-D 等 MySQL 内核三段式数据源填写 external catalog 名称；PostgreSQL/Tencent PG/GaussDB/Hologres 等 PG 内核三段式数据源填写 databaseName；MySQL 等二段式数据源不填。</p>
        # @type ConnectionCatalogName: String

        attr_accessor :Name, :Type, :WorkspaceId, :Comment, :ConnectionId, :CatalogSource, :ConnectionCatalogName

        def initialize(name=nil, type=nil, workspaceid=nil, comment=nil, connectionid=nil, catalogsource=nil, connectioncatalogname=nil)
          @Name = name
          @Type = type
          @WorkspaceId = workspaceid
          @Comment = comment
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
          @ConnectionCatalogName = connectioncatalogname
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @WorkspaceId = params['WorkspaceId']
          @Comment = params['Comment']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
          @ConnectionCatalogName = params['ConnectionCatalogName']
        end
      end

      # CreateCatalog返回参数结构体
      class CreateCatalogResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>创建catalog响应</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateCatalogRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateCatalogRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建数据目录的响应
      class CreateCatalogRsp < TencentCloud::Common::AbstractModel
        # @param CatalogId: 新创建的数据目录的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogId: String

        attr_accessor :CatalogId

        def initialize(catalogid=nil)
          @CatalogId = catalogid
        end

        def deserialize(params)
          @CatalogId = params['CatalogId']
        end
      end

      # CreateConsoleGroup请求参数结构体
      class CreateConsoleGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: <p>用户组名称</p>
        # @type GroupName: String
        # @param GroupNickname: <p>用户组别名</p>
        # @type GroupNickname: String
        # @param Description: <p>用户组描述</p>
        # @type Description: String

        attr_accessor :GroupName, :GroupNickname, :Description

        def initialize(groupname=nil, groupnickname=nil, description=nil)
          @GroupName = groupname
          @GroupNickname = groupnickname
          @Description = description
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupNickname = params['GroupNickname']
          @Description = params['Description']
        end
      end

      # CreateConsoleGroup返回参数结构体
      class CreateConsoleGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateConsoleGroupRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateConsoleGroupRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建控制台用户组响应
      class CreateConsoleGroupRsp < TencentCloud::Common::AbstractModel
        # @param GroupId: 创建成功的用户组 ID
        # @type GroupId: String

        attr_accessor :GroupId

        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # CreateFile请求参数结构体
      class CreateFileRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间 ID。来源：ListWorkspaces 接口返回的 WorkspaceId</p>
        # @type WorkspaceId: String
        # @param FileName: <p>文件名，含后缀，最长 255 字节。不能以 . 或 .. 开头/结尾，不能含空格与控制字符</p>
        # @type FileName: String
        # @param ParentFolderPath: <p>父文件夹路径，以 / 开头、末尾不带 /，根目录传 /。来源：ListFiles 接口返回的 Path</p>
        # @type ParentFolderPath: String
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # @type FileType: String
        # @param FileConfig: <p>文件运行配置</p>
        # @type FileConfig: :class:`Tencentcloud::Databuddy.v20260715.models.FileConfig`
        # @param BundleId: <p>绑定的 BundleId。来源：ListBundles 接口返回的 BundleId</p>
        # @type BundleId: String
        # @param BundleInfo: <p>绑定的 BundleInfo，JSON 字符串</p>
        # @type BundleInfo: String
        # @param Storage: <p>文件初始内容。不传则按FileType 生成默认内容</p>
        # @type Storage: :class:`Tencentcloud::Databuddy.v20260715.models.FileStorage`
        # @param ExtractArchive: 是否将 Storage 中的 ZIP 文件异步解压创建，默认 false。true 时异步作业由 Workspace 负责全生命周期，响应仅通过 AsyncOperation 返回作业信息（FileId 为空）；作业进度查询由基础平台 WS 接口实现，不在本协议中定义。
        # @type ExtractArchive: Boolean

        attr_accessor :WorkspaceId, :FileName, :ParentFolderPath, :FileType, :FileConfig, :BundleId, :BundleInfo, :Storage, :ExtractArchive

        def initialize(workspaceid=nil, filename=nil, parentfolderpath=nil, filetype=nil, fileconfig=nil, bundleid=nil, bundleinfo=nil, storage=nil, extractarchive=nil)
          @WorkspaceId = workspaceid
          @FileName = filename
          @ParentFolderPath = parentfolderpath
          @FileType = filetype
          @FileConfig = fileconfig
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @Storage = storage
          @ExtractArchive = extractarchive
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileName = params['FileName']
          @ParentFolderPath = params['ParentFolderPath']
          @FileType = params['FileType']
          unless params['FileConfig'].nil?
            @FileConfig = FileConfig.new
            @FileConfig.deserialize(params['FileConfig'])
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          unless params['Storage'].nil?
            @Storage = FileStorage.new
            @Storage.deserialize(params['Storage'])
          end
          @ExtractArchive = params['ExtractArchive']
        end
      end

      # CreateFile返回参数结构体
      class CreateFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.FileInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = FileInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateFolder请求参数结构体
      class CreateFolderRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间名称</p>
        # @type WorkspaceId: String
        # @param FolderName: <p>文件夹名称</p>
        # @type FolderName: String
        # @param FolderType: <p>文件夹类型</p><p>枚举值：</p><ul><li>FOLDER： 文件夹</li><li>GIT_FOLDER： git文件夹</li></ul>
        # @type FolderType: String
        # @param ParentFolder: <p>父节点</p>
        # @type ParentFolder: :class:`Tencentcloud::Databuddy.v20260715.models.FolderLocator`
        # @param GitConfig: <p>git配置，FolderType=GIT_FOLDER 时必填</p>
        # @type GitConfig: :class:`Tencentcloud::Databuddy.v20260715.models.GitRepoConfig`

        attr_accessor :WorkspaceId, :FolderName, :FolderType, :ParentFolder, :GitConfig

        def initialize(workspaceid=nil, foldername=nil, foldertype=nil, parentfolder=nil, gitconfig=nil)
          @WorkspaceId = workspaceid
          @FolderName = foldername
          @FolderType = foldertype
          @ParentFolder = parentfolder
          @GitConfig = gitconfig
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FolderName = params['FolderName']
          @FolderType = params['FolderType']
          unless params['ParentFolder'].nil?
            @ParentFolder = FolderLocator.new
            @ParentFolder.deserialize(params['ParentFolder'])
          end
          unless params['GitConfig'].nil?
            @GitConfig = GitRepoConfig.new
            @GitConfig.deserialize(params['GitConfig'])
          end
        end
      end

      # CreateFolder返回参数结构体
      class CreateFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>创建文件夹结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateFolderRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateFolderRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建文件夹回包
      class CreateFolderRsp < TencentCloud::Common::AbstractModel
        # @param FolderId: <p>文件夹 ID</p>
        # @type FolderId: String

        attr_accessor :FolderId

        def initialize(folderid=nil)
          @FolderId = folderid
        end

        def deserialize(params)
          @FolderId = params['FolderId']
        end
      end

      # CreateLocation请求参数结构体
      class CreateLocationRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateLocation返回参数结构体
      class CreateLocationResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateModel请求参数结构体
      class CreateModelRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: catalog 信息
        # @type CatalogName: String
        # @param SchemaName: schema 信息
        # @type SchemaName: String
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param WorkspaceId: 调用时所在workspace唯一id
        # @type WorkspaceId: String
        # @param Comment: 描述信息
        # @type Comment: String
        # @param Properties: 扩展参数
        # @type Properties: Array

        attr_accessor :CatalogName, :SchemaName, :ModelName, :WorkspaceId, :Comment, :Properties

        def initialize(catalogname=nil, schemaname=nil, modelname=nil, workspaceid=nil, comment=nil, properties=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ModelName = modelname
          @WorkspaceId = workspaceid
          @Comment = comment
          @Properties = properties
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ModelName = params['ModelName']
          @WorkspaceId = params['WorkspaceId']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
        end
      end

      # CreateModel返回参数结构体
      class CreateModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建返回模型信息
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateModelRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateModelRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建模型返回数据
      class CreateModelRsp < TencentCloud::Common::AbstractModel
        # @param Model: 模型信息
        # @type Model: :class:`Tencentcloud::Databuddy.v20260715.models.ModelInfo`

        attr_accessor :Model

        def initialize(model=nil)
          @Model = model
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ModelInfo.new
            @Model.deserialize(params['Model'])
          end
        end
      end

      # CreateModelVersion请求参数结构体
      class CreateModelVersionRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema名称</p>
        # @type SchemaName: String
        # @param ModelName: <p>模型名称</p>
        # @type ModelName: String
        # @param Uri: <p>地址</p>
        # @type Uri: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param Aliases: <p>别名列表</p>
        # @type Aliases: Array
        # @param Comment: <p>描述</p>
        # @type Comment: String
        # @param Properties: <p>扩展信息</p>
        # @type Properties: Array

        attr_accessor :CatalogName, :SchemaName, :ModelName, :Uri, :WorkspaceId, :Aliases, :Comment, :Properties

        def initialize(catalogname=nil, schemaname=nil, modelname=nil, uri=nil, workspaceid=nil, aliases=nil, comment=nil, properties=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ModelName = modelname
          @Uri = uri
          @WorkspaceId = workspaceid
          @Aliases = aliases
          @Comment = comment
          @Properties = properties
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ModelName = params['ModelName']
          @Uri = params['Uri']
          @WorkspaceId = params['WorkspaceId']
          @Aliases = params['Aliases']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
        end
      end

      # CreateModelVersion返回参数结构体
      class CreateModelVersionResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>创建返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateModelVersionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateModelVersionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建模型版本返回
      class CreateModelVersionRsp < TencentCloud::Common::AbstractModel
        # @param Created: 创建成功
        # @type Created: Boolean

        attr_accessor :Created

        def initialize(created=nil)
          @Created = created
        end

        def deserialize(params)
          @Created = params['Created']
        end
      end

      # CreateSchema请求参数结构体
      class CreateSchemaRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>catalog名称</p>
        # @type CatalogName: String
        # @param Name: <p>schema名称</p>
        # @type Name: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param Comment: <p>描述</p>
        # @type Comment: String
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。分析版catalog不支持创建schema，传入非空时服务端返回ANA_CATALOG_NOT_SUPPORTED错误。通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :Name, :WorkspaceId, :Comment, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, name=nil, workspaceid=nil, comment=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @Name = name
          @WorkspaceId = workspaceid
          @Comment = comment
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @Name = params['Name']
          @WorkspaceId = params['WorkspaceId']
          @Comment = params['Comment']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # CreateSchema返回参数结构体
      class CreateSchemaResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>schema信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateSchemaRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateSchemaRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建schema的响应
      class CreateSchemaRsp < TencentCloud::Common::AbstractModel
        # @param Schema: schema信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schema: :class:`Tencentcloud::Databuddy.v20260715.models.Schema`

        attr_accessor :Schema

        def initialize(schema=nil)
          @Schema = schema
        end

        def deserialize(params)
          unless params['Schema'].nil?
            @Schema = Schema.new
            @Schema.deserialize(params['Schema'])
          end
        end
      end

      # CreateVolume请求参数结构体
      class CreateVolumeRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: catalog 信息
        # @type CatalogName: String
        # @param SchemaName: schema 信息
        # @type SchemaName: String
        # @param VolumeName: 数据卷名称
        # @type VolumeName: String
        # @param WorkspaceId: 调用时所在workspace唯一id
        # @type WorkspaceId: String
        # @param Comment: 描述信息
        # @type Comment: String
        # @param Properties: 扩展参数
        # @type Properties: Array
        # @param StorageLocation: 存储位置
        # @type StorageLocation: String
        # @param Type: 数据卷类型
        # @type Type: String

        attr_accessor :CatalogName, :SchemaName, :VolumeName, :WorkspaceId, :Comment, :Properties, :StorageLocation, :Type

        def initialize(catalogname=nil, schemaname=nil, volumename=nil, workspaceid=nil, comment=nil, properties=nil, storagelocation=nil, type=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @VolumeName = volumename
          @WorkspaceId = workspaceid
          @Comment = comment
          @Properties = properties
          @StorageLocation = storagelocation
          @Type = type
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @VolumeName = params['VolumeName']
          @WorkspaceId = params['WorkspaceId']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          @StorageLocation = params['StorageLocation']
          @Type = params['Type']
        end
      end

      # CreateVolume返回参数结构体
      class CreateVolumeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建返回数据卷信息
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateVolumeRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateVolumeRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建模型返回数据
      class CreateVolumeRsp < TencentCloud::Common::AbstractModel
        # @param Volume: 数据卷信息
        # @type Volume: :class:`Tencentcloud::Databuddy.v20260715.models.Volume`

        attr_accessor :Volume

        def initialize(volume=nil)
          @Volume = volume
        end

        def deserialize(params)
          unless params['Volume'].nil?
            @Volume = Volume.new
            @Volume.deserialize(params['Volume'])
          end
        end
      end

      # CreateWorkflow请求参数结构体
      class CreateWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param BaseInfo: <p>工作流基本信息。必填，其中 WorkflowName 必填且工作空间内唯一</p>
        # @type BaseInfo: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowBaseInfo`
        # @param Trigger: <p>工作流调度配置</p>
        # @type Trigger: Array
        # @param ParamList: <p>工作流参数列表</p>
        # @type ParamList: Array
        # @param LabelList: <p>标签列表</p>
        # @type LabelList: Array
        # @param Alarm: <p>工作流告警配置</p>
        # @type Alarm: :class:`Tencentcloud::Databuddy.v20260715.models.AlarmBrief`
        # @param MonitorMetric: <p>监控指标配置。若告警条件中选择了监控告警，则本字段必填</p>
        # @type MonitorMetric: :class:`Tencentcloud::Databuddy.v20260715.models.MonitorMetricBrief`
        # @param AdvanceConfig: <p>工作流高级设置</p>
        # @type AdvanceConfig: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowAdvanceConfig`
        # @param TaskList: <p>工作流任务列表</p>
        # @type TaskList: Array
        # @param BundleId: <p>BundleId，可通过 Bundle 相关接口获取</p>
        # @type BundleId: String
        # @param BundleInfo: <p>Bundle信息</p>
        # @type BundleInfo: String
        # @param GitConfigId: <p>Git配置ID，可通过 Git 配置相关接口获取</p>
        # @type GitConfigId: String
        # @param GitBranch: <p>Git分支信息</p>
        # @type GitBranch: String

        attr_accessor :WorkspaceId, :BaseInfo, :Trigger, :ParamList, :LabelList, :Alarm, :MonitorMetric, :AdvanceConfig, :TaskList, :BundleId, :BundleInfo, :GitConfigId, :GitBranch

        def initialize(workspaceid=nil, baseinfo=nil, trigger=nil, paramlist=nil, labellist=nil, alarm=nil, monitormetric=nil, advanceconfig=nil, tasklist=nil, bundleid=nil, bundleinfo=nil, gitconfigid=nil, gitbranch=nil)
          @WorkspaceId = workspaceid
          @BaseInfo = baseinfo
          @Trigger = trigger
          @ParamList = paramlist
          @LabelList = labellist
          @Alarm = alarm
          @MonitorMetric = monitormetric
          @AdvanceConfig = advanceconfig
          @TaskList = tasklist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GitConfigId = gitconfigid
          @GitBranch = gitbranch
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['BaseInfo'].nil?
            @BaseInfo = WorkflowBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['Trigger'].nil?
            @Trigger = []
            params['Trigger'].each do |i|
              workflowtriggerconfiguration_tmp = WorkflowTriggerConfiguration.new
              workflowtriggerconfiguration_tmp.deserialize(i)
              @Trigger << workflowtriggerconfiguration_tmp
            end
          end
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          unless params['Alarm'].nil?
            @Alarm = AlarmBrief.new
            @Alarm.deserialize(params['Alarm'])
          end
          unless params['MonitorMetric'].nil?
            @MonitorMetric = MonitorMetricBrief.new
            @MonitorMetric.deserialize(params['MonitorMetric'])
          end
          unless params['AdvanceConfig'].nil?
            @AdvanceConfig = WorkflowAdvanceConfig.new
            @AdvanceConfig.deserialize(params['AdvanceConfig'])
          end
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              workflowtask_tmp = WorkflowTask.new
              workflowtask_tmp.deserialize(i)
              @TaskList << workflowtask_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @GitConfigId = params['GitConfigId']
          @GitBranch = params['GitBranch']
        end
      end

      # CreateWorkflow返回参数结构体
      class CreateWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>创建工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateWorkflowRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateWorkflowRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkflowRsp
      class CreateWorkflowRsp < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String

        attr_accessor :WorkflowId

        def initialize(workflowid=nil)
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
        end
      end

      # CreateWorkspace请求参数结构体
      class CreateWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceName: <p>工作空间名称，max_len=128</p>
        # @type WorkspaceName: String
        # @param WorkspaceRegion: <p>工作空间地域（如 ap-guangzhou），max_len=64</p>
        # @type WorkspaceRegion: String
        # @param Description: <p>工作空间描述，max_len=300</p>
        # @type Description: String

        attr_accessor :WorkspaceName, :WorkspaceRegion, :Description

        def initialize(workspacename=nil, workspaceregion=nil, description=nil)
          @WorkspaceName = workspacename
          @WorkspaceRegion = workspaceregion
          @Description = description
        end

        def deserialize(params)
          @WorkspaceName = params['WorkspaceName']
          @WorkspaceRegion = params['WorkspaceRegion']
          @Description = params['Description']
        end
      end

      # CreateWorkspace返回参数结构体
      class CreateWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>创建成功的工作空间ID</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateWorkspaceRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateWorkspaceRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateWorkspaceRole请求参数结构体
      class CreateWorkspaceRoleRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间id</p>
        # @type WorkspaceId: String
        # @param BasicInfo: <p>角色基础信息</p>
        # @type BasicInfo: :class:`Tencentcloud::Databuddy.v20260715.models.RoleBasicInfo`
        # @param Permissions: <p>角色权限</p>
        # @type Permissions: Array

        attr_accessor :WorkspaceId, :BasicInfo, :Permissions

        def initialize(workspaceid=nil, basicinfo=nil, permissions=nil)
          @WorkspaceId = workspaceid
          @BasicInfo = basicinfo
          @Permissions = permissions
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['BasicInfo'].nil?
            @BasicInfo = RoleBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['Permissions'].nil?
            @Permissions = []
            params['Permissions'].each do |i|
              rolepermission_tmp = RolePermission.new
              rolepermission_tmp.deserialize(i)
              @Permissions << rolepermission_tmp
            end
          end
        end
      end

      # CreateWorkspaceRole返回参数结构体
      class CreateWorkspaceRoleResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>创建工作空间角色返回</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.CreateWorkspaceRoleResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateWorkspaceRoleResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 创建工作空间角色结果
      class CreateWorkspaceRoleResult < TencentCloud::Common::AbstractModel
        # @param RoleId: 角色id
        # @type RoleId: String
        # @param Status: 创建工作空间角色是否成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean

        attr_accessor :RoleId, :Status

        def initialize(roleid=nil, status=nil)
          @RoleId = roleid
          @Status = status
        end

        def deserialize(params)
          @RoleId = params['RoleId']
          @Status = params['Status']
        end
      end

      # 创建工作空间响应
      class CreateWorkspaceRsp < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 创建成功的工作空间ID
        # @type WorkspaceId: String

        attr_accessor :WorkspaceId

        def initialize(workspaceid=nil)
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # 用户组脱敏规则，描述某个用户组对应的脱敏方法
      class DataMaskGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 工作组 ID，对应 WeData 用户组 ID，必填，字符串类型。示例值："17738042827013749"
        # @type GroupId: String
        # @param StrategyType: 脱敏方法（策略类型），必填，直接透传给 DLC。合法值：MASK_SHOW_FIRST_4（保留前四个字符）、MASK_SHOW_LAST_4（保留后四个字符）、MASK_HASH（哈希脱敏）、MASK_DATE_SHOW_YEAR（日期脱敏保留年份）、MASK_NULL（置为 NULL）、MASK_DEFAULT（默认值脱敏）
        # @type StrategyType: String
        # @param GroupName: 用户组名称
        # @type GroupName: String

        attr_accessor :GroupId, :StrategyType, :GroupName

        def initialize(groupid=nil, strategytype=nil, groupname=nil)
          @GroupId = groupid
          @StrategyType = strategytype
          @GroupName = groupname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @StrategyType = params['StrategyType']
          @GroupName = params['GroupName']
        end
      end

      # 脱敏策略绑定的敏感标签（精简视图）。相比通用 CommonTagInfo，仅保留策略视角下必要的三字段，避免序列化冗余。Type 固定为 4（DESENSITIZATION_LABEL 脱敏标签）
      class DataMaskLabelInfo < TencentCloud::Common::AbstractModel
        # @param LabelId: 敏感标签 ID，对应 catalog-manager meta_biz_label.id
        # @type LabelId: String
        # @param LabelName: 敏感标签名称，对应 catalog-manager meta_biz_label.name
        # @type LabelName: String
        # @param Type: 标签类型，固定值 4（DESENSITIZATION_LABEL 脱敏标签）。参考 enum LabelType：1=业务标签、2=技术标签、3=分类标签、4=脱敏标签
        # @type Type: Integer

        attr_accessor :LabelId, :LabelName, :Type

        def initialize(labelid=nil, labelname=nil, type=nil)
          @LabelId = labelid
          @LabelName = labelname
          @Type = type
        end

        def deserialize(params)
          @LabelId = params['LabelId']
          @LabelName = params['LabelName']
          @Type = params['Type']
        end
      end

      # 创建脱敏策略时的策略信息
      class DataMaskStrategyInfo < TencentCloud::Common::AbstractModel
        # @param StrategyName: 策略名称，必填，长度 1~128 字符，同一项目下唯一
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyName: String
        # @param Groups: 用户组脱敏规则列表，必填，至少包含一条规则。每条规则描述某个用户组对应的脱敏方法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array
        # @param StrategyType: 策略类型，必填，直接透传给 DLC。合法值：MASK_SHOW_FIRST_4（保留前四个字符）、MASK_SHOW_LAST_4（保留后四个字符）、MASK_HASH（哈希脱敏）、MASK_DATE_SHOW_YEAR（日期脱敏保留年份）、MASK_NULL（置为 NULL）、MASK_DEFAULT（默认值脱敏）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyType: String
        # @param StrategyDesc: 策略描述，可选，最大 512 字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StrategyDesc: String
        # @param StrategyId: 策略ID
        # @type StrategyId: String
        # @param Labels: 该脱敏策略当前绑定的敏感标签列表。使用场景：表详情弹窗回显“此策略关联了哪些敏感标签”，前端可 hover 展示。数据源：catalog-manager 域 meta_label_mask_policy_rel JOIN meta_biz_label，按 policy_id 反查。未关联任何敏感标签时为空数组。前置条件：仅当所在 ColumnInfo.DataMaskStrategyInfo 非空时才有查询意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array

        attr_accessor :StrategyName, :Groups, :StrategyType, :StrategyDesc, :StrategyId, :Labels

        def initialize(strategyname=nil, groups=nil, strategytype=nil, strategydesc=nil, strategyid=nil, labels=nil)
          @StrategyName = strategyname
          @Groups = groups
          @StrategyType = strategytype
          @StrategyDesc = strategydesc
          @StrategyId = strategyid
          @Labels = labels
        end

        def deserialize(params)
          @StrategyName = params['StrategyName']
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              datamaskgroup_tmp = DataMaskGroup.new
              datamaskgroup_tmp.deserialize(i)
              @Groups << datamaskgroup_tmp
            end
          end
          @StrategyType = params['StrategyType']
          @StrategyDesc = params['StrategyDesc']
          @StrategyId = params['StrategyId']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              datamasklabelinfo_tmp = DataMaskLabelInfo.new
              datamasklabelinfo_tmp.deserialize(i)
              @Labels << datamasklabelinfo_tmp
            end
          end
        end
      end

      # DeleteCatalog请求参数结构体
      class DeleteCatalogRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。非空→走分析版路径，空/缺省→走专业版TcLake路径。通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :WorkspaceId, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, workspaceid=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @WorkspaceId = workspaceid
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @WorkspaceId = params['WorkspaceId']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # DeleteCatalog返回参数结构体
      class DeleteCatalogResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>操作结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteCatalogRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteCatalogRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除数据目录描述的响应
      class DeleteCatalogRsp < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # DeleteConsoleGroups请求参数结构体
      class DeleteConsoleGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 要删除的用户组 ID 列表，单次最多100个；可通过 ListConsoleGroups 接口获取
        # @type GroupIds: Array

        attr_accessor :GroupIds

        def initialize(groupids=nil)
          @GroupIds = groupids
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
        end
      end

      # DeleteConsoleGroups返回参数结构体
      class DeleteConsoleGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteConsoleGroupsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteConsoleGroupsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除控制台用户组响应
      class DeleteConsoleGroupsRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # DeleteFile请求参数结构体
      class DeleteFileRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间 ID。来源：ListWorkspaces 接口返回的 WorkspaceId</p>
        # @type WorkspaceId: String
        # @param FileId: <p>文件 ID。来源：CreateFile / ListFiles / GetFile 接口返回的 FileId</p>
        # @type FileId: String
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # @type FileType: String

        attr_accessor :WorkspaceId, :FileId, :FileType

        def initialize(workspaceid=nil, fileid=nil, filetype=nil)
          @WorkspaceId = workspaceid
          @FileId = fileid
          @FileType = filetype
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileId = params['FileId']
          @FileType = params['FileType']
        end
      end

      # DeleteFile返回参数结构体
      class DeleteFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteFileResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteFileResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 文件删除结果
      class DeleteFileResult < TencentCloud::Common::AbstractModel
        # @param FileId: <p>被删除的文件 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param Status: <p>删除是否成功</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean

        attr_accessor :FileId, :Status

        def initialize(fileid=nil, status=nil)
          @FileId = fileid
          @Status = status
        end

        def deserialize(params)
          @FileId = params['FileId']
          @Status = params['Status']
        end
      end

      # DeleteFolder请求参数结构体
      class DeleteFolderRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间id</p>
        # @type WorkspaceId: String
        # @param Folder: <p>待删除的文件夹</p>
        # @type Folder: :class:`Tencentcloud::Databuddy.v20260715.models.FolderLocator`
        # @param ForceDelete: <p>软删除还是从回收站硬删除</p><p>枚举值：</p><ul><li>false： 软删除到回收站</li><li>true： 从回收站硬删除</li></ul>
        # @type ForceDelete: Boolean

        attr_accessor :WorkspaceId, :Folder, :ForceDelete

        def initialize(workspaceid=nil, folder=nil, forcedelete=nil)
          @WorkspaceId = workspaceid
          @Folder = folder
          @ForceDelete = forcedelete
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['Folder'].nil?
            @Folder = FolderLocator.new
            @Folder.deserialize(params['Folder'])
          end
          @ForceDelete = params['ForceDelete']
        end
      end

      # DeleteFolder返回参数结构体
      class DeleteFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>删除文件夹结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteFolderRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteFolderRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除文件夹回包
      class DeleteFolderRsp < TencentCloud::Common::AbstractModel
        # @param Status: <p>删除文件夹状态</p>
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # DeleteLocation请求参数结构体
      class DeleteLocationRequest < TencentCloud::Common::AbstractModel
        # @param LocationName: 存储位置名，必填
        # @type LocationName: String
        # @param WorkspaceId: 调用时所在workspace唯一id，必填
        # @type WorkspaceId: String

        attr_accessor :LocationName, :WorkspaceId

        def initialize(locationname=nil, workspaceid=nil)
          @LocationName = locationname
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @LocationName = params['LocationName']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # DeleteLocation返回参数结构体
      class DeleteLocationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteLocationRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteLocationRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除存储位置响应
      class DeleteLocationRsp < TencentCloud::Common::AbstractModel
        # @param Deleted: 是否成功删除
        # @type Deleted: Boolean

        attr_accessor :Deleted

        def initialize(deleted=nil)
          @Deleted = deleted
        end

        def deserialize(params)
          @Deleted = params['Deleted']
        end
      end

      # DeleteModel请求参数结构体
      class DeleteModelRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema名称</p>
        # @type SchemaName: String
        # @param ModelName: <p>模型名称</p>
        # @type ModelName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String

        attr_accessor :CatalogName, :SchemaName, :ModelName, :WorkspaceId

        def initialize(catalogname=nil, schemaname=nil, modelname=nil, workspaceid=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ModelName = modelname
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ModelName = params['ModelName']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # DeleteModel返回参数结构体
      class DeleteModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>删除结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteModelRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteModelRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除模型结果
      class DeleteModelRsp < TencentCloud::Common::AbstractModel
        # @param Result: 是否删除成功
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # DeleteSchema请求参数结构体
      class DeleteSchemaRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名</p>
        # @type SchemaName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。分析版catalog不支持删除schema，传入非空时服务端返回ANA_CATALOG_NOT_SUPPORTED错误。通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :WorkspaceId, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, workspaceid=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @WorkspaceId = workspaceid
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @WorkspaceId = params['WorkspaceId']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # DeleteSchema返回参数结构体
      class DeleteSchemaResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>操作结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteSchemaRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteSchemaRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除Schema的响应
      class DeleteSchemaRsp < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # DeleteTable请求参数结构体
      class DeleteTableRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名</p>
        # @type SchemaName: String
        # @param TableName: <p>表名</p>
        # @type TableName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。分析版catalog不支持删除表，传入非空时服务端返回ANA_CATALOG_NOT_SUPPORTED错误。通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :TableName, :WorkspaceId, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, tablename=nil, workspaceid=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @TableName = tablename
          @WorkspaceId = workspaceid
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @WorkspaceId = params['WorkspaceId']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # DeleteTable返回参数结构体
      class DeleteTableResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>操作结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteTableRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteTableRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除table的响应
      class DeleteTableRsp < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # DeleteView请求参数结构体
      class DeleteViewRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: 数据目录名
        # @type CatalogName: String
        # @param SchemaName: 数据库名
        # @type SchemaName: String
        # @param ViewName: View名称
        # @type ViewName: String
        # @param WorkspaceId: 调用时所在workspace唯一id
        # @type WorkspaceId: String

        attr_accessor :CatalogName, :SchemaName, :ViewName, :WorkspaceId

        def initialize(catalogname=nil, schemaname=nil, viewname=nil, workspaceid=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ViewName = viewname
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ViewName = params['ViewName']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # DeleteView返回参数结构体
      class DeleteViewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 操作结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteViewRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteViewRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除view的响应
      class DeleteViewRsp < TencentCloud::Common::AbstractModel
        # @param Result: 操作结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # DeleteVolume请求参数结构体
      class DeleteVolumeRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema名称</p>
        # @type SchemaName: String
        # @param VolumeName: <p>数据卷名称</p>
        # @type VolumeName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String

        attr_accessor :CatalogName, :SchemaName, :VolumeName, :WorkspaceId

        def initialize(catalogname=nil, schemaname=nil, volumename=nil, workspaceid=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @VolumeName = volumename
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @VolumeName = params['VolumeName']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # DeleteVolume返回参数结构体
      class DeleteVolumeResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>删除结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteVolumeRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteVolumeRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除模型结果
      class DeleteVolumeRsp < TencentCloud::Common::AbstractModel
        # @param Result: 是否删除成功
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # DeleteWorkflow请求参数结构体
      class DeleteWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>待删除的工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String

        attr_accessor :WorkspaceId, :WorkflowId

        def initialize(workspaceid=nil, workflowid=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # DeleteWorkflow返回参数结构体
      class DeleteWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>删除工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteWorkflowRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteWorkflowRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteWorkflowRsp
      class DeleteWorkflowRsp < TencentCloud::Common::AbstractModel
        # @param Status: 删除状态，true 表示成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # DeleteWorkspace请求参数结构体
      class DeleteWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String

        attr_accessor :WorkspaceId

        def initialize(workspaceid=nil)
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # DeleteWorkspace返回参数结构体
      class DeleteWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>操作结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteWorkspaceRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteWorkspaceRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteWorkspaceRole请求参数结构体
      class DeleteWorkspaceRoleRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: String
        # @param RoleId: 角色ID，可通过 ListWorkspaceRoles 接口获取
        # @type RoleId: String

        attr_accessor :WorkspaceId, :RoleId

        def initialize(workspaceid=nil, roleid=nil)
          @WorkspaceId = workspaceid
          @RoleId = roleid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @RoleId = params['RoleId']
        end
      end

      # DeleteWorkspaceRole返回参数结构体
      class DeleteWorkspaceRoleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 删除工作空间角色结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.DeleteWorkspaceRoleResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DeleteWorkspaceRoleResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 删除工作空间角色结果
      class DeleteWorkspaceRoleResult < TencentCloud::Common::AbstractModel
        # @param Status: 删除工作空间角色是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 删除工作空间响应
      class DeleteWorkspaceRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 任务依赖简要信息
      class DependOnBrief < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，可通过 ListWorkflowTasks 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String

        attr_accessor :TaskId, :TaskName

        def initialize(taskid=nil, taskname=nil)
          @TaskId = taskid
          @TaskName = taskname
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
        end
      end

      # 字段关联的字典维度信息，仅返回类型为DICT（字典维度）的维度关联
      class DictDimensionInfo < TencentCloud::Common::AbstractModel
        # @param DictCodeId: 关联的标准字典代码ID
        # @type DictCodeId: String
        # @param DictItems: 字典项列表（key-value映射）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DictItems: Array

        attr_accessor :DictCodeId, :DictItems

        def initialize(dictcodeid=nil, dictitems=nil)
          @DictCodeId = dictcodeid
          @DictItems = dictitems
        end

        def deserialize(params)
          @DictCodeId = params['DictCodeId']
          unless params['DictItems'].nil?
            @DictItems = []
            params['DictItems'].each do |i|
              dictitem_tmp = DictItem.new
              dictitem_tmp.deserialize(i)
              @DictItems << dictitem_tmp
            end
          end
        end
      end

      # 字典项（key-value映射）
      class DictItem < TencentCloud::Common::AbstractModel
        # @param Key: 字典键
        # @type Key: String
        # @param Value: 字典值
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # 特征表定义
      class FeatureTable < TencentCloud::Common::AbstractModel
        # @param Name: 表名称
        # @type Name: String
        # @param FullName: 全称
        # @type FullName: String
        # @param Comment: 资产描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param DatabaseName: 数据库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param ModifiedTime: 修改时间，iso8601格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param CreateTime: 创建时间，iso8601格式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Owner: 责任人
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: :class:`Tencentcloud::Databuddy.v20260715.models.Owner`
        # @param WorkspaceId: 工作空间ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param AssetGuid: 资产ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetGuid: String

        attr_accessor :Name, :FullName, :Comment, :DatabaseName, :ModifiedTime, :CreateTime, :Tags, :Owner, :WorkspaceId, :AssetGuid

        def initialize(name=nil, fullname=nil, comment=nil, databasename=nil, modifiedtime=nil, createtime=nil, tags=nil, owner=nil, workspaceid=nil, assetguid=nil)
          @Name = name
          @FullName = fullname
          @Comment = comment
          @DatabaseName = databasename
          @ModifiedTime = modifiedtime
          @CreateTime = createtime
          @Tags = tags
          @Owner = owner
          @WorkspaceId = workspaceid
          @AssetGuid = assetguid
        end

        def deserialize(params)
          @Name = params['Name']
          @FullName = params['FullName']
          @Comment = params['Comment']
          @DatabaseName = params['DatabaseName']
          @ModifiedTime = params['ModifiedTime']
          @CreateTime = params['CreateTime']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['Owner'].nil?
            @Owner = Owner.new
            @Owner.deserialize(params['Owner'])
          end
          @WorkspaceId = params['WorkspaceId']
          @AssetGuid = params['AssetGuid']
        end
      end

      # catalog特征表详情
      class FeatureTableDetail < TencentCloud::Common::AbstractModel
        # @param PrimaryKeys: <p>特征表主键字段列表</p>
        # @type PrimaryKeys: Array
        # @param TimestampField: <p>特征表时间戳字段名称</p>
        # @type TimestampField: String
        # @param SourceTableName: <p>在线特征表对应的来源表名称（离线表）</p>
        # @type SourceTableName: String
        # @param WorkflowId: <p>在线特征表关联的工作流ID</p>
        # @type WorkflowId: String
        # @param OnlineTableName: <p>离线特征表对应生成的在线特征表名称</p>
        # @type OnlineTableName: String
        # @param OnlineTableType: <p>离线特征表对应生成的在线特征表类型，取值：TENCENT_POSTGRESQL | REDIS），缺省 TENCENT_POSTGRESQL</p>
        # @type OnlineTableType: String
        # @param ConnectionId: <p>离线特征表对应生成的在线特征表ConnectionId</p>
        # @type ConnectionId: String

        attr_accessor :PrimaryKeys, :TimestampField, :SourceTableName, :WorkflowId, :OnlineTableName, :OnlineTableType, :ConnectionId

        def initialize(primarykeys=nil, timestampfield=nil, sourcetablename=nil, workflowid=nil, onlinetablename=nil, onlinetabletype=nil, connectionid=nil)
          @PrimaryKeys = primarykeys
          @TimestampField = timestampfield
          @SourceTableName = sourcetablename
          @WorkflowId = workflowid
          @OnlineTableName = onlinetablename
          @OnlineTableType = onlinetabletype
          @ConnectionId = connectionid
        end

        def deserialize(params)
          @PrimaryKeys = params['PrimaryKeys']
          @TimestampField = params['TimestampField']
          @SourceTableName = params['SourceTableName']
          @WorkflowId = params['WorkflowId']
          @OnlineTableName = params['OnlineTableName']
          @OnlineTableType = params['OnlineTableType']
          @ConnectionId = params['ConnectionId']
        end
      end

      # 数据获取选项，用于get/list请求中控制响应返回哪些额外内容
      class FetchOption < TencentCloud::Common::AbstractModel
        # @param FetchPermissions: <p>是否在响应中返回权限列表，默认false</p>
        # @type FetchPermissions: Boolean
        # @param FetchFeatureTableDetail: <p>是否获取特征表详情，当AssetType为TABLE时有效</p>
        # @type FetchFeatureTableDetail: Boolean
        # @param FilterPermissions: <p>按权限过滤，传入权限列表，仅返回当前用户拥有指定权限的实体。例如传入[&quot;SELECT_TABLE&quot;]则仅返回当前用户有SELECT_TABLE权限的实体。只对list接口生效，为空时不进行权限过滤</p>
        # @type FilterPermissions: Array
        # @param FetchOwners: <p>是否在响应中返回负责人信息。不传或为true时返回负责人信息（默认返回），显式传false时不返回</p>
        # @type FetchOwners: Boolean
        # @param FetchUserInfo: <p>是否将用户Uin转换为用户名(userName)。影响范围：Audit中的CreatorName/LastModifierName、MetaOwner中的OwnerName。不传或为true时执行转换（默认转换），显式传false时不转换</p>
        # @type FetchUserInfo: Boolean
        # @param FetchMask: <p>是否返回字段脱敏策略信息，默认不返回，传true则会查询表字段对应的字段脱敏策略信息</p>
        # @type FetchMask: Boolean
        # @param FetchTags: <p>是否返回标签信息，默认不返回。传true时，GetTable/ListTables/GetCatalog/ListCatalogs/GetSchema/ListSchemas/GetView/ListViews/GetFunction/ListFunctions/GetVolume/ListVolumes/GetModel/ListModels等接口会在对应实体中返回标签（Tags）字段</p>
        # @type FetchTags: Boolean
        # @param FetchDimensions: <p>是否返回字段关联的字典维度信息，默认不传，不返回</p>
        # @type FetchDimensions: Boolean

        attr_accessor :FetchPermissions, :FetchFeatureTableDetail, :FilterPermissions, :FetchOwners, :FetchUserInfo, :FetchMask, :FetchTags, :FetchDimensions

        def initialize(fetchpermissions=nil, fetchfeaturetabledetail=nil, filterpermissions=nil, fetchowners=nil, fetchuserinfo=nil, fetchmask=nil, fetchtags=nil, fetchdimensions=nil)
          @FetchPermissions = fetchpermissions
          @FetchFeatureTableDetail = fetchfeaturetabledetail
          @FilterPermissions = filterpermissions
          @FetchOwners = fetchowners
          @FetchUserInfo = fetchuserinfo
          @FetchMask = fetchmask
          @FetchTags = fetchtags
          @FetchDimensions = fetchdimensions
        end

        def deserialize(params)
          @FetchPermissions = params['FetchPermissions']
          @FetchFeatureTableDetail = params['FetchFeatureTableDetail']
          @FilterPermissions = params['FilterPermissions']
          @FetchOwners = params['FetchOwners']
          @FetchUserInfo = params['FetchUserInfo']
          @FetchMask = params['FetchMask']
          @FetchTags = params['FetchTags']
          @FetchDimensions = params['FetchDimensions']
        end
      end

      # 统一搜索字段信息
      class FieldInfo < TencentCloud::Common::AbstractModel
        # @param Name: <p>字段名称</p>
        # @type Name: String
        # @param Comment: <p>字段描述</p>
        # @type Comment: String
        # @param Type: <p>字段类型</p>
        # @type Type: String
        # @param Lang: <p>语言类型</p>
        # @type Lang: String
        # @param Content: <p>字段内容或代码片段</p>
        # @type Content: String
        # @param SampleValues: <p>字段采样值</p>
        # @type SampleValues: Array

        attr_accessor :Name, :Comment, :Type, :Lang, :Content, :SampleValues

        def initialize(name=nil, comment=nil, type=nil, lang=nil, content=nil, samplevalues=nil)
          @Name = name
          @Comment = comment
          @Type = type
          @Lang = lang
          @Content = content
          @SampleValues = samplevalues
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          @Type = params['Type']
          @Lang = params['Lang']
          @Content = params['Content']
          @SampleValues = params['SampleValues']
        end
      end

      # 字段级标签信息，用于资产打标时指定字段维度的标签（入参+出参共用）
      class FieldTagInfo < TencentCloud::Common::AbstractModel
        # @param FieldName: 字段名称（必填）；清除标记场景（LabelId=-1）下为待清除字段名
        # @type FieldName: String
        # @param LabelId: <p>标签ID</p><p>特殊值：-1 表示「清除标记」，仅在 BatchAttachAssetTag 接口中生效：服务端会清除该 FieldName 下所有已有字段标签。使用 -1 时 FieldName 必填，其余字段可留空。</p>
        # @type LabelId: String
        # @param LabelName: 标签名称（可选）
        # @type LabelName: String
        # @param LabelType: <p>标签类型</p><p>枚举值：</p><ul><li>1：GOVERNANCE_LABEL：治理标签</li><li>2：CUSTOM_LABEL：自定义标签</li><li>3：PROPERTY_LABEL：属性标签</li><li>4：DESENSITIZATION_LABEL：脱敏标签</li></ul><p>字段打标规则：非脱敏标签（1/2/3）时 LabelValue 必填；脱敏标签（4）时 LabelValue 可为空</p>
        # @type LabelType: Integer
        # @param FieldType: 字段类型（可选），如 string、int、bigint 等
        # @type FieldType: String
        # @param LabelValueId: 标签值ID（可选）；非脱敏标签（LabelType!=4）建议填充；属性标签（LabelType=3）可为0；脱敏标签（LabelType=4）及清除标记（LabelId=-1）场景可留空
        # @type LabelValueId: String
        # @param LabelValue: 标签值；非脱敏标签（LabelType!=4）必填，例如治理/自定义/属性标签均需携带业务语义值；脱敏标签（LabelType=4）及清除标记（LabelId=-1）场景可为空
        # @type LabelValue: String

        attr_accessor :FieldName, :LabelId, :LabelName, :LabelType, :FieldType, :LabelValueId, :LabelValue

        def initialize(fieldname=nil, labelid=nil, labelname=nil, labeltype=nil, fieldtype=nil, labelvalueid=nil, labelvalue=nil)
          @FieldName = fieldname
          @LabelId = labelid
          @LabelName = labelname
          @LabelType = labeltype
          @FieldType = fieldtype
          @LabelValueId = labelvalueid
          @LabelValue = labelvalue
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @LabelId = params['LabelId']
          @LabelName = params['LabelName']
          @LabelType = params['LabelType']
          @FieldType = params['FieldType']
          @LabelValueId = params['LabelValueId']
          @LabelValue = params['LabelValue']
        end
      end

      # 文件运行配置
      class FileConfig < TencentCloud::Common::AbstractModel
        # @param Params: <p>高级运行参数，变量替换用，map-json String,String</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Params: String
        # @param ResourceId: <p>执行资源 ID。来源：ListComputeResources 接口返回的 ResourceId</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceId: String
        # @param DefaultCatalog: <p>默认 catalog</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultCatalog: String
        # @param DefaultSchema: <p>默认 schema</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultSchema: String
        # @param AdvanceConfig: <p>高级配置，JSON 字符串</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceConfig: String
        # @param ExtraParams: <p>扩展参数，JSON 字符串</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraParams: String
        # @param Widgets: <p>Notebook 交互控件定义，JSON 字符串</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Widgets: String
        # @param OutputConf: <p>各单元格输出配置。仅 Get 出参返回，入参忽略</p>
        # @type OutputConf: Array
        # @param SqlSyntax: <p>SQL脚本语法标记</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlSyntax: String
        # @param ClusterId: <p>平台集群id</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param DefaultCatalogSource: <p>默认 Catalog 的来源类型，用于区分默认 Catalog 属于哪一套 Catalog 体系，可选。长度上限 32。取值：METALAKE - TC Catalog（元数据湖 Catalog）；SETATS - Setats Catalog。空值/非法值时后端读取兜底为 METALAKE。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultCatalogSource: String

        attr_accessor :Params, :ResourceId, :DefaultCatalog, :DefaultSchema, :AdvanceConfig, :ExtraParams, :Widgets, :OutputConf, :SqlSyntax, :ClusterId, :DefaultCatalogSource

        def initialize(params=nil, resourceid=nil, defaultcatalog=nil, defaultschema=nil, advanceconfig=nil, extraparams=nil, widgets=nil, outputconf=nil, sqlsyntax=nil, clusterid=nil, defaultcatalogsource=nil)
          @Params = params
          @ResourceId = resourceid
          @DefaultCatalog = defaultcatalog
          @DefaultSchema = defaultschema
          @AdvanceConfig = advanceconfig
          @ExtraParams = extraparams
          @Widgets = widgets
          @OutputConf = outputconf
          @SqlSyntax = sqlsyntax
          @ClusterId = clusterid
          @DefaultCatalogSource = defaultcatalogsource
        end

        def deserialize(params)
          @Params = params['Params']
          @ResourceId = params['ResourceId']
          @DefaultCatalog = params['DefaultCatalog']
          @DefaultSchema = params['DefaultSchema']
          @AdvanceConfig = params['AdvanceConfig']
          @ExtraParams = params['ExtraParams']
          @Widgets = params['Widgets']
          unless params['OutputConf'].nil?
            @OutputConf = []
            params['OutputConf'].each do |i|
              fileoutputconf_tmp = FileOutputConf.new
              fileoutputconf_tmp.deserialize(i)
              @OutputConf << fileoutputconf_tmp
            end
          end
          @SqlSyntax = params['SqlSyntax']
          @ClusterId = params['ClusterId']
          @DefaultCatalogSource = params['DefaultCatalogSource']
        end
      end

      # 文件详情
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param AppId: <p>主账号 AppId</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param WorkspaceId: <p>工作空间 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param FileId: <p>文件 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileId: String
        # @param FileName: <p>文件名，含后缀</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param Path: <p>文件在工作空间中的完整路径，以 / 开头，如 /etl/daily/demo.ipynb</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Path: String
        # @param FileConfig: <p>文件运行配置</p>
        # @type FileConfig: :class:`Tencentcloud::Databuddy.v20260715.models.FileConfig`
        # @param BundleId: <p>绑定的 BundleId</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: <p>绑定的 BundleInfo，JSON 字符串</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param Status: <p>文件状态。active=正常，deleted=已删除</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param OwnerUserName: <p>文件负责人用户名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserName: String
        # @param CreateUserUin: <p>创建人子账号 Uin</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param UpdateUserUin: <p>最近更新人子账号 Uin</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateUserUin: String
        # @param CreateTime: <p>创建时间，毫秒级时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: <p>最近更新时间，毫秒级时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param Storage: <p>文件存储信息。仅当请求 IncludeContent=true 时返回内容</p>
        # @type Storage: :class:`Tencentcloud::Databuddy.v20260715.models.FileStorage`
        # @param Permissions: <p>当前调用方对该文件的权限点列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permissions: String
        # @param ReleaseStatus: <p>是否已发布</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReleaseStatus: Boolean
        # @param ResourceMode: <p>资源模式。1=分布式，2=单节点</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceMode: Integer
        # @param AsyncOperation: <p>ZIP 异步创建时透传 Workspace 作业信息；普通同步创建或其他复用该返回结构的接口不设置该字段</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncOperation: :class:`Tencentcloud::Databuddy.v20260715.models.AsyncOperation`
        # @param VersionId: <p>脚本版本ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VersionId: String

        attr_accessor :AppId, :WorkspaceId, :FileId, :FileName, :FileType, :Path, :FileConfig, :BundleId, :BundleInfo, :Status, :OwnerUserName, :CreateUserUin, :UpdateUserUin, :CreateTime, :UpdateTime, :Storage, :Permissions, :ReleaseStatus, :ResourceMode, :AsyncOperation, :VersionId

        def initialize(appid=nil, workspaceid=nil, fileid=nil, filename=nil, filetype=nil, path=nil, fileconfig=nil, bundleid=nil, bundleinfo=nil, status=nil, ownerusername=nil, createuseruin=nil, updateuseruin=nil, createtime=nil, updatetime=nil, storage=nil, permissions=nil, releasestatus=nil, resourcemode=nil, asyncoperation=nil, versionid=nil)
          @AppId = appid
          @WorkspaceId = workspaceid
          @FileId = fileid
          @FileName = filename
          @FileType = filetype
          @Path = path
          @FileConfig = fileconfig
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @Status = status
          @OwnerUserName = ownerusername
          @CreateUserUin = createuseruin
          @UpdateUserUin = updateuseruin
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Storage = storage
          @Permissions = permissions
          @ReleaseStatus = releasestatus
          @ResourceMode = resourcemode
          @AsyncOperation = asyncoperation
          @VersionId = versionid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @WorkspaceId = params['WorkspaceId']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @Path = params['Path']
          unless params['FileConfig'].nil?
            @FileConfig = FileConfig.new
            @FileConfig.deserialize(params['FileConfig'])
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @Status = params['Status']
          @OwnerUserName = params['OwnerUserName']
          @CreateUserUin = params['CreateUserUin']
          @UpdateUserUin = params['UpdateUserUin']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['Storage'].nil?
            @Storage = FileStorage.new
            @Storage.deserialize(params['Storage'])
          end
          @Permissions = params['Permissions']
          @ReleaseStatus = params['ReleaseStatus']
          @ResourceMode = params['ResourceMode']
          unless params['AsyncOperation'].nil?
            @AsyncOperation = AsyncOperation.new
            @AsyncOperation.deserialize(params['AsyncOperation'])
          end
          @VersionId = params['VersionId']
        end
      end

      # 文件元数据
      class FileMeta < TencentCloud::Common::AbstractModel
        # @param FileId: <p>文件id</p>
        # @type FileId: String
        # @param FileName: <p>文件/文件夹名称</p>
        # @type FileName: String
        # @param FileType: <p>文件类型</p>
        # @type FileType: String
        # @param CreateTime: <p>创建时间，毫秒秒级时间戳</p><p>参数格式：时间戳</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间</p><p>参数格式：时间戳字符串</p>
        # @type UpdateTime: String
        # @param AllowActions: <p>acl权限类型</p>
        # @type AllowActions: Array
        # @param IsFavorite: <p>是否收藏</p>
        # @type IsFavorite: Boolean
        # @param PathName: <p>文件path</p>
        # @type PathName: String
        # @param IsSystemGenerated: <p>是否系统创建</p>
        # @type IsSystemGenerated: Boolean

        attr_accessor :FileId, :FileName, :FileType, :CreateTime, :UpdateTime, :AllowActions, :IsFavorite, :PathName, :IsSystemGenerated

        def initialize(fileid=nil, filename=nil, filetype=nil, createtime=nil, updatetime=nil, allowactions=nil, isfavorite=nil, pathname=nil, issystemgenerated=nil)
          @FileId = fileid
          @FileName = filename
          @FileType = filetype
          @CreateTime = createtime
          @UpdateTime = updatetime
          @AllowActions = allowactions
          @IsFavorite = isfavorite
          @PathName = pathname
          @IsSystemGenerated = issystemgenerated
        end

        def deserialize(params)
          @FileId = params['FileId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @AllowActions = params['AllowActions']
          @IsFavorite = params['IsFavorite']
          @PathName = params['PathName']
          @IsSystemGenerated = params['IsSystemGenerated']
        end
      end

      # 文件节点
      class FileNode < TencentCloud::Common::AbstractModel
        # @param Node: <p>当前节点</p>
        # @type Node: :class:`Tencentcloud::Databuddy.v20260715.models.FileMeta`
        # @param Parent: <p>父节点</p>
        # @type Parent: :class:`Tencentcloud::Databuddy.v20260715.models.FileMeta`
        # @param Creator: <p>创建人</p>
        # @type Creator: :class:`Tencentcloud::Databuddy.v20260715.models.UserInfo`
        # @param Owner: <p>拥有者</p>
        # @type Owner: :class:`Tencentcloud::Databuddy.v20260715.models.UserInfo`
        # @param NodeType: <p>节点类型</p>
        # @type NodeType: String
        # @param OriginPath: <p>原始路径</p>
        # @type OriginPath: String
        # @param DeleteTime: <p>回收时间</p>
        # @type DeleteTime: String
        # @param GitConfig: <p>文件git配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitConfig: :class:`Tencentcloud::Databuddy.v20260715.models.GitRepoConfig`

        attr_accessor :Node, :Parent, :Creator, :Owner, :NodeType, :OriginPath, :DeleteTime, :GitConfig

        def initialize(node=nil, parent=nil, creator=nil, owner=nil, nodetype=nil, originpath=nil, deletetime=nil, gitconfig=nil)
          @Node = node
          @Parent = parent
          @Creator = creator
          @Owner = owner
          @NodeType = nodetype
          @OriginPath = originpath
          @DeleteTime = deletetime
          @GitConfig = gitconfig
        end

        def deserialize(params)
          unless params['Node'].nil?
            @Node = FileMeta.new
            @Node.deserialize(params['Node'])
          end
          unless params['Parent'].nil?
            @Parent = FileMeta.new
            @Parent.deserialize(params['Parent'])
          end
          unless params['Creator'].nil?
            @Creator = UserInfo.new
            @Creator.deserialize(params['Creator'])
          end
          unless params['Owner'].nil?
            @Owner = UserInfo.new
            @Owner.deserialize(params['Owner'])
          end
          @NodeType = params['NodeType']
          @OriginPath = params['OriginPath']
          @DeleteTime = params['DeleteTime']
          unless params['GitConfig'].nil?
            @GitConfig = GitRepoConfig.new
            @GitConfig.deserialize(params['GitConfig'])
          end
        end
      end

      # Notebook/Python单元格输出配置
      class FileOutputConf < TencentCloud::Common::AbstractModel
        # @param CellId: 单元格 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CellId: String
        # @param DashboardConf: Dashboard 图表配置，JSON 字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DashboardConf: String
        # @param OutputPath: 执行结果文件的预签名下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OutputPath: String

        attr_accessor :CellId, :DashboardConf, :OutputPath

        def initialize(cellid=nil, dashboardconf=nil, outputpath=nil)
          @CellId = cellid
          @DashboardConf = dashboardconf
          @OutputPath = outputpath
        end

        def deserialize(params)
          @CellId = params['CellId']
          @DashboardConf = params['DashboardConf']
          @OutputPath = params['OutputPath']
        end
      end

      # 文件存储
      class FileStorage < TencentCloud::Common::AbstractModel
        # @param StorageType: 存储类型
        # @type StorageType: Integer
        # @param StoragePath: 存储路径
        # @type StoragePath: String
        # @param Content: 文件内容
        # @type Content: String

        attr_accessor :StorageType, :StoragePath, :Content

        def initialize(storagetype=nil, storagepath=nil, content=nil)
          @StorageType = storagetype
          @StoragePath = storagepath
          @Content = content
        end

        def deserialize(params)
          @StorageType = params['StorageType']
          @StoragePath = params['StoragePath']
          @Content = params['Content']
        end
      end

      # 文件夹定位器
      class FolderLocator < TencentCloud::Common::AbstractModel
        # @param FolderId: <p>节点id</p>
        # @type FolderId: String
        # @param PathName: <p>节点path</p>
        # @type PathName: String

        attr_accessor :FolderId, :PathName

        def initialize(folderid=nil, pathname=nil)
          @FolderId = folderid
          @PathName = pathname
        end

        def deserialize(params)
          @FolderId = params['FolderId']
          @PathName = params['PathName']
        end
      end

      # 代码片段
      class Fragment < TencentCloud::Common::AbstractModel
        # @param Name: 字段名称
        # @type Name: String
        # @param Type: 字段类型
        # @type Type: String
        # @param Comment: 表字段描述
        # @type Comment: String
        # @param Content: 片段内容
        # @type Content: String
        # @param Lang: 片段语言
        # @type Lang: String

        attr_accessor :Name, :Type, :Comment, :Content, :Lang

        def initialize(name=nil, type=nil, comment=nil, content=nil, lang=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @Content = content
          @Lang = lang
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          @Content = params['Content']
          @Lang = params['Lang']
        end
      end

      # 函数详情
      class FunctionInfo < TencentCloud::Common::AbstractModel
        # @param Name: <p>函数名</p>
        # @type Name: String
        # @param FunctionType: 函数类型，取值如JAVA、SCALA、PYTHON、SQL等
        # @type FunctionType: String
        # @param EngineType: 引擎类型，取值如SPARK、HIVE、PRESTO等
        # @type EngineType: String
        # @param ClassName: <p>类名</p>
        # @type ClassName: String
        # @param Resources: <p>函数依赖的资源</p>
        # @type Resources: Array
        # @param Comment: <p>描述</p>
        # @type Comment: String
        # @param Properties: <p>属性</p>
        # @type Properties: Array
        # @param Audit: <p>审计信息</p>
        # @type Audit: :class:`Tencentcloud::Databuddy.v20260715.models.Audit`
        # @param MetaOwner: <p>owner信息</p>
        # @type MetaOwner: :class:`Tencentcloud::Databuddy.v20260715.models.MetaOwner`
        # @param AssetGuid: <p>资产全局唯一ID</p>
        # @type AssetGuid: String
        # @param PermissionDetail: <p>当前用户对该实体的权限信息</p>
        # @type PermissionDetail: :class:`Tencentcloud::Databuddy.v20260715.models.PermissionDetail`
        # @param Tags: <p>标签信息列表。注意：仅当请求中 FetchTags=true 时返回，默认不返回</p>
        # @type Tags: Array

        attr_accessor :Name, :FunctionType, :EngineType, :ClassName, :Resources, :Comment, :Properties, :Audit, :MetaOwner, :AssetGuid, :PermissionDetail, :Tags

        def initialize(name=nil, functiontype=nil, enginetype=nil, classname=nil, resources=nil, comment=nil, properties=nil, audit=nil, metaowner=nil, assetguid=nil, permissiondetail=nil, tags=nil)
          @Name = name
          @FunctionType = functiontype
          @EngineType = enginetype
          @ClassName = classname
          @Resources = resources
          @Comment = comment
          @Properties = properties
          @Audit = audit
          @MetaOwner = metaowner
          @AssetGuid = assetguid
          @PermissionDetail = permissiondetail
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @FunctionType = params['FunctionType']
          @EngineType = params['EngineType']
          @ClassName = params['ClassName']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              functionresource_tmp = FunctionResource.new
              functionresource_tmp.deserialize(i)
              @Resources << functionresource_tmp
            end
          end
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          unless params['Audit'].nil?
            @Audit = Audit.new
            @Audit.deserialize(params['Audit'])
          end
          unless params['MetaOwner'].nil?
            @MetaOwner = MetaOwner.new
            @MetaOwner.deserialize(params['MetaOwner'])
          end
          @AssetGuid = params['AssetGuid']
          unless params['PermissionDetail'].nil?
            @PermissionDetail = PermissionDetail.new
            @PermissionDetail.deserialize(params['PermissionDetail'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              commontaginfo_tmp = CommonTagInfo.new
              commontaginfo_tmp.deserialize(i)
              @Tags << commontaginfo_tmp
            end
          end
        end
      end

      # 函数资源
      class FunctionResource < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型，取值如file(文件)、jar(jar包)、archive(归档文件)等
        # @type ResourceType: String
        # @param Uri: 资源路径
        # @type Uri: String

        attr_accessor :ResourceType, :Uri

        def initialize(resourcetype=nil, uri=nil)
          @ResourceType = resourcetype
          @Uri = uri
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @Uri = params['Uri']
        end
      end

      # GetCatalog请求参数结构体
      class GetCatalogRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param CatalogId: <p>数据目录id</p>
        # @type CatalogId: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。非空→走分析版路径，空/缺省→走专业版TcLake路径。通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :WorkspaceId, :CatalogId, :FetchOption, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, workspaceid=nil, catalogid=nil, fetchoption=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @WorkspaceId = workspaceid
          @CatalogId = catalogid
          @FetchOption = fetchoption
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @WorkspaceId = params['WorkspaceId']
          @CatalogId = params['CatalogId']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # GetCatalog返回参数结构体
      class GetCatalogResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>catalog详情</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetCatalogRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetCatalogRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取数据目录详情的响应
      class GetCatalogRsp < TencentCloud::Common::AbstractModel
        # @param Catalog: catalog详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Catalog: :class:`Tencentcloud::Databuddy.v20260715.models.Catalog`

        attr_accessor :Catalog

        def initialize(catalog=nil)
          @Catalog = catalog
        end

        def deserialize(params)
          unless params['Catalog'].nil?
            @Catalog = Catalog.new
            @Catalog.deserialize(params['Catalog'])
          end
        end
      end

      # GetFile请求参数结构体
      class GetFileRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间 ID。来源：ListWorkspaces 接口返回的 WorkspaceId</p>
        # @type WorkspaceId: String
        # @param FileId: <p>文件 ID。来源：CreateFile / ListFiles 接口返回的 FileId。与 FilePath 二选一</p>
        # @type FileId: String
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # @type FileType: String
        # @param IncludeContent: <p>是否返回文件内容。true 时 Storage.Content 返回 base64 内容，默认 false</p>
        # @type IncludeContent: Boolean
        # @param VersionId: <p>文件版本 ID。来源：ListCodeFileVersions 接口返回的 VersionId。不传则读取最新版本</p>
        # @type VersionId: String
        # @param FilePath: <p>文件完整路径，以 / 开头，如 /etl/daily/demo.ipynb。与 FileId 二选一</p>
        # @type FilePath: String

        attr_accessor :WorkspaceId, :FileId, :FileType, :IncludeContent, :VersionId, :FilePath

        def initialize(workspaceid=nil, fileid=nil, filetype=nil, includecontent=nil, versionid=nil, filepath=nil)
          @WorkspaceId = workspaceid
          @FileId = fileid
          @FileType = filetype
          @IncludeContent = includecontent
          @VersionId = versionid
          @FilePath = filepath
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileId = params['FileId']
          @FileType = params['FileType']
          @IncludeContent = params['IncludeContent']
          @VersionId = params['VersionId']
          @FilePath = params['FilePath']
        end
      end

      # GetFile返回参数结构体
      class GetFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.FileInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = FileInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetFolder请求参数结构体
      class GetFolderRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间id</p>
        # @type WorkspaceId: String
        # @param Folder: <p>文件夹定位</p>
        # @type Folder: :class:`Tencentcloud::Databuddy.v20260715.models.FolderLocator`

        attr_accessor :WorkspaceId, :Folder

        def initialize(workspaceid=nil, folder=nil)
          @WorkspaceId = workspaceid
          @Folder = folder
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['Folder'].nil?
            @Folder = FolderLocator.new
            @Folder.deserialize(params['Folder'])
          end
        end
      end

      # GetFolder返回参数结构体
      class GetFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>文件夹详情结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetFolderRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetFolderRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取文件夹回包
      class GetFolderRsp < TencentCloud::Common::AbstractModel
        # @param Folder: <p>文件夹信息</p>
        # @type Folder: :class:`Tencentcloud::Databuddy.v20260715.models.FileNode`

        attr_accessor :Folder

        def initialize(folder=nil)
          @Folder = folder
        end

        def deserialize(params)
          unless params['Folder'].nil?
            @Folder = FileNode.new
            @Folder.deserialize(params['Folder'])
          end
        end
      end

      # GetLocation请求参数结构体
      class GetLocationRequest < TencentCloud::Common::AbstractModel
        # @param LocationName: 存储位置名，必填
        # @type LocationName: String
        # @param WorkspaceId: 调用时所在workspace唯一id，必填
        # @type WorkspaceId: String

        attr_accessor :LocationName, :WorkspaceId

        def initialize(locationname=nil, workspaceid=nil)
          @LocationName = locationname
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @LocationName = params['LocationName']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # GetLocation返回参数结构体
      class GetLocationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetLocationRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetLocationRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询存储位置详情响应
      class GetLocationRsp < TencentCloud::Common::AbstractModel
        # @param Location: 存储位置详情
        # @type Location: :class:`Tencentcloud::Databuddy.v20260715.models.LocationInfo`

        attr_accessor :Location

        def initialize(location=nil)
          @Location = location
        end

        def deserialize(params)
          unless params['Location'].nil?
            @Location = LocationInfo.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # GetModel请求参数结构体
      class GetModelRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema名称</p>
        # @type SchemaName: String
        # @param ModelName: <p>模型名称</p>
        # @type ModelName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`

        attr_accessor :CatalogName, :SchemaName, :ModelName, :WorkspaceId, :FetchOption

        def initialize(catalogname=nil, schemaname=nil, modelname=nil, workspaceid=nil, fetchoption=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ModelName = modelname
          @WorkspaceId = workspaceid
          @FetchOption = fetchoption
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ModelName = params['ModelName']
          @WorkspaceId = params['WorkspaceId']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
        end
      end

      # GetModel返回参数结构体
      class GetModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>获取模型结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetModelRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetModelRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取模型结果
      class GetModelRsp < TencentCloud::Common::AbstractModel
        # @param Model: 模型详情
        # @type Model: :class:`Tencentcloud::Databuddy.v20260715.models.ModelInfo`

        attr_accessor :Model

        def initialize(model=nil)
          @Model = model
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ModelInfo.new
            @Model.deserialize(params['Model'])
          end
        end
      end

      # GetModelVersion请求参数结构体
      class GetModelVersionRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema名称</p>
        # @type SchemaName: String
        # @param ModelName: <p>模型名称</p>
        # @type ModelName: String
        # @param ModelVersion: <p>模型版本号</p>
        # @type ModelVersion: Integer
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String

        attr_accessor :CatalogName, :SchemaName, :ModelName, :ModelVersion, :WorkspaceId

        def initialize(catalogname=nil, schemaname=nil, modelname=nil, modelversion=nil, workspaceid=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ModelName = modelname
          @ModelVersion = modelversion
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ModelName = params['ModelName']
          @ModelVersion = params['ModelVersion']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # GetModelVersion返回参数结构体
      class GetModelVersionResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>获取模型结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetModelVersionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetModelVersionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取模型版本结果
      class GetModelVersionRsp < TencentCloud::Common::AbstractModel
        # @param ModelVersion: 模型详情
        # @type ModelVersion: :class:`Tencentcloud::Databuddy.v20260715.models.ModelVersionInfo`

        attr_accessor :ModelVersion

        def initialize(modelversion=nil)
          @ModelVersion = modelversion
        end

        def deserialize(params)
          unless params['ModelVersion'].nil?
            @ModelVersion = ModelVersionInfo.new
            @ModelVersion.deserialize(params['ModelVersion'])
          end
        end
      end

      # GetSchema请求参数结构体
      class GetSchemaRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名</p>
        # @type SchemaName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。非空→走分析版路径，空/缺省→走专业版TcLake路径。通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :WorkspaceId, :FetchOption, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, workspaceid=nil, fetchoption=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @WorkspaceId = workspaceid
          @FetchOption = fetchoption
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @WorkspaceId = params['WorkspaceId']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # GetSchema返回参数结构体
      class GetSchemaResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>schema详情</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetSchemaRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetSchemaRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取schema详情的响应
      class GetSchemaRsp < TencentCloud::Common::AbstractModel
        # @param Schema: schema详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Schema: :class:`Tencentcloud::Databuddy.v20260715.models.Schema`

        attr_accessor :Schema

        def initialize(schema=nil)
          @Schema = schema
        end

        def deserialize(params)
          unless params['Schema'].nil?
            @Schema = Schema.new
            @Schema.deserialize(params['Schema'])
          end
        end
      end

      # GetTable请求参数结构体
      class GetTableRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名</p>
        # @type SchemaName: String
        # @param TableName: <p>表名</p>
        # @type TableName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。非空→走分析版路径，空/缺省→走专业版TcLake路径。通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :TableName, :WorkspaceId, :FetchOption, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, tablename=nil, workspaceid=nil, fetchoption=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @TableName = tablename
          @WorkspaceId = workspaceid
          @FetchOption = fetchoption
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @WorkspaceId = params['WorkspaceId']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # GetTable返回参数结构体
      class GetTableResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>表信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetTableRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetTableRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取table详情的响应
      class GetTableRsp < TencentCloud::Common::AbstractModel
        # @param Table: table详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: :class:`Tencentcloud::Databuddy.v20260715.models.TableInfo`

        attr_accessor :Table

        def initialize(table=nil)
          @Table = table
        end

        def deserialize(params)
          unless params['Table'].nil?
            @Table = TableInfo.new
            @Table.deserialize(params['Table'])
          end
        end
      end

      # GetTables请求参数结构体
      class GetTablesRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param FullNames: <p>表的全名列表，格式为 catalogName.schemaName.tableName，必填，至少1条，最大20条</p>
        # @type FullNames: Array
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。非空→走分析版路径，要求所有FullNames属于同一catalog（分析版额外约束）；空/缺省→走专业版TcLake路径。通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :WorkspaceId, :FullNames, :FetchOption, :ConnectionId, :CatalogSource

        def initialize(workspaceid=nil, fullnames=nil, fetchoption=nil, connectionid=nil, catalogsource=nil)
          @WorkspaceId = workspaceid
          @FullNames = fullnames
          @FetchOption = fetchoption
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FullNames = params['FullNames']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # GetTables返回参数结构体
      class GetTablesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetTablesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetTablesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量获取表元数据响应
      class GetTablesRsp < TencentCloud::Common::AbstractModel
        # @param Items: 表信息列表。注意：仅返回当前workspace有权限的catalog下的表，无权限的表会被静默跳过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :Items

        def initialize(items=nil)
          @Items = items
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              tableinfo_tmp = TableInfo.new
              tableinfo_tmp.deserialize(i)
              @Items << tableinfo_tmp
            end
          end
        end
      end

      # GetView请求参数结构体
      class GetViewRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名</p>
        # @type SchemaName: String
        # @param ViewName: <p>View名称</p>
        # @type ViewName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`

        attr_accessor :CatalogName, :SchemaName, :ViewName, :WorkspaceId, :FetchOption

        def initialize(catalogname=nil, schemaname=nil, viewname=nil, workspaceid=nil, fetchoption=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ViewName = viewname
          @WorkspaceId = workspaceid
          @FetchOption = fetchoption
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ViewName = params['ViewName']
          @WorkspaceId = params['WorkspaceId']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
        end
      end

      # GetView返回参数结构体
      class GetViewResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>view详情</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetViewRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetViewRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取view详情的响应
      class GetViewRsp < TencentCloud::Common::AbstractModel
        # @param View: view详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type View: :class:`Tencentcloud::Databuddy.v20260715.models.ViewInfo`

        attr_accessor :View

        def initialize(view=nil)
          @View = view
        end

        def deserialize(params)
          unless params['View'].nil?
            @View = ViewInfo.new
            @View.deserialize(params['View'])
          end
        end
      end

      # GetVolume请求参数结构体
      class GetVolumeRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema名称</p>
        # @type SchemaName: String
        # @param VolumeName: <p>数据卷名称</p>
        # @type VolumeName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`

        attr_accessor :CatalogName, :SchemaName, :VolumeName, :WorkspaceId, :FetchOption

        def initialize(catalogname=nil, schemaname=nil, volumename=nil, workspaceid=nil, fetchoption=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @VolumeName = volumename
          @WorkspaceId = workspaceid
          @FetchOption = fetchoption
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @VolumeName = params['VolumeName']
          @WorkspaceId = params['WorkspaceId']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
        end
      end

      # GetVolume返回参数结构体
      class GetVolumeResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>获取volume详情</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetVolumeRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetVolumeRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # volume返回详情
      class GetVolumeRsp < TencentCloud::Common::AbstractModel
        # @param Volume: volume详情
        # @type Volume: :class:`Tencentcloud::Databuddy.v20260715.models.Volume`

        attr_accessor :Volume

        def initialize(volume=nil)
          @Volume = volume
        end

        def deserialize(params)
          unless params['Volume'].nil?
            @Volume = Volume.new
            @Volume.deserialize(params['Volume'])
          end
        end
      end

      # GetWorkflow请求参数结构体
      class GetWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String

        attr_accessor :WorkspaceId, :WorkflowId

        def initialize(workspaceid=nil, workflowid=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # GetWorkflow返回参数结构体
      class GetWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>获取工作流详细信息响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetWorkflowRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetWorkflowRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetWorkflowRsp
      class GetWorkflowRsp < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param BaseInfo: <p>工作流基本信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseInfo: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowBaseInfoDetail`
        # @param Trigger: <p>工作流调度配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trigger: Array
        # @param ParamList: <p>工作流参数列表 参数名必填且只能包含数字、大小写字母、空格、.$@#!%^&amp;*()-_+=&gt;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamList: Array
        # @param LabelList: <p>标签 标签名必填且只能包含数字、大小写字母、空格、.$@#!%^&amp;*()-_+=&gt;</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelList: Array
        # @param Alarm: <p>工作流告警配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alarm: :class:`Tencentcloud::Databuddy.v20260715.models.AlarmBrief`
        # @param MonitorMetric: <p>监控指标配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorMetric: :class:`Tencentcloud::Databuddy.v20260715.models.MonitorMetricBrief`
        # @param AdvanceConfig: <p>工作流高级设置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceConfig: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowAdvanceConfig`
        # @param TaskList: <p>工作流任务列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskList: Array
        # @param BundleId: <p>工作流绑定的 Bundle唯一标识，未绑定时为空</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: <p>Bundle信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param GitConfigId: <p>Git配置ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitConfigId: String
        # @param GitBranch: <p>Git分支信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitBranch: String

        attr_accessor :WorkspaceId, :BaseInfo, :Trigger, :ParamList, :LabelList, :Alarm, :MonitorMetric, :AdvanceConfig, :TaskList, :BundleId, :BundleInfo, :GitConfigId, :GitBranch

        def initialize(workspaceid=nil, baseinfo=nil, trigger=nil, paramlist=nil, labellist=nil, alarm=nil, monitormetric=nil, advanceconfig=nil, tasklist=nil, bundleid=nil, bundleinfo=nil, gitconfigid=nil, gitbranch=nil)
          @WorkspaceId = workspaceid
          @BaseInfo = baseinfo
          @Trigger = trigger
          @ParamList = paramlist
          @LabelList = labellist
          @Alarm = alarm
          @MonitorMetric = monitormetric
          @AdvanceConfig = advanceconfig
          @TaskList = tasklist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GitConfigId = gitconfigid
          @GitBranch = gitbranch
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['BaseInfo'].nil?
            @BaseInfo = WorkflowBaseInfoDetail.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['Trigger'].nil?
            @Trigger = []
            params['Trigger'].each do |i|
              workflowtriggerconfiguration_tmp = WorkflowTriggerConfiguration.new
              workflowtriggerconfiguration_tmp.deserialize(i)
              @Trigger << workflowtriggerconfiguration_tmp
            end
          end
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          unless params['Alarm'].nil?
            @Alarm = AlarmBrief.new
            @Alarm.deserialize(params['Alarm'])
          end
          unless params['MonitorMetric'].nil?
            @MonitorMetric = MonitorMetricBrief.new
            @MonitorMetric.deserialize(params['MonitorMetric'])
          end
          unless params['AdvanceConfig'].nil?
            @AdvanceConfig = WorkflowAdvanceConfig.new
            @AdvanceConfig.deserialize(params['AdvanceConfig'])
          end
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              workflowtask_tmp = WorkflowTask.new
              workflowtask_tmp.deserialize(i)
              @TaskList << workflowtask_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @GitConfigId = params['GitConfigId']
          @GitBranch = params['GitBranch']
        end
      end

      # GetWorkflowRun请求参数结构体
      class GetWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowRunId: <p>工作流运行ID，可通过 ListWorkflowRuns 获取。必填</p>
        # @type WorkflowRunId: String

        attr_accessor :WorkspaceId, :WorkflowRunId

        def initialize(workspaceid=nil, workflowrunid=nil)
          @WorkspaceId = workspaceid
          @WorkflowRunId = workflowrunid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowRunId = params['WorkflowRunId']
        end
      end

      # GetWorkflowRun返回参数结构体
      class GetWorkflowRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>查询工作流运行详情响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetWorkflowRunRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetWorkflowRunRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作流运行详情响应。
      class GetWorkflowRunRsp < TencentCloud::Common::AbstractModel
        # @param WorkflowRun: 工作流运行信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRun: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowRun`

        attr_accessor :WorkflowRun

        def initialize(workflowrun=nil)
          @WorkflowRun = workflowrun
        end

        def deserialize(params)
          unless params['WorkflowRun'].nil?
            @WorkflowRun = WorkflowRun.new
            @WorkflowRun.deserialize(params['WorkflowRun'])
          end
        end
      end

      # GetWorkflowTaskRun请求参数结构体
      class GetWorkflowTaskRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowTaskRunId: <p>任务运行ID，可通过 ListWorkflowTaskRuns 获取。必填</p>
        # @type WorkflowTaskRunId: String
        # @param InnerWorkflowTaskRunListOption: <p>内嵌工作流任务运行列表选项（仅限 FOR_EACH 任务使用）。非必填</p>
        # @type InnerWorkflowTaskRunListOption: :class:`Tencentcloud::Databuddy.v20260715.models.InnerWorkflowTaskRunListOption`

        attr_accessor :WorkspaceId, :WorkflowTaskRunId, :InnerWorkflowTaskRunListOption

        def initialize(workspaceid=nil, workflowtaskrunid=nil, innerworkflowtaskrunlistoption=nil)
          @WorkspaceId = workspaceid
          @WorkflowTaskRunId = workflowtaskrunid
          @InnerWorkflowTaskRunListOption = innerworkflowtaskrunlistoption
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowTaskRunId = params['WorkflowTaskRunId']
          unless params['InnerWorkflowTaskRunListOption'].nil?
            @InnerWorkflowTaskRunListOption = InnerWorkflowTaskRunListOption.new
            @InnerWorkflowTaskRunListOption.deserialize(params['InnerWorkflowTaskRunListOption'])
          end
        end
      end

      # GetWorkflowTaskRun返回参数结构体
      class GetWorkflowTaskRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>查询任务运行详情响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetWorkflowTaskRunRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetWorkflowTaskRunRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetWorkflowTaskRunRsp
      class GetWorkflowTaskRunRsp < TencentCloud::Common::AbstractModel
        # @param TaskName: <p>任务名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowTaskRunId: <p>任务运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowTaskRunId: String
        # @param RunState: <p>运行状态。取值参考工作流任务运行状态枚举，如 Pending / Running / Succeeded / Failed / Killed</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param WorkspaceId: <p>工作空间ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowRunId: <p>工作流运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param TaskId: <p>任务ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskTypeName: <p>任务类型名称，请参考数据结构TaskType中TaskTypeName字段描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String
        # @param TaskVersionId: <p>任务版本ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskVersionId: String
        # @param TriggerType: <p>触发类型</p><p>枚举值：</p><ul><li>Scheduler： 调度触发</li><li>Manual： 手动触发</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param ResourceGroupId: <p>所属资源组ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ErrorCodeString: <p>错误码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String
        # @param RunUserUin: <p>运行用户UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param RunUserName: <p>运行用户名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserName: String
        # @param CreateUserUin: <p>创建人UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param JobId: <p>执行平台执行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param CreateTime: <p>创建时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DependenceFinishedTime: <p>依赖任务完成时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependenceFinishedTime: String
        # @param RunStartTime: <p>运行开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunEndTime: <p>运行结束时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param RunCostTime: <p>运行时长，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param WaitTime: <p>等待时长（依赖就绪到开始运行的等待耗时），单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaitTime: String
        # @param IssueTime: <p>下发执行平台时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssueTime: String
        # @param TimeZone: <p>时区</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeZone: String
        # @param DependOnList: <p>依赖上游任务ID列表。保留字段，暂时返回为[]</p><p>保留字段，暂时返回为[]</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnList: Array
        # @param RunParams: <p>运行参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunParams: String
        # @param TaskTypeExtensions: <p>任务扩展信息，包含脚本路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeExtensions: String
        # @param LeftCoordinate: <p>任务X坐标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: <p>任务Y坐标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param RetryTimes: <p>重试次数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryTimes: Integer
        # @param WorkflowName: <p>工作流名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param RerunTimes: <p>重跑次数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RerunTimes: Integer
        # @param IsLatestRun: <p>是否最新一次运行</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLatestRun: Boolean
        # @param ResourceGroupInfoList: <p>资源组信息列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupInfoList: Array
        # @param ErrorMessage: <p>错误消息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param RunResult: <p>运行结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunResult: String
        # @param InnerWorkflowTaskRun: <p>内嵌工作流任务运行详情（仅限 FOR_EACH 任务，其他任务类型不返回该字段）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerWorkflowTaskRun: :class:`Tencentcloud::Databuddy.v20260715.models.InnerWorkflowTaskRun`
        # @param ScheduledTime: <p>计划调度时间</p><p>参数格式：毫秒时间戳（UTC）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduledTime: String

        attr_accessor :TaskName, :WorkflowTaskRunId, :RunState, :WorkspaceId, :WorkflowId, :WorkflowRunId, :TaskId, :TaskTypeName, :TaskVersionId, :TriggerType, :ResourceGroupId, :ErrorCodeString, :RunUserUin, :RunUserName, :CreateUserUin, :JobId, :CreateTime, :UpdateTime, :DependenceFinishedTime, :RunStartTime, :RunEndTime, :RunCostTime, :WaitTime, :IssueTime, :TimeZone, :DependOnList, :RunParams, :TaskTypeExtensions, :LeftCoordinate, :TopCoordinate, :RetryTimes, :WorkflowName, :RerunTimes, :IsLatestRun, :ResourceGroupInfoList, :ErrorMessage, :RunResult, :InnerWorkflowTaskRun, :ScheduledTime

        def initialize(taskname=nil, workflowtaskrunid=nil, runstate=nil, workspaceid=nil, workflowid=nil, workflowrunid=nil, taskid=nil, tasktypename=nil, taskversionid=nil, triggertype=nil, resourcegroupid=nil, errorcodestring=nil, runuseruin=nil, runusername=nil, createuseruin=nil, jobid=nil, createtime=nil, updatetime=nil, dependencefinishedtime=nil, runstarttime=nil, runendtime=nil, runcosttime=nil, waittime=nil, issuetime=nil, timezone=nil, dependonlist=nil, runparams=nil, tasktypeextensions=nil, leftcoordinate=nil, topcoordinate=nil, retrytimes=nil, workflowname=nil, reruntimes=nil, islatestrun=nil, resourcegroupinfolist=nil, errormessage=nil, runresult=nil, innerworkflowtaskrun=nil, scheduledtime=nil)
          @TaskName = taskname
          @WorkflowTaskRunId = workflowtaskrunid
          @RunState = runstate
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @WorkflowRunId = workflowrunid
          @TaskId = taskid
          @TaskTypeName = tasktypename
          @TaskVersionId = taskversionid
          @TriggerType = triggertype
          @ResourceGroupId = resourcegroupid
          @ErrorCodeString = errorcodestring
          @RunUserUin = runuseruin
          @RunUserName = runusername
          @CreateUserUin = createuseruin
          @JobId = jobid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DependenceFinishedTime = dependencefinishedtime
          @RunStartTime = runstarttime
          @RunEndTime = runendtime
          @RunCostTime = runcosttime
          @WaitTime = waittime
          @IssueTime = issuetime
          @TimeZone = timezone
          @DependOnList = dependonlist
          @RunParams = runparams
          @TaskTypeExtensions = tasktypeextensions
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @RetryTimes = retrytimes
          @WorkflowName = workflowname
          @RerunTimes = reruntimes
          @IsLatestRun = islatestrun
          @ResourceGroupInfoList = resourcegroupinfolist
          @ErrorMessage = errormessage
          @RunResult = runresult
          @InnerWorkflowTaskRun = innerworkflowtaskrun
          @ScheduledTime = scheduledtime
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @WorkflowTaskRunId = params['WorkflowTaskRunId']
          @RunState = params['RunState']
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunId = params['WorkflowRunId']
          @TaskId = params['TaskId']
          @TaskTypeName = params['TaskTypeName']
          @TaskVersionId = params['TaskVersionId']
          @TriggerType = params['TriggerType']
          @ResourceGroupId = params['ResourceGroupId']
          @ErrorCodeString = params['ErrorCodeString']
          @RunUserUin = params['RunUserUin']
          @RunUserName = params['RunUserName']
          @CreateUserUin = params['CreateUserUin']
          @JobId = params['JobId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DependenceFinishedTime = params['DependenceFinishedTime']
          @RunStartTime = params['RunStartTime']
          @RunEndTime = params['RunEndTime']
          @RunCostTime = params['RunCostTime']
          @WaitTime = params['WaitTime']
          @IssueTime = params['IssueTime']
          @TimeZone = params['TimeZone']
          @DependOnList = params['DependOnList']
          @RunParams = params['RunParams']
          @TaskTypeExtensions = params['TaskTypeExtensions']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          @RetryTimes = params['RetryTimes']
          @WorkflowName = params['WorkflowName']
          @RerunTimes = params['RerunTimes']
          @IsLatestRun = params['IsLatestRun']
          unless params['ResourceGroupInfoList'].nil?
            @ResourceGroupInfoList = []
            params['ResourceGroupInfoList'].each do |i|
              resourcegroupinfo_tmp = ResourceGroupInfo.new
              resourcegroupinfo_tmp.deserialize(i)
              @ResourceGroupInfoList << resourcegroupinfo_tmp
            end
          end
          @ErrorMessage = params['ErrorMessage']
          @RunResult = params['RunResult']
          unless params['InnerWorkflowTaskRun'].nil?
            @InnerWorkflowTaskRun = InnerWorkflowTaskRun.new
            @InnerWorkflowTaskRun.deserialize(params['InnerWorkflowTaskRun'])
          end
          @ScheduledTime = params['ScheduledTime']
        end
      end

      # GetWorkspace请求参数结构体
      class GetWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String

        attr_accessor :WorkspaceId

        def initialize(workspaceid=nil)
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # GetWorkspace返回参数结构体
      class GetWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>工作空间详情</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.GetWorkspaceRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = GetWorkspaceRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作空间详情响应
      class GetWorkspaceRsp < TencentCloud::Common::AbstractModel
        # @param WorkspaceInfo: 工作空间详情
        # @type WorkspaceInfo: :class:`Tencentcloud::Databuddy.v20260715.models.WorkspaceInfo`

        attr_accessor :WorkspaceInfo

        def initialize(workspaceinfo=nil)
          @WorkspaceInfo = workspaceinfo
        end

        def deserialize(params)
          unless params['WorkspaceInfo'].nil?
            @WorkspaceInfo = WorkspaceInfo.new
            @WorkspaceInfo.deserialize(params['WorkspaceInfo'])
          end
        end
      end

      # git配置
      class GitRepoConfig < TencentCloud::Common::AbstractModel
        # @param SparseCheckout: <p>检出规则</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SparseCheckout: :class:`Tencentcloud::Databuddy.v20260715.models.SparseCheckoutConfig`
        # @param RepoUrl: <p>Git 仓库地址</p>
        # @type RepoUrl: String
        # @param Branch: <p>分支名</p>
        # @type Branch: String
        # @param AuthConfigName: <p>关联的 gitAuth 配置名称</p>
        # @type AuthConfigName: String

        attr_accessor :SparseCheckout, :RepoUrl, :Branch, :AuthConfigName

        def initialize(sparsecheckout=nil, repourl=nil, branch=nil, authconfigname=nil)
          @SparseCheckout = sparsecheckout
          @RepoUrl = repourl
          @Branch = branch
          @AuthConfigName = authconfigname
        end

        def deserialize(params)
          unless params['SparseCheckout'].nil?
            @SparseCheckout = SparseCheckoutConfig.new
            @SparseCheckout.deserialize(params['SparseCheckout'])
          end
          @RepoUrl = params['RepoUrl']
          @Branch = params['Branch']
          @AuthConfigName = params['AuthConfigName']
        end
      end

      # 用户组用户信息
      class GroupUserInfo < TencentCloud::Common::AbstractModel
        # @param UserUin: <p>用户UIN</p>
        # @type UserUin: String
        # @param UserName: <p>用户名</p>
        # @type UserName: String
        # @param Nickname: <p>昵称</p>
        # @type Nickname: String
        # @param CreateTime: <p>创建时间</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间</p>
        # @type UpdateTime: String

        attr_accessor :UserUin, :UserName, :Nickname, :CreateTime, :UpdateTime

        def initialize(useruin=nil, username=nil, nickname=nil, createtime=nil, updatetime=nil)
          @UserUin = useruin
          @UserName = username
          @Nickname = nickname
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @UserName = params['UserName']
          @Nickname = params['Nickname']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 搜索命中的高亮
      class Highlighting < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # @type Name: String
        # @param Comment: 描述
        # @type Comment: String
        # @param TextFragments: 片段
        # @type TextFragments: Array

        attr_accessor :Name, :Comment, :TextFragments

        def initialize(name=nil, comment=nil, textfragments=nil)
          @Name = name
          @Comment = comment
          @TextFragments = textfragments
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['TextFragments'].nil?
            @TextFragments = []
            params['TextFragments'].each do |i|
              fragment_tmp = Fragment.new
              fragment_tmp.deserialize(i)
              @TextFragments << fragment_tmp
            end
          end
        end
      end

      # 高亮信息
      class HighlightingInfo < TencentCloud::Common::AbstractModel
        # @param AssetName: <p>资产名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param FullName: <p>资产全名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullName: String
        # @param Comment: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param CodeFragments: <p>代码片段</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeFragments: Array
        # @param TextFragments: <p>文本片段</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextFragments: Array
        # @param Tags: <p>标签(废弃)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param TagFragments: <p>标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagFragments: Array
        # @param AliasFragments: <p>别名高亮片段列表。使用场景：资产别名命中关键词时，返回带 <em></em> 标签的高亮片段供前端渲染</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AliasFragments: Array

        attr_accessor :AssetName, :FullName, :Comment, :CodeFragments, :TextFragments, :Tags, :TagFragments, :AliasFragments

        def initialize(assetname=nil, fullname=nil, comment=nil, codefragments=nil, textfragments=nil, tags=nil, tagfragments=nil, aliasfragments=nil)
          @AssetName = assetname
          @FullName = fullname
          @Comment = comment
          @CodeFragments = codefragments
          @TextFragments = textfragments
          @Tags = tags
          @TagFragments = tagfragments
          @AliasFragments = aliasfragments
        end

        def deserialize(params)
          @AssetName = params['AssetName']
          @FullName = params['FullName']
          @Comment = params['Comment']
          unless params['CodeFragments'].nil?
            @CodeFragments = []
            params['CodeFragments'].each do |i|
              fragment_tmp = Fragment.new
              fragment_tmp.deserialize(i)
              @CodeFragments << fragment_tmp
            end
          end
          unless params['TextFragments'].nil?
            @TextFragments = []
            params['TextFragments'].each do |i|
              fragment_tmp = Fragment.new
              fragment_tmp.deserialize(i)
              @TextFragments << fragment_tmp
            end
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          unless params['TagFragments'].nil?
            @TagFragments = []
            params['TagFragments'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagFragments << taginfo_tmp
            end
          end
          @AliasFragments = params['AliasFragments']
        end
      end

      # 索引结构
      class Index < TencentCloud::Common::AbstractModel
        # @param Type: 字段键值类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param FieldNames: 字段名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldNames: Array
        # @param IndexType: 字段键值类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IndexType: String

        attr_accessor :Type, :Name, :FieldNames, :IndexType

        def initialize(type=nil, name=nil, fieldnames=nil, indextype=nil)
          @Type = type
          @Name = name
          @FieldNames = fieldnames
          @IndexType = indextype
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @FieldNames = params['FieldNames']
          @IndexType = params['IndexType']
        end
      end

      # 内嵌工作流任务简要信息（目前只有 FOR_EACH 工作流任务该字段才有值）
      class InnerWorkflowTaskBrief < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskTypeName: 任务类型名称，请参考数据结构TaskType中TaskTypeName字段描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String

        attr_accessor :TaskId, :TaskName, :TaskTypeName

        def initialize(taskid=nil, taskname=nil, tasktypename=nil)
          @TaskId = taskid
          @TaskName = taskname
          @TaskTypeName = tasktypename
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskTypeName = params['TaskTypeName']
        end
      end

      # 内嵌工作流任务运行详情（仅限 FOR_EACH 任务）
      class InnerWorkflowTaskRun < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 迭代运行列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param IterationCount: 迭代次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IterationCount: Integer
        # @param FailureCount: 失败次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailureCount: Integer
        # @param SuccessCount: 成功次数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCount: Integer
        # @param InnerWorkflowId: 内嵌工作流ID，可通过 ListWorkflows 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerWorkflowId: String
        # @param InnerTaskId: 内嵌任务ID，可通过 ListWorkflowTasks 获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTaskId: String
        # @param InnerTaskRunBizEnumInfos: 内嵌任务运行状态数量统计（实例业务枚举键值对列表）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTaskRunBizEnumInfos: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items, :IterationCount, :FailureCount, :SuccessCount, :InnerWorkflowId, :InnerTaskId, :InnerTaskRunBizEnumInfos

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil, iterationcount=nil, failurecount=nil, successcount=nil, innerworkflowid=nil, innertaskid=nil, innertaskrunbizenuminfos=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
          @IterationCount = iterationcount
          @FailureCount = failurecount
          @SuccessCount = successcount
          @InnerWorkflowId = innerworkflowid
          @InnerTaskId = innertaskid
          @InnerTaskRunBizEnumInfos = innertaskrunbizenuminfos
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              innerworkflowtaskruniteration_tmp = InnerWorkflowTaskRunIteration.new
              innerworkflowtaskruniteration_tmp.deserialize(i)
              @Items << innerworkflowtaskruniteration_tmp
            end
          end
          @IterationCount = params['IterationCount']
          @FailureCount = params['FailureCount']
          @SuccessCount = params['SuccessCount']
          @InnerWorkflowId = params['InnerWorkflowId']
          @InnerTaskId = params['InnerTaskId']
          unless params['InnerTaskRunBizEnumInfos'].nil?
            @InnerTaskRunBizEnumInfos = []
            params['InnerTaskRunBizEnumInfos'].each do |i|
              schedulebizenumbrief_tmp = ScheduleBizEnumBrief.new
              schedulebizenumbrief_tmp.deserialize(i)
              @InnerTaskRunBizEnumInfos << schedulebizenumbrief_tmp
            end
          end
        end
      end

      # 内嵌工作流单次迭代运行信息
      class InnerWorkflowTaskRunIteration < TencentCloud::Common::AbstractModel
        # @param WorkflowRunId: <p>内嵌工作流运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param IterationIndex: <p>迭代序号</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IterationIndex: String
        # @param RunStartTime: <p>运行开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunEndTime: <p>运行结束时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param RunState: <p>运行状态（参考工作流运行状态枚举）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param RunCostTime: <p>运行时长，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param WorkflowParams: <p>运行参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowParams: String
        # @param ErrorCodeString: <p>错误码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String
        # @param InnerTaskRun: <p>内嵌工作流内部的任务运行</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTaskRun: :class:`Tencentcloud::Databuddy.v20260715.models.InnerWorkflowTaskRunIterationBrief`

        attr_accessor :WorkflowRunId, :IterationIndex, :RunStartTime, :RunEndTime, :RunState, :RunCostTime, :WorkflowParams, :ErrorCodeString, :InnerTaskRun

        def initialize(workflowrunid=nil, iterationindex=nil, runstarttime=nil, runendtime=nil, runstate=nil, runcosttime=nil, workflowparams=nil, errorcodestring=nil, innertaskrun=nil)
          @WorkflowRunId = workflowrunid
          @IterationIndex = iterationindex
          @RunStartTime = runstarttime
          @RunEndTime = runendtime
          @RunState = runstate
          @RunCostTime = runcosttime
          @WorkflowParams = workflowparams
          @ErrorCodeString = errorcodestring
          @InnerTaskRun = innertaskrun
        end

        def deserialize(params)
          @WorkflowRunId = params['WorkflowRunId']
          @IterationIndex = params['IterationIndex']
          @RunStartTime = params['RunStartTime']
          @RunEndTime = params['RunEndTime']
          @RunState = params['RunState']
          @RunCostTime = params['RunCostTime']
          @WorkflowParams = params['WorkflowParams']
          @ErrorCodeString = params['ErrorCodeString']
          unless params['InnerTaskRun'].nil?
            @InnerTaskRun = InnerWorkflowTaskRunIterationBrief.new
            @InnerTaskRun.deserialize(params['InnerTaskRun'])
          end
        end
      end

      # 内嵌工作流迭代中的任务运行简要信息
      class InnerWorkflowTaskRunIterationBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowTaskRunId: <p>任务运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowTaskRunId: String
        # @param IterationIndex: <p>迭代序号</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IterationIndex: String
        # @param RunStartTime: <p>运行开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunEndTime: <p>运行结束时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param RunState: <p>运行状态</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param RunCostTime: <p>运行时长，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param TaskParams: <p>运行参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskParams: String
        # @param ErrorCodeString: <p>错误码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String

        attr_accessor :WorkflowTaskRunId, :IterationIndex, :RunStartTime, :RunEndTime, :RunState, :RunCostTime, :TaskParams, :ErrorCodeString

        def initialize(workflowtaskrunid=nil, iterationindex=nil, runstarttime=nil, runendtime=nil, runstate=nil, runcosttime=nil, taskparams=nil, errorcodestring=nil)
          @WorkflowTaskRunId = workflowtaskrunid
          @IterationIndex = iterationindex
          @RunStartTime = runstarttime
          @RunEndTime = runendtime
          @RunState = runstate
          @RunCostTime = runcosttime
          @TaskParams = taskparams
          @ErrorCodeString = errorcodestring
        end

        def deserialize(params)
          @WorkflowTaskRunId = params['WorkflowTaskRunId']
          @IterationIndex = params['IterationIndex']
          @RunStartTime = params['RunStartTime']
          @RunEndTime = params['RunEndTime']
          @RunState = params['RunState']
          @RunCostTime = params['RunCostTime']
          @TaskParams = params['TaskParams']
          @ErrorCodeString = params['ErrorCodeString']
        end
      end

      # 内嵌工作流任务运行列表选项（仅限 FOR_EACH 任务使用）
      class InnerWorkflowTaskRunListOption < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>分页页码，从 1 开始。非必填，默认 1</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小。非必填，默认 10，取值范围 [10, 200]</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param RunStates: <p>迭代运行状态，精确匹配。非必填，多选（多个值之间为 OR 关系）。</p><p>可填 SUCCESS / FAILED 等，具体参考本接口出参 InnerWorkflowTaskRunIteration.RunState 字段返回值。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStates: Array

        attr_accessor :PageNumber, :PageSize, :RunStates

        def initialize(pagenumber=nil, pagesize=nil, runstates=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @RunStates = runstates
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @RunStates = params['RunStates']
        end
      end

      # 扩展信息键值对
      class KVPair < TencentCloud::Common::AbstractModel
        # @param Key: 键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # KillWorkflowRun请求参数结构体
      class KillWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String
        # @param WorkflowRunIds: <p>待终止的工作流运行ID列表，可通过 ListWorkflowRuns 获取</p>
        # @type WorkflowRunIds: Array
        # @param KillAllRuns: <p>是否终止该工作流下所有未进入终态的运行。非必填，默认 false</p>
        # @type KillAllRuns: Boolean
        # @param OnlyKillPendingRuns: <p>是否只终止处于等待中（Pending）状态的运行。非必填，默认 false</p>
        # @type OnlyKillPendingRuns: Boolean

        attr_accessor :WorkspaceId, :WorkflowId, :WorkflowRunIds, :KillAllRuns, :OnlyKillPendingRuns

        def initialize(workspaceid=nil, workflowid=nil, workflowrunids=nil, killallruns=nil, onlykillpendingruns=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @WorkflowRunIds = workflowrunids
          @KillAllRuns = killallruns
          @OnlyKillPendingRuns = onlykillpendingruns
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunIds = params['WorkflowRunIds']
          @KillAllRuns = params['KillAllRuns']
          @OnlyKillPendingRuns = params['OnlyKillPendingRuns']
        end
      end

      # KillWorkflowRun返回参数结构体
      class KillWorkflowRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>终止工作流的运行响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.AsyncActionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AsyncActionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 标签信息
      class LabelBrief < TencentCloud::Common::AbstractModel
        # @param LabelKey: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelKey: String
        # @param LabelValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param LabelKeyId: 标签名称ID，可通过标签相关接口获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelKeyId: String
        # @param LabelValueId: 标签值ID，可通过标签相关接口获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValueId: String

        attr_accessor :LabelKey, :LabelValue, :LabelKeyId, :LabelValueId

        def initialize(labelkey=nil, labelvalue=nil, labelkeyid=nil, labelvalueid=nil)
          @LabelKey = labelkey
          @LabelValue = labelvalue
          @LabelKeyId = labelkeyid
          @LabelValueId = labelvalueid
        end

        def deserialize(params)
          @LabelKey = params['LabelKey']
          @LabelValue = params['LabelValue']
          @LabelKeyId = params['LabelKeyId']
          @LabelValueId = params['LabelValueId']
        end
      end

      # ListCatalogNames请求参数结构体
      class ListCatalogNamesRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param MaxResults: <p>最大结果条数，可选，默认10</p>
        # @type MaxResults: String
        # @param PageToken: <p>分页token信息(base64编码，包含offset、snapshotId等)</p>
        # @type PageToken: String
        # @param Types: <p>catalog类型，参考CatalogType(当前支持：TABLE、MODEL、VOLUME)，可选，不填默认查询所有类型</p>
        # @type Types: Array
        # @param CatalogSources: <p>数据目录来源筛选，取值参考CatalogSourceEnum(METALAKE/CONNECTION/SETATS)</p>
        # @type CatalogSources: Array

        attr_accessor :WorkspaceId, :MaxResults, :PageToken, :Types, :CatalogSources

        def initialize(workspaceid=nil, maxresults=nil, pagetoken=nil, types=nil, catalogsources=nil)
          @WorkspaceId = workspaceid
          @MaxResults = maxresults
          @PageToken = pagetoken
          @Types = types
          @CatalogSources = catalogsources
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @MaxResults = params['MaxResults']
          @PageToken = params['PageToken']
          @Types = params['Types']
          @CatalogSources = params['CatalogSources']
        end
      end

      # ListCatalogNames返回参数结构体
      class ListCatalogNamesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListCatalogNamesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListCatalogNamesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取数据目录名称列表响应
      class ListCatalogNamesRsp < TencentCloud::Common::AbstractModel
        # @param Items: 数据目录名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 下页分页token信息(base64编码，包含offset、snapshotId等)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :Items, :NextPageToken

        def initialize(items=nil, nextpagetoken=nil)
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              nameidentifier_tmp = NameIdentifier.new
              nameidentifier_tmp.deserialize(i)
              @Items << nameidentifier_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListCatalogs请求参数结构体
      class ListCatalogsRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间唯一id</p>
        # @type WorkspaceId: String
        # @param MaxResults: <p>最大结果条数</p>
        # @type MaxResults: Integer
        # @param PageToken: <p>分页token</p>
        # @type PageToken: String
        # @param Types: <p>catalog类型，可填：TABLE、MODEL、VOLUME</p>
        # @type Types: Array
        # @param CurrentWorkspaceOnly: <p>是否只返回当前工作空间有权限的，false时会额外返回当前用户有权限管理的catalog</p>
        # @type CurrentWorkspaceOnly: Boolean
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`
        # @param CatalogSources: 数据目录来源筛选（融合版新增字段），取值参考 CatalogSourceEnum。空数组或不传→只查tclake；["METALAKE"]→只查tclake；["CONNECTION"]→只查分析版ana_catalog；["METALAKE","CONNECTION"]→合并返回
        # @type CatalogSources: Array

        attr_accessor :WorkspaceId, :MaxResults, :PageToken, :Types, :CurrentWorkspaceOnly, :FetchOption, :CatalogSources

        def initialize(workspaceid=nil, maxresults=nil, pagetoken=nil, types=nil, currentworkspaceonly=nil, fetchoption=nil, catalogsources=nil)
          @WorkspaceId = workspaceid
          @MaxResults = maxresults
          @PageToken = pagetoken
          @Types = types
          @CurrentWorkspaceOnly = currentworkspaceonly
          @FetchOption = fetchoption
          @CatalogSources = catalogsources
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @MaxResults = params['MaxResults']
          @PageToken = params['PageToken']
          @Types = params['Types']
          @CurrentWorkspaceOnly = params['CurrentWorkspaceOnly']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
          @CatalogSources = params['CatalogSources']
        end
      end

      # ListCatalogs返回参数结构体
      class ListCatalogsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>操作结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListCatalogsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListCatalogsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取数据目录列表响应
      class ListCatalogsRsp < TencentCloud::Common::AbstractModel
        # @param Items: 数据目录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 下页分页token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :Items, :NextPageToken

        def initialize(items=nil, nextpagetoken=nil)
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              catalog_tmp = Catalog.new
              catalog_tmp.deserialize(i)
              @Items << catalog_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListConsoleGroupUsers请求参数结构体
      class ListConsoleGroupUsersRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: <p>用户组 ID，可通过 ListConsoleGroups 接口获取</p>
        # @type GroupId: String
        # @param UserKeyword: <p>用户名称或 UIN 模糊匹配</p>
        # @type UserKeyword: String
        # @param UserUins: <p>通过 UIN 批量查询用户信息</p>
        # @type UserUins: Array
        # @param OrderBys: <p>多字段排序，如 [{Name: &#39;CreateTime&#39;, Direction: &#39;Desc&#39;}, {Name: &#39;UserName&#39;, Direction: &#39;Asc&#39;}]，默认按创建时间降序</p>
        # @type OrderBys: Array
        # @param PageNumber: <p>页码，从1开始，默认1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小，默认10，最小10，最大100</p>
        # @type PageSize: Integer

        attr_accessor :GroupId, :UserKeyword, :UserUins, :OrderBys, :PageNumber, :PageSize

        def initialize(groupid=nil, userkeyword=nil, useruins=nil, orderbys=nil, pagenumber=nil, pagesize=nil)
          @GroupId = groupid
          @UserKeyword = userkeyword
          @UserUins = useruins
          @OrderBys = orderbys
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @UserKeyword = params['UserKeyword']
          @UserUins = params['UserUins']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListConsoleGroupUsers返回参数结构体
      class ListConsoleGroupUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListConsoleGroupUsersRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListConsoleGroupUsersRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询控制台用户组成员列表响应
      class ListConsoleGroupUsersRsp < TencentCloud::Common::AbstractModel
        # @param Items: 用户组成员列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param PageNumber: 当前页码
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              consolegroupuserinfo_tmp = ConsoleGroupUserInfo.new
              consolegroupuserinfo_tmp.deserialize(i)
              @Items << consolegroupuserinfo_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # ListConsoleGroups请求参数结构体
      class ListConsoleGroupsRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>页码，从1开始，默认1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小，默认10，最小10，最大100</p>
        # @type PageSize: Integer
        # @param GroupIds: <p>通过用户组ID批量查询；用户组ID可通过 ListConsoleGroups 接口获取</p>
        # @type GroupIds: Array
        # @param GroupKeyword: <p>用户组名称模糊匹配</p>
        # @type GroupKeyword: String
        # @param OrderBys: <p>多字段排序，如 [{Name: &#39;CreateTime&#39;, Direction: &#39;Desc&#39;}, {Name: &#39;UserName&#39;, Direction: &#39;Asc&#39;}]，默认按创建时间降序</p>
        # @type OrderBys: Array

        attr_accessor :PageNumber, :PageSize, :GroupIds, :GroupKeyword, :OrderBys

        def initialize(pagenumber=nil, pagesize=nil, groupids=nil, groupkeyword=nil, orderbys=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @GroupIds = groupids
          @GroupKeyword = groupkeyword
          @OrderBys = orderbys
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @GroupIds = params['GroupIds']
          @GroupKeyword = params['GroupKeyword']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
        end
      end

      # ListConsoleGroups返回参数结构体
      class ListConsoleGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListConsoleGroupsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListConsoleGroupsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询控制台用户组列表响应
      class ListConsoleGroupsRsp < TencentCloud::Common::AbstractModel
        # @param Items: 用户组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param PageNumber: 当前页码
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              consolegroupinfo_tmp = ConsoleGroupInfo.new
              consolegroupinfo_tmp.deserialize(i)
              @Items << consolegroupinfo_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # ListConsoleRoles请求参数结构体
      class ListConsoleRolesRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>页码，从1开始，默认1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小，默认10，最小10，最大100</p>
        # @type PageSize: Integer
        # @param RoleKeyword: <p>角色名称或描述模糊匹配</p>
        # @type RoleKeyword: String

        attr_accessor :PageNumber, :PageSize, :RoleKeyword

        def initialize(pagenumber=nil, pagesize=nil, rolekeyword=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @RoleKeyword = rolekeyword
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @RoleKeyword = params['RoleKeyword']
        end
      end

      # ListConsoleRoles返回参数结构体
      class ListConsoleRolesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListConsoleRolesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListConsoleRolesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询控制台角色列表响应
      class ListConsoleRolesRsp < TencentCloud::Common::AbstractModel
        # @param Items: 角色列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param PageNumber: 当前页码
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              consoleroleinfo_tmp = ConsoleRoleInfo.new
              consoleroleinfo_tmp.deserialize(i)
              @Items << consoleroleinfo_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # ListConsoleUsers请求参数结构体
      class ListConsoleUsersRequest < TencentCloud::Common::AbstractModel
        # @param PageNumber: <p>页码，从1开始，默认1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小，默认10，最小10，最大100</p>
        # @type PageSize: Integer
        # @param UserKeyword: <p>用户名称与 UIN 模糊匹配</p>
        # @type UserKeyword: String
        # @param RoleIds: <p>用于过滤角色关联的用户</p><p>枚举值：</p><ul><li>2001： 控制台管理员</li><li>2002： 控制台成员</li></ul><p>可通过 ListConsoleRoles 接口获取</p>
        # @type RoleIds: Array
        # @param OrderBys: <p>多字段排序，如 [{Name: &#39;CreateTime&#39;, Direction: &#39;Desc&#39;}, {Name: &#39;UserName&#39;, Direction: &#39;Asc&#39;}]，默认按创建时间降序</p>
        # @type OrderBys: Array

        attr_accessor :PageNumber, :PageSize, :UserKeyword, :RoleIds, :OrderBys

        def initialize(pagenumber=nil, pagesize=nil, userkeyword=nil, roleids=nil, orderbys=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @UserKeyword = userkeyword
          @RoleIds = roleids
          @OrderBys = orderbys
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @UserKeyword = params['UserKeyword']
          @RoleIds = params['RoleIds']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
        end
      end

      # ListConsoleUsers返回参数结构体
      class ListConsoleUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>控制台用户列表</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListConsoleUsersRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListConsoleUsersRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询控制台用户列表响应
      class ListConsoleUsersRsp < TencentCloud::Common::AbstractModel
        # @param Items: 用户列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param PageNumber: 当前页码
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              consoleuserinfo_tmp = ConsoleUserInfo.new
              consoleuserinfo_tmp.deserialize(i)
              @Items << consoleuserinfo_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # ListFeatureTableResp返回
      class ListFeatureTableResp < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: String
        # @param Items: 返回列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 下一页token，为空表示没有更多数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :TotalCount, :Items, :NextPageToken

        def initialize(totalcount=nil, items=nil, nextpagetoken=nil)
          @TotalCount = totalcount
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              featuretable_tmp = FeatureTable.new
              featuretable_tmp.deserialize(i)
              @Items << featuretable_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListFeatureTables请求参数结构体
      class ListFeatureTablesRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String
        # @param Keyword: <p>关键字</p>
        # @type Keyword: String
        # @param CatalogNames: <p>Catalog目录列表</p>
        # @type CatalogNames: Array
        # @param Tags: <p>标签列表</p>
        # @type Tags: Array
        # @param OwnerMe: <p>我负责的</p>
        # @type OwnerMe: Boolean
        # @param MaxResults: <p>最大结果条数，可选，取值1～50</p>
        # @type MaxResults: Integer
        # @param PageToken: <p>分页token信息(base64编码)，可选</p>
        # @type PageToken: String
        # @param OrderBys: <p>排序，Name(CreateTime/ModifiedTime), Direction(Desc/Asc)</p>
        # @type OrderBys: Array

        attr_accessor :WorkspaceId, :Keyword, :CatalogNames, :Tags, :OwnerMe, :MaxResults, :PageToken, :OrderBys

        def initialize(workspaceid=nil, keyword=nil, catalognames=nil, tags=nil, ownerme=nil, maxresults=nil, pagetoken=nil, orderbys=nil)
          @WorkspaceId = workspaceid
          @Keyword = keyword
          @CatalogNames = catalognames
          @Tags = tags
          @OwnerMe = ownerme
          @MaxResults = maxresults
          @PageToken = pagetoken
          @OrderBys = orderbys
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @Keyword = params['Keyword']
          @CatalogNames = params['CatalogNames']
          @Tags = params['Tags']
          @OwnerMe = params['OwnerMe']
          @MaxResults = params['MaxResults']
          @PageToken = params['PageToken']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
        end
      end

      # ListFeatureTables返回参数结构体
      class ListFeatureTablesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListFeatureTableResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListFeatureTableResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListFiles请求参数结构体
      class ListFilesRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间id</p>
        # @type WorkspaceId: String
        # @param Parent: <p>父目录，不填默认查询根节点</p>
        # @type Parent: :class:`Tencentcloud::Databuddy.v20260715.models.FolderLocator`
        # @param FileTypes: <p>按文件类型过滤</p>
        # @type FileTypes: Array
        # @param NameKeyword: <p>文件名模糊匹配</p>
        # @type NameKeyword: String
        # @param OwnerUserUins: <p>按所有者UIN过滤，多值为或关系</p>
        # @type OwnerUserUins: Array
        # @param OnlyFolder: <p>是否只列出文件夹，默认 false</p>
        # @type OnlyFolder: Boolean
        # @param OrderBys: <p>排序字段列表，如创建时间 [{Name: &#39;CreateTime&#39;, Direction: &#39;DESC&#39;}]，文件名称 [{Name: &#39;Name&#39;, Direction: &#39;ASC&#39;}]</p>
        # @type OrderBys: Array
        # @param PageNumber: <p>页码，默认1，最小值1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页条数，默认10，最小值10，最大值100</p><p>取值范围：[10, 100]</p>
        # @type PageSize: Integer

        attr_accessor :WorkspaceId, :Parent, :FileTypes, :NameKeyword, :OwnerUserUins, :OnlyFolder, :OrderBys, :PageNumber, :PageSize

        def initialize(workspaceid=nil, parent=nil, filetypes=nil, namekeyword=nil, owneruseruins=nil, onlyfolder=nil, orderbys=nil, pagenumber=nil, pagesize=nil)
          @WorkspaceId = workspaceid
          @Parent = parent
          @FileTypes = filetypes
          @NameKeyword = namekeyword
          @OwnerUserUins = owneruseruins
          @OnlyFolder = onlyfolder
          @OrderBys = orderbys
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['Parent'].nil?
            @Parent = FolderLocator.new
            @Parent.deserialize(params['Parent'])
          end
          @FileTypes = params['FileTypes']
          @NameKeyword = params['NameKeyword']
          @OwnerUserUins = params['OwnerUserUins']
          @OnlyFolder = params['OnlyFolder']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListFiles返回参数结构体
      class ListFilesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>文件列表结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListFilesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListFilesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询文件信息结果
      class ListFilesRsp < TencentCloud::Common::AbstractModel
        # @param Items: <p>文件/文件夹节点列表</p>
        # @type Items: Array
        # @param PageNumber: <p>当前页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页条数</p>
        # @type PageSize: Integer
        # @param TotalCount: <p>总条数</p>
        # @type TotalCount: Integer
        # @param TotalPageNumber: <p>总页数</p>
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              filenode_tmp = FileNode.new
              filenode_tmp.deserialize(i)
              @Items << filenode_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # ListLocations请求参数结构体
      class ListLocationsRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param LocationNamePattern: <p>存储位置名匹配模式，支持SQL LIKE语法</p>
        # @type LocationNamePattern: String
        # @param SnapshotBased: <p>是否基于快照分页</p>
        # @type SnapshotBased: Boolean
        # @param SnapshotId: <p>快照ID</p>
        # @type SnapshotId: String
        # @param PageNumber: <p>页码，从1开始，可选，默认1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小，默认10，取值范围 1~500</p>
        # @type PageSize: Integer

        attr_accessor :WorkspaceId, :LocationNamePattern, :SnapshotBased, :SnapshotId, :PageNumber, :PageSize

        def initialize(workspaceid=nil, locationnamepattern=nil, snapshotbased=nil, snapshotid=nil, pagenumber=nil, pagesize=nil)
          @WorkspaceId = workspaceid
          @LocationNamePattern = locationnamepattern
          @SnapshotBased = snapshotbased
          @SnapshotId = snapshotid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @LocationNamePattern = params['LocationNamePattern']
          @SnapshotBased = params['SnapshotBased']
          @SnapshotId = params['SnapshotId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListLocations返回参数结构体
      class ListLocationsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListLocationsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListLocationsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 分页查询存储位置列表响应
      class ListLocationsRsp < TencentCloud::Common::AbstractModel
        # @param Locations: 存储位置详情列表
        # @type Locations: Array
        # @param TotalCount: 结果总条数
        # @type TotalCount: Integer
        # @param SnapshotId: 快照ID
        # @type SnapshotId: String

        attr_accessor :Locations, :TotalCount, :SnapshotId

        def initialize(locations=nil, totalcount=nil, snapshotid=nil)
          @Locations = locations
          @TotalCount = totalcount
          @SnapshotId = snapshotid
        end

        def deserialize(params)
          unless params['Locations'].nil?
            @Locations = []
            params['Locations'].each do |i|
              locationinfo_tmp = LocationInfo.new
              locationinfo_tmp.deserialize(i)
              @Locations << locationinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @SnapshotId = params['SnapshotId']
        end
      end

      # ListModels请求参数结构体
      class ListModelsRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema名称</p>
        # @type SchemaName: String
        # @param MaxResults: <p>最大结果条数，默认10，取值1~10000</p>
        # @type MaxResults: Integer
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param PageToken: <p>分页信息</p>
        # @type PageToken: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`

        attr_accessor :CatalogName, :SchemaName, :MaxResults, :WorkspaceId, :PageToken, :FetchOption

        def initialize(catalogname=nil, schemaname=nil, maxresults=nil, workspaceid=nil, pagetoken=nil, fetchoption=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @MaxResults = maxresults
          @WorkspaceId = workspaceid
          @PageToken = pagetoken
          @FetchOption = fetchoption
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @MaxResults = params['MaxResults']
          @WorkspaceId = params['WorkspaceId']
          @PageToken = params['PageToken']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
        end
      end

      # ListModels返回参数结构体
      class ListModelsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回信息</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListModelsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListModelsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 模型列表返回
      class ListModelsRsp < TencentCloud::Common::AbstractModel
        # @param Items: 模型列表
        # @type Items: Array
        # @param TotalCount: 总数量
        # @type TotalCount: String
        # @param NextPageToken: 分页令牌
        # @type NextPageToken: String

        attr_accessor :Items, :TotalCount, :NextPageToken

        def initialize(items=nil, totalcount=nil, nextpagetoken=nil)
          @Items = items
          @TotalCount = totalcount
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              modelinfo_tmp = ModelInfo.new
              modelinfo_tmp.deserialize(i)
              @Items << modelinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @NextPageToken = params['NextPageToken']
        end
      end

      # 列表分区
      class ListPartition < TencentCloud::Common::AbstractModel
        # @param Name: 分区名
        # @type Name: String
        # @param List: 分区列表
        # @type List: Array
        # @param Properties: 属性
        # @type Properties: Array

        attr_accessor :Name, :List, :Properties

        def initialize(name=nil, list=nil, properties=nil)
          @Name = name
          @List = list
          @Properties = properties
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              literal_tmp = Literal.new
              literal_tmp.deserialize(i)
              @List << literal_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
        end
      end

      # 列表分区策略
      class ListPartitioning < TencentCloud::Common::AbstractModel
        # @param FiledNames: 分区字段
        # @type FiledNames: Array
        # @param Assignments: 分区
        # @type Assignments: Array

        attr_accessor :FiledNames, :Assignments

        def initialize(filednames=nil, assignments=nil)
          @FiledNames = filednames
          @Assignments = assignments
        end

        def deserialize(params)
          @FiledNames = params['FiledNames']
          unless params['Assignments'].nil?
            @Assignments = []
            params['Assignments'].each do |i|
              listpartition_tmp = ListPartition.new
              listpartition_tmp.deserialize(i)
              @Assignments << listpartition_tmp
            end
          end
        end
      end

      # ListSchemaNames请求参数结构体
      class ListSchemaNamesRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名，必填</p>
        # @type CatalogName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param MaxResults: <p>最大结果条数，可选，默认10</p>
        # @type MaxResults: String
        # @param PageToken: <p>分页token信息(base64编码，包含offset、snapshotId等)</p>
        # @type PageToken: String
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，取值参考CatalogSourceEnum：METALAKE/CONNECTION/SETATS</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :WorkspaceId, :MaxResults, :PageToken, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, workspaceid=nil, maxresults=nil, pagetoken=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @WorkspaceId = workspaceid
          @MaxResults = maxresults
          @PageToken = pagetoken
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @WorkspaceId = params['WorkspaceId']
          @MaxResults = params['MaxResults']
          @PageToken = params['PageToken']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # ListSchemaNames返回参数结构体
      class ListSchemaNamesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListSchemaNamesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListSchemaNamesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取数据库名称列表响应
      class ListSchemaNamesRsp < TencentCloud::Common::AbstractModel
        # @param Items: 数据库名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 下页分页token信息(base64编码，包含offset、snapshotId等)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :Items, :NextPageToken

        def initialize(items=nil, nextpagetoken=nil)
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              nameidentifier_tmp = NameIdentifier.new
              nameidentifier_tmp.deserialize(i)
              @Items << nameidentifier_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListSchemas请求参数结构体
      class ListSchemasRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param MaxResults: <p>最大结果条数</p>
        # @type MaxResults: Integer
        # @param PageToken: <p>分页token</p>
        # @type PageToken: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`
        # @param ConnectionId: 数据源连接ID，可选（融合版新增字段）。非空→走分析版路径，空/缺省→走专业版TcLake路径
        # @type ConnectionId: String
        # @param CatalogSource: 数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource > 非空ConnectionId（视为CONNECTION）> 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。
        # @type CatalogSource: String

        attr_accessor :CatalogName, :WorkspaceId, :MaxResults, :PageToken, :FetchOption, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, workspaceid=nil, maxresults=nil, pagetoken=nil, fetchoption=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @WorkspaceId = workspaceid
          @MaxResults = maxresults
          @PageToken = pagetoken
          @FetchOption = fetchoption
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @WorkspaceId = params['WorkspaceId']
          @MaxResults = params['MaxResults']
          @PageToken = params['PageToken']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # ListSchemas返回参数结构体
      class ListSchemasResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>操作结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListSchemasRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListSchemasRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取schema列表响应
      class ListSchemasRsp < TencentCloud::Common::AbstractModel
        # @param Items: schema列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 下页分页token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :Items, :NextPageToken

        def initialize(items=nil, nextpagetoken=nil)
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              schema_tmp = Schema.new
              schema_tmp.deserialize(i)
              @Items << schema_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListTableNames请求参数结构体
      class ListTableNamesRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名，必填</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名，必填</p>
        # @type SchemaName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param MaxResults: <p>最大结果条数，可选，默认10</p>
        # @type MaxResults: String
        # @param PageToken: <p>分页token信息(base64编码，包含offset、snapshotId等)</p>
        # @type PageToken: String
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，取值参考CatalogSourceEnum：METALAKE/CONNECTION/SETATS</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :WorkspaceId, :MaxResults, :PageToken, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, workspaceid=nil, maxresults=nil, pagetoken=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @WorkspaceId = workspaceid
          @MaxResults = maxresults
          @PageToken = pagetoken
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @WorkspaceId = params['WorkspaceId']
          @MaxResults = params['MaxResults']
          @PageToken = params['PageToken']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # ListTableNames返回参数结构体
      class ListTableNamesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListTableNamesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListTableNamesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取数据表名称列表响应
      class ListTableNamesRsp < TencentCloud::Common::AbstractModel
        # @param Items: 数据表名数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 下页分页token信息(base64编码，包含offset、snapshotId等)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :Items, :NextPageToken

        def initialize(items=nil, nextpagetoken=nil)
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              nameidentifier_tmp = NameIdentifier.new
              nameidentifier_tmp.deserialize(i)
              @Items << nameidentifier_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListTables请求参数结构体
      class ListTablesRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名</p>
        # @type SchemaName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param MaxResults: <p>最大结果条数</p>
        # @type MaxResults: Integer
        # @param PageToken: <p>分页token</p>
        # @type PageToken: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。非空→走分析版路径，空/缺省→走专业版TcLake路径。通过ListConnections接口获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :WorkspaceId, :MaxResults, :PageToken, :FetchOption, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, workspaceid=nil, maxresults=nil, pagetoken=nil, fetchoption=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @WorkspaceId = workspaceid
          @MaxResults = maxresults
          @PageToken = pagetoken
          @FetchOption = fetchoption
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @WorkspaceId = params['WorkspaceId']
          @MaxResults = params['MaxResults']
          @PageToken = params['PageToken']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # ListTables返回参数结构体
      class ListTablesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>操作结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListTablesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListTablesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取table列表响应
      class ListTablesRsp < TencentCloud::Common::AbstractModel
        # @param Items: tabl列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 下页分页token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :Items, :NextPageToken

        def initialize(items=nil, nextpagetoken=nil)
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              tableinfo_tmp = TableInfo.new
              tableinfo_tmp.deserialize(i)
              @Items << tableinfo_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListViewNames请求参数结构体
      class ListViewNamesRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名，必填</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名，必填</p>
        # @type SchemaName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param MaxResults: <p>最大结果条数，可选，默认10</p>
        # @type MaxResults: String
        # @param PageToken: <p>分页token信息(base64编码，包含offset、snapshotId等)</p>
        # @type PageToken: String
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，取值参考CatalogSourceEnum：METALAKE/CONNECTION/SETATS</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :WorkspaceId, :MaxResults, :PageToken, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, workspaceid=nil, maxresults=nil, pagetoken=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @WorkspaceId = workspaceid
          @MaxResults = maxresults
          @PageToken = pagetoken
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @WorkspaceId = params['WorkspaceId']
          @MaxResults = params['MaxResults']
          @PageToken = params['PageToken']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # ListViewNames返回参数结构体
      class ListViewNamesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListViewNamesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListViewNamesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取视图名称列表响应
      class ListViewNamesRsp < TencentCloud::Common::AbstractModel
        # @param Items: 视图名数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 下页分页token信息(base64编码，包含offset、snapshotId等)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :Items, :NextPageToken

        def initialize(items=nil, nextpagetoken=nil)
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              nameidentifier_tmp = NameIdentifier.new
              nameidentifier_tmp.deserialize(i)
              @Items << nameidentifier_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListViews请求参数结构体
      class ListViewsRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名</p>
        # @type SchemaName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param MaxResults: <p>最大结果条数，默认10</p>
        # @type MaxResults: Integer
        # @param PageToken: <p>分页token</p>
        # @type PageToken: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`
        # @param ConnectionId: <p>数据源连接ID，可选（融合版新增字段）。非空→走分析版路径，空/缺省→走专业版TcLake路径。可通过 ListConnections 获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :WorkspaceId, :MaxResults, :PageToken, :FetchOption, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, workspaceid=nil, maxresults=nil, pagetoken=nil, fetchoption=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @WorkspaceId = workspaceid
          @MaxResults = maxresults
          @PageToken = pagetoken
          @FetchOption = fetchoption
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @WorkspaceId = params['WorkspaceId']
          @MaxResults = params['MaxResults']
          @PageToken = params['PageToken']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # ListViews返回参数结构体
      class ListViewsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>操作结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListViewsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListViewsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取view列表响应
      class ListViewsRsp < TencentCloud::Common::AbstractModel
        # @param Items: view列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 下页分页token
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :Items, :NextPageToken

        def initialize(items=nil, nextpagetoken=nil)
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              viewinfo_tmp = ViewInfo.new
              viewinfo_tmp.deserialize(i)
              @Items << viewinfo_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListVolumes请求参数结构体
      class ListVolumesRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema名称</p>
        # @type SchemaName: String
        # @param MaxResults: <p>获取数量</p>
        # @type MaxResults: Integer
        # @param WorkspaceId: <p>调用时所在workspace唯一id</p>
        # @type WorkspaceId: String
        # @param PageToken: <p>分页信息</p>
        # @type PageToken: String
        # @param FetchOption: <p>数据获取选项，可选，控制是否返回权限信息及按权限过滤</p>
        # @type FetchOption: :class:`Tencentcloud::Databuddy.v20260715.models.FetchOption`

        attr_accessor :CatalogName, :SchemaName, :MaxResults, :WorkspaceId, :PageToken, :FetchOption

        def initialize(catalogname=nil, schemaname=nil, maxresults=nil, workspaceid=nil, pagetoken=nil, fetchoption=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @MaxResults = maxresults
          @WorkspaceId = workspaceid
          @PageToken = pagetoken
          @FetchOption = fetchoption
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @MaxResults = params['MaxResults']
          @WorkspaceId = params['WorkspaceId']
          @PageToken = params['PageToken']
          unless params['FetchOption'].nil?
            @FetchOption = FetchOption.new
            @FetchOption.deserialize(params['FetchOption'])
          end
        end
      end

      # ListVolumes返回参数结构体
      class ListVolumesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>接口返回信息</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListVolumesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListVolumesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据卷返回信息
      class ListVolumesRsp < TencentCloud::Common::AbstractModel
        # @param Items: 数据卷信息
        # @type Items: Array
        # @param TotalCount: 总数据卷数量
        # @type TotalCount: String
        # @param NextPageToken: 分页信息
        # @type NextPageToken: String

        attr_accessor :Items, :TotalCount, :NextPageToken

        def initialize(items=nil, totalcount=nil, nextpagetoken=nil)
          @Items = items
          @TotalCount = totalcount
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              volume_tmp = Volume.new
              volume_tmp.deserialize(i)
              @Items << volume_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @NextPageToken = params['NextPageToken']
        end
      end

      # ListWorkflowRuns请求参数结构体
      class ListWorkflowRunsRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param PageNumber: <p>分页页码，从 1 开始。非必填，默认 1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小。非必填，默认 10，取值范围 [10, 200]</p>
        # @type PageSize: Integer
        # @param WorkflowId: <p>工作流ID，精确匹配。非必填，单值</p><p>取值参考：<a href="https://cloud.tencent.com/document/api/1835/138002">ListWorkflows</a> 返回值 <code>Data</code></p>
        # @type WorkflowId: String
        # @param WorkflowNameKeyword: <p>工作流名称关键字，对 WorkflowName 做模糊匹配。非必填，单值</p>
        # @type WorkflowNameKeyword: String
        # @param CreateStartTime: <p>运行创建时间下界，范围匹配（CreateTime &gt;= 本值），单位：毫秒时间戳。<br>非必填，单值，对应出参 WorkflowRun.CreateTime</p>
        # @type CreateStartTime: String
        # @param CreateEndTime: <p>运行创建时间上界，范围匹配（CreateTime &lt;= 本值），单位：毫秒时间戳。<br>非必填，单值，对应出参 WorkflowRun.CreateTime</p>
        # @type CreateEndTime: String
        # @param RunStates: <p>运行状态，精确匹配。非必填，多选（多个值之间为 OR 关系）。运行状态。CREATE(&quot;初始化&quot;), QUEUED(&quot;等待中&quot;), PENDING(&quot;准备中&quot;), RUNNING(&quot;运行中&quot;), SKIPPED(&quot;跳过运行&quot;), SUCCESS(&quot;成功&quot;), FAILED(&quot;失败&quot;), TERMINATING(&quot;终止中&quot;), TERMINATED(&quot;终止&quot;), CANCELLED(&quot;被手动终止&quot;)等</p>
        # @type RunStates: Array
        # @param ErrorCodeStrings: <p>错误码，精确匹配。非必填，多选（多个值之间为 OR 关系）</p>
        # @type ErrorCodeStrings: Array
        # @param RunUserUins: <p>运行人UIN，精确匹配。非必填，多选（多个值之间为 OR 关系）</p>
        # @type RunUserUins: Array
        # @param LabelKeyIds: <p>标签名称ID，精确匹配，可通过标签相关接口获取。非必填，多选（多个值之间为 OR 关系）</p>
        # @type LabelKeyIds: Array
        # @param LabelValueIds: <p>标签值ID，精确匹配，可通过标签相关接口获取。非必填，多选（多个值之间为 OR 关系）</p>
        # @type LabelValueIds: Array
        # @param OrderBys: <p>排序条件，多个之间按数组顺序表示优先级。非必填，默认按 CreateTime Desc。<br>可排序字段白名单：CreateTime、EndTime、RunCostTime</p>
        # @type OrderBys: Array

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :WorkflowId, :WorkflowNameKeyword, :CreateStartTime, :CreateEndTime, :RunStates, :ErrorCodeStrings, :RunUserUins, :LabelKeyIds, :LabelValueIds, :OrderBys

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, workflowid=nil, workflownamekeyword=nil, createstarttime=nil, createendtime=nil, runstates=nil, errorcodestrings=nil, runuseruins=nil, labelkeyids=nil, labelvalueids=nil, orderbys=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @WorkflowId = workflowid
          @WorkflowNameKeyword = workflownamekeyword
          @CreateStartTime = createstarttime
          @CreateEndTime = createendtime
          @RunStates = runstates
          @ErrorCodeStrings = errorcodestrings
          @RunUserUins = runuseruins
          @LabelKeyIds = labelkeyids
          @LabelValueIds = labelvalueids
          @OrderBys = orderbys
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @WorkflowId = params['WorkflowId']
          @WorkflowNameKeyword = params['WorkflowNameKeyword']
          @CreateStartTime = params['CreateStartTime']
          @CreateEndTime = params['CreateEndTime']
          @RunStates = params['RunStates']
          @ErrorCodeStrings = params['ErrorCodeStrings']
          @RunUserUins = params['RunUserUins']
          @LabelKeyIds = params['LabelKeyIds']
          @LabelValueIds = params['LabelValueIds']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
        end
      end

      # ListWorkflowRuns返回参数结构体
      class ListWorkflowRunsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>工作流运行列表响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkflowRunsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkflowRunsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListWorkflowRunsRsp
      class ListWorkflowRunsRsp < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 工作流运行列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param BizStateEnumInfos: 工作流运行状态数量统计。
        # 统计口径为当前筛选条件下的全量数据，不受 PageNumber / PageSize 影响
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizStateEnumInfos: Array
        # @param BizErrorCodeEnumInfos: 工作流运行错误码数量统计。
        # 统计口径为当前筛选条件下的全量数据，不受 PageNumber / PageSize 影响
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BizErrorCodeEnumInfos: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items, :BizStateEnumInfos, :BizErrorCodeEnumInfos

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil, bizstateenuminfos=nil, bizerrorcodeenuminfos=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
          @BizStateEnumInfos = bizstateenuminfos
          @BizErrorCodeEnumInfos = bizerrorcodeenuminfos
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workflowrun_tmp = WorkflowRun.new
              workflowrun_tmp.deserialize(i)
              @Items << workflowrun_tmp
            end
          end
          unless params['BizStateEnumInfos'].nil?
            @BizStateEnumInfos = []
            params['BizStateEnumInfos'].each do |i|
              schedulebizenumbrief_tmp = ScheduleBizEnumBrief.new
              schedulebizenumbrief_tmp.deserialize(i)
              @BizStateEnumInfos << schedulebizenumbrief_tmp
            end
          end
          unless params['BizErrorCodeEnumInfos'].nil?
            @BizErrorCodeEnumInfos = []
            params['BizErrorCodeEnumInfos'].each do |i|
              schedulebizenumbrief_tmp = ScheduleBizEnumBrief.new
              schedulebizenumbrief_tmp.deserialize(i)
              @BizErrorCodeEnumInfos << schedulebizenumbrief_tmp
            end
          end
        end
      end

      # ListWorkflowTaskRuns请求参数结构体
      class ListWorkflowTaskRunsRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param TaskId: <p>任务ID，可通过 ListWorkflowTasks 获取。非必填，精确匹配。与 WorkflowRunId 至少传一个：仅传 TaskId 时查询该任务的全部运行历史。</p>
        # @type TaskId: String
        # @param WorkflowRunId: <p>工作流运行ID，可通过 ListWorkflowRuns 获取。非必填，精确匹配。与 TaskId 至少传一个：仅传 WorkflowRunId 时查询该次工作流运行下的全部任务运行。</p>
        # @type WorkflowRunId: String
        # @param PageNumber: <p>分页页码，从 1 开始。非必填，默认 1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小。非必填，默认 10，取值范围 [10, 200]</p>
        # @type PageSize: Integer

        attr_accessor :WorkspaceId, :TaskId, :WorkflowRunId, :PageNumber, :PageSize

        def initialize(workspaceid=nil, taskid=nil, workflowrunid=nil, pagenumber=nil, pagesize=nil)
          @WorkspaceId = workspaceid
          @TaskId = taskid
          @WorkflowRunId = workflowrunid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @TaskId = params['TaskId']
          @WorkflowRunId = params['WorkflowRunId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListWorkflowTaskRuns返回参数结构体
      class ListWorkflowTaskRunsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>查询工作流任务历史运行列表响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkflowTaskRunsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkflowTaskRunsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作流任务运行列表响应。
      class ListWorkflowTaskRunsRsp < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 任务运行历史列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workflowtaskrun_tmp = WorkflowTaskRun.new
              workflowtaskrun_tmp.deserialize(i)
              @Items << workflowtaskrun_tmp
            end
          end
        end
      end

      # ListWorkflows请求参数结构体
      class ListWorkflowsRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param PageNumber: <p>分页页码，从 1 开始。非必填，默认 1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小。非必填，默认 10，取值范围 [10, 200]</p>
        # @type PageSize: Integer
        # @param WorkflowNameKeyword: <p>工作流名称关键字，对 WorkflowName 做模糊匹配。非必填，单值</p>
        # @type WorkflowNameKeyword: String
        # @param WorkflowNames: <p>工作流名称，精确匹配。非必填，多选（多个值之间为 OR 关系）</p>
        # @type WorkflowNames: Array
        # @param WorkflowIds: <p>工作流ID，精确匹配。非必填，多选（多个值之间为 OR 关系）</p><p>取值参考：<a href="https://cloud.tencent.com/document/api/1835/138002">ListWorkflows</a> 返回值 <code>Data</code></p>
        # @type WorkflowIds: Array
        # @param RunUserUins: <p>工作流运行人UIN，精确匹配。非必填，多选（多个值之间为 OR 关系）</p>
        # @type RunUserUins: Array
        # @param LabelKeyIds: <p>标签名称ID，精确匹配，可通过标签相关接口获取。非必填，多选（多个值之间为 OR 关系）</p>
        # @type LabelKeyIds: Array
        # @param LabelValueIds: <p>标签值ID，精确匹配，可通过标签相关接口获取。非必填，多选（多个值之间为 OR 关系）</p>
        # @type LabelValueIds: Array
        # @param QuickSelectionType: <p>快速筛选类型。非必填，单值，当前仅支持 MY_FAVORITE（我收藏的）</p>
        # @type QuickSelectionType: String
        # @param OrderBys: <p>排序条件，多个之间按数组顺序表示优先级。非必填。可排序字段白名单：CreateTime</p>
        # @type OrderBys: Array

        attr_accessor :WorkspaceId, :PageNumber, :PageSize, :WorkflowNameKeyword, :WorkflowNames, :WorkflowIds, :RunUserUins, :LabelKeyIds, :LabelValueIds, :QuickSelectionType, :OrderBys

        def initialize(workspaceid=nil, pagenumber=nil, pagesize=nil, workflownamekeyword=nil, workflownames=nil, workflowids=nil, runuseruins=nil, labelkeyids=nil, labelvalueids=nil, quickselectiontype=nil, orderbys=nil)
          @WorkspaceId = workspaceid
          @PageNumber = pagenumber
          @PageSize = pagesize
          @WorkflowNameKeyword = workflownamekeyword
          @WorkflowNames = workflownames
          @WorkflowIds = workflowids
          @RunUserUins = runuseruins
          @LabelKeyIds = labelkeyids
          @LabelValueIds = labelvalueids
          @QuickSelectionType = quickselectiontype
          @OrderBys = orderbys
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @WorkflowNameKeyword = params['WorkflowNameKeyword']
          @WorkflowNames = params['WorkflowNames']
          @WorkflowIds = params['WorkflowIds']
          @RunUserUins = params['RunUserUins']
          @LabelKeyIds = params['LabelKeyIds']
          @LabelValueIds = params['LabelValueIds']
          @QuickSelectionType = params['QuickSelectionType']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
        end
      end

      # ListWorkflows返回参数结构体
      class ListWorkflowsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>查询工作流列表响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkflowsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkflowsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ListWorkflowsRsp
      class ListWorkflowsRsp < TencentCloud::Common::AbstractModel
        # @param PageNumber: 当前页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPageNumber: Integer
        # @param Items: 工作流列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array

        attr_accessor :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :Items

        def initialize(pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, items=nil)
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @Items = items
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workflowbrief_tmp = WorkflowBrief.new
              workflowbrief_tmp.deserialize(i)
              @Items << workflowbrief_tmp
            end
          end
        end
      end

      # ListWorkspaceGroupUsers请求参数结构体
      class ListWorkspaceGroupUsersRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间id</p>
        # @type WorkspaceId: String
        # @param GroupId: <p>用户组ID，可通过 ListWorkspaceGroups 接口获取</p>
        # @type GroupId: String
        # @param NameKeywords: <p>关键字，支持按用户名模糊搜索</p>
        # @type NameKeywords: String
        # @param UserUins: <p>用户UIN列表，按UIN精确筛选</p>
        # @type UserUins: Array
        # @param OrderBys: <p>&quot;OrderBys&quot;: [{&quot;Name&quot;: &quot;CreateTime&quot;, &quot;Direction&quot;: &quot;DESC&quot; }]</p>
        # @type OrderBys: Array
        # @param PageNumber: <p>页码，从1开始，默认1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小</p><p>取值范围：[1, 100]</p><p>默认值：10</p>
        # @type PageSize: Integer

        attr_accessor :WorkspaceId, :GroupId, :NameKeywords, :UserUins, :OrderBys, :PageNumber, :PageSize

        def initialize(workspaceid=nil, groupid=nil, namekeywords=nil, useruins=nil, orderbys=nil, pagenumber=nil, pagesize=nil)
          @WorkspaceId = workspaceid
          @GroupId = groupid
          @NameKeywords = namekeywords
          @UserUins = useruins
          @OrderBys = orderbys
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @GroupId = params['GroupId']
          @NameKeywords = params['NameKeywords']
          @UserUins = params['UserUins']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListWorkspaceGroupUsers返回参数结构体
      class ListWorkspaceGroupUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkspaceGroupUsersRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkspaceGroupUsersRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作空间用户组用户列表响应
      class ListWorkspaceGroupUsersRsp < TencentCloud::Common::AbstractModel
        # @param Items: <p>用户列表</p>
        # @type Items: Array
        # @param PageNumber: <p>当前页码</p><p>默认值：1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小</p><p>默认值：10</p>
        # @type PageSize: Integer
        # @param TotalCount: <p>总记录数</p>
        # @type TotalCount: Integer
        # @param TotalPageNumber: <p>总页数</p>
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              groupuserinfo_tmp = GroupUserInfo.new
              groupuserinfo_tmp.deserialize(i)
              @Items << groupuserinfo_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # ListWorkspaceGroups请求参数结构体
      class ListWorkspaceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String
        # @param GroupIds: <p>通过用户组ID批量查询；用户组ID可通过 ListWorkspaceGroups 接口获取</p>
        # @type GroupIds: Array
        # @param GroupKeyword: <p>用户组名称模糊匹配</p>
        # @type GroupKeyword: String
        # @param RoleIds: <p>用于过滤角色关联的用户组；可通过 ListWorkspaceRoles 接口获取</p>
        # @type RoleIds: Array
        # @param OrderBys: <p>多字段排序，如 [{Name: 'CreateTime', Direction: 'Desc'}]；传入单个即单字段排序，默认按创建时间降序</p>
        # @type OrderBys: Array
        # @param PageNumber: <p>页码，从1开始，默认1；小于1时按1处理</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小，默认10，取值范围为 [1,100]，越界时自动收敛到边界值</p>
        # @type PageSize: Integer
        # @param GroupType: <p>用户组类型筛选。取值为枚举数值的字符串形式："0"=控制台系统类型（包含全部user）、"1"=控制台自定义类型、"2"=工作空间系统类型（包含工作空间全部user）、"3"=工作空间自定义类型</p>
        # @type GroupType: String

        attr_accessor :WorkspaceId, :GroupIds, :GroupKeyword, :RoleIds, :OrderBys, :PageNumber, :PageSize, :GroupType

        def initialize(workspaceid=nil, groupids=nil, groupkeyword=nil, roleids=nil, orderbys=nil, pagenumber=nil, pagesize=nil, grouptype=nil)
          @WorkspaceId = workspaceid
          @GroupIds = groupids
          @GroupKeyword = groupkeyword
          @RoleIds = roleids
          @OrderBys = orderbys
          @PageNumber = pagenumber
          @PageSize = pagesize
          @GroupType = grouptype
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @GroupIds = params['GroupIds']
          @GroupKeyword = params['GroupKeyword']
          @RoleIds = params['RoleIds']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @GroupType = params['GroupType']
        end
      end

      # ListWorkspaceGroups返回参数结构体
      class ListWorkspaceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>工作空间用户组列表</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkspaceGroupsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkspaceGroupsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作空间用户组列表响应
      class ListWorkspaceGroupsRsp < TencentCloud::Common::AbstractModel
        # @param Items: 用户组列表
        # @type Items: Array
        # @param PageNumber: 当前页码
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workspacegroupinfo_tmp = WorkspaceGroupInfo.new
              workspacegroupinfo_tmp.deserialize(i)
              @Items << workspacegroupinfo_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
        end
      end

      # ListWorkspaceUsers请求参数结构体
      class ListWorkspaceUsersRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String
        # @param UserKeyword: <p>用户名称或 UIN 模糊匹配</p>
        # @type UserKeyword: String
        # @param RoleIds: <p>角色ID列表，过滤角色关联的用户；可通过 ListWorkspaceRoles 接口获取</p>
        # @type RoleIds: Array
        # @param UserUins: <p>用户UIN列表，按UIN精确筛选</p>
        # @type UserUins: Array
        # @param OrderBys: <p>排序字段列表，如 [{Name: CreateTime, Direction: DESC}]；传入单个即单字段排序，默认按创建时间降序</p>
        # @type OrderBys: Array
        # @param PageNumber: <p>页码，默认1，从1开始；小于1时按1处理</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页条数，默认10，取值范围为 [1,100]，越界时自动收敛到边界值</p>
        # @type PageSize: Integer
        # @param ExtendInfo: <p>扩展信息（首次请求为空，翻页请求带响应中的ExtendInfo。连续翻页且item涉及权限过滤等场景，用于定位下次offset）</p>
        # @type ExtendInfo: String

        attr_accessor :WorkspaceId, :UserKeyword, :RoleIds, :UserUins, :OrderBys, :PageNumber, :PageSize, :ExtendInfo

        def initialize(workspaceid=nil, userkeyword=nil, roleids=nil, useruins=nil, orderbys=nil, pagenumber=nil, pagesize=nil, extendinfo=nil)
          @WorkspaceId = workspaceid
          @UserKeyword = userkeyword
          @RoleIds = roleids
          @UserUins = useruins
          @OrderBys = orderbys
          @PageNumber = pagenumber
          @PageSize = pagesize
          @ExtendInfo = extendinfo
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @UserKeyword = params['UserKeyword']
          @RoleIds = params['RoleIds']
          @UserUins = params['UserUins']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @ExtendInfo = params['ExtendInfo']
        end
      end

      # ListWorkspaceUsers返回参数结构体
      class ListWorkspaceUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>查询工作空间用户列表响应</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkspaceUsersRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkspaceUsersRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作空间用户列表响应
      class ListWorkspaceUsersRsp < TencentCloud::Common::AbstractModel
        # @param Items: 用户列表
        # @type Items: Array
        # @param PageNumber: 当前页码
        # @type PageNumber: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param TotalPageNumber: 总页数
        # @type TotalPageNumber: Integer
        # @param ExtendInfo: 扩展信息（连续翻页场景由服务端返回，下次翻页请求原样带上）
        # @type ExtendInfo: String

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :ExtendInfo

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, extendinfo=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @ExtendInfo = extendinfo
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workspaceuserinfo_tmp = WorkspaceUserInfo.new
              workspaceuserinfo_tmp.deserialize(i)
              @Items << workspaceuserinfo_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @ExtendInfo = params['ExtendInfo']
        end
      end

      # ListWorkspaces请求参数结构体
      class ListWorkspacesRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID精确匹配</p>
        # @type WorkspaceId: String
        # @param WorkspaceKeyword: <p>工作空间名称模糊匹配</p>
        # @type WorkspaceKeyword: String
        # @param StatusList: <p>工作空间状态过滤（多选）：0=未指定 1=创建中 2=创建失败 3=正常运行中 4=已删除</p>
        # @type StatusList: Array
        # @param OrderBys: <p>多字段排序，如 [{Name: 'CreateTime', Direction: 'Desc'}]；传入单个即单字段排序，默认按创建时间降序</p>
        # @type OrderBys: Array
        # @param PageNumber: <p>页码，从1开始，默认1</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小，默认10，最小10，最大100</p>
        # @type PageSize: Integer
        # @param WorkspaceRegion: <p>工作空间地域过滤（多选），如 ap-guangzhou</p>
        # @type WorkspaceRegion: Array
        # @param Creator: <p>创建者UIN过滤（多选）</p>
        # @type Creator: Array

        attr_accessor :WorkspaceId, :WorkspaceKeyword, :StatusList, :OrderBys, :PageNumber, :PageSize, :WorkspaceRegion, :Creator

        def initialize(workspaceid=nil, workspacekeyword=nil, statuslist=nil, orderbys=nil, pagenumber=nil, pagesize=nil, workspaceregion=nil, creator=nil)
          @WorkspaceId = workspaceid
          @WorkspaceKeyword = workspacekeyword
          @StatusList = statuslist
          @OrderBys = orderbys
          @PageNumber = pagenumber
          @PageSize = pagesize
          @WorkspaceRegion = workspaceregion
          @Creator = creator
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkspaceKeyword = params['WorkspaceKeyword']
          @StatusList = params['StatusList']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @WorkspaceRegion = params['WorkspaceRegion']
          @Creator = params['Creator']
        end
      end

      # ListWorkspaces返回参数结构体
      class ListWorkspacesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>工作空间列表</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.ListWorkspacesRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ListWorkspacesRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 查询工作空间列表响应
      class ListWorkspacesRsp < TencentCloud::Common::AbstractModel
        # @param Items: <p>工作空间列表</p>
        # @type Items: Array
        # @param PageNumber: <p>当前页码</p>
        # @type PageNumber: Integer
        # @param PageSize: <p>每页大小</p>
        # @type PageSize: Integer
        # @param TotalCount: <p>总记录数</p>
        # @type TotalCount: Integer
        # @param TotalPageNumber: <p>总页数</p>
        # @type TotalPageNumber: Integer
        # @param IsConsoleAdmin: <p>是否控制台管理员</p>
        # @type IsConsoleAdmin: Boolean

        attr_accessor :Items, :PageNumber, :PageSize, :TotalCount, :TotalPageNumber, :IsConsoleAdmin

        def initialize(items=nil, pagenumber=nil, pagesize=nil, totalcount=nil, totalpagenumber=nil, isconsoleadmin=nil)
          @Items = items
          @PageNumber = pagenumber
          @PageSize = pagesize
          @TotalCount = totalcount
          @TotalPageNumber = totalpagenumber
          @IsConsoleAdmin = isconsoleadmin
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              workspaceinfo_tmp = WorkspaceInfo.new
              workspaceinfo_tmp.deserialize(i)
              @Items << workspaceinfo_tmp
            end
          end
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
          @TotalCount = params['TotalCount']
          @TotalPageNumber = params['TotalPageNumber']
          @IsConsoleAdmin = params['IsConsoleAdmin']
        end
      end

      # 数值
      class Literal < TencentCloud::Common::AbstractModel
        # @param Value: 数值
        # @type Value: String
        # @param DataType: 类型
        # @type DataType: String

        attr_accessor :Value, :DataType

        def initialize(value=nil, datatype=nil)
          @Value = value
          @DataType = datatype
        end

        def deserialize(params)
          @Value = params['Value']
          @DataType = params['DataType']
        end
      end

      # 存储位置详情
      class LocationInfo < TencentCloud::Common::AbstractModel
        # @param LocationName: 存储位置名
        # @type LocationName: String
        # @param LocationUri: 存储位置URI
        # @type LocationUri: String
        # @param Comment: 存储位置描述
        # @type Comment: String
        # @param Properties: 存储位置属性
        # @type Properties: Array
        # @param Audit: 审计信息
        # @type Audit: :class:`Tencentcloud::Databuddy.v20260715.models.Audit`

        attr_accessor :LocationName, :LocationUri, :Comment, :Properties, :Audit

        def initialize(locationname=nil, locationuri=nil, comment=nil, properties=nil, audit=nil)
          @LocationName = locationname
          @LocationUri = locationuri
          @Comment = comment
          @Properties = properties
          @Audit = audit
        end

        def deserialize(params)
          @LocationName = params['LocationName']
          @LocationUri = params['LocationUri']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          unless params['Audit'].nil?
            @Audit = Audit.new
            @Audit.deserialize(params['Audit'])
          end
        end
      end

      # 更新location的操作单元，通过 UpdateType 指定操作类型
      class LocationUpdate < TencentCloud::Common::AbstractModel
        # @param UpdateType: 更新类型，取值：modify_location_name、modify_location_comment、modify_location_properties
        # @type UpdateType: String
        # @param NewComment: 新的备注，可选，UpdateType 为 modify_location_comment 时使用
        # @type NewComment: String
        # @param SetProperties: 新增/修改的属性键值对列表，可选，UpdateType 为 modify_location_properties 时使用
        # @type SetProperties: Array
        # @param RemoveProperties: 要移除的属性key列表，可选，UpdateType 为 modify_location_properties 时使用
        # @type RemoveProperties: Array
        # @param NewName: 新的名称，可选，UpdateType 为 modify_location_name 时使用
        # @type NewName: String

        attr_accessor :UpdateType, :NewComment, :SetProperties, :RemoveProperties, :NewName

        def initialize(updatetype=nil, newcomment=nil, setproperties=nil, removeproperties=nil, newname=nil)
          @UpdateType = updatetype
          @NewComment = newcomment
          @SetProperties = setproperties
          @RemoveProperties = removeproperties
          @NewName = newname
        end

        def deserialize(params)
          @UpdateType = params['UpdateType']
          @NewComment = params['NewComment']
          unless params['SetProperties'].nil?
            @SetProperties = []
            params['SetProperties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @SetProperties << kvpair_tmp
            end
          end
          @RemoveProperties = params['RemoveProperties']
          @NewName = params['NewName']
        end
      end

      # 元数据责任人信息数据结构
      class MetaOwner < TencentCloud::Common::AbstractModel
        # @param FullName: 元数据名称（全名）:catalog.schema.table
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullName: String
        # @param OwnerType: 所有者类型:User
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerType: String
        # @param Owner: 所有者:唯一标识(uin)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: String
        # @param OwnerName: 所有者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerName: String
        # @param CatalogSource: 数据目录来源，取值参考 CatalogSourceEnum：METALAKE / CONNECTION / SETATS。ListMetaOwners 走新参数 Catalogs 查询时，按入参回填；走旧参数 FullNames 查询时，按请求顶层 CatalogSource 回填（默认 METALAKE）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogSource: String

        attr_accessor :FullName, :OwnerType, :Owner, :OwnerName, :CatalogSource

        def initialize(fullname=nil, ownertype=nil, owner=nil, ownername=nil, catalogsource=nil)
          @FullName = fullname
          @OwnerType = ownertype
          @Owner = owner
          @OwnerName = ownername
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @FullName = params['FullName']
          @OwnerType = params['OwnerType']
          @Owner = params['Owner']
          @OwnerName = params['OwnerName']
          @CatalogSource = params['CatalogSource']
        end
      end

      # 模型信息
      class ModelInfo < TencentCloud::Common::AbstractModel
        # @param Name: <p>模型名称</p>
        # @type Name: String
        # @param CatalogName: <p>catalog信息</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema 信息</p>
        # @type SchemaName: String
        # @param Comment: <p>模型描述</p>
        # @type Comment: String
        # @param LatestVersion: <p>最新版本号</p>
        # @type LatestVersion: String
        # @param Properties: <p>扩展数据</p>
        # @type Properties: Array
        # @param Audit: <p>审计数据</p>
        # @type Audit: :class:`Tencentcloud::Databuddy.v20260715.models.Audit`
        # @param MetaOwner: <p>责任人信息</p>
        # @type MetaOwner: :class:`Tencentcloud::Databuddy.v20260715.models.MetaOwner`
        # @param Id: <p>id</p>
        # @type Id: String
        # @param AssetGuid: <p>资产全局唯一ID</p>
        # @type AssetGuid: String
        # @param PermissionDetail: <p>当前用户对该实体的权限信息</p>
        # @type PermissionDetail: :class:`Tencentcloud::Databuddy.v20260715.models.PermissionDetail`
        # @param Tags: <p>标签信息列表。注意：仅当请求中 FetchTags=true 时返回，默认不返回</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :Name, :CatalogName, :SchemaName, :Comment, :LatestVersion, :Properties, :Audit, :MetaOwner, :Id, :AssetGuid, :PermissionDetail, :Tags

        def initialize(name=nil, catalogname=nil, schemaname=nil, comment=nil, latestversion=nil, properties=nil, audit=nil, metaowner=nil, id=nil, assetguid=nil, permissiondetail=nil, tags=nil)
          @Name = name
          @CatalogName = catalogname
          @SchemaName = schemaname
          @Comment = comment
          @LatestVersion = latestversion
          @Properties = properties
          @Audit = audit
          @MetaOwner = metaowner
          @Id = id
          @AssetGuid = assetguid
          @PermissionDetail = permissiondetail
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @Comment = params['Comment']
          @LatestVersion = params['LatestVersion']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          unless params['Audit'].nil?
            @Audit = Audit.new
            @Audit.deserialize(params['Audit'])
          end
          unless params['MetaOwner'].nil?
            @MetaOwner = MetaOwner.new
            @MetaOwner.deserialize(params['MetaOwner'])
          end
          @Id = params['Id']
          @AssetGuid = params['AssetGuid']
          unless params['PermissionDetail'].nil?
            @PermissionDetail = PermissionDetail.new
            @PermissionDetail.deserialize(params['PermissionDetail'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              commontaginfo_tmp = CommonTagInfo.new
              commontaginfo_tmp.deserialize(i)
              @Tags << commontaginfo_tmp
            end
          end
        end
      end

      # 模型版本信息
      class ModelVersionInfo < TencentCloud::Common::AbstractModel
        # @param Version: 版本号
        # @type Version: String
        # @param Uri: 模型版本uri
        # @type Uri: String
        # @param Comment: 描述信息
        # @type Comment: String
        # @param Properties: 扩展参数
        # @type Properties: Array
        # @param Aliases: 别名
        # @type Aliases: Array
        # @param Audit: 审计信息
        # @type Audit: :class:`Tencentcloud::Databuddy.v20260715.models.Audit`
        # @param CatalogName: Catalog Name
        # @type CatalogName: String
        # @param SchemaName: Schema Name
        # @type SchemaName: String
        # @param ModelName: Model Name
        # @type ModelName: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param AssetGuid: 资产全局唯一ID
        # @type AssetGuid: String

        attr_accessor :Version, :Uri, :Comment, :Properties, :Aliases, :Audit, :CatalogName, :SchemaName, :ModelName, :Tags, :AssetGuid

        def initialize(version=nil, uri=nil, comment=nil, properties=nil, aliases=nil, audit=nil, catalogname=nil, schemaname=nil, modelname=nil, tags=nil, assetguid=nil)
          @Version = version
          @Uri = uri
          @Comment = comment
          @Properties = properties
          @Aliases = aliases
          @Audit = audit
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ModelName = modelname
          @Tags = tags
          @AssetGuid = assetguid
        end

        def deserialize(params)
          @Version = params['Version']
          @Uri = params['Uri']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          @Aliases = params['Aliases']
          unless params['Audit'].nil?
            @Audit = Audit.new
            @Audit.deserialize(params['Audit'])
          end
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ModelName = params['ModelName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              assettagvote_tmp = AssetTagVote.new
              assettagvote_tmp.deserialize(i)
              @Tags << assettagvote_tmp
            end
          end
          @AssetGuid = params['AssetGuid']
        end
      end

      # 监控指标配置
      class MonitorMetricBrief < TencentCloud::Common::AbstractModel
        # @param MonitorMetricId: 监控指标 ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorMetricId: String
        # @param AlarmMonitorType: 告警的监控对象类型，如工作流、任务等，当前支持 1. WORKFLOW 2. TASK
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmMonitorType: String
        # @param Metrics: 监控指标列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Metrics: Array

        attr_accessor :MonitorMetricId, :AlarmMonitorType, :Metrics

        def initialize(monitormetricid=nil, alarmmonitortype=nil, metrics=nil)
          @MonitorMetricId = monitormetricid
          @AlarmMonitorType = alarmmonitortype
          @Metrics = metrics
        end

        def deserialize(params)
          @MonitorMetricId = params['MonitorMetricId']
          @AlarmMonitorType = params['AlarmMonitorType']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              monitormetricitem_tmp = MonitorMetricItem.new
              monitormetricitem_tmp.deserialize(i)
              @Metrics << monitormetricitem_tmp
            end
          end
        end
      end

      # 单个监控指标
      class MonitorMetricItem < TencentCloud::Common::AbstractModel
        # @param MetricType: 监控指标类型,有三种类型：1. RUN_DURATION（运行时长）2. WAIT_DURATION（等待时长）3. COMPLETION_TIME（完成时间）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetricType: String
        # @param WarningThreshold: 警告阈值，单位为毫秒级别，对于COMPLETION_TIME:从当日时间点00:00起算
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WarningThreshold: String
        # @param TimeoutThreshold: 超时阈值，单位为毫秒级别，对于COMPLETION_TIME:从当日时间点00:00起算
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeoutThreshold: String

        attr_accessor :MetricType, :WarningThreshold, :TimeoutThreshold

        def initialize(metrictype=nil, warningthreshold=nil, timeoutthreshold=nil)
          @MetricType = metrictype
          @WarningThreshold = warningthreshold
          @TimeoutThreshold = timeoutthreshold
        end

        def deserialize(params)
          @MetricType = params['MetricType']
          @WarningThreshold = params['WarningThreshold']
          @TimeoutThreshold = params['TimeoutThreshold']
        end
      end

      # 名称标识符，用于各层级（catalog/schema/table/view等）名称列表接口的返回条目
      class NameIdentifier < TencentCloud::Common::AbstractModel
        # @param Name: <p>名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Namespace: <p>命名空间</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: Array
        # @param CatalogSource: <p>元数据来源，取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。响应体始终返回具体来源值，不会返回CATALOG_SOURCE_ALL。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogSource: String
        # @param Status: <p>TCLAKE Catalog取值：（注册中0，待测试1，连接成功2，连接失败3，删除中4，已删除5）<br>SETATS Catalog取值：（Creating=30, Available=31, Deleted=32, Scaling=33, Isolated=34, Failed=35，未知=0）</p>
        # @type Status: String

        attr_accessor :Name, :Namespace, :CatalogSource, :Status

        def initialize(name=nil, namespace=nil, catalogsource=nil, status=nil)
          @Name = name
          @Namespace = namespace
          @CatalogSource = catalogsource
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @CatalogSource = params['CatalogSource']
          @Status = params['Status']
        end
      end

      # 排序字段
      class OrderBy < TencentCloud::Common::AbstractModel
        # @param Direction: 排序方向，Asc（升序）或 Desc（降序），大小写不敏感
        # @type Direction: String
        # @param Name: 排序字段名
        # @type Name: String

        attr_accessor :Direction, :Name

        def initialize(direction=nil, name=nil)
          @Direction = direction
          @Name = name
        end

        def deserialize(params)
          @Direction = params['Direction']
          @Name = params['Name']
        end
      end

      # 责任人
      class Owner < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param UserName: 用户名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Type:  0:USER, 1:GROUP
        # @type Type: Integer

        attr_accessor :UserId, :UserName, :Type

        def initialize(userid=nil, username=nil, type=nil)
          @UserId = userid
          @UserName = username
          @Type = type
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserName = params['UserName']
          @Type = params['Type']
        end
      end

      # 参数键值对
      class ParamInfo < TencentCloud::Common::AbstractModel
        # @param ParamId: 参数ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamId: String
        # @param ParamKey: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKey: String
        # @param ParamValue: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamValue: String

        attr_accessor :ParamId, :ParamKey, :ParamValue

        def initialize(paramid=nil, paramkey=nil, paramvalue=nil)
          @ParamId = paramid
          @ParamKey = paramkey
          @ParamValue = paramvalue
        end

        def deserialize(params)
          @ParamId = params['ParamId']
          @ParamKey = params['ParamKey']
          @ParamValue = params['ParamValue']
        end
      end

      # 分区结构
      class Partitioning < TencentCloud::Common::AbstractModel
        # @param Strategy: 转换策略
        # @type Strategy: String
        # @param NumBuckets: 分桶策略参数
        # @type NumBuckets: Integer
        # @param FieldNames: 字段名称
        # @type FieldNames: Array
        # @param Width: 策略参数
        # @type Width: Integer
        # @param FieldName: 字段名称
        # @type FieldName: Array
        # @param YearPartitioning: 按年分区策略
        # @type YearPartitioning: :class:`Tencentcloud::Databuddy.v20260715.models.SingleFieldPartitioning`
        # @param MonthPartitioning: 按月分区策略
        # @type MonthPartitioning: :class:`Tencentcloud::Databuddy.v20260715.models.SingleFieldPartitioning`
        # @param DayPartitioning: 按天分区策略
        # @type DayPartitioning: :class:`Tencentcloud::Databuddy.v20260715.models.SingleFieldPartitioning`
        # @param HourPartitioning: 按小时分区策略
        # @type HourPartitioning: :class:`Tencentcloud::Databuddy.v20260715.models.SingleFieldPartitioning`
        # @param IdentityPartitioning: 按字段分区策略
        # @type IdentityPartitioning: :class:`Tencentcloud::Databuddy.v20260715.models.SingleFieldPartitioning`
        # @param ListPartitioning: 列表分区策略
        # @type ListPartitioning: :class:`Tencentcloud::Databuddy.v20260715.models.ListPartitioning`
        # @param RangePartitioning: 范围分区策略
        # @type RangePartitioning: :class:`Tencentcloud::Databuddy.v20260715.models.RangePartitioning`
        # @param BucketPartitioning: 分桶分区策略
        # @type BucketPartitioning: :class:`Tencentcloud::Databuddy.v20260715.models.BucketPartitioning`
        # @param TruncatePartitioning: 截断分区策略
        # @type TruncatePartitioning: :class:`Tencentcloud::Databuddy.v20260715.models.TruncatePartitioning`

        attr_accessor :Strategy, :NumBuckets, :FieldNames, :Width, :FieldName, :YearPartitioning, :MonthPartitioning, :DayPartitioning, :HourPartitioning, :IdentityPartitioning, :ListPartitioning, :RangePartitioning, :BucketPartitioning, :TruncatePartitioning

        def initialize(strategy=nil, numbuckets=nil, fieldnames=nil, width=nil, fieldname=nil, yearpartitioning=nil, monthpartitioning=nil, daypartitioning=nil, hourpartitioning=nil, identitypartitioning=nil, listpartitioning=nil, rangepartitioning=nil, bucketpartitioning=nil, truncatepartitioning=nil)
          @Strategy = strategy
          @NumBuckets = numbuckets
          @FieldNames = fieldnames
          @Width = width
          @FieldName = fieldname
          @YearPartitioning = yearpartitioning
          @MonthPartitioning = monthpartitioning
          @DayPartitioning = daypartitioning
          @HourPartitioning = hourpartitioning
          @IdentityPartitioning = identitypartitioning
          @ListPartitioning = listpartitioning
          @RangePartitioning = rangepartitioning
          @BucketPartitioning = bucketpartitioning
          @TruncatePartitioning = truncatepartitioning
        end

        def deserialize(params)
          @Strategy = params['Strategy']
          @NumBuckets = params['NumBuckets']
          @FieldNames = params['FieldNames']
          @Width = params['Width']
          @FieldName = params['FieldName']
          unless params['YearPartitioning'].nil?
            @YearPartitioning = SingleFieldPartitioning.new
            @YearPartitioning.deserialize(params['YearPartitioning'])
          end
          unless params['MonthPartitioning'].nil?
            @MonthPartitioning = SingleFieldPartitioning.new
            @MonthPartitioning.deserialize(params['MonthPartitioning'])
          end
          unless params['DayPartitioning'].nil?
            @DayPartitioning = SingleFieldPartitioning.new
            @DayPartitioning.deserialize(params['DayPartitioning'])
          end
          unless params['HourPartitioning'].nil?
            @HourPartitioning = SingleFieldPartitioning.new
            @HourPartitioning.deserialize(params['HourPartitioning'])
          end
          unless params['IdentityPartitioning'].nil?
            @IdentityPartitioning = SingleFieldPartitioning.new
            @IdentityPartitioning.deserialize(params['IdentityPartitioning'])
          end
          unless params['ListPartitioning'].nil?
            @ListPartitioning = ListPartitioning.new
            @ListPartitioning.deserialize(params['ListPartitioning'])
          end
          unless params['RangePartitioning'].nil?
            @RangePartitioning = RangePartitioning.new
            @RangePartitioning.deserialize(params['RangePartitioning'])
          end
          unless params['BucketPartitioning'].nil?
            @BucketPartitioning = BucketPartitioning.new
            @BucketPartitioning.deserialize(params['BucketPartitioning'])
          end
          unless params['TruncatePartitioning'].nil?
            @TruncatePartitioning = TruncatePartitioning.new
            @TruncatePartitioning.deserialize(params['TruncatePartitioning'])
          end
        end
      end

      # 实体权限信息，用于在get/list接口中返回当前用户对实体的权限列表
      class PermissionDetail < TencentCloud::Common::AbstractModel
        # @param Permissions: 当前用户对该实体拥有的权限列表
        # @type Permissions: Array
        # @param CatalogWorkspacePrivilege: catalog在工作空间上的权限信息（可选）。取值：WORKSPACE_READONLY（只读）或WORKSPACE_READWRITE（读写）
        # @type CatalogWorkspacePrivilege: String
        # @param DenyPrivilegeList: deny权限总列表（用户deny ∪ 角色deny ∪ 继承deny，已去重，已从Permissions中排除）
        # @type DenyPrivilegeList: Array

        attr_accessor :Permissions, :CatalogWorkspacePrivilege, :DenyPrivilegeList

        def initialize(permissions=nil, catalogworkspaceprivilege=nil, denyprivilegelist=nil)
          @Permissions = permissions
          @CatalogWorkspacePrivilege = catalogworkspaceprivilege
          @DenyPrivilegeList = denyprivilegelist
        end

        def deserialize(params)
          @Permissions = params['Permissions']
          @CatalogWorkspacePrivilege = params['CatalogWorkspacePrivilege']
          @DenyPrivilegeList = params['DenyPrivilegeList']
        end
      end

      # 通用bool返回
      class PlatformStatusRsp < TencentCloud::Common::AbstractModel
        # @param Status: 通用返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 范围分区
      class RangePartition < TencentCloud::Common::AbstractModel
        # @param Name: 分区名
        # @type Name: String
        # @param Lower: 下界
        # @type Lower: :class:`Tencentcloud::Databuddy.v20260715.models.Literal`
        # @param Upper: 上界
        # @type Upper: :class:`Tencentcloud::Databuddy.v20260715.models.Literal`
        # @param Properties: 属性
        # @type Properties: Array

        attr_accessor :Name, :Lower, :Upper, :Properties

        def initialize(name=nil, lower=nil, upper=nil, properties=nil)
          @Name = name
          @Lower = lower
          @Upper = upper
          @Properties = properties
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Lower'].nil?
            @Lower = Literal.new
            @Lower.deserialize(params['Lower'])
          end
          unless params['Upper'].nil?
            @Upper = Literal.new
            @Upper.deserialize(params['Upper'])
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
        end
      end

      # 范围分区策略
      class RangePartitioning < TencentCloud::Common::AbstractModel
        # @param FieldName: 分区字段
        # @type FieldName: String
        # @param Assignments: 分区
        # @type Assignments: Array

        attr_accessor :FieldName, :Assignments

        def initialize(fieldname=nil, assignments=nil)
          @FieldName = fieldname
          @Assignments = assignments
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          unless params['Assignments'].nil?
            @Assignments = []
            params['Assignments'].each do |i|
              rangepartition_tmp = RangePartition.new
              rangepartition_tmp.deserialize(i)
              @Assignments << rangepartition_tmp
            end
          end
        end
      end

      # RemoveConsoleUsers请求参数结构体
      class RemoveConsoleUsersRequest < TencentCloud::Common::AbstractModel
        # @param UserUins: <p>必填，待移除的用户 UIN 列表，单次最多10个</p>
        # @type UserUins: Array

        attr_accessor :UserUins

        def initialize(useruins=nil)
          @UserUins = useruins
        end

        def deserialize(params)
          @UserUins = params['UserUins']
        end
      end

      # RemoveConsoleUsers返回参数结构体
      class RemoveConsoleUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>批量移除控制台用户结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.RemoveConsoleUsersRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RemoveConsoleUsersRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量移除控制台用户响应
      class RemoveConsoleUsersRsp < TencentCloud::Common::AbstractModel
        # @param Status: <p>请求已完成处理；即使部分失败也为 true，逐个结果以 SuccessUins/FailItems 为准</p>
        # @type Status: Boolean
        # @param SuccessUins: <p>删除成功的用户 UIN 列表</p>
        # @type SuccessUins: Array
        # @param FailItems: <p>失败项列表（Item 为用户 UIN，FailReason 为失败原因）</p>
        # @type FailItems: Array

        attr_accessor :Status, :SuccessUins, :FailItems

        def initialize(status=nil, successuins=nil, failitems=nil)
          @Status = status
          @SuccessUins = successuins
          @FailItems = failitems
        end

        def deserialize(params)
          @Status = params['Status']
          @SuccessUins = params['SuccessUins']
          unless params['FailItems'].nil?
            @FailItems = []
            params['FailItems'].each do |i|
              commonfailitem_tmp = CommonFailItem.new
              commonfailitem_tmp.deserialize(i)
              @FailItems << commonfailitem_tmp
            end
          end
        end
      end

      # RemoveWorkspaceGroups请求参数结构体
      class RemoveWorkspaceGroupsRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: <p>用户组ID列表，可通过 ListWorkspaceGroups 接口获取</p>
        # @type GroupIds: Array
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String

        attr_accessor :GroupIds, :WorkspaceId

        def initialize(groupids=nil, workspaceid=nil)
          @GroupIds = groupids
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # RemoveWorkspaceGroups返回参数结构体
      class RemoveWorkspaceGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>移除工作空间用户组是否成功</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.PlatformStatusRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PlatformStatusRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # RemoveWorkspaceUsers请求参数结构体
      class RemoveWorkspaceUsersRequest < TencentCloud::Common::AbstractModel
        # @param UserUins: <p>必填，待移除的用户 UIN 列表，用户 UIN 可通过 ListWorkspaceUsers 接口获取，单次最多10个</p>
        # @type UserUins: Array
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String

        attr_accessor :UserUins, :WorkspaceId

        def initialize(useruins=nil, workspaceid=nil)
          @UserUins = useruins
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @UserUins = params['UserUins']
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # RemoveWorkspaceUsers返回参数结构体
      class RemoveWorkspaceUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>批量移除工作空间用户结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.RemoveWorkspaceUsersRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = RemoveWorkspaceUsersRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 批量移除工作空间用户响应
      class RemoveWorkspaceUsersRsp < TencentCloud::Common::AbstractModel
        # @param Status: <p>请求已完成处理；即使部分失败也为 true，逐个结果以 SuccessUins/FailItems 为准</p>
        # @type Status: Boolean
        # @param SuccessUins: <p>移除成功的用户 UIN 列表</p>
        # @type SuccessUins: Array
        # @param FailItems: <p>失败项列表（Item 为用户 UIN，FailReason 为失败原因）</p>
        # @type FailItems: Array

        attr_accessor :Status, :SuccessUins, :FailItems

        def initialize(status=nil, successuins=nil, failitems=nil)
          @Status = status
          @SuccessUins = successuins
          @FailItems = failitems
        end

        def deserialize(params)
          @Status = params['Status']
          @SuccessUins = params['SuccessUins']
          unless params['FailItems'].nil?
            @FailItems = []
            params['FailItems'].each do |i|
              commonfailitem_tmp = CommonFailItem.new
              commonfailitem_tmp.deserialize(i)
              @FailItems << commonfailitem_tmp
            end
          end
        end
      end

      # RerunWorkflowRun请求参数结构体
      class RerunWorkflowRunRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String
        # @param WorkflowRunId: <p>工作流运行ID，可通过 ListWorkflowRuns 获取。必填</p>
        # @type WorkflowRunId: String
        # @param RunType: <p>运行类型。必填。取值：1 普通运行，2 高级运行</p>
        # @type RunType: Integer
        # @param AdvancedParams: <p>运行类型为高级运行时填写的自定义运行参数</p>
        # @type AdvancedParams: Array
        # @param TaskIds: <p>本次需要重跑指定的任务ID集合，可通过 ListWorkflowTasks 获取，不传默认重跑该工作流下所有任务</p>
        # @type TaskIds: Array
        # @param ScheduledTimeConfig: <p>计划调度时间列表配置</p>
        # @type ScheduledTimeConfig: :class:`Tencentcloud::Databuddy.v20260715.models.ScheduledTimeConfig`

        attr_accessor :WorkspaceId, :WorkflowId, :WorkflowRunId, :RunType, :AdvancedParams, :TaskIds, :ScheduledTimeConfig

        def initialize(workspaceid=nil, workflowid=nil, workflowrunid=nil, runtype=nil, advancedparams=nil, taskids=nil, scheduledtimeconfig=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @WorkflowRunId = workflowrunid
          @RunType = runtype
          @AdvancedParams = advancedparams
          @TaskIds = taskids
          @ScheduledTimeConfig = scheduledtimeconfig
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunId = params['WorkflowRunId']
          @RunType = params['RunType']
          unless params['AdvancedParams'].nil?
            @AdvancedParams = []
            params['AdvancedParams'].each do |i|
              taskschedulingparameterbrief_tmp = TaskSchedulingParameterBrief.new
              taskschedulingparameterbrief_tmp.deserialize(i)
              @AdvancedParams << taskschedulingparameterbrief_tmp
            end
          end
          @TaskIds = params['TaskIds']
          unless params['ScheduledTimeConfig'].nil?
            @ScheduledTimeConfig = ScheduledTimeConfig.new
            @ScheduledTimeConfig.deserialize(params['ScheduledTimeConfig'])
          end
        end
      end

      # RerunWorkflowRun返回参数结构体
      class RerunWorkflowRunResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>重跑工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.AsyncActionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AsyncActionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 资源组信息
      class ResourceGroupInfo < TencentCloud::Common::AbstractModel
        # @param ResourceGroupId: <p>资源组ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceGroupName: <p>资源组名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param ResourceGroupStatus: <p>资源组状态</p><p>参数格式：0 // 未指定 1 // 待创建 2 // 创建中 3 // 运行中 4 // 已停止 5 // 停止中 6 // 启动中 7 // 更新中 8 // 删除中 9 // 已删除 10 // 用户主动启动 / 自动启动（有任务提交且自动启停开启） 11 // 可用: 仅存在于数据计算型 12 // 不可用: 仅存在于数据计算型 13 // 失败</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupStatus: String

        attr_accessor :ResourceGroupId, :ResourceGroupName, :ResourceGroupStatus

        def initialize(resourcegroupid=nil, resourcegroupname=nil, resourcegroupstatus=nil)
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
          @ResourceGroupStatus = resourcegroupstatus
        end

        def deserialize(params)
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
          @ResourceGroupStatus = params['ResourceGroupStatus']
        end
      end

      # 角色基础信息
      class RoleBasicInfo < TencentCloud::Common::AbstractModel
        # @param Id: <p>角色ID，可通过 ListWorkspaceRoles / ListConsoleRoles 接口获取；创建/更新角色时无需填写（由系统自动生成，创建成功后从响应 Data.RoleId 获取）</p>
        # @type Id: String
        # @param Name: <p>角色名称</p>
        # @type Name: String
        # @param Description: <p>角色描述</p>
        # @type Description: String
        # @param DisplayName: <p>显示名称</p>
        # @type DisplayName: String
        # @param RoleType: <p>角色类型：workspace=工作空间系统角色，workspace_custom=工作空间自定义角色，console=控制台角色；查询时返回，创建时无需填写（系统固定创建自定义角色）</p>
        # @type RoleType: String
        # @param Source: <p>角色来源（查询侧字段，创建时无需填写）：0=未指定，1=用户直绑，2=用户组继承，3=两者都有</p>
        # @type Source: Integer
        # @param GroupNames: <p>继承来源的用户组名称列表（查询侧字段，创建时无需填写），Source=1 时为空</p>
        # @type GroupNames: Array

        attr_accessor :Id, :Name, :Description, :DisplayName, :RoleType, :Source, :GroupNames

        def initialize(id=nil, name=nil, description=nil, displayname=nil, roletype=nil, source=nil, groupnames=nil)
          @Id = id
          @Name = name
          @Description = description
          @DisplayName = displayname
          @RoleType = roletype
          @Source = source
          @GroupNames = groupnames
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Description = params['Description']
          @DisplayName = params['DisplayName']
          @RoleType = params['RoleType']
          @Source = params['Source']
          @GroupNames = params['GroupNames']
        end
      end

      # 角色元数据
      class RoleMetaData < TencentCloud::Common::AbstractModel
        # @param Creator: 创建者
        # @type Creator: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param Updater: 更新者
        # @type Updater: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String

        attr_accessor :Creator, :CreateTime, :Updater, :UpdateTime

        def initialize(creator=nil, createtime=nil, updater=nil, updatetime=nil)
          @Creator = creator
          @CreateTime = createtime
          @Updater = updater
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Creator = params['Creator']
          @CreateTime = params['CreateTime']
          @Updater = params['Updater']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 角色权限
      class RolePermission < TencentCloud::Common::AbstractModel
        # @param ModuleId: <p>模块ID，须为当前租户已开通的功能模块（叶子节点）的模块ID（层级编码字符串，如 101=快速开始、109=工作流、116101103=工作空间管理_角色权限），非法值返回 InvalidParameterValue。模块清单获取方式：调用 ListWorkspaceModules 接口查询工作空间模块列表，取返回 Items[].ModuleId 字段（IsLeaf 为 true 的叶子节点）；也可通过控制台「工作空间设置-角色权限」页面查看</p>
        # @type ModuleId: String
        # @param Permissions: <p>模块访问权限，单值：R=只读，RW=读写，RWD=读写删除，N=无权限</p>
        # @type Permissions: String

        attr_accessor :ModuleId, :Permissions

        def initialize(moduleid=nil, permissions=nil)
          @ModuleId = moduleid
          @Permissions = permissions
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @Permissions = params['Permissions']
        end
      end

      # 单个操作项的执行结果。 由 RunWorkflow / RerunWorkflowRun / KillWorkflowRun 共用： RunWorkflow—— WorkflowId / WorkflowName 有值，WorkflowRunId 为空 RerunWorkflowRun —— WorkflowId / WorkflowName / WorkflowRunId 均有值 KillWorkflowRun  —— WorkflowId / WorkflowName / WorkflowRunId 均有值
      class RunActionBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param RunActionId: 操作动作ID，用于追踪具体的执行动作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunActionId: String
        # @param ErrorMessage: 失败错误信息，操作失败时返回具体的错误描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMessage: String
        # @param OpStatus: 操作状态，true 表示成功，false 表示失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpStatus: Boolean
        # @param WorkflowRunId: 工作流运行ID。重跑 / 终止场景返回被操作的运行ID；运行工作流场景为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String

        attr_accessor :WorkflowId, :WorkflowName, :RunActionId, :ErrorMessage, :OpStatus, :WorkflowRunId

        def initialize(workflowid=nil, workflowname=nil, runactionid=nil, errormessage=nil, opstatus=nil, workflowrunid=nil)
          @WorkflowId = workflowid
          @WorkflowName = workflowname
          @RunActionId = runactionid
          @ErrorMessage = errormessage
          @OpStatus = opstatus
          @WorkflowRunId = workflowrunid
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @WorkflowName = params['WorkflowName']
          @RunActionId = params['RunActionId']
          @ErrorMessage = params['ErrorMessage']
          @OpStatus = params['OpStatus']
          @WorkflowRunId = params['WorkflowRunId']
        end
      end

      # RunWorkflow请求参数结构体
      class RunWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String
        # @param RunType: <p>运行类型。必填。取值：1 普通运行，2 高级运行</p>
        # @type RunType: Integer
        # @param AdvancedParams: <p>运行类型为高级运行时填写的自定义运行参数</p>
        # @type AdvancedParams: Array
        # @param TaskIds: <p>本次需要运行指定的任务ID集合，可通过 ListWorkflowTasks 获取，不传默认运行该工作流下所有任务</p>
        # @type TaskIds: Array
        # @param IdempotencyToken: <p>幂等令牌。非必填，相同令牌的重复请求只会触发一次运行</p>
        # @type IdempotencyToken: String
        # @param ScheduledTimeConfig: <p>计划调度时间列表配置</p>
        # @type ScheduledTimeConfig: :class:`Tencentcloud::Databuddy.v20260715.models.ScheduledTimeConfig`

        attr_accessor :WorkspaceId, :WorkflowId, :RunType, :AdvancedParams, :TaskIds, :IdempotencyToken, :ScheduledTimeConfig

        def initialize(workspaceid=nil, workflowid=nil, runtype=nil, advancedparams=nil, taskids=nil, idempotencytoken=nil, scheduledtimeconfig=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @RunType = runtype
          @AdvancedParams = advancedparams
          @TaskIds = taskids
          @IdempotencyToken = idempotencytoken
          @ScheduledTimeConfig = scheduledtimeconfig
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @RunType = params['RunType']
          unless params['AdvancedParams'].nil?
            @AdvancedParams = []
            params['AdvancedParams'].each do |i|
              taskschedulingparameterbrief_tmp = TaskSchedulingParameterBrief.new
              taskschedulingparameterbrief_tmp.deserialize(i)
              @AdvancedParams << taskschedulingparameterbrief_tmp
            end
          end
          @TaskIds = params['TaskIds']
          @IdempotencyToken = params['IdempotencyToken']
          unless params['ScheduledTimeConfig'].nil?
            @ScheduledTimeConfig = ScheduledTimeConfig.new
            @ScheduledTimeConfig.deserialize(params['ScheduledTimeConfig'])
          end
        end
      end

      # RunWorkflow返回参数结构体
      class RunWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>运行工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.AsyncActionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = AsyncActionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 枚举项统计（如运行状态、错误码的数量分布）
      class ScheduleBizEnumBrief < TencentCloud::Common::AbstractModel
        # @param LabelKey: 枚举标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelKey: String
        # @param LabelValue: 枚举标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelValue: String
        # @param Count: 枚举项统计数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer

        attr_accessor :LabelKey, :LabelValue, :Count

        def initialize(labelkey=nil, labelvalue=nil, count=nil)
          @LabelKey = labelkey
          @LabelValue = labelvalue
          @Count = count
        end

        def deserialize(params)
          @LabelKey = params['LabelKey']
          @LabelValue = params['LabelValue']
          @Count = params['Count']
        end
      end

      # 计划调度时间配置
      class ScheduledTimeConfig < TencentCloud::Common::AbstractModel
        # @param ScheduledTimeZone: <p>调度时区，IANA 时区 ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduledTimeZone: String
        # @param StartTime: <p>调度生效开始时间</p><p>参数格式：毫秒时间戳（UTC）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: <p>调度生效结束时间</p><p>参数格式：毫秒时间戳（UTC）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param CycleType: <p>周期类型</p><p>枚举值：</p><ul><li>DAY_CYCLE： 天</li><li>HOUR_CYCLE： 小时</li><li>MINUTE_CYCLE： 分钟</li><li>WEEK_CYCLE： 周</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param CycleNum: <p>周期步长</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleNum: Integer

        attr_accessor :ScheduledTimeZone, :StartTime, :EndTime, :CycleType, :CycleNum

        def initialize(scheduledtimezone=nil, starttime=nil, endtime=nil, cycletype=nil, cyclenum=nil)
          @ScheduledTimeZone = scheduledtimezone
          @StartTime = starttime
          @EndTime = endtime
          @CycleType = cycletype
          @CycleNum = cyclenum
        end

        def deserialize(params)
          @ScheduledTimeZone = params['ScheduledTimeZone']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CycleType = params['CycleType']
          @CycleNum = params['CycleNum']
        end
      end

      # Schema信息
      class Schema < TencentCloud::Common::AbstractModel
        # @param Name: <p>schema名称</p>
        # @type Name: String
        # @param Comment: <p>描述。注意：此字段可能返回null，表示取不到有效值</p>
        # @type Comment: String
        # @param Properties: <p>属性。注意：此字段可能返回null，表示取不到有效值</p>
        # @type Properties: Array
        # @param Audit: <p>审计信息。注意：此字段可能返回null，表示取不到有效值</p>
        # @type Audit: :class:`Tencentcloud::Databuddy.v20260715.models.Audit`
        # @param MetaOwner: <p>owner信息</p>
        # @type MetaOwner: :class:`Tencentcloud::Databuddy.v20260715.models.MetaOwner`
        # @param AssetGuid: <p>资产全局唯一ID，通过WedataAssetUIDUtils.generateUID生成</p>
        # @type AssetGuid: String
        # @param PermissionDetail: <p>当前用户对该schema的权限信息。注意：此字段可能返回null，请求中未开启FetchPermissions时不返回</p>
        # @type PermissionDetail: :class:`Tencentcloud::Databuddy.v20260715.models.PermissionDetail`
        # @param Tags: <p>标签信息列表。注意：此字段可能返回null，请求中未开启FetchTags时不返回</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :Name, :Comment, :Properties, :Audit, :MetaOwner, :AssetGuid, :PermissionDetail, :Tags

        def initialize(name=nil, comment=nil, properties=nil, audit=nil, metaowner=nil, assetguid=nil, permissiondetail=nil, tags=nil)
          @Name = name
          @Comment = comment
          @Properties = properties
          @Audit = audit
          @MetaOwner = metaowner
          @AssetGuid = assetguid
          @PermissionDetail = permissiondetail
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          unless params['Audit'].nil?
            @Audit = Audit.new
            @Audit.deserialize(params['Audit'])
          end
          unless params['MetaOwner'].nil?
            @MetaOwner = MetaOwner.new
            @MetaOwner.deserialize(params['MetaOwner'])
          end
          @AssetGuid = params['AssetGuid']
          unless params['PermissionDetail'].nil?
            @PermissionDetail = PermissionDetail.new
            @PermissionDetail.deserialize(params['PermissionDetail'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              commontaginfo_tmp = CommonTagInfo.new
              commontaginfo_tmp.deserialize(i)
              @Tags << commontaginfo_tmp
            end
          end
        end
      end

      # SearchAsset请求参数结构体
      class SearchAssetRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String
        # @param MaxResults: <p>最大结果条数，默认30，可选30～50</p>
        # @type MaxResults: Integer
        # @param Keyword: <p>关键字</p>
        # @type Keyword: String
        # @param AssetTypes: <p>资产类型列表，类型参见ListEntityTypeMetas的返回</p>
        # @type AssetTypes: Array
        # @param PageToken: <p>分页token信息，取上一页返回NextPageToken</p>
        # @type PageToken: String
        # @param Owner: <p>按资产负责人检索</p><ul><li>my 我负责的(包含my时其他uin不生效)</li><li>uin 指定用户uin</li></ul>
        # @type Owner: Array
        # @param TagIds: <p>标签IDs，可通过 ListTags 获取</p>
        # @type TagIds: Array
        # @param TagValueIds: <p>标签值IDs，可通过 ListTags 获取</p>
        # @type TagValueIds: Array
        # @param ModifiedTime: <p>更新时间，13位时间戳</p>
        # @type ModifiedTime: String
        # @param CatalogNames: <p>数据目录列表</p>
        # @type CatalogNames: Array
        # @param WorkspacePaths: <p>工作空间路径筛选(非catalog类资产)</p>
        # @type WorkspacePaths: Array
        # @param EnableHybridSearch: <p>是否开启混合搜索</p>
        # @type EnableHybridSearch: Boolean
        # @param FieldTagIds: <p>字段标签ID列表（可选）。使用场景：根据字段上打的标签检索资产（表），返回包含该字段标签的资产。与 TagIds 的区别：TagIds 是表级标签过滤，FieldTagIds 是字段级标签过滤。规格要求：int64 数组，最多支持 20 个标签 ID 同时过滤。可通过 ListTags 获取</p>
        # @type FieldTagIds: Array
        # @param OrderBys: <p>排序，为空时默认按相关度倒排序</p><p>Name:<br>PopularityQuantity 热度</p><p>Direction:<br>Desc 降序<br>Asc 升序</p>
        # @type OrderBys: Array

        attr_accessor :WorkspaceId, :MaxResults, :Keyword, :AssetTypes, :PageToken, :Owner, :TagIds, :TagValueIds, :ModifiedTime, :CatalogNames, :WorkspacePaths, :EnableHybridSearch, :FieldTagIds, :OrderBys

        def initialize(workspaceid=nil, maxresults=nil, keyword=nil, assettypes=nil, pagetoken=nil, owner=nil, tagids=nil, tagvalueids=nil, modifiedtime=nil, catalognames=nil, workspacepaths=nil, enablehybridsearch=nil, fieldtagids=nil, orderbys=nil)
          @WorkspaceId = workspaceid
          @MaxResults = maxresults
          @Keyword = keyword
          @AssetTypes = assettypes
          @PageToken = pagetoken
          @Owner = owner
          @TagIds = tagids
          @TagValueIds = tagvalueids
          @ModifiedTime = modifiedtime
          @CatalogNames = catalognames
          @WorkspacePaths = workspacepaths
          @EnableHybridSearch = enablehybridsearch
          @FieldTagIds = fieldtagids
          @OrderBys = orderbys
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @MaxResults = params['MaxResults']
          @Keyword = params['Keyword']
          @AssetTypes = params['AssetTypes']
          @PageToken = params['PageToken']
          @Owner = params['Owner']
          @TagIds = params['TagIds']
          @TagValueIds = params['TagValueIds']
          @ModifiedTime = params['ModifiedTime']
          @CatalogNames = params['CatalogNames']
          @WorkspacePaths = params['WorkspacePaths']
          @EnableHybridSearch = params['EnableHybridSearch']
          @FieldTagIds = params['FieldTagIds']
          unless params['OrderBys'].nil?
            @OrderBys = []
            params['OrderBys'].each do |i|
              orderby_tmp = OrderBy.new
              orderby_tmp.deserialize(i)
              @OrderBys << orderby_tmp
            end
          end
        end
      end

      # SearchAsset返回参数结构体
      class SearchAssetResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.SearchAssetRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = SearchAssetRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 统一搜索出参
      class SearchAssetRsp < TencentCloud::Common::AbstractModel
        # @param Items: 结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param NextPageToken: 分页token，不为空时表示还有下一页数据，作为参数PageToken传递
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextPageToken: String

        attr_accessor :Items, :NextPageToken

        def initialize(items=nil, nextpagetoken=nil)
          @Items = items
          @NextPageToken = nextpagetoken
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              searchresult_tmp = SearchResult.new
              searchresult_tmp.deserialize(i)
              @Items << searchresult_tmp
            end
          end
          @NextPageToken = params['NextPageToken']
        end
      end

      # 统一搜索返回结果
      class SearchResult < TencentCloud::Common::AbstractModel
        # @param FullName: <p>资产全名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FullName: String
        # @param AssetGuid: <p>资产全局ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetGuid: String
        # @param AssetId: <p>各资产类别下的唯一ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetId: String
        # @param AssetName: <p>资产名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetName: String
        # @param AssetType: <p>资产类型，参见ListEntityTypeMetas返回的EntityType</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetType: String
        # @param UserActivityInfo: <p>用户活动</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserActivityInfo: :class:`Tencentcloud::Databuddy.v20260715.models.UserActivityInfo`
        # @param Popularity: <p>热度，值范围：[1,2,3,4]</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Popularity: String
        # @param Tags: <p>资产标签</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Owner: <p>责任人</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Owner: :class:`Tencentcloud::Databuddy.v20260715.models.Owner`
        # @param ModifiedTime: <p>最近更新时间，毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiedTime: String
        # @param Comment: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param WorkspaceId: <p>工作空间ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param WorkspaceFolderPath: <p>工作空间文件夹路径（废弃）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceFolderPath: String
        # @param Highlighting: <p>高亮(废弃)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Highlighting: Array
        # @param Properties: <p>各类资产扩展信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param WorkspacePath: <p>工作空间文件夹路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspacePath: String
        # @param FieldInfo: <p>字段信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldInfo: Array
        # @param SignalLevel: <p>废弃</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SignalLevel: String
        # @param PopularityQuantity: <p>热度值</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PopularityQuantity: String
        # @param HighlightingInfo: <p>高亮</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighlightingInfo: :class:`Tencentcloud::Databuddy.v20260715.models.HighlightingInfo`
        # @param FieldTags: <p>字段标签列表，返回资产下所有字段上打的标签信息，用于展示字段级标签；每项包含 LabelId、LabelName、LabelType、FieldName、FieldType</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FieldTags: Array
        # @param Aliases: <p>资产别名列表。使用场景：仅指标、语义模型等业务资产支持多别名，其他资产类型返回空列表。前端可选择在资产名后面以【别名1、别名2】的形式展示</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Aliases: Array
        # @param CatalogSource: <p>资产元数据来源。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。仅catalog类资产（CATALOG/SCHEMA/TABLE/VIEW/MODEL/VOLUME/FUNCTION/TABLE_COLUMN）返回该字段，非catalog类资产该字段为空字符串。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogSource: String

        attr_accessor :FullName, :AssetGuid, :AssetId, :AssetName, :AssetType, :UserActivityInfo, :Popularity, :Tags, :Owner, :ModifiedTime, :Comment, :WorkspaceId, :WorkspaceFolderPath, :Highlighting, :Properties, :WorkspacePath, :FieldInfo, :SignalLevel, :PopularityQuantity, :HighlightingInfo, :FieldTags, :Aliases, :CatalogSource

        def initialize(fullname=nil, assetguid=nil, assetid=nil, assetname=nil, assettype=nil, useractivityinfo=nil, popularity=nil, tags=nil, owner=nil, modifiedtime=nil, comment=nil, workspaceid=nil, workspacefolderpath=nil, highlighting=nil, properties=nil, workspacepath=nil, fieldinfo=nil, signallevel=nil, popularityquantity=nil, highlightinginfo=nil, fieldtags=nil, aliases=nil, catalogsource=nil)
          @FullName = fullname
          @AssetGuid = assetguid
          @AssetId = assetid
          @AssetName = assetname
          @AssetType = assettype
          @UserActivityInfo = useractivityinfo
          @Popularity = popularity
          @Tags = tags
          @Owner = owner
          @ModifiedTime = modifiedtime
          @Comment = comment
          @WorkspaceId = workspaceid
          @WorkspaceFolderPath = workspacefolderpath
          @Highlighting = highlighting
          @Properties = properties
          @WorkspacePath = workspacepath
          @FieldInfo = fieldinfo
          @SignalLevel = signallevel
          @PopularityQuantity = popularityquantity
          @HighlightingInfo = highlightinginfo
          @FieldTags = fieldtags
          @Aliases = aliases
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @FullName = params['FullName']
          @AssetGuid = params['AssetGuid']
          @AssetId = params['AssetId']
          @AssetName = params['AssetName']
          @AssetType = params['AssetType']
          unless params['UserActivityInfo'].nil?
            @UserActivityInfo = UserActivityInfo.new
            @UserActivityInfo.deserialize(params['UserActivityInfo'])
          end
          @Popularity = params['Popularity']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          unless params['Owner'].nil?
            @Owner = Owner.new
            @Owner.deserialize(params['Owner'])
          end
          @ModifiedTime = params['ModifiedTime']
          @Comment = params['Comment']
          @WorkspaceId = params['WorkspaceId']
          @WorkspaceFolderPath = params['WorkspaceFolderPath']
          unless params['Highlighting'].nil?
            @Highlighting = []
            params['Highlighting'].each do |i|
              highlighting_tmp = Highlighting.new
              highlighting_tmp.deserialize(i)
              @Highlighting << highlighting_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          @WorkspacePath = params['WorkspacePath']
          unless params['FieldInfo'].nil?
            @FieldInfo = []
            params['FieldInfo'].each do |i|
              fieldinfo_tmp = FieldInfo.new
              fieldinfo_tmp.deserialize(i)
              @FieldInfo << fieldinfo_tmp
            end
          end
          @SignalLevel = params['SignalLevel']
          @PopularityQuantity = params['PopularityQuantity']
          unless params['HighlightingInfo'].nil?
            @HighlightingInfo = HighlightingInfo.new
            @HighlightingInfo.deserialize(params['HighlightingInfo'])
          end
          unless params['FieldTags'].nil?
            @FieldTags = []
            params['FieldTags'].each do |i|
              fieldtaginfo_tmp = FieldTagInfo.new
              fieldtaginfo_tmp.deserialize(i)
              @FieldTags << fieldtaginfo_tmp
            end
          end
          @Aliases = params['Aliases']
          @CatalogSource = params['CatalogSource']
        end
      end

      # 单字段分区
      class SingleFieldPartitioning < TencentCloud::Common::AbstractModel
        # @param FieldName: 分区字段
        # @type FieldName: String

        attr_accessor :FieldName

        def initialize(fieldname=nil)
          @FieldName = fieldname
        end

        def deserialize(params)
          @FieldName = params['FieldName']
        end
      end

      # git检出规则
      class SparseCheckoutConfig < TencentCloud::Common::AbstractModel
        # @param Enabled: <p>是否启用稀疏检出</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Enabled: Boolean
        # @param ConeMode: <p>是否使用 cone 模式（推荐 true，按目录匹配更高效）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConeMode: Boolean
        # @param Patterns: <p>稀疏检出路径列表（如 [&quot;src/module-a/&quot;, &quot;docs/&quot;]）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Patterns: Array

        attr_accessor :Enabled, :ConeMode, :Patterns

        def initialize(enabled=nil, conemode=nil, patterns=nil)
          @Enabled = enabled
          @ConeMode = conemode
          @Patterns = patterns
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @ConeMode = params['ConeMode']
          @Patterns = params['Patterns']
        end
      end

      # 用户基础展示信息
      class StandardUserInfo < TencentCloud::Common::AbstractModel
        # @param UserUin: 用户UIN
        # @type UserUin: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Nickname: 昵称
        # @type Nickname: String
        # @param UserTag: 0: 普通用户 1: entraId用户
        # @type UserTag: String

        attr_accessor :UserUin, :UserName, :Nickname, :UserTag

        def initialize(useruin=nil, username=nil, nickname=nil, usertag=nil)
          @UserUin = useruin
          @UserName = username
          @Nickname = nickname
          @UserTag = usertag
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @UserName = params['UserName']
          @Nickname = params['Nickname']
          @UserTag = params['UserTag']
        end
      end

      # StartCompute请求参数结构体
      class StartComputeRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间 ID
        # @type WorkspaceId: String
        # @param ComputeResourceId: 计算资源 ID，可通过 ListComputes 接口获取（返回字段 Items[].BasicInfo.ResourceId）。替代已废弃的 ResourceId；过渡期 ComputeResourceId 与 ResourceId 至少传一个，同时传时必须一致
        # @type ComputeResourceId: String
        # @param ResourceId: [已废弃，请使用 ComputeResourceId] 计算资源 ID，可通过 ListComputes 接口获取（返回字段 Items[].BasicInfo.ResourceId）
        # @type ResourceId: String

        attr_accessor :WorkspaceId, :ComputeResourceId, :ResourceId

        def initialize(workspaceid=nil, computeresourceid=nil, resourceid=nil)
          @WorkspaceId = workspaceid
          @ComputeResourceId = computeresourceid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ComputeResourceId = params['ComputeResourceId']
          @ResourceId = params['ResourceId']
        end
      end

      # StartCompute返回参数结构体
      class StartComputeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 启动计算资源返回结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.StartComputeRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = StartComputeRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 启动计算资源返回结果
      class StartComputeRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # StopCompute请求参数结构体
      class StopComputeRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间 ID
        # @type WorkspaceId: String
        # @param ComputeResourceId: 计算资源 ID，可通过 ListComputes 接口获取（返回字段 Items[].BasicInfo.ResourceId）。替代已废弃的 ResourceId；过渡期 ComputeResourceId 与 ResourceId 至少传一个，同时传时必须一致
        # @type ComputeResourceId: String
        # @param ResourceId: [已废弃，请使用 ComputeResourceId] 计算资源 ID，可通过 ListComputes 接口获取（返回字段 Items[].BasicInfo.ResourceId）
        # @type ResourceId: String

        attr_accessor :WorkspaceId, :ComputeResourceId, :ResourceId

        def initialize(workspaceid=nil, computeresourceid=nil, resourceid=nil)
          @WorkspaceId = workspaceid
          @ComputeResourceId = computeresourceid
          @ResourceId = resourceid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @ComputeResourceId = params['ComputeResourceId']
          @ResourceId = params['ResourceId']
        end
      end

      # StopCompute返回参数结构体
      class StopComputeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 停止计算资源返回结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.StopComputeRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = StopComputeRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 停止计算资源返回结果
      class StopComputeRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 表信息
      class TableInfo < TencentCloud::Common::AbstractModel
        # @param Name: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Comment: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Columns: 字段信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Properties: 属性值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param Partitioning: 分区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Partitioning: Array
        # @param Indexes: 索引
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Indexes: Array
        # @param Audit: 编辑者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Audit: :class:`Tencentcloud::Databuddy.v20260715.models.Audit`
        # @param TableFormat: 表版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableFormat: String
        # @param MetaOwner: owner信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaOwner: :class:`Tencentcloud::Databuddy.v20260715.models.MetaOwner`
        # @param AssetGuid: 资产全局唯一ID
        # @type AssetGuid: String
        # @param FilesCount: 总文件数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilesCount: String
        # @param FilesSize: 总数据量大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FilesSize: String
        # @param TableType: 表类型

        # - Managed 内部
        # - External 外部
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableType: String
        # @param FeatureTableType: 特征表类型：Online-在线表 Offline-离线表 空字符串-非特征表
        # @type FeatureTableType: String
        # @param FeatureTableDetail: 特征表详细信息，仅当FeatureTableType不为空时有值
        # @type FeatureTableDetail: :class:`Tencentcloud::Databuddy.v20260715.models.FeatureTableDetail`
        # @param PermissionDetail: 当前用户对该实体的权限信息
        # @type PermissionDetail: :class:`Tencentcloud::Databuddy.v20260715.models.PermissionDetail`
        # @param Tags: 表级标签列表，仅当请求中FetchOption.FetchTags=true时返回，默认不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :Name, :Comment, :Columns, :Properties, :Partitioning, :Indexes, :Audit, :TableFormat, :MetaOwner, :AssetGuid, :FilesCount, :FilesSize, :TableType, :FeatureTableType, :FeatureTableDetail, :PermissionDetail, :Tags

        def initialize(name=nil, comment=nil, columns=nil, properties=nil, partitioning=nil, indexes=nil, audit=nil, tableformat=nil, metaowner=nil, assetguid=nil, filescount=nil, filessize=nil, tabletype=nil, featuretabletype=nil, featuretabledetail=nil, permissiondetail=nil, tags=nil)
          @Name = name
          @Comment = comment
          @Columns = columns
          @Properties = properties
          @Partitioning = partitioning
          @Indexes = indexes
          @Audit = audit
          @TableFormat = tableformat
          @MetaOwner = metaowner
          @AssetGuid = assetguid
          @FilesCount = filescount
          @FilesSize = filessize
          @TableType = tabletype
          @FeatureTableType = featuretabletype
          @FeatureTableDetail = featuretabledetail
          @PermissionDetail = permissiondetail
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              columninfo_tmp = ColumnInfo.new
              columninfo_tmp.deserialize(i)
              @Columns << columninfo_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          unless params['Partitioning'].nil?
            @Partitioning = []
            params['Partitioning'].each do |i|
              partitioning_tmp = Partitioning.new
              partitioning_tmp.deserialize(i)
              @Partitioning << partitioning_tmp
            end
          end
          unless params['Indexes'].nil?
            @Indexes = []
            params['Indexes'].each do |i|
              index_tmp = Index.new
              index_tmp.deserialize(i)
              @Indexes << index_tmp
            end
          end
          unless params['Audit'].nil?
            @Audit = Audit.new
            @Audit.deserialize(params['Audit'])
          end
          @TableFormat = params['TableFormat']
          unless params['MetaOwner'].nil?
            @MetaOwner = MetaOwner.new
            @MetaOwner.deserialize(params['MetaOwner'])
          end
          @AssetGuid = params['AssetGuid']
          @FilesCount = params['FilesCount']
          @FilesSize = params['FilesSize']
          @TableType = params['TableType']
          @FeatureTableType = params['FeatureTableType']
          unless params['FeatureTableDetail'].nil?
            @FeatureTableDetail = FeatureTableDetail.new
            @FeatureTableDetail.deserialize(params['FeatureTableDetail'])
          end
          unless params['PermissionDetail'].nil?
            @PermissionDetail = PermissionDetail.new
            @PermissionDetail.deserialize(params['PermissionDetail'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              commontaginfo_tmp = CommonTagInfo.new
              commontaginfo_tmp.deserialize(i)
              @Tags << commontaginfo_tmp
            end
          end
        end
      end

      # 标签
      class Tag < TencentCloud::Common::AbstractModel
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Value: 值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: String
        # @param Type: 标签类型，参考 LabelType 枚举：0=未知，1=治理标签，2=自定义标签，3=属性标签，4=脱敏标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: Integer

        attr_accessor :Name, :Value, :Type

        def initialize(name=nil, value=nil, type=nil)
          @Name = name
          @Value = value
          @Type = type
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Type = params['Type']
        end
      end

      # 标签信息，入参时用于指定打标标签，出参时返回资产已打的标签（入参+出参共用）
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param LabelId: 标签ID（入参必填）
        # @type LabelId: String
        # @param LabelName: 标签名称（入参必填）
        # @type LabelName: String
        # @param Type: <p>标签类型（入参必填）</p><p>枚举值：</p><ul><li>1：GOVERNANCE_LABEL：治理标签（标签管理页手动创建）</li><li>2：CUSTOM_LABEL：自定义标签（打标时自动创建）</li><li>3：PROPERTY_LABEL：属性标签（Key-Value键值对）</li><li>4：DESENSITIZATION_LABEL：脱敏标签（与脱敏策略绑定）</li></ul>
        # @type Type: Integer
        # @param LabelValueId: 标签值ID（可选）；属性标签可为0；LabelType=4（脱敏标签）时非必填
        # @type LabelValueId: String
        # @param LabelValue: 标签值（可选）；LabelType=4（脱敏标签）时非必填
        # @type LabelValue: String
        # @param IsDeleted: 【仅出参，入参无需填写】标签是否已被物理删除（true=已删除）
        # @type IsDeleted: Boolean
        # @param CreateCustomLabel: 【仅入参，出参不返回】是否自动创建自定义标签（可选，默认 false）；true=当 LabelName 非空且标签不存在时，自动创建 LabelType=2（CUSTOM_LABEL）的自定义标签；false=仅使用已有标签打标，标签不存在时报错
        # @type CreateCustomLabel: Boolean

        attr_accessor :LabelId, :LabelName, :Type, :LabelValueId, :LabelValue, :IsDeleted, :CreateCustomLabel

        def initialize(labelid=nil, labelname=nil, type=nil, labelvalueid=nil, labelvalue=nil, isdeleted=nil, createcustomlabel=nil)
          @LabelId = labelid
          @LabelName = labelname
          @Type = type
          @LabelValueId = labelvalueid
          @LabelValue = labelvalue
          @IsDeleted = isdeleted
          @CreateCustomLabel = createcustomlabel
        end

        def deserialize(params)
          @LabelId = params['LabelId']
          @LabelName = params['LabelName']
          @Type = params['Type']
          @LabelValueId = params['LabelValueId']
          @LabelValue = params['LabelValue']
          @IsDeleted = params['IsDeleted']
          @CreateCustomLabel = params['CreateCustomLabel']
        end
      end

      # 标签值信息
      class TagValueInfo < TencentCloud::Common::AbstractModel
        # @param TagValueId: <p>标签值ID。ID 模式写接口（UpdateWorkspaceUsersTags / UpdateWorkspaceGroupsTags）中必填，可通过 ListTags 接口出参 Items[].TagValues[].TagValueId 获取，也可通过 CreateTagValues 创建后获取；按名称模式接口（AttachWorkspaceUserTags / DetachWorkspaceUserTags）中无需传入；查询接口出参中回填。ID 不存在或已删除时接口报错 TagValueNotExist</p>
        # @type TagValueId: String
        # @param TagValue: <p>标签值内容。按名称模式接口（AttachWorkspaceUserTags / DetachWorkspaceUserTags）中必填；ID 模式写接口（UpdateWorkspaceUsersTags / UpdateWorkspaceGroupsTags）中无需传入，服务端忽略；查询接口出参中回填</p>
        # @type TagValue: String
        # @param Source: <p>标签来源，枚举值：0=未指定 1=用户直绑 2=用户组继承 3=两者都有。仅查询接口出参中返回；所有写接口均无需传入，服务端忽略</p>
        # @type Source: Integer
        # @param GroupNames: <p>继承来源的用户组名称列表（标签来源 Source=1 用户直绑时为空）。仅查询接口出参中返回；所有写接口均无需传入，服务端忽略</p>
        # @type GroupNames: Array

        attr_accessor :TagValueId, :TagValue, :Source, :GroupNames

        def initialize(tagvalueid=nil, tagvalue=nil, source=nil, groupnames=nil)
          @TagValueId = tagvalueid
          @TagValue = tagvalue
          @Source = source
          @GroupNames = groupnames
        end

        def deserialize(params)
          @TagValueId = params['TagValueId']
          @TagValue = params['TagValue']
          @Source = params['Source']
          @GroupNames = params['GroupNames']
        end
      end

      # 任务重试策略
      class TaskRetryStrategy < TencentCloud::Common::AbstractModel
        # @param MaxRetryTimes: 最多重试次数，默认3
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxRetryTimes: Integer
        # @param RetryBetweenWaitTime: 重试之间等待时间，默认5
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryBetweenWaitTime: Integer
        # @param RetryBetweenWaitTimeUnit: 重试之间等待时间单位
        # 毫秒：MILLISECOND秒：SECOND分钟（默认）：MINUTE小时：HOUR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryBetweenWaitTimeUnit: String
        # @param TaskRunFailureRetrySwitch: 任务运行失败时重试开关，默认为true
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRunFailureRetrySwitch: Boolean
        # @param TaskRunTimeoutRetrySwitch: 任务运行超时时重试开关，默认为false
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRunTimeoutRetrySwitch: Boolean

        attr_accessor :MaxRetryTimes, :RetryBetweenWaitTime, :RetryBetweenWaitTimeUnit, :TaskRunFailureRetrySwitch, :TaskRunTimeoutRetrySwitch

        def initialize(maxretrytimes=nil, retrybetweenwaittime=nil, retrybetweenwaittimeunit=nil, taskrunfailureretryswitch=nil, taskruntimeoutretryswitch=nil)
          @MaxRetryTimes = maxretrytimes
          @RetryBetweenWaitTime = retrybetweenwaittime
          @RetryBetweenWaitTimeUnit = retrybetweenwaittimeunit
          @TaskRunFailureRetrySwitch = taskrunfailureretryswitch
          @TaskRunTimeoutRetrySwitch = taskruntimeoutretryswitch
        end

        def deserialize(params)
          @MaxRetryTimes = params['MaxRetryTimes']
          @RetryBetweenWaitTime = params['RetryBetweenWaitTime']
          @RetryBetweenWaitTimeUnit = params['RetryBetweenWaitTimeUnit']
          @TaskRunFailureRetrySwitch = params['TaskRunFailureRetrySwitch']
          @TaskRunTimeoutRetrySwitch = params['TaskRunTimeoutRetrySwitch']
        end
      end

      # 任务运行条件规则
      class TaskRunConditionRule < TencentCloud::Common::AbstractModel
        # @param UpstreamTaskId: <p>上游任务ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamTaskId: String
        # @param UpstreamTaskName: <p>上游任务名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamTaskName: String
        # @param AllowedStates: <p>任务可运行条件<br>支持的状态值： - SUCCESS: 成功 - FAILED: 失败 - UPSTREAM_FAILED: 上游失败 - EXCLUDED: 排除运行</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowedStates: Array

        attr_accessor :UpstreamTaskId, :UpstreamTaskName, :AllowedStates

        def initialize(upstreamtaskid=nil, upstreamtaskname=nil, allowedstates=nil)
          @UpstreamTaskId = upstreamtaskid
          @UpstreamTaskName = upstreamtaskname
          @AllowedStates = allowedstates
        end

        def deserialize(params)
          @UpstreamTaskId = params['UpstreamTaskId']
          @UpstreamTaskName = params['UpstreamTaskName']
          @AllowedStates = params['AllowedStates']
        end
      end

      # 任务调度参数（运行/重跑工作流时的自定义参数）
      class TaskSchedulingParameterBrief < TencentCloud::Common::AbstractModel
        # @param ParamKey: 参数名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamKey: String
        # @param ParamValue: 参数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamValue: String

        attr_accessor :ParamKey, :ParamValue

        def initialize(paramkey=nil, paramvalue=nil)
          @ParamKey = paramkey
          @ParamValue = paramvalue
        end

        def deserialize(params)
          @ParamKey = params['ParamKey']
          @ParamValue = params['ParamValue']
        end
      end

      # ### `TaskTypePropertyList` 中 `TaskTypeProperty` 针对不同任务类型需要填写不同的 key 和 value；

      # ### 1. NOTEBOOK 任务类型

      # #### 属性配置

      # | 属性键       | 属性名称          | 描述                               | 是否必需                |
      # | ------------ | ----------------- | ---------------------------------- | ----------------------- |
      # | Source       | 来源              | 只支持填2或5,来源 2:GIT, 5:工作空间    | 是                      |
      # | NotebookPath | Notebook 相对路径 | Source为5时，需从（ListFiles）获取 | Source 为 2、5 时，必填 |

      # ### 2. DATA_INTEGRATION 任务类型

      # #### 属性配置

      # | 属性键                | 属性名称             | 描述                                    | 是否必需 |
      # | --------------------- | -------------------- | --------------------------------------- | -------- |
      # | Source                | 来源                 | 必填:4,表示来源为COS                    | 是       |
      # | TemplatePath          | 数据接入任务配置路径 | 需从（ListBatchIngestionTasks）接口获取 | 是       |
      # | DataIntegrationTaskId | 数据接入任务ID       | 需从（ListBatchIngestionTasks）接口获取 | 是       |

      # ### 3. RUN_WORKFLOW 任务类型

      # #### 属性配置

      # | 属性键     | 属性名称   | 描述                          | 是否必需 |
      # | ---------- | ---------- | ----------------------------- | -------- |
      # | WorkflowId | 选择工作流 | 需从（ListWorkflows）接口获取 | 是       |

      # ### 4. SQL 任务类型

      # #### 属性配置

      # | 属性键          | 属性名称    | 描述                                          | 是否必需             |
      # | --------------- | ----------- | --------------------------------------------- | -------------------- |
      # | Source          | 来源        | 只支持填2或5,来源 2:GIT, 5:工作空间               | 是                   |
      # | SqlPath         | SQL脚本路径 | SQL脚本路径                                   | Source 为 2 时，必填 |
      # | CodeFileName    | 文件名称    | Source为5时，需从（ListReleasedQueries）接口获取 | 否                |
      # | CodeFileId      | 文件ID      | Source为5时，需从（ListReleasedQueries）接口获取 | Source 为 5 时，必填 |
      # | CodeFileVersion | 文件版本    | Source为5时，需从（ListReleasedQueries）接口获取 | 否                |

      # ### 5. PYTHON 任务类型

      # #### 属性配置

      # | 属性键     | 属性名称       | 描述                                   | 是否必需 |
      # | ---------- | -------------- | -------------------------------------- | -------- |
      # | Source     | 来源           | 只支持填2或5,来源 2:GIT, 5:工作空间        | 是       |
      # | SourcePath | Python脚本路径 | Source为5时，需从（ListFiles）接口获取 | 是       |

      # ### 6. DATA_QUALITY（质量监控）任务类型

      # #### 属性配置

      # | 属性键         | 属性名称         | 描述                                          | 是否必需 |
      # | -------------- | ---------------- | --------------------------------------------- | -------- |
      # | Source         | 来源             | 必填:4,表示来源为COS                          | 是       |
      # | TemplatePath   | 质量监控配置路径 | 需从（ListDataQualityTaskSummaries）接口获取  | 是       |
      # | SourceUniqueId | 质量监控ID       | 需从（ListDataQualityTaskSummaries）接口获取  | 是       |
      # | ExecutionType  | 执行类型         | 必填:SQL                                      | 是       |
      # | AfterAspect    | 质量任务后置切面 | 需从（ListDataQualityTaskSummaries）接口获取  | 否       |
      # | BeforeAspect   | 质量任务前置切面 | 需从（ListDataQualityTaskSummaries）接口获取  | 否       |

      # ### 7. IF_ELSE 任务类型

      # #### 属性配置

      # | 属性键     | 属性名称 | 描述            | 是否必需 |
      # | ---------- | -------- | --------------- | -------- |
      # | Conditions | 条件列表 | IF-ELSE条件配置 | 是       |

      # ### 8. FOR_EACH 任务类型

      # #### 属性配置

      # | 属性键         | 属性名称     | 描述                               | 是否必需 |
      # | -------------- | ------------ | ---------------------------------- | -------- |
      # | MaxConcurrency | 最大并发数   | 最大并发数，默认为1                | 是       |
      # | MaxIterations  | 最大迭代次数 | 最大迭代次数，默认1000             | 是       |
      # | LoopDataArray  | 循环参数     | JSON格式的数组，或 {{}} 包裹的变量 | 是       |

      # ### 9. RAY_JOB（Ray作业）任务类型

      # #### 属性配置

      # | 属性键         | 属性名称             | 描述                               | 是否必需 |
      # | -------------- | -------------------- | ---------------------------------- | -------- |
      # | RunMode        | 运行方式             | 运行方式，取值：SERVERLESS（按需拉起集群）/ DEDICATED（提交到指定集群）。默认 DEDICATED | 是 |
      # | Entrypoint     | 入口指令             | 入口指令                           | 是       |
      # | JobConfig      | 任务配置             | 如存储配置 + 计算环境。传值请参考前端页面保存Ray作业任务时调用UpdateWorkflow。Image请调用DLC接口ListImages接口Url字段获取 | RunMode 为 SERVERLESS 时，必填 |
      # | ClusterId      | Ray 集群             | 需从所选计算资源下已配置的 Ray 集群（引擎）列表中选择，可通过计算资源相关接口获取 | RunMode 为 DEDICATED 时，必填 |
      # | Source         | 任务来源             | 任务来源，取值：1（本地文件）/ 5（工作空间） | 是 |
      # | JobPackage     | 任务来源文件地址     | 任务来源路径：Source 为 1 时存本地上传文件的 COS 地址（支持 .zip / .py 文件）；Source 为 5 时存所选工作空间文件/文件夹路径 | 是 |
      # | JobPackageName | 任务来源本地文件名   | 任务来源本地文件名                 | Source 为 1 时，必填 |
      # | CodeFileId     | 代码文件ID           | Source 为 5 时，需从工作空间文件选择组件获取所选文件/文件夹对应的ID | Source 为 5 时，必填 |
      # | WorkspaceEntryType | 工作空间入口类型 | Source 为 5 时，所选工作空间条目的类型：FILE（文件）/ FOLDER（文件夹），由前端选择器随选择目标自动写入 | Source 为 5 时，必填 |

      # ### RuntimePropertyList
      # <p>任务运行参数列表，用于配置任务运行时的计算资源，与 TaskTypePropertyList（任务扩展属性）区分：TaskTypePropertyList 承载任务自身的业务配置（如脚本来源、路径等），RuntimePropertyList 承载任务运行时的资源配置（如资源模式、CU规格、Executor数量等）。</p>
      # <p>主要适用于需要配置计算资源的任务类型（如 NOTEBOOK、PYTHON）。</p>
      # <p>具体可填写的属性键以任务类型属性配置为准，可通过 ListWorkflowTaskTypeProperties 接口获取（propertyType 为 RUNTIME 的属性项）。常见运行参数键说明：</p>

      # | 属性键 | 属性名称 | 描述 | 必填性（联动条件满足时） | 默认值 |
      # | ---------- | -------------- | ---------------------------------- | -------- | -------- |
      # | ResourceMode | 资源模式 | 1：分布式；2：单节点 | 是 | 1 |
      # | ConfigType | 配置类型 | DEFAULT：默认配置；CUSTOM：自定义配置 | 是 | DEFAULT |
      # | ExecutorAllocation | Executor分配模式 | DYNAMIC：动态分配；FIXED：固定分配 | 是（分布式且自定义配置时） | DYNAMIC |
      # | ExecutorMinNum | Executor最小个数 | 正整数 | 是（动态分配时） | 1 |
      # | ExecutorMaxNum | Executor最大个数 | 正整数 | 是（动态分配时） | 1 |
      # | ExecutorFixedNum | Executor固定个数 | 正整数 | 否（固定分配时） | - |
      # | ExecutorCU | Executor资源规格 | small / medium / large / xlarge / 4xlarge | 否（分布式且自定义配置时） | - |
      # | DriverCU | Driver资源规格 | small / medium / large / xlarge / 4xlarge | 否（分布式且自定义配置时 或者单节点时） | - |
      # | ExecutorGPU | Executor GPU数量 | 0表示不使用GPU | 否（分布式且自定义配置时） | - |
      # | DriverGPU | Driver GPU数量 | 0表示不使用GPU | 否（分布式且自定义配置时） | - |
      # | Style | 配置样式 | UI / JSON | 是（自定义配置时） | UI |

      # <p>补充说明：</p>
      # <p>1. "必填性"指属性配置中的必填标记，仅当属性联动条件（如 ResourceMode=1 且 ConfigType=CUSTOM）满足时才触发必填校验；</p>
      # <p>2. ConfigType 为 DEFAULT（默认配置）时，需调用 ListComputeResourceOptions 接口获取所选计算资源的默认规格值，并将其填充到运行参数（ExecutorCU、DriverCU、ExecutorMinNum、ExecutorMaxNum 等）后传入；ConfigType 为 CUSTOM（自定义配置）时，运行参数由调用方自行指定；</p>
      class TaskType < TencentCloud::Common::AbstractModel
        # @param TaskTypeName: <p>任务类型：SQL：用于执行SQL查询和数据处理操作；DATA_INTEGRATION：用于离线数据接入操作；NOTEBOOK：用于运行Notebook脚本；RUN_WORKFLOW：用于执行嵌套工作流；PYTHON：用于运行Python脚本；RAY_JOB：用于运行Ray作业；DATA_QUALITY：用于数据质量监控；IF_ELSE：用于条件分支判断；FOR_EACH：用于循环遍历执行；</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String
        # @param Notebook: <p>Notebook 类型扩展信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Notebook: :class:`Tencentcloud::Databuddy.v20260715.models.TaskTypeNotebookExt`
        # @param TaskTypePropertyList: <p>任务扩展属性列表，具体填写参考TaskType.TaskPropertyList描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypePropertyList: Array
        # @param RuntimePropertyList: <p>运行时属性列表，具体填写参考TaskType.RuntimePropertyList描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuntimePropertyList: Array

        attr_accessor :TaskTypeName, :Notebook, :TaskTypePropertyList, :RuntimePropertyList
        extend Gem::Deprecate
        deprecate :Notebook, :none, 2026, 10
        deprecate :Notebook=, :none, 2026, 10

        def initialize(tasktypename=nil, notebook=nil, tasktypepropertylist=nil, runtimepropertylist=nil)
          @TaskTypeName = tasktypename
          @Notebook = notebook
          @TaskTypePropertyList = tasktypepropertylist
          @RuntimePropertyList = runtimepropertylist
        end

        def deserialize(params)
          @TaskTypeName = params['TaskTypeName']
          unless params['Notebook'].nil?
            @Notebook = TaskTypeNotebookExt.new
            @Notebook.deserialize(params['Notebook'])
          end
          unless params['TaskTypePropertyList'].nil?
            @TaskTypePropertyList = []
            params['TaskTypePropertyList'].each do |i|
              tasktypeproperty_tmp = TaskTypeProperty.new
              tasktypeproperty_tmp.deserialize(i)
              @TaskTypePropertyList << tasktypeproperty_tmp
            end
          end
          unless params['RuntimePropertyList'].nil?
            @RuntimePropertyList = []
            params['RuntimePropertyList'].each do |i|
              tasktypeproperty_tmp = TaskTypeProperty.new
              tasktypeproperty_tmp.deserialize(i)
              @RuntimePropertyList << tasktypeproperty_tmp
            end
          end
        end
      end

      # （本对象在TaskType内已废弃，统一使用TaskType.TaskTypePropertyList）Notebook 类型任务扩展
      class TaskTypeNotebookExt < TencentCloud::Common::AbstractModel
        # @param Source: <p>脚本来源。取值：SCRIPT_SOURCE_LOCAL（本地）/ SCRIPT_SOURCE_GIT（Git 仓库）/<br>SCRIPT_SOURCE_CFS（CFS 文件系统）/ SCRIPT_SOURCE_COS（COS 对象存储）/<br>SCRIPT_SOURCE_WORKSPACE（工作空间）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param DisplayPath: <p>前端显示使用，对执行平台无意义</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisplayPath: String
        # @param NotebookPath: <p>Notebook 相对路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookPath: String
        # @param NotebookAbsolutePath: <p>Notebook 绝对路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotebookAbsolutePath: String

        attr_accessor :Source, :DisplayPath, :NotebookPath, :NotebookAbsolutePath
        extend Gem::Deprecate
        deprecate :Source, :none, 2026, 10
        deprecate :Source=, :none, 2026, 10
        deprecate :DisplayPath, :none, 2026, 10
        deprecate :DisplayPath=, :none, 2026, 10
        deprecate :NotebookPath, :none, 2026, 10
        deprecate :NotebookPath=, :none, 2026, 10
        deprecate :NotebookAbsolutePath, :none, 2026, 10
        deprecate :NotebookAbsolutePath=, :none, 2026, 10

        def initialize(source=nil, displaypath=nil, notebookpath=nil, notebookabsolutepath=nil)
          @Source = source
          @DisplayPath = displaypath
          @NotebookPath = notebookpath
          @NotebookAbsolutePath = notebookabsolutepath
        end

        def deserialize(params)
          @Source = params['Source']
          @DisplayPath = params['DisplayPath']
          @NotebookPath = params['NotebookPath']
          @NotebookAbsolutePath = params['NotebookAbsolutePath']
        end
      end

      # 任务类型属性键值对
      class TaskTypeProperty < TencentCloud::Common::AbstractModel
        # @param PropertyKey: <p>属性键名。用于TaskType内的入参时，若不传或为空，该属性项被服务端静默忽略（不报错），等同于该属性未配置。合法 PropertyKey 清单请参考TaskType中描述。</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PropertyKey: String
        # @param PropertyValue: <p>属性值</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PropertyValue: String

        attr_accessor :PropertyKey, :PropertyValue

        def initialize(propertykey=nil, propertyvalue=nil)
          @PropertyKey = propertykey
          @PropertyValue = propertyvalue
        end

        def deserialize(params)
          @PropertyKey = params['PropertyKey']
          @PropertyValue = params['PropertyValue']
        end
      end

      # 截断分区策略
      class TruncatePartitioning < TencentCloud::Common::AbstractModel
        # @param FiledName: 字段名
        # @type FiledName: String
        # @param Width: 截取长度
        # @type Width: String

        attr_accessor :FiledName, :Width

        def initialize(filedname=nil, width=nil)
          @FiledName = filedname
          @Width = width
        end

        def deserialize(params)
          @FiledName = params['FiledName']
          @Width = params['Width']
        end
      end

      # UnbindWorkflowBundle请求参数结构体
      class UnbindWorkflowBundleRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String

        attr_accessor :WorkspaceId, :WorkflowId

        def initialize(workspaceid=nil, workflowid=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
        end
      end

      # UnbindWorkflowBundle返回参数结构体
      class UnbindWorkflowBundleResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>解绑工作流Bundle信息响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UnbindWorkflowBundleRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UnbindWorkflowBundleRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UnbindWorkflowBundleRsp
      class UnbindWorkflowBundleRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作状态，true 表示成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # UpdateCatalog请求参数结构体
      class UpdateCatalogRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称，必填</p>
        # @type CatalogName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param NewComment: <p>新描述，可选，为空表示不修改注释</p>
        # @type NewComment: String
        # @param ConnectionId: <p>数据源连接ID，可选。分析版catalog不支持写操作，传入非空时返回错误。</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :WorkspaceId, :NewComment, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, workspaceid=nil, newcomment=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @WorkspaceId = workspaceid
          @NewComment = newcomment
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @WorkspaceId = params['WorkspaceId']
          @NewComment = params['NewComment']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # UpdateCatalog返回参数结构体
      class UpdateCatalogResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateCatalogRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateCatalogRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改数据目录信息响应
      class UpdateCatalogRsp < TencentCloud::Common::AbstractModel
        # @param Result: 是否成功
        # @type Result: Boolean

        attr_accessor :Result

        def initialize(result=nil)
          @Result = result
        end

        def deserialize(params)
          @Result = params['Result']
        end
      end

      # UpdateConsoleGroup请求参数结构体
      class UpdateConsoleGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: <p>用户组 ID，可通过 ListConsoleGroups 接口获取</p>
        # @type GroupId: String
        # @param OperType: <p>修改标识：USER_GROUP_OPER_TYPE_ADD_USER(1)=添加成员、USER_GROUP_OPER_TYPE_DELETE_USER(2)=删除成员、USER_GROUP_OPER_TYPE_BASIC_INFO(3)=基础信息（别名和描述）</p>
        # @type OperType: Integer
        # @param GroupName: <p>用户组名称</p>
        # @type GroupName: String
        # @param GroupNickname: <p>用户组别名</p>
        # @type GroupNickname: String
        # @param Description: <p>用户组描述</p>
        # @type Description: String
        # @param UserUins: <p>成员 UIN 列表（OperType 为添加/删除成员时使用），单次最多100个</p>
        # @type UserUins: Array

        attr_accessor :GroupId, :OperType, :GroupName, :GroupNickname, :Description, :UserUins

        def initialize(groupid=nil, opertype=nil, groupname=nil, groupnickname=nil, description=nil, useruins=nil)
          @GroupId = groupid
          @OperType = opertype
          @GroupName = groupname
          @GroupNickname = groupnickname
          @Description = description
          @UserUins = useruins
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @OperType = params['OperType']
          @GroupName = params['GroupName']
          @GroupNickname = params['GroupNickname']
          @Description = params['Description']
          @UserUins = params['UserUins']
        end
      end

      # UpdateConsoleGroup返回参数结构体
      class UpdateConsoleGroupResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateConsoleGroupRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateConsoleGroupRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改控制台用户组响应
      class UpdateConsoleGroupRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # UpdateConsoleUsers请求参数结构体
      class UpdateConsoleUsersRequest < TencentCloud::Common::AbstractModel
        # @param UserUins: <p>用户 UIN 列表，单次最多100个</p>
        # @type UserUins: Array
        # @param RoleIds: <p>角色 ID 列表</p><p>枚举值：</p><ul><li>2001： 控制台管理员</li><li>2002： 控制台成员</li></ul><p>可通过 ListConsoleRoles 接口获取</p>
        # @type RoleIds: Array

        attr_accessor :UserUins, :RoleIds

        def initialize(useruins=nil, roleids=nil)
          @UserUins = useruins
          @RoleIds = roleids
        end

        def deserialize(params)
          @UserUins = params['UserUins']
          @RoleIds = params['RoleIds']
        end
      end

      # UpdateConsoleUsers返回参数结构体
      class UpdateConsoleUsersResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateConsoleUsersRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateConsoleUsersRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改控制台用户响应
      class UpdateConsoleUsersRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # UpdateFile请求参数结构体
      class UpdateFileRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间 ID。来源：ListWorkspaces 接口返回的 WorkspaceId</p>
        # @type WorkspaceId: String
        # @param FileId: <p>文件 ID。来源：CreateFile / ListFiles / GetFile 接口返回的 FileId</p>
        # @type FileId: String
        # @param FileConfig: <p>文件运行配置。不传则不更新配置</p>
        # @type FileConfig: :class:`Tencentcloud::Databuddy.v20260715.models.FileConfig`
        # @param FileType: <p>文件类型。取值：FILE（普通文件/脚本）、NOTEBOOK_FILE（Notebook）、SQL_FILE（SQL文件）。对应 common/domain/entity.proto EntityType</p>
        # @type FileType: String
        # @param BundleId: <p>绑定的 BundleId。来源：ListBundles 接口返回的 BundleId</p>
        # @type BundleId: String
        # @param BundleInfo: <p>绑定的 BundleInfo，JSON 字符串</p>
        # @type BundleInfo: String
        # @param Storage: <p>文件内容。不传则不更新内容</p>
        # @type Storage: :class:`Tencentcloud::Databuddy.v20260715.models.FileStorage`
        # @param FileName: <p>目标文件名，非空且与当前文件名不同时执行 rename 动作。长度不超过 SCRIPT_NAME_MAX_LENGTH，禁止以 . 或 .. 开头/结尾，禁止空格、双点、控制字符及 Linux 保留名（参考 docs/linux_filename_rules.md）。与 ExtensionType 一起校验后缀合法性</p>
        # @type FileName: String
        # @param ParentFolderPath: <p>目标父目录路径，非空时执行 move 动作。根目录传 /；与 FileName 可同时出现，语义为「移动+重命名」。与 CreateFile 的 ParentFolderPath 保持一致</p>
        # @type ParentFolderPath: String
        # @param TargetFileType: <p>目标父目录的 FileType。取值：FOLDER、GIT_FOLDER。仅当 ParentFolderPath 非空时使用；缺省时按解析出的父目录实际类型处理</p>
        # @type TargetFileType: String
        # @param UpdateAction: <p>动作类型（选填，默认取值1，未来版本会强制校验）。取值：1 = UPDATE_CONTENT（仅更新 FileConfig / Storage / Bundle*，禁止传 FileName / ParentFolderPath / TargetFileType）；2 = RENAME（仅重命名，必须传 FileName，禁止传 ParentFolderPath / FileConfig / Storage / Bundle*）；3 = MOVE（仅移动，必须传 ParentFolderPath，禁止传 FileName / FileConfig / Storage / Bundle*）。参数互斥校验失败会返回 ParamIllegal 错误</p>
        # @type UpdateAction: Integer

        attr_accessor :WorkspaceId, :FileId, :FileConfig, :FileType, :BundleId, :BundleInfo, :Storage, :FileName, :ParentFolderPath, :TargetFileType, :UpdateAction

        def initialize(workspaceid=nil, fileid=nil, fileconfig=nil, filetype=nil, bundleid=nil, bundleinfo=nil, storage=nil, filename=nil, parentfolderpath=nil, targetfiletype=nil, updateaction=nil)
          @WorkspaceId = workspaceid
          @FileId = fileid
          @FileConfig = fileconfig
          @FileType = filetype
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @Storage = storage
          @FileName = filename
          @ParentFolderPath = parentfolderpath
          @TargetFileType = targetfiletype
          @UpdateAction = updateaction
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @FileId = params['FileId']
          unless params['FileConfig'].nil?
            @FileConfig = FileConfig.new
            @FileConfig.deserialize(params['FileConfig'])
          end
          @FileType = params['FileType']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          unless params['Storage'].nil?
            @Storage = FileStorage.new
            @Storage.deserialize(params['Storage'])
          end
          @FileName = params['FileName']
          @ParentFolderPath = params['ParentFolderPath']
          @TargetFileType = params['TargetFileType']
          @UpdateAction = params['UpdateAction']
        end
      end

      # UpdateFile返回参数结构体
      class UpdateFileResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.FileInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = FileInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateFolder请求参数结构体
      class UpdateFolderRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String
        # @param Folder: <p>待更新文件夹</p>
        # @type Folder: :class:`Tencentcloud::Databuddy.v20260715.models.FolderLocator`
        # @param OperationType: <p>操作类型</p><p>枚举值：</p><ul><li>1： 重命名</li><li>2： 移动</li></ul>
        # @type OperationType: String
        # @param FolderName: <p>重命名后的文件名，OperationType = 1时生效</p>
        # @type FolderName: String
        # @param TargetParent: <p>移动的目的文件夹，OperationType = 2时生效</p>
        # @type TargetParent: :class:`Tencentcloud::Databuddy.v20260715.models.FolderLocator`

        attr_accessor :WorkspaceId, :Folder, :OperationType, :FolderName, :TargetParent

        def initialize(workspaceid=nil, folder=nil, operationtype=nil, foldername=nil, targetparent=nil)
          @WorkspaceId = workspaceid
          @Folder = folder
          @OperationType = operationtype
          @FolderName = foldername
          @TargetParent = targetparent
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['Folder'].nil?
            @Folder = FolderLocator.new
            @Folder.deserialize(params['Folder'])
          end
          @OperationType = params['OperationType']
          @FolderName = params['FolderName']
          unless params['TargetParent'].nil?
            @TargetParent = FolderLocator.new
            @TargetParent.deserialize(params['TargetParent'])
          end
        end
      end

      # UpdateFolder返回参数结构体
      class UpdateFolderResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>更新文件夹结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateFolderRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateFolderRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 更新文件夹回包
      class UpdateFolderRsp < TencentCloud::Common::AbstractModel
        # @param Status: <p>更新文件夹结果，true为成功</p>
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # UpdateFunction请求参数结构体
      class UpdateFunctionRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: 数据目录名称，必填
        # @type CatalogName: String
        # @param SchemaName: schema名称，必填
        # @type SchemaName: String
        # @param FunctionName: 函数名称，必填
        # @type FunctionName: String
        # @param WorkspaceId: 调用时所在workspace唯一id，必填
        # @type WorkspaceId: String
        # @param NewComment: 新描述，可选，为空表示不修改注释
        # @type NewComment: String

        attr_accessor :CatalogName, :SchemaName, :FunctionName, :WorkspaceId, :NewComment

        def initialize(catalogname=nil, schemaname=nil, functionname=nil, workspaceid=nil, newcomment=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @FunctionName = functionname
          @WorkspaceId = workspaceid
          @NewComment = newcomment
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @FunctionName = params['FunctionName']
          @WorkspaceId = params['WorkspaceId']
          @NewComment = params['NewComment']
        end
      end

      # UpdateFunction返回参数结构体
      class UpdateFunctionResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateFunctionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateFunctionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改函数信息响应
      class UpdateFunctionRsp < TencentCloud::Common::AbstractModel
        # @param Function: 更新后的函数信息
        # @type Function: :class:`Tencentcloud::Databuddy.v20260715.models.FunctionInfo`

        attr_accessor :Function

        def initialize(function=nil)
          @Function = function
        end

        def deserialize(params)
          unless params['Function'].nil?
            @Function = FunctionInfo.new
            @Function.deserialize(params['Function'])
          end
        end
      end

      # UpdateLocation请求参数结构体
      class UpdateLocationRequest < TencentCloud::Common::AbstractModel
        # @param LocationName: 存储位置名，必填
        # @type LocationName: String
        # @param Updates: 更新location的操作列表，必填
        # @type Updates: Array
        # @param WorkspaceId: 调用时所在workspace唯一id，必填
        # @type WorkspaceId: String

        attr_accessor :LocationName, :Updates, :WorkspaceId

        def initialize(locationname=nil, updates=nil, workspaceid=nil)
          @LocationName = locationname
          @Updates = updates
          @WorkspaceId = workspaceid
        end

        def deserialize(params)
          @LocationName = params['LocationName']
          unless params['Updates'].nil?
            @Updates = []
            params['Updates'].each do |i|
              locationupdate_tmp = LocationUpdate.new
              locationupdate_tmp.deserialize(i)
              @Updates << locationupdate_tmp
            end
          end
          @WorkspaceId = params['WorkspaceId']
        end
      end

      # UpdateLocation返回参数结构体
      class UpdateLocationResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateLocationRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateLocationRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改存储位置响应
      class UpdateLocationRsp < TencentCloud::Common::AbstractModel
        # @param Location: 修改后的存储位置详情
        # @type Location: :class:`Tencentcloud::Databuddy.v20260715.models.LocationInfo`

        attr_accessor :Location

        def initialize(location=nil)
          @Location = location
        end

        def deserialize(params)
          unless params['Location'].nil?
            @Location = LocationInfo.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # UpdateModel请求参数结构体
      class UpdateModelRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: 目录名称，必填
        # @type CatalogName: String
        # @param SchemaName: 模式名称，必填
        # @type SchemaName: String
        # @param ModelName: 模型名称，必填
        # @type ModelName: String
        # @param WorkspaceId: 调用时所在workspace唯一id，必填
        # @type WorkspaceId: String
        # @param NewName: 新名称，可选，为空表示不修改名称
        # @type NewName: String
        # @param NewComment: 新注释，可选，为空表示不修改注释
        # @type NewComment: String

        attr_accessor :CatalogName, :SchemaName, :ModelName, :WorkspaceId, :NewName, :NewComment

        def initialize(catalogname=nil, schemaname=nil, modelname=nil, workspaceid=nil, newname=nil, newcomment=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ModelName = modelname
          @WorkspaceId = workspaceid
          @NewName = newname
          @NewComment = newcomment
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ModelName = params['ModelName']
          @WorkspaceId = params['WorkspaceId']
          @NewName = params['NewName']
          @NewComment = params['NewComment']
        end
      end

      # UpdateModel返回参数结构体
      class UpdateModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateModelRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateModelRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改模型信息响应
      class UpdateModelRsp < TencentCloud::Common::AbstractModel
        # @param Model: 更新后的模型信息
        # @type Model: :class:`Tencentcloud::Databuddy.v20260715.models.ModelInfo`

        attr_accessor :Model

        def initialize(model=nil)
          @Model = model
        end

        def deserialize(params)
          unless params['Model'].nil?
            @Model = ModelInfo.new
            @Model.deserialize(params['Model'])
          end
        end
      end

      # UpdateModelVersion请求参数结构体
      class UpdateModelVersionRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>目录名称，必填</p>
        # @type CatalogName: String
        # @param SchemaName: <p>模式名称，必填</p>
        # @type SchemaName: String
        # @param ModelName: <p>模型名称，必填</p>
        # @type ModelName: String
        # @param ModelVersion: <p>模型版本号，必填</p>
        # @type ModelVersion: Integer
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param AddedAliases: <p>要添加的别名，可选</p>
        # @type AddedAliases: Array
        # @param RemovedAliases: <p>要移除的别名，可选</p>
        # @type RemovedAliases: Array
        # @param NewComment: <p>新注释，可选，为空表示不修改注释</p>
        # @type NewComment: String

        attr_accessor :CatalogName, :SchemaName, :ModelName, :ModelVersion, :WorkspaceId, :AddedAliases, :RemovedAliases, :NewComment

        def initialize(catalogname=nil, schemaname=nil, modelname=nil, modelversion=nil, workspaceid=nil, addedaliases=nil, removedaliases=nil, newcomment=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ModelName = modelname
          @ModelVersion = modelversion
          @WorkspaceId = workspaceid
          @AddedAliases = addedaliases
          @RemovedAliases = removedaliases
          @NewComment = newcomment
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ModelName = params['ModelName']
          @ModelVersion = params['ModelVersion']
          @WorkspaceId = params['WorkspaceId']
          @AddedAliases = params['AddedAliases']
          @RemovedAliases = params['RemovedAliases']
          @NewComment = params['NewComment']
        end
      end

      # UpdateModelVersion返回参数结构体
      class UpdateModelVersionResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateModelVersionRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateModelVersionRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改模型版本信息响应
      class UpdateModelVersionRsp < TencentCloud::Common::AbstractModel
        # @param ModelVersion: 更新后的模型版本信息
        # @type ModelVersion: :class:`Tencentcloud::Databuddy.v20260715.models.ModelVersionInfo`

        attr_accessor :ModelVersion

        def initialize(modelversion=nil)
          @ModelVersion = modelversion
        end

        def deserialize(params)
          unless params['ModelVersion'].nil?
            @ModelVersion = ModelVersionInfo.new
            @ModelVersion.deserialize(params['ModelVersion'])
          end
        end
      end

      # UpdateSchema请求参数结构体
      class UpdateSchemaRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称，必填</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema名称，必填</p>
        # @type SchemaName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param NewComment: <p>新描述，可选，为空表示不修改注释</p>
        # @type NewComment: String
        # @param ConnectionId: <p>数据源连接ID，可选。分析版catalog不支持写操作，传入非空时返回错误。可通过 ListConnections 获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :WorkspaceId, :NewComment, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, workspaceid=nil, newcomment=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @WorkspaceId = workspaceid
          @NewComment = newcomment
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @WorkspaceId = params['WorkspaceId']
          @NewComment = params['NewComment']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # UpdateSchema返回参数结构体
      class UpdateSchemaResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateSchemaRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateSchemaRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改 schema 信息响应
      class UpdateSchemaRsp < TencentCloud::Common::AbstractModel
        # @param Schema: <p>更新后的 schema 信息</p>
        # @type Schema: :class:`Tencentcloud::Databuddy.v20260715.models.Schema`

        attr_accessor :Schema

        def initialize(schema=nil)
          @Schema = schema
        end

        def deserialize(params)
          unless params['Schema'].nil?
            @Schema = Schema.new
            @Schema.deserialize(params['Schema'])
          end
        end
      end

      # UpdateTableColumn请求参数结构体
      class UpdateTableColumnRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称，必填</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名称，必填</p>
        # @type SchemaName: String
        # @param TableName: <p>表名，必填</p>
        # @type TableName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param Columns: <p>字段描述列表，必填</p>
        # @type Columns: Array
        # @param ConnectionId: <p>数据源连接ID，可选。分析版catalog不支持写操作，传入非空时返回错误。可通过 ListConnections 获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :TableName, :WorkspaceId, :Columns, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, tablename=nil, workspaceid=nil, columns=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @TableName = tablename
          @WorkspaceId = workspaceid
          @Columns = columns
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @WorkspaceId = params['WorkspaceId']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              columnbrief_tmp = ColumnBrief.new
              columnbrief_tmp.deserialize(i)
              @Columns << columnbrief_tmp
            end
          end
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # UpdateTableColumn返回参数结构体
      class UpdateTableColumnResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateTableColumnRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTableColumnRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改表字段描述响应
      class UpdateTableColumnRsp < TencentCloud::Common::AbstractModel
        # @param Result: 整体结果，true表示全部成功
        # @type Result: Boolean
        # @param FailedColumns: 失败的字段列表（部分成功场景），全部成功时为空
        # @type FailedColumns: Array

        attr_accessor :Result, :FailedColumns

        def initialize(result=nil, failedcolumns=nil)
          @Result = result
          @FailedColumns = failedcolumns
        end

        def deserialize(params)
          @Result = params['Result']
          unless params['FailedColumns'].nil?
            @FailedColumns = []
            params['FailedColumns'].each do |i|
              columnerrormessages_tmp = ColumnErrorMessages.new
              columnerrormessages_tmp.deserialize(i)
              @FailedColumns << columnerrormessages_tmp
            end
          end
        end
      end

      # UpdateTable请求参数结构体
      class UpdateTableRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: <p>数据目录名称，必填</p>
        # @type CatalogName: String
        # @param SchemaName: <p>数据库名称，必填</p>
        # @type SchemaName: String
        # @param TableName: <p>表名，必填</p>
        # @type TableName: String
        # @param WorkspaceId: <p>调用时所在workspace唯一id，必填</p>
        # @type WorkspaceId: String
        # @param NewName: <p>新名称，可选，为空表示不修改名称</p>
        # @type NewName: String
        # @param NewComment: <p>新描述，可选，为空表示不修改注释</p>
        # @type NewComment: String
        # @param ConnectionId: <p>数据源连接ID，可选。分析版catalog不支持写操作，传入非空时返回错误。可通过 ListConnections 获取</p>
        # @type ConnectionId: String
        # @param CatalogSource: <p>数据目录来源，可选（Setats融合新增字段）。取值：METALAKE（专业版tclake）/ CONNECTION（分析版Linked Catalog）/ SETATS（Setats元数据）。路由优先级：显式非空CatalogSource &gt; 非空ConnectionId（视为CONNECTION）&gt; 默认METALAKE；CatalogSource非空时ConnectionId将被忽略。</p>
        # @type CatalogSource: String

        attr_accessor :CatalogName, :SchemaName, :TableName, :WorkspaceId, :NewName, :NewComment, :ConnectionId, :CatalogSource

        def initialize(catalogname=nil, schemaname=nil, tablename=nil, workspaceid=nil, newname=nil, newcomment=nil, connectionid=nil, catalogsource=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @TableName = tablename
          @WorkspaceId = workspaceid
          @NewName = newname
          @NewComment = newcomment
          @ConnectionId = connectionid
          @CatalogSource = catalogsource
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @TableName = params['TableName']
          @WorkspaceId = params['WorkspaceId']
          @NewName = params['NewName']
          @NewComment = params['NewComment']
          @ConnectionId = params['ConnectionId']
          @CatalogSource = params['CatalogSource']
        end
      end

      # UpdateTable返回参数结构体
      class UpdateTableResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>返回结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateTableRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateTableRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改表信息响应
      class UpdateTableRsp < TencentCloud::Common::AbstractModel
        # @param Table: 更新后的表信息
        # @type Table: :class:`Tencentcloud::Databuddy.v20260715.models.TableInfo`

        attr_accessor :Table

        def initialize(table=nil)
          @Table = table
        end

        def deserialize(params)
          unless params['Table'].nil?
            @Table = TableInfo.new
            @Table.deserialize(params['Table'])
          end
        end
      end

      # UpdateView请求参数结构体
      class UpdateViewRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: 数据目录名称，必填
        # @type CatalogName: String
        # @param SchemaName: 数据库名称，必填
        # @type SchemaName: String
        # @param ViewName: View名，必填
        # @type ViewName: String
        # @param WorkspaceId: 调用时所在workspace唯一id，必填
        # @type WorkspaceId: String
        # @param NewName: 新名称，可选，为空表示不修改名称
        # @type NewName: String
        # @param NewComment: 新描述，可选，为空表示不修改注释
        # @type NewComment: String

        attr_accessor :CatalogName, :SchemaName, :ViewName, :WorkspaceId, :NewName, :NewComment

        def initialize(catalogname=nil, schemaname=nil, viewname=nil, workspaceid=nil, newname=nil, newcomment=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @ViewName = viewname
          @WorkspaceId = workspaceid
          @NewName = newname
          @NewComment = newcomment
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @ViewName = params['ViewName']
          @WorkspaceId = params['WorkspaceId']
          @NewName = params['NewName']
          @NewComment = params['NewComment']
        end
      end

      # UpdateView返回参数结构体
      class UpdateViewResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateViewRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateViewRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改视图信息响应
      class UpdateViewRsp < TencentCloud::Common::AbstractModel
        # @param View: 更新后的视图信息
        # @type View: :class:`Tencentcloud::Databuddy.v20260715.models.ViewInfo`

        attr_accessor :View

        def initialize(view=nil)
          @View = view
        end

        def deserialize(params)
          unless params['View'].nil?
            @View = ViewInfo.new
            @View.deserialize(params['View'])
          end
        end
      end

      # UpdateVolume请求参数结构体
      class UpdateVolumeRequest < TencentCloud::Common::AbstractModel
        # @param CatalogName: 目录名称，必填
        # @type CatalogName: String
        # @param SchemaName: 模式名称，必填
        # @type SchemaName: String
        # @param VolumeName: 数据卷名称，必填
        # @type VolumeName: String
        # @param WorkspaceId: 调用时所在workspace唯一id，必填
        # @type WorkspaceId: String
        # @param NewName: 新名称，可选，为空表示不修改名称
        # @type NewName: String
        # @param NewComment: 新注释，可选，为空表示不修改注释
        # @type NewComment: String

        attr_accessor :CatalogName, :SchemaName, :VolumeName, :WorkspaceId, :NewName, :NewComment

        def initialize(catalogname=nil, schemaname=nil, volumename=nil, workspaceid=nil, newname=nil, newcomment=nil)
          @CatalogName = catalogname
          @SchemaName = schemaname
          @VolumeName = volumename
          @WorkspaceId = workspaceid
          @NewName = newname
          @NewComment = newcomment
        end

        def deserialize(params)
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @VolumeName = params['VolumeName']
          @WorkspaceId = params['WorkspaceId']
          @NewName = params['NewName']
          @NewComment = params['NewComment']
        end
      end

      # UpdateVolume返回参数结构体
      class UpdateVolumeResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateVolumeRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateVolumeRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改数据卷信息响应
      class UpdateVolumeRsp < TencentCloud::Common::AbstractModel
        # @param Volume: 更新后的数据卷信息
        # @type Volume: :class:`Tencentcloud::Databuddy.v20260715.models.Volume`

        attr_accessor :Volume

        def initialize(volume=nil)
          @Volume = volume
        end

        def deserialize(params)
          unless params['Volume'].nil?
            @Volume = Volume.new
            @Volume.deserialize(params['Volume'])
          end
        end
      end

      # UpdateWorkflow请求参数结构体
      class UpdateWorkflowRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取。必填</p>
        # @type WorkspaceId: String
        # @param WorkflowId: <p>待更新的工作流ID，可通过 ListWorkflows 获取。必填</p>
        # @type WorkflowId: String
        # @param FieldToRemoveList: <p>需要清空的字段名列表，用于将指定字段重置为空</p>
        # @type FieldToRemoveList: Array
        # @param NewSetting: <p>更新后的工作流配置，仅传入需要变更的部分即可</p>
        # @type NewSetting: :class:`Tencentcloud::Databuddy.v20260715.models.Workflow`

        attr_accessor :WorkspaceId, :WorkflowId, :FieldToRemoveList, :NewSetting

        def initialize(workspaceid=nil, workflowid=nil, fieldtoremovelist=nil, newsetting=nil)
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @FieldToRemoveList = fieldtoremovelist
          @NewSetting = newsetting
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @FieldToRemoveList = params['FieldToRemoveList']
          unless params['NewSetting'].nil?
            @NewSetting = Workflow.new
            @NewSetting.deserialize(params['NewSetting'])
          end
        end
      end

      # UpdateWorkflow返回参数结构体
      class UpdateWorkflowResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>更新工作流响应内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateWorkflowRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateWorkflowRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateWorkflowRsp
      class UpdateWorkflowRsp < TencentCloud::Common::AbstractModel
        # @param Status: 更新状态，true 表示成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # UpdateWorkspaceGroupsRoles请求参数结构体
      class UpdateWorkspaceGroupsRolesRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 用户组ID，可通过 ListWorkspaceGroups 接口获取
        # @type GroupIds: Array
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: String
        # @param RoleIds: 角色ID，可通过 ListWorkspaceRoles 接口获取
        # @type RoleIds: Array

        attr_accessor :GroupIds, :WorkspaceId, :RoleIds

        def initialize(groupids=nil, workspaceid=nil, roleids=nil)
          @GroupIds = groupids
          @WorkspaceId = workspaceid
          @RoleIds = roleids
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @WorkspaceId = params['WorkspaceId']
          @RoleIds = params['RoleIds']
        end
      end

      # UpdateWorkspaceGroupsRoles返回参数结构体
      class UpdateWorkspaceGroupsRolesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 修改工作空间用户组角色是否成功
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.PlatformStatusRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PlatformStatusRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateWorkspaceGroupsTags请求参数结构体
      class UpdateWorkspaceGroupsTagsRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: <p>必填，用户组ID列表，单次最多100个；可通过 ListWorkspaceGroups 接口获取</p>
        # @type GroupIds: Array
        # @param WorkspaceId: <p>必填，工作空间ID</p>
        # @type WorkspaceId: String
        # @param Tags: <p>标签列表，覆盖写用户组的标签；传即覆盖更新，不传或为空则清除全部标签</p>
        # @type Tags: Array

        attr_accessor :GroupIds, :WorkspaceId, :Tags

        def initialize(groupids=nil, workspaceid=nil, tags=nil)
          @GroupIds = groupids
          @WorkspaceId = workspaceid
          @Tags = tags
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @WorkspaceId = params['WorkspaceId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              usertaginfo_tmp = UserTagInfo.new
              usertaginfo_tmp.deserialize(i)
              @Tags << usertaginfo_tmp
            end
          end
        end
      end

      # UpdateWorkspaceGroupsTags返回参数结构体
      class UpdateWorkspaceGroupsTagsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>修改工作空间用户组标签响应</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateWorkspaceGroupsTagsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateWorkspaceGroupsTagsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改工作空间用户组标签响应
      class UpdateWorkspaceGroupsTagsRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # UpdateWorkspace请求参数结构体
      class UpdateWorkspaceRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String
        # @param WorkspaceName: <p>工作空间名称，max_len=128</p>
        # @type WorkspaceName: String
        # @param Description: <p>工作空间描述，max_len=300</p>
        # @type Description: String

        attr_accessor :WorkspaceId, :WorkspaceName, :Description

        def initialize(workspaceid=nil, workspacename=nil, description=nil)
          @WorkspaceId = workspaceid
          @WorkspaceName = workspacename
          @Description = description
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkspaceName = params['WorkspaceName']
          @Description = params['Description']
        end
      end

      # UpdateWorkspace返回参数结构体
      class UpdateWorkspaceResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>操作结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateWorkspaceRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateWorkspaceRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateWorkspaceRole请求参数结构体
      class UpdateWorkspaceRoleRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: String
        # @param BasicInfo: 角色信息
        # @type BasicInfo: :class:`Tencentcloud::Databuddy.v20260715.models.RoleBasicInfo`
        # @param Permissions: 功能点权限
        # @type Permissions: Array

        attr_accessor :WorkspaceId, :BasicInfo, :Permissions

        def initialize(workspaceid=nil, basicinfo=nil, permissions=nil)
          @WorkspaceId = workspaceid
          @BasicInfo = basicinfo
          @Permissions = permissions
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['BasicInfo'].nil?
            @BasicInfo = RoleBasicInfo.new
            @BasicInfo.deserialize(params['BasicInfo'])
          end
          unless params['Permissions'].nil?
            @Permissions = []
            params['Permissions'].each do |i|
              rolepermission_tmp = RolePermission.new
              rolepermission_tmp.deserialize(i)
              @Permissions << rolepermission_tmp
            end
          end
        end
      end

      # UpdateWorkspaceRole返回参数结构体
      class UpdateWorkspaceRoleResponse < TencentCloud::Common::AbstractModel
        # @param Data: 更新工作空间角色结果
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateWorkspaceRoleResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateWorkspaceRoleResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 更新工作空间角色结果
      class UpdateWorkspaceRoleResult < TencentCloud::Common::AbstractModel
        # @param Status: 更新工作空间角色是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 修改工作空间响应
      class UpdateWorkspaceRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # UpdateWorkspaceUsersRoles请求参数结构体
      class UpdateWorkspaceUsersRolesRequest < TencentCloud::Common::AbstractModel
        # @param UserUins: <p>用户ID</p>
        # @type UserUins: Array
        # @param WorkspaceId: <p>工作空间ID</p>
        # @type WorkspaceId: String
        # @param RoleIds: <p>角色ID，可通过 ListWorkspaceRoles 接口获取</p>
        # @type RoleIds: Array

        attr_accessor :UserUins, :WorkspaceId, :RoleIds

        def initialize(useruins=nil, workspaceid=nil, roleids=nil)
          @UserUins = useruins
          @WorkspaceId = workspaceid
          @RoleIds = roleids
        end

        def deserialize(params)
          @UserUins = params['UserUins']
          @WorkspaceId = params['WorkspaceId']
          @RoleIds = params['RoleIds']
        end
      end

      # UpdateWorkspaceUsersRoles返回参数结构体
      class UpdateWorkspaceUsersRolesResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>结果</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.PlatformStatusRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = PlatformStatusRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateWorkspaceUsersTags请求参数结构体
      class UpdateWorkspaceUsersTagsRequest < TencentCloud::Common::AbstractModel
        # @param UserUins: <p>必填，用户UIN列表，单次最多100个</p>
        # @type UserUins: Array
        # @param WorkspaceId: <p>必填，工作空间ID</p>
        # @type WorkspaceId: String
        # @param Tags: <p>待更新的标签集合（标签维度及标签值通过 ID 指定），覆盖更新语义：传入后将被覆盖为目标用户的全部直绑标签，不传或传空数组则清空目标用户的所有直绑标签。每个元素中 TagId 必填，Values[].TagValueId 必填；传入的 TagValue、Source、GroupNames 服务端不读取，无需传入。标签维度与标签值可先通过 CreateTags / CreateTagValues 创建，再通过 ListTags 获取 ID（TagId 取 Items[].TagId，TagValueId 取 Items[].TagValues[].TagValueId）。</p>
        # @type Tags: Array

        attr_accessor :UserUins, :WorkspaceId, :Tags

        def initialize(useruins=nil, workspaceid=nil, tags=nil)
          @UserUins = useruins
          @WorkspaceId = workspaceid
          @Tags = tags
        end

        def deserialize(params)
          @UserUins = params['UserUins']
          @WorkspaceId = params['WorkspaceId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              usertaginfo_tmp = UserTagInfo.new
              usertaginfo_tmp.deserialize(i)
              @Tags << usertaginfo_tmp
            end
          end
        end
      end

      # UpdateWorkspaceUsersTags返回参数结构体
      class UpdateWorkspaceUsersTagsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>修改工作空间用户标签响应</p>
        # @type Data: :class:`Tencentcloud::Databuddy.v20260715.models.UpdateWorkspaceUsersTagsRsp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = UpdateWorkspaceUsersTagsRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 修改工作空间用户标签响应
      class UpdateWorkspaceUsersTagsRsp < TencentCloud::Common::AbstractModel
        # @param Status: 操作是否成功
        # @type Status: Boolean

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 用户对资产的操作信息
      class UserActivityInfo < TencentCloud::Common::AbstractModel
        # @param IsFavorite: 是否收藏
        # - true  是
        # - false 否
        # @type IsFavorite: Boolean
        # @param LastViewTime: 上次查看时间
        # @type LastViewTime: String

        attr_accessor :IsFavorite, :LastViewTime

        def initialize(isfavorite=nil, lastviewtime=nil)
          @IsFavorite = isfavorite
          @LastViewTime = lastviewtime
        end

        def deserialize(params)
          @IsFavorite = params['IsFavorite']
          @LastViewTime = params['LastViewTime']
        end
      end

      # 用户基本信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserUin: <p>uin</p>
        # @type UserUin: String
        # @param UserName: <p>子用户名称</p>
        # @type UserName: String
        # @param Nickname: <p>子用户昵称</p>
        # @type Nickname: String
        # @param UserTag: <p>0: 普通用户 1: entraId用户</p>
        # @type UserTag: String

        attr_accessor :UserUin, :UserName, :Nickname, :UserTag

        def initialize(useruin=nil, username=nil, nickname=nil, usertag=nil)
          @UserUin = useruin
          @UserName = username
          @Nickname = nickname
          @UserTag = usertag
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @UserName = params['UserName']
          @Nickname = params['Nickname']
          @UserTag = params['UserTag']
        end
      end

      # 用户/用户组标签维度信息（用户管理域独立结构，与通用 TagInfo 解耦，仅供用户/用户组标签接口使用）
      class UserTagInfo < TencentCloud::Common::AbstractModel
        # @param TagId: <p>标签维度ID。ID 模式写接口（UpdateWorkspaceUsersTags / UpdateWorkspaceGroupsTags）中必填，可通过 ListTags 接口出参 Items[].TagId 获取，也可通过 CreateTags 创建后获取；按名称模式接口（AttachWorkspaceUserTags / DetachWorkspaceUserTags）中无需传入；查询接口出参中回填。ID 不存在或已删除时接口报错 TagNotExist</p>
        # @type TagId: String
        # @param TagName: <p>标签名称。按名称模式接口（AttachWorkspaceUserTags / DetachWorkspaceUserTags）中必填；ID 模式写接口（UpdateWorkspaceUsersTags / UpdateWorkspaceGroupsTags）中无需传入，服务端忽略；查询接口出参中回填</p>
        # @type TagName: String
        # @param Values: <p>该标签维度下绑定的标签值集合，元素结构见 TagValueInfo。ID 模式写接口中元素 TagValueId 必填；按名称模式接口中元素 TagValue 必填；查询接口出参中回填</p>
        # @type Values: Array

        attr_accessor :TagId, :TagName, :Values

        def initialize(tagid=nil, tagname=nil, values=nil)
          @TagId = tagid
          @TagName = tagname
          @Values = values
        end

        def deserialize(params)
          @TagId = params['TagId']
          @TagName = params['TagName']
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              tagvalueinfo_tmp = TagValueInfo.new
              tagvalueinfo_tmp.deserialize(i)
              @Values << tagvalueinfo_tmp
            end
          end
        end
      end

      # 视图信息
      class ViewInfo < TencentCloud::Common::AbstractModel
        # @param Name: 表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Comment: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Comment: String
        # @param Columns: 字段信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Properties: 属性值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Properties: Array
        # @param Audit: 编辑者
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Audit: :class:`Tencentcloud::Databuddy.v20260715.models.Audit`
        # @param MetaOwner: owner信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaOwner: :class:`Tencentcloud::Databuddy.v20260715.models.MetaOwner`
        # @param AssetGuid: 资产全局唯一ID
        # @type AssetGuid: String
        # @param PermissionDetail: 当前用户对该实体的权限信息
        # @type PermissionDetail: :class:`Tencentcloud::Databuddy.v20260715.models.PermissionDetail`
        # @param Tags: 标签信息列表。注意：仅当请求中 FetchTags=true 时返回，默认不返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :Name, :Comment, :Columns, :Properties, :Audit, :MetaOwner, :AssetGuid, :PermissionDetail, :Tags

        def initialize(name=nil, comment=nil, columns=nil, properties=nil, audit=nil, metaowner=nil, assetguid=nil, permissiondetail=nil, tags=nil)
          @Name = name
          @Comment = comment
          @Columns = columns
          @Properties = properties
          @Audit = audit
          @MetaOwner = metaowner
          @AssetGuid = assetguid
          @PermissionDetail = permissiondetail
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['Columns'].nil?
            @Columns = []
            params['Columns'].each do |i|
              columninfo_tmp = ColumnInfo.new
              columninfo_tmp.deserialize(i)
              @Columns << columninfo_tmp
            end
          end
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          unless params['Audit'].nil?
            @Audit = Audit.new
            @Audit.deserialize(params['Audit'])
          end
          unless params['MetaOwner'].nil?
            @MetaOwner = MetaOwner.new
            @MetaOwner.deserialize(params['MetaOwner'])
          end
          @AssetGuid = params['AssetGuid']
          unless params['PermissionDetail'].nil?
            @PermissionDetail = PermissionDetail.new
            @PermissionDetail.deserialize(params['PermissionDetail'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              commontaginfo_tmp = CommonTagInfo.new
              commontaginfo_tmp.deserialize(i)
              @Tags << commontaginfo_tmp
            end
          end
        end
      end

      # 数据卷信息
      class Volume < TencentCloud::Common::AbstractModel
        # @param Name: <p>名称</p>
        # @type Name: String
        # @param CatalogName: <p>catalog信息</p>
        # @type CatalogName: String
        # @param SchemaName: <p>schema 信息</p>
        # @type SchemaName: String
        # @param Comment: <p>模型描述</p>
        # @type Comment: String
        # @param StorageLocation: <p>存储位置</p>
        # @type StorageLocation: String
        # @param Properties: <p>扩展数据</p>
        # @type Properties: Array
        # @param Audit: <p>审计数据</p>
        # @type Audit: :class:`Tencentcloud::Databuddy.v20260715.models.Audit`
        # @param Type: 数据卷类型，取值：MANAGED(内部管理)、EXTERNAL(外部存储)
        # @type Type: String
        # @param MetaOwner: <p>责任人信息</p>
        # @type MetaOwner: :class:`Tencentcloud::Databuddy.v20260715.models.MetaOwner`
        # @param AssetGuid: <p>资产全局唯一ID</p>
        # @type AssetGuid: String
        # @param PermissionDetail: <p>当前用户对该实体的权限信息</p>
        # @type PermissionDetail: :class:`Tencentcloud::Databuddy.v20260715.models.PermissionDetail`
        # @param Tags: <p>标签信息列表。注意：仅当请求中 FetchTags=true 时返回，默认不返回</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :Name, :CatalogName, :SchemaName, :Comment, :StorageLocation, :Properties, :Audit, :Type, :MetaOwner, :AssetGuid, :PermissionDetail, :Tags

        def initialize(name=nil, catalogname=nil, schemaname=nil, comment=nil, storagelocation=nil, properties=nil, audit=nil, type=nil, metaowner=nil, assetguid=nil, permissiondetail=nil, tags=nil)
          @Name = name
          @CatalogName = catalogname
          @SchemaName = schemaname
          @Comment = comment
          @StorageLocation = storagelocation
          @Properties = properties
          @Audit = audit
          @Type = type
          @MetaOwner = metaowner
          @AssetGuid = assetguid
          @PermissionDetail = permissiondetail
          @Tags = tags
        end

        def deserialize(params)
          @Name = params['Name']
          @CatalogName = params['CatalogName']
          @SchemaName = params['SchemaName']
          @Comment = params['Comment']
          @StorageLocation = params['StorageLocation']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              kvpair_tmp = KVPair.new
              kvpair_tmp.deserialize(i)
              @Properties << kvpair_tmp
            end
          end
          unless params['Audit'].nil?
            @Audit = Audit.new
            @Audit.deserialize(params['Audit'])
          end
          @Type = params['Type']
          unless params['MetaOwner'].nil?
            @MetaOwner = MetaOwner.new
            @MetaOwner.deserialize(params['MetaOwner'])
          end
          @AssetGuid = params['AssetGuid']
          unless params['PermissionDetail'].nil?
            @PermissionDetail = PermissionDetail.new
            @PermissionDetail.deserialize(params['PermissionDetail'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              commontaginfo_tmp = CommonTagInfo.new
              commontaginfo_tmp.deserialize(i)
              @Tags << commontaginfo_tmp
            end
          end
        end
      end

      # 工作流完整配置
      class Workflow < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: <p>工作空间ID，可通过 ListWorkspaces 获取</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param BaseInfo: <p>工作流基本信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BaseInfo: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowBaseInfo`
        # @param Trigger: <p>工作流调度配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trigger: Array
        # @param ParamList: <p>工作流参数列表 参数名必填且只能包含数字、大小写字母、空格、.$@#!%^&amp;*()-_+=&gt; 最长128个字符</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamList: Array
        # @param LabelList: <p>标签 标签名必填且只能包含数字、大小写字母、空格、.$@#!%^&amp;*()-_+=&gt;'，最长128个字符</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelList: Array
        # @param Alarm: <p>工作流告警配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alarm: :class:`Tencentcloud::Databuddy.v20260715.models.AlarmBrief`
        # @param MonitorMetric: <p>监控指标配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorMetric: :class:`Tencentcloud::Databuddy.v20260715.models.MonitorMetricBrief`
        # @param AdvanceConfig: <p>工作流高级设置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvanceConfig: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowAdvanceConfig`
        # @param TaskList: <p>工作流任务列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskList: Array
        # @param BundleId: <p>BundleId，可通过 Bundle 相关接口获取</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: <p>Bundle信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param GitConfigId: <p>GIT配置ID，对应GetWorkspaceConfig接口中的ConfigKey</p>    -
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitConfigId: String
        # @param GitBranch: <p>Git分支信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitBranch: String

        attr_accessor :WorkspaceId, :BaseInfo, :Trigger, :ParamList, :LabelList, :Alarm, :MonitorMetric, :AdvanceConfig, :TaskList, :BundleId, :BundleInfo, :GitConfigId, :GitBranch

        def initialize(workspaceid=nil, baseinfo=nil, trigger=nil, paramlist=nil, labellist=nil, alarm=nil, monitormetric=nil, advanceconfig=nil, tasklist=nil, bundleid=nil, bundleinfo=nil, gitconfigid=nil, gitbranch=nil)
          @WorkspaceId = workspaceid
          @BaseInfo = baseinfo
          @Trigger = trigger
          @ParamList = paramlist
          @LabelList = labellist
          @Alarm = alarm
          @MonitorMetric = monitormetric
          @AdvanceConfig = advanceconfig
          @TaskList = tasklist
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GitConfigId = gitconfigid
          @GitBranch = gitbranch
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          unless params['BaseInfo'].nil?
            @BaseInfo = WorkflowBaseInfo.new
            @BaseInfo.deserialize(params['BaseInfo'])
          end
          unless params['Trigger'].nil?
            @Trigger = []
            params['Trigger'].each do |i|
              workflowtriggerconfiguration_tmp = WorkflowTriggerConfiguration.new
              workflowtriggerconfiguration_tmp.deserialize(i)
              @Trigger << workflowtriggerconfiguration_tmp
            end
          end
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          unless params['Alarm'].nil?
            @Alarm = AlarmBrief.new
            @Alarm.deserialize(params['Alarm'])
          end
          unless params['MonitorMetric'].nil?
            @MonitorMetric = MonitorMetricBrief.new
            @MonitorMetric.deserialize(params['MonitorMetric'])
          end
          unless params['AdvanceConfig'].nil?
            @AdvanceConfig = WorkflowAdvanceConfig.new
            @AdvanceConfig.deserialize(params['AdvanceConfig'])
          end
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              workflowtask_tmp = WorkflowTask.new
              workflowtask_tmp.deserialize(i)
              @TaskList << workflowtask_tmp
            end
          end
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @GitConfigId = params['GitConfigId']
          @GitBranch = params['GitBranch']
        end
      end

      # 工作流高级设置
      class WorkflowAdvanceConfig < TencentCloud::Common::AbstractModel
        # @param QueuingMode: 排队模式，ON（默认）, OFF
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueuingMode: String
        # @param MaxConcurrentNum: 默认值为1

        # QueuingMode为ON时，MaxConcurrentNum 设置才生效；只能输入大于0的整数，输入非法值自动转换为1
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxConcurrentNum: Integer

        attr_accessor :QueuingMode, :MaxConcurrentNum

        def initialize(queuingmode=nil, maxconcurrentnum=nil)
          @QueuingMode = queuingmode
          @MaxConcurrentNum = maxconcurrentnum
        end

        def deserialize(params)
          @QueuingMode = params['QueuingMode']
          @MaxConcurrentNum = params['MaxConcurrentNum']
        end
      end

      # 工作流基本信息（入参用）
      class WorkflowBaseInfo < TencentCloud::Common::AbstractModel
        # @param WorkflowName: 工作流名称，长度不超过 1024
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowId: 工作流ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param RunUserUin: 工作流运行人UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param OwnerUserName: 工作流负责人用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserName: String
        # @param CreateUserUin: <p>创建人UIN。系统生成字段，仅出参返回，入参无需传入（传入不生效，服务端忽略且不报错）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String

        attr_accessor :WorkflowName, :WorkflowId, :RunUserUin, :Description, :OwnerUserName, :CreateUserUin
        extend Gem::Deprecate
        deprecate :CreateUserUin, :none, 2026, 10
        deprecate :CreateUserUin=, :none, 2026, 10

        def initialize(workflowname=nil, workflowid=nil, runuseruin=nil, description=nil, ownerusername=nil, createuseruin=nil)
          @WorkflowName = workflowname
          @WorkflowId = workflowid
          @RunUserUin = runuseruin
          @Description = description
          @OwnerUserName = ownerusername
          @CreateUserUin = createuseruin
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @WorkflowId = params['WorkflowId']
          @RunUserUin = params['RunUserUin']
          @Description = params['Description']
          @OwnerUserName = params['OwnerUserName']
          @CreateUserUin = params['CreateUserUin']
        end
      end

      # 工作流基本信息（出参用，含系统生成字段与负责人展示信息）
      class WorkflowBaseInfoDetail < TencentCloud::Common::AbstractModel
        # @param WorkflowName: 工作流名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowId: 工作流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param CreateUserUin: 创建人UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param RunUserUin: 工作流运行人UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param Description: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param OwnerUserName: 工作流负责人用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserName: String
        # @param OwnerUserUin: 工作流负责人UIN
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserUin: String
        # @param OwnerDisplayName: 工作流负责人展示名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerDisplayName: String
        # @param CreateTime: 创建时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :WorkflowName, :WorkflowId, :CreateUserUin, :RunUserUin, :Description, :OwnerUserName, :OwnerUserUin, :OwnerDisplayName, :CreateTime, :UpdateTime

        def initialize(workflowname=nil, workflowid=nil, createuseruin=nil, runuseruin=nil, description=nil, ownerusername=nil, owneruseruin=nil, ownerdisplayname=nil, createtime=nil, updatetime=nil)
          @WorkflowName = workflowname
          @WorkflowId = workflowid
          @CreateUserUin = createuseruin
          @RunUserUin = runuseruin
          @Description = description
          @OwnerUserName = ownerusername
          @OwnerUserUin = owneruseruin
          @OwnerDisplayName = ownerdisplayname
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @WorkflowId = params['WorkflowId']
          @CreateUserUin = params['CreateUserUin']
          @RunUserUin = params['RunUserUin']
          @Description = params['Description']
          @OwnerUserName = params['OwnerUserName']
          @OwnerUserUin = params['OwnerUserUin']
          @OwnerDisplayName = params['OwnerDisplayName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 工作流列表项
      class WorkflowBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowName: <p>工作流名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowId: <p>工作流ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param Description: <p>描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateUserUin: <p>创建人UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param OwnerUserName: <p>工作流负责人用户名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserName: String
        # @param OwnerUserUin: <p>工作流负责人UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUserUin: String
        # @param OwnerDisplayName: <p>工作流负责人展示名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerDisplayName: String
        # @param CreateTime: <p>创建时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param LabelList: <p>标签列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelList: Array
        # @param Trigger: <p>工作流调度配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Trigger: Array
        # @param RunUserUin: <p>工作流运行人UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param RunUserName: <p>工作流运行人用户名</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserName: String
        # @param TaskList: <p>工作流任务节点列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskList: Array
        # @param WorkflowRunList: <p>工作流运行情况列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunList: Array
        # @param ResourceGroupInfoList: <p>资源组信息列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupInfoList: Array
        # @param Permission: <p>授权权限类型<br>PERMISSION_TYPE_UNSPECIFIED：未指定权限<br>MANAGE : 管理权限：包含所有操作权限<br>RUN : 运行权限：可执行实体<br>VIEW : 查看权限：可查看实体内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permission: String
        # @param BundleId: <p>工作流绑定的 Bundle 唯一标识，未绑定时为空</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleId: String
        # @param BundleInfo: <p>Bundle信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleInfo: String
        # @param GitConfigId: <p>Git配置ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitConfigId: String
        # @param GitBranch: <p>Git分支信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GitBranch: String

        attr_accessor :WorkflowName, :WorkflowId, :Description, :CreateUserUin, :OwnerUserName, :OwnerUserUin, :OwnerDisplayName, :CreateTime, :UpdateTime, :LabelList, :Trigger, :RunUserUin, :RunUserName, :TaskList, :WorkflowRunList, :ResourceGroupInfoList, :Permission, :BundleId, :BundleInfo, :GitConfigId, :GitBranch

        def initialize(workflowname=nil, workflowid=nil, description=nil, createuseruin=nil, ownerusername=nil, owneruseruin=nil, ownerdisplayname=nil, createtime=nil, updatetime=nil, labellist=nil, trigger=nil, runuseruin=nil, runusername=nil, tasklist=nil, workflowrunlist=nil, resourcegroupinfolist=nil, permission=nil, bundleid=nil, bundleinfo=nil, gitconfigid=nil, gitbranch=nil)
          @WorkflowName = workflowname
          @WorkflowId = workflowid
          @Description = description
          @CreateUserUin = createuseruin
          @OwnerUserName = ownerusername
          @OwnerUserUin = owneruseruin
          @OwnerDisplayName = ownerdisplayname
          @CreateTime = createtime
          @UpdateTime = updatetime
          @LabelList = labellist
          @Trigger = trigger
          @RunUserUin = runuseruin
          @RunUserName = runusername
          @TaskList = tasklist
          @WorkflowRunList = workflowrunlist
          @ResourceGroupInfoList = resourcegroupinfolist
          @Permission = permission
          @BundleId = bundleid
          @BundleInfo = bundleinfo
          @GitConfigId = gitconfigid
          @GitBranch = gitbranch
        end

        def deserialize(params)
          @WorkflowName = params['WorkflowName']
          @WorkflowId = params['WorkflowId']
          @Description = params['Description']
          @CreateUserUin = params['CreateUserUin']
          @OwnerUserName = params['OwnerUserName']
          @OwnerUserUin = params['OwnerUserUin']
          @OwnerDisplayName = params['OwnerDisplayName']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          unless params['Trigger'].nil?
            @Trigger = []
            params['Trigger'].each do |i|
              workflowtriggerconfiguration_tmp = WorkflowTriggerConfiguration.new
              workflowtriggerconfiguration_tmp.deserialize(i)
              @Trigger << workflowtriggerconfiguration_tmp
            end
          end
          @RunUserUin = params['RunUserUin']
          @RunUserName = params['RunUserName']
          unless params['TaskList'].nil?
            @TaskList = []
            params['TaskList'].each do |i|
              workflowtasknodebrief_tmp = WorkflowTaskNodeBrief.new
              workflowtasknodebrief_tmp.deserialize(i)
              @TaskList << workflowtasknodebrief_tmp
            end
          end
          unless params['WorkflowRunList'].nil?
            @WorkflowRunList = []
            params['WorkflowRunList'].each do |i|
              workflowrunbrief_tmp = WorkflowRunBrief.new
              workflowrunbrief_tmp.deserialize(i)
              @WorkflowRunList << workflowrunbrief_tmp
            end
          end
          unless params['ResourceGroupInfoList'].nil?
            @ResourceGroupInfoList = []
            params['ResourceGroupInfoList'].each do |i|
              resourcegroupinfo_tmp = ResourceGroupInfo.new
              resourcegroupinfo_tmp.deserialize(i)
              @ResourceGroupInfoList << resourcegroupinfo_tmp
            end
          end
          @Permission = params['Permission']
          @BundleId = params['BundleId']
          @BundleInfo = params['BundleInfo']
          @GitConfigId = params['GitConfigId']
          @GitBranch = params['GitBranch']
        end
      end

      # 工作流运行信息
      class WorkflowRun < TencentCloud::Common::AbstractModel
        # @param AppId: <p>主账号ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: String
        # @param WorkflowName: <p>工作流名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param WorkflowId: <p>工作流ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowRunId: <p>工作流运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param WorkspaceId: <p>工作空间ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param TriggerType: <p>触发方式，Scheduler、ManualTrigger、Event (参考SchedulerTriggerType)</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param RunStartTime: <p>运行开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param PendingStartTime: <p>pending 状态开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PendingStartTime: String
        # @param QueueStartTime: <p>queue 状态开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueStartTime: String
        # @param RunEndTime: <p>运行结束时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param EndTime: <p>终态时间，运行进入终态时都有值，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param RunCostTime: <p>运行时长，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param QueueCostTime: <p>并发排队花费时间，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueueCostTime: String
        # @param PendingCostTime: <p>等待资源花费时间，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PendingCostTime: String
        # @param RunState: <p>运行状态。CREATE(&quot;初始化&quot;),     QUEUED(&quot;等待中&quot;),     PENDING(&quot;准备中&quot;),     RUNNING(&quot;运行中&quot;),     SKIPPED(&quot;跳过运行&quot;),     SUCCESS(&quot;成功&quot;),     FAILED(&quot;失败&quot;),     TERMINATING(&quot;终止中&quot;),     TERMINATED(&quot;终止&quot;),     CANCELLED(&quot;被手动终止&quot;)等</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param ResourceGroupIds: <p>计算资源（任务的资源组ID集合）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupIds: Array
        # @param RunUserUin: <p>运行用户UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param RunUserName: <p>运行用户名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserName: String
        # @param ErrorCodeString: <p>错误码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String
        # @param WorkflowParams: <p>运行参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowParams: String
        # @param WorkflowVersionId: <p>工作流版本ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowVersionId: String
        # @param SupportRerun: <p>当前工作流是否支持重跑</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportRerun: Boolean
        # @param CreateTime: <p>工作流运行创建时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param RerunTimes: <p>重跑次数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RerunTimes: Integer
        # @param SelectedTaskIds: <p>运行的任务范围，任务ID列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SelectedTaskIds: Array
        # @param ResourceGroupInfoList: <p>资源组信息列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupInfoList: Array
        # @param LabelList: <p>标签列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelList: Array
        # @param ParentWorkflowRunId: <p>父工作流运行ID 【由嵌套工作流触发独有】</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWorkflowRunId: String
        # @param ParentWorkflowTaskRunId: <p>父工作流任务运行ID 【由嵌套工作流触发独有】</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWorkflowTaskRunId: String
        # @param ParentWorkflowTaskRunName: <p>父工作流任务运行名称 【由嵌套工作流触发独有】</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParentWorkflowTaskRunName: String
        # @param Permission: <p>授权权限类型<br>PERMISSION_TYPE_UNSPECIFIED：未指定权限<br>MANAGE : 管理权限：包含所有操作权限<br>RUN : 运行权限：可执行实体<br>VIEW : 查看权限：可查看实体内容</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Permission: String
        # @param AdvancedParameters: <p>工作流高级运行时用户填入的参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedParameters: Array
        # @param ScheduledTime: <p>计划调度时间</p><p>参数格式：毫秒时间戳（UTC）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduledTime: String

        attr_accessor :AppId, :WorkflowName, :WorkflowId, :WorkflowRunId, :WorkspaceId, :TriggerType, :RunStartTime, :PendingStartTime, :QueueStartTime, :RunEndTime, :EndTime, :RunCostTime, :QueueCostTime, :PendingCostTime, :RunState, :ResourceGroupIds, :RunUserUin, :RunUserName, :ErrorCodeString, :WorkflowParams, :WorkflowVersionId, :SupportRerun, :CreateTime, :RerunTimes, :SelectedTaskIds, :ResourceGroupInfoList, :LabelList, :ParentWorkflowRunId, :ParentWorkflowTaskRunId, :ParentWorkflowTaskRunName, :Permission, :AdvancedParameters, :ScheduledTime

        def initialize(appid=nil, workflowname=nil, workflowid=nil, workflowrunid=nil, workspaceid=nil, triggertype=nil, runstarttime=nil, pendingstarttime=nil, queuestarttime=nil, runendtime=nil, endtime=nil, runcosttime=nil, queuecosttime=nil, pendingcosttime=nil, runstate=nil, resourcegroupids=nil, runuseruin=nil, runusername=nil, errorcodestring=nil, workflowparams=nil, workflowversionid=nil, supportrerun=nil, createtime=nil, reruntimes=nil, selectedtaskids=nil, resourcegroupinfolist=nil, labellist=nil, parentworkflowrunid=nil, parentworkflowtaskrunid=nil, parentworkflowtaskrunname=nil, permission=nil, advancedparameters=nil, scheduledtime=nil)
          @AppId = appid
          @WorkflowName = workflowname
          @WorkflowId = workflowid
          @WorkflowRunId = workflowrunid
          @WorkspaceId = workspaceid
          @TriggerType = triggertype
          @RunStartTime = runstarttime
          @PendingStartTime = pendingstarttime
          @QueueStartTime = queuestarttime
          @RunEndTime = runendtime
          @EndTime = endtime
          @RunCostTime = runcosttime
          @QueueCostTime = queuecosttime
          @PendingCostTime = pendingcosttime
          @RunState = runstate
          @ResourceGroupIds = resourcegroupids
          @RunUserUin = runuseruin
          @RunUserName = runusername
          @ErrorCodeString = errorcodestring
          @WorkflowParams = workflowparams
          @WorkflowVersionId = workflowversionid
          @SupportRerun = supportrerun
          @CreateTime = createtime
          @RerunTimes = reruntimes
          @SelectedTaskIds = selectedtaskids
          @ResourceGroupInfoList = resourcegroupinfolist
          @LabelList = labellist
          @ParentWorkflowRunId = parentworkflowrunid
          @ParentWorkflowTaskRunId = parentworkflowtaskrunid
          @ParentWorkflowTaskRunName = parentworkflowtaskrunname
          @Permission = permission
          @AdvancedParameters = advancedparameters
          @ScheduledTime = scheduledtime
        end

        def deserialize(params)
          @AppId = params['AppId']
          @WorkflowName = params['WorkflowName']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunId = params['WorkflowRunId']
          @WorkspaceId = params['WorkspaceId']
          @TriggerType = params['TriggerType']
          @RunStartTime = params['RunStartTime']
          @PendingStartTime = params['PendingStartTime']
          @QueueStartTime = params['QueueStartTime']
          @RunEndTime = params['RunEndTime']
          @EndTime = params['EndTime']
          @RunCostTime = params['RunCostTime']
          @QueueCostTime = params['QueueCostTime']
          @PendingCostTime = params['PendingCostTime']
          @RunState = params['RunState']
          @ResourceGroupIds = params['ResourceGroupIds']
          @RunUserUin = params['RunUserUin']
          @RunUserName = params['RunUserName']
          @ErrorCodeString = params['ErrorCodeString']
          @WorkflowParams = params['WorkflowParams']
          @WorkflowVersionId = params['WorkflowVersionId']
          @SupportRerun = params['SupportRerun']
          @CreateTime = params['CreateTime']
          @RerunTimes = params['RerunTimes']
          @SelectedTaskIds = params['SelectedTaskIds']
          unless params['ResourceGroupInfoList'].nil?
            @ResourceGroupInfoList = []
            params['ResourceGroupInfoList'].each do |i|
              resourcegroupinfo_tmp = ResourceGroupInfo.new
              resourcegroupinfo_tmp.deserialize(i)
              @ResourceGroupInfoList << resourcegroupinfo_tmp
            end
          end
          unless params['LabelList'].nil?
            @LabelList = []
            params['LabelList'].each do |i|
              labelbrief_tmp = LabelBrief.new
              labelbrief_tmp.deserialize(i)
              @LabelList << labelbrief_tmp
            end
          end
          @ParentWorkflowRunId = params['ParentWorkflowRunId']
          @ParentWorkflowTaskRunId = params['ParentWorkflowTaskRunId']
          @ParentWorkflowTaskRunName = params['ParentWorkflowTaskRunName']
          @Permission = params['Permission']
          unless params['AdvancedParameters'].nil?
            @AdvancedParameters = []
            params['AdvancedParameters'].each do |i|
              advancedparameter_tmp = AdvancedParameter.new
              advancedparameter_tmp.deserialize(i)
              @AdvancedParameters << advancedparameter_tmp
            end
          end
          @ScheduledTime = params['ScheduledTime']
        end
      end

      # 工作流列表项的运行情况
      class WorkflowRunBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowRunId: 工作流运行ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param RunStartTime: 运行开始时间，单位：毫秒时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunState: <p>运行状态。CREATE(&quot;初始化&quot;),     QUEUED(&quot;等待中&quot;),     PENDING(&quot;准备中&quot;),     RUNNING(&quot;运行中&quot;),     SKIPPED(&quot;跳过运行&quot;),     SUCCESS(&quot;成功&quot;),     FAILED(&quot;失败&quot;),     TERMINATING(&quot;终止中&quot;),     TERMINATED(&quot;终止&quot;),     CANCELLED(&quot;被手动终止&quot;)等</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param ErrorCodeString: 运行错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String

        attr_accessor :WorkflowRunId, :RunStartTime, :RunState, :ErrorCodeString

        def initialize(workflowrunid=nil, runstarttime=nil, runstate=nil, errorcodestring=nil)
          @WorkflowRunId = workflowrunid
          @RunStartTime = runstarttime
          @RunState = runstate
          @ErrorCodeString = errorcodestring
        end

        def deserialize(params)
          @WorkflowRunId = params['WorkflowRunId']
          @RunStartTime = params['RunStartTime']
          @RunState = params['RunState']
          @ErrorCodeString = params['ErrorCodeString']
        end
      end

      # 工作流任务信息。 注意：本结构同时用于入参（CreateWorkflow / UpdateWorkflow）与出参（GetWorkflow）， 其中 CreateTime / UpdateTime / CreateUserUin 为系统生成字段，仅在出参中有值， 入参传值不生效（服务端忽略且不报错）。
      class WorkflowTask < TencentCloud::Common::AbstractModel
        # @param ParamList: 任务参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamList: Array
        # @param DependOnList: 任务依赖
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnList: Array
        # @param TaskId: 任务ID，创建时无需传入，由服务端生成
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: 任务名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: :class:`Tencentcloud::Databuddy.v20260715.models.TaskType`
        # @param ResourceGroupId: 资源组ID，可通过资源组相关接口获取
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param Description: 任务描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Alarm: 任务告警
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alarm: :class:`Tencentcloud::Databuddy.v20260715.models.AlarmBrief`
        # @param MonitorMetric: 监控指标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonitorMetric: :class:`Tencentcloud::Databuddy.v20260715.models.MonitorMetricBrief`
        # @param TaskRetryStrategy: 任务重试策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRetryStrategy: :class:`Tencentcloud::Databuddy.v20260715.models.TaskRetryStrategy`
        # @param DependOnRunCondition: <p>任依赖运行条件</p><ul><li>ALL_SUCCESS: 全部成功：所有上游依赖任务均已执行并成功</li><li>ONE_SUCCESS: 至少一个成功：至少有一个上游依赖任务成功</li><li>NONE_FAILED: 目前没有失败：没有依赖任务失败，并且至少有一个依赖任务在运行中</li><li>ALL_DONE: 全部完成：所有上游依赖任务均已执行并完成（无论成功或失败</li><li>ONE_FAILED: 至少一个失败：至少有一个上游依赖任务失败</li><li>ALL_FAILED: 全部失败：所有上游依赖任务都失败</li><li>ALL_DONE_AT_LEAST_ONE_SUCCESS：上游全部完成至少一个成功: 所有上游依赖任务都达到终态时，进行依赖判断，至少有一个成功，则依赖判断成功，否则就是跳过运行</li><li>ALL_SKIPPED：上游全部完成，没有跳过运行: 所有上游依赖任务都达到终态时，进行依赖判断, 如果上游状态全部都是成功、失败、上游失败状态，则依赖判断成功，否则为跳过运行</li><li>ONE_DONE：至少一个完成：上游只要有一个完成了，就进行依赖判断，且依赖判断成功，否则还是等待上游</li><li>ALL_DONE_NONE_FAILED_AT_LEAST_ONE_SUCCESS：上游全部完成，没有失败，至少有一个成功: 所有上游依赖任务都达到终态时，进行依赖判断，上游没有一个失败且至少有一个成功的情况下，依赖判断成功，否则就是跳过运行</li><li>NONE_SKIPPED：上游全部完成，没有跳过运行: 所有上游依赖任务都达到终态时，进行依赖判断, 如果上游状态全部都是成功、失败、上游失败状态，则依赖判断成功，否则为跳过运行</li><li>ALL_DONE_AT_LEAST_ONE_FAILED：上游全部完成至少一个失败: 所有上游依赖任务都达到终态时，进行依赖判断，至少有一个失败，则依赖判断成功，否则就是跳过运行</li><li>ADVANCED:运行条件为高级模式时配置</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnRunCondition: String
        # @param LeftCoordinate: 任务X坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: 任务Y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param AdvancedDependencyConfig: <p>任务高级运行参数，当DependOnRunCondition为ADVANCED时配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedDependencyConfig: :class:`Tencentcloud::Databuddy.v20260715.models.AdvancedDependencyConfig`
        # @param InnerTask: <p>内嵌任务（FOR_EACH任务的子任务）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTask: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowTask`
        # @param CreateTime: <p>创建时间，单位：毫秒时间戳。系统生成字段，仅出参返回，入参无需传入（传入不生效，服务端忽略且不报错）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间，单位：毫秒时间戳。系统生成字段，仅出参返回，入参无需传入（传入不生效，服务端忽略且不报错）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param CreateUserUin: <p>创建人UIN。系统生成字段，仅出参返回，入参无需传入（传入不生效，服务端忽略且不报错）</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String

        attr_accessor :ParamList, :DependOnList, :TaskId, :TaskName, :TaskType, :ResourceGroupId, :Description, :Alarm, :MonitorMetric, :TaskRetryStrategy, :DependOnRunCondition, :LeftCoordinate, :TopCoordinate, :AdvancedDependencyConfig, :InnerTask, :CreateTime, :UpdateTime, :CreateUserUin

        def initialize(paramlist=nil, dependonlist=nil, taskid=nil, taskname=nil, tasktype=nil, resourcegroupid=nil, description=nil, alarm=nil, monitormetric=nil, taskretrystrategy=nil, dependonruncondition=nil, leftcoordinate=nil, topcoordinate=nil, advanceddependencyconfig=nil, innertask=nil, createtime=nil, updatetime=nil, createuseruin=nil)
          @ParamList = paramlist
          @DependOnList = dependonlist
          @TaskId = taskid
          @TaskName = taskname
          @TaskType = tasktype
          @ResourceGroupId = resourcegroupid
          @Description = description
          @Alarm = alarm
          @MonitorMetric = monitormetric
          @TaskRetryStrategy = taskretrystrategy
          @DependOnRunCondition = dependonruncondition
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @AdvancedDependencyConfig = advanceddependencyconfig
          @InnerTask = innertask
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CreateUserUin = createuseruin
        end

        def deserialize(params)
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          unless params['DependOnList'].nil?
            @DependOnList = []
            params['DependOnList'].each do |i|
              dependonbrief_tmp = DependOnBrief.new
              dependonbrief_tmp.deserialize(i)
              @DependOnList << dependonbrief_tmp
            end
          end
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          unless params['TaskType'].nil?
            @TaskType = TaskType.new
            @TaskType.deserialize(params['TaskType'])
          end
          @ResourceGroupId = params['ResourceGroupId']
          @Description = params['Description']
          unless params['Alarm'].nil?
            @Alarm = AlarmBrief.new
            @Alarm.deserialize(params['Alarm'])
          end
          unless params['MonitorMetric'].nil?
            @MonitorMetric = MonitorMetricBrief.new
            @MonitorMetric.deserialize(params['MonitorMetric'])
          end
          unless params['TaskRetryStrategy'].nil?
            @TaskRetryStrategy = TaskRetryStrategy.new
            @TaskRetryStrategy.deserialize(params['TaskRetryStrategy'])
          end
          @DependOnRunCondition = params['DependOnRunCondition']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          unless params['AdvancedDependencyConfig'].nil?
            @AdvancedDependencyConfig = AdvancedDependencyConfig.new
            @AdvancedDependencyConfig.deserialize(params['AdvancedDependencyConfig'])
          end
          unless params['InnerTask'].nil?
            @InnerTask = WorkflowTask.new
            @InnerTask.deserialize(params['InnerTask'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CreateUserUin = params['CreateUserUin']
        end
      end

      # 工作流列表项中的工作流任务节点简要信息
      class WorkflowTaskNodeBrief < TencentCloud::Common::AbstractModel
        # @param WorkflowId: <p>工作流ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param TaskId: <p>任务ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskName: <p>任务名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param TaskTypeName: <p>任务类型名称，请参考数据结构TaskType中TaskTypeName字段描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String
        # @param DependOnList: <p>任务依赖列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnList: Array
        # @param ResourceGroupId: <p>任务资源组ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ResourceGroupName: <p>任务资源组名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupName: String
        # @param LeftCoordinate: <p>任务X坐标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: <p>任务Y坐标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param TaskRetryStrategy: <p>任务重试策略</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRetryStrategy: :class:`Tencentcloud::Databuddy.v20260715.models.TaskRetryStrategy`
        # @param DependOnRunCondition: <p>任务依赖运行条件</p><p>ALL_SUCCESS: 全部成功：所有上游依赖任务均已执行并成功<br>ONE_SUCCESS: 至少一个成功：至少有一个上游依赖任务成功<br>NONE_FAILED: 目前没有失败：没有依赖任务失败，并且至少有一个依赖任务在运行中<br>ALL_DONE: 全部完成：所有上游依赖任务均已执行并完成（无论成功或失败<br>ONE_FAILED: 至少一个失败：至少有一个上游依赖任务失败<br>ALL_FAILED: 全部失败：所有上游依赖任务都失败<br>ALL_DONE_AT_LEAST_ONE_SUCCESS：上游全部完成至少一个成功: 所有上游依赖任务都达到终态时，进行依赖判断，至少有一个成功，则依赖判断成功，否则就是跳过运行<br>ALL_SKIPPED：上游全部完成，没有跳过运行: 所有上游依赖任务都达到终态时，进行依赖判断, 如果上游状态全部都是成功、失败、上游失败状态，则依赖判断成功，否则为跳过运行<br>ONE_DONE：至少一个完成：上游只要有一个完成了，就进行依赖判断，且依赖判断成功，否则还是等待上游<br>ALL_DONE_NONE_FAILED_AT_LEAST_ONE_SUCCESS：上游全部完成，没有失败，至少有一个成功: 所有上游依赖任务都达到终态时，进行依赖判断，上游没有一个失败且至少有一个成功的情况下，依赖判断成功，否则就是跳过运行<br>NONE_SKIPPED：上游全部完成，没有跳过运行: 所有上游依赖任务都达到终态时，进行依赖判断, 如果上游状态全部都是成功、失败、上游失败状态，则依赖判断成功，否则为跳过运行<br>ALL_DONE_AT_LEAST_ONE_FAILED：上游全部完成至少一个失败: 所有上游依赖任务都达到终态时，进行依赖判断，至少有一个失败，则依赖判断成功，否则就是跳过运行<br>ADVANCED:运行条件为高级模式时配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnRunCondition: String
        # @param AdvancedDependencyConfig: <p>高级依赖配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedDependencyConfig: :class:`Tencentcloud::Databuddy.v20260715.models.AdvancedDependencyConfig`
        # @param InnerTask: <p>内嵌工作流任务节点</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTask: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowTaskNodeBrief`

        attr_accessor :WorkflowId, :TaskId, :TaskName, :TaskTypeName, :DependOnList, :ResourceGroupId, :ResourceGroupName, :LeftCoordinate, :TopCoordinate, :TaskRetryStrategy, :DependOnRunCondition, :AdvancedDependencyConfig, :InnerTask

        def initialize(workflowid=nil, taskid=nil, taskname=nil, tasktypename=nil, dependonlist=nil, resourcegroupid=nil, resourcegroupname=nil, leftcoordinate=nil, topcoordinate=nil, taskretrystrategy=nil, dependonruncondition=nil, advanceddependencyconfig=nil, innertask=nil)
          @WorkflowId = workflowid
          @TaskId = taskid
          @TaskName = taskname
          @TaskTypeName = tasktypename
          @DependOnList = dependonlist
          @ResourceGroupId = resourcegroupid
          @ResourceGroupName = resourcegroupname
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @TaskRetryStrategy = taskretrystrategy
          @DependOnRunCondition = dependonruncondition
          @AdvancedDependencyConfig = advanceddependencyconfig
          @InnerTask = innertask
        end

        def deserialize(params)
          @WorkflowId = params['WorkflowId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @TaskTypeName = params['TaskTypeName']
          unless params['DependOnList'].nil?
            @DependOnList = []
            params['DependOnList'].each do |i|
              dependonbrief_tmp = DependOnBrief.new
              dependonbrief_tmp.deserialize(i)
              @DependOnList << dependonbrief_tmp
            end
          end
          @ResourceGroupId = params['ResourceGroupId']
          @ResourceGroupName = params['ResourceGroupName']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          unless params['TaskRetryStrategy'].nil?
            @TaskRetryStrategy = TaskRetryStrategy.new
            @TaskRetryStrategy.deserialize(params['TaskRetryStrategy'])
          end
          @DependOnRunCondition = params['DependOnRunCondition']
          unless params['AdvancedDependencyConfig'].nil?
            @AdvancedDependencyConfig = AdvancedDependencyConfig.new
            @AdvancedDependencyConfig.deserialize(params['AdvancedDependencyConfig'])
          end
          unless params['InnerTask'].nil?
            @InnerTask = WorkflowTaskNodeBrief.new
            @InnerTask.deserialize(params['InnerTask'])
          end
        end
      end

      # 工作流任务运行信息
      class WorkflowTaskRun < TencentCloud::Common::AbstractModel
        # @param TaskName: <p>任务名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param WorkflowTaskRunId: <p>任务运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowTaskRunId: String
        # @param RunState: <p>运行状态。如CREATE("初始化"), QUEUED("等待中"), PENDING("准备中"), RUNNING("运行中"), SKIPPED("跳过运行"), SUCCESS("成功"), FAILED("失败"), TERMINATING("终止中"), TERMINATED("终止"), CANCELLED("被手动终止")等</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunState: String
        # @param WorkspaceId: <p>工作空间ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkspaceId: String
        # @param WorkflowId: <p>工作流ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowId: String
        # @param WorkflowRunId: <p>工作流运行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowRunId: String
        # @param TaskId: <p>任务ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param TaskTypeName: <p>任务类型名称，请参考数据结构TaskType中TaskTypeName字段描述</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeName: String
        # @param TaskVersionId: <p>任务版本ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskVersionId: String
        # @param TriggerType: <p>触发类型</p><p>枚举值：</p><ul><li>Manual： 手动触发</li><li>Scheduler： 调度触发</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerType: String
        # @param ResourceGroupId: <p>所属资源组ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupId: String
        # @param ErrorCodeString: <p>错误码</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorCodeString: String
        # @param RunUserUin: <p>运行用户UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserUin: String
        # @param RunUserName: <p>运行用户名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunUserName: String
        # @param CreateUserUin: <p>创建人UIN</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateUserUin: String
        # @param JobId: <p>执行平台执行ID</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobId: String
        # @param CreateTime: <p>创建时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param DependenceFinishedTime: <p>依赖任务完成时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependenceFinishedTime: String
        # @param RunStartTime: <p>运行开始时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunStartTime: String
        # @param RunEndTime: <p>运行结束时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunEndTime: String
        # @param RunCostTime: <p>运行时长，单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunCostTime: String
        # @param WaitTime: <p>等待时长（依赖就绪到开始运行的等待耗时），单位：秒</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaitTime: String
        # @param IssueTime: <p>下发执行平台时间，单位：毫秒时间戳</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssueTime: String
        # @param TimeZone: <p>时区</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeZone: String
        # @param DependOnList: <p>依赖上游任务ID列表。保留字段，暂时返回为[]</p><p>保留字段，暂时返回为[]</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnList: Array
        # @param RunParams: <p>运行参数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunParams: String
        # @param TaskTypeExtensions: <p>任务扩展信息，包含脚本路径</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskTypeExtensions: String
        # @param LeftCoordinate: <p>任务X坐标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LeftCoordinate: Float
        # @param TopCoordinate: <p>任务Y坐标</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TopCoordinate: Float
        # @param RetryTimes: <p>重试次数，为 0 则表示首次运行</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetryTimes: Integer
        # @param WorkflowName: <p>工作流名称</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WorkflowName: String
        # @param RerunTimes: <p>重跑次数</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RerunTimes: Integer
        # @param IsLatestRun: <p>是否最新一次运行</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsLatestRun: Boolean
        # @param ResourceGroupInfoList: <p>资源组信息列表</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceGroupInfoList: Array
        # @param RunResult: <p>运行结果</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunResult: String
        # @param DependOnRunCondition: <p>任务依赖运行条件</p><p>ALL_SUCCESS: 全部成功：所有上游依赖任务均已执行并成功<br>ONE_SUCCESS: 至少一个成功：至少有一个上游依赖任务成功<br>NONE_FAILED: 目前没有失败：没有依赖任务失败，并且至少有一个依赖任务在运行中<br>ALL_DONE: 全部完成：所有上游依赖任务均已执行并完成（无论成功或失败<br>ONE_FAILED: 至少一个失败：至少有一个上游依赖任务失败<br>ALL_FAILED: 全部失败：所有上游依赖任务都失败<br>ALL_DONE_AT_LEAST_ONE_SUCCESS：上游全部完成至少一个成功: 所有上游依赖任务都达到终态时，进行依赖判断，至少有一个成功，则依赖判断成功，否则就是跳过运行<br>ALL_SKIPPED：上游全部完成，没有跳过运行: 所有上游依赖任务都达到终态时，进行依赖判断, 如果上游状态全部都是成功、失败、上游失败状态，则依赖判断成功，否则为跳过运行<br>ONE_DONE：至少一个完成：上游只要有一个完成了，就进行依赖判断，且依赖判断成功，否则还是等待上游<br>ALL_DONE_NONE_FAILED_AT_LEAST_ONE_SUCCESS：上游全部完成，没有失败，至少有一个成功: 所有上游依赖任务都达到终态时，进行依赖判断，上游没有一个失败且至少有一个成功的情况下，依赖判断成功，否则就是跳过运行<br>NONE_SKIPPED：上游全部完成，没有跳过运行: 所有上游依赖任务都达到终态时，进行依赖判断, 如果上游状态全部都是成功、失败、上游失败状态，则依赖判断成功，否则为跳过运行<br>ALL_DONE_AT_LEAST_ONE_FAILED：上游全部完成至少一个失败: 所有上游依赖任务都达到终态时，进行依赖判断，至少有一个失败，则依赖判断成功，否则就是跳过运行<br>ADVANCED:运行条件为高级模式时配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DependOnRunCondition: String
        # @param AdvancedDependencyConfig: <p>高级依赖配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedDependencyConfig: :class:`Tencentcloud::Databuddy.v20260715.models.AdvancedDependencyConfig`
        # @param InnerTask: <p>内嵌工作流任务信息</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InnerTask: :class:`Tencentcloud::Databuddy.v20260715.models.InnerWorkflowTaskBrief`
        # @param ScheduledTime: <p>计划调度时间</p><p>参数格式：毫秒时间戳，UTC</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ScheduledTime: String

        attr_accessor :TaskName, :WorkflowTaskRunId, :RunState, :WorkspaceId, :WorkflowId, :WorkflowRunId, :TaskId, :TaskTypeName, :TaskVersionId, :TriggerType, :ResourceGroupId, :ErrorCodeString, :RunUserUin, :RunUserName, :CreateUserUin, :JobId, :CreateTime, :UpdateTime, :DependenceFinishedTime, :RunStartTime, :RunEndTime, :RunCostTime, :WaitTime, :IssueTime, :TimeZone, :DependOnList, :RunParams, :TaskTypeExtensions, :LeftCoordinate, :TopCoordinate, :RetryTimes, :WorkflowName, :RerunTimes, :IsLatestRun, :ResourceGroupInfoList, :RunResult, :DependOnRunCondition, :AdvancedDependencyConfig, :InnerTask, :ScheduledTime

        def initialize(taskname=nil, workflowtaskrunid=nil, runstate=nil, workspaceid=nil, workflowid=nil, workflowrunid=nil, taskid=nil, tasktypename=nil, taskversionid=nil, triggertype=nil, resourcegroupid=nil, errorcodestring=nil, runuseruin=nil, runusername=nil, createuseruin=nil, jobid=nil, createtime=nil, updatetime=nil, dependencefinishedtime=nil, runstarttime=nil, runendtime=nil, runcosttime=nil, waittime=nil, issuetime=nil, timezone=nil, dependonlist=nil, runparams=nil, tasktypeextensions=nil, leftcoordinate=nil, topcoordinate=nil, retrytimes=nil, workflowname=nil, reruntimes=nil, islatestrun=nil, resourcegroupinfolist=nil, runresult=nil, dependonruncondition=nil, advanceddependencyconfig=nil, innertask=nil, scheduledtime=nil)
          @TaskName = taskname
          @WorkflowTaskRunId = workflowtaskrunid
          @RunState = runstate
          @WorkspaceId = workspaceid
          @WorkflowId = workflowid
          @WorkflowRunId = workflowrunid
          @TaskId = taskid
          @TaskTypeName = tasktypename
          @TaskVersionId = taskversionid
          @TriggerType = triggertype
          @ResourceGroupId = resourcegroupid
          @ErrorCodeString = errorcodestring
          @RunUserUin = runuseruin
          @RunUserName = runusername
          @CreateUserUin = createuseruin
          @JobId = jobid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @DependenceFinishedTime = dependencefinishedtime
          @RunStartTime = runstarttime
          @RunEndTime = runendtime
          @RunCostTime = runcosttime
          @WaitTime = waittime
          @IssueTime = issuetime
          @TimeZone = timezone
          @DependOnList = dependonlist
          @RunParams = runparams
          @TaskTypeExtensions = tasktypeextensions
          @LeftCoordinate = leftcoordinate
          @TopCoordinate = topcoordinate
          @RetryTimes = retrytimes
          @WorkflowName = workflowname
          @RerunTimes = reruntimes
          @IsLatestRun = islatestrun
          @ResourceGroupInfoList = resourcegroupinfolist
          @RunResult = runresult
          @DependOnRunCondition = dependonruncondition
          @AdvancedDependencyConfig = advanceddependencyconfig
          @InnerTask = innertask
          @ScheduledTime = scheduledtime
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @WorkflowTaskRunId = params['WorkflowTaskRunId']
          @RunState = params['RunState']
          @WorkspaceId = params['WorkspaceId']
          @WorkflowId = params['WorkflowId']
          @WorkflowRunId = params['WorkflowRunId']
          @TaskId = params['TaskId']
          @TaskTypeName = params['TaskTypeName']
          @TaskVersionId = params['TaskVersionId']
          @TriggerType = params['TriggerType']
          @ResourceGroupId = params['ResourceGroupId']
          @ErrorCodeString = params['ErrorCodeString']
          @RunUserUin = params['RunUserUin']
          @RunUserName = params['RunUserName']
          @CreateUserUin = params['CreateUserUin']
          @JobId = params['JobId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @DependenceFinishedTime = params['DependenceFinishedTime']
          @RunStartTime = params['RunStartTime']
          @RunEndTime = params['RunEndTime']
          @RunCostTime = params['RunCostTime']
          @WaitTime = params['WaitTime']
          @IssueTime = params['IssueTime']
          @TimeZone = params['TimeZone']
          @DependOnList = params['DependOnList']
          @RunParams = params['RunParams']
          @TaskTypeExtensions = params['TaskTypeExtensions']
          @LeftCoordinate = params['LeftCoordinate']
          @TopCoordinate = params['TopCoordinate']
          @RetryTimes = params['RetryTimes']
          @WorkflowName = params['WorkflowName']
          @RerunTimes = params['RerunTimes']
          @IsLatestRun = params['IsLatestRun']
          unless params['ResourceGroupInfoList'].nil?
            @ResourceGroupInfoList = []
            params['ResourceGroupInfoList'].each do |i|
              resourcegroupinfo_tmp = ResourceGroupInfo.new
              resourcegroupinfo_tmp.deserialize(i)
              @ResourceGroupInfoList << resourcegroupinfo_tmp
            end
          end
          @RunResult = params['RunResult']
          @DependOnRunCondition = params['DependOnRunCondition']
          unless params['AdvancedDependencyConfig'].nil?
            @AdvancedDependencyConfig = AdvancedDependencyConfig.new
            @AdvancedDependencyConfig.deserialize(params['AdvancedDependencyConfig'])
          end
          unless params['InnerTask'].nil?
            @InnerTask = InnerWorkflowTaskBrief.new
            @InnerTask.deserialize(params['InnerTask'])
          end
          @ScheduledTime = params['ScheduledTime']
        end
      end

      # 工作流调度高级配置。
      class WorkflowTriggerAdvancedConfiguration < TencentCloud::Common::AbstractModel
        # @param TaskRetryMode: <p>&lt;p&gt;该工作流下的所有任务重试模式，仅当TriggerMode为CONTINUE_RUN时有效。</p><p>枚举值：</p><ul><li>onFailure： 失败时自动重试</li><li>never： 从不重试</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskRetryMode: String

        attr_accessor :TaskRetryMode

        def initialize(taskretrymode=nil)
          @TaskRetryMode = taskretrymode
        end

        def deserialize(params)
          @TaskRetryMode = params['TaskRetryMode']
        end
      end

      # 工作流调度配置。
      class WorkflowTriggerConfiguration < TencentCloud::Common::AbstractModel
        # @param TriggerId: <p>调度配置ID，创建时无需传入，由服务端生成</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerId: String
        # @param SchedulerStatus: <p>调度状态 启动：START，暂停：PAUSE</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerStatus: String
        # @param TriggerMode: <p>触发方式，</p><ul><li>定时触发：TIME_TRIGGER</li><li>持续运行：CONTINUE_RUN</li></ul><p>注意：</p><ul><li>TIME_TRIGGER 模式下，SchedulerStatus、SchedulerTimeZone、StartTime、EndTime、ConfigMode、CycleType、CrontabExpression 必填；</li><li>CONTINUE_RUN 模式下，AdvancedConfig必填；</li></ul>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TriggerMode: String
        # @param SchedulerTimeZone: <p>调度时区</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SchedulerTimeZone: String
        # @param StartTime: <p>调度生效时间，单位：毫秒时间戳。必须小于 EndTime</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: <p>调度结束时间，单位：毫秒时间戳。必须大于 StartTime</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ConfigMode: <p>配置方式，常规：COMMON，CRON表达式：CRON_EXPRESSION</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConfigMode: String
        # @param CycleType: <p>周期类型：支持的类型为 ONEOFF_CYCLE: 一次性 YEAR_CYCLE: 年 MONTH_CYCLE: 月 WEEK_CYCLE: 周 DAY_CYCLE: 天<br>HOUR_CYCLE: 小时 MINUTE_CYCLE: 分钟 CRONTAB_CYCLE: crontab表达式类型</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CycleType: String
        # @param CrontabExpression: <p>cron表达式</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrontabExpression: String
        # @param ExtraInfo: <p>Json格式，对账使用</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraInfo: String
        # @param AdvancedConfig: <p>高级配置</p>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdvancedConfig: :class:`Tencentcloud::Databuddy.v20260715.models.WorkflowTriggerAdvancedConfiguration`

        attr_accessor :TriggerId, :SchedulerStatus, :TriggerMode, :SchedulerTimeZone, :StartTime, :EndTime, :ConfigMode, :CycleType, :CrontabExpression, :ExtraInfo, :AdvancedConfig

        def initialize(triggerid=nil, schedulerstatus=nil, triggermode=nil, schedulertimezone=nil, starttime=nil, endtime=nil, configmode=nil, cycletype=nil, crontabexpression=nil, extrainfo=nil, advancedconfig=nil)
          @TriggerId = triggerid
          @SchedulerStatus = schedulerstatus
          @TriggerMode = triggermode
          @SchedulerTimeZone = schedulertimezone
          @StartTime = starttime
          @EndTime = endtime
          @ConfigMode = configmode
          @CycleType = cycletype
          @CrontabExpression = crontabexpression
          @ExtraInfo = extrainfo
          @AdvancedConfig = advancedconfig
        end

        def deserialize(params)
          @TriggerId = params['TriggerId']
          @SchedulerStatus = params['SchedulerStatus']
          @TriggerMode = params['TriggerMode']
          @SchedulerTimeZone = params['SchedulerTimeZone']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ConfigMode = params['ConfigMode']
          @CycleType = params['CycleType']
          @CrontabExpression = params['CrontabExpression']
          @ExtraInfo = params['ExtraInfo']
          unless params['AdvancedConfig'].nil?
            @AdvancedConfig = WorkflowTriggerAdvancedConfiguration.new
            @AdvancedConfig.deserialize(params['AdvancedConfig'])
          end
        end
      end

      # 工作空间用户组信息
      class WorkspaceGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: <p>用户组ID</p>
        # @type GroupId: String
        # @param GroupName: <p>用户组名称</p>
        # @type GroupName: String
        # @param Roles: <p>角色列表</p>
        # @type Roles: Array
        # @param CreateTime: <p>创建时间，毫秒时间戳</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间，毫秒时间戳</p>
        # @type UpdateTime: String
        # @param UserCount: <p>用户组下用户数量</p>
        # @type UserCount: Integer
        # @param GroupType: <p>用户组类型。取值为枚举数值的字符串形式：&quot;0&quot;=控制台系统类型（包含全部user）、&quot;1&quot;=控制台自定义类型、&quot;2&quot;=工作空间系统类型（包含工作空间全部user）、&quot;3&quot;=工作空间自定义类型</p>
        # @type GroupType: String
        # @param Tags: <p>该组直接绑定的标签（不含继承）</p>
        # @type Tags: Array

        attr_accessor :GroupId, :GroupName, :Roles, :CreateTime, :UpdateTime, :UserCount, :GroupType, :Tags

        def initialize(groupid=nil, groupname=nil, roles=nil, createtime=nil, updatetime=nil, usercount=nil, grouptype=nil, tags=nil)
          @GroupId = groupid
          @GroupName = groupname
          @Roles = roles
          @CreateTime = createtime
          @UpdateTime = updatetime
          @UserCount = usercount
          @GroupType = grouptype
          @Tags = tags
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          unless params['Roles'].nil?
            @Roles = []
            params['Roles'].each do |i|
              rolebasicinfo_tmp = RoleBasicInfo.new
              rolebasicinfo_tmp.deserialize(i)
              @Roles << rolebasicinfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @UserCount = params['UserCount']
          @GroupType = params['GroupType']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              usertaginfo_tmp = UserTagInfo.new
              usertaginfo_tmp.deserialize(i)
              @Tags << usertaginfo_tmp
            end
          end
        end
      end

      # 工作空间信息
      class WorkspaceInfo < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 工作空间ID
        # @type WorkspaceId: String
        # @param WorkspaceName: 工作空间名称
        # @type WorkspaceName: String
        # @param Description: 工作空间描述
        # @type Description: String
        # @param WorkspaceRegion: 工作空间地域（如 ap-guangzhou）
        # @type WorkspaceRegion: String
        # @param Status: 工作空间状态：0=未指定 1=创建中 2=创建失败 3=正常运行中 4=已删除
        # @type Status: Integer
        # @param ErrorReason: 失败原因（Status=2 创建失败时有值）
        # @type ErrorReason: String
        # @param Creator: 创建者信息
        # @type Creator: :class:`Tencentcloud::Databuddy.v20260715.models.StandardUserInfo`
        # @param CreateTime: 创建时间，毫秒时间戳
        # @type CreateTime: String
        # @param UpdateTime: 更新时间，毫秒时间戳
        # @type UpdateTime: String
        # @param HasAccess: 当前用户是否拥有该工作空间的访问权限
        # @type HasAccess: Boolean

        attr_accessor :WorkspaceId, :WorkspaceName, :Description, :WorkspaceRegion, :Status, :ErrorReason, :Creator, :CreateTime, :UpdateTime, :HasAccess

        def initialize(workspaceid=nil, workspacename=nil, description=nil, workspaceregion=nil, status=nil, errorreason=nil, creator=nil, createtime=nil, updatetime=nil, hasaccess=nil)
          @WorkspaceId = workspaceid
          @WorkspaceName = workspacename
          @Description = description
          @WorkspaceRegion = workspaceregion
          @Status = status
          @ErrorReason = errorreason
          @Creator = creator
          @CreateTime = createtime
          @UpdateTime = updatetime
          @HasAccess = hasaccess
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @WorkspaceName = params['WorkspaceName']
          @Description = params['Description']
          @WorkspaceRegion = params['WorkspaceRegion']
          @Status = params['Status']
          @ErrorReason = params['ErrorReason']
          unless params['Creator'].nil?
            @Creator = StandardUserInfo.new
            @Creator.deserialize(params['Creator'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @HasAccess = params['HasAccess']
        end
      end

      # 工作空间用户信息
      class WorkspaceUserInfo < TencentCloud::Common::AbstractModel
        # @param UserUin: <p>用户UIN</p>
        # @type UserUin: String
        # @param UserName: <p>用户名</p>
        # @type UserName: String
        # @param Nickname: <p>昵称</p>
        # @type Nickname: String
        # @param Roles: <p>角色列表</p>
        # @type Roles: Array
        # @param UserSource: <p>用户来源，group：用户组、user：用户</p>
        # @type UserSource: String
        # @param CreateTime: <p>创建时间，毫秒时间戳</p>
        # @type CreateTime: String
        # @param UpdateTime: <p>更新时间，毫秒时间戳</p>
        # @type UpdateTime: String
        # @param IsOwner: <p>是否主账号</p>
        # @type IsOwner: Boolean
        # @param UserTag: <p>0: 普通用户 1: entraId用户</p>
        # @type UserTag: Integer
        # @param IsAdmin: <p>是否具有 admin 权限的子账号</p>
        # @type IsAdmin: Boolean
        # @param Tags: <p>合并后标签（用户直绑 + 用户组继承）</p>
        # @type Tags: Array

        attr_accessor :UserUin, :UserName, :Nickname, :Roles, :UserSource, :CreateTime, :UpdateTime, :IsOwner, :UserTag, :IsAdmin, :Tags

        def initialize(useruin=nil, username=nil, nickname=nil, roles=nil, usersource=nil, createtime=nil, updatetime=nil, isowner=nil, usertag=nil, isadmin=nil, tags=nil)
          @UserUin = useruin
          @UserName = username
          @Nickname = nickname
          @Roles = roles
          @UserSource = usersource
          @CreateTime = createtime
          @UpdateTime = updatetime
          @IsOwner = isowner
          @UserTag = usertag
          @IsAdmin = isadmin
          @Tags = tags
        end

        def deserialize(params)
          @UserUin = params['UserUin']
          @UserName = params['UserName']
          @Nickname = params['Nickname']
          unless params['Roles'].nil?
            @Roles = []
            params['Roles'].each do |i|
              rolebasicinfo_tmp = RoleBasicInfo.new
              rolebasicinfo_tmp.deserialize(i)
              @Roles << rolebasicinfo_tmp
            end
          end
          @UserSource = params['UserSource']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @IsOwner = params['IsOwner']
          @UserTag = params['UserTag']
          @IsAdmin = params['IsAdmin']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              usertaginfo_tmp = UserTagInfo.new
              usertaginfo_tmp.deserialize(i)
              @Tags << usertaginfo_tmp
            end
          end
        end
      end

    end
  end
end

