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
  module Cdb
    module V20170320
      # 数据库账号信息
      class Account < TencentCloud::Common::AbstractModel
        # @param User: 新账户的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type User: String
        # @param Host: 新账户的域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String

        attr_accessor :User, :Host

        def initialize(user=nil, host=nil)
          @User = user
          @Host = host
        end

        def deserialize(params)
          @User = params['User']
          @Host = params['Host']
        end
      end

      # 账号详细信息
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param Notes: 账号备注信息
        # @type Notes: String
        # @param Host: 账号的域名
        # @type Host: String
        # @param User: 账号的名称
        # @type User: String
        # @param ModifyTime: 账号信息修改时间
        # @type ModifyTime: String
        # @param ModifyPasswordTime: 修改密码的时间
        # @type ModifyPasswordTime: String
        # @param CreateTime: 该值已废弃
        # @type CreateTime: String
        # @param MaxUserConnections: 用户最大可用实例连接数
        # @type MaxUserConnections: Integer

        attr_accessor :Notes, :Host, :User, :ModifyTime, :ModifyPasswordTime, :CreateTime, :MaxUserConnections

        def initialize(notes=nil, host=nil, user=nil, modifytime=nil, modifypasswordtime=nil, createtime=nil, maxuserconnections=nil)
          @Notes = notes
          @Host = host
          @User = user
          @ModifyTime = modifytime
          @ModifyPasswordTime = modifypasswordtime
          @CreateTime = createtime
          @MaxUserConnections = maxuserconnections
        end

        def deserialize(params)
          @Notes = params['Notes']
          @Host = params['Host']
          @User = params['User']
          @ModifyTime = params['ModifyTime']
          @ModifyPasswordTime = params['ModifyPasswordTime']
          @CreateTime = params['CreateTime']
          @MaxUserConnections = params['MaxUserConnections']
        end
      end

      # AddTimeWindow请求参数结构体
      class AddTimeWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Monday: 星期一的可维护时间段，其中每一个时间段的格式形如：10:00-12:00；起始时间按半个小时对齐；最短半个小时，最长三个小时；可设置多个时间段。 一周中应至少设置一天的时间窗。下同。
        # @type Monday: Array
        # @param Tuesday: 星期二的可维护时间窗口。 一周中应至少设置一天的时间窗。
        # @type Tuesday: Array
        # @param Wednesday: 星期三的可维护时间窗口。 一周中应至少设置一天的时间窗。
        # @type Wednesday: Array
        # @param Thursday: 星期四的可维护时间窗口。 一周中应至少设置一天的时间窗。
        # @type Thursday: Array
        # @param Friday: 星期五的可维护时间窗口。 一周中应至少设置一天的时间窗。
        # @type Friday: Array
        # @param Saturday: 星期六的可维护时间窗口。 一周中应至少设置一天的时间窗。
        # @type Saturday: Array
        # @param Sunday: 星期日的可维护时间窗口。 一周中应至少设置一天的时间窗。
        # @type Sunday: Array
        # @param MaxDelayTime: 最大延迟阈值，仅对主实例和灾备实例有效
        # @type MaxDelayTime: Integer

        attr_accessor :InstanceId, :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday, :Sunday, :MaxDelayTime

        def initialize(instanceid=nil, monday=nil, tuesday=nil, wednesday=nil, thursday=nil, friday=nil, saturday=nil, sunday=nil, maxdelaytime=nil)
          @InstanceId = instanceid
          @Monday = monday
          @Tuesday = tuesday
          @Wednesday = wednesday
          @Thursday = thursday
          @Friday = friday
          @Saturday = saturday
          @Sunday = sunday
          @MaxDelayTime = maxdelaytime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Monday = params['Monday']
          @Tuesday = params['Tuesday']
          @Wednesday = params['Wednesday']
          @Thursday = params['Thursday']
          @Friday = params['Friday']
          @Saturday = params['Saturday']
          @Sunday = params['Sunday']
          @MaxDelayTime = params['MaxDelayTime']
        end
      end

      # AddTimeWindow返回参数结构体
      class AddTimeWindowResponse < TencentCloud::Common::AbstractModel
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

      # 实例地址信息
      class AddressInfo < TencentCloud::Common::AbstractModel
        # @param ResourceId: 地址的资源id标识。
        # @type ResourceId: String
        # @param UniqVpcId: 地址所在的vpc。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 地址所在的子网。
        # @type UniqSubnetId: String
        # @param Vip: 地址的vip。
        # @type Vip: String
        # @param VPort: 地址的端口。
        # @type VPort: Integer
        # @param WanDomain: 外网地址域名。
        # @type WanDomain: String
        # @param WanPort: 外网地址端口。
        # @type WanPort: Integer

        attr_accessor :ResourceId, :UniqVpcId, :UniqSubnetId, :Vip, :VPort, :WanDomain, :WanPort

        def initialize(resourceid=nil, uniqvpcid=nil, uniqsubnetid=nil, vip=nil, vport=nil, wandomain=nil, wanport=nil)
          @ResourceId = resourceid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @Vip = vip
          @VPort = vport
          @WanDomain = wandomain
          @WanPort = wanport
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @Vip = params['Vip']
          @VPort = params['VPort']
          @WanDomain = params['WanDomain']
          @WanPort = params['WanPort']
        end
      end

      # AdjustCdbProxyAddress请求参数结构体
      class AdjustCdbProxyAddressRequest < TencentCloud::Common::AbstractModel
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param WeightMode: 权重分配模式，
        # 系统自动分配："system"， 自定义："custom"
        # @type WeightMode: String
        # @param IsKickOut: 是否开启延迟剔除，取值："true" | "false"
        # @type IsKickOut: Boolean
        # @param MinCount: 最小保留数量，最小取值：0
        # @type MinCount: Integer
        # @param MaxDelay: 延迟剔除阈值，最小取值：0
        # @type MaxDelay: Integer
        # @param FailOver: 是否开启故障转移，取值："true" | "false"
        # @type FailOver: Boolean
        # @param AutoAddRo: 是否自动添加RO，取值："true" | "false"
        # @type AutoAddRo: Boolean
        # @param ReadOnly: 是否是只读，取值："true" | "false"
        # @type ReadOnly: Boolean
        # @param ProxyAddressId: 代理组地址ID
        # @type ProxyAddressId: String
        # @param TransSplit: 是否开启事务分离，取值："true" | "false"
        # @type TransSplit: Boolean
        # @param ConnectionPool: 是否开启连接池
        # 注意：如需使用数据库代理连接池能力，MySQL 8.0 主实例的内核小版本要大于等于 MySQL 8.0 20230630。
        # @type ConnectionPool: Boolean
        # @param ProxyAllocation: 读写权重分配。如果 WeightMode 传的是 system ，则传入的权重不生效，由系统分配默认权重。
        # @type ProxyAllocation: Array
        # @param AutoLoadBalance: 是否开启自适应负载均衡
        # @type AutoLoadBalance: Boolean
        # @param AccessMode: 访问模式：就近访问，均衡分配
        # @type AccessMode: String

        attr_accessor :ProxyGroupId, :WeightMode, :IsKickOut, :MinCount, :MaxDelay, :FailOver, :AutoAddRo, :ReadOnly, :ProxyAddressId, :TransSplit, :ConnectionPool, :ProxyAllocation, :AutoLoadBalance, :AccessMode

        def initialize(proxygroupid=nil, weightmode=nil, iskickout=nil, mincount=nil, maxdelay=nil, failover=nil, autoaddro=nil, readonly=nil, proxyaddressid=nil, transsplit=nil, connectionpool=nil, proxyallocation=nil, autoloadbalance=nil, accessmode=nil)
          @ProxyGroupId = proxygroupid
          @WeightMode = weightmode
          @IsKickOut = iskickout
          @MinCount = mincount
          @MaxDelay = maxdelay
          @FailOver = failover
          @AutoAddRo = autoaddro
          @ReadOnly = readonly
          @ProxyAddressId = proxyaddressid
          @TransSplit = transsplit
          @ConnectionPool = connectionpool
          @ProxyAllocation = proxyallocation
          @AutoLoadBalance = autoloadbalance
          @AccessMode = accessmode
        end

        def deserialize(params)
          @ProxyGroupId = params['ProxyGroupId']
          @WeightMode = params['WeightMode']
          @IsKickOut = params['IsKickOut']
          @MinCount = params['MinCount']
          @MaxDelay = params['MaxDelay']
          @FailOver = params['FailOver']
          @AutoAddRo = params['AutoAddRo']
          @ReadOnly = params['ReadOnly']
          @ProxyAddressId = params['ProxyAddressId']
          @TransSplit = params['TransSplit']
          @ConnectionPool = params['ConnectionPool']
          unless params['ProxyAllocation'].nil?
            @ProxyAllocation = []
            params['ProxyAllocation'].each do |i|
              proxyallocation_tmp = ProxyAllocation.new
              proxyallocation_tmp.deserialize(i)
              @ProxyAllocation << proxyallocation_tmp
            end
          end
          @AutoLoadBalance = params['AutoLoadBalance']
          @AccessMode = params['AccessMode']
        end
      end

      # AdjustCdbProxyAddress返回参数结构体
      class AdjustCdbProxyAddressResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # AdjustCdbProxy请求参数结构体
      class AdjustCdbProxyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param ProxyNodeCustom: 节点规格配置
        # 备注：数据库代理支持的节点规格为：2C4000MB、4C8000MB、8C16000MB。
        # 示例中参数说明：
        # NodeCount：节点个数
        # Region：节点地域
        # Zone：节点可用区
        # Cpu：单个代理节点核数（单位：核）
        # Mem：单个代理节点内存数（单位：MB）
        # @type ProxyNodeCustom: Array
        # @param ReloadBalance: 重新负载均衡：auto(自动),manual(手动)
        # @type ReloadBalance: String
        # @param UpgradeTime: 升级切换时间：nowTime(升级完成时),timeWindow(维护时间内)
        # @type UpgradeTime: String

        attr_accessor :InstanceId, :ProxyGroupId, :ProxyNodeCustom, :ReloadBalance, :UpgradeTime

        def initialize(instanceid=nil, proxygroupid=nil, proxynodecustom=nil, reloadbalance=nil, upgradetime=nil)
          @InstanceId = instanceid
          @ProxyGroupId = proxygroupid
          @ProxyNodeCustom = proxynodecustom
          @ReloadBalance = reloadbalance
          @UpgradeTime = upgradetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ProxyGroupId = params['ProxyGroupId']
          unless params['ProxyNodeCustom'].nil?
            @ProxyNodeCustom = []
            params['ProxyNodeCustom'].each do |i|
              proxynodecustom_tmp = ProxyNodeCustom.new
              proxynodecustom_tmp.deserialize(i)
              @ProxyNodeCustom << proxynodecustom_tmp
            end
          end
          @ReloadBalance = params['ReloadBalance']
          @UpgradeTime = params['UpgradeTime']
        end
      end

      # AdjustCdbProxy返回参数结构体
      class AdjustCdbProxyResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # 审计日志聚合条件
      class AggregationCondition < TencentCloud::Common::AbstractModel
        # @param AggregationField: 聚合字段。目前仅支持host-源IP、user-用户名、dbName-数据库名、sqlType-sql类型。
        # @type AggregationField: String
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Limit: 该聚合字段下要返回聚合桶的数量，最大100。
        # @type Limit: Integer

        attr_accessor :AggregationField, :Offset, :Limit

        def initialize(aggregationfield=nil, offset=nil, limit=nil)
          @AggregationField = aggregationfield
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @AggregationField = params['AggregationField']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # AnalyzeAuditLogs请求参数结构体
      class AnalyzeAuditLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param StartTime: 要分析的日志开始时间，格式为："2023-02-16 00:00:20"。
        # @type StartTime: String
        # @param EndTime: 要分析的日志结束时间，格式为："2023-02-16 00:10:20"。
        # @type EndTime: String
        # @param AggregationConditions: 聚合维度的排序条件。
        # @type AggregationConditions: Array
        # @param AuditLogFilter: 已废弃。该过滤条件下的审计日志结果集作为分析日志。
        # @type AuditLogFilter: :class:`Tencentcloud::Cdb.v20170320.models.AuditLogFilter`
        # @param LogFilter: 该过滤条件下的审计日志结果集作为分析日志。
        # @type LogFilter: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :AggregationConditions, :AuditLogFilter, :LogFilter

        def initialize(instanceid=nil, starttime=nil, endtime=nil, aggregationconditions=nil, auditlogfilter=nil, logfilter=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @AggregationConditions = aggregationconditions
          @AuditLogFilter = auditlogfilter
          @LogFilter = logfilter
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['AggregationConditions'].nil?
            @AggregationConditions = []
            params['AggregationConditions'].each do |i|
              aggregationcondition_tmp = AggregationCondition.new
              aggregationcondition_tmp.deserialize(i)
              @AggregationConditions << aggregationcondition_tmp
            end
          end
          unless params['AuditLogFilter'].nil?
            @AuditLogFilter = AuditLogFilter.new
            @AuditLogFilter.deserialize(params['AuditLogFilter'])
          end
          unless params['LogFilter'].nil?
            @LogFilter = []
            params['LogFilter'].each do |i|
              instanceauditlogfilters_tmp = InstanceAuditLogFilters.new
              instanceauditlogfilters_tmp.deserialize(i)
              @LogFilter << instanceauditlogfilters_tmp
            end
          end
        end
      end

      # AnalyzeAuditLogs返回参数结构体
      class AnalyzeAuditLogsResponse < TencentCloud::Common::AbstractModel
        # @param Items: 返回的聚合桶信息集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param TotalCount: 扫描的日志条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              auditlogaggregationresult_tmp = AuditLogAggregationResult.new
              auditlogaggregationresult_tmp.deserialize(i)
              @Items << auditlogaggregationresult_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组 ID。
        # @type SecurityGroupId: String
        # @param InstanceIds: 实例 ID 列表，一个或者多个实例 ID 组成的数组。
        # @type InstanceIds: Array
        # @param ForReadonlyInstance: 当传入只读实例ID时，默认操作的是对应只读组的安全组。如果需要操作只读实例ID的安全组， 需要将该入参置为True
        # @type ForReadonlyInstance: Boolean

        attr_accessor :SecurityGroupId, :InstanceIds, :ForReadonlyInstance

        def initialize(securitygroupid=nil, instanceids=nil, forreadonlyinstance=nil)
          @SecurityGroupId = securitygroupid
          @InstanceIds = instanceids
          @ForReadonlyInstance = forreadonlyinstance
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @InstanceIds = params['InstanceIds']
          @ForReadonlyInstance = params['ForReadonlyInstance']
        end
      end

      # AssociateSecurityGroups返回参数结构体
      class AssociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 审计规则过滤条件
      class AuditFilter < TencentCloud::Common::AbstractModel
        # @param Type: 过滤条件参数名称。目前支持：
        # SrcIp – 客户端 IP；
        # User – 数据库账户；
        # DB – 数据库名称；
        # @type Type: String
        # @param Compare: 过滤条件匹配类型。目前支持：
        # INC – 包含；
        # EXC – 不包含；
        # EQ – 等于；
        # NEQ – 不等于；
        # @type Compare: String
        # @param Value: 过滤条件匹配值。
        # @type Value: String

        attr_accessor :Type, :Compare, :Value

        def initialize(type=nil, compare=nil, value=nil)
          @Type = type
          @Compare = compare
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Compare = params['Compare']
          @Value = params['Value']
        end
      end

      # 查询审计实例的过滤条件
      class AuditInstanceFilters < TencentCloud::Common::AbstractModel
        # @param Name: 过滤条件名。支持InstanceId-实例ID，InstanceName-实例名称，ProjectId-项目ID，TagKey-标签键，Tag-标签（以竖线分割，例：Tagkey|Tagvalue）。
        # @type Name: String
        # @param ExactMatch: true表示精确查找，false表示模糊匹配。
        # @type ExactMatch: Boolean
        # @param Values: 筛选值
        # @type Values: Array

        attr_accessor :Name, :ExactMatch, :Values

        def initialize(name=nil, exactmatch=nil, values=nil)
          @Name = name
          @ExactMatch = exactmatch
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @ExactMatch = params['ExactMatch']
          @Values = params['Values']
        end
      end

      # 审计实例详情
      class AuditInstanceInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param TagList: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array
        # @param DbType: 数据库内核类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbType: String
        # @param DbVersion: 数据库内核版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbVersion: String

        attr_accessor :ProjectId, :TagList, :DbType, :DbVersion

        def initialize(projectid=nil, taglist=nil, dbtype=nil, dbversion=nil)
          @ProjectId = projectid
          @TagList = taglist
          @DbType = dbtype
          @DbVersion = dbversion
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @TagList << taginfounit_tmp
            end
          end
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
        end
      end

      # 审计日志详细信息
      class AuditLog < TencentCloud::Common::AbstractModel
        # @param AffectRows: 影响行数。
        # @type AffectRows: Integer
        # @param ErrCode: 错误码。
        # @type ErrCode: Integer
        # @param SqlType: SQL 类型。
        # @type SqlType: String
        # @param PolicyName: 审计策略名称，逐步下线。
        # @type PolicyName: String
        # @param DBName: 数据库名称。
        # @type DBName: String
        # @param Sql: SQL 语句。
        # @type Sql: String
        # @param Host: 客户端地址。
        # @type Host: String
        # @param User: 用户名。
        # @type User: String
        # @param ExecTime: 执行时间，微秒。
        # @type ExecTime: Integer
        # @param Timestamp: 时间。
        # @type Timestamp: String
        # @param SentRows: 返回行数。
        # @type SentRows: Integer
        # @param ThreadId: 线程ID。
        # @type ThreadId: Integer
        # @param CheckRows: 扫描行数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckRows: Integer
        # @param CpuTime: cpu执行时间，微秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CpuTime: Float
        # @param IoWaitTime: IO等待时间，微秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IoWaitTime: Integer
        # @param LockWaitTime: 锁等待时间，微秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockWaitTime: Integer
        # @param NsTime: 开始时间，与timestamp构成一个精确到纳秒的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NsTime: Integer
        # @param TrxLivingTime: 事物持续时间，微秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrxLivingTime: Integer
        # @param TemplateInfo: 日志命中规则模板的基本信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TemplateInfo: Array

        attr_accessor :AffectRows, :ErrCode, :SqlType, :PolicyName, :DBName, :Sql, :Host, :User, :ExecTime, :Timestamp, :SentRows, :ThreadId, :CheckRows, :CpuTime, :IoWaitTime, :LockWaitTime, :NsTime, :TrxLivingTime, :TemplateInfo

        def initialize(affectrows=nil, errcode=nil, sqltype=nil, policyname=nil, dbname=nil, sql=nil, host=nil, user=nil, exectime=nil, timestamp=nil, sentrows=nil, threadid=nil, checkrows=nil, cputime=nil, iowaittime=nil, lockwaittime=nil, nstime=nil, trxlivingtime=nil, templateinfo=nil)
          @AffectRows = affectrows
          @ErrCode = errcode
          @SqlType = sqltype
          @PolicyName = policyname
          @DBName = dbname
          @Sql = sql
          @Host = host
          @User = user
          @ExecTime = exectime
          @Timestamp = timestamp
          @SentRows = sentrows
          @ThreadId = threadid
          @CheckRows = checkrows
          @CpuTime = cputime
          @IoWaitTime = iowaittime
          @LockWaitTime = lockwaittime
          @NsTime = nstime
          @TrxLivingTime = trxlivingtime
          @TemplateInfo = templateinfo
        end

        def deserialize(params)
          @AffectRows = params['AffectRows']
          @ErrCode = params['ErrCode']
          @SqlType = params['SqlType']
          @PolicyName = params['PolicyName']
          @DBName = params['DBName']
          @Sql = params['Sql']
          @Host = params['Host']
          @User = params['User']
          @ExecTime = params['ExecTime']
          @Timestamp = params['Timestamp']
          @SentRows = params['SentRows']
          @ThreadId = params['ThreadId']
          @CheckRows = params['CheckRows']
          @CpuTime = params['CpuTime']
          @IoWaitTime = params['IoWaitTime']
          @LockWaitTime = params['LockWaitTime']
          @NsTime = params['NsTime']
          @TrxLivingTime = params['TrxLivingTime']
          unless params['TemplateInfo'].nil?
            @TemplateInfo = []
            params['TemplateInfo'].each do |i|
              logruletemplateinfo_tmp = LogRuleTemplateInfo.new
              logruletemplateinfo_tmp.deserialize(i)
              @TemplateInfo << logruletemplateinfo_tmp
            end
          end
        end
      end

      # 审计日志分析结果
      class AuditLogAggregationResult < TencentCloud::Common::AbstractModel
        # @param AggregationField: 聚合维度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AggregationField: String
        # @param Buckets: 聚合桶的结果集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Buckets: Array

        attr_accessor :AggregationField, :Buckets

        def initialize(aggregationfield=nil, buckets=nil)
          @AggregationField = aggregationfield
          @Buckets = buckets
        end

        def deserialize(params)
          @AggregationField = params['AggregationField']
          unless params['Buckets'].nil?
            @Buckets = []
            params['Buckets'].each do |i|
              bucket_tmp = Bucket.new
              bucket_tmp.deserialize(i)
              @Buckets << bucket_tmp
            end
          end
        end
      end

      # 审计日志文件
      class AuditLogFile < TencentCloud::Common::AbstractModel
        # @param FileName: 审计日志文件名称
        # @type FileName: String
        # @param CreateTime: 审计日志文件创建时间。格式为 : "2019-03-20 17:09:13"。
        # @type CreateTime: String
        # @param Status: 文件状态值。可能返回的值为：
        # "creating" - 生成中;
        # "failed" - 创建失败;
        # "success" - 已生成;
        # @type Status: String
        # @param FileSize: 文件大小，单位为 KB。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param DownloadUrl: 审计日志下载地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param ErrMsg: 错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String

        attr_accessor :FileName, :CreateTime, :Status, :FileSize, :DownloadUrl, :ErrMsg

        def initialize(filename=nil, createtime=nil, status=nil, filesize=nil, downloadurl=nil, errmsg=nil)
          @FileName = filename
          @CreateTime = createtime
          @Status = status
          @FileSize = filesize
          @DownloadUrl = downloadurl
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @FileName = params['FileName']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @FileSize = params['FileSize']
          @DownloadUrl = params['DownloadUrl']
          @ErrMsg = params['ErrMsg']
        end
      end

      # 审计日志过滤条件。查询审计日志时，用户过滤返回的审计日志。
      class AuditLogFilter < TencentCloud::Common::AbstractModel
        # @param Host: 客户端地址。
        # @type Host: Array
        # @param User: 用户名。
        # @type User: Array
        # @param DBName: 数据库名称。
        # @type DBName: Array
        # @param TableName: 表名称。
        # @type TableName: Array
        # @param PolicyName: 审计策略名称。
        # @type PolicyName: Array
        # @param Sql: SQL 语句。支持模糊匹配。
        # @type Sql: String
        # @param SqlType: SQL 类型。目前支持："SELECT", "INSERT", "UPDATE", "DELETE", "CREATE", "DROP", "ALTER", "SET", "REPLACE", "EXECUTE"。
        # @type SqlType: String
        # @param ExecTime: 执行时间。单位为：ms。表示筛选执行时间大于该值的审计日志。
        # @type ExecTime: Integer
        # @param AffectRows: 影响行数。表示筛选影响行数大于该值的审计日志。
        # @type AffectRows: Integer
        # @param SqlTypes: SQL 类型。支持多个类型同时查询。目前支持："SELECT", "INSERT", "UPDATE", "DELETE", "CREATE", "DROP", "ALTER", "SET", "REPLACE", "EXECUTE"。
        # @type SqlTypes: Array
        # @param Sqls: SQL 语句。支持传递多个sql语句。
        # @type Sqls: Array
        # @param AffectRowsSection: 影响行数，格式为M-N，例如：10-200
        # @type AffectRowsSection: String
        # @param SentRowsSection: 返回行数，格式为M-N，例如：10-200
        # @type SentRowsSection: String
        # @param ExecTimeSection: 执行时间，格式为M-N，例如：10-200
        # @type ExecTimeSection: String
        # @param LockWaitTimeSection: 锁等待时间，格式为M-N，例如：10-200
        # @type LockWaitTimeSection: String
        # @param IoWaitTimeSection: IO等待时间，格式为M-N，例如：10-200
        # @type IoWaitTimeSection: String
        # @param TransactionLivingTimeSection: 事务持续时间，格式为M-N，例如：10-200
        # @type TransactionLivingTimeSection: String
        # @param ThreadId: 线程ID
        # @type ThreadId: Array
        # @param SentRows: 返回行数。表示筛选返回行数大于该值的审计日志。
        # @type SentRows: Integer
        # @param ErrCode: mysql错误码
        # @type ErrCode: Array

        attr_accessor :Host, :User, :DBName, :TableName, :PolicyName, :Sql, :SqlType, :ExecTime, :AffectRows, :SqlTypes, :Sqls, :AffectRowsSection, :SentRowsSection, :ExecTimeSection, :LockWaitTimeSection, :IoWaitTimeSection, :TransactionLivingTimeSection, :ThreadId, :SentRows, :ErrCode

        def initialize(host=nil, user=nil, dbname=nil, tablename=nil, policyname=nil, sql=nil, sqltype=nil, exectime=nil, affectrows=nil, sqltypes=nil, sqls=nil, affectrowssection=nil, sentrowssection=nil, exectimesection=nil, lockwaittimesection=nil, iowaittimesection=nil, transactionlivingtimesection=nil, threadid=nil, sentrows=nil, errcode=nil)
          @Host = host
          @User = user
          @DBName = dbname
          @TableName = tablename
          @PolicyName = policyname
          @Sql = sql
          @SqlType = sqltype
          @ExecTime = exectime
          @AffectRows = affectrows
          @SqlTypes = sqltypes
          @Sqls = sqls
          @AffectRowsSection = affectrowssection
          @SentRowsSection = sentrowssection
          @ExecTimeSection = exectimesection
          @LockWaitTimeSection = lockwaittimesection
          @IoWaitTimeSection = iowaittimesection
          @TransactionLivingTimeSection = transactionlivingtimesection
          @ThreadId = threadid
          @SentRows = sentrows
          @ErrCode = errcode
        end

        def deserialize(params)
          @Host = params['Host']
          @User = params['User']
          @DBName = params['DBName']
          @TableName = params['TableName']
          @PolicyName = params['PolicyName']
          @Sql = params['Sql']
          @SqlType = params['SqlType']
          @ExecTime = params['ExecTime']
          @AffectRows = params['AffectRows']
          @SqlTypes = params['SqlTypes']
          @Sqls = params['Sqls']
          @AffectRowsSection = params['AffectRowsSection']
          @SentRowsSection = params['SentRowsSection']
          @ExecTimeSection = params['ExecTimeSection']
          @LockWaitTimeSection = params['LockWaitTimeSection']
          @IoWaitTimeSection = params['IoWaitTimeSection']
          @TransactionLivingTimeSection = params['TransactionLivingTimeSection']
          @ThreadId = params['ThreadId']
          @SentRows = params['SentRows']
          @ErrCode = params['ErrCode']
        end
      end

      # 审计策略
      class AuditPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyId: 审计策略 ID。
        # @type PolicyId: String
        # @param Status: 审计策略的状态。可能返回的值为：
        # "creating" - 创建中;
        # "running" - 运行中;
        # "paused" - 暂停中;
        # "failed" - 创建失败。
        # @type Status: String
        # @param InstanceId: 数据库实例 ID。
        # @type InstanceId: String
        # @param CreateTime: 审计策略创建时间。格式为 : "2019-03-20 17:09:13"。
        # @type CreateTime: String
        # @param ModifyTime: 审计策略最后修改时间。格式为 : "2019-03-20 17:09:13"。
        # @type ModifyTime: String
        # @param PolicyName: 审计策略名称。
        # @type PolicyName: String
        # @param RuleId: 审计规则 ID。
        # @type RuleId: String
        # @param RuleName: 审计规则名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param InstanceName: 数据库实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String

        attr_accessor :PolicyId, :Status, :InstanceId, :CreateTime, :ModifyTime, :PolicyName, :RuleId, :RuleName, :InstanceName

        def initialize(policyid=nil, status=nil, instanceid=nil, createtime=nil, modifytime=nil, policyname=nil, ruleid=nil, rulename=nil, instancename=nil)
          @PolicyId = policyid
          @Status = status
          @InstanceId = instanceid
          @CreateTime = createtime
          @ModifyTime = modifytime
          @PolicyName = policyname
          @RuleId = ruleid
          @RuleName = rulename
          @InstanceName = instancename
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @Status = params['Status']
          @InstanceId = params['InstanceId']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @PolicyName = params['PolicyName']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @InstanceName = params['InstanceName']
        end
      end

      # 审计规则
      class AuditRule < TencentCloud::Common::AbstractModel
        # @param RuleId: 审计规则 Id。
        # @type RuleId: String
        # @param CreateTime: 审计规则创建时间。格式为 : "2019-03-20 17:09:13"。
        # @type CreateTime: String
        # @param ModifyTime: 审计规则最后修改时间。格式为 : "2019-03-20 17:09:13"。
        # @type ModifyTime: String
        # @param RuleName: 审计规则名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleName: String
        # @param Description: 审计规则描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param RuleFilters: 审计规则过滤条件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleFilters: Array
        # @param AuditAll: 是否开启全审计。
        # @type AuditAll: Boolean

        attr_accessor :RuleId, :CreateTime, :ModifyTime, :RuleName, :Description, :RuleFilters, :AuditAll

        def initialize(ruleid=nil, createtime=nil, modifytime=nil, rulename=nil, description=nil, rulefilters=nil, auditall=nil)
          @RuleId = ruleid
          @CreateTime = createtime
          @ModifyTime = modifytime
          @RuleName = rulename
          @Description = description
          @RuleFilters = rulefilters
          @AuditAll = auditall
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @RuleName = params['RuleName']
          @Description = params['Description']
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              auditfilter_tmp = AuditFilter.new
              auditfilter_tmp.deserialize(i)
              @RuleFilters << auditfilter_tmp
            end
          end
          @AuditAll = params['AuditAll']
        end
      end

      # 审计规则的过滤条件
      class AuditRuleFilters < TencentCloud::Common::AbstractModel
        # @param RuleFilters: 单条审计规则。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleFilters: Array

        attr_accessor :RuleFilters

        def initialize(rulefilters=nil)
          @RuleFilters = rulefilters
        end

        def deserialize(params)
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              rulefilters_tmp = RuleFilters.new
              rulefilters_tmp.deserialize(i)
              @RuleFilters << rulefilters_tmp
            end
          end
        end
      end

      # 审计规则模板的详情
      class AuditRuleTemplateInfo < TencentCloud::Common::AbstractModel
        # @param RuleTemplateId: 规则模板ID。
        # @type RuleTemplateId: String
        # @param RuleTemplateName: 规则模板名称。
        # @type RuleTemplateName: String
        # @param RuleFilters: 规则模板的过滤条件。
        # @type RuleFilters: Array
        # @param Description: 规则模板描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateAt: 规则模板创建时间。
        # @type CreateAt: String
        # @param AlarmLevel: 告警等级。1-低风险，2-中风险，3-高风险。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevel: Integer
        # @param AlarmPolicy: 告警策略。0-不告警，1-告警。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmPolicy: Integer
        # @param AffectedInstances: 规则模板应用在哪些在实例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedInstances: Array
        # @param Status: 模板状态。0-无任务 ，1-修改中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param UpdateAt: 模板更新时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateAt: String

        attr_accessor :RuleTemplateId, :RuleTemplateName, :RuleFilters, :Description, :CreateAt, :AlarmLevel, :AlarmPolicy, :AffectedInstances, :Status, :UpdateAt

        def initialize(ruletemplateid=nil, ruletemplatename=nil, rulefilters=nil, description=nil, createat=nil, alarmlevel=nil, alarmpolicy=nil, affectedinstances=nil, status=nil, updateat=nil)
          @RuleTemplateId = ruletemplateid
          @RuleTemplateName = ruletemplatename
          @RuleFilters = rulefilters
          @Description = description
          @CreateAt = createat
          @AlarmLevel = alarmlevel
          @AlarmPolicy = alarmpolicy
          @AffectedInstances = affectedinstances
          @Status = status
          @UpdateAt = updateat
        end

        def deserialize(params)
          @RuleTemplateId = params['RuleTemplateId']
          @RuleTemplateName = params['RuleTemplateName']
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              rulefilters_tmp = RuleFilters.new
              rulefilters_tmp.deserialize(i)
              @RuleFilters << rulefilters_tmp
            end
          end
          @Description = params['Description']
          @CreateAt = params['CreateAt']
          @AlarmLevel = params['AlarmLevel']
          @AlarmPolicy = params['AlarmPolicy']
          @AffectedInstances = params['AffectedInstances']
          @Status = params['Status']
          @UpdateAt = params['UpdateAt']
        end
      end

      # CPU弹性扩容的自动扩容策略
      class AutoStrategy < TencentCloud::Common::AbstractModel
        # @param ExpandThreshold: 自动扩容阈值，可选值70、80、90，代表CPU利用率达到70%、80%、90%时后台进行自动扩容
        # @type ExpandThreshold: Integer
        # @param ExpandPeriod: 自动扩容观测周期，单位是分钟，可选值1、3、5、10、15、30。后台会按照配置的周期进行扩容判断。
        # @type ExpandPeriod: Integer
        # @param ShrinkThreshold: 自动缩容阈值，可选值10、20、30，代表CPU利用率达到10%、20%、30%时后台进行自动缩容
        # @type ShrinkThreshold: Integer
        # @param ShrinkPeriod: 自动缩容观测周期，单位是分钟，可选值5、10、15、30。后台会按照配置的周期进行缩容判断。
        # @type ShrinkPeriod: Integer

        attr_accessor :ExpandThreshold, :ExpandPeriod, :ShrinkThreshold, :ShrinkPeriod

        def initialize(expandthreshold=nil, expandperiod=nil, shrinkthreshold=nil, shrinkperiod=nil)
          @ExpandThreshold = expandthreshold
          @ExpandPeriod = expandperiod
          @ShrinkThreshold = shrinkthreshold
          @ShrinkPeriod = shrinkperiod
        end

        def deserialize(params)
          @ExpandThreshold = params['ExpandThreshold']
          @ExpandPeriod = params['ExpandPeriod']
          @ShrinkThreshold = params['ShrinkThreshold']
          @ShrinkPeriod = params['ShrinkPeriod']
        end
      end

      # ECDB第二个从库的配置信息，只有ECDB实例才有这个字段
      class BackupConfig < TencentCloud::Common::AbstractModel
        # @param ReplicationMode: 第二个从库复制方式，可能的返回值：async-异步，semisync-半同步
        # @type ReplicationMode: String
        # @param Zone: 第二个从库可用区的正式名称，如ap-shanghai-1
        # @type Zone: String
        # @param Vip: 第二个从库内网IP地址
        # @type Vip: String
        # @param Vport: 第二个从库访问端口
        # @type Vport: Integer

        attr_accessor :ReplicationMode, :Zone, :Vip, :Vport

        def initialize(replicationmode=nil, zone=nil, vip=nil, vport=nil)
          @ReplicationMode = replicationmode
          @Zone = zone
          @Vip = vip
          @Vport = vport
        end

        def deserialize(params)
          @ReplicationMode = params['ReplicationMode']
          @Zone = params['Zone']
          @Vip = params['Vip']
          @Vport = params['Vport']
        end
      end

      # 备份详细信息
      class BackupInfo < TencentCloud::Common::AbstractModel
        # @param Name: 备份文件名
        # @type Name: String
        # @param Size: 备份文件大小，单位：Byte
        # @type Size: Integer
        # @param Date: 备份快照时间，时间格式：2016-03-17 02:10:37
        # @type Date: String
        # @param IntranetUrl: 下载地址
        # @type IntranetUrl: String
        # @param InternetUrl: 下载地址
        # @type InternetUrl: String
        # @param Type: 日志具体类型。可能的值有 "logical": 逻辑冷备， "physical": 物理冷备。
        # @type Type: String
        # @param BackupId: 备份子任务的ID，删除备份文件时使用
        # @type BackupId: Integer
        # @param Status: 备份任务状态。可能的值有 "SUCCESS": 备份成功， "FAILED": 备份失败， "RUNNING": 备份进行中。
        # @type Status: String
        # @param FinishTime: 备份任务的完成时间
        # @type FinishTime: String
        # @param Creator: （该值将废弃，不建议使用）备份的创建者，可能的值：SYSTEM - 系统创建，Uin - 发起者Uin值。
        # @type Creator: String
        # @param StartTime: 备份任务的开始时间
        # @type StartTime: String
        # @param Method: 备份方法。可能的值有 "full": 全量备份， "partial": 部分备份。
        # @type Method: String
        # @param Way: 备份方式。可能的值有 "manual": 手动备份， "automatic": 自动备份。
        # @type Way: String
        # @param ManualBackupName: 手动备份别名
        # @type ManualBackupName: String
        # @param SaveMode: 备份保留类型，save_mode_regular - 常规保存备份，save_mode_period - 定期保存备份
        # @type SaveMode: String
        # @param Region: 本地备份所在地域
        # @type Region: String
        # @param RemoteInfo: 异地备份详细信息
        # @type RemoteInfo: Array
        # @param CosStorageType: 存储方式，0-常规存储，1-归档存储，默认为0
        # @type CosStorageType: Integer
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param EncryptionFlag: 备份文件是否加密， on-加密， off-未加密
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptionFlag: String
        # @param ExecutedGTIDSet: 备份GTID点位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExecutedGTIDSet: String

        attr_accessor :Name, :Size, :Date, :IntranetUrl, :InternetUrl, :Type, :BackupId, :Status, :FinishTime, :Creator, :StartTime, :Method, :Way, :ManualBackupName, :SaveMode, :Region, :RemoteInfo, :CosStorageType, :InstanceId, :EncryptionFlag, :ExecutedGTIDSet

        def initialize(name=nil, size=nil, date=nil, intraneturl=nil, interneturl=nil, type=nil, backupid=nil, status=nil, finishtime=nil, creator=nil, starttime=nil, method=nil, way=nil, manualbackupname=nil, savemode=nil, region=nil, remoteinfo=nil, cosstoragetype=nil, instanceid=nil, encryptionflag=nil, executedgtidset=nil)
          @Name = name
          @Size = size
          @Date = date
          @IntranetUrl = intraneturl
          @InternetUrl = interneturl
          @Type = type
          @BackupId = backupid
          @Status = status
          @FinishTime = finishtime
          @Creator = creator
          @StartTime = starttime
          @Method = method
          @Way = way
          @ManualBackupName = manualbackupname
          @SaveMode = savemode
          @Region = region
          @RemoteInfo = remoteinfo
          @CosStorageType = cosstoragetype
          @InstanceId = instanceid
          @EncryptionFlag = encryptionflag
          @ExecutedGTIDSet = executedgtidset
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
          @Date = params['Date']
          @IntranetUrl = params['IntranetUrl']
          @InternetUrl = params['InternetUrl']
          @Type = params['Type']
          @BackupId = params['BackupId']
          @Status = params['Status']
          @FinishTime = params['FinishTime']
          @Creator = params['Creator']
          @StartTime = params['StartTime']
          @Method = params['Method']
          @Way = params['Way']
          @ManualBackupName = params['ManualBackupName']
          @SaveMode = params['SaveMode']
          @Region = params['Region']
          unless params['RemoteInfo'].nil?
            @RemoteInfo = []
            params['RemoteInfo'].each do |i|
              remotebackupinfo_tmp = RemoteBackupInfo.new
              remotebackupinfo_tmp.deserialize(i)
              @RemoteInfo << remotebackupinfo_tmp
            end
          end
          @CosStorageType = params['CosStorageType']
          @InstanceId = params['InstanceId']
          @EncryptionFlag = params['EncryptionFlag']
          @ExecutedGTIDSet = params['ExecutedGTIDSet']
        end
      end

      # 创建备份时，指定需要备份的库表信息
      class BackupItem < TencentCloud::Common::AbstractModel
        # @param Db: 需要备份的库名
        # @type Db: String
        # @param Table: 需要备份的表名。 如果传该参数，表示备份该库中的指定表。如果不传该参数则备份该db库
        # @type Table: String

        attr_accessor :Db, :Table

        def initialize(db=nil, table=nil)
          @Db = db
          @Table = table
        end

        def deserialize(params)
          @Db = params['Db']
          @Table = params['Table']
        end
      end

      # 备份文件限制下载来源VPC设置项
      class BackupLimitVpcItem < TencentCloud::Common::AbstractModel
        # @param Region: 限制下载来源的地域。目前仅支持当前地域。
        # @type Region: String
        # @param VpcList: 限制下载的vpc列表。
        # @type VpcList: Array

        attr_accessor :Region, :VpcList

        def initialize(region=nil, vpclist=nil)
          @Region = region
          @VpcList = vpclist
        end

        def deserialize(params)
          @Region = params['Region']
          @VpcList = params['VpcList']
        end
      end

      # 实例备份统计项
      class BackupSummaryItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param AutoBackupCount: 该实例自动数据备份的个数。
        # @type AutoBackupCount: Integer
        # @param AutoBackupVolume: 该实例自动数据备份的容量。
        # @type AutoBackupVolume: Integer
        # @param ManualBackupCount: 该实例手动数据备份的个数。
        # @type ManualBackupCount: Integer
        # @param ManualBackupVolume: 该实例手动数据备份的容量。
        # @type ManualBackupVolume: Integer
        # @param DataBackupCount: 该实例总的数据备份（包含自动备份和手动备份）个数。
        # @type DataBackupCount: Integer
        # @param DataBackupVolume: 该实例总的数据备份容量。
        # @type DataBackupVolume: Integer
        # @param BinlogBackupCount: 该实例日志备份的个数。
        # @type BinlogBackupCount: Integer
        # @param BinlogBackupVolume: 该实例日志备份的容量。
        # @type BinlogBackupVolume: Integer
        # @param BackupVolume: 该实例的总备份（包含数据备份和日志备份）占用容量。
        # @type BackupVolume: Integer

        attr_accessor :InstanceId, :AutoBackupCount, :AutoBackupVolume, :ManualBackupCount, :ManualBackupVolume, :DataBackupCount, :DataBackupVolume, :BinlogBackupCount, :BinlogBackupVolume, :BackupVolume

        def initialize(instanceid=nil, autobackupcount=nil, autobackupvolume=nil, manualbackupcount=nil, manualbackupvolume=nil, databackupcount=nil, databackupvolume=nil, binlogbackupcount=nil, binlogbackupvolume=nil, backupvolume=nil)
          @InstanceId = instanceid
          @AutoBackupCount = autobackupcount
          @AutoBackupVolume = autobackupvolume
          @ManualBackupCount = manualbackupcount
          @ManualBackupVolume = manualbackupvolume
          @DataBackupCount = databackupcount
          @DataBackupVolume = databackupvolume
          @BinlogBackupCount = binlogbackupcount
          @BinlogBackupVolume = binlogbackupvolume
          @BackupVolume = backupvolume
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AutoBackupCount = params['AutoBackupCount']
          @AutoBackupVolume = params['AutoBackupVolume']
          @ManualBackupCount = params['ManualBackupCount']
          @ManualBackupVolume = params['ManualBackupVolume']
          @DataBackupCount = params['DataBackupCount']
          @DataBackupVolume = params['DataBackupVolume']
          @BinlogBackupCount = params['BinlogBackupCount']
          @BinlogBackupVolume = params['BinlogBackupVolume']
          @BackupVolume = params['BackupVolume']
        end
      end

      # BalanceRoGroupLoad请求参数结构体
      class BalanceRoGroupLoadRequest < TencentCloud::Common::AbstractModel
        # @param RoGroupId: RO 组的 ID，格式如：cdbrg-c1nl9rpv。
        # @type RoGroupId: String

        attr_accessor :RoGroupId

        def initialize(rogroupid=nil)
          @RoGroupId = rogroupid
        end

        def deserialize(params)
          @RoGroupId = params['RoGroupId']
        end
      end

      # BalanceRoGroupLoad返回参数结构体
      class BalanceRoGroupLoadResponse < TencentCloud::Common::AbstractModel
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

      # 二进制日志信息
      class BinlogInfo < TencentCloud::Common::AbstractModel
        # @param Name: binlog 日志备份文件名
        # @type Name: String
        # @param Size: 备份文件大小，单位：Byte
        # @type Size: Integer
        # @param Date: 文件存储时间，时间格式：2016-03-17 02:10:37
        # @type Date: String
        # @param IntranetUrl: 下载地址
        # @type IntranetUrl: String
        # @param InternetUrl: 下载地址
        # @type InternetUrl: String
        # @param Type: 日志具体类型，可能的值有：binlog - 二进制日志
        # @type Type: String
        # @param BinlogStartTime: binlog 文件起始时间
        # @type BinlogStartTime: String
        # @param BinlogFinishTime: binlog 文件截止时间
        # @type BinlogFinishTime: String
        # @param Region: 本地binlog文件所在地域
        # @type Region: String
        # @param Status: 备份任务状态。可能的值有 "SUCCESS": 备份成功， "FAILED": 备份失败， "RUNNING": 备份进行中。
        # @type Status: String
        # @param RemoteInfo: binlog异地备份详细信息
        # @type RemoteInfo: Array
        # @param CosStorageType: 存储方式，0-常规存储，1-归档存储，默认为0
        # @type CosStorageType: Integer
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :Name, :Size, :Date, :IntranetUrl, :InternetUrl, :Type, :BinlogStartTime, :BinlogFinishTime, :Region, :Status, :RemoteInfo, :CosStorageType, :InstanceId

        def initialize(name=nil, size=nil, date=nil, intraneturl=nil, interneturl=nil, type=nil, binlogstarttime=nil, binlogfinishtime=nil, region=nil, status=nil, remoteinfo=nil, cosstoragetype=nil, instanceid=nil)
          @Name = name
          @Size = size
          @Date = date
          @IntranetUrl = intraneturl
          @InternetUrl = interneturl
          @Type = type
          @BinlogStartTime = binlogstarttime
          @BinlogFinishTime = binlogfinishtime
          @Region = region
          @Status = status
          @RemoteInfo = remoteinfo
          @CosStorageType = cosstoragetype
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
          @Date = params['Date']
          @IntranetUrl = params['IntranetUrl']
          @InternetUrl = params['InternetUrl']
          @Type = params['Type']
          @BinlogStartTime = params['BinlogStartTime']
          @BinlogFinishTime = params['BinlogFinishTime']
          @Region = params['Region']
          @Status = params['Status']
          unless params['RemoteInfo'].nil?
            @RemoteInfo = []
            params['RemoteInfo'].each do |i|
              remotebackupinfo_tmp = RemoteBackupInfo.new
              remotebackupinfo_tmp.deserialize(i)
              @RemoteInfo << remotebackupinfo_tmp
            end
          end
          @CosStorageType = params['CosStorageType']
          @InstanceId = params['InstanceId']
        end
      end

      # 聚合桶的信息
      class Bucket < TencentCloud::Common::AbstractModel
        # @param Key: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Count: key值出现的次数。
        # @type Count: Integer

        attr_accessor :Key, :Count

        def initialize(key=nil, count=nil)
          @Key = key
          @Count = count
        end

        def deserialize(params)
          @Key = params['Key']
          @Count = params['Count']
        end
      end

      # 地域售卖配置
      class CdbRegionSellConf < TencentCloud::Common::AbstractModel
        # @param RegionName: 地域中文名称
        # @type RegionName: String
        # @param Area: 所属大区
        # @type Area: String
        # @param IsDefaultRegion: 是否为默认地域
        # @type IsDefaultRegion: Integer
        # @param Region: 地域名称
        # @type Region: String
        # @param RegionConfig: 地域的可用区售卖配置
        # @type RegionConfig: Array

        attr_accessor :RegionName, :Area, :IsDefaultRegion, :Region, :RegionConfig

        def initialize(regionname=nil, area=nil, isdefaultregion=nil, region=nil, regionconfig=nil)
          @RegionName = regionname
          @Area = area
          @IsDefaultRegion = isdefaultregion
          @Region = region
          @RegionConfig = regionconfig
        end

        def deserialize(params)
          @RegionName = params['RegionName']
          @Area = params['Area']
          @IsDefaultRegion = params['IsDefaultRegion']
          @Region = params['Region']
          unless params['RegionConfig'].nil?
            @RegionConfig = []
            params['RegionConfig'].each do |i|
              cdbzonesellconf_tmp = CdbZoneSellConf.new
              cdbzonesellconf_tmp.deserialize(i)
              @RegionConfig << cdbzonesellconf_tmp
            end
          end
        end
      end

      # 售卖配置详情
      class CdbSellConfig < TencentCloud::Common::AbstractModel
        # @param Memory: 内存大小，单位为MB
        # @type Memory: Integer
        # @param Cpu: CPU核心数
        # @type Cpu: Integer
        # @param VolumeMin: 磁盘最小规格，单位为GB
        # @type VolumeMin: Integer
        # @param VolumeMax: 磁盘最大规格，单位为GB
        # @type VolumeMax: Integer
        # @param VolumeStep: 磁盘步长，单位为GB
        # @type VolumeStep: Integer
        # @param Iops: 每秒IO数量
        # @type Iops: Integer
        # @param Info: 应用场景描述
        # @type Info: String
        # @param Status: 状态值，0 表示该规格对外售卖
        # @type Status: Integer
        # @param DeviceType: 实例类型，可能的取值范围有：UNIVERSAL (通用型), EXCLUSIVE (独享型), BASIC (基础型), BASIC_V2 (基础型v2)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceType: String
        # @param EngineType: 引擎类型描述，可能的取值范围有：Innodb，RocksDB
        # @type EngineType: String
        # @param Id: 售卖规格Id
        # @type Id: Integer

        attr_accessor :Memory, :Cpu, :VolumeMin, :VolumeMax, :VolumeStep, :Iops, :Info, :Status, :DeviceType, :EngineType, :Id

        def initialize(memory=nil, cpu=nil, volumemin=nil, volumemax=nil, volumestep=nil, iops=nil, info=nil, status=nil, devicetype=nil, enginetype=nil, id=nil)
          @Memory = memory
          @Cpu = cpu
          @VolumeMin = volumemin
          @VolumeMax = volumemax
          @VolumeStep = volumestep
          @Iops = iops
          @Info = info
          @Status = status
          @DeviceType = devicetype
          @EngineType = enginetype
          @Id = id
        end

        def deserialize(params)
          @Memory = params['Memory']
          @Cpu = params['Cpu']
          @VolumeMin = params['VolumeMin']
          @VolumeMax = params['VolumeMax']
          @VolumeStep = params['VolumeStep']
          @Iops = params['Iops']
          @Info = params['Info']
          @Status = params['Status']
          @DeviceType = params['DeviceType']
          @EngineType = params['EngineType']
          @Id = params['Id']
        end
      end

      # 售卖实例类型
      class CdbSellType < TencentCloud::Common::AbstractModel
        # @param TypeName: 售卖实例名称。Z3是高可用类型对应规格中的DeviceType包含UNIVERSAL,EXCLUSIVE；CVM是基础版类型对应规格中的DeviceType是BASIC；TKE是基础型v2类型对应规格中的DeviceType是BASIC_V2。
        # @type TypeName: String
        # @param EngineVersion: 引擎版本号
        # @type EngineVersion: Array
        # @param ConfigIds: 售卖规格Id
        # @type ConfigIds: Array

        attr_accessor :TypeName, :EngineVersion, :ConfigIds

        def initialize(typename=nil, engineversion=nil, configids=nil)
          @TypeName = typename
          @EngineVersion = engineversion
          @ConfigIds = configids
        end

        def deserialize(params)
          @TypeName = params['TypeName']
          @EngineVersion = params['EngineVersion']
          @ConfigIds = params['ConfigIds']
        end
      end

      # 各地域可售卖的规格配置
      class CdbZoneDataResult < TencentCloud::Common::AbstractModel
        # @param Configs: 售卖规格所有集合
        # @type Configs: Array
        # @param Regions: 售卖地域可用区集合
        # @type Regions: Array

        attr_accessor :Configs, :Regions

        def initialize(configs=nil, regions=nil)
          @Configs = configs
          @Regions = regions
        end

        def deserialize(params)
          unless params['Configs'].nil?
            @Configs = []
            params['Configs'].each do |i|
              cdbsellconfig_tmp = CdbSellConfig.new
              cdbsellconfig_tmp.deserialize(i)
              @Configs << cdbsellconfig_tmp
            end
          end
          unless params['Regions'].nil?
            @Regions = []
            params['Regions'].each do |i|
              cdbregionsellconf_tmp = CdbRegionSellConf.new
              cdbregionsellconf_tmp.deserialize(i)
              @Regions << cdbregionsellconf_tmp
            end
          end
        end
      end

      # 可用区售卖配置
      class CdbZoneSellConf < TencentCloud::Common::AbstractModel
        # @param Status: 可用区状态。可能的返回值为：1-上线；3-停售；4-不展示
        # @type Status: Integer
        # @param ZoneName: 可用区中文名称
        # @type ZoneName: String
        # @param IsCustom: 实例类型是否为自定义类型
        # @type IsCustom: Boolean
        # @param IsSupportDr: 是否支持灾备
        # @type IsSupportDr: Boolean
        # @param IsSupportVpc: 是否支持私有网络
        # @type IsSupportVpc: Boolean
        # @param HourInstanceSaleMaxNum: 小时计费实例最大售卖数量
        # @type HourInstanceSaleMaxNum: Integer
        # @param IsDefaultZone: 是否为默认可用区
        # @type IsDefaultZone: Boolean
        # @param IsBm: 是否为黑石区
        # @type IsBm: Boolean
        # @param PayType: 支持的付费类型。可能的返回值为：0-包年包月；1-小时计费；2-后付费
        # @type PayType: Array
        # @param ProtectMode: 数据复制类型。0-异步复制；1-半同步复制；2-强同步复制
        # @type ProtectMode: Array
        # @param Zone: 可用区名称
        # @type Zone: String
        # @param ZoneConf: 多可用区信息
        # @type ZoneConf: :class:`Tencentcloud::Cdb.v20170320.models.ZoneConf`
        # @param DrZone: 可支持的灾备可用区信息
        # @type DrZone: Array
        # @param IsSupportRemoteRo: 是否支持跨可用区只读
        # @type IsSupportRemoteRo: Boolean
        # @param RemoteRoZone: 可支持的跨可用区只读区信息
        # @type RemoteRoZone: Array
        # @param ExClusterStatus: 独享型可用区状态。可能的返回值为：1-上线；3-停售；4-不展示
        # @type ExClusterStatus: Integer
        # @param ExClusterRemoteRoZone: 独享型可支持的跨可用区只读区信息
        # @type ExClusterRemoteRoZone: Array
        # @param ExClusterZoneConf: 独享型多可用区信息
        # @type ExClusterZoneConf: :class:`Tencentcloud::Cdb.v20170320.models.ZoneConf`
        # @param SellType: 售卖实例类型数组，其中configIds的值与configs结构体中的id一一对应。
        # @type SellType: Array
        # @param ZoneId: 可用区id
        # @type ZoneId: Integer
        # @param IsSupportIpv6: 是否支持ipv6
        # @type IsSupportIpv6: Boolean
        # @param EngineType: 可支持的售卖数据库引擎类型
        # @type EngineType: Array

        attr_accessor :Status, :ZoneName, :IsCustom, :IsSupportDr, :IsSupportVpc, :HourInstanceSaleMaxNum, :IsDefaultZone, :IsBm, :PayType, :ProtectMode, :Zone, :ZoneConf, :DrZone, :IsSupportRemoteRo, :RemoteRoZone, :ExClusterStatus, :ExClusterRemoteRoZone, :ExClusterZoneConf, :SellType, :ZoneId, :IsSupportIpv6, :EngineType

        def initialize(status=nil, zonename=nil, iscustom=nil, issupportdr=nil, issupportvpc=nil, hourinstancesalemaxnum=nil, isdefaultzone=nil, isbm=nil, paytype=nil, protectmode=nil, zone=nil, zoneconf=nil, drzone=nil, issupportremotero=nil, remoterozone=nil, exclusterstatus=nil, exclusterremoterozone=nil, exclusterzoneconf=nil, selltype=nil, zoneid=nil, issupportipv6=nil, enginetype=nil)
          @Status = status
          @ZoneName = zonename
          @IsCustom = iscustom
          @IsSupportDr = issupportdr
          @IsSupportVpc = issupportvpc
          @HourInstanceSaleMaxNum = hourinstancesalemaxnum
          @IsDefaultZone = isdefaultzone
          @IsBm = isbm
          @PayType = paytype
          @ProtectMode = protectmode
          @Zone = zone
          @ZoneConf = zoneconf
          @DrZone = drzone
          @IsSupportRemoteRo = issupportremotero
          @RemoteRoZone = remoterozone
          @ExClusterStatus = exclusterstatus
          @ExClusterRemoteRoZone = exclusterremoterozone
          @ExClusterZoneConf = exclusterzoneconf
          @SellType = selltype
          @ZoneId = zoneid
          @IsSupportIpv6 = issupportipv6
          @EngineType = enginetype
        end

        def deserialize(params)
          @Status = params['Status']
          @ZoneName = params['ZoneName']
          @IsCustom = params['IsCustom']
          @IsSupportDr = params['IsSupportDr']
          @IsSupportVpc = params['IsSupportVpc']
          @HourInstanceSaleMaxNum = params['HourInstanceSaleMaxNum']
          @IsDefaultZone = params['IsDefaultZone']
          @IsBm = params['IsBm']
          @PayType = params['PayType']
          @ProtectMode = params['ProtectMode']
          @Zone = params['Zone']
          unless params['ZoneConf'].nil?
            @ZoneConf = ZoneConf.new
            @ZoneConf.deserialize(params['ZoneConf'])
          end
          @DrZone = params['DrZone']
          @IsSupportRemoteRo = params['IsSupportRemoteRo']
          @RemoteRoZone = params['RemoteRoZone']
          @ExClusterStatus = params['ExClusterStatus']
          @ExClusterRemoteRoZone = params['ExClusterRemoteRoZone']
          unless params['ExClusterZoneConf'].nil?
            @ExClusterZoneConf = ZoneConf.new
            @ExClusterZoneConf.deserialize(params['ExClusterZoneConf'])
          end
          unless params['SellType'].nil?
            @SellType = []
            params['SellType'].each do |i|
              cdbselltype_tmp = CdbSellType.new
              cdbselltype_tmp.deserialize(i)
              @SellType << cdbselltype_tmp
            end
          end
          @ZoneId = params['ZoneId']
          @IsSupportIpv6 = params['IsSupportIpv6']
          @EngineType = params['EngineType']
        end
      end

      # CheckMigrateCluster请求参数结构体
      class CheckMigrateClusterRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CheckMigrateCluster返回参数结构体
      class CheckMigrateClusterResponse < TencentCloud::Common::AbstractModel
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

      # 克隆任务记录。
      class CloneItem < TencentCloud::Common::AbstractModel
        # @param SrcInstanceId: 克隆任务的源实例Id。
        # @type SrcInstanceId: String
        # @param DstInstanceId: 克隆任务的新产生实例Id。
        # @type DstInstanceId: String
        # @param CloneJobId: 克隆任务对应的任务列表Id。
        # @type CloneJobId: Integer
        # @param RollbackStrategy: 克隆实例使用的策略， 包括以下类型：  timepoint:指定时间点回档，  backupset: 指定备份文件回档。
        # @type RollbackStrategy: String
        # @param RollbackTargetTime: 克隆实例回档的时间点。
        # @type RollbackTargetTime: String
        # @param StartTime: 任务开始时间。
        # @type StartTime: String
        # @param EndTime: 任务结束时间。
        # @type EndTime: String
        # @param TaskStatus: 任务状态，包括以下状态：initial,running,wait_complete,success,failed
        # @type TaskStatus: String
        # @param NewRegionId: 克隆实例所在地域Id
        # @type NewRegionId: Integer
        # @param SrcRegionId: 源实例所在地域Id
        # @type SrcRegionId: Integer

        attr_accessor :SrcInstanceId, :DstInstanceId, :CloneJobId, :RollbackStrategy, :RollbackTargetTime, :StartTime, :EndTime, :TaskStatus, :NewRegionId, :SrcRegionId

        def initialize(srcinstanceid=nil, dstinstanceid=nil, clonejobid=nil, rollbackstrategy=nil, rollbacktargettime=nil, starttime=nil, endtime=nil, taskstatus=nil, newregionid=nil, srcregionid=nil)
          @SrcInstanceId = srcinstanceid
          @DstInstanceId = dstinstanceid
          @CloneJobId = clonejobid
          @RollbackStrategy = rollbackstrategy
          @RollbackTargetTime = rollbacktargettime
          @StartTime = starttime
          @EndTime = endtime
          @TaskStatus = taskstatus
          @NewRegionId = newregionid
          @SrcRegionId = srcregionid
        end

        def deserialize(params)
          @SrcInstanceId = params['SrcInstanceId']
          @DstInstanceId = params['DstInstanceId']
          @CloneJobId = params['CloneJobId']
          @RollbackStrategy = params['RollbackStrategy']
          @RollbackTargetTime = params['RollbackTargetTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @TaskStatus = params['TaskStatus']
          @NewRegionId = params['NewRegionId']
          @SrcRegionId = params['SrcRegionId']
        end
      end

      # CloseAuditService请求参数结构体
      class CloseAuditServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CloseAuditService返回参数结构体
      class CloseAuditServiceResponse < TencentCloud::Common::AbstractModel
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

      # CloseCDBProxy请求参数结构体
      class CloseCDBProxyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param OnlyCloseRW: 是否只关闭读写分离，取值："true" | "false"，默认为"false"
        # @type OnlyCloseRW: Boolean

        attr_accessor :InstanceId, :ProxyGroupId, :OnlyCloseRW

        def initialize(instanceid=nil, proxygroupid=nil, onlycloserw=nil)
          @InstanceId = instanceid
          @ProxyGroupId = proxygroupid
          @OnlyCloseRW = onlycloserw
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ProxyGroupId = params['ProxyGroupId']
          @OnlyCloseRW = params['OnlyCloseRW']
        end
      end

      # CloseCDBProxy返回参数结构体
      class CloseCDBProxyResponse < TencentCloud::Common::AbstractModel
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

      # CloseCdbProxyAddress请求参数结构体
      class CloseCdbProxyAddressRequest < TencentCloud::Common::AbstractModel
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param ProxyAddressId: 代理组地址ID
        # @type ProxyAddressId: String

        attr_accessor :ProxyGroupId, :ProxyAddressId

        def initialize(proxygroupid=nil, proxyaddressid=nil)
          @ProxyGroupId = proxygroupid
          @ProxyAddressId = proxyaddressid
        end

        def deserialize(params)
          @ProxyGroupId = params['ProxyGroupId']
          @ProxyAddressId = params['ProxyAddressId']
        end
      end

      # CloseCdbProxyAddress返回参数结构体
      class CloseCdbProxyAddressResponse < TencentCloud::Common::AbstractModel
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

      # CloseSSL请求参数结构体
      class CloseSSLRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。只读组 ID为空时必填。
        # @type InstanceId: String
        # @param RoGroupId: 只读组 ID。实例 ID为空时必填。
        # @type RoGroupId: String

        attr_accessor :InstanceId, :RoGroupId

        def initialize(instanceid=nil, rogroupid=nil)
          @InstanceId = instanceid
          @RoGroupId = rogroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RoGroupId = params['RoGroupId']
        end
      end

      # CloseSSL返回参数结构体
      class CloseSSLResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步请求 ID。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CloseWanService请求参数结构体
      class CloseWanServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CloseWanService返回参数结构体
      class CloseWanServiceResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # 集群版实例节点信息
      class ClusterNodeInfo < TencentCloud::Common::AbstractModel
        # @param NodeId: 节点id。
        # @type NodeId: String
        # @param Role: 节点的角色。
        # @type Role: String
        # @param Zone: 节点所在可用区。
        # @type Zone: String
        # @param Weight: 节点的权重
        # @type Weight: Integer
        # @param Status: 节点状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :NodeId, :Role, :Zone, :Weight, :Status

        def initialize(nodeid=nil, role=nil, zone=nil, weight=nil, status=nil)
          @NodeId = nodeid
          @Role = role
          @Zone = zone
          @Weight = weight
          @Status = status
        end

        def deserialize(params)
          @NodeId = params['NodeId']
          @Role = params['Role']
          @Zone = params['Zone']
          @Weight = params['Weight']
          @Status = params['Status']
        end
      end

      # 集群版的节点拓扑配置。
      class ClusterTopology < TencentCloud::Common::AbstractModel
        # @param ReadWriteNode: RW 节点拓扑。
        # @type ReadWriteNode: :class:`Tencentcloud::Cdb.v20170320.models.ReadWriteNode`
        # @param ReadOnlyNodes: RO 节点拓扑。
        # @type ReadOnlyNodes: Array

        attr_accessor :ReadWriteNode, :ReadOnlyNodes

        def initialize(readwritenode=nil, readonlynodes=nil)
          @ReadWriteNode = readwritenode
          @ReadOnlyNodes = readonlynodes
        end

        def deserialize(params)
          unless params['ReadWriteNode'].nil?
            @ReadWriteNode = ReadWriteNode.new
            @ReadWriteNode.deserialize(params['ReadWriteNode'])
          end
          unless params['ReadOnlyNodes'].nil?
            @ReadOnlyNodes = []
            params['ReadOnlyNodes'].each do |i|
              readonlynode_tmp = ReadonlyNode.new
              readonlynode_tmp.deserialize(i)
              @ReadOnlyNodes << readonlynode_tmp
            end
          end
        end
      end

      # 列权限信息
      class ColumnPrivilege < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名
        # @type Database: String
        # @param Table: 数据库表名
        # @type Table: String
        # @param Column: 数据库列名
        # @type Column: String
        # @param Privileges: 权限信息
        # @type Privileges: Array

        attr_accessor :Database, :Table, :Column, :Privileges

        def initialize(database=nil, table=nil, column=nil, privileges=nil)
          @Database = database
          @Table = table
          @Column = column
          @Privileges = privileges
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Column = params['Column']
          @Privileges = params['Privileges']
        end
      end

      # 通用时间窗
      class CommonTimeWindow < TencentCloud::Common::AbstractModel
        # @param Monday: 周一的时间窗，格式如： 02:00-06:00
        # @type Monday: String
        # @param Tuesday: 周二的时间窗，格式如： 02:00-06:00
        # @type Tuesday: String
        # @param Wednesday: 周三的时间窗，格式如： 02:00-06:00
        # @type Wednesday: String
        # @param Thursday: 周四的时间窗，格式如： 02:00-06:00
        # @type Thursday: String
        # @param Friday: 周五的时间窗，格式如： 02:00-06:00
        # @type Friday: String
        # @param Saturday: 周六的时间窗，格式如： 02:00-06:00
        # @type Saturday: String
        # @param Sunday: 周日的时间窗，格式如： 02:00-06:00
        # @type Sunday: String
        # @param BackupPeriodStrategy: 常规备份保留策略，weekly-按周备份，monthly-按月备份，默认为weekly
        # @type BackupPeriodStrategy: String
        # @param Days: 如果设置为按月备份，需填入每月具体备份日期，相邻备份天数不得超过两天。例[1,4,7,9,11,14,17,19,22,25,28,30,31]
        # @type Days: Array
        # @param BackupPeriodTime: 月度备份时间窗，BackupPeriodStrategy为monthly时必填。格式如： 02:00-06:00
        # @type BackupPeriodTime: String

        attr_accessor :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday, :Sunday, :BackupPeriodStrategy, :Days, :BackupPeriodTime

        def initialize(monday=nil, tuesday=nil, wednesday=nil, thursday=nil, friday=nil, saturday=nil, sunday=nil, backupperiodstrategy=nil, days=nil, backupperiodtime=nil)
          @Monday = monday
          @Tuesday = tuesday
          @Wednesday = wednesday
          @Thursday = thursday
          @Friday = friday
          @Saturday = saturday
          @Sunday = sunday
          @BackupPeriodStrategy = backupperiodstrategy
          @Days = days
          @BackupPeriodTime = backupperiodtime
        end

        def deserialize(params)
          @Monday = params['Monday']
          @Tuesday = params['Tuesday']
          @Wednesday = params['Wednesday']
          @Thursday = params['Thursday']
          @Friday = params['Friday']
          @Saturday = params['Saturday']
          @Sunday = params['Sunday']
          @BackupPeriodStrategy = params['BackupPeriodStrategy']
          @Days = params['Days']
          @BackupPeriodTime = params['BackupPeriodTime']
        end
      end

      # CreateAccounts请求参数结构体
      class CreateAccountsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Accounts: 云数据库账号。
        # @type Accounts: Array
        # @param Password: 新账户的密码。
        # @type Password: String
        # @param Description: 备注信息。
        # @type Description: String
        # @param MaxUserConnections: 新账户最大可用连接数，默认值为10240，最大可设置值为10240。
        # @type MaxUserConnections: Integer

        attr_accessor :InstanceId, :Accounts, :Password, :Description, :MaxUserConnections

        def initialize(instanceid=nil, accounts=nil, password=nil, description=nil, maxuserconnections=nil)
          @InstanceId = instanceid
          @Accounts = accounts
          @Password = password
          @Description = description
          @MaxUserConnections = maxuserconnections
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
          @Password = params['Password']
          @Description = params['Description']
          @MaxUserConnections = params['MaxUserConnections']
        end
      end

      # CreateAccounts返回参数结构体
      class CreateAccountsResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAuditLogFile请求参数结构体
      class CreateAuditLogFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param Order: 排序方式。支持值包括："ASC" - 升序，"DESC" - 降序。
        # @type Order: String
        # @param OrderBy: 排序字段。支持值包括：
        # "timestamp" - 时间戳；
        # "affectRows" - 影响行数；
        # "execTime" - 执行时间。
        # @type OrderBy: String
        # @param Filter: 已废弃。
        # @type Filter: :class:`Tencentcloud::Cdb.v20170320.models.AuditLogFilter`
        # @param LogFilter: 过滤条件。可按设置的过滤条件过滤日志。
        # @type LogFilter: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :Order, :OrderBy, :Filter, :LogFilter

        def initialize(instanceid=nil, starttime=nil, endtime=nil, order=nil, orderby=nil, filter=nil, logfilter=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @OrderBy = orderby
          @Filter = filter
          @LogFilter = logfilter
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Order = params['Order']
          @OrderBy = params['OrderBy']
          unless params['Filter'].nil?
            @Filter = AuditLogFilter.new
            @Filter.deserialize(params['Filter'])
          end
          unless params['LogFilter'].nil?
            @LogFilter = []
            params['LogFilter'].each do |i|
              instanceauditlogfilters_tmp = InstanceAuditLogFilters.new
              instanceauditlogfilters_tmp.deserialize(i)
              @LogFilter << instanceauditlogfilters_tmp
            end
          end
        end
      end

      # CreateAuditLogFile返回参数结构体
      class CreateAuditLogFileResponse < TencentCloud::Common::AbstractModel
        # @param FileName: 审计日志文件名称。
        # @type FileName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileName, :RequestId

        def initialize(filename=nil, requestid=nil)
          @FileName = filename
          @RequestId = requestid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @RequestId = params['RequestId']
        end
      end

      # CreateAuditPolicy请求参数结构体
      class CreateAuditPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Name: 审计策略名称。
        # @type Name: String
        # @param RuleId: 审计规则 ID。
        # @type RuleId: String
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param LogExpireDay: 审计日志保存时长。支持值包括：
        # 7 - 一周
        # 30 - 一个月；
        # 180 - 六个月；
        # 365 - 一年；
        # 1095 - 三年；
        # 1825 - 五年；
        # 实例首次开通审计策略时，可传该值，用于设置存储日志保存天数，默认为 30 天。若实例已存在审计策略，则此参数无效，可使用 更改审计服务配置 接口修改日志存储时长。
        # @type LogExpireDay: Integer

        attr_accessor :Name, :RuleId, :InstanceId, :LogExpireDay

        def initialize(name=nil, ruleid=nil, instanceid=nil, logexpireday=nil)
          @Name = name
          @RuleId = ruleid
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
        end

        def deserialize(params)
          @Name = params['Name']
          @RuleId = params['RuleId']
          @InstanceId = params['InstanceId']
          @LogExpireDay = params['LogExpireDay']
        end
      end

      # CreateAuditPolicy返回参数结构体
      class CreateAuditPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 审计策略 ID。
        # @type PolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :RequestId

        def initialize(policyid=nil, requestid=nil)
          @PolicyId = policyid
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAuditRule请求参数结构体
      class CreateAuditRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleName: 审计规则名称。
        # @type RuleName: String
        # @param Description: 审计规则描述。
        # @type Description: String
        # @param RuleFilters: 审计规则过滤条件。若设置了过滤条件，则不会开启全审计。
        # @type RuleFilters: Array
        # @param AuditAll: 是否开启全审计。支持值包括：false – 不开启全审计，true – 开启全审计。用户未设置审计规则过滤条件时，默认开启全审计。
        # @type AuditAll: Boolean

        attr_accessor :RuleName, :Description, :RuleFilters, :AuditAll

        def initialize(rulename=nil, description=nil, rulefilters=nil, auditall=nil)
          @RuleName = rulename
          @Description = description
          @RuleFilters = rulefilters
          @AuditAll = auditall
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Description = params['Description']
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              auditfilter_tmp = AuditFilter.new
              auditfilter_tmp.deserialize(i)
              @RuleFilters << auditfilter_tmp
            end
          end
          @AuditAll = params['AuditAll']
        end
      end

      # CreateAuditRule返回参数结构体
      class CreateAuditRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 审计规则 ID。
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId

        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAuditRuleTemplate请求参数结构体
      class CreateAuditRuleTemplateRequest < TencentCloud::Common::AbstractModel
        # @param RuleFilters: 审计规则
        # @type RuleFilters: Array
        # @param RuleTemplateName: 规则模板名称
        # @type RuleTemplateName: String
        # @param Description: 规则模板描述
        # @type Description: String
        # @param AlarmLevel: 告警等级。1-低风险，2-中风险，3-高风险
        # @type AlarmLevel: Integer
        # @param AlarmPolicy: 告警策略。0-不告警，1-告警
        # @type AlarmPolicy: Integer

        attr_accessor :RuleFilters, :RuleTemplateName, :Description, :AlarmLevel, :AlarmPolicy

        def initialize(rulefilters=nil, ruletemplatename=nil, description=nil, alarmlevel=nil, alarmpolicy=nil)
          @RuleFilters = rulefilters
          @RuleTemplateName = ruletemplatename
          @Description = description
          @AlarmLevel = alarmlevel
          @AlarmPolicy = alarmpolicy
        end

        def deserialize(params)
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              rulefilters_tmp = RuleFilters.new
              rulefilters_tmp.deserialize(i)
              @RuleFilters << rulefilters_tmp
            end
          end
          @RuleTemplateName = params['RuleTemplateName']
          @Description = params['Description']
          @AlarmLevel = params['AlarmLevel']
          @AlarmPolicy = params['AlarmPolicy']
        end
      end

      # CreateAuditRuleTemplate返回参数结构体
      class CreateAuditRuleTemplateResponse < TencentCloud::Common::AbstractModel
        # @param RuleTemplateId: 生成的规则模板ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleTemplateId, :RequestId

        def initialize(ruletemplateid=nil, requestid=nil)
          @RuleTemplateId = ruletemplateid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleTemplateId = params['RuleTemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBackup请求参数结构体
      class CreateBackupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param BackupMethod: 目标备份方法，可选的值：logical - 逻辑冷备，physical - 物理冷备，snapshot - 快照备份。基础版实例仅支持快照备份。
        # @type BackupMethod: String
        # @param BackupDBTableList: 需要备份的库表信息，如果不设置该参数，则默认整实例备份。在 BackupMethod=logical 逻辑备份中才可设置该参数。指定的库表必须存在，否则可能导致备份失败。
        # 例：如果需要备份 db1 库的 tb1、tb2 表 和 db2 库。则该参数设置为 [{"Db": "db1", "Table": "tb1"}, {"Db": "db1", "Table": "tb2"}, {"Db": "db2"} ]。
        # @type BackupDBTableList: Array
        # @param ManualBackupName: 手动备份别名
        # @type ManualBackupName: String

        attr_accessor :InstanceId, :BackupMethod, :BackupDBTableList, :ManualBackupName

        def initialize(instanceid=nil, backupmethod=nil, backupdbtablelist=nil, manualbackupname=nil)
          @InstanceId = instanceid
          @BackupMethod = backupmethod
          @BackupDBTableList = backupdbtablelist
          @ManualBackupName = manualbackupname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMethod = params['BackupMethod']
          unless params['BackupDBTableList'].nil?
            @BackupDBTableList = []
            params['BackupDBTableList'].each do |i|
              backupitem_tmp = BackupItem.new
              backupitem_tmp.deserialize(i)
              @BackupDBTableList << backupitem_tmp
            end
          end
          @ManualBackupName = params['ManualBackupName']
        end
      end

      # CreateBackup返回参数结构体
      class CreateBackupResponse < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份任务 ID。
        # @type BackupId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupId, :RequestId

        def initialize(backupid=nil, requestid=nil)
          @BackupId = backupid
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCdbProxyAddress请求参数结构体
      class CreateCdbProxyAddressRequest < TencentCloud::Common::AbstractModel
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param WeightMode: 权重分配模式，
        # 系统自动分配："system"， 自定义："custom"
        # @type WeightMode: String
        # @param IsKickOut: 是否开启延迟剔除，取值："true" | "false"
        # @type IsKickOut: Boolean
        # @param MinCount: 最小保留数量，最小取值：0
        # @type MinCount: Integer
        # @param MaxDelay: 延迟剔除阈值，最小取值：0
        # @type MaxDelay: Integer
        # @param FailOver: 是否开启故障转移，取值："true" | "false"
        # @type FailOver: Boolean
        # @param AutoAddRo: 是否自动添加RO，取值："true" | "false"
        # @type AutoAddRo: Boolean
        # @param ReadOnly: 是否是只读，取值："true" | "false"
        # @type ReadOnly: Boolean
        # @param TransSplit: 是否开启事务分离，取值："true" | "false"
        # @type TransSplit: Boolean
        # @param ProxyAllocation: 读写权重分配
        # @type ProxyAllocation: Array
        # @param UniqVpcId: 私有网络ID
        # @type UniqVpcId: String
        # @param UniqSubnetId: 私有子网ID
        # @type UniqSubnetId: String
        # @param ConnectionPool: 是否开启连接池
        # 注意：如需使用数据库代理连接池能力，MySQL 8.0 主实例的内核小版本要大于等于 MySQL 8.0 20230630。
        # @type ConnectionPool: Boolean
        # @param Desc: 描述
        # @type Desc: String
        # @param Vip: IP地址
        # @type Vip: String
        # @param VPort: 端口
        # @type VPort: Integer
        # @param SecurityGroup: 安全组
        # @type SecurityGroup: Array
        # @param ConnectionPoolType: 连接池类型。可选值 transaction（事务级别连接池），connection（会话级别连接池），ConnectionPool为true时生效。
        # @type ConnectionPoolType: String
        # @param AutoLoadBalance: 是否自适应负载均衡
        # @type AutoLoadBalance: Boolean
        # @param AccessMode: 接入模式
        # @type AccessMode: String

        attr_accessor :ProxyGroupId, :WeightMode, :IsKickOut, :MinCount, :MaxDelay, :FailOver, :AutoAddRo, :ReadOnly, :TransSplit, :ProxyAllocation, :UniqVpcId, :UniqSubnetId, :ConnectionPool, :Desc, :Vip, :VPort, :SecurityGroup, :ConnectionPoolType, :AutoLoadBalance, :AccessMode

        def initialize(proxygroupid=nil, weightmode=nil, iskickout=nil, mincount=nil, maxdelay=nil, failover=nil, autoaddro=nil, readonly=nil, transsplit=nil, proxyallocation=nil, uniqvpcid=nil, uniqsubnetid=nil, connectionpool=nil, desc=nil, vip=nil, vport=nil, securitygroup=nil, connectionpooltype=nil, autoloadbalance=nil, accessmode=nil)
          @ProxyGroupId = proxygroupid
          @WeightMode = weightmode
          @IsKickOut = iskickout
          @MinCount = mincount
          @MaxDelay = maxdelay
          @FailOver = failover
          @AutoAddRo = autoaddro
          @ReadOnly = readonly
          @TransSplit = transsplit
          @ProxyAllocation = proxyallocation
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @ConnectionPool = connectionpool
          @Desc = desc
          @Vip = vip
          @VPort = vport
          @SecurityGroup = securitygroup
          @ConnectionPoolType = connectionpooltype
          @AutoLoadBalance = autoloadbalance
          @AccessMode = accessmode
        end

        def deserialize(params)
          @ProxyGroupId = params['ProxyGroupId']
          @WeightMode = params['WeightMode']
          @IsKickOut = params['IsKickOut']
          @MinCount = params['MinCount']
          @MaxDelay = params['MaxDelay']
          @FailOver = params['FailOver']
          @AutoAddRo = params['AutoAddRo']
          @ReadOnly = params['ReadOnly']
          @TransSplit = params['TransSplit']
          unless params['ProxyAllocation'].nil?
            @ProxyAllocation = []
            params['ProxyAllocation'].each do |i|
              proxyallocation_tmp = ProxyAllocation.new
              proxyallocation_tmp.deserialize(i)
              @ProxyAllocation << proxyallocation_tmp
            end
          end
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @ConnectionPool = params['ConnectionPool']
          @Desc = params['Desc']
          @Vip = params['Vip']
          @VPort = params['VPort']
          @SecurityGroup = params['SecurityGroup']
          @ConnectionPoolType = params['ConnectionPoolType']
          @AutoLoadBalance = params['AutoLoadBalance']
          @AccessMode = params['AccessMode']
        end
      end

      # CreateCdbProxyAddress返回参数结构体
      class CreateCdbProxyAddressResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCdbProxy请求参数结构体
      class CreateCdbProxyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param UniqVpcId: 私有网络ID
        # @type UniqVpcId: String
        # @param UniqSubnetId: 私有子网ID
        # @type UniqSubnetId: String
        # @param ProxyNodeCustom: 节点规格配置
        # 备注：数据库代理支持的节点规格为：2C4000MB、4C8000MB、8C16000MB。
        # 示例中参数说明：
        # NodeCount：节点个数。
        # Region：节点地域。
        # Zone：节点可用区。
        # Cpu：单个代理节点核数（单位：核）。
        # Mem：单个代理节点内存数（单位：MB）。
        # @type ProxyNodeCustom: Array
        # @param SecurityGroup: 安全组
        # @type SecurityGroup: Array
        # @param Desc: 描述
        # @type Desc: String
        # @param ConnectionPoolLimit: 连接池阈值
        # 注意：如需使用数据库代理连接池能力，MySQL 8.0 主实例的内核小版本要大于等于 MySQL 8.0 20230630。
        # @type ConnectionPoolLimit: Integer
        # @param ProxyVersion: 指定要购买的 proxy 内核版本。不填则默认发货最新版本的 proxy。
        # @type ProxyVersion: String

        attr_accessor :InstanceId, :UniqVpcId, :UniqSubnetId, :ProxyNodeCustom, :SecurityGroup, :Desc, :ConnectionPoolLimit, :ProxyVersion

        def initialize(instanceid=nil, uniqvpcid=nil, uniqsubnetid=nil, proxynodecustom=nil, securitygroup=nil, desc=nil, connectionpoollimit=nil, proxyversion=nil)
          @InstanceId = instanceid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @ProxyNodeCustom = proxynodecustom
          @SecurityGroup = securitygroup
          @Desc = desc
          @ConnectionPoolLimit = connectionpoollimit
          @ProxyVersion = proxyversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          unless params['ProxyNodeCustom'].nil?
            @ProxyNodeCustom = []
            params['ProxyNodeCustom'].each do |i|
              proxynodecustom_tmp = ProxyNodeCustom.new
              proxynodecustom_tmp.deserialize(i)
              @ProxyNodeCustom << proxynodecustom_tmp
            end
          end
          @SecurityGroup = params['SecurityGroup']
          @Desc = params['Desc']
          @ConnectionPoolLimit = params['ConnectionPoolLimit']
          @ProxyVersion = params['ProxyVersion']
        end
      end

      # CreateCdbProxy返回参数结构体
      class CreateCdbProxyResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloneInstance请求参数结构体
      class CreateCloneInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 克隆源实例Id。
        # @type InstanceId: String
        # @param SpecifiedRollbackTime: 如果需要克隆实例回档到指定时间，则指定该值。时间格式为： yyyy-mm-dd hh:mm:ss 。
        # @type SpecifiedRollbackTime: String
        # @param SpecifiedBackupId: 如果需要克隆实例回档到指定备份的时间点，则指定该值为物理备份的Id。请使用 [查询数据备份文件列表](/document/api/236/15842) 。
        # @type SpecifiedBackupId: Integer
        # @param UniqVpcId: 私有网络 ID，如果不传则默认选择基础网络，请使用 [查询私有网络列表](/document/api/215/15778) 。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 私有网络下的子网 ID，如果设置了 UniqVpcId，则 UniqSubnetId 必填，请使用 [查询子网列表](/document/api/215/15784)。
        # @type UniqSubnetId: String
        # @param Memory: 实例内存大小，单位：MB，需要不低于克隆源实例，默认和源实例相同。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB，需要不低于克隆源实例，默认和源实例相同。
        # @type Volume: Integer
        # @param InstanceName: 新产生的克隆实例名称。
        # @type InstanceName: String
        # @param SecurityGroup: 安全组参数，可使用 [查询项目安全组信息](https://cloud.tencent.com/document/api/236/15850) 接口查询某个项目的安全组详情。
        # @type SecurityGroup: Array
        # @param ResourceTags: 实例标签信息。
        # @type ResourceTags: Array
        # @param Cpu: 实例Cpu核数，需要不低于克隆源实例，默认和源实例相同。
        # @type Cpu: Integer
        # @param ProtectMode: 数据复制方式，默认为 0，支持值包括：0 - 表示异步复制，1 - 表示半同步复制，2 - 表示强同步复制。
        # @type ProtectMode: Integer
        # @param DeployMode: 多可用区域，默认为 0，支持值包括：0 - 表示单可用区，1 - 表示多可用区。
        # @type DeployMode: Integer
        # @param SlaveZone: 新产生的克隆实例备库 1 的可用区信息，默认同源实例 Zone 的值。
        # @type SlaveZone: String
        # @param BackupZone: 备库 2 的可用区信息，默认为空，克隆强同步主实例时可指定该参数。
        # @type BackupZone: String
        # @param DeviceType: 克隆实例类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例。 不指定则默认为通用型。
        # @type DeviceType: String
        # @param InstanceNodes: 新克隆实例节点数。如果需要克隆出三节点实例， 请将该值设置为3 或指定 BackupZone 参数。如果需要克隆出两节点实例，请将该值设置为2。默认克隆出两节点实例。
        # @type InstanceNodes: Integer
        # @param DeployGroupId: 置放群组 ID。
        # @type DeployGroupId: String
        # @param DryRun: 是否只预检此次请求。true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制等。如果检查不通过，则返回对应错误码；如果检查通过，则返回RequestId.默认为false：发送正常请求，通过检查后直接创建实例。
        # @type DryRun: Boolean
        # @param CageId: 金融围拢 ID 。
        # @type CageId: String
        # @param ProjectId: 项目ID，默认项目ID0
        # @type ProjectId: Integer
        # @param PayType: 付费类型，PRE_PAID：包年包月，USED_PAID：按量计费。默认为按量计费
        # @type PayType: String
        # @param Period: 实例时长，PayType为PRE_PAID时必传，单位：月，可选值包括 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]。
        # @type Period: Integer

        attr_accessor :InstanceId, :SpecifiedRollbackTime, :SpecifiedBackupId, :UniqVpcId, :UniqSubnetId, :Memory, :Volume, :InstanceName, :SecurityGroup, :ResourceTags, :Cpu, :ProtectMode, :DeployMode, :SlaveZone, :BackupZone, :DeviceType, :InstanceNodes, :DeployGroupId, :DryRun, :CageId, :ProjectId, :PayType, :Period

        def initialize(instanceid=nil, specifiedrollbacktime=nil, specifiedbackupid=nil, uniqvpcid=nil, uniqsubnetid=nil, memory=nil, volume=nil, instancename=nil, securitygroup=nil, resourcetags=nil, cpu=nil, protectmode=nil, deploymode=nil, slavezone=nil, backupzone=nil, devicetype=nil, instancenodes=nil, deploygroupid=nil, dryrun=nil, cageid=nil, projectid=nil, paytype=nil, period=nil)
          @InstanceId = instanceid
          @SpecifiedRollbackTime = specifiedrollbacktime
          @SpecifiedBackupId = specifiedbackupid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @Memory = memory
          @Volume = volume
          @InstanceName = instancename
          @SecurityGroup = securitygroup
          @ResourceTags = resourcetags
          @Cpu = cpu
          @ProtectMode = protectmode
          @DeployMode = deploymode
          @SlaveZone = slavezone
          @BackupZone = backupzone
          @DeviceType = devicetype
          @InstanceNodes = instancenodes
          @DeployGroupId = deploygroupid
          @DryRun = dryrun
          @CageId = cageid
          @ProjectId = projectid
          @PayType = paytype
          @Period = period
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SpecifiedRollbackTime = params['SpecifiedRollbackTime']
          @SpecifiedBackupId = params['SpecifiedBackupId']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @InstanceName = params['InstanceName']
          @SecurityGroup = params['SecurityGroup']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @ResourceTags << taginfo_tmp
            end
          end
          @Cpu = params['Cpu']
          @ProtectMode = params['ProtectMode']
          @DeployMode = params['DeployMode']
          @SlaveZone = params['SlaveZone']
          @BackupZone = params['BackupZone']
          @DeviceType = params['DeviceType']
          @InstanceNodes = params['InstanceNodes']
          @DeployGroupId = params['DeployGroupId']
          @DryRun = params['DryRun']
          @CageId = params['CageId']
          @ProjectId = params['ProjectId']
          @PayType = params['PayType']
          @Period = params['Period']
        end
      end

      # CreateCloneInstance返回参数结构体
      class CreateCloneInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBImportJob请求参数结构体
      class CreateDBImportJobRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例的 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param User: 云数据库的用户名。
        # @type User: String
        # @param FileName: 文件名称。该文件是指用户已上传到腾讯云的文件，仅支持.sql文件。
        # @type FileName: String
        # @param Password: 云数据库实例 User 账号的密码。
        # @type Password: String
        # @param DbName: 导入的目标数据库名，不传表示不指定数据库。
        # @type DbName: String
        # @param CosUrl: 腾讯云COS文件链接。 用户需要指定 FileName 或者 CosUrl 其中一个。 COS文件需要是 .sql 文件。
        # @type CosUrl: String

        attr_accessor :InstanceId, :User, :FileName, :Password, :DbName, :CosUrl

        def initialize(instanceid=nil, user=nil, filename=nil, password=nil, dbname=nil, cosurl=nil)
          @InstanceId = instanceid
          @User = user
          @FileName = filename
          @Password = password
          @DbName = dbname
          @CosUrl = cosurl
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @FileName = params['FileName']
          @Password = params['Password']
          @DbName = params['DbName']
          @CosUrl = params['CosUrl']
        end
      end

      # CreateDBImportJob返回参数结构体
      class CreateDBImportJobResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstanceHour请求参数结构体
      class CreateDBInstanceHourRequest < TencentCloud::Common::AbstractModel
        # @param GoodsNum: 实例数量，默认值为 1，最小值 1，最大值为 100。
        # @type GoodsNum: Integer
        # @param Memory: 实例内存大小，单位：MB，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的内存规格。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的硬盘范围。
        # @type Volume: Integer
        # @param EngineVersion: MySQL 版本，值包括：5.5、5.6、5.7、8.0，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的实例版本。
        # 说明：若此参数不填，则默认值为5.6。
        # @type EngineVersion: String
        # @param UniqVpcId: 私有网络 ID，如果不传则默认选择基础网络，请使用 [查询私有网络列表](/document/api/215/15778) 。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 私有网络下的子网 ID，如果设置了 UniqVpcId，则 UniqSubnetId 必填，请使用[查询子网列表](/document/api/215/15784)。
        # @type UniqSubnetId: String
        # @param ProjectId: 项目 ID，不填为默认项目。
        # @type ProjectId: Integer
        # @param Zone: 可用区信息，该参数缺省时，系统会自动选择一个可用区，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的可用区。
        # @type Zone: String
        # @param MasterInstanceId: 实例 ID，购买只读实例或者灾备实例时必填，该字段表示只读实例或者灾备实例的主实例 ID，请使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询云数据库实例 ID。
        # @type MasterInstanceId: String
        # @param InstanceRole: 实例类型，默认为 master，支持值包括：master - 表示主实例，dr - 表示灾备实例，ro - 表示只读实例。
        # @type InstanceRole: String
        # @param MasterRegion: 主实例地域信息，购买灾备、RO实例时，该字段必填。
        # @type MasterRegion: String
        # @param Port: 自定义端口，端口支持范围：[ 1024-65535 ] 。
        # @type Port: Integer
        # @param Password: 设置 root 账号密码，密码规则：8 - 64 个字符，至少包含字母、数字、字符（支持的字符：_+-&=!@#$%^*()）中的两种，购买主实例时可指定该参数，购买只读实例或者灾备实例时指定该参数无意义。
        # @type Password: String
        # @param ParamList: 参数列表，参数格式如 ParamList.0.Name=auto_increment&ParamList.0.Value=1。可通过 [查询默认的可设置参数列表](https://cloud.tencent.com/document/api/236/32662) 查询支持设置的参数。
        # @type ParamList: Array
        # @param ProtectMode: 数据复制方式，默认为 0，支持值包括：0 - 表示异步复制，1 - 表示半同步复制，2 - 表示强同步复制，购买主实例时可指定该参数，购买只读实例或者灾备实例时指定该参数无意义。
        # @type ProtectMode: Integer
        # @param DeployMode: 多可用区域，默认为 0，支持值包括：0 - 表示单可用区，1 - 表示多可用区，购买主实例时可指定该参数，购买只读实例或者灾备实例时指定该参数无意义。
        # @type DeployMode: Integer
        # @param SlaveZone: 备库 1 的可用区信息，默认为 Zone 的值，购买主实例时可指定该参数，购买只读实例或者灾备实例时指定该参数无意义。
        # @type SlaveZone: String
        # @param BackupZone: 备库 2 的可用区信息，默认为空，购买三节点主实例时可指定该参数。
        # @type BackupZone: String
        # @param SecurityGroup: 安全组参数，可使用 [查询项目安全组信息](https://cloud.tencent.com/document/api/236/15850) 接口查询某个项目的安全组详情。
        # @type SecurityGroup: Array
        # @param RoGroup: 只读实例信息。购买只读实例时，该参数必传。
        # @type RoGroup: :class:`Tencentcloud::Cdb.v20170320.models.RoGroup`
        # @param AutoRenewFlag: 购买按量计费实例该字段无意义。
        # @type AutoRenewFlag: Integer
        # @param InstanceName: 实例名称。一次购买多个实例命名会用后缀数字区分，例instanceName=db，goodsNum=3，实例命名分别为db1，db2，db3。
        # @type InstanceName: String
        # @param ResourceTags: 实例标签信息。
        # @type ResourceTags: Array
        # @param DeployGroupId: 置放群组 ID。
        # @type DeployGroupId: String
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间在48小时内唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param DeviceType: 实例隔离类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例， "BASIC_V2" - ONTKE单节点实例。 不指定则默认为通用型实例。
        # @type DeviceType: String
        # @param ParamTemplateId: 参数模板 id。
        # 备注：如您使用自定义参数模板 id，可传入自定义参数模板 id；如您计划使用默认参数模板，该参数模板 id 传入 id 无效，需设置 ParamTemplateType。
        # @type ParamTemplateId: Integer
        # @param AlarmPolicyList: 告警策略id数组。腾讯云可观测平台DescribeAlarmPolicy接口返回的OriginId。
        # @type AlarmPolicyList: Array
        # @param InstanceNodes: 实例节点数。对于 RO 和 基础版实例， 该值默认为1。 如果需要购买三节点实例， 请将该值设置为3 或指定 BackupZone 参数。当购买主实例，且未指定该参数和 BackupZone 参数时，该值默认是 2， 即购买两节点实例。
        # @type InstanceNodes: Integer
        # @param Cpu: 实例cpu核数， 如果不传将根据memory指定的内存值自动填充对应的cpu值。
        # @type Cpu: Integer
        # @param AutoSyncFlag: 是否自动发起灾备同步功能。该参数仅对购买灾备实例生效。 可选值为：0 - 不自动发起灾备同步；1 - 自动发起灾备同步。该值默认为0。
        # @type AutoSyncFlag: Integer
        # @param CageId: 金融围拢 ID 。
        # @type CageId: String
        # @param ParamTemplateType: 默认参数模板类型。支持值包括："HIGH_STABILITY" - 高稳定模板，"HIGH_PERFORMANCE" - 高性能模板，默认值是："HIGH_STABILITY"。
        # 备注：如您需使用云数据库 MySQL 默认参数模板，请设置 ParamTemplateType。
        # @type ParamTemplateType: String
        # @param AlarmPolicyIdList: 告警策略名数组，例如:["policy-uyoee9wg"]，AlarmPolicyList不为空时该参数无效。
        # @type AlarmPolicyIdList: Array
        # @param DryRun: 是否只预检此次请求。true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制等。如果检查不通过，则返回对应错误码；如果检查通过，则返回RequestId.默认为false：发送正常请求，通过检查后直接创建实例。
        # @type DryRun: Boolean
        # @param EngineType: 实例引擎类型，默认为"InnoDB"，支持值包括："InnoDB"，"RocksDB"。
        # @type EngineType: String
        # @param Vips: 指定实例的IP列表。仅支持主实例指定，按实例顺序，不足则按未指定处理。
        # @type Vips: Array

        attr_accessor :GoodsNum, :Memory, :Volume, :EngineVersion, :UniqVpcId, :UniqSubnetId, :ProjectId, :Zone, :MasterInstanceId, :InstanceRole, :MasterRegion, :Port, :Password, :ParamList, :ProtectMode, :DeployMode, :SlaveZone, :BackupZone, :SecurityGroup, :RoGroup, :AutoRenewFlag, :InstanceName, :ResourceTags, :DeployGroupId, :ClientToken, :DeviceType, :ParamTemplateId, :AlarmPolicyList, :InstanceNodes, :Cpu, :AutoSyncFlag, :CageId, :ParamTemplateType, :AlarmPolicyIdList, :DryRun, :EngineType, :Vips

        def initialize(goodsnum=nil, memory=nil, volume=nil, engineversion=nil, uniqvpcid=nil, uniqsubnetid=nil, projectid=nil, zone=nil, masterinstanceid=nil, instancerole=nil, masterregion=nil, port=nil, password=nil, paramlist=nil, protectmode=nil, deploymode=nil, slavezone=nil, backupzone=nil, securitygroup=nil, rogroup=nil, autorenewflag=nil, instancename=nil, resourcetags=nil, deploygroupid=nil, clienttoken=nil, devicetype=nil, paramtemplateid=nil, alarmpolicylist=nil, instancenodes=nil, cpu=nil, autosyncflag=nil, cageid=nil, paramtemplatetype=nil, alarmpolicyidlist=nil, dryrun=nil, enginetype=nil, vips=nil)
          @GoodsNum = goodsnum
          @Memory = memory
          @Volume = volume
          @EngineVersion = engineversion
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @ProjectId = projectid
          @Zone = zone
          @MasterInstanceId = masterinstanceid
          @InstanceRole = instancerole
          @MasterRegion = masterregion
          @Port = port
          @Password = password
          @ParamList = paramlist
          @ProtectMode = protectmode
          @DeployMode = deploymode
          @SlaveZone = slavezone
          @BackupZone = backupzone
          @SecurityGroup = securitygroup
          @RoGroup = rogroup
          @AutoRenewFlag = autorenewflag
          @InstanceName = instancename
          @ResourceTags = resourcetags
          @DeployGroupId = deploygroupid
          @ClientToken = clienttoken
          @DeviceType = devicetype
          @ParamTemplateId = paramtemplateid
          @AlarmPolicyList = alarmpolicylist
          @InstanceNodes = instancenodes
          @Cpu = cpu
          @AutoSyncFlag = autosyncflag
          @CageId = cageid
          @ParamTemplateType = paramtemplatetype
          @AlarmPolicyIdList = alarmpolicyidlist
          @DryRun = dryrun
          @EngineType = enginetype
          @Vips = vips
        end

        def deserialize(params)
          @GoodsNum = params['GoodsNum']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @EngineVersion = params['EngineVersion']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @ProjectId = params['ProjectId']
          @Zone = params['Zone']
          @MasterInstanceId = params['MasterInstanceId']
          @InstanceRole = params['InstanceRole']
          @MasterRegion = params['MasterRegion']
          @Port = params['Port']
          @Password = params['Password']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          @ProtectMode = params['ProtectMode']
          @DeployMode = params['DeployMode']
          @SlaveZone = params['SlaveZone']
          @BackupZone = params['BackupZone']
          @SecurityGroup = params['SecurityGroup']
          unless params['RoGroup'].nil?
            @RoGroup = RoGroup.new
            @RoGroup.deserialize(params['RoGroup'])
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @InstanceName = params['InstanceName']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @ResourceTags << taginfo_tmp
            end
          end
          @DeployGroupId = params['DeployGroupId']
          @ClientToken = params['ClientToken']
          @DeviceType = params['DeviceType']
          @ParamTemplateId = params['ParamTemplateId']
          @AlarmPolicyList = params['AlarmPolicyList']
          @InstanceNodes = params['InstanceNodes']
          @Cpu = params['Cpu']
          @AutoSyncFlag = params['AutoSyncFlag']
          @CageId = params['CageId']
          @ParamTemplateType = params['ParamTemplateType']
          @AlarmPolicyIdList = params['AlarmPolicyIdList']
          @DryRun = params['DryRun']
          @EngineType = params['EngineType']
          @Vips = params['Vips']
        end
      end

      # CreateDBInstanceHour返回参数结构体
      class CreateDBInstanceHourResponse < TencentCloud::Common::AbstractModel
        # @param DealIds: 短订单 ID。
        # @type DealIds: Array
        # @param InstanceIds: 实例 ID 列表。
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealIds, :InstanceIds, :RequestId

        def initialize(dealids=nil, instanceids=nil, requestid=nil)
          @DealIds = dealids
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @DealIds = params['DealIds']
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstance请求参数结构体
      class CreateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param Memory: 实例内存大小，单位：MB，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的内存规格。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的硬盘范围。
        # @type Volume: Integer
        # @param Period: 实例时长，单位：月，可选值包括 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]。
        # @type Period: Integer
        # @param GoodsNum: 实例数量，默认值为1, 最小值1，最大值为100。
        # @type GoodsNum: Integer
        # @param Zone: 可用区信息，该参数缺省时，系统会自动选择一个可用区，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的可用区。
        # @type Zone: String
        # @param UniqVpcId: 私有网络 ID，如果不传则默认选择基础网络，请使用 [查询私有网络列表](/document/api/215/15778) 。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 私有网络下的子网 ID，如果设置了 UniqVpcId，则 UniqSubnetId 必填，请使用 [查询子网列表](/document/api/215/15784)。
        # @type UniqSubnetId: String
        # @param ProjectId: 项目 ID，不填为默认项目。购买只读实例和灾备实例时，项目 ID 默认和主实例保持一致。
        # @type ProjectId: Integer
        # @param Port: 自定义端口，端口支持范围：[ 1024-65535 ]。
        # @type Port: Integer
        # @param InstanceRole: 实例类型，默认为 master，支持值包括：master - 表示主实例，dr - 表示灾备实例，ro - 表示只读实例。
        # @type InstanceRole: String
        # @param MasterInstanceId: 实例 ID，购买只读实例时必填，该字段表示只读实例的主实例ID，请使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口查询云数据库实例 ID。
        # @type MasterInstanceId: String
        # @param EngineVersion: MySQL 版本，值包括：5.5、5.6、5.7和8.0，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/api/236/17229) 接口获取可创建的实例版本。
        # 说明：若此参数不填，则默认值为5.6。
        # @type EngineVersion: String
        # @param Password: 设置 root 账号密码，密码规则：8 - 64 个字符，至少包含字母、数字、字符（支持的字符：_+-&=!@#$%^*()）中的两种，购买主实例时可指定该参数，购买只读实例或者灾备实例时指定该参数无意义。
        # @type Password: String
        # @param ProtectMode: 数据复制方式，默认为 0，支持值包括：0 - 表示异步复制，1 - 表示半同步复制，2 - 表示强同步复制。
        # @type ProtectMode: Integer
        # @param DeployMode: 多可用区域，默认为 0，支持值包括：0 - 表示单可用区，1 - 表示多可用区。
        # @type DeployMode: Integer
        # @param SlaveZone: 备库 1 的可用区信息，默认为 Zone 的值。
        # @type SlaveZone: String
        # @param ParamList: 参数列表，参数格式如 ParamList.0.Name=auto_increment&ParamList.0.Value=1。可通过 [查询默认的可设置参数列表](https://cloud.tencent.com/document/api/236/32662) 查询支持设置的参数。
        # @type ParamList: Array
        # @param BackupZone: 备库 2 的可用区信息，默认为空，购买三节点主实例时可指定该参数。
        # @type BackupZone: String
        # @param AutoRenewFlag: 自动续费标记，可选值为：0 - 不自动续费；1 - 自动续费。
        # @type AutoRenewFlag: Integer
        # @param MasterRegion: 主实例地域信息，购买灾备、RO实例时，该字段必填。
        # @type MasterRegion: String
        # @param SecurityGroup: 安全组参数，可使用 [查询项目安全组信息](https://cloud.tencent.com/document/api/236/15850) 接口查询某个项目的安全组详情。
        # @type SecurityGroup: Array
        # @param RoGroup: 只读实例参数。购买只读实例时，该参数必传。
        # @type RoGroup: :class:`Tencentcloud::Cdb.v20170320.models.RoGroup`
        # @param InstanceName: 实例名称。一次购买多个实例命名会用后缀数字区分，例instnaceName=db，goodsNum=3，实例命名分别为db1，db2，db3。
        # @type InstanceName: String
        # @param ResourceTags: 实例标签信息。
        # @type ResourceTags: Array
        # @param DeployGroupId: 置放群组 ID。
        # @type DeployGroupId: String
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间在48小时内唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param DeviceType: 实例隔离类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例， "BASIC_V2" - ONTKE单节点实例。 不指定则默认为通用型实例。
        # @type DeviceType: String
        # @param ParamTemplateId: 参数模板 id。
        # 备注：如您使用自定义参数模板 id，可传入自定义参数模板 id；如您计划使用默认参数模板，该参数模板 id 传入 id 无效，需设置 ParamTemplateType。
        # @type ParamTemplateId: Integer
        # @param AlarmPolicyList: 告警策略id数组。腾讯云可观测平台DescribeAlarmPolicy接口返回的OriginId。
        # @type AlarmPolicyList: Array
        # @param InstanceNodes: 实例节点数。对于 RO 和 基础版实例， 该值默认为1。 如果需要购买三节点实例， 请将该值设置为3 或指定 BackupZone 参数。当购买主实例，且未指定该参数和 BackupZone 参数时，该值默认是 2， 即购买两节点实例。
        # @type InstanceNodes: Integer
        # @param Cpu: 实例cpu核数， 如果不传将根据memory指定的内存值自动填充对应的cpu值。
        # @type Cpu: Integer
        # @param AutoSyncFlag: 是否自动发起灾备同步功能。该参数仅对购买灾备实例生效。 可选值为：0 - 不自动发起灾备同步；1 - 自动发起灾备同步。该值默认为0。
        # @type AutoSyncFlag: Integer
        # @param CageId: 金融围拢 ID。
        # @type CageId: String
        # @param ParamTemplateType: 默认参数模板类型。支持值包括："HIGH_STABILITY" - 高稳定模板，"HIGH_PERFORMANCE" - 高性能模板。
        # 备注：如您需使用云数据库 MySQL 默认参数模板，请设置 ParamTemplateType。
        # @type ParamTemplateType: String
        # @param AlarmPolicyIdList: 告警策略名数组，例如:["policy-uyoee9wg"]，AlarmPolicyList不为空时该参数无效。
        # @type AlarmPolicyIdList: Array
        # @param DryRun: 是否只预检此次请求。true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制等。如果检查不通过，则返回对应错误码；如果检查通过，则返回RequestId.默认为false：发送正常请求，通过检查后直接创建实例。
        # @type DryRun: Boolean
        # @param EngineType: 实例引擎类型，默认为"InnoDB"，支持值包括："InnoDB"，"RocksDB"。
        # @type EngineType: String
        # @param Vips: 指定实例的IP列表。仅支持主实例指定，按实例顺序，不足则按未指定处理。
        # @type Vips: Array

        attr_accessor :Memory, :Volume, :Period, :GoodsNum, :Zone, :UniqVpcId, :UniqSubnetId, :ProjectId, :Port, :InstanceRole, :MasterInstanceId, :EngineVersion, :Password, :ProtectMode, :DeployMode, :SlaveZone, :ParamList, :BackupZone, :AutoRenewFlag, :MasterRegion, :SecurityGroup, :RoGroup, :InstanceName, :ResourceTags, :DeployGroupId, :ClientToken, :DeviceType, :ParamTemplateId, :AlarmPolicyList, :InstanceNodes, :Cpu, :AutoSyncFlag, :CageId, :ParamTemplateType, :AlarmPolicyIdList, :DryRun, :EngineType, :Vips

        def initialize(memory=nil, volume=nil, period=nil, goodsnum=nil, zone=nil, uniqvpcid=nil, uniqsubnetid=nil, projectid=nil, port=nil, instancerole=nil, masterinstanceid=nil, engineversion=nil, password=nil, protectmode=nil, deploymode=nil, slavezone=nil, paramlist=nil, backupzone=nil, autorenewflag=nil, masterregion=nil, securitygroup=nil, rogroup=nil, instancename=nil, resourcetags=nil, deploygroupid=nil, clienttoken=nil, devicetype=nil, paramtemplateid=nil, alarmpolicylist=nil, instancenodes=nil, cpu=nil, autosyncflag=nil, cageid=nil, paramtemplatetype=nil, alarmpolicyidlist=nil, dryrun=nil, enginetype=nil, vips=nil)
          @Memory = memory
          @Volume = volume
          @Period = period
          @GoodsNum = goodsnum
          @Zone = zone
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @ProjectId = projectid
          @Port = port
          @InstanceRole = instancerole
          @MasterInstanceId = masterinstanceid
          @EngineVersion = engineversion
          @Password = password
          @ProtectMode = protectmode
          @DeployMode = deploymode
          @SlaveZone = slavezone
          @ParamList = paramlist
          @BackupZone = backupzone
          @AutoRenewFlag = autorenewflag
          @MasterRegion = masterregion
          @SecurityGroup = securitygroup
          @RoGroup = rogroup
          @InstanceName = instancename
          @ResourceTags = resourcetags
          @DeployGroupId = deploygroupid
          @ClientToken = clienttoken
          @DeviceType = devicetype
          @ParamTemplateId = paramtemplateid
          @AlarmPolicyList = alarmpolicylist
          @InstanceNodes = instancenodes
          @Cpu = cpu
          @AutoSyncFlag = autosyncflag
          @CageId = cageid
          @ParamTemplateType = paramtemplatetype
          @AlarmPolicyIdList = alarmpolicyidlist
          @DryRun = dryrun
          @EngineType = enginetype
          @Vips = vips
        end

        def deserialize(params)
          @Memory = params['Memory']
          @Volume = params['Volume']
          @Period = params['Period']
          @GoodsNum = params['GoodsNum']
          @Zone = params['Zone']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @ProjectId = params['ProjectId']
          @Port = params['Port']
          @InstanceRole = params['InstanceRole']
          @MasterInstanceId = params['MasterInstanceId']
          @EngineVersion = params['EngineVersion']
          @Password = params['Password']
          @ProtectMode = params['ProtectMode']
          @DeployMode = params['DeployMode']
          @SlaveZone = params['SlaveZone']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @ParamList << paraminfo_tmp
            end
          end
          @BackupZone = params['BackupZone']
          @AutoRenewFlag = params['AutoRenewFlag']
          @MasterRegion = params['MasterRegion']
          @SecurityGroup = params['SecurityGroup']
          unless params['RoGroup'].nil?
            @RoGroup = RoGroup.new
            @RoGroup.deserialize(params['RoGroup'])
          end
          @InstanceName = params['InstanceName']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @ResourceTags << taginfo_tmp
            end
          end
          @DeployGroupId = params['DeployGroupId']
          @ClientToken = params['ClientToken']
          @DeviceType = params['DeviceType']
          @ParamTemplateId = params['ParamTemplateId']
          @AlarmPolicyList = params['AlarmPolicyList']
          @InstanceNodes = params['InstanceNodes']
          @Cpu = params['Cpu']
          @AutoSyncFlag = params['AutoSyncFlag']
          @CageId = params['CageId']
          @ParamTemplateType = params['ParamTemplateType']
          @AlarmPolicyIdList = params['AlarmPolicyIdList']
          @DryRun = params['DryRun']
          @EngineType = params['EngineType']
          @Vips = params['Vips']
        end
      end

      # CreateDBInstance返回参数结构体
      class CreateDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealIds: 计费子订单 ID。
        # @type DealIds: Array
        # @param InstanceIds: 实例 ID 列表。
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealIds, :InstanceIds, :RequestId

        def initialize(dealids=nil, instanceids=nil, requestid=nil)
          @DealIds = dealids
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @DealIds = params['DealIds']
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateDatabase请求参数结构体
      class CreateDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param DBName: 数据库名称，长度不超过64。
        # @type DBName: String
        # @param CharacterSetName: 字符集，可选值：utf8，gbk，latin1，utf8mb4。
        # @type CharacterSetName: String

        attr_accessor :InstanceId, :DBName, :CharacterSetName

        def initialize(instanceid=nil, dbname=nil, charactersetname=nil)
          @InstanceId = instanceid
          @DBName = dbname
          @CharacterSetName = charactersetname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DBName = params['DBName']
          @CharacterSetName = params['CharacterSetName']
        end
      end

      # CreateDatabase返回参数结构体
      class CreateDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # CreateDeployGroup请求参数结构体
      class CreateDeployGroupRequest < TencentCloud::Common::AbstractModel
        # @param DeployGroupName: 置放群组名称，最长不能超过60个字符。
        # @type DeployGroupName: String
        # @param Description: 置放群组描述，最长不能超过200个字符。
        # @type Description: String
        # @param Affinity: 置放群组的亲和性策略，目前仅支持取值为1，策略1表示同台物理机上限制实例的个数。
        # @type Affinity: Array
        # @param LimitNum: 置放群组亲和性策略1中同台物理机上实例的限制个数。
        # @type LimitNum: Integer
        # @param DevClass: 置放群组机型属性，可选参数：SH12+SH02、TS85。
        # @type DevClass: Array

        attr_accessor :DeployGroupName, :Description, :Affinity, :LimitNum, :DevClass

        def initialize(deploygroupname=nil, description=nil, affinity=nil, limitnum=nil, devclass=nil)
          @DeployGroupName = deploygroupname
          @Description = description
          @Affinity = affinity
          @LimitNum = limitnum
          @DevClass = devclass
        end

        def deserialize(params)
          @DeployGroupName = params['DeployGroupName']
          @Description = params['Description']
          @Affinity = params['Affinity']
          @LimitNum = params['LimitNum']
          @DevClass = params['DevClass']
        end
      end

      # CreateDeployGroup返回参数结构体
      class CreateDeployGroupResponse < TencentCloud::Common::AbstractModel
        # @param DeployGroupId: 置放群组ID。
        # @type DeployGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeployGroupId, :RequestId

        def initialize(deploygroupid=nil, requestid=nil)
          @DeployGroupId = deploygroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeployGroupId = params['DeployGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateParamTemplate请求参数结构体
      class CreateParamTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 参数模板名称。
        # @type Name: String
        # @param Description: 参数模板描述。
        # @type Description: String
        # @param EngineVersion: MySQL 版本号。
        # @type EngineVersion: String
        # @param TemplateId: 源参数模板 ID。
        # @type TemplateId: Integer
        # @param ParamList: 参数列表。
        # @type ParamList: Array
        # @param TemplateType: 默认参数模板类型。支持值包括："HIGH_STABILITY" - 高稳定模板，"HIGH_PERFORMANCE" - 高性能模板。
        # @type TemplateType: String
        # @param EngineType: 实例引擎类型，默认为"InnoDB"，支持值包括："InnoDB"，"RocksDB"。
        # @type EngineType: String

        attr_accessor :Name, :Description, :EngineVersion, :TemplateId, :ParamList, :TemplateType, :EngineType

        def initialize(name=nil, description=nil, engineversion=nil, templateid=nil, paramlist=nil, templatetype=nil, enginetype=nil)
          @Name = name
          @Description = description
          @EngineVersion = engineversion
          @TemplateId = templateid
          @ParamList = paramlist
          @TemplateType = templatetype
          @EngineType = enginetype
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @EngineVersion = params['EngineVersion']
          @TemplateId = params['TemplateId']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              parameter_tmp = Parameter.new
              parameter_tmp.deserialize(i)
              @ParamList << parameter_tmp
            end
          end
          @TemplateType = params['TemplateType']
          @EngineType = params['EngineType']
        end
      end

      # CreateParamTemplate返回参数结构体
      class CreateParamTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板 ID。
        # @type TemplateId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId

        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRoInstanceIp请求参数结构体
      class CreateRoInstanceIpRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 只读实例ID，格式如：cdbro-3i70uj0k，与云数据库控制台页面中显示的只读实例ID相同。
        # @type InstanceId: String
        # @param UniqSubnetId: 子网描述符，例如：subnet-1typ0s7d。
        # @type UniqSubnetId: String
        # @param UniqVpcId: vpc描述符，例如：vpc-a23yt67j,如果传了该字段则UniqSubnetId必传
        # @type UniqVpcId: String

        attr_accessor :InstanceId, :UniqSubnetId, :UniqVpcId

        def initialize(instanceid=nil, uniqsubnetid=nil, uniqvpcid=nil)
          @InstanceId = instanceid
          @UniqSubnetId = uniqsubnetid
          @UniqVpcId = uniqvpcid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UniqSubnetId = params['UniqSubnetId']
          @UniqVpcId = params['UniqVpcId']
        end
      end

      # CreateRoInstanceIp返回参数结构体
      class CreateRoInstanceIpResponse < TencentCloud::Common::AbstractModel
        # @param RoVpcId: 只读实例的私有网络的ID。
        # @type RoVpcId: Integer
        # @param RoSubnetId: 只读实例的子网ID。
        # @type RoSubnetId: Integer
        # @param RoVip: 只读实例的内网IP地址。
        # @type RoVip: String
        # @param RoVport: 只读实例的内网端口号。
        # @type RoVport: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoVpcId, :RoSubnetId, :RoVip, :RoVport, :RequestId

        def initialize(rovpcid=nil, rosubnetid=nil, rovip=nil, rovport=nil, requestid=nil)
          @RoVpcId = rovpcid
          @RoSubnetId = rosubnetid
          @RoVip = rovip
          @RoVport = rovport
          @RequestId = requestid
        end

        def deserialize(params)
          @RoVpcId = params['RoVpcId']
          @RoSubnetId = params['RoSubnetId']
          @RoVip = params['RoVip']
          @RoVport = params['RoVport']
          @RequestId = params['RequestId']
        end
      end

      # CreateRotationPassword请求参数结构体
      class CreateRotationPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Accounts: 当前需开启密码轮转的账号信息，包含账户名与主机名
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts

        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
        end
      end

      # CreateRotationPassword返回参数结构体
      class CreateRotationPasswordResponse < TencentCloud::Common::AbstractModel
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

      # proxy配置
      class CustomConfig < TencentCloud::Common::AbstractModel
        # @param Device: 设备
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Device: String
        # @param Type: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param DeviceType: 设备类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceType: String
        # @param Memory: 内存
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Memory: Integer
        # @param Cpu: 核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer

        attr_accessor :Device, :Type, :DeviceType, :Memory, :Cpu

        def initialize(device=nil, type=nil, devicetype=nil, memory=nil, cpu=nil)
          @Device = device
          @Type = type
          @DeviceType = devicetype
          @Memory = memory
          @Cpu = cpu
        end

        def deserialize(params)
          @Device = params['Device']
          @Type = params['Type']
          @DeviceType = params['DeviceType']
          @Memory = params['Memory']
          @Cpu = params['Cpu']
        end
      end

      # 云数据库切换记录
      class DBSwitchInfo < TencentCloud::Common::AbstractModel
        # @param SwitchTime: 切换时间，格式为：2017-09-03 01:34:31
        # @type SwitchTime: String
        # @param SwitchType: 切换类型，可能的返回值为：TRANSFER - 数据迁移；MASTER2SLAVE - 主备切换；RECOVERY - 主从恢复
        # @type SwitchType: String

        attr_accessor :SwitchTime, :SwitchType

        def initialize(switchtime=nil, switchtype=nil)
          @SwitchTime = switchtime
          @SwitchType = switchtype
        end

        def deserialize(params)
          @SwitchTime = params['SwitchTime']
          @SwitchType = params['SwitchType']
        end
      end

      # 数据库权限
      class DatabasePrivilege < TencentCloud::Common::AbstractModel
        # @param Privileges: 权限信息
        # @type Privileges: Array
        # @param Database: 数据库名
        # @type Database: String

        attr_accessor :Privileges, :Database

        def initialize(privileges=nil, database=nil)
          @Privileges = privileges
          @Database = database
        end

        def deserialize(params)
          @Privileges = params['Privileges']
          @Database = params['Database']
        end
      end

      # 数据库名以及字符集
      class DatabasesWithCharacterLists < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 数据库名
        # @type DatabaseName: String
        # @param CharacterSet: 字符集类型
        # @type CharacterSet: String

        attr_accessor :DatabaseName, :CharacterSet

        def initialize(databasename=nil, characterset=nil)
          @DatabaseName = databasename
          @CharacterSet = characterset
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @CharacterSet = params['CharacterSet']
        end
      end

      # DeleteAccounts请求参数结构体
      class DeleteAccountsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Accounts: 云数据库账号。
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts

        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
        end
      end

      # DeleteAccounts返回参数结构体
      class DeleteAccountsResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAuditLogFile请求参数结构体
      class DeleteAuditLogFileRequest < TencentCloud::Common::AbstractModel
        # @param FileName: 审计日志文件名称。
        # @type FileName: String
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String

        attr_accessor :FileName, :InstanceId

        def initialize(filename=nil, instanceid=nil)
          @FileName = filename
          @InstanceId = instanceid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteAuditLogFile返回参数结构体
      class DeleteAuditLogFileResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAuditPolicy请求参数结构体
      class DeleteAuditPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 审计策略 ID。
        # @type PolicyId: String
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String

        attr_accessor :PolicyId, :InstanceId

        def initialize(policyid=nil, instanceid=nil)
          @PolicyId = policyid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteAuditPolicy返回参数结构体
      class DeleteAuditPolicyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAuditRule请求参数结构体
      class DeleteAuditRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 审计规则 ID。
        # @type RuleId: String

        attr_accessor :RuleId

        def initialize(ruleid=nil)
          @RuleId = ruleid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
        end
      end

      # DeleteAuditRule返回参数结构体
      class DeleteAuditRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAuditRuleTemplates请求参数结构体
      class DeleteAuditRuleTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param RuleTemplateIds: 审计规则模板ID。
        # @type RuleTemplateIds: Array

        attr_accessor :RuleTemplateIds

        def initialize(ruletemplateids=nil)
          @RuleTemplateIds = ruletemplateids
        end

        def deserialize(params)
          @RuleTemplateIds = params['RuleTemplateIds']
        end
      end

      # DeleteAuditRuleTemplates返回参数结构体
      class DeleteAuditRuleTemplatesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBackup请求参数结构体
      class DeleteBackupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param BackupId: 备份任务 ID。该任务 ID 为 [创建云数据库备份](https://cloud.tencent.com/document/api/236/15844) 接口返回的任务 ID。
        # @type BackupId: Integer

        attr_accessor :InstanceId, :BackupId

        def initialize(instanceid=nil, backupid=nil)
          @InstanceId = instanceid
          @BackupId = backupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupId = params['BackupId']
        end
      end

      # DeleteBackup返回参数结构体
      class DeleteBackupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDatabase请求参数结构体
      class DeleteDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param DBName: 数据库名称，长度不超过64。
        # @type DBName: String

        attr_accessor :InstanceId, :DBName

        def initialize(instanceid=nil, dbname=nil)
          @InstanceId = instanceid
          @DBName = dbname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DBName = params['DBName']
        end
      end

      # DeleteDatabase返回参数结构体
      class DeleteDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDeployGroups请求参数结构体
      class DeleteDeployGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DeployGroupIds: 要删除的置放群组 ID 列表。
        # @type DeployGroupIds: Array

        attr_accessor :DeployGroupIds

        def initialize(deploygroupids=nil)
          @DeployGroupIds = deploygroupids
        end

        def deserialize(params)
          @DeployGroupIds = params['DeployGroupIds']
        end
      end

      # DeleteDeployGroups返回参数结构体
      class DeleteDeployGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteParamTemplate请求参数结构体
      class DeleteParamTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID。
        # @type TemplateId: Integer

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteParamTemplate返回参数结构体
      class DeleteParamTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRotationPassword请求参数结构体
      class DeleteRotationPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同
        # @type InstanceId: String
        # @param User: 关闭密码轮转的实例账户名,例如root
        # @type User: String
        # @param Host: 关闭密码轮转的实例账户域名，例如%
        # @type Host: String
        # @param Password: 关闭密码轮转后实例账户的最新密码
        # @type Password: String

        attr_accessor :InstanceId, :User, :Host, :Password

        def initialize(instanceid=nil, user=nil, host=nil, password=nil)
          @InstanceId = instanceid
          @User = user
          @Host = host
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Host = params['Host']
          @Password = params['Password']
        end
      end

      # DeleteRotationPassword返回参数结构体
      class DeleteRotationPasswordResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTimeWindow请求参数结构体
      class DeleteTimeWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteTimeWindow返回参数结构体
      class DeleteTimeWindowResponse < TencentCloud::Common::AbstractModel
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

      # 置放群组信息
      class DeployGroupInfo < TencentCloud::Common::AbstractModel
        # @param DeployGroupId: 置放群组 ID。
        # @type DeployGroupId: String
        # @param DeployGroupName: 置放群组名称。
        # @type DeployGroupName: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param Quota: 置放群组实例配额，表示一个置放群组中可容纳的最大实例数目。
        # @type Quota: Integer
        # @param Affinity: 置放群组亲和性策略，目前仅支持策略1，即在物理机纬度打散实例的分布。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Affinity: String
        # @param LimitNum: 置放群组亲和性策略1中，同台物理机上同个置放群组实例的限制个数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LimitNum: Integer
        # @param Description: 置放群组详细信息。
        # @type Description: String
        # @param DevClass: 置放群组物理机型属性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DevClass: String

        attr_accessor :DeployGroupId, :DeployGroupName, :CreateTime, :Quota, :Affinity, :LimitNum, :Description, :DevClass

        def initialize(deploygroupid=nil, deploygroupname=nil, createtime=nil, quota=nil, affinity=nil, limitnum=nil, description=nil, devclass=nil)
          @DeployGroupId = deploygroupid
          @DeployGroupName = deploygroupname
          @CreateTime = createtime
          @Quota = quota
          @Affinity = affinity
          @LimitNum = limitnum
          @Description = description
          @DevClass = devclass
        end

        def deserialize(params)
          @DeployGroupId = params['DeployGroupId']
          @DeployGroupName = params['DeployGroupName']
          @CreateTime = params['CreateTime']
          @Quota = params['Quota']
          @Affinity = params['Affinity']
          @LimitNum = params['LimitNum']
          @Description = params['Description']
          @DevClass = params['DevClass']
        end
      end

      # DescribeAccountPrivileges请求参数结构体
      class DescribeAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param User: 数据库的账号名称。
        # @type User: String
        # @param Host: 数据库的账号域名。
        # @type Host: String

        attr_accessor :InstanceId, :User, :Host

        def initialize(instanceid=nil, user=nil, host=nil)
          @InstanceId = instanceid
          @User = user
          @Host = host
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Host = params['Host']
        end
      end

      # DescribeAccountPrivileges返回参数结构体
      class DescribeAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param GlobalPrivileges: 全局权限数组。
        # @type GlobalPrivileges: Array
        # @param DatabasePrivileges: 数据库权限数组。
        # @type DatabasePrivileges: Array
        # @param TablePrivileges: 数据库中的表权限数组。
        # @type TablePrivileges: Array
        # @param ColumnPrivileges: 数据库表中的列权限数组。
        # @type ColumnPrivileges: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GlobalPrivileges, :DatabasePrivileges, :TablePrivileges, :ColumnPrivileges, :RequestId

        def initialize(globalprivileges=nil, databaseprivileges=nil, tableprivileges=nil, columnprivileges=nil, requestid=nil)
          @GlobalPrivileges = globalprivileges
          @DatabasePrivileges = databaseprivileges
          @TablePrivileges = tableprivileges
          @ColumnPrivileges = columnprivileges
          @RequestId = requestid
        end

        def deserialize(params)
          @GlobalPrivileges = params['GlobalPrivileges']
          unless params['DatabasePrivileges'].nil?
            @DatabasePrivileges = []
            params['DatabasePrivileges'].each do |i|
              databaseprivilege_tmp = DatabasePrivilege.new
              databaseprivilege_tmp.deserialize(i)
              @DatabasePrivileges << databaseprivilege_tmp
            end
          end
          unless params['TablePrivileges'].nil?
            @TablePrivileges = []
            params['TablePrivileges'].each do |i|
              tableprivilege_tmp = TablePrivilege.new
              tableprivilege_tmp.deserialize(i)
              @TablePrivileges << tableprivilege_tmp
            end
          end
          unless params['ColumnPrivileges'].nil?
            @ColumnPrivileges = []
            params['ColumnPrivileges'].each do |i|
              columnprivilege_tmp = ColumnPrivilege.new
              columnprivilege_tmp.deserialize(i)
              @ColumnPrivileges << columnprivilege_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Offset: 记录偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 单次请求返回的数量，默认值为20，最小值为1，最大值为100。
        # @type Limit: Integer
        # @param AccountRegexp: 匹配账号名的正则表达式，规则同 MySQL 官网。
        # @type AccountRegexp: String

        attr_accessor :InstanceId, :Offset, :Limit, :AccountRegexp

        def initialize(instanceid=nil, offset=nil, limit=nil, accountregexp=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @AccountRegexp = accountregexp
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AccountRegexp = params['AccountRegexp']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的账号数量。
        # @type TotalCount: Integer
        # @param Items: 符合查询条件的账号详细信息。
        # @type Items: Array
        # @param MaxUserConnections: 用户可设置实例最大连接数。
        # @type MaxUserConnections: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :MaxUserConnections, :RequestId

        def initialize(totalcount=nil, items=nil, maxuserconnections=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @MaxUserConnections = maxuserconnections
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              accountinfo_tmp = AccountInfo.new
              accountinfo_tmp.deserialize(i)
              @Items << accountinfo_tmp
            end
          end
          @MaxUserConnections = params['MaxUserConnections']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAsyncRequestInfo请求参数结构体
      class DescribeAsyncRequestInfoRequest < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID。
        # @type AsyncRequestId: String

        attr_accessor :AsyncRequestId

        def initialize(asyncrequestid=nil)
          @AsyncRequestId = asyncrequestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
        end
      end

      # DescribeAsyncRequestInfo返回参数结构体
      class DescribeAsyncRequestInfoResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务执行结果。可能的取值：INITIAL - 初始化，RUNNING - 运行中，SUCCESS - 执行成功，FAILED - 执行失败，KILLED - 已终止，REMOVED - 已删除，PAUSED - 终止中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Info: 任务执行信息描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Info, :RequestId

        def initialize(status=nil, info=nil, requestid=nil)
          @Status = status
          @Info = info
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Info = params['Info']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditConfig请求参数结构体
      class DescribeAuditConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAuditConfig返回参数结构体
      class DescribeAuditConfigResponse < TencentCloud::Common::AbstractModel
        # @param LogExpireDay: 审计日志保存时长。目前支持的值包括：[0，7，30，180，365，1095，1825]。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogExpireDay: Integer
        # @param LogType: 审计日志存储类型。目前支持的值包括："storage" - 存储型。
        # @type LogType: String
        # @param IsClosing: 是否正在关闭审计。目前支持的值包括："false"-否，"true"-是
        # @type IsClosing: String
        # @param CreateTime: 审计服务开通时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogExpireDay, :LogType, :IsClosing, :CreateTime, :RequestId

        def initialize(logexpireday=nil, logtype=nil, isclosing=nil, createtime=nil, requestid=nil)
          @LogExpireDay = logexpireday
          @LogType = logtype
          @IsClosing = isclosing
          @CreateTime = createtime
          @RequestId = requestid
        end

        def deserialize(params)
          @LogExpireDay = params['LogExpireDay']
          @LogType = params['LogType']
          @IsClosing = params['IsClosing']
          @CreateTime = params['CreateTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditInstanceList请求参数结构体
      class DescribeAuditInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param AuditSwitch: 实例审计开启的状态。1-已开启审计；0-未开启审计。
        # @type AuditSwitch: Integer
        # @param Filters: 查询实例列表的过滤条件。
        # @type Filters: Array
        # @param AuditMode: 实例的审计规则模式。1-规则审计；0-全审计。
        # @type AuditMode: Integer
        # @param Limit: 单次请求返回的数量。默认值为30，最大值为 20000。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为 0。
        # @type Offset: Integer

        attr_accessor :AuditSwitch, :Filters, :AuditMode, :Limit, :Offset

        def initialize(auditswitch=nil, filters=nil, auditmode=nil, limit=nil, offset=nil)
          @AuditSwitch = auditswitch
          @Filters = filters
          @AuditMode = auditmode
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @AuditSwitch = params['AuditSwitch']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              auditinstancefilters_tmp = AuditInstanceFilters.new
              auditinstancefilters_tmp.deserialize(i)
              @Filters << auditinstancefilters_tmp
            end
          end
          @AuditMode = params['AuditMode']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAuditInstanceList返回参数结构体
      class DescribeAuditInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param Items: 审计实例详细信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              instancedbauditstatus_tmp = InstanceDbAuditStatus.new
              instancedbauditstatus_tmp.deserialize(i)
              @Items << instancedbauditstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditLogFiles请求参数结构体
      class DescribeAuditLogFilesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Limit: 分页大小参数。默认值为 20，最小值为 1，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param FileName: 审计日志文件名。
        # @type FileName: String

        attr_accessor :InstanceId, :Limit, :Offset, :FileName

        def initialize(instanceid=nil, limit=nil, offset=nil, filename=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @FileName = filename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @FileName = params['FileName']
        end
      end

      # DescribeAuditLogFiles返回参数结构体
      class DescribeAuditLogFilesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的审计日志文件个数。
        # @type TotalCount: Integer
        # @param Items: 审计日志文件详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              auditlogfile_tmp = AuditLogFile.new
              auditlogfile_tmp.deserialize(i)
              @Items << auditlogfile_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditLogs请求参数结构体
      class DescribeAuditLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param Limit: 分页参数，单次返回的数据条数。默认值为100，最大值为100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param Order: 排序方式。支持值包括："ASC" - 升序，"DESC" - 降序。
        # @type Order: String
        # @param OrderBy: 排序字段。支持值包括：
        # "timestamp" - 时间戳；
        # "affectRows" - 影响行数；
        # "execTime" - 执行时间。
        # @type OrderBy: String
        # @param LogFilter: 过滤条件。多个值之前是且的关系。
        # @type LogFilter: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset, :Order, :OrderBy, :LogFilter

        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, order=nil, orderby=nil, logfilter=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Order = order
          @OrderBy = orderby
          @LogFilter = logfilter
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @OrderBy = params['OrderBy']
          unless params['LogFilter'].nil?
            @LogFilter = []
            params['LogFilter'].each do |i|
              instanceauditlogfilters_tmp = InstanceAuditLogFilters.new
              instanceauditlogfilters_tmp.deserialize(i)
              @LogFilter << instanceauditlogfilters_tmp
            end
          end
        end
      end

      # DescribeAuditLogs返回参数结构体
      class DescribeAuditLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的审计日志条数。
        # @type TotalCount: Integer
        # @param Items: 审计日志详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              auditlog_tmp = AuditLog.new
              auditlog_tmp.deserialize(i)
              @Items << auditlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditPolicies请求参数结构体
      class DescribeAuditPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param PolicyId: 审计策略 ID。
        # @type PolicyId: String
        # @param PolicyName: 审计策略名称。支持按审计策略名称进行模糊匹配查询。
        # @type PolicyName: String
        # @param Limit: 分页大小参数。默认值为 20，最小值为 1，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param RuleId: 审计规则 ID。可使用该审计规则 ID 查询到其关联的审计策略。
        # 注意，参数 RuleId，InstanceId，PolicyId，PolicyName 必须至少传一个。
        # @type RuleId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String

        attr_accessor :InstanceId, :PolicyId, :PolicyName, :Limit, :Offset, :RuleId, :InstanceName

        def initialize(instanceid=nil, policyid=nil, policyname=nil, limit=nil, offset=nil, ruleid=nil, instancename=nil)
          @InstanceId = instanceid
          @PolicyId = policyid
          @PolicyName = policyname
          @Limit = limit
          @Offset = offset
          @RuleId = ruleid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PolicyId = params['PolicyId']
          @PolicyName = params['PolicyName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @RuleId = params['RuleId']
          @InstanceName = params['InstanceName']
        end
      end

      # DescribeAuditPolicies返回参数结构体
      class DescribeAuditPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的审计策略个数。
        # @type TotalCount: Integer
        # @param Items: 审计策略详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              auditpolicy_tmp = AuditPolicy.new
              auditpolicy_tmp.deserialize(i)
              @Items << auditpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditRuleTemplateModifyHistory请求参数结构体
      class DescribeAuditRuleTemplateModifyHistoryRequest < TencentCloud::Common::AbstractModel
        # @param RuleTemplateIds: 模板ID
        # @type RuleTemplateIds: Array
        # @param StartTime: 查询范围的开始时间。
        # @type StartTime: String
        # @param EndTime: 查询范围的结束时间。
        # @type EndTime: String
        # @param Limit: 返回条数。
        # @type Limit: Integer
        # @param Offset: 偏移量。
        # @type Offset: Integer
        # @param Order: 排序方式。DESC-按修改时间倒排，ASC-正序。
        # @type Order: String

        attr_accessor :RuleTemplateIds, :StartTime, :EndTime, :Limit, :Offset, :Order

        def initialize(ruletemplateids=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, order=nil)
          @RuleTemplateIds = ruletemplateids
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Order = order
        end

        def deserialize(params)
          @RuleTemplateIds = params['RuleTemplateIds']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
        end
      end

      # DescribeAuditRuleTemplateModifyHistory返回参数结构体
      class DescribeAuditRuleTemplateModifyHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总的条数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Items: 变更详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              ruletemplaterecordinfo_tmp = RuleTemplateRecordInfo.new
              ruletemplaterecordinfo_tmp.deserialize(i)
              @Items << ruletemplaterecordinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditRuleTemplates请求参数结构体
      class DescribeAuditRuleTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param RuleTemplateIds: 规则模板ID。
        # @type RuleTemplateIds: Array
        # @param RuleTemplateNames: 规则模板名称。
        # @type RuleTemplateNames: Array
        # @param Limit: 单次请求返回的数量。默认值20。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为 0。
        # @type Offset: Integer
        # @param AlarmLevel: 告警等级。1-低风险，2-中风险，3-高风险。
        # @type AlarmLevel: Integer
        # @param AlarmPolicy: 告警策略。0-不告警，1-告警。
        # @type AlarmPolicy: Integer

        attr_accessor :RuleTemplateIds, :RuleTemplateNames, :Limit, :Offset, :AlarmLevel, :AlarmPolicy

        def initialize(ruletemplateids=nil, ruletemplatenames=nil, limit=nil, offset=nil, alarmlevel=nil, alarmpolicy=nil)
          @RuleTemplateIds = ruletemplateids
          @RuleTemplateNames = ruletemplatenames
          @Limit = limit
          @Offset = offset
          @AlarmLevel = alarmlevel
          @AlarmPolicy = alarmpolicy
        end

        def deserialize(params)
          @RuleTemplateIds = params['RuleTemplateIds']
          @RuleTemplateNames = params['RuleTemplateNames']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AlarmLevel = params['AlarmLevel']
          @AlarmPolicy = params['AlarmPolicy']
        end
      end

      # DescribeAuditRuleTemplates返回参数结构体
      class DescribeAuditRuleTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param Items: 规则模板详细信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              auditruletemplateinfo_tmp = AuditRuleTemplateInfo.new
              auditruletemplateinfo_tmp.deserialize(i)
              @Items << auditruletemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditRules请求参数结构体
      class DescribeAuditRulesRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 审计规则 ID。
        # @type RuleId: String
        # @param RuleName: 审计规则名称。支持按审计规则名称进行模糊匹配查询。
        # @type RuleName: String
        # @param Limit: 分页大小参数。默认值为 20，最小值为 1，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量。默认值为0。
        # @type Offset: Integer

        attr_accessor :RuleId, :RuleName, :Limit, :Offset

        def initialize(ruleid=nil, rulename=nil, limit=nil, offset=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAuditRules返回参数结构体
      class DescribeAuditRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的审计规则个数。
        # @type TotalCount: Integer
        # @param Items: 审计规则详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              auditrule_tmp = AuditRule.new
              auditrule_tmp.deserialize(i)
              @Items << auditrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupConfig请求参数结构体
      class DescribeBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeBackupConfig返回参数结构体
      class DescribeBackupConfigResponse < TencentCloud::Common::AbstractModel
        # @param StartTimeMin: 自动备份开始的最早时间点，单位为时刻。例如，2 - 凌晨 2:00。（该字段已废弃，建议使用 BackupTimeWindow 字段）
        # @type StartTimeMin: Integer
        # @param StartTimeMax: 自动备份开始的最晚时间点，单位为时刻。例如，6 - 凌晨 6:00。（该字段已废弃，建议使用 BackupTimeWindow 字段）
        # @type StartTimeMax: Integer
        # @param BackupExpireDays: 备份文件保留时间，单位为天。
        # @type BackupExpireDays: Integer
        # @param BackupMethod: 备份方式，可能的值为：physical - 物理备份，logical - 逻辑备份。
        # @type BackupMethod: String
        # @param BinlogExpireDays: Binlog 文件保留时间，单位为天。
        # @type BinlogExpireDays: Integer
        # @param BackupTimeWindow: 实例自动备份的时间窗。
        # @type BackupTimeWindow: :class:`Tencentcloud::Cdb.v20170320.models.CommonTimeWindow`
        # @param EnableBackupPeriodSave: 定期保留开关，off - 不开启定期保留策略，on - 开启定期保留策略，默认为off
        # @type EnableBackupPeriodSave: String
        # @param BackupPeriodSaveDays: 定期保留最长天数，最小值：90，最大值：3650，默认值：1080
        # @type BackupPeriodSaveDays: Integer
        # @param BackupPeriodSaveInterval: 定期保留策略周期，可取值：weekly - 周，monthly - 月， quarterly - 季度，yearly - 年，默认为monthly
        # @type BackupPeriodSaveInterval: String
        # @param BackupPeriodSaveCount: 定期保留的备份数量，最小值为1，最大值不超过定期保留策略周期内常规备份个数，默认值为1
        # @type BackupPeriodSaveCount: Integer
        # @param StartBackupPeriodSaveDate: 定期保留策略周期起始日期，格式：YYYY-MM-dd HH:mm:ss
        # @type StartBackupPeriodSaveDate: String
        # @param EnableBackupArchive: 是否开启数据备份归档策略，off-关闭，on-打开，默认为off
        # @type EnableBackupArchive: String
        # @param BackupArchiveDays: 数据备份归档起始天数，数据备份达到归档起始天数时进行归档，最小为180天，不得大于数据备份保留天数
        # @type BackupArchiveDays: Integer
        # @param EnableBinlogArchive: 是否开启日志备份归档策略，off-关闭，on-打开，默认为off
        # @type EnableBinlogArchive: String
        # @param BinlogArchiveDays: 日志备份归档起始天数，日志备份达到归档起始天数时进行归档，最小为180天，不得大于日志备份保留天数
        # @type BinlogArchiveDays: Integer
        # @param EnableBackupStandby: 是否开启数据备份标准存储策略，off-关闭，on-打开，默认为off
        # @type EnableBackupStandby: String
        # @param BackupStandbyDays: 数据备份标准存储起始天数，数据备份达到标准存储起始天数时进行转换，最小为30天，不得大于数据备份保留天数。如果开启备份归档，不得大于等于备份归档天数
        # @type BackupStandbyDays: Integer
        # @param EnableBinlogStandby: 是否开启日志备份标准存储策略，off-关闭，on-打开，默认为off
        # @type EnableBinlogStandby: String
        # @param BinlogStandbyDays: 日志备份标准存储起始天数，日志备份达到标准存储起始天数时进行转换，最小为30天，不得大于日志备份保留天数。如果开启备份归档，不得大于等于备份归档天数
        # @type BinlogStandbyDays: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTimeMin, :StartTimeMax, :BackupExpireDays, :BackupMethod, :BinlogExpireDays, :BackupTimeWindow, :EnableBackupPeriodSave, :BackupPeriodSaveDays, :BackupPeriodSaveInterval, :BackupPeriodSaveCount, :StartBackupPeriodSaveDate, :EnableBackupArchive, :BackupArchiveDays, :EnableBinlogArchive, :BinlogArchiveDays, :EnableBackupStandby, :BackupStandbyDays, :EnableBinlogStandby, :BinlogStandbyDays, :RequestId

        def initialize(starttimemin=nil, starttimemax=nil, backupexpiredays=nil, backupmethod=nil, binlogexpiredays=nil, backuptimewindow=nil, enablebackupperiodsave=nil, backupperiodsavedays=nil, backupperiodsaveinterval=nil, backupperiodsavecount=nil, startbackupperiodsavedate=nil, enablebackuparchive=nil, backuparchivedays=nil, enablebinlogarchive=nil, binlogarchivedays=nil, enablebackupstandby=nil, backupstandbydays=nil, enablebinlogstandby=nil, binlogstandbydays=nil, requestid=nil)
          @StartTimeMin = starttimemin
          @StartTimeMax = starttimemax
          @BackupExpireDays = backupexpiredays
          @BackupMethod = backupmethod
          @BinlogExpireDays = binlogexpiredays
          @BackupTimeWindow = backuptimewindow
          @EnableBackupPeriodSave = enablebackupperiodsave
          @BackupPeriodSaveDays = backupperiodsavedays
          @BackupPeriodSaveInterval = backupperiodsaveinterval
          @BackupPeriodSaveCount = backupperiodsavecount
          @StartBackupPeriodSaveDate = startbackupperiodsavedate
          @EnableBackupArchive = enablebackuparchive
          @BackupArchiveDays = backuparchivedays
          @EnableBinlogArchive = enablebinlogarchive
          @BinlogArchiveDays = binlogarchivedays
          @EnableBackupStandby = enablebackupstandby
          @BackupStandbyDays = backupstandbydays
          @EnableBinlogStandby = enablebinlogstandby
          @BinlogStandbyDays = binlogstandbydays
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTimeMin = params['StartTimeMin']
          @StartTimeMax = params['StartTimeMax']
          @BackupExpireDays = params['BackupExpireDays']
          @BackupMethod = params['BackupMethod']
          @BinlogExpireDays = params['BinlogExpireDays']
          unless params['BackupTimeWindow'].nil?
            @BackupTimeWindow = CommonTimeWindow.new
            @BackupTimeWindow.deserialize(params['BackupTimeWindow'])
          end
          @EnableBackupPeriodSave = params['EnableBackupPeriodSave']
          @BackupPeriodSaveDays = params['BackupPeriodSaveDays']
          @BackupPeriodSaveInterval = params['BackupPeriodSaveInterval']
          @BackupPeriodSaveCount = params['BackupPeriodSaveCount']
          @StartBackupPeriodSaveDate = params['StartBackupPeriodSaveDate']
          @EnableBackupArchive = params['EnableBackupArchive']
          @BackupArchiveDays = params['BackupArchiveDays']
          @EnableBinlogArchive = params['EnableBinlogArchive']
          @BinlogArchiveDays = params['BinlogArchiveDays']
          @EnableBackupStandby = params['EnableBackupStandby']
          @BackupStandbyDays = params['BackupStandbyDays']
          @EnableBinlogStandby = params['EnableBinlogStandby']
          @BinlogStandbyDays = params['BinlogStandbyDays']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupDecryptionKey请求参数结构体
      class DescribeBackupDecryptionKeyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-XXXX。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param BackupId: 实例的备份ID，可通过DescribeBackups接口查询备份的ID。
        # @type BackupId: Integer
        # @param BackupType: 备份类型 data: 数据备份 binlog:日志备份，默认为data
        # @type BackupType: String

        attr_accessor :InstanceId, :BackupId, :BackupType

        def initialize(instanceid=nil, backupid=nil, backuptype=nil)
          @InstanceId = instanceid
          @BackupId = backupid
          @BackupType = backuptype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupId = params['BackupId']
          @BackupType = params['BackupType']
        end
      end

      # DescribeBackupDecryptionKey返回参数结构体
      class DescribeBackupDecryptionKeyResponse < TencentCloud::Common::AbstractModel
        # @param DecryptionKey: 备份文件解密密钥。
        # @type DecryptionKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DecryptionKey, :RequestId

        def initialize(decryptionkey=nil, requestid=nil)
          @DecryptionKey = decryptionkey
          @RequestId = requestid
        end

        def deserialize(params)
          @DecryptionKey = params['DecryptionKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupDownloadRestriction请求参数结构体
      class DescribeBackupDownloadRestrictionRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBackupDownloadRestriction返回参数结构体
      class DescribeBackupDownloadRestrictionResponse < TencentCloud::Common::AbstractModel
        # @param LimitType: NoLimit 不限制,内外网都可以下载； LimitOnlyIntranet 仅内网可下载； Customize 用户自定义vpc:ip可下载。 只有该值为 Customize 时， LimitVpc 和 LimitIp 才有意义。
        # @type LimitType: String
        # @param VpcComparisonSymbol: 该参数仅支持 In， 表示 LimitVpc 指定的vpc可以下载。
        # @type VpcComparisonSymbol: String
        # @param IpComparisonSymbol: In: 指定的ip可以下载； NotIn: 指定的ip不可以下载。
        # @type IpComparisonSymbol: String
        # @param LimitVpc: 限制下载的vpc设置。
        # @type LimitVpc: Array
        # @param LimitIp: 限制下载的ip设置。
        # @type LimitIp: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LimitType, :VpcComparisonSymbol, :IpComparisonSymbol, :LimitVpc, :LimitIp, :RequestId

        def initialize(limittype=nil, vpccomparisonsymbol=nil, ipcomparisonsymbol=nil, limitvpc=nil, limitip=nil, requestid=nil)
          @LimitType = limittype
          @VpcComparisonSymbol = vpccomparisonsymbol
          @IpComparisonSymbol = ipcomparisonsymbol
          @LimitVpc = limitvpc
          @LimitIp = limitip
          @RequestId = requestid
        end

        def deserialize(params)
          @LimitType = params['LimitType']
          @VpcComparisonSymbol = params['VpcComparisonSymbol']
          @IpComparisonSymbol = params['IpComparisonSymbol']
          unless params['LimitVpc'].nil?
            @LimitVpc = []
            params['LimitVpc'].each do |i|
              backuplimitvpcitem_tmp = BackupLimitVpcItem.new
              backuplimitvpcitem_tmp.deserialize(i)
              @LimitVpc << backuplimitvpcitem_tmp
            end
          end
          @LimitIp = params['LimitIp']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupEncryptionStatus请求参数结构体
      class DescribeBackupEncryptionStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-XXXX。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeBackupEncryptionStatus返回参数结构体
      class DescribeBackupEncryptionStatusResponse < TencentCloud::Common::AbstractModel
        # @param EncryptionStatus: 实例是否开启了物理备份加密。可能的值有 on, off 。
        # @type EncryptionStatus: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EncryptionStatus, :RequestId

        def initialize(encryptionstatus=nil, requestid=nil)
          @EncryptionStatus = encryptionstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @EncryptionStatus = params['EncryptionStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupOverview请求参数结构体
      class DescribeBackupOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Product: 需要查询的云数据库产品类型，目前仅支持 "mysql"。
        # @type Product: String

        attr_accessor :Product

        def initialize(product=nil)
          @Product = product
        end

        def deserialize(params)
          @Product = params['Product']
        end
      end

      # DescribeBackupOverview返回参数结构体
      class DescribeBackupOverviewResponse < TencentCloud::Common::AbstractModel
        # @param BackupCount: 用户在当前地域备份的总个数（包含数据备份和日志备份）。
        # @type BackupCount: Integer
        # @param BackupVolume: 用户在当前地域备份的总容量
        # @type BackupVolume: Integer
        # @param BillingVolume: 用户在当前地域备份的计费容量，即超出赠送容量的部分。
        # @type BillingVolume: Integer
        # @param FreeVolume: 用户在当前地域获得的赠送备份容量。
        # @type FreeVolume: Integer
        # @param RemoteBackupVolume: 用户在当前地域的异地备份总容量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemoteBackupVolume: Integer
        # @param BackupArchiveVolume: 归档备份容量，包含数据备份以及日志备份。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupArchiveVolume: Integer
        # @param BackupStandbyVolume: 标准存储备份容量，包含数据备份以及日志备份。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStandbyVolume: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupCount, :BackupVolume, :BillingVolume, :FreeVolume, :RemoteBackupVolume, :BackupArchiveVolume, :BackupStandbyVolume, :RequestId

        def initialize(backupcount=nil, backupvolume=nil, billingvolume=nil, freevolume=nil, remotebackupvolume=nil, backuparchivevolume=nil, backupstandbyvolume=nil, requestid=nil)
          @BackupCount = backupcount
          @BackupVolume = backupvolume
          @BillingVolume = billingvolume
          @FreeVolume = freevolume
          @RemoteBackupVolume = remotebackupvolume
          @BackupArchiveVolume = backuparchivevolume
          @BackupStandbyVolume = backupstandbyvolume
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupCount = params['BackupCount']
          @BackupVolume = params['BackupVolume']
          @BillingVolume = params['BillingVolume']
          @FreeVolume = params['FreeVolume']
          @RemoteBackupVolume = params['RemoteBackupVolume']
          @BackupArchiveVolume = params['BackupArchiveVolume']
          @BackupStandbyVolume = params['BackupStandbyVolume']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupSummaries请求参数结构体
      class DescribeBackupSummariesRequest < TencentCloud::Common::AbstractModel
        # @param Product: 需要查询的云数据库产品类型，目前仅支持 "mysql"。
        # @type Product: String
        # @param Offset: 分页查询数据的偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 分页查询数据的条目限制，默认值为20。最小值为1，最大值为100。
        # @type Limit: Integer
        # @param OrderBy: 指定按某一项排序，可选值包括： BackupVolume: 备份容量， DataBackupVolume: 数据备份容量， BinlogBackupVolume: 日志备份容量， AutoBackupVolume: 自动备份容量， ManualBackupVolume: 手动备份容量。默认按照BackupVolume排序。
        # @type OrderBy: String
        # @param OrderDirection: 指定排序方向，可选值包括： ASC: 正序， DESC: 逆序。默认值为 ASC。
        # @type OrderDirection: String

        attr_accessor :Product, :Offset, :Limit, :OrderBy, :OrderDirection

        def initialize(product=nil, offset=nil, limit=nil, orderby=nil, orderdirection=nil)
          @Product = product
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @Product = params['Product']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeBackupSummaries返回参数结构体
      class DescribeBackupSummariesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 实例备份统计条目。
        # @type Items: Array
        # @param TotalCount: 实例备份统计总条目数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :TotalCount, :RequestId

        def initialize(items=nil, totalcount=nil, requestid=nil)
          @Items = items
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              backupsummaryitem_tmp = BackupSummaryItem.new
              backupsummaryitem_tmp.deserialize(i)
              @Items << backupsummaryitem_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackups请求参数结构体
      class DescribeBackupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Offset: 偏移量，最小值为0。
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值为20，最小值为1，最大值为100。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeBackups返回参数结构体
      class DescribeBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param Items: 符合查询条件的备份信息详情。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              backupinfo_tmp = BackupInfo.new
              backupinfo_tmp.deserialize(i)
              @Items << backupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBinlogBackupOverview请求参数结构体
      class DescribeBinlogBackupOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Product: 需要查询的云数据库产品类型，目前仅支持 "mysql"。
        # @type Product: String

        attr_accessor :Product

        def initialize(product=nil)
          @Product = product
        end

        def deserialize(params)
          @Product = params['Product']
        end
      end

      # DescribeBinlogBackupOverview返回参数结构体
      class DescribeBinlogBackupOverviewResponse < TencentCloud::Common::AbstractModel
        # @param BinlogBackupVolume: 总的日志备份容量，包含异地日志备份（单位为字节）。
        # @type BinlogBackupVolume: Integer
        # @param BinlogBackupCount: 总的日志备份个数，包含异地日志备份。
        # @type BinlogBackupCount: Integer
        # @param RemoteBinlogVolume: 异地日志备份容量（单位为字节）。
        # @type RemoteBinlogVolume: Integer
        # @param RemoteBinlogCount: 异地日志备份个数。
        # @type RemoteBinlogCount: Integer
        # @param BinlogArchiveVolume: 归档日志备份容量（单位为字节）。
        # @type BinlogArchiveVolume: Integer
        # @param BinlogArchiveCount: 归档日志备份个数。
        # @type BinlogArchiveCount: Integer
        # @param BinlogStandbyVolume: 标准存储日志备份容量（单位为字节）。
        # @type BinlogStandbyVolume: Integer
        # @param BinlogStandbyCount: 标准存储日志备份个数。
        # @type BinlogStandbyCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BinlogBackupVolume, :BinlogBackupCount, :RemoteBinlogVolume, :RemoteBinlogCount, :BinlogArchiveVolume, :BinlogArchiveCount, :BinlogStandbyVolume, :BinlogStandbyCount, :RequestId

        def initialize(binlogbackupvolume=nil, binlogbackupcount=nil, remotebinlogvolume=nil, remotebinlogcount=nil, binlogarchivevolume=nil, binlogarchivecount=nil, binlogstandbyvolume=nil, binlogstandbycount=nil, requestid=nil)
          @BinlogBackupVolume = binlogbackupvolume
          @BinlogBackupCount = binlogbackupcount
          @RemoteBinlogVolume = remotebinlogvolume
          @RemoteBinlogCount = remotebinlogcount
          @BinlogArchiveVolume = binlogarchivevolume
          @BinlogArchiveCount = binlogarchivecount
          @BinlogStandbyVolume = binlogstandbyvolume
          @BinlogStandbyCount = binlogstandbycount
          @RequestId = requestid
        end

        def deserialize(params)
          @BinlogBackupVolume = params['BinlogBackupVolume']
          @BinlogBackupCount = params['BinlogBackupCount']
          @RemoteBinlogVolume = params['RemoteBinlogVolume']
          @RemoteBinlogCount = params['RemoteBinlogCount']
          @BinlogArchiveVolume = params['BinlogArchiveVolume']
          @BinlogArchiveCount = params['BinlogArchiveCount']
          @BinlogStandbyVolume = params['BinlogStandbyVolume']
          @BinlogStandbyCount = params['BinlogStandbyCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBinlogs请求参数结构体
      class DescribeBinlogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Offset: 偏移量，最小值为0。
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值为20，最小值为1，最大值为100。
        # @type Limit: Integer
        # @param MinStartTime: binlog最早开始时间，时间格式：2016-03-17 02:10:37
        # @type MinStartTime: String
        # @param MaxStartTime: binlog最晚开始时间，时间格式：2016-03-17 02:10:37
        # @type MaxStartTime: String
        # @param ContainsMinStartTime: 返回binlog列表是否包含MinStartTime起始节点，默认为否
        # @type ContainsMinStartTime: Boolean

        attr_accessor :InstanceId, :Offset, :Limit, :MinStartTime, :MaxStartTime, :ContainsMinStartTime

        def initialize(instanceid=nil, offset=nil, limit=nil, minstarttime=nil, maxstarttime=nil, containsminstarttime=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @MinStartTime = minstarttime
          @MaxStartTime = maxstarttime
          @ContainsMinStartTime = containsminstarttime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @MinStartTime = params['MinStartTime']
          @MaxStartTime = params['MaxStartTime']
          @ContainsMinStartTime = params['ContainsMinStartTime']
        end
      end

      # DescribeBinlogs返回参数结构体
      class DescribeBinlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的日志文件总数。
        # @type TotalCount: Integer
        # @param Items: 符合查询条件的二进制日志文件详情。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              binloginfo_tmp = BinlogInfo.new
              binloginfo_tmp.deserialize(i)
              @Items << binloginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCdbProxyInfo请求参数结构体
      class DescribeCdbProxyInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String

        attr_accessor :InstanceId, :ProxyGroupId

        def initialize(instanceid=nil, proxygroupid=nil)
          @InstanceId = instanceid
          @ProxyGroupId = proxygroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ProxyGroupId = params['ProxyGroupId']
        end
      end

      # DescribeCdbProxyInfo返回参数结构体
      class DescribeCdbProxyInfoResponse < TencentCloud::Common::AbstractModel
        # @param Count: 代理组数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param ProxyInfos: 代理组信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :ProxyInfos, :RequestId

        def initialize(count=nil, proxyinfos=nil, requestid=nil)
          @Count = count
          @ProxyInfos = proxyinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['ProxyInfos'].nil?
            @ProxyInfos = []
            params['ProxyInfos'].each do |i|
              proxygroupinfo_tmp = ProxyGroupInfo.new
              proxygroupinfo_tmp.deserialize(i)
              @ProxyInfos << proxygroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCdbZoneConfig请求参数结构体
      class DescribeCdbZoneConfigRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCdbZoneConfig返回参数结构体
      class DescribeCdbZoneConfigResponse < TencentCloud::Common::AbstractModel
        # @param DataResult: 售卖规格和地域信息集合
        # @type DataResult: :class:`Tencentcloud::Cdb.v20170320.models.CdbZoneDataResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataResult, :RequestId

        def initialize(dataresult=nil, requestid=nil)
          @DataResult = dataresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DataResult'].nil?
            @DataResult = CdbZoneDataResult.new
            @DataResult.deserialize(params['DataResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloneList请求参数结构体
      class DescribeCloneListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 查询指定源实例的克隆任务列表。
        # @type InstanceId: String
        # @param Offset: 分页查询时的偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页查询时的每页条目数，默认值为20。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCloneList返回参数结构体
      class DescribeCloneListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足条件的条目数。
        # @type TotalCount: Integer
        # @param Items: 克隆任务列表。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              cloneitem_tmp = CloneItem.new
              cloneitem_tmp.deserialize(i)
              @Items << cloneitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterInfo请求参数结构体
      class DescribeClusterInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeClusterInfo返回参数结构体
      class DescribeClusterInfoResponse < TencentCloud::Common::AbstractModel
        # @param ClusterName: 实例名称。
        # @type ClusterName: String
        # @param ReadWriteAddress: 集群读写地址信息。
        # @type ReadWriteAddress: :class:`Tencentcloud::Cdb.v20170320.models.AddressInfo`
        # @param ReadOnlyAddress: 集群只读地址信息。
        # @type ReadOnlyAddress: Array
        # @param NodeList: 集群节点列表信息。
        # @type NodeList: Array
        # @param ReadonlyLimit: 只读空间保护阈值,单位GB
        # @type ReadonlyLimit: Integer
        # @param NodeCount: 实例节点数。
        # @type NodeCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterName, :ReadWriteAddress, :ReadOnlyAddress, :NodeList, :ReadonlyLimit, :NodeCount, :RequestId

        def initialize(clustername=nil, readwriteaddress=nil, readonlyaddress=nil, nodelist=nil, readonlylimit=nil, nodecount=nil, requestid=nil)
          @ClusterName = clustername
          @ReadWriteAddress = readwriteaddress
          @ReadOnlyAddress = readonlyaddress
          @NodeList = nodelist
          @ReadonlyLimit = readonlylimit
          @NodeCount = nodecount
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterName = params['ClusterName']
          unless params['ReadWriteAddress'].nil?
            @ReadWriteAddress = AddressInfo.new
            @ReadWriteAddress.deserialize(params['ReadWriteAddress'])
          end
          unless params['ReadOnlyAddress'].nil?
            @ReadOnlyAddress = []
            params['ReadOnlyAddress'].each do |i|
              addressinfo_tmp = AddressInfo.new
              addressinfo_tmp.deserialize(i)
              @ReadOnlyAddress << addressinfo_tmp
            end
          end
          unless params['NodeList'].nil?
            @NodeList = []
            params['NodeList'].each do |i|
              clusternodeinfo_tmp = ClusterNodeInfo.new
              clusternodeinfo_tmp.deserialize(i)
              @NodeList << clusternodeinfo_tmp
            end
          end
          @ReadonlyLimit = params['ReadonlyLimit']
          @NodeCount = params['NodeCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCpuExpandStrategy请求参数结构体
      class DescribeCpuExpandStrategyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeCpuExpandStrategy返回参数结构体
      class DescribeCpuExpandStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Type: 策略类型。可选值 auto、manual。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param ExpandCpu: 手动扩容的 CPU 。Type为 manual 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpandCpu: String
        # @param AutoStrategy: 自动扩容策略。Type 为 auto 时有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoStrategy: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Type, :ExpandCpu, :AutoStrategy, :RequestId

        def initialize(type=nil, expandcpu=nil, autostrategy=nil, requestid=nil)
          @Type = type
          @ExpandCpu = expandcpu
          @AutoStrategy = autostrategy
          @RequestId = requestid
        end

        def deserialize(params)
          @Type = params['Type']
          @ExpandCpu = params['ExpandCpu']
          @AutoStrategy = params['AutoStrategy']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBFeatures请求参数结构体
      class DescribeDBFeaturesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBFeatures返回参数结构体
      class DescribeDBFeaturesResponse < TencentCloud::Common::AbstractModel
        # @param IsSupportAudit: 是否支持数据库审计功能。
        # @type IsSupportAudit: Boolean
        # @param AuditNeedUpgrade: 开启审计是否需要升级内核版本。
        # @type AuditNeedUpgrade: Boolean
        # @param IsSupportEncryption: 是否支持数据库加密功能。
        # @type IsSupportEncryption: Boolean
        # @param EncryptionNeedUpgrade: 开启加密是否需要升级内核版本。
        # @type EncryptionNeedUpgrade: Boolean
        # @param IsRemoteRo: 是否为异地只读实例。
        # @type IsRemoteRo: Boolean
        # @param MasterRegion: 主实例所在地域。
        # @type MasterRegion: String
        # @param IsSupportUpdateSubVersion: 是否支持小版本升级。
        # @type IsSupportUpdateSubVersion: Boolean
        # @param CurrentSubVersion: 当前内核版本。
        # @type CurrentSubVersion: String
        # @param TargetSubVersion: 可供升级的内核版本。
        # @type TargetSubVersion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsSupportAudit, :AuditNeedUpgrade, :IsSupportEncryption, :EncryptionNeedUpgrade, :IsRemoteRo, :MasterRegion, :IsSupportUpdateSubVersion, :CurrentSubVersion, :TargetSubVersion, :RequestId

        def initialize(issupportaudit=nil, auditneedupgrade=nil, issupportencryption=nil, encryptionneedupgrade=nil, isremotero=nil, masterregion=nil, issupportupdatesubversion=nil, currentsubversion=nil, targetsubversion=nil, requestid=nil)
          @IsSupportAudit = issupportaudit
          @AuditNeedUpgrade = auditneedupgrade
          @IsSupportEncryption = issupportencryption
          @EncryptionNeedUpgrade = encryptionneedupgrade
          @IsRemoteRo = isremotero
          @MasterRegion = masterregion
          @IsSupportUpdateSubVersion = issupportupdatesubversion
          @CurrentSubVersion = currentsubversion
          @TargetSubVersion = targetsubversion
          @RequestId = requestid
        end

        def deserialize(params)
          @IsSupportAudit = params['IsSupportAudit']
          @AuditNeedUpgrade = params['AuditNeedUpgrade']
          @IsSupportEncryption = params['IsSupportEncryption']
          @EncryptionNeedUpgrade = params['EncryptionNeedUpgrade']
          @IsRemoteRo = params['IsRemoteRo']
          @MasterRegion = params['MasterRegion']
          @IsSupportUpdateSubVersion = params['IsSupportUpdateSubVersion']
          @CurrentSubVersion = params['CurrentSubVersion']
          @TargetSubVersion = params['TargetSubVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBImportRecords请求参数结构体
      class DescribeDBImportRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param StartTime: 开始时间，时间格式如：2016-01-01 00:00:01。
        # @type StartTime: String
        # @param EndTime: 结束时间，时间格式如：2016-01-01 23:59:59。
        # @type EndTime: String
        # @param Offset: 分页参数，偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页参数，单次请求返回的数量，默认值为20，最小值为1，最大值为100。
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Offset, :Limit

        def initialize(instanceid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDBImportRecords返回参数结构体
      class DescribeDBImportRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的导入任务操作日志总数。
        # @type TotalCount: Integer
        # @param Items: 返回的导入操作记录列表。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              importrecord_tmp = ImportRecord.new
              importrecord_tmp.deserialize(i)
              @Items << importrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceCharset请求参数结构体
      class DescribeDBInstanceCharsetRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBInstanceCharset返回参数结构体
      class DescribeDBInstanceCharsetResponse < TencentCloud::Common::AbstractModel
        # @param Charset: 实例的默认字符集，如 "latin1"，"utf8" 等。
        # @type Charset: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Charset, :RequestId

        def initialize(charset=nil, requestid=nil)
          @Charset = charset
          @RequestId = requestid
        end

        def deserialize(params)
          @Charset = params['Charset']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceConfig请求参数结构体
      class DescribeDBInstanceConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBInstanceConfig返回参数结构体
      class DescribeDBInstanceConfigResponse < TencentCloud::Common::AbstractModel
        # @param ProtectMode: 主实例数据保护方式，可能的返回值：0 - 异步复制方式，1 - 半同步复制方式，2 - 强同步复制方式。
        # @type ProtectMode: Integer
        # @param DeployMode: 主实例部署方式，可能的返回值：0 - 单可用部署，1 - 多可用区部署。
        # @type DeployMode: Integer
        # @param Zone: 实例可用区信息，格式如 "ap-shanghai-1"。
        # @type Zone: String
        # @param SlaveConfig: 备库的配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveConfig: :class:`Tencentcloud::Cdb.v20170320.models.SlaveConfig`
        # @param BackupConfig: 强同步实例第二备库的配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupConfig: :class:`Tencentcloud::Cdb.v20170320.models.BackupConfig`
        # @param Switched: 是否切换备库。
        # @type Switched: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProtectMode, :DeployMode, :Zone, :SlaveConfig, :BackupConfig, :Switched, :RequestId

        def initialize(protectmode=nil, deploymode=nil, zone=nil, slaveconfig=nil, backupconfig=nil, switched=nil, requestid=nil)
          @ProtectMode = protectmode
          @DeployMode = deploymode
          @Zone = zone
          @SlaveConfig = slaveconfig
          @BackupConfig = backupconfig
          @Switched = switched
          @RequestId = requestid
        end

        def deserialize(params)
          @ProtectMode = params['ProtectMode']
          @DeployMode = params['DeployMode']
          @Zone = params['Zone']
          unless params['SlaveConfig'].nil?
            @SlaveConfig = SlaveConfig.new
            @SlaveConfig.deserialize(params['SlaveConfig'])
          end
          unless params['BackupConfig'].nil?
            @BackupConfig = BackupConfig.new
            @BackupConfig.deserialize(params['BackupConfig'])
          end
          @Switched = params['Switched']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceGTID请求参数结构体
      class DescribeDBInstanceGTIDRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBInstanceGTID返回参数结构体
      class DescribeDBInstanceGTIDResponse < TencentCloud::Common::AbstractModel
        # @param IsGTIDOpen: GTID 是否开通的标记，可能的取值为：0 - 未开通，1 - 已开通。
        # @type IsGTIDOpen: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsGTIDOpen, :RequestId

        def initialize(isgtidopen=nil, requestid=nil)
          @IsGTIDOpen = isgtidopen
          @RequestId = requestid
        end

        def deserialize(params)
          @IsGTIDOpen = params['IsGTIDOpen']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceInfo请求参数结构体
      class DescribeDBInstanceInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBInstanceInfo返回参数结构体
      class DescribeDBInstanceInfoResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param Encryption: 是否开通加密，YES 已开通，NO 未开通。
        # @type Encryption: String
        # @param KeyId: 加密使用的密钥 ID 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyId: String
        # @param KeyRegion: 密钥所在地域。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyRegion: String
        # @param DefaultKmsRegion: 当前 CDB 后端服务使用的 KMS 服务的默认地域。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DefaultKmsRegion: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :InstanceName, :Encryption, :KeyId, :KeyRegion, :DefaultKmsRegion, :RequestId

        def initialize(instanceid=nil, instancename=nil, encryption=nil, keyid=nil, keyregion=nil, defaultkmsregion=nil, requestid=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Encryption = encryption
          @KeyId = keyid
          @KeyRegion = keyregion
          @DefaultKmsRegion = defaultkmsregion
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Encryption = params['Encryption']
          @KeyId = params['KeyId']
          @KeyRegion = params['KeyRegion']
          @DefaultKmsRegion = params['DefaultKmsRegion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceLogToCLS请求参数结构体
      class DescribeDBInstanceLogToCLSRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ClsRegion: CLS服务所在地域
        # @type ClsRegion: String

        attr_accessor :InstanceId, :ClsRegion

        def initialize(instanceid=nil, clsregion=nil)
          @InstanceId = instanceid
          @ClsRegion = clsregion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ClsRegion = params['ClsRegion']
        end
      end

      # DescribeDBInstanceLogToCLS返回参数结构体
      class DescribeDBInstanceLogToCLSResponse < TencentCloud::Common::AbstractModel
        # @param ErrorLog: 错误日志投递CLS配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorLog: :class:`Tencentcloud::Cdb.v20170320.models.LogToCLSConfig`
        # @param SlowLog: 慢日志投递CLS配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlowLog: :class:`Tencentcloud::Cdb.v20170320.models.LogToCLSConfig`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorLog, :SlowLog, :RequestId

        def initialize(errorlog=nil, slowlog=nil, requestid=nil)
          @ErrorLog = errorlog
          @SlowLog = slowlog
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorLog'].nil?
            @ErrorLog = LogToCLSConfig.new
            @ErrorLog.deserialize(params['ErrorLog'])
          end
          unless params['SlowLog'].nil?
            @SlowLog = LogToCLSConfig.new
            @SlowLog.deserialize(params['SlowLog'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceRebootTime请求参数结构体
      class DescribeDBInstanceRebootTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例的 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeDBInstanceRebootTime返回参数结构体
      class DescribeDBInstanceRebootTimeResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param Items: 返回的参数信息。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              instancereboottime_tmp = InstanceRebootTime.new
              instancereboottime_tmp.deserialize(i)
              @Items << instancereboottime_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param InstanceTypes: 实例类型，可取值：1 - 主实例，2 - 灾备实例，3 - 只读实例。
        # @type InstanceTypes: Array
        # @param Vips: 实例的内网 IP 地址。
        # @type Vips: Array
        # @param Status: 实例状态，可取值：<br>0 - 创建中<br>1 - 运行中<br>4 - 正在进行隔离操作<br>5 - 已隔离（可在回收站恢复开机）
        # @type Status: Array
        # @param Offset: 偏移量，默认值为 0。
        # @type Offset: Integer
        # @param Limit: 单次请求返回的数量，默认值为 20，最大值为 2000。
        # @type Limit: Integer
        # @param SecurityGroupId: 安全组 ID。当使用安全组 ID 为过滤条件时，需指定 WithSecurityGroup 参数为 1。
        # @type SecurityGroupId: String
        # @param PayTypes: 付费类型，可取值：0 - 包年包月，1 - 小时计费。
        # @type PayTypes: Array
        # @param InstanceNames: 实例名称。
        # @type InstanceNames: Array
        # @param TaskStatus: 实例任务状态，可能取值：<br>0 - 没有任务<br>1 - 升级中<br>2 - 数据导入中<br>3 - 开放Slave中<br>4 - 外网访问开通中<br>5 - 批量操作执行中<br>6 - 回档中<br>7 - 外网访问关闭中<br>8 - 密码修改中<br>9 - 实例名修改中<br>10 - 重启中<br>12 - 自建迁移中<br>13 - 删除库表中<br>14 - 灾备实例创建同步中<br>15 - 升级待切换<br>16 - 升级切换中<br>17 - 升级切换完成<br>19 - 参数设置待执行
        # @type TaskStatus: Array
        # @param EngineVersions: 实例数据库引擎版本，可能取值：5.1、5.5、5.6 和 5.7。
        # @type EngineVersions: Array
        # @param VpcIds: 私有网络的 ID。
        # @type VpcIds: Array
        # @param ZoneIds: 可用区的 ID。
        # @type ZoneIds: Array
        # @param SubnetIds: 子网 ID。
        # @type SubnetIds: Array
        # @param CdbErrors: 是否锁定标记，可选值：0 - 不锁定，1 - 锁定，默认为0。
        # @type CdbErrors: Array
        # @param OrderBy: 返回结果集排序的字段，目前支持："InstanceId"，"InstanceName"，"CreateTime"，"DeadlineTime"。
        # @type OrderBy: String
        # @param OrderDirection: 返回结果集排序方式，目前支持："ASC" 或者 "DESC"。
        # @type OrderDirection: String
        # @param WithSecurityGroup: 是否以安全组 ID 为过滤条件。
        # @type WithSecurityGroup: Integer
        # @param WithExCluster: 是否包含独享集群详细信息，可取值：0 - 不包含，1 - 包含。
        # @type WithExCluster: Integer
        # @param ExClusterId: 独享集群 ID。
        # @type ExClusterId: String
        # @param InstanceIds: 实例 ID。
        # @type InstanceIds: Array
        # @param InitFlag: 初始化标记，可取值：0 - 未初始化，1 - 初始化。
        # @type InitFlag: Integer
        # @param WithDr: 是否包含灾备关系对应的实例，可取值：0 - 不包含，1 - 包含。默认取值为1。如果拉取主实例，则灾备关系的数据在DrInfo字段中， 如果拉取灾备实例， 则灾备关系的数据在MasterInfo字段中。灾备关系中只包含部分基本的数据，详细的数据需要自行调接口拉取。
        # @type WithDr: Integer
        # @param WithRo: 是否包含只读实例，可取值：0 - 不包含，1 - 包含。默认取值为1。
        # @type WithRo: Integer
        # @param WithMaster: 是否包含主实例，可取值：0 - 不包含，1 - 包含。默认取值为1。
        # @type WithMaster: Integer
        # @param DeployGroupIds: 置放群组ID列表。
        # @type DeployGroupIds: Array
        # @param TagKeysForSearch: 是否以标签键为过滤条件。
        # @type TagKeysForSearch: Array
        # @param CageIds: 金融围拢 ID 。
        # @type CageIds: Array
        # @param TagValues: 标签值
        # @type TagValues: Array
        # @param UniqueVpcIds: 私有网络字符型vpcId
        # @type UniqueVpcIds: Array
        # @param UniqSubnetIds: 私有网络字符型subnetId
        # @type UniqSubnetIds: Array
        # @param Tags: 标签键值
        # @type Tags: Array
        # @param ProxyVips: 数据库代理 IP 。
        # @type ProxyVips: Array
        # @param ProxyIds: 数据库代理 ID 。
        # @type ProxyIds: Array
        # @param EngineTypes: 数据库引擎类型。
        # @type EngineTypes: Array

        attr_accessor :ProjectId, :InstanceTypes, :Vips, :Status, :Offset, :Limit, :SecurityGroupId, :PayTypes, :InstanceNames, :TaskStatus, :EngineVersions, :VpcIds, :ZoneIds, :SubnetIds, :CdbErrors, :OrderBy, :OrderDirection, :WithSecurityGroup, :WithExCluster, :ExClusterId, :InstanceIds, :InitFlag, :WithDr, :WithRo, :WithMaster, :DeployGroupIds, :TagKeysForSearch, :CageIds, :TagValues, :UniqueVpcIds, :UniqSubnetIds, :Tags, :ProxyVips, :ProxyIds, :EngineTypes

        def initialize(projectid=nil, instancetypes=nil, vips=nil, status=nil, offset=nil, limit=nil, securitygroupid=nil, paytypes=nil, instancenames=nil, taskstatus=nil, engineversions=nil, vpcids=nil, zoneids=nil, subnetids=nil, cdberrors=nil, orderby=nil, orderdirection=nil, withsecuritygroup=nil, withexcluster=nil, exclusterid=nil, instanceids=nil, initflag=nil, withdr=nil, withro=nil, withmaster=nil, deploygroupids=nil, tagkeysforsearch=nil, cageids=nil, tagvalues=nil, uniquevpcids=nil, uniqsubnetids=nil, tags=nil, proxyvips=nil, proxyids=nil, enginetypes=nil)
          @ProjectId = projectid
          @InstanceTypes = instancetypes
          @Vips = vips
          @Status = status
          @Offset = offset
          @Limit = limit
          @SecurityGroupId = securitygroupid
          @PayTypes = paytypes
          @InstanceNames = instancenames
          @TaskStatus = taskstatus
          @EngineVersions = engineversions
          @VpcIds = vpcids
          @ZoneIds = zoneids
          @SubnetIds = subnetids
          @CdbErrors = cdberrors
          @OrderBy = orderby
          @OrderDirection = orderdirection
          @WithSecurityGroup = withsecuritygroup
          @WithExCluster = withexcluster
          @ExClusterId = exclusterid
          @InstanceIds = instanceids
          @InitFlag = initflag
          @WithDr = withdr
          @WithRo = withro
          @WithMaster = withmaster
          @DeployGroupIds = deploygroupids
          @TagKeysForSearch = tagkeysforsearch
          @CageIds = cageids
          @TagValues = tagvalues
          @UniqueVpcIds = uniquevpcids
          @UniqSubnetIds = uniqsubnetids
          @Tags = tags
          @ProxyVips = proxyvips
          @ProxyIds = proxyids
          @EngineTypes = enginetypes
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceTypes = params['InstanceTypes']
          @Vips = params['Vips']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SecurityGroupId = params['SecurityGroupId']
          @PayTypes = params['PayTypes']
          @InstanceNames = params['InstanceNames']
          @TaskStatus = params['TaskStatus']
          @EngineVersions = params['EngineVersions']
          @VpcIds = params['VpcIds']
          @ZoneIds = params['ZoneIds']
          @SubnetIds = params['SubnetIds']
          @CdbErrors = params['CdbErrors']
          @OrderBy = params['OrderBy']
          @OrderDirection = params['OrderDirection']
          @WithSecurityGroup = params['WithSecurityGroup']
          @WithExCluster = params['WithExCluster']
          @ExClusterId = params['ExClusterId']
          @InstanceIds = params['InstanceIds']
          @InitFlag = params['InitFlag']
          @WithDr = params['WithDr']
          @WithRo = params['WithRo']
          @WithMaster = params['WithMaster']
          @DeployGroupIds = params['DeployGroupIds']
          @TagKeysForSearch = params['TagKeysForSearch']
          @CageIds = params['CageIds']
          @TagValues = params['TagValues']
          @UniqueVpcIds = params['UniqueVpcIds']
          @UniqSubnetIds = params['UniqSubnetIds']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @ProxyVips = params['ProxyVips']
          @ProxyIds = params['ProxyIds']
          @EngineTypes = params['EngineTypes']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param Items: 实例详细信息列表。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @Items << instanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBPrice请求参数结构体
      class DescribeDBPriceRequest < TencentCloud::Common::AbstractModel
        # @param Period: 实例时长，单位：月，最小值 1，最大值为 36；查询按量计费价格时，该字段无效。
        # @type Period: Integer
        # @param Zone: 可用区信息，格式如 "ap-guangzhou-2"。具体能设置的值请通过 <a href="https://cloud.tencent.com/document/api/236/17229">DescribeDBZoneConfig</a> 接口查询。InstanceId为空时该参数为必填项。
        # @type Zone: String
        # @param GoodsNum: 实例数量，默认值为 1，最小值 1，最大值为 100。InstanceId为空时该参数为必填项。
        # @type GoodsNum: Integer
        # @param Memory: 实例内存大小，单位：MB。InstanceId为空时该参数为必填项。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB。InstanceId为空时该参数为必填项。
        # @type Volume: Integer
        # @param InstanceRole: 实例类型，默认为 master，支持值包括：master - 表示主实例，ro - 表示只读实例，dr - 表示灾备实例。InstanceId为空时该参数为必填项。
        # @type InstanceRole: String
        # @param PayType: 付费类型，支持值包括：PRE_PAID - 包年包月，HOUR_PAID - 按量计费。InstanceId为空时该参数为必填项。
        # @type PayType: String
        # @param ProtectMode: 数据复制方式，默认为 0，支持值包括：0 - 表示异步复制，1 - 表示半同步复制，2 - 表示强同步复制。
        # @type ProtectMode: Integer
        # @param DeviceType: 实例隔离类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例， "BASIC_V2" - 单节点云盘版实例。 不指定则默认为通用型实例。
        # @type DeviceType: String
        # @param InstanceNodes: 实例节点数。对于 RO 和 基础版实例， 该值默认为1。 如果需要询价三节点实例， 请将该值设置为3。其余主实例该值默认为2。
        # @type InstanceNodes: Integer
        # @param Cpu: 询价实例的CPU核心数目，单位：核，为保证传入 CPU 值有效，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口获取可售卖的核心数目，当未指定该值时，将按照 Memory 大小补全一个默认值。
        # @type Cpu: Integer
        # @param InstanceId: 询价续费实例ID。如需查询实例续费价格，填写InstanceId和Period即可。
        # @type InstanceId: String
        # @param Ladder: 按量计费阶梯。仅PayType=HOUR_PAID有效，支持值包括：1，2，3。阶梯时长见https://cloud.tencent.com/document/product/236/18335。
        # @type Ladder: Integer

        attr_accessor :Period, :Zone, :GoodsNum, :Memory, :Volume, :InstanceRole, :PayType, :ProtectMode, :DeviceType, :InstanceNodes, :Cpu, :InstanceId, :Ladder

        def initialize(period=nil, zone=nil, goodsnum=nil, memory=nil, volume=nil, instancerole=nil, paytype=nil, protectmode=nil, devicetype=nil, instancenodes=nil, cpu=nil, instanceid=nil, ladder=nil)
          @Period = period
          @Zone = zone
          @GoodsNum = goodsnum
          @Memory = memory
          @Volume = volume
          @InstanceRole = instancerole
          @PayType = paytype
          @ProtectMode = protectmode
          @DeviceType = devicetype
          @InstanceNodes = instancenodes
          @Cpu = cpu
          @InstanceId = instanceid
          @Ladder = ladder
        end

        def deserialize(params)
          @Period = params['Period']
          @Zone = params['Zone']
          @GoodsNum = params['GoodsNum']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @InstanceRole = params['InstanceRole']
          @PayType = params['PayType']
          @ProtectMode = params['ProtectMode']
          @DeviceType = params['DeviceType']
          @InstanceNodes = params['InstanceNodes']
          @Cpu = params['Cpu']
          @InstanceId = params['InstanceId']
          @Ladder = params['Ladder']
        end
      end

      # DescribeDBPrice返回参数结构体
      class DescribeDBPriceResponse < TencentCloud::Common::AbstractModel
        # @param Price: 实例价格，单位：分。
        # @type Price: Integer
        # @param OriginalPrice: 实例原价，单位：分。
        # @type OriginalPrice: Integer
        # @param Currency: 货币单位。CNY-人民币，USD-美元。
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :OriginalPrice, :Currency, :RequestId

        def initialize(price=nil, originalprice=nil, currency=nil, requestid=nil)
          @Price = price
          @OriginalPrice = originalprice
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @Price = params['Price']
          @OriginalPrice = params['OriginalPrice']
          @Currency = params['Currency']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-c1nl9rpv或者cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param ForReadonlyInstance: 该值默认为False，表示当传入只读实例ID时，查询操作的是对应只读组的安全组。如果需要操作只读实例ID的安全组， 需要将该入参置为True。
        # @type ForReadonlyInstance: Boolean
        # @param OpResourceId: 变更集群版实例只读组时，InstanceId传实例id，需要额外指定该参数表示操作只读组。 如果操作读写节点则不需指定该参数。
        # @type OpResourceId: String

        attr_accessor :InstanceId, :ForReadonlyInstance, :OpResourceId

        def initialize(instanceid=nil, forreadonlyinstance=nil, opresourceid=nil)
          @InstanceId = instanceid
          @ForReadonlyInstance = forreadonlyinstance
          @OpResourceId = opresourceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ForReadonlyInstance = params['ForReadonlyInstance']
          @OpResourceId = params['OpResourceId']
        end
      end

      # DescribeDBSecurityGroups返回参数结构体
      class DescribeDBSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组详情。
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId

        def initialize(groups=nil, requestid=nil)
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              securitygroup_tmp = SecurityGroup.new
              securitygroup_tmp.deserialize(i)
              @Groups << securitygroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSwitchRecords请求参数结构体
      class DescribeDBSwitchRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值为 50，最小值为 1，最大值为 2000。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDBSwitchRecords返回参数结构体
      class DescribeDBSwitchRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例切换记录的总数。
        # @type TotalCount: Integer
        # @param Items: 实例切换记录详情。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              dbswitchinfo_tmp = DBSwitchInfo.new
              dbswitchinfo_tmp.deserialize(i)
              @Items << dbswitchinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDataBackupOverview请求参数结构体
      class DescribeDataBackupOverviewRequest < TencentCloud::Common::AbstractModel
        # @param Product: 需要查询的云数据库产品类型，目前仅支持 "mysql"。
        # @type Product: String

        attr_accessor :Product

        def initialize(product=nil)
          @Product = product
        end

        def deserialize(params)
          @Product = params['Product']
        end
      end

      # DescribeDataBackupOverview返回参数结构体
      class DescribeDataBackupOverviewResponse < TencentCloud::Common::AbstractModel
        # @param DataBackupVolume: 当前地域的数据备份总容量（包含自动备份和手动备份，单位为字节）。
        # @type DataBackupVolume: Integer
        # @param DataBackupCount: 当前地域的数据备份总个数。
        # @type DataBackupCount: Integer
        # @param AutoBackupVolume: 当前地域的自动备份总容量。
        # @type AutoBackupVolume: Integer
        # @param AutoBackupCount: 当前地域的自动备份总个数。
        # @type AutoBackupCount: Integer
        # @param ManualBackupVolume: 当前地域的手动备份总容量。
        # @type ManualBackupVolume: Integer
        # @param ManualBackupCount: 当前地域的手动备份总个数。
        # @type ManualBackupCount: Integer
        # @param RemoteBackupVolume: 异地备份总容量。
        # @type RemoteBackupVolume: Integer
        # @param RemoteBackupCount: 异地备份总个数。
        # @type RemoteBackupCount: Integer
        # @param DataBackupArchiveVolume: 当前地域归档备份总容量。
        # @type DataBackupArchiveVolume: Integer
        # @param DataBackupArchiveCount: 当前地域归档备份总个数。
        # @type DataBackupArchiveCount: Integer
        # @param DataBackupStandbyVolume: 当前地域标准存储备份总容量。
        # @type DataBackupStandbyVolume: Integer
        # @param DataBackupStandbyCount: 当前地域标准存储备份总个数。
        # @type DataBackupStandbyCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataBackupVolume, :DataBackupCount, :AutoBackupVolume, :AutoBackupCount, :ManualBackupVolume, :ManualBackupCount, :RemoteBackupVolume, :RemoteBackupCount, :DataBackupArchiveVolume, :DataBackupArchiveCount, :DataBackupStandbyVolume, :DataBackupStandbyCount, :RequestId

        def initialize(databackupvolume=nil, databackupcount=nil, autobackupvolume=nil, autobackupcount=nil, manualbackupvolume=nil, manualbackupcount=nil, remotebackupvolume=nil, remotebackupcount=nil, databackuparchivevolume=nil, databackuparchivecount=nil, databackupstandbyvolume=nil, databackupstandbycount=nil, requestid=nil)
          @DataBackupVolume = databackupvolume
          @DataBackupCount = databackupcount
          @AutoBackupVolume = autobackupvolume
          @AutoBackupCount = autobackupcount
          @ManualBackupVolume = manualbackupvolume
          @ManualBackupCount = manualbackupcount
          @RemoteBackupVolume = remotebackupvolume
          @RemoteBackupCount = remotebackupcount
          @DataBackupArchiveVolume = databackuparchivevolume
          @DataBackupArchiveCount = databackuparchivecount
          @DataBackupStandbyVolume = databackupstandbyvolume
          @DataBackupStandbyCount = databackupstandbycount
          @RequestId = requestid
        end

        def deserialize(params)
          @DataBackupVolume = params['DataBackupVolume']
          @DataBackupCount = params['DataBackupCount']
          @AutoBackupVolume = params['AutoBackupVolume']
          @AutoBackupCount = params['AutoBackupCount']
          @ManualBackupVolume = params['ManualBackupVolume']
          @ManualBackupCount = params['ManualBackupCount']
          @RemoteBackupVolume = params['RemoteBackupVolume']
          @RemoteBackupCount = params['RemoteBackupCount']
          @DataBackupArchiveVolume = params['DataBackupArchiveVolume']
          @DataBackupArchiveCount = params['DataBackupArchiveCount']
          @DataBackupStandbyVolume = params['DataBackupStandbyVolume']
          @DataBackupStandbyCount = params['DataBackupStandbyCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabases请求参数结构体
      class DescribeDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Offset: 偏移量，最小值为0。
        # @type Offset: Integer
        # @param Limit: 单次请求数量，默认值为20，最小值为1，最大值为100。
        # @type Limit: Integer
        # @param DatabaseRegexp: 匹配数据库库名的正则表达式。
        # @type DatabaseRegexp: String

        attr_accessor :InstanceId, :Offset, :Limit, :DatabaseRegexp

        def initialize(instanceid=nil, offset=nil, limit=nil, databaseregexp=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @DatabaseRegexp = databaseregexp
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DatabaseRegexp = params['DatabaseRegexp']
        end
      end

      # DescribeDatabases返回参数结构体
      class DescribeDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param Items: 返回的实例信息。
        # @type Items: Array
        # @param DatabaseList: 数据库名以及字符集
        # @type DatabaseList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :DatabaseList, :RequestId

        def initialize(totalcount=nil, items=nil, databaselist=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @DatabaseList = databaselist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Items = params['Items']
          unless params['DatabaseList'].nil?
            @DatabaseList = []
            params['DatabaseList'].each do |i|
              databaseswithcharacterlists_tmp = DatabasesWithCharacterLists.new
              databaseswithcharacterlists_tmp.deserialize(i)
              @DatabaseList << databaseswithcharacterlists_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDefaultParams请求参数结构体
      class DescribeDefaultParamsRequest < TencentCloud::Common::AbstractModel
        # @param EngineVersion: 引擎版本，目前支持 ["5.1", "5.5", "5.6", "5.7", "8.0"]
        # @type EngineVersion: String
        # @param TemplateType: 默认参数模板类型。支持值包括："HIGH_STABILITY" - 高稳定模板，"HIGH_PERFORMANCE" - 高性能模板。
        # @type TemplateType: String
        # @param EngineType: 参数模板引擎，默认值：InnoDB
        # @type EngineType: String

        attr_accessor :EngineVersion, :TemplateType, :EngineType

        def initialize(engineversion=nil, templatetype=nil, enginetype=nil)
          @EngineVersion = engineversion
          @TemplateType = templatetype
          @EngineType = enginetype
        end

        def deserialize(params)
          @EngineVersion = params['EngineVersion']
          @TemplateType = params['TemplateType']
          @EngineType = params['EngineType']
        end
      end

      # DescribeDefaultParams返回参数结构体
      class DescribeDefaultParamsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 参数个数。
        # @type TotalCount: Integer
        # @param Items: 参数详情。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              parameterdetail_tmp = ParameterDetail.new
              parameterdetail_tmp.deserialize(i)
              @Items << parameterdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeployGroupList请求参数结构体
      class DescribeDeployGroupListRequest < TencentCloud::Common::AbstractModel
        # @param DeployGroupId: 置放群组 ID。
        # @type DeployGroupId: String
        # @param DeployGroupName: 置放群组名称。
        # @type DeployGroupName: String
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :DeployGroupId, :DeployGroupName, :Limit, :Offset

        def initialize(deploygroupid=nil, deploygroupname=nil, limit=nil, offset=nil)
          @DeployGroupId = deploygroupid
          @DeployGroupName = deploygroupname
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DeployGroupId = params['DeployGroupId']
          @DeployGroupName = params['DeployGroupName']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDeployGroupList返回参数结构体
      class DescribeDeployGroupListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 符合条件的记录总数。
        # @type Total: Integer
        # @param Items: 返回列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Items, :RequestId

        def initialize(total=nil, items=nil, requestid=nil)
          @Total = total
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              deploygroupinfo_tmp = DeployGroupInfo.new
              deploygroupinfo_tmp.deserialize(i)
              @Items << deploygroupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeviceMonitorInfo请求参数结构体
      class DescribeDeviceMonitorInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param Count: 返回当天最近Count个5分钟粒度的监控数据。最小值1，最大值288，不传该参数默认返回当天所有5分钟粒度监控数据。
        # @type Count: Integer

        attr_accessor :InstanceId, :Count

        def initialize(instanceid=nil, count=nil)
          @InstanceId = instanceid
          @Count = count
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Count = params['Count']
        end
      end

      # DescribeDeviceMonitorInfo返回参数结构体
      class DescribeDeviceMonitorInfoResponse < TencentCloud::Common::AbstractModel
        # @param Cpu: 实例CPU监控数据
        # @type Cpu: :class:`Tencentcloud::Cdb.v20170320.models.DeviceCpuInfo`
        # @param Mem: 实例内存监控数据
        # @type Mem: :class:`Tencentcloud::Cdb.v20170320.models.DeviceMemInfo`
        # @param Net: 实例网络监控数据
        # @type Net: :class:`Tencentcloud::Cdb.v20170320.models.DeviceNetInfo`
        # @param Disk: 实例磁盘监控数据
        # @type Disk: :class:`Tencentcloud::Cdb.v20170320.models.DeviceDiskInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Cpu, :Mem, :Net, :Disk, :RequestId

        def initialize(cpu=nil, mem=nil, net=nil, disk=nil, requestid=nil)
          @Cpu = cpu
          @Mem = mem
          @Net = net
          @Disk = disk
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Cpu'].nil?
            @Cpu = DeviceCpuInfo.new
            @Cpu.deserialize(params['Cpu'])
          end
          unless params['Mem'].nil?
            @Mem = DeviceMemInfo.new
            @Mem.deserialize(params['Mem'])
          end
          unless params['Net'].nil?
            @Net = DeviceNetInfo.new
            @Net.deserialize(params['Net'])
          end
          unless params['Disk'].nil?
            @Disk = DeviceDiskInfo.new
            @Disk.deserialize(params['Disk'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeErrorLogData请求参数结构体
      class DescribeErrorLogDataRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param StartTime: 开始时间戳。例如 1585142640 。
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳。例如 1585142640 。
        # @type EndTime: Integer
        # @param KeyWords: 要匹配的关键字列表，最多支持15个关键字。
        # @type KeyWords: Array
        # @param Limit: 分页的返回数量，默认为100，最大为400。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param InstType: 仅在实例为主实例或者灾备实例时生效，可选值：slave，代表拉取从机的日志。
        # @type InstType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :KeyWords, :Limit, :Offset, :InstType

        def initialize(instanceid=nil, starttime=nil, endtime=nil, keywords=nil, limit=nil, offset=nil, insttype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @KeyWords = keywords
          @Limit = limit
          @Offset = offset
          @InstType = insttype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @KeyWords = params['KeyWords']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @InstType = params['InstType']
        end
      end

      # DescribeErrorLogData返回参数结构体
      class DescribeErrorLogDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param Items: 返回的记录。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              errlogitem_tmp = ErrlogItem.new
              errlogitem_tmp.deserialize(i)
              @Items << errlogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceAlarmEvents请求参数结构体
      class DescribeInstanceAlarmEventsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInstanceAlarmEvents返回参数结构体
      class DescribeInstanceAlarmEventsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceParamRecords请求参数结构体
      class DescribeInstanceParamRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值：20。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeInstanceParamRecords返回参数结构体
      class DescribeInstanceParamRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录数。
        # @type TotalCount: Integer
        # @param Items: 参数修改记录。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              paramrecord_tmp = ParamRecord.new
              paramrecord_tmp.deserialize(i)
              @Items << paramrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParams请求参数结构体
      class DescribeInstanceParamsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceParams返回参数结构体
      class DescribeInstanceParamsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例的参数总数。
        # @type TotalCount: Integer
        # @param Items: 参数详情。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              parameterdetail_tmp = ParameterDetail.new
              parameterdetail_tmp.deserialize(i)
              @Items << parameterdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceUpgradeType请求参数结构体
      class DescribeInstanceUpgradeTypeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param DstCpu: 目标实例cpu
        # @type DstCpu: Float
        # @param DstMemory: 目标实例内存
        # @type DstMemory: Integer
        # @param DstDisk: 目标实例磁盘
        # @type DstDisk: Integer
        # @param DstVersion: 目标实例版本
        # @type DstVersion: String
        # @param DstDeployMode: 目标实例部署模型
        # @type DstDeployMode: Integer
        # @param DstProtectMode: 目标实例复制类型
        # @type DstProtectMode: Integer
        # @param DstSlaveZone: 目标实例备机1可用区
        # @type DstSlaveZone: Integer
        # @param DstBackupZone: 目标实例备机2可用区
        # @type DstBackupZone: Integer
        # @param DstCdbType: 目标实例类型
        # @type DstCdbType: String
        # @param DstZoneId: 目标实例主可用区
        # @type DstZoneId: Integer
        # @param NodeDistribution: 独享集群CDB实例的节点分布情况
        # @type NodeDistribution: :class:`Tencentcloud::Cdb.v20170320.models.NodeDistribution`
        # @param ClusterTopology: 集群版的节点拓扑配置
        # @type ClusterTopology: :class:`Tencentcloud::Cdb.v20170320.models.ClusterTopology`

        attr_accessor :InstanceId, :DstCpu, :DstMemory, :DstDisk, :DstVersion, :DstDeployMode, :DstProtectMode, :DstSlaveZone, :DstBackupZone, :DstCdbType, :DstZoneId, :NodeDistribution, :ClusterTopology

        def initialize(instanceid=nil, dstcpu=nil, dstmemory=nil, dstdisk=nil, dstversion=nil, dstdeploymode=nil, dstprotectmode=nil, dstslavezone=nil, dstbackupzone=nil, dstcdbtype=nil, dstzoneid=nil, nodedistribution=nil, clustertopology=nil)
          @InstanceId = instanceid
          @DstCpu = dstcpu
          @DstMemory = dstmemory
          @DstDisk = dstdisk
          @DstVersion = dstversion
          @DstDeployMode = dstdeploymode
          @DstProtectMode = dstprotectmode
          @DstSlaveZone = dstslavezone
          @DstBackupZone = dstbackupzone
          @DstCdbType = dstcdbtype
          @DstZoneId = dstzoneid
          @NodeDistribution = nodedistribution
          @ClusterTopology = clustertopology
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DstCpu = params['DstCpu']
          @DstMemory = params['DstMemory']
          @DstDisk = params['DstDisk']
          @DstVersion = params['DstVersion']
          @DstDeployMode = params['DstDeployMode']
          @DstProtectMode = params['DstProtectMode']
          @DstSlaveZone = params['DstSlaveZone']
          @DstBackupZone = params['DstBackupZone']
          @DstCdbType = params['DstCdbType']
          @DstZoneId = params['DstZoneId']
          unless params['NodeDistribution'].nil?
            @NodeDistribution = NodeDistribution.new
            @NodeDistribution.deserialize(params['NodeDistribution'])
          end
          unless params['ClusterTopology'].nil?
            @ClusterTopology = ClusterTopology.new
            @ClusterTopology.deserialize(params['ClusterTopology'])
          end
        end
      end

      # DescribeInstanceUpgradeType返回参数结构体
      class DescribeInstanceUpgradeTypeResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param UpgradeType: 实例升级类型
        # @type UpgradeType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :UpgradeType, :RequestId

        def initialize(instanceid=nil, upgradetype=nil, requestid=nil)
          @InstanceId = instanceid
          @UpgradeType = upgradetype
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UpgradeType = params['UpgradeType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLocalBinlogConfig请求参数结构体
      class DescribeLocalBinlogConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeLocalBinlogConfig返回参数结构体
      class DescribeLocalBinlogConfigResponse < TencentCloud::Common::AbstractModel
        # @param LocalBinlogConfig: 实例binlog保留策略。
        # @type LocalBinlogConfig: :class:`Tencentcloud::Cdb.v20170320.models.LocalBinlogConfig`
        # @param LocalBinlogConfigDefault: 该地域默认binlog保留策略。
        # @type LocalBinlogConfigDefault: :class:`Tencentcloud::Cdb.v20170320.models.LocalBinlogConfigDefault`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LocalBinlogConfig, :LocalBinlogConfigDefault, :RequestId

        def initialize(localbinlogconfig=nil, localbinlogconfigdefault=nil, requestid=nil)
          @LocalBinlogConfig = localbinlogconfig
          @LocalBinlogConfigDefault = localbinlogconfigdefault
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LocalBinlogConfig'].nil?
            @LocalBinlogConfig = LocalBinlogConfig.new
            @LocalBinlogConfig.deserialize(params['LocalBinlogConfig'])
          end
          unless params['LocalBinlogConfigDefault'].nil?
            @LocalBinlogConfigDefault = LocalBinlogConfigDefault.new
            @LocalBinlogConfigDefault.deserialize(params['LocalBinlogConfigDefault'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeParamTemplateInfo请求参数结构体
      class DescribeParamTemplateInfoRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板 ID。
        # @type TemplateId: Integer

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeParamTemplateInfo返回参数结构体
      class DescribeParamTemplateInfoResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板 ID。
        # @type TemplateId: Integer
        # @param Name: 参数模板名称。
        # @type Name: String
        # @param EngineVersion: 参数模板对应实例版本
        # @type EngineVersion: String
        # @param TotalCount: 参数模板中的参数数量
        # @type TotalCount: Integer
        # @param Items: 参数详情
        # @type Items: Array
        # @param Description: 参数模板描述
        # @type Description: String
        # @param TemplateType: 参数模板类型。支持值包括："HIGH_STABILITY" - 高稳定模板，"HIGH_PERFORMANCE" - 高性能模板。
        # @type TemplateType: String
        # @param EngineType: 参数模板引擎。支持值包括："InnoDB"，"RocksDB"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :Name, :EngineVersion, :TotalCount, :Items, :Description, :TemplateType, :EngineType, :RequestId

        def initialize(templateid=nil, name=nil, engineversion=nil, totalcount=nil, items=nil, description=nil, templatetype=nil, enginetype=nil, requestid=nil)
          @TemplateId = templateid
          @Name = name
          @EngineVersion = engineversion
          @TotalCount = totalcount
          @Items = items
          @Description = description
          @TemplateType = templatetype
          @EngineType = enginetype
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Name = params['Name']
          @EngineVersion = params['EngineVersion']
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              parameterdetail_tmp = ParameterDetail.new
              parameterdetail_tmp.deserialize(i)
              @Items << parameterdetail_tmp
            end
          end
          @Description = params['Description']
          @TemplateType = params['TemplateType']
          @EngineType = params['EngineType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeParamTemplates请求参数结构体
      class DescribeParamTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param EngineVersions: 引擎版本，缺省则查询所有
        # @type EngineVersions: Array
        # @param EngineTypes: 引擎类型，缺省则查询所有
        # @type EngineTypes: Array
        # @param TemplateNames: 模板名称，缺省则查询所有
        # @type TemplateNames: Array
        # @param TemplateIds: 模板id，缺省则查询所有
        # @type TemplateIds: Array

        attr_accessor :EngineVersions, :EngineTypes, :TemplateNames, :TemplateIds

        def initialize(engineversions=nil, enginetypes=nil, templatenames=nil, templateids=nil)
          @EngineVersions = engineversions
          @EngineTypes = enginetypes
          @TemplateNames = templatenames
          @TemplateIds = templateids
        end

        def deserialize(params)
          @EngineVersions = params['EngineVersions']
          @EngineTypes = params['EngineTypes']
          @TemplateNames = params['TemplateNames']
          @TemplateIds = params['TemplateIds']
        end
      end

      # DescribeParamTemplates返回参数结构体
      class DescribeParamTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该用户的参数模板数量。
        # @type TotalCount: Integer
        # @param Items: 参数模板详情。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              paramtemplateinfo_tmp = ParamTemplateInfo.new
              paramtemplateinfo_tmp.deserialize(i)
              @Items << paramtemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectSecurityGroups请求参数结构体
      class DescribeProjectSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer

        attr_accessor :ProjectId

        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProjectSecurityGroups返回参数结构体
      class DescribeProjectSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组详情。
        # @type Groups: Array
        # @param TotalCount: 安全组规则数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :TotalCount, :RequestId

        def initialize(groups=nil, totalcount=nil, requestid=nil)
          @Groups = groups
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              securitygroup_tmp = SecurityGroup.new
              securitygroup_tmp.deserialize(i)
              @Groups << securitygroup_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxyCustomConf请求参数结构体
      class DescribeProxyCustomConfRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Offset: 分页
        # @type Offset: Integer
        # @param Limit: 限制
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeProxyCustomConf返回参数结构体
      class DescribeProxyCustomConfResponse < TencentCloud::Common::AbstractModel
        # @param Count: 代理配置数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Count: Integer
        # @param CustomConf: 代理配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomConf: :class:`Tencentcloud::Cdb.v20170320.models.CustomConfig`
        # @param WeightRule: 权重限制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeightRule: :class:`Tencentcloud::Cdb.v20170320.models.Rule`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :CustomConf, :WeightRule, :RequestId

        def initialize(count=nil, customconf=nil, weightrule=nil, requestid=nil)
          @Count = count
          @CustomConf = customconf
          @WeightRule = weightrule
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['CustomConf'].nil?
            @CustomConf = CustomConfig.new
            @CustomConf.deserialize(params['CustomConf'])
          end
          unless params['WeightRule'].nil?
            @WeightRule = Rule.new
            @WeightRule.deserialize(params['WeightRule'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxySupportParam请求参数结构体
      class DescribeProxySupportParamRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeProxySupportParam返回参数结构体
      class DescribeProxySupportParamResponse < TencentCloud::Common::AbstractModel
        # @param ProxyVersion: 支持最大代理版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyVersion: String
        # @param SupportPool: 是否支持连接池
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportPool: Boolean
        # @param PoolMin: 连接池最小值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoolMin: Integer
        # @param PoolMax: 连接池最大值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoolMax: Integer
        # @param SupportTransSplit: 是否支持事务拆分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportTransSplit: Boolean
        # @param SupportPoolMinVersion: 支持连接池的最小代理版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportPoolMinVersion: String
        # @param SupportTransSplitMinVersion: 支持事务拆分的最小代理版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportTransSplitMinVersion: String
        # @param SupportReadOnly: 是否支持设置只读
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportReadOnly: Boolean
        # @param SupportAutoLoadBalance: 是否自动均衡负载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportAutoLoadBalance: Boolean
        # @param SupportAccessMode: 是否支持接入模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportAccessMode: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyVersion, :SupportPool, :PoolMin, :PoolMax, :SupportTransSplit, :SupportPoolMinVersion, :SupportTransSplitMinVersion, :SupportReadOnly, :SupportAutoLoadBalance, :SupportAccessMode, :RequestId

        def initialize(proxyversion=nil, supportpool=nil, poolmin=nil, poolmax=nil, supporttranssplit=nil, supportpoolminversion=nil, supporttranssplitminversion=nil, supportreadonly=nil, supportautoloadbalance=nil, supportaccessmode=nil, requestid=nil)
          @ProxyVersion = proxyversion
          @SupportPool = supportpool
          @PoolMin = poolmin
          @PoolMax = poolmax
          @SupportTransSplit = supporttranssplit
          @SupportPoolMinVersion = supportpoolminversion
          @SupportTransSplitMinVersion = supporttranssplitminversion
          @SupportReadOnly = supportreadonly
          @SupportAutoLoadBalance = supportautoloadbalance
          @SupportAccessMode = supportaccessmode
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyVersion = params['ProxyVersion']
          @SupportPool = params['SupportPool']
          @PoolMin = params['PoolMin']
          @PoolMax = params['PoolMax']
          @SupportTransSplit = params['SupportTransSplit']
          @SupportPoolMinVersion = params['SupportPoolMinVersion']
          @SupportTransSplitMinVersion = params['SupportTransSplitMinVersion']
          @SupportReadOnly = params['SupportReadOnly']
          @SupportAutoLoadBalance = params['SupportAutoLoadBalance']
          @SupportAccessMode = params['SupportAccessMode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRemoteBackupConfig请求参数结构体
      class DescribeRemoteBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeRemoteBackupConfig返回参数结构体
      class DescribeRemoteBackupConfigResponse < TencentCloud::Common::AbstractModel
        # @param ExpireDays: 异地备份保留时间，单位为天
        # @type ExpireDays: Integer
        # @param RemoteBackupSave: 异地数据备份开关，off - 关闭异地备份，on-开启异地备份
        # @type RemoteBackupSave: String
        # @param RemoteBinlogSave: 异地日志备份开关，off - 关闭异地备份，on-开启异地备份，只有在参数RemoteBackupSave为on时，RemoteBinlogSave参数才可设置为on
        # @type RemoteBinlogSave: String
        # @param RemoteRegion: 用户已设置异地备份地域列表
        # @type RemoteRegion: Array
        # @param RegionList: 用户可设置异地备份地域列表
        # @type RegionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ExpireDays, :RemoteBackupSave, :RemoteBinlogSave, :RemoteRegion, :RegionList, :RequestId

        def initialize(expiredays=nil, remotebackupsave=nil, remotebinlogsave=nil, remoteregion=nil, regionlist=nil, requestid=nil)
          @ExpireDays = expiredays
          @RemoteBackupSave = remotebackupsave
          @RemoteBinlogSave = remotebinlogsave
          @RemoteRegion = remoteregion
          @RegionList = regionlist
          @RequestId = requestid
        end

        def deserialize(params)
          @ExpireDays = params['ExpireDays']
          @RemoteBackupSave = params['RemoteBackupSave']
          @RemoteBinlogSave = params['RemoteBinlogSave']
          @RemoteRegion = params['RemoteRegion']
          @RegionList = params['RegionList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoGroups请求参数结构体
      class DescribeRoGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-c1nl9rpv或者cdb-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeRoGroups返回参数结构体
      class DescribeRoGroupsResponse < TencentCloud::Common::AbstractModel
        # @param RoGroups: RO组信息数组，一个实例可关联多个RO组。
        # @type RoGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RoGroups, :RequestId

        def initialize(rogroups=nil, requestid=nil)
          @RoGroups = rogroups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RoGroups'].nil?
            @RoGroups = []
            params['RoGroups'].each do |i|
              rogroup_tmp = RoGroup.new
              rogroup_tmp.deserialize(i)
              @RoGroups << rogroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoMinScale请求参数结构体
      class DescribeRoMinScaleRequest < TencentCloud::Common::AbstractModel
        # @param RoInstanceId: 只读实例ID，格式如：cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同，该参数与MasterInstanceId参数不能同时为空。
        # @type RoInstanceId: String
        # @param MasterInstanceId: 主实例ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同，该参数与RoInstanceId参数不能同时为空。注意，当传入参数包含RoInstanceId时，返回值为只读实例升级时的最小规格；当传入参数只包含MasterInstanceId时，返回值为只读实例购买时的最小规格。
        # @type MasterInstanceId: String

        attr_accessor :RoInstanceId, :MasterInstanceId

        def initialize(roinstanceid=nil, masterinstanceid=nil)
          @RoInstanceId = roinstanceid
          @MasterInstanceId = masterinstanceid
        end

        def deserialize(params)
          @RoInstanceId = params['RoInstanceId']
          @MasterInstanceId = params['MasterInstanceId']
        end
      end

      # DescribeRoMinScale返回参数结构体
      class DescribeRoMinScaleResponse < TencentCloud::Common::AbstractModel
        # @param Memory: 内存规格大小, 单位为：MB。
        # @type Memory: Integer
        # @param Volume: 磁盘规格大小, 单位为：GB。
        # @type Volume: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Memory, :Volume, :RequestId

        def initialize(memory=nil, volume=nil, requestid=nil)
          @Memory = memory
          @Volume = volume
          @RequestId = requestid
        end

        def deserialize(params)
          @Memory = params['Memory']
          @Volume = params['Volume']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackRangeTime请求参数结构体
      class DescribeRollbackRangeTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表，单个实例 ID 的格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceIds: Array
        # @param IsRemoteZone: 克隆实例与源实例是否在异地可用区，是:"true"，否:"false"
        # @type IsRemoteZone: String
        # @param BackupRegion: 克隆实例与源实例不在同一地域时需填写克隆实例所在地域，例："ap-guangzhou"
        # @type BackupRegion: String

        attr_accessor :InstanceIds, :IsRemoteZone, :BackupRegion

        def initialize(instanceids=nil, isremotezone=nil, backupregion=nil)
          @InstanceIds = instanceids
          @IsRemoteZone = isremotezone
          @BackupRegion = backupregion
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @IsRemoteZone = params['IsRemoteZone']
          @BackupRegion = params['BackupRegion']
        end
      end

      # DescribeRollbackRangeTime返回参数结构体
      class DescribeRollbackRangeTimeResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param Items: 返回的参数信息。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              instancerollbackrangetime_tmp = InstanceRollbackRangeTime.new
              instancerollbackrangetime_tmp.deserialize(i)
              @Items << instancerollbackrangetime_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackTaskDetail请求参数结构体
      class DescribeRollbackTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872)。
        # @type InstanceId: String
        # @param AsyncRequestId: 异步任务 ID。
        # @type AsyncRequestId: String
        # @param Limit: 分页参数，每次请求返回的记录数。默认值为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量。默认为 0。
        # @type Offset: Integer

        attr_accessor :InstanceId, :AsyncRequestId, :Limit, :Offset

        def initialize(instanceid=nil, asyncrequestid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @AsyncRequestId = asyncrequestid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AsyncRequestId = params['AsyncRequestId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeRollbackTaskDetail返回参数结构体
      class DescribeRollbackTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param Items: 回档任务详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              rollbacktask_tmp = RollbackTask.new
              rollbacktask_tmp.deserialize(i)
              @Items << rollbacktask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSSLStatus请求参数结构体
      class DescribeSSLStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。只读组 ID为空时必填。
        # @type InstanceId: String
        # @param RoGroupId: 只读组 ID。实例 ID为空时必填。
        # @type RoGroupId: String

        attr_accessor :InstanceId, :RoGroupId

        def initialize(instanceid=nil, rogroupid=nil)
          @InstanceId = instanceid
          @RoGroupId = rogroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RoGroupId = params['RoGroupId']
        end
      end

      # DescribeSSLStatus返回参数结构体
      class DescribeSSLStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 是否开通 SSL 。ON 代表开通 ，OFF 代表未开通。
        # @type Status: String
        # @param Url: 证书下载链接。
        # @type Url: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Url, :RequestId

        def initialize(status=nil, url=nil, requestid=nil)
          @Status = status
          @Url = url
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Url = params['Url']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLogData请求参数结构体
      class DescribeSlowLogDataRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param StartTime: 开始时间戳。例如 1585142640 。
        # @type StartTime: Integer
        # @param EndTime: 结束时间戳。例如 1585142640 。
        # @type EndTime: Integer
        # @param UserHosts: 客户端 Host 列表。
        # @type UserHosts: Array
        # @param UserNames: 客户端 用户名 列表。
        # @type UserNames: Array
        # @param DataBases: 访问的 数据库 列表。
        # @type DataBases: Array
        # @param SortBy: 排序字段。当前支持：Timestamp,QueryTime,LockTime,RowsExamined,RowsSent 。
        # @type SortBy: String
        # @param OrderBy: 升序还是降序排列。当前支持：ASC,DESC 。
        # @type OrderBy: String
        # @param Offset: 偏移量，默认为0，最大为9999。
        # @type Offset: Integer
        # @param Limit: 一次性返回的记录数量，默认为100，最大为400。
        # @type Limit: Integer
        # @param InstType: 仅在实例为主实例或者灾备实例时生效，可选值：slave，代表拉取从机的日志。
        # @type InstType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :UserHosts, :UserNames, :DataBases, :SortBy, :OrderBy, :Offset, :Limit, :InstType

        def initialize(instanceid=nil, starttime=nil, endtime=nil, userhosts=nil, usernames=nil, databases=nil, sortby=nil, orderby=nil, offset=nil, limit=nil, insttype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @UserHosts = userhosts
          @UserNames = usernames
          @DataBases = databases
          @SortBy = sortby
          @OrderBy = orderby
          @Offset = offset
          @Limit = limit
          @InstType = insttype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserHosts = params['UserHosts']
          @UserNames = params['UserNames']
          @DataBases = params['DataBases']
          @SortBy = params['SortBy']
          @OrderBy = params['OrderBy']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstType = params['InstType']
        end
      end

      # DescribeSlowLogData返回参数结构体
      class DescribeSlowLogDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param Items: 查询到的记录。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              slowlogitem_tmp = SlowLogItem.new
              slowlogitem_tmp.deserialize(i)
              @Items << slowlogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLogs请求参数结构体
      class DescribeSlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Offset: 偏移量，默认值为0，最小值为0。
        # @type Offset: Integer
        # @param Limit: 分页大小，默认值为20，最小值为1，最大值为100。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Offset, :Limit

        def initialize(instanceid=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSlowLogs返回参数结构体
      class DescribeSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的慢查询日志总数。
        # @type TotalCount: Integer
        # @param Items: 符合查询条件的慢查询日志详情。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              slowloginfo_tmp = SlowLogInfo.new
              slowloginfo_tmp.deserialize(i)
              @Items << slowloginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSupportedPrivileges请求参数结构体
      class DescribeSupportedPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeSupportedPrivileges返回参数结构体
      class DescribeSupportedPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param GlobalSupportedPrivileges: 实例支持的全局权限。
        # @type GlobalSupportedPrivileges: Array
        # @param DatabaseSupportedPrivileges: 实例支持的数据库权限。
        # @type DatabaseSupportedPrivileges: Array
        # @param TableSupportedPrivileges: 实例支持的数据库表权限。
        # @type TableSupportedPrivileges: Array
        # @param ColumnSupportedPrivileges: 实例支持的数据库列权限。
        # @type ColumnSupportedPrivileges: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GlobalSupportedPrivileges, :DatabaseSupportedPrivileges, :TableSupportedPrivileges, :ColumnSupportedPrivileges, :RequestId

        def initialize(globalsupportedprivileges=nil, databasesupportedprivileges=nil, tablesupportedprivileges=nil, columnsupportedprivileges=nil, requestid=nil)
          @GlobalSupportedPrivileges = globalsupportedprivileges
          @DatabaseSupportedPrivileges = databasesupportedprivileges
          @TableSupportedPrivileges = tablesupportedprivileges
          @ColumnSupportedPrivileges = columnsupportedprivileges
          @RequestId = requestid
        end

        def deserialize(params)
          @GlobalSupportedPrivileges = params['GlobalSupportedPrivileges']
          @DatabaseSupportedPrivileges = params['DatabaseSupportedPrivileges']
          @TableSupportedPrivileges = params['TableSupportedPrivileges']
          @ColumnSupportedPrivileges = params['ColumnSupportedPrivileges']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTables请求参数结构体
      class DescribeTablesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Database: 数据库的名称。
        # @type Database: String
        # @param Offset: 记录偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 单次请求返回的数量，默认值为20，最大值为2000。
        # @type Limit: Integer
        # @param TableRegexp: 匹配数据库表名的正则表达式，规则同 MySQL 官网
        # @type TableRegexp: String

        attr_accessor :InstanceId, :Database, :Offset, :Limit, :TableRegexp

        def initialize(instanceid=nil, database=nil, offset=nil, limit=nil, tableregexp=nil)
          @InstanceId = instanceid
          @Database = database
          @Offset = offset
          @Limit = limit
          @TableRegexp = tableregexp
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Database = params['Database']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TableRegexp = params['TableRegexp']
        end
      end

      # DescribeTables返回参数结构体
      class DescribeTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的数据库表总数。
        # @type TotalCount: Integer
        # @param Items: 返回的数据库表信息。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTagsOfInstanceIds请求参数结构体
      class DescribeTagsOfInstanceIdsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例列表。
        # @type InstanceIds: Array
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param Limit: 分页大小。
        # @type Limit: Integer

        attr_accessor :InstanceIds, :Offset, :Limit

        def initialize(instanceids=nil, offset=nil, limit=nil)
          @InstanceIds = instanceids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTagsOfInstanceIds返回参数结构体
      class DescribeTagsOfInstanceIdsResponse < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param Limit: 分页大小。
        # @type Limit: Integer
        # @param Rows: 实例标签信息。
        # @type Rows: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Offset, :Limit, :Rows, :RequestId

        def initialize(offset=nil, limit=nil, rows=nil, requestid=nil)
          @Offset = offset
          @Limit = limit
          @Rows = rows
          @RequestId = requestid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Rows'].nil?
            @Rows = []
            params['Rows'].each do |i|
              tagsinfoofinstance_tmp = TagsInfoOfInstance.new
              tagsinfoofinstance_tmp.deserialize(i)
              @Rows << tagsinfoofinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String
        # @param AsyncRequestId: 异步任务请求 ID，执行云数据库相关操作返回的 AsyncRequestId。
        # @type AsyncRequestId: String
        # @param TaskTypes: 任务类型，不传值则查询所有任务类型，支持的值包括：
        # 1 - 数据库回档；
        # 2 - SQL操作；
        # 3 - 数据导入；
        # 5 - 参数设置；
        # 6 - 初始化云数据库实例；
        # 7 - 重启云数据库实例；
        # 8 - 开启云数据库实例GTID；
        # 9 - 只读实例升级；
        # 10 - 数据库批量回档；
        # 11 - 主实例升级；
        # 12 - 删除云数据库库表；
        # 13 - 灾备实例提升为主。
        # @type TaskTypes: Array
        # @param TaskStatus: 任务状态，不传值则查询所有任务状态，支持的值包括：
        # -1 - 未定义；
        # 0 - 初始化；
        # 1 - 运行中；
        # 2 - 执行成功；
        # 3 - 执行失败；
        # 4 - 已终止；
        # 5 - 已删除；
        # 6 - 已暂停。
        # @type TaskStatus: Array
        # @param StartTimeBegin: 第一个任务的开始时间，用于范围查询，时间格式如：2017-12-31 10:40:01。
        # @type StartTimeBegin: String
        # @param StartTimeEnd: 最后一个任务的开始时间，用于范围查询，时间格式如：2017-12-31 10:40:01。
        # @type StartTimeEnd: String
        # @param Offset: 记录偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 单次请求返回的数量，默认值为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :InstanceId, :AsyncRequestId, :TaskTypes, :TaskStatus, :StartTimeBegin, :StartTimeEnd, :Offset, :Limit

        def initialize(instanceid=nil, asyncrequestid=nil, tasktypes=nil, taskstatus=nil, starttimebegin=nil, starttimeend=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @AsyncRequestId = asyncrequestid
          @TaskTypes = tasktypes
          @TaskStatus = taskstatus
          @StartTimeBegin = starttimebegin
          @StartTimeEnd = starttimeend
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AsyncRequestId = params['AsyncRequestId']
          @TaskTypes = params['TaskTypes']
          @TaskStatus = params['TaskStatus']
          @StartTimeBegin = params['StartTimeBegin']
          @StartTimeEnd = params['StartTimeEnd']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param Items: 返回的实例任务信息。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              taskdetail_tmp = TaskDetail.new
              taskdetail_tmp.deserialize(i)
              @Items << taskdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTimeWindow请求参数结构体
      class DescribeTimeWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-c1nl9rpv或者cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeTimeWindow返回参数结构体
      class DescribeTimeWindowResponse < TencentCloud::Common::AbstractModel
        # @param Monday: 星期一的可维护时间列表。
        # @type Monday: Array
        # @param Tuesday: 星期二的可维护时间列表。
        # @type Tuesday: Array
        # @param Wednesday: 星期三的可维护时间列表。
        # @type Wednesday: Array
        # @param Thursday: 星期四的可维护时间列表。
        # @type Thursday: Array
        # @param Friday: 星期五的可维护时间列表。
        # @type Friday: Array
        # @param Saturday: 星期六的可维护时间列表。
        # @type Saturday: Array
        # @param Sunday: 星期日的可维护时间列表。
        # @type Sunday: Array
        # @param MaxDelayTime: 最大数据延迟阈值
        # @type MaxDelayTime: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday, :Sunday, :MaxDelayTime, :RequestId

        def initialize(monday=nil, tuesday=nil, wednesday=nil, thursday=nil, friday=nil, saturday=nil, sunday=nil, maxdelaytime=nil, requestid=nil)
          @Monday = monday
          @Tuesday = tuesday
          @Wednesday = wednesday
          @Thursday = thursday
          @Friday = friday
          @Saturday = saturday
          @Sunday = sunday
          @MaxDelayTime = maxdelaytime
          @RequestId = requestid
        end

        def deserialize(params)
          @Monday = params['Monday']
          @Tuesday = params['Tuesday']
          @Wednesday = params['Wednesday']
          @Thursday = params['Thursday']
          @Friday = params['Friday']
          @Saturday = params['Saturday']
          @Sunday = params['Sunday']
          @MaxDelayTime = params['MaxDelayTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUploadedFiles请求参数结构体
      class DescribeUploadedFilesRequest < TencentCloud::Common::AbstractModel
        # @param Path: 文件路径。该字段应填用户主账号的OwnerUin信息。
        # @type Path: String
        # @param Offset: 记录偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 单次请求返回的数量，默认值为20。
        # @type Limit: Integer

        attr_accessor :Path, :Offset, :Limit

        def initialize(path=nil, offset=nil, limit=nil)
          @Path = path
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Path = params['Path']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeUploadedFiles返回参数结构体
      class DescribeUploadedFilesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的SQL文件总数。
        # @type TotalCount: Integer
        # @param Items: 返回的SQL文件列表。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Items, :RequestId

        def initialize(totalcount=nil, items=nil, requestid=nil)
          @TotalCount = totalcount
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              sqlfileinfo_tmp = SqlFileInfo.new
              sqlfileinfo_tmp.deserialize(i)
              @Items << sqlfileinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      #  CPU负载
      class DeviceCpuInfo < TencentCloud::Common::AbstractModel
        # @param Rate: 实例CPU平均使用率
        # @type Rate: Array
        # @param Load: 实例CPU监控数据
        # @type Load: Array

        attr_accessor :Rate, :Load

        def initialize(rate=nil, load=nil)
          @Rate = rate
          @Load = load
        end

        def deserialize(params)
          unless params['Rate'].nil?
            @Rate = []
            params['Rate'].each do |i|
              devicecpurateinfo_tmp = DeviceCpuRateInfo.new
              devicecpurateinfo_tmp.deserialize(i)
              @Rate << devicecpurateinfo_tmp
            end
          end
          @Load = params['Load']
        end
      end

      # 实例CPU平均使用率
      class DeviceCpuRateInfo < TencentCloud::Common::AbstractModel
        # @param CpuCore: Cpu核编号
        # @type CpuCore: Integer
        # @param Rate: Cpu使用率
        # @type Rate: Array

        attr_accessor :CpuCore, :Rate

        def initialize(cpucore=nil, rate=nil)
          @CpuCore = cpucore
          @Rate = rate
        end

        def deserialize(params)
          @CpuCore = params['CpuCore']
          @Rate = params['Rate']
        end
      end

      # 实例磁盘监控数据
      class DeviceDiskInfo < TencentCloud::Common::AbstractModel
        # @param IoRatioPerSec: 平均每秒有百分之几的时间用于IO操作
        # @type IoRatioPerSec: Array
        # @param IoWaitTime: 平均每次设备I/O操作的等待时间*100，单位为毫秒。例如：该值为201，表示平均每次I/O操作等待时间为：201/100=2.1毫秒
        # @type IoWaitTime: Array
        # @param Read: 磁盘平均每秒完成的读操作次数总和*100。例如：该值为2002，表示磁盘平均每秒完成读操作为：2002/100=20.2次
        # @type Read: Array
        # @param Write: 磁盘平均每秒完成的写操作次数总和*100。例如：该值为30001，表示磁盘平均每秒完成写操作为：30001/100=300.01次
        # @type Write: Array
        # @param CapacityRatio: 磁盘空间容量，每两个一组，第一个为已使用容量，第二个为磁盘总容量
        # @type CapacityRatio: Array

        attr_accessor :IoRatioPerSec, :IoWaitTime, :Read, :Write, :CapacityRatio

        def initialize(ioratiopersec=nil, iowaittime=nil, read=nil, write=nil, capacityratio=nil)
          @IoRatioPerSec = ioratiopersec
          @IoWaitTime = iowaittime
          @Read = read
          @Write = write
          @CapacityRatio = capacityratio
        end

        def deserialize(params)
          @IoRatioPerSec = params['IoRatioPerSec']
          @IoWaitTime = params['IoWaitTime']
          @Read = params['Read']
          @Write = params['Write']
          @CapacityRatio = params['CapacityRatio']
        end
      end

      # 实例所在物理机内存监控信息
      class DeviceMemInfo < TencentCloud::Common::AbstractModel
        # @param Total: 总内存大小。free命令中Mem:一行total的值,单位：KB
        # @type Total: Array
        # @param Used: 已使用内存。free命令中Mem:一行used的值,单位：KB
        # @type Used: Array

        attr_accessor :Total, :Used

        def initialize(total=nil, used=nil)
          @Total = total
          @Used = used
        end

        def deserialize(params)
          @Total = params['Total']
          @Used = params['Used']
        end
      end

      # 实例所在物理机网络监控信息
      class DeviceNetInfo < TencentCloud::Common::AbstractModel
        # @param Conn: tcp连接数
        # @type Conn: Array
        # @param PackageIn: 网卡入包量，单位：个/秒
        # @type PackageIn: Array
        # @param PackageOut: 网卡出包量，单位：个/秒
        # @type PackageOut: Array
        # @param FlowIn: 入流量，单位：kbps
        # @type FlowIn: Array
        # @param FlowOut: 出流量，单位：kbps
        # @type FlowOut: Array

        attr_accessor :Conn, :PackageIn, :PackageOut, :FlowIn, :FlowOut

        def initialize(conn=nil, packagein=nil, packageout=nil, flowin=nil, flowout=nil)
          @Conn = conn
          @PackageIn = packagein
          @PackageOut = packageout
          @FlowIn = flowin
          @FlowOut = flowout
        end

        def deserialize(params)
          @Conn = params['Conn']
          @PackageIn = params['PackageIn']
          @PackageOut = params['PackageOut']
          @FlowIn = params['FlowIn']
          @FlowOut = params['FlowOut']
        end
      end

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组 ID。
        # @type SecurityGroupId: String
        # @param InstanceIds: 实例 ID 列表，一个或者多个实例 ID 组成的数组。
        # @type InstanceIds: Array
        # @param ForReadonlyInstance: 当传入只读实例ID时，默认操作的是对应只读组的安全组。如果需要操作只读实例ID的安全组， 需要将该入参置为True
        # @type ForReadonlyInstance: Boolean

        attr_accessor :SecurityGroupId, :InstanceIds, :ForReadonlyInstance

        def initialize(securitygroupid=nil, instanceids=nil, forreadonlyinstance=nil)
          @SecurityGroupId = securitygroupid
          @InstanceIds = instanceids
          @ForReadonlyInstance = forreadonlyinstance
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @InstanceIds = params['InstanceIds']
          @ForReadonlyInstance = params['ForReadonlyInstance']
        end
      end

      # DisassociateSecurityGroups返回参数结构体
      class DisassociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 灾备实例信息
      class DrInfo < TencentCloud::Common::AbstractModel
        # @param Status: 灾备实例状态
        # @type Status: Integer
        # @param Zone: 可用区信息
        # @type Zone: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Region: 地域信息
        # @type Region: String
        # @param SyncStatus: 实例同步状态。可能的返回值为：
        # 0 - 灾备未同步；
        # 1 - 灾备同步中；
        # 2 - 灾备同步成功；
        # 3 - 灾备同步失败；
        # 4 - 灾备同步修复中。
        # @type SyncStatus: Integer
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceType: 实例类型
        # @type InstanceType: Integer

        attr_accessor :Status, :Zone, :InstanceId, :Region, :SyncStatus, :InstanceName, :InstanceType

        def initialize(status=nil, zone=nil, instanceid=nil, region=nil, syncstatus=nil, instancename=nil, instancetype=nil)
          @Status = status
          @Zone = zone
          @InstanceId = instanceid
          @Region = region
          @SyncStatus = syncstatus
          @InstanceName = instancename
          @InstanceType = instancetype
        end

        def deserialize(params)
          @Status = params['Status']
          @Zone = params['Zone']
          @InstanceId = params['InstanceId']
          @Region = params['Region']
          @SyncStatus = params['SyncStatus']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
        end
      end

      # 结构化的错误日志详情
      class ErrlogItem < TencentCloud::Common::AbstractModel
        # @param Timestamp: 错误发生时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param Content: 错误详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Timestamp, :Content

        def initialize(timestamp=nil, content=nil)
          @Timestamp = timestamp
          @Content = content
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Content = params['Content']
        end
      end

      # 导入任务记录
      class ImportRecord < TencentCloud::Common::AbstractModel
        # @param Status: 状态值
        # @type Status: Integer
        # @param Code: 状态值
        # @type Code: Integer
        # @param CostTime: 执行时间
        # @type CostTime: Integer
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param WorkId: 后端任务ID
        # @type WorkId: String
        # @param FileName: 导入文件名
        # @type FileName: String
        # @param Process: 执行进度
        # @type Process: Integer
        # @param CreateTime: 任务创建时间
        # @type CreateTime: String
        # @param FileSize: 文件大小
        # @type FileSize: String
        # @param Message: 任务执行信息
        # @type Message: String
        # @param JobId: 任务ID
        # @type JobId: Integer
        # @param DbName: 导入库表名
        # @type DbName: String
        # @param AsyncRequestId: 异步任务的请求ID
        # @type AsyncRequestId: String

        attr_accessor :Status, :Code, :CostTime, :InstanceId, :WorkId, :FileName, :Process, :CreateTime, :FileSize, :Message, :JobId, :DbName, :AsyncRequestId

        def initialize(status=nil, code=nil, costtime=nil, instanceid=nil, workid=nil, filename=nil, process=nil, createtime=nil, filesize=nil, message=nil, jobid=nil, dbname=nil, asyncrequestid=nil)
          @Status = status
          @Code = code
          @CostTime = costtime
          @InstanceId = instanceid
          @WorkId = workid
          @FileName = filename
          @Process = process
          @CreateTime = createtime
          @FileSize = filesize
          @Message = message
          @JobId = jobid
          @DbName = dbname
          @AsyncRequestId = asyncrequestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Code = params['Code']
          @CostTime = params['CostTime']
          @InstanceId = params['InstanceId']
          @WorkId = params['WorkId']
          @FileName = params['FileName']
          @Process = params['Process']
          @CreateTime = params['CreateTime']
          @FileSize = params['FileSize']
          @Message = params['Message']
          @JobId = params['JobId']
          @DbName = params['DbName']
          @AsyncRequestId = params['AsyncRequestId']
        end
      end

      # 安全组入站规则
      class Inbound < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT 或者 DROP
        # @type Action: String
        # @param CidrIp: 来源 IP 或 IP 段，例如192.168.0.0/16
        # @type CidrIp: String
        # @param PortRange: 端口
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持 UDP、TCP 等
        # @type IpProtocol: String
        # @param Dir: 规则限定的方向，进站规则为 INPUT
        # @type Dir: String
        # @param AddressModule: 地址模块
        # @type AddressModule: String
        # @param Desc: 规则描述
        # @type Desc: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol, :Dir, :AddressModule, :Desc

        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil, dir=nil, addressmodule=nil, desc=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
          @Dir = dir
          @AddressModule = addressmodule
          @Desc = desc
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
          @Dir = params['Dir']
          @AddressModule = params['AddressModule']
          @Desc = params['Desc']
        end
      end

      # InitDBInstances请求参数结构体
      class InitDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同，可使用[查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceIds: Array
        # @param NewPassword: 实例新的密码，密码规则：8-64个字符，至少包含字母、数字、字符（支持的字符：!@#$%^*()）中的两种。
        # @type NewPassword: String
        # @param Parameters: 实例的参数列表，目前支持设置“character_set_server”、“lower_case_table_names”参数。其中，“character_set_server”参数可选值为["utf8","latin1","gbk","utf8mb4"]；“lower_case_table_names”可选值为[“0”,“1”]。
        # @type Parameters: Array
        # @param Vport: 实例的端口，取值范围为[1024, 65535]
        # @type Vport: Integer

        attr_accessor :InstanceIds, :NewPassword, :Parameters, :Vport

        def initialize(instanceids=nil, newpassword=nil, parameters=nil, vport=nil)
          @InstanceIds = instanceids
          @NewPassword = newpassword
          @Parameters = parameters
          @Vport = vport
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @NewPassword = params['NewPassword']
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @Parameters << paraminfo_tmp
            end
          end
          @Vport = params['Vport']
        end
      end

      # InitDBInstances返回参数结构体
      class InitDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestIds: 异步任务的请求ID数组，可使用此ID查询异步任务的执行结果
        # @type AsyncRequestIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestIds, :RequestId

        def initialize(asyncrequestids=nil, requestid=nil)
          @AsyncRequestIds = asyncrequestids
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestIds = params['AsyncRequestIds']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceUpgradeInstances请求参数结构体
      class InquiryPriceUpgradeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String
        # @param Memory: 升级后的内存大小，单位：MB，为保证传入 Memory 值有效，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口获取可升级的内存规格。
        # @type Memory: Integer
        # @param Volume: 升级后的硬盘大小，单位：GB，为保证传入 Volume 值有效，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口获取可升级的硬盘范围。
        # @type Volume: Integer
        # @param Cpu: 升级后的核心数目，单位：核，为保证传入 CPU 值有效，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口获取可升级的核心数目，当未指定该值时，将按照 Memory 大小补全一个默认值。
        # @type Cpu: Integer
        # @param ProtectMode: 数据复制方式，支持值包括：0 - 异步复制，1 - 半同步复制，2 - 强同步复制，升级主实例时可指定该参数，升级只读实例或者灾备实例时指定该参数无意义。
        # @type ProtectMode: Integer
        # @param DeviceType: 实例隔离类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例， "BASIC" - 基础版实例。 不指定则默认为通用型实例。
        # @type DeviceType: String
        # @param InstanceNodes: 实例节点数。对于 RO 和 基础版实例， 该值默认为1。 如果需要询价三节点实例， 请将该值设置为3。其余主实例该值默认为2。
        # @type InstanceNodes: Integer

        attr_accessor :InstanceId, :Memory, :Volume, :Cpu, :ProtectMode, :DeviceType, :InstanceNodes

        def initialize(instanceid=nil, memory=nil, volume=nil, cpu=nil, protectmode=nil, devicetype=nil, instancenodes=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
          @Cpu = cpu
          @ProtectMode = protectmode
          @DeviceType = devicetype
          @InstanceNodes = instancenodes
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @Cpu = params['Cpu']
          @ProtectMode = params['ProtectMode']
          @DeviceType = params['DeviceType']
          @InstanceNodes = params['InstanceNodes']
        end
      end

      # InquiryPriceUpgradeInstances返回参数结构体
      class InquiryPriceUpgradeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 实例价格，单位：分（人民币）。
        # @type Price: Integer
        # @param OriginalPrice: 实例原价，单位：分（人民币）。
        # @type OriginalPrice: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :OriginalPrice, :RequestId

        def initialize(price=nil, originalprice=nil, requestid=nil)
          @Price = price
          @OriginalPrice = originalprice
          @RequestId = requestid
        end

        def deserialize(params)
          @Price = params['Price']
          @OriginalPrice = params['OriginalPrice']
          @RequestId = params['RequestId']
        end
      end

      # 审计日志搜索过滤器
      class InstanceAuditLogFilters < TencentCloud::Common::AbstractModel
        # @param Type: 过滤项。目前支持以下搜索条件：

        # 包含、不包含、包含（分词维度）、不包含（分词维度）:
        # sql - SQL详情；alarmLevel - 告警等级；ruleTemplateId - 规则模板Id

        # 等于、不等于、包含、不包含：
        # host - 客户端地址；
        # user - 用户名；
        # dbName - 数据库名称；

        # 等于、不等于：
        # sqlType - SQL类型；
        # errCode - 错误码；
        # threadId - 线程ID；

        # 范围搜索（时间类型统一为微秒）：
        # execTime - 执行时间；
        # lockWaitTime - 执行时间；
        # ioWaitTime - IO等待时间；
        # trxLivingTime - 事物持续时间；
        # cpuTime - cpu时间；
        # checkRows - 扫描行数；
        # affectRows - 影响行数；
        # sentRows - 返回行数。
        # @type Type: String
        # @param Compare: 过滤条件。支持以下条件：
        # WINC-包含（分词维度），
        # WEXC-不包含（分词维度）,
        # INC - 包含,
        # EXC - 不包含,
        # EQS - 等于,
        # NEQ - 不等于,
        # RA - 范围。
        # @type Compare: String
        # @param Value: 过滤的值。反向查询时，多个值之前是且的关系，正向查询多个值是或的关系
        # @type Value: Array

        attr_accessor :Type, :Compare, :Value

        def initialize(type=nil, compare=nil, value=nil)
          @Type = type
          @Compare = compare
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Compare = params['Compare']
          @Value = params['Value']
        end
      end

      # 实例审计详情信息
      class InstanceDbAuditStatus < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param AuditStatus: 审计状态。ON-表示审计已开启，OFF-表示审计关闭
        # @type AuditStatus: String
        # @param AuditTask: 任务状态。0-无任务；1-审计开启中，2-审计关闭中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditTask: Integer
        # @param LogExpireDay: 日志保留时长。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogExpireDay: Integer
        # @param HighLogExpireDay: 高频存储时长。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighLogExpireDay: Integer
        # @param LowLogExpireDay: 低频存储时长。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LowLogExpireDay: Integer
        # @param BillingAmount: 日志存储量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingAmount: Float
        # @param HighRealStorage: 高频存储量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighRealStorage: Float
        # @param LowRealStorage: 低频存储量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LowRealStorage: Float
        # @param AuditAll: 是否为全审计。true-表示全审计。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditAll: Boolean
        # @param CreateAt: 审计开通时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateAt: String
        # @param InstanceInfo: 实例相关信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceInfo: :class:`Tencentcloud::Cdb.v20170320.models.AuditInstanceInfo`
        # @param RealStorage: 总存储量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealStorage: Float
        # @param OldRule: 是否包含审计策略
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldRule: Boolean
        # @param RuleTemplateIds: 实例所应用的规则模板。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateIds: Array

        attr_accessor :InstanceId, :AuditStatus, :AuditTask, :LogExpireDay, :HighLogExpireDay, :LowLogExpireDay, :BillingAmount, :HighRealStorage, :LowRealStorage, :AuditAll, :CreateAt, :InstanceInfo, :RealStorage, :OldRule, :RuleTemplateIds

        def initialize(instanceid=nil, auditstatus=nil, audittask=nil, logexpireday=nil, highlogexpireday=nil, lowlogexpireday=nil, billingamount=nil, highrealstorage=nil, lowrealstorage=nil, auditall=nil, createat=nil, instanceinfo=nil, realstorage=nil, oldrule=nil, ruletemplateids=nil)
          @InstanceId = instanceid
          @AuditStatus = auditstatus
          @AuditTask = audittask
          @LogExpireDay = logexpireday
          @HighLogExpireDay = highlogexpireday
          @LowLogExpireDay = lowlogexpireday
          @BillingAmount = billingamount
          @HighRealStorage = highrealstorage
          @LowRealStorage = lowrealstorage
          @AuditAll = auditall
          @CreateAt = createat
          @InstanceInfo = instanceinfo
          @RealStorage = realstorage
          @OldRule = oldrule
          @RuleTemplateIds = ruletemplateids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AuditStatus = params['AuditStatus']
          @AuditTask = params['AuditTask']
          @LogExpireDay = params['LogExpireDay']
          @HighLogExpireDay = params['HighLogExpireDay']
          @LowLogExpireDay = params['LowLogExpireDay']
          @BillingAmount = params['BillingAmount']
          @HighRealStorage = params['HighRealStorage']
          @LowRealStorage = params['LowRealStorage']
          @AuditAll = params['AuditAll']
          @CreateAt = params['CreateAt']
          unless params['InstanceInfo'].nil?
            @InstanceInfo = AuditInstanceInfo.new
            @InstanceInfo.deserialize(params['InstanceInfo'])
          end
          @RealStorage = params['RealStorage']
          @OldRule = params['OldRule']
          @RuleTemplateIds = params['RuleTemplateIds']
        end
      end

      # 实例详细信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param WanStatus: 外网状态，可能的返回值为：0-未开通外网；1-已开通外网；2-已关闭外网
        # @type WanStatus: Integer
        # @param Zone: 可用区信息
        # @type Zone: String
        # @param InitFlag: 初始化标志，可能的返回值为：0-未初始化；1-已初始化
        # @type InitFlag: Integer
        # @param RoVipInfo: 只读vip信息。单独开通只读实例访问的只读实例才有该字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoVipInfo: :class:`Tencentcloud::Cdb.v20170320.models.RoVipInfo`
        # @param Memory: 内存容量，单位为 MB
        # @type Memory: Integer
        # @param Status: 实例状态，可能的返回值：0-创建中；1-运行中；4-正在进行隔离操作；5-已隔离
        # @type Status: Integer
        # @param VpcId: 私有网络 ID，例如：51102
        # @type VpcId: Integer
        # @param SlaveInfo: 备机信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveInfo: :class:`Tencentcloud::Cdb.v20170320.models.SlaveInfo`
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Volume: 硬盘容量，单位为 GB
        # @type Volume: Integer
        # @param AutoRenew: 自动续费标志，可能的返回值：0-未开通自动续费；1-已开通自动续费；2-已关闭自动续费
        # @type AutoRenew: Integer
        # @param ProtectMode: 数据复制方式。0 - 异步复制；1 - 半同步复制；2 - 强同步复制
        # @type ProtectMode: Integer
        # @param RoGroups: 只读组详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoGroups: Array
        # @param SubnetId: 子网 ID，例如：2333
        # @type SubnetId: Integer
        # @param InstanceType: 实例类型，可能的返回值：1-主实例；2-灾备实例；3-只读实例
        # @type InstanceType: Integer
        # @param ProjectId: 项目 ID
        # @type ProjectId: Integer
        # @param Region: 地域信息
        # @type Region: String
        # @param DeadlineTime: 实例到期时间
        # @type DeadlineTime: String
        # @param DeployMode: 可用区部署方式。可能的值为：0 - 单可用区；1 - 多可用区
        # @type DeployMode: Integer
        # @param TaskStatus: 实例任务状态。0 - 没有任务 ,1 - 升级中,2 - 数据导入中,3 - 开放Slave中,4 - 外网访问开通中,5 - 批量操作执行中,6 - 回档中,7 - 外网访问关闭中,8 - 密码修改中,9 - 实例名修改中,10 - 重启中,12 - 自建迁移中,13 - 删除库表中,14 - 灾备实例创建同步中,15 - 升级待切换,16 - 升级切换中,17 - 升级切换完成
        # @type TaskStatus: Integer
        # @param MasterInfo: 主实例详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterInfo: :class:`Tencentcloud::Cdb.v20170320.models.MasterInfo`
        # @param DeviceType: 实例类型
        # @type DeviceType: String
        # @param EngineVersion: 内核版本
        # @type EngineVersion: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param DrInfo: 灾备实例详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrInfo: Array
        # @param WanDomain: 外网域名
        # @type WanDomain: String
        # @param WanPort: 外网端口号
        # @type WanPort: Integer
        # @param PayType: 付费类型，可能的返回值：0-包年包月；1-按量计费
        # @type PayType: Integer
        # @param CreateTime: 实例创建时间
        # @type CreateTime: String
        # @param Vip: 实例 IP
        # @type Vip: String
        # @param Vport: 端口号
        # @type Vport: Integer
        # @param CdbError: 磁盘写入是否被锁定（实例数据写入量已经超过磁盘配额）。0 -未被锁定 1 -已被锁定
        # @type CdbError: Integer
        # @param UniqVpcId: 私有网络描述符，例如：“vpc-5v8wn9mg”
        # @type UniqVpcId: String
        # @param UniqSubnetId: 子网描述符，例如：“subnet-1typ0s7d”
        # @type UniqSubnetId: String
        # @param PhysicalId: 物理 ID
        # @type PhysicalId: String
        # @param Cpu: 核心数
        # @type Cpu: Integer
        # @param Qps: 每秒查询数量
        # @type Qps: Integer
        # @param ZoneName: 可用区中文名称
        # @type ZoneName: String
        # @param DeviceClass: 物理机型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceClass: String
        # @param DeployGroupId: 置放群组 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployGroupId: String
        # @param ZoneId: 可用区 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: Integer
        # @param InstanceNodes: 节点数
        # @type InstanceNodes: Integer
        # @param TagList: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array
        # @param EngineType: 引擎类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineType: String
        # @param MaxDelayTime: 最大延迟阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDelayTime: Integer
        # @param DiskType: 实例磁盘类型，仅云盘版实例才返回该值。可能的值为 CLOUD_SSD：SSD云硬盘， CLOUD_HSSD：增强型SSD云硬盘
        # @type DiskType: String
        # @param ExpandCpu: 当前扩容的CPU核心数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpandCpu: Integer

        attr_accessor :WanStatus, :Zone, :InitFlag, :RoVipInfo, :Memory, :Status, :VpcId, :SlaveInfo, :InstanceId, :Volume, :AutoRenew, :ProtectMode, :RoGroups, :SubnetId, :InstanceType, :ProjectId, :Region, :DeadlineTime, :DeployMode, :TaskStatus, :MasterInfo, :DeviceType, :EngineVersion, :InstanceName, :DrInfo, :WanDomain, :WanPort, :PayType, :CreateTime, :Vip, :Vport, :CdbError, :UniqVpcId, :UniqSubnetId, :PhysicalId, :Cpu, :Qps, :ZoneName, :DeviceClass, :DeployGroupId, :ZoneId, :InstanceNodes, :TagList, :EngineType, :MaxDelayTime, :DiskType, :ExpandCpu

        def initialize(wanstatus=nil, zone=nil, initflag=nil, rovipinfo=nil, memory=nil, status=nil, vpcid=nil, slaveinfo=nil, instanceid=nil, volume=nil, autorenew=nil, protectmode=nil, rogroups=nil, subnetid=nil, instancetype=nil, projectid=nil, region=nil, deadlinetime=nil, deploymode=nil, taskstatus=nil, masterinfo=nil, devicetype=nil, engineversion=nil, instancename=nil, drinfo=nil, wandomain=nil, wanport=nil, paytype=nil, createtime=nil, vip=nil, vport=nil, cdberror=nil, uniqvpcid=nil, uniqsubnetid=nil, physicalid=nil, cpu=nil, qps=nil, zonename=nil, deviceclass=nil, deploygroupid=nil, zoneid=nil, instancenodes=nil, taglist=nil, enginetype=nil, maxdelaytime=nil, disktype=nil, expandcpu=nil)
          @WanStatus = wanstatus
          @Zone = zone
          @InitFlag = initflag
          @RoVipInfo = rovipinfo
          @Memory = memory
          @Status = status
          @VpcId = vpcid
          @SlaveInfo = slaveinfo
          @InstanceId = instanceid
          @Volume = volume
          @AutoRenew = autorenew
          @ProtectMode = protectmode
          @RoGroups = rogroups
          @SubnetId = subnetid
          @InstanceType = instancetype
          @ProjectId = projectid
          @Region = region
          @DeadlineTime = deadlinetime
          @DeployMode = deploymode
          @TaskStatus = taskstatus
          @MasterInfo = masterinfo
          @DeviceType = devicetype
          @EngineVersion = engineversion
          @InstanceName = instancename
          @DrInfo = drinfo
          @WanDomain = wandomain
          @WanPort = wanport
          @PayType = paytype
          @CreateTime = createtime
          @Vip = vip
          @Vport = vport
          @CdbError = cdberror
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @PhysicalId = physicalid
          @Cpu = cpu
          @Qps = qps
          @ZoneName = zonename
          @DeviceClass = deviceclass
          @DeployGroupId = deploygroupid
          @ZoneId = zoneid
          @InstanceNodes = instancenodes
          @TagList = taglist
          @EngineType = enginetype
          @MaxDelayTime = maxdelaytime
          @DiskType = disktype
          @ExpandCpu = expandcpu
        end

        def deserialize(params)
          @WanStatus = params['WanStatus']
          @Zone = params['Zone']
          @InitFlag = params['InitFlag']
          unless params['RoVipInfo'].nil?
            @RoVipInfo = RoVipInfo.new
            @RoVipInfo.deserialize(params['RoVipInfo'])
          end
          @Memory = params['Memory']
          @Status = params['Status']
          @VpcId = params['VpcId']
          unless params['SlaveInfo'].nil?
            @SlaveInfo = SlaveInfo.new
            @SlaveInfo.deserialize(params['SlaveInfo'])
          end
          @InstanceId = params['InstanceId']
          @Volume = params['Volume']
          @AutoRenew = params['AutoRenew']
          @ProtectMode = params['ProtectMode']
          unless params['RoGroups'].nil?
            @RoGroups = []
            params['RoGroups'].each do |i|
              rogroup_tmp = RoGroup.new
              rogroup_tmp.deserialize(i)
              @RoGroups << rogroup_tmp
            end
          end
          @SubnetId = params['SubnetId']
          @InstanceType = params['InstanceType']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @DeadlineTime = params['DeadlineTime']
          @DeployMode = params['DeployMode']
          @TaskStatus = params['TaskStatus']
          unless params['MasterInfo'].nil?
            @MasterInfo = MasterInfo.new
            @MasterInfo.deserialize(params['MasterInfo'])
          end
          @DeviceType = params['DeviceType']
          @EngineVersion = params['EngineVersion']
          @InstanceName = params['InstanceName']
          unless params['DrInfo'].nil?
            @DrInfo = []
            params['DrInfo'].each do |i|
              drinfo_tmp = DrInfo.new
              drinfo_tmp.deserialize(i)
              @DrInfo << drinfo_tmp
            end
          end
          @WanDomain = params['WanDomain']
          @WanPort = params['WanPort']
          @PayType = params['PayType']
          @CreateTime = params['CreateTime']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @CdbError = params['CdbError']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @PhysicalId = params['PhysicalId']
          @Cpu = params['Cpu']
          @Qps = params['Qps']
          @ZoneName = params['ZoneName']
          @DeviceClass = params['DeviceClass']
          @DeployGroupId = params['DeployGroupId']
          @ZoneId = params['ZoneId']
          @InstanceNodes = params['InstanceNodes']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taginfoitem_tmp = TagInfoItem.new
              taginfoitem_tmp.deserialize(i)
              @TagList << taginfoitem_tmp
            end
          end
          @EngineType = params['EngineType']
          @MaxDelayTime = params['MaxDelayTime']
          @DiskType = params['DiskType']
          @ExpandCpu = params['ExpandCpu']
        end
      end

      # 实例预期重启时间
      class InstanceRebootTime < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param TimeInSeconds: 预期重启时间
        # @type TimeInSeconds: Integer

        attr_accessor :InstanceId, :TimeInSeconds

        def initialize(instanceid=nil, timeinseconds=nil)
          @InstanceId = instanceid
          @TimeInSeconds = timeinseconds
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TimeInSeconds = params['TimeInSeconds']
        end
      end

      # 实例可回档时间范围
      class InstanceRollbackRangeTime < TencentCloud::Common::AbstractModel
        # @param Code: 查询数据库错误码
        # @type Code: Integer
        # @param Message: 查询数据库错误信息
        # @type Message: String
        # @param InstanceId: 实例ID列表，单个实例Id的格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param Times: 可回档时间范围
        # @type Times: Array

        attr_accessor :Code, :Message, :InstanceId, :Times

        def initialize(code=nil, message=nil, instanceid=nil, times=nil)
          @Code = code
          @Message = message
          @InstanceId = instanceid
          @Times = times
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @InstanceId = params['InstanceId']
          unless params['Times'].nil?
            @Times = []
            params['Times'].each do |i|
              rollbacktimerange_tmp = RollbackTimeRange.new
              rollbacktimerange_tmp.deserialize(i)
              @Times << rollbacktimerange_tmp
            end
          end
        end
      end

      # IsolateDBInstance请求参数结构体
      class IsolateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # IsolateDBInstance返回参数结构体
      class IsolateDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。(该返回字段目前已废弃，可以通过 DescribeDBInstances 接口查询实例的隔离状态)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # 本地binlog保留配置
      class LocalBinlogConfig < TencentCloud::Common::AbstractModel
        # @param SaveHours: 本地binlog保留时长，可取值范围：[72,168]。
        # @type SaveHours: Integer
        # @param MaxUsage: 本地binlog空间使用率，可取值范围：[30,50]。
        # @type MaxUsage: Integer

        attr_accessor :SaveHours, :MaxUsage

        def initialize(savehours=nil, maxusage=nil)
          @SaveHours = savehours
          @MaxUsage = maxusage
        end

        def deserialize(params)
          @SaveHours = params['SaveHours']
          @MaxUsage = params['MaxUsage']
        end
      end

      # 本地binlog保留策略默认配置。
      class LocalBinlogConfigDefault < TencentCloud::Common::AbstractModel
        # @param SaveHours: 本地binlog保留时长，可取值范围：[72,168]。
        # @type SaveHours: Integer
        # @param MaxUsage: 本地binlog空间使用率，可取值范围：[30,50]。
        # @type MaxUsage: Integer

        attr_accessor :SaveHours, :MaxUsage

        def initialize(savehours=nil, maxusage=nil)
          @SaveHours = savehours
          @MaxUsage = maxusage
        end

        def deserialize(params)
          @SaveHours = params['SaveHours']
          @MaxUsage = params['MaxUsage']
        end
      end

      # 审计日志命中规则模板的基本信息
      class LogRuleTemplateInfo < TencentCloud::Common::AbstractModel
        # @param RuleTemplateId: 模板ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateId: String
        # @param RuleTemplateName: 规则模板名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateName: String
        # @param AlarmLevel: 告警等级。1-低风险，2-中风险，3-高风险。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevel: String
        # @param RuleTemplateStatus: 规则模板变更状态：0-未变更；1-已变更；2-已删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateStatus: Integer

        attr_accessor :RuleTemplateId, :RuleTemplateName, :AlarmLevel, :RuleTemplateStatus

        def initialize(ruletemplateid=nil, ruletemplatename=nil, alarmlevel=nil, ruletemplatestatus=nil)
          @RuleTemplateId = ruletemplateid
          @RuleTemplateName = ruletemplatename
          @AlarmLevel = alarmlevel
          @RuleTemplateStatus = ruletemplatestatus
        end

        def deserialize(params)
          @RuleTemplateId = params['RuleTemplateId']
          @RuleTemplateName = params['RuleTemplateName']
          @AlarmLevel = params['AlarmLevel']
          @RuleTemplateStatus = params['RuleTemplateStatus']
        end
      end

      # DB实例慢日志、错误日志投递CLS配置
      class LogToCLSConfig < TencentCloud::Common::AbstractModel
        # @param Status: 投递状态打开或者关闭
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param LogSetId: CLS日志集ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogSetId: String
        # @param LogTopicId: 日志主题ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTopicId: String
        # @param ClsRegion: CLS服务所在地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClsRegion: String

        attr_accessor :Status, :LogSetId, :LogTopicId, :ClsRegion

        def initialize(status=nil, logsetid=nil, logtopicid=nil, clsregion=nil)
          @Status = status
          @LogSetId = logsetid
          @LogTopicId = logtopicid
          @ClsRegion = clsregion
        end

        def deserialize(params)
          @Status = params['Status']
          @LogSetId = params['LogSetId']
          @LogTopicId = params['LogTopicId']
          @ClsRegion = params['ClsRegion']
        end
      end

      # 主实例信息
      class MasterInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域信息
        # @type Region: String
        # @param RegionId: 地域ID
        # @type RegionId: Integer
        # @param ZoneId: 可用区ID
        # @type ZoneId: Integer
        # @param Zone: 可用区信息
        # @type Zone: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ResourceId: 实例长ID
        # @type ResourceId: String
        # @param Status: 实例状态
        # @type Status: Integer
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceType: 实例类型
        # @type InstanceType: Integer
        # @param TaskStatus: 任务状态
        # @type TaskStatus: Integer
        # @param Memory: 内存容量
        # @type Memory: Integer
        # @param Volume: 硬盘容量
        # @type Volume: Integer
        # @param DeviceType: 实例机型
        # @type DeviceType: String
        # @param Qps: 每秒查询数
        # @type Qps: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: Integer
        # @param SubnetId: 子网ID
        # @type SubnetId: Integer
        # @param ExClusterId: 独享集群ID
        # @type ExClusterId: String
        # @param ExClusterName: 独享集群名称
        # @type ExClusterName: String

        attr_accessor :Region, :RegionId, :ZoneId, :Zone, :InstanceId, :ResourceId, :Status, :InstanceName, :InstanceType, :TaskStatus, :Memory, :Volume, :DeviceType, :Qps, :VpcId, :SubnetId, :ExClusterId, :ExClusterName

        def initialize(region=nil, regionid=nil, zoneid=nil, zone=nil, instanceid=nil, resourceid=nil, status=nil, instancename=nil, instancetype=nil, taskstatus=nil, memory=nil, volume=nil, devicetype=nil, qps=nil, vpcid=nil, subnetid=nil, exclusterid=nil, exclustername=nil)
          @Region = region
          @RegionId = regionid
          @ZoneId = zoneid
          @Zone = zone
          @InstanceId = instanceid
          @ResourceId = resourceid
          @Status = status
          @InstanceName = instancename
          @InstanceType = instancetype
          @TaskStatus = taskstatus
          @Memory = memory
          @Volume = volume
          @DeviceType = devicetype
          @Qps = qps
          @VpcId = vpcid
          @SubnetId = subnetid
          @ExClusterId = exclusterid
          @ExClusterName = exclustername
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @Zone = params['Zone']
          @InstanceId = params['InstanceId']
          @ResourceId = params['ResourceId']
          @Status = params['Status']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
          @TaskStatus = params['TaskStatus']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @DeviceType = params['DeviceType']
          @Qps = params['Qps']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @ExClusterId = params['ExClusterId']
          @ExClusterName = params['ExClusterName']
        end
      end

      # ModifyAccountDescription请求参数结构体
      class ModifyAccountDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Accounts: 云数据库账号。
        # @type Accounts: Array
        # @param Description: 数据库账号的备注信息。
        # @type Description: String

        attr_accessor :InstanceId, :Accounts, :Description

        def initialize(instanceid=nil, accounts=nil, description=nil)
          @InstanceId = instanceid
          @Accounts = accounts
          @Description = description
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
          @Description = params['Description']
        end
      end

      # ModifyAccountDescription返回参数结构体
      class ModifyAccountDescriptionResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAccountHost请求参数结构体
      class ModifyAccountHostRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param User: 账户的名称
        # @type User: String
        # @param Host: 账户的旧主机
        # @type Host: String
        # @param NewHost: 账户的新主机
        # @type NewHost: String

        attr_accessor :InstanceId, :User, :Host, :NewHost

        def initialize(instanceid=nil, user=nil, host=nil, newhost=nil)
          @InstanceId = instanceid
          @User = user
          @Host = host
          @NewHost = newhost
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Host = params['Host']
          @NewHost = params['NewHost']
        end
      end

      # ModifyAccountHost返回参数结构体
      class ModifyAccountHostResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAccountMaxUserConnections请求参数结构体
      class ModifyAccountMaxUserConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param Accounts: 云数据库账号。
        # @type Accounts: Array
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param MaxUserConnections: 设置账户最大可用连接数，最大可设置值为10240。
        # @type MaxUserConnections: Integer

        attr_accessor :Accounts, :InstanceId, :MaxUserConnections

        def initialize(accounts=nil, instanceid=nil, maxuserconnections=nil)
          @Accounts = accounts
          @InstanceId = instanceid
          @MaxUserConnections = maxuserconnections
        end

        def deserialize(params)
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @MaxUserConnections = params['MaxUserConnections']
        end
      end

      # ModifyAccountMaxUserConnections返回参数结构体
      class ModifyAccountMaxUserConnectionsResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAccountPassword请求参数结构体
      class ModifyAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param NewPassword: 数据库账号的新密码。密码应至少包含字母、数字和字符（_+-&=!@#$%^*()）中的两种，长度为8-64个字符。
        # @type NewPassword: String
        # @param Accounts: 云数据库账号。
        # @type Accounts: Array

        attr_accessor :InstanceId, :NewPassword, :Accounts

        def initialize(instanceid=nil, newpassword=nil, accounts=nil)
          @InstanceId = instanceid
          @NewPassword = newpassword
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NewPassword = params['NewPassword']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
        end
      end

      # ModifyAccountPassword返回参数结构体
      class ModifyAccountPasswordResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAccountPrivileges请求参数结构体
      class ModifyAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Accounts: 数据库的账号，包括用户名和域名。
        # @type Accounts: Array
        # @param GlobalPrivileges: 全局权限。其中，GlobalPrivileges 中权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE", "PROCESS", "DROP","REFERENCES","INDEX","ALTER","SHOW DATABASES","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER","CREATE USER","RELOAD","REPLICATION CLIENT","REPLICATION SLAVE"。
        # 注意，ModifyAction为空时，不传该参数表示清除该权限。
        # @type GlobalPrivileges: Array
        # @param DatabasePrivileges: 数据库的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE",	"DROP","REFERENCES","INDEX","ALTER","CREATE TEMPORARY TABLES","LOCK TABLES","EXECUTE","CREATE VIEW","SHOW VIEW","CREATE ROUTINE","ALTER ROUTINE","EVENT","TRIGGER"。
        # 注意，ModifyAction为空时，不传该参数表示清除该权限。
        # @type DatabasePrivileges: Array
        # @param TablePrivileges: 数据库中表的权限。Privileges 权限的可选值为：权限的可选值为："SELECT","INSERT","UPDATE","DELETE","CREATE",	"DROP","REFERENCES","INDEX","ALTER","CREATE VIEW","SHOW VIEW", "TRIGGER"。
        # 注意，ModifyAction为空时，不传该参数表示清除该权限。
        # @type TablePrivileges: Array
        # @param ColumnPrivileges: 数据库表中列的权限。Privileges 权限的可选值为："SELECT","INSERT","UPDATE","REFERENCES"。
        # 注意，ModifyAction为空时，不传该参数表示清除该权限。
        # @type ColumnPrivileges: Array
        # @param ModifyAction: 该参数不为空时，为批量修改权限。可选值为：grant - 授予权限，revoke - 回收权限。
        # @type ModifyAction: String

        attr_accessor :InstanceId, :Accounts, :GlobalPrivileges, :DatabasePrivileges, :TablePrivileges, :ColumnPrivileges, :ModifyAction

        def initialize(instanceid=nil, accounts=nil, globalprivileges=nil, databaseprivileges=nil, tableprivileges=nil, columnprivileges=nil, modifyaction=nil)
          @InstanceId = instanceid
          @Accounts = accounts
          @GlobalPrivileges = globalprivileges
          @DatabasePrivileges = databaseprivileges
          @TablePrivileges = tableprivileges
          @ColumnPrivileges = columnprivileges
          @ModifyAction = modifyaction
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @Accounts << account_tmp
            end
          end
          @GlobalPrivileges = params['GlobalPrivileges']
          unless params['DatabasePrivileges'].nil?
            @DatabasePrivileges = []
            params['DatabasePrivileges'].each do |i|
              databaseprivilege_tmp = DatabasePrivilege.new
              databaseprivilege_tmp.deserialize(i)
              @DatabasePrivileges << databaseprivilege_tmp
            end
          end
          unless params['TablePrivileges'].nil?
            @TablePrivileges = []
            params['TablePrivileges'].each do |i|
              tableprivilege_tmp = TablePrivilege.new
              tableprivilege_tmp.deserialize(i)
              @TablePrivileges << tableprivilege_tmp
            end
          end
          unless params['ColumnPrivileges'].nil?
            @ColumnPrivileges = []
            params['ColumnPrivileges'].each do |i|
              columnprivilege_tmp = ColumnPrivilege.new
              columnprivilege_tmp.deserialize(i)
              @ColumnPrivileges << columnprivilege_tmp
            end
          end
          @ModifyAction = params['ModifyAction']
        end
      end

      # ModifyAccountPrivileges返回参数结构体
      class ModifyAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAuditConfig请求参数结构体
      class ModifyAuditConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param LogExpireDay: 审计日志保存时长。支持值包括：
        # 7 - 一周
        # 30 - 一个月；
        # 180 - 六个月；
        # 365 - 一年；
        # 1095 - 三年；
        # 1825 - 五年；
        # @type LogExpireDay: Integer
        # @param CloseAudit: 是否关闭审计服务。可选值：true - 关闭审计服务；false - 不关闭审计服务。默认值为 false。
        # 当关闭审计服务时，会删除用户的审计日志和文件，并删除该实例的所有审计策略。
        # CloseAudit、LogExpireDay必须至少提供一个，如果两个都提供则按照CloseAudit优先的逻辑处理。
        # @type CloseAudit: Boolean
        # @param HighLogExpireDay: 高频审计日志保存时长。支持值包括：
        # 7 - 一周
        # 30 - 一个月；
        # 180 - 六个月；
        # 365 - 一年；
        # 1095 - 三年；
        # 1825 - 五年；
        # @type HighLogExpireDay: Integer

        attr_accessor :InstanceId, :LogExpireDay, :CloseAudit, :HighLogExpireDay

        def initialize(instanceid=nil, logexpireday=nil, closeaudit=nil, highlogexpireday=nil)
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
          @CloseAudit = closeaudit
          @HighLogExpireDay = highlogexpireday
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogExpireDay = params['LogExpireDay']
          @CloseAudit = params['CloseAudit']
          @HighLogExpireDay = params['HighLogExpireDay']
        end
      end

      # ModifyAuditConfig返回参数结构体
      class ModifyAuditConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAuditRule请求参数结构体
      class ModifyAuditRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 审计规则 ID。
        # @type RuleId: String
        # @param RuleName: 审计规则名称。
        # @type RuleName: String
        # @param Description: 审计规则描述。
        # @type Description: String
        # @param RuleFilters: 审计规则过滤条件。若设置了过滤条件，则不会开启全审计。
        # @type RuleFilters: Array
        # @param AuditAll: 是否开启全审计。支持值包括：false – 不开启全审计，true – 开启全审计。用户未设置审计规则过滤条件时，默认开启全审计。
        # @type AuditAll: Boolean

        attr_accessor :RuleId, :RuleName, :Description, :RuleFilters, :AuditAll

        def initialize(ruleid=nil, rulename=nil, description=nil, rulefilters=nil, auditall=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @Description = description
          @RuleFilters = rulefilters
          @AuditAll = auditall
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Description = params['Description']
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              auditfilter_tmp = AuditFilter.new
              auditfilter_tmp.deserialize(i)
              @RuleFilters << auditfilter_tmp
            end
          end
          @AuditAll = params['AuditAll']
        end
      end

      # ModifyAuditRule返回参数结构体
      class ModifyAuditRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAuditRuleTemplates请求参数结构体
      class ModifyAuditRuleTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param RuleTemplateIds: 审计规则模板ID。
        # @type RuleTemplateIds: Array
        # @param RuleFilters: 修改后的审计规则。
        # @type RuleFilters: Array
        # @param RuleTemplateName: 修改后的规则模板名称。
        # @type RuleTemplateName: String
        # @param Description: 修改后的规则模板描述。
        # @type Description: String
        # @param AlarmLevel: 告警等级。1-低风险，2-中风险，3-高风险。
        # @type AlarmLevel: Integer
        # @param AlarmPolicy: 告警策略。0-不告警，1-告警。
        # @type AlarmPolicy: Integer

        attr_accessor :RuleTemplateIds, :RuleFilters, :RuleTemplateName, :Description, :AlarmLevel, :AlarmPolicy

        def initialize(ruletemplateids=nil, rulefilters=nil, ruletemplatename=nil, description=nil, alarmlevel=nil, alarmpolicy=nil)
          @RuleTemplateIds = ruletemplateids
          @RuleFilters = rulefilters
          @RuleTemplateName = ruletemplatename
          @Description = description
          @AlarmLevel = alarmlevel
          @AlarmPolicy = alarmpolicy
        end

        def deserialize(params)
          @RuleTemplateIds = params['RuleTemplateIds']
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              rulefilters_tmp = RuleFilters.new
              rulefilters_tmp.deserialize(i)
              @RuleFilters << rulefilters_tmp
            end
          end
          @RuleTemplateName = params['RuleTemplateName']
          @Description = params['Description']
          @AlarmLevel = params['AlarmLevel']
          @AlarmPolicy = params['AlarmPolicy']
        end
      end

      # ModifyAuditRuleTemplates返回参数结构体
      class ModifyAuditRuleTemplatesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAuditService请求参数结构体
      class ModifyAuditServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param LogExpireDay: 日志保留时长。
        # @type LogExpireDay: Integer
        # @param HighLogExpireDay: 高频日志保留时长。
        # @type HighLogExpireDay: Integer
        # @param AuditAll: 修改实例审计规则为全审计。
        # @type AuditAll: Boolean
        # @param AuditRuleFilters: 审计规则。
        # @type AuditRuleFilters: Array
        # @param RuleTemplateIds: 规则模板ID。
        # @type RuleTemplateIds: Array

        attr_accessor :InstanceId, :LogExpireDay, :HighLogExpireDay, :AuditAll, :AuditRuleFilters, :RuleTemplateIds

        def initialize(instanceid=nil, logexpireday=nil, highlogexpireday=nil, auditall=nil, auditrulefilters=nil, ruletemplateids=nil)
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
          @HighLogExpireDay = highlogexpireday
          @AuditAll = auditall
          @AuditRuleFilters = auditrulefilters
          @RuleTemplateIds = ruletemplateids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogExpireDay = params['LogExpireDay']
          @HighLogExpireDay = params['HighLogExpireDay']
          @AuditAll = params['AuditAll']
          unless params['AuditRuleFilters'].nil?
            @AuditRuleFilters = []
            params['AuditRuleFilters'].each do |i|
              auditrulefilters_tmp = AuditRuleFilters.new
              auditrulefilters_tmp.deserialize(i)
              @AuditRuleFilters << auditrulefilters_tmp
            end
          end
          @RuleTemplateIds = params['RuleTemplateIds']
        end
      end

      # ModifyAuditService返回参数结构体
      class ModifyAuditServiceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAutoRenewFlag请求参数结构体
      class ModifyAutoRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例的 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceIds: Array
        # @param AutoRenew: 自动续费标记，可取值的有：0 - 不自动续费，1 - 自动续费。
        # @type AutoRenew: Integer

        attr_accessor :InstanceIds, :AutoRenew

        def initialize(instanceids=nil, autorenew=nil)
          @InstanceIds = instanceids
          @AutoRenew = autorenew
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @AutoRenew = params['AutoRenew']
        end
      end

      # ModifyAutoRenewFlag返回参数结构体
      class ModifyAutoRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupConfig请求参数结构体
      class ModifyBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param ExpireDays: 备份文件的保留时间，单位为天。最小值为7天，最大值为1830天。
        # @type ExpireDays: Integer
        # @param StartTime: (将废弃，建议使用 BackupTimeWindow 参数) 备份时间范围，格式为：02:00-06:00，起点和终点时间目前限制为整点，目前可以选择的范围为： 00:00-12:00，02:00-06:00，06：00-10：00，10:00-14:00，14:00-18:00，18:00-22:00，22:00-02:00。
        # @type StartTime: String
        # @param BackupMethod: 自动备份方式，仅支持：physical - 物理冷备
        # @type BackupMethod: String
        # @param BinlogExpireDays: binlog的保留时间，单位为天。最小值为7天，最大值为1830天。该值的设置不能大于备份文件的保留时间。
        # @type BinlogExpireDays: Integer
        # @param BackupTimeWindow: 备份时间窗，比如要设置每周二和周日 10:00-14:00之间备份，该参数如下：{"Monday": "", "Tuesday": "10:00-14:00", "Wednesday": "", "Thursday": "", "Friday": "", "Saturday": "", "Sunday": "10:00-14:00"}    （注：可以设置一周的某几天备份，但是每天的备份时间需要设置为相同的时间段。 如果设置了该字段，将忽略StartTime字段的设置）
        # @type BackupTimeWindow: :class:`Tencentcloud::Cdb.v20170320.models.CommonTimeWindow`
        # @param EnableBackupPeriodSave: 定期保留开关，off - 不开启定期保留策略，on - 开启定期保留策略，默认为off。首次开启定期保留策略时，BackupPeriodSaveDays，BackupPeriodSaveInterval，BackupPeriodSaveCount，StartBackupPeriodSaveDate参数为必填项，否则定期保留策略不会生效
        # @type EnableBackupPeriodSave: String
        # @param EnableBackupPeriodLongTermSave: 长期保留开关,该字段功能暂未上线，可忽略。off - 不开启长期保留策略，on - 开启长期保留策略，默认为off，如果开启，则BackupPeriodSaveDays，BackupPeriodSaveInterval，BackupPeriodSaveCount参数无效
        # @type EnableBackupPeriodLongTermSave: String
        # @param BackupPeriodSaveDays: 定期保留最长天数，最小值：90，最大值：3650，默认值：1080
        # @type BackupPeriodSaveDays: Integer
        # @param BackupPeriodSaveInterval: 定期保留策略周期，可取值：weekly - 周，monthly - 月， quarterly - 季度，yearly - 年，默认为monthly
        # @type BackupPeriodSaveInterval: String
        # @param BackupPeriodSaveCount: 定期保留的备份数量，最小值为1，最大值不超过定期保留策略周期内常规备份个数，默认值为1
        # @type BackupPeriodSaveCount: Integer
        # @param StartBackupPeriodSaveDate: 定期保留策略周期起始日期，格式：YYYY-MM-dd HH:mm:ss
        # @type StartBackupPeriodSaveDate: String
        # @param EnableBackupArchive: 是否开启数据备份归档策略，off-关闭，on-打开，如果不指定该入参， 则保持不变。
        # @type EnableBackupArchive: String
        # @param BackupArchiveDays: 数据备份归档起始天数，数据备份达到归档起始天数时进行归档，最小为180天，不得大于数据备份保留天数
        # @type BackupArchiveDays: Integer
        # @param BinlogArchiveDays: 日志备份归档起始天数，日志备份达到归档起始天数时进行归档，最小为180天，不得大于日志备份保留天数
        # @type BinlogArchiveDays: Integer
        # @param EnableBinlogArchive: 是否开启日志备份归档策略，off-关闭，on-打开，如果不指定该入参， 则保持不变。
        # @type EnableBinlogArchive: String
        # @param EnableBackupStandby: 是否开启数据备份标准存储策略，off-关闭，on-打开，如果不指定该入参， 则保持不变。
        # @type EnableBackupStandby: String
        # @param BackupStandbyDays: 数据备份标准存储起始天数，数据备份达到标准存储起始天数时进行转换，最小为30天，不得大于数据备份保留天数。如果开启备份归档，不得大于等于备份归档天数
        # @type BackupStandbyDays: Integer
        # @param EnableBinlogStandby: 是否开启日志备份标准存储策略，off-关闭，on-打开，如果不指定该入参， 则保持不变。
        # @type EnableBinlogStandby: String
        # @param BinlogStandbyDays: 日志备份标准存储起始天数，日志备份达到标准存储起始天数时进行转换，最小为30天，不得大于日志备份保留天数。如果开启备份归档，不得大于等于备份归档天数
        # @type BinlogStandbyDays: Integer

        attr_accessor :InstanceId, :ExpireDays, :StartTime, :BackupMethod, :BinlogExpireDays, :BackupTimeWindow, :EnableBackupPeriodSave, :EnableBackupPeriodLongTermSave, :BackupPeriodSaveDays, :BackupPeriodSaveInterval, :BackupPeriodSaveCount, :StartBackupPeriodSaveDate, :EnableBackupArchive, :BackupArchiveDays, :BinlogArchiveDays, :EnableBinlogArchive, :EnableBackupStandby, :BackupStandbyDays, :EnableBinlogStandby, :BinlogStandbyDays

        def initialize(instanceid=nil, expiredays=nil, starttime=nil, backupmethod=nil, binlogexpiredays=nil, backuptimewindow=nil, enablebackupperiodsave=nil, enablebackupperiodlongtermsave=nil, backupperiodsavedays=nil, backupperiodsaveinterval=nil, backupperiodsavecount=nil, startbackupperiodsavedate=nil, enablebackuparchive=nil, backuparchivedays=nil, binlogarchivedays=nil, enablebinlogarchive=nil, enablebackupstandby=nil, backupstandbydays=nil, enablebinlogstandby=nil, binlogstandbydays=nil)
          @InstanceId = instanceid
          @ExpireDays = expiredays
          @StartTime = starttime
          @BackupMethod = backupmethod
          @BinlogExpireDays = binlogexpiredays
          @BackupTimeWindow = backuptimewindow
          @EnableBackupPeriodSave = enablebackupperiodsave
          @EnableBackupPeriodLongTermSave = enablebackupperiodlongtermsave
          @BackupPeriodSaveDays = backupperiodsavedays
          @BackupPeriodSaveInterval = backupperiodsaveinterval
          @BackupPeriodSaveCount = backupperiodsavecount
          @StartBackupPeriodSaveDate = startbackupperiodsavedate
          @EnableBackupArchive = enablebackuparchive
          @BackupArchiveDays = backuparchivedays
          @BinlogArchiveDays = binlogarchivedays
          @EnableBinlogArchive = enablebinlogarchive
          @EnableBackupStandby = enablebackupstandby
          @BackupStandbyDays = backupstandbydays
          @EnableBinlogStandby = enablebinlogstandby
          @BinlogStandbyDays = binlogstandbydays
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ExpireDays = params['ExpireDays']
          @StartTime = params['StartTime']
          @BackupMethod = params['BackupMethod']
          @BinlogExpireDays = params['BinlogExpireDays']
          unless params['BackupTimeWindow'].nil?
            @BackupTimeWindow = CommonTimeWindow.new
            @BackupTimeWindow.deserialize(params['BackupTimeWindow'])
          end
          @EnableBackupPeriodSave = params['EnableBackupPeriodSave']
          @EnableBackupPeriodLongTermSave = params['EnableBackupPeriodLongTermSave']
          @BackupPeriodSaveDays = params['BackupPeriodSaveDays']
          @BackupPeriodSaveInterval = params['BackupPeriodSaveInterval']
          @BackupPeriodSaveCount = params['BackupPeriodSaveCount']
          @StartBackupPeriodSaveDate = params['StartBackupPeriodSaveDate']
          @EnableBackupArchive = params['EnableBackupArchive']
          @BackupArchiveDays = params['BackupArchiveDays']
          @BinlogArchiveDays = params['BinlogArchiveDays']
          @EnableBinlogArchive = params['EnableBinlogArchive']
          @EnableBackupStandby = params['EnableBackupStandby']
          @BackupStandbyDays = params['BackupStandbyDays']
          @EnableBinlogStandby = params['EnableBinlogStandby']
          @BinlogStandbyDays = params['BinlogStandbyDays']
        end
      end

      # ModifyBackupConfig返回参数结构体
      class ModifyBackupConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupDownloadRestriction请求参数结构体
      class ModifyBackupDownloadRestrictionRequest < TencentCloud::Common::AbstractModel
        # @param LimitType: NoLimit 不限制,内外网都可以下载； LimitOnlyIntranet 仅内网可下载； Customize 用户自定义vpc:ip可下载。 只有该值为 Customize 时，才可以设置 LimitVpc 和 LimitIp 。
        # @type LimitType: String
        # @param VpcComparisonSymbol: 该参数仅支持 In， 表示 LimitVpc 指定的vpc可以下载。默认为In。
        # @type VpcComparisonSymbol: String
        # @param IpComparisonSymbol: In: 指定的ip可以下载； NotIn: 指定的ip不可以下载。 默认为In。
        # @type IpComparisonSymbol: String
        # @param LimitVpc: 限制下载的vpc设置。
        # @type LimitVpc: Array
        # @param LimitIp: 限制下载的ip设置
        # @type LimitIp: Array

        attr_accessor :LimitType, :VpcComparisonSymbol, :IpComparisonSymbol, :LimitVpc, :LimitIp

        def initialize(limittype=nil, vpccomparisonsymbol=nil, ipcomparisonsymbol=nil, limitvpc=nil, limitip=nil)
          @LimitType = limittype
          @VpcComparisonSymbol = vpccomparisonsymbol
          @IpComparisonSymbol = ipcomparisonsymbol
          @LimitVpc = limitvpc
          @LimitIp = limitip
        end

        def deserialize(params)
          @LimitType = params['LimitType']
          @VpcComparisonSymbol = params['VpcComparisonSymbol']
          @IpComparisonSymbol = params['IpComparisonSymbol']
          unless params['LimitVpc'].nil?
            @LimitVpc = []
            params['LimitVpc'].each do |i|
              backuplimitvpcitem_tmp = BackupLimitVpcItem.new
              backuplimitvpcitem_tmp.deserialize(i)
              @LimitVpc << backuplimitvpcitem_tmp
            end
          end
          @LimitIp = params['LimitIp']
        end
      end

      # ModifyBackupDownloadRestriction返回参数结构体
      class ModifyBackupDownloadRestrictionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupEncryptionStatus请求参数结构体
      class ModifyBackupEncryptionStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cdb-XXXX。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param EncryptionStatus: 设置实例新增的自动物理备份文件默认加密状态。可选值为 on或者off。
        # @type EncryptionStatus: String

        attr_accessor :InstanceId, :EncryptionStatus

        def initialize(instanceid=nil, encryptionstatus=nil)
          @InstanceId = instanceid
          @EncryptionStatus = encryptionstatus
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EncryptionStatus = params['EncryptionStatus']
        end
      end

      # ModifyBackupEncryptionStatus返回参数结构体
      class ModifyBackupEncryptionStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCdbProxyAddressDesc请求参数结构体
      class ModifyCdbProxyAddressDescRequest < TencentCloud::Common::AbstractModel
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param ProxyAddressId: 代理组地址ID
        # @type ProxyAddressId: String
        # @param Desc: 描述
        # @type Desc: String

        attr_accessor :ProxyGroupId, :ProxyAddressId, :Desc

        def initialize(proxygroupid=nil, proxyaddressid=nil, desc=nil)
          @ProxyGroupId = proxygroupid
          @ProxyAddressId = proxyaddressid
          @Desc = desc
        end

        def deserialize(params)
          @ProxyGroupId = params['ProxyGroupId']
          @ProxyAddressId = params['ProxyAddressId']
          @Desc = params['Desc']
        end
      end

      # ModifyCdbProxyAddressDesc返回参数结构体
      class ModifyCdbProxyAddressDescResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCdbProxyAddressVipAndVPort请求参数结构体
      class ModifyCdbProxyAddressVipAndVPortRequest < TencentCloud::Common::AbstractModel
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param ProxyAddressId: 代理组地址ID
        # @type ProxyAddressId: String
        # @param UniqVpcId: 私有网络ID
        # @type UniqVpcId: String
        # @param UniqSubnetId: 私有子网ID
        # @type UniqSubnetId: String
        # @param Vip: IP地址
        # @type Vip: String
        # @param VPort: 端口
        # @type VPort: Integer
        # @param ReleaseDuration: 旧IP地址回收时间
        # @type ReleaseDuration: Integer

        attr_accessor :ProxyGroupId, :ProxyAddressId, :UniqVpcId, :UniqSubnetId, :Vip, :VPort, :ReleaseDuration

        def initialize(proxygroupid=nil, proxyaddressid=nil, uniqvpcid=nil, uniqsubnetid=nil, vip=nil, vport=nil, releaseduration=nil)
          @ProxyGroupId = proxygroupid
          @ProxyAddressId = proxyaddressid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @Vip = vip
          @VPort = vport
          @ReleaseDuration = releaseduration
        end

        def deserialize(params)
          @ProxyGroupId = params['ProxyGroupId']
          @ProxyAddressId = params['ProxyAddressId']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @Vip = params['Vip']
          @VPort = params['VPort']
          @ReleaseDuration = params['ReleaseDuration']
        end
      end

      # ModifyCdbProxyAddressVipAndVPort返回参数结构体
      class ModifyCdbProxyAddressVipAndVPortResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCdbProxyParam请求参数结构体
      class ModifyCdbProxyParamRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param ConnectionPoolLimit: 连接池阈值
        # 注意：如需使用数据库代理连接池能力，MySQL 8.0 主实例的内核小版本要大于等于 MySQL 8.0 20230630。
        # @type ConnectionPoolLimit: Integer

        attr_accessor :InstanceId, :ProxyGroupId, :ConnectionPoolLimit

        def initialize(instanceid=nil, proxygroupid=nil, connectionpoollimit=nil)
          @InstanceId = instanceid
          @ProxyGroupId = proxygroupid
          @ConnectionPoolLimit = connectionpoollimit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ProxyGroupId = params['ProxyGroupId']
          @ConnectionPoolLimit = params['ConnectionPoolLimit']
        end
      end

      # ModifyCdbProxyParam返回参数结构体
      class ModifyCdbProxyParamResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceLogToCLS请求参数结构体
      class ModifyDBInstanceLogToCLSRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param LogType: 日志类型：error/slowlog
        # @type LogType: String
        # @param Status: 投递状态：ON/OFF
        # @type Status: String
        # @param CreateLogset: 是否需要创建日志集
        # @type CreateLogset: Boolean
        # @param Logset: 需要创建日志集时为日志集名称；选择已有日志集时，为日志集ID
        # @type Logset: String
        # @param CreateLogTopic: 是否需要创建日志主题
        # @type CreateLogTopic: Boolean
        # @param LogTopic: 需要创建日志主题时为日志主题名称；选择已有日志主题时，为日志主题ID
        # @type LogTopic: String
        # @param Period: 日志主题有效期，不填写时，默认30天
        # @type Period: Integer
        # @param CreateIndex: 创建日志主题时，是否创建索引
        # @type CreateIndex: Boolean
        # @param ClsRegion: CLS所在地域
        # @type ClsRegion: String

        attr_accessor :InstanceId, :LogType, :Status, :CreateLogset, :Logset, :CreateLogTopic, :LogTopic, :Period, :CreateIndex, :ClsRegion

        def initialize(instanceid=nil, logtype=nil, status=nil, createlogset=nil, logset=nil, createlogtopic=nil, logtopic=nil, period=nil, createindex=nil, clsregion=nil)
          @InstanceId = instanceid
          @LogType = logtype
          @Status = status
          @CreateLogset = createlogset
          @Logset = logset
          @CreateLogTopic = createlogtopic
          @LogTopic = logtopic
          @Period = period
          @CreateIndex = createindex
          @ClsRegion = clsregion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogType = params['LogType']
          @Status = params['Status']
          @CreateLogset = params['CreateLogset']
          @Logset = params['Logset']
          @CreateLogTopic = params['CreateLogTopic']
          @LogTopic = params['LogTopic']
          @Period = params['Period']
          @CreateIndex = params['CreateIndex']
          @ClsRegion = params['ClsRegion']
        end
      end

      # ModifyDBInstanceLogToCLS返回参数结构体
      class ModifyDBInstanceLogToCLSResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceName请求参数结构体
      class ModifyDBInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String
        # @param InstanceName: 修改后的实例名称。
        # @type InstanceName: String

        attr_accessor :InstanceId, :InstanceName

        def initialize(instanceid=nil, instancename=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyDBInstanceName返回参数结构体
      class ModifyDBInstanceNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceProject请求参数结构体
      class ModifyDBInstanceProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 数组，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceIds: Array
        # @param NewProjectId: 项目的 ID。
        # @type NewProjectId: Integer

        attr_accessor :InstanceIds, :NewProjectId

        def initialize(instanceids=nil, newprojectid=nil)
          @InstanceIds = instanceids
          @NewProjectId = newprojectid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @NewProjectId = params['NewProjectId']
        end
      end

      # ModifyDBInstanceProject返回参数结构体
      class ModifyDBInstanceProjectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param SecurityGroupIds: 要修改的安全组 ID 列表，一个或者多个安全组 ID 组成的数组。
        # @type SecurityGroupIds: Array
        # @param ForReadonlyInstance: 当传入只读实例ID时，默认操作的是对应只读组的安全组。如果需要操作只读实例ID的安全组， 需要将该入参置为True
        # @type ForReadonlyInstance: Boolean

        attr_accessor :InstanceId, :SecurityGroupIds, :ForReadonlyInstance

        def initialize(instanceid=nil, securitygroupids=nil, forreadonlyinstance=nil)
          @InstanceId = instanceid
          @SecurityGroupIds = securitygroupids
          @ForReadonlyInstance = forreadonlyinstance
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SecurityGroupIds = params['SecurityGroupIds']
          @ForReadonlyInstance = params['ForReadonlyInstance']
        end
      end

      # ModifyDBInstanceSecurityGroups返回参数结构体
      class ModifyDBInstanceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceVipVport请求参数结构体
      class ModifyDBInstanceVipVportRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c2nl9rpv 或者 cdbrg-c3nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String
        # @param DstIp: 目标 IP。该参数和 DstPort 参数，两者必传一个。
        # @type DstIp: String
        # @param DstPort: 目标端口，支持范围为：[1024-65535]。该参数和 DstIp 参数，两者必传一个。
        # @type DstPort: Integer
        # @param UniqVpcId: 私有网络统一 ID。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 子网统一 ID。
        # @type UniqSubnetId: String
        # @param ReleaseDuration: 进行基础网络转 VPC 网络和 VPC 网络下的子网变更时，原网络中旧IP的回收时间，单位为小时，取值范围为0-168，默认值为24小时。
        # @type ReleaseDuration: Integer

        attr_accessor :InstanceId, :DstIp, :DstPort, :UniqVpcId, :UniqSubnetId, :ReleaseDuration

        def initialize(instanceid=nil, dstip=nil, dstport=nil, uniqvpcid=nil, uniqsubnetid=nil, releaseduration=nil)
          @InstanceId = instanceid
          @DstIp = dstip
          @DstPort = dstport
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @ReleaseDuration = releaseduration
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DstIp = params['DstIp']
          @DstPort = params['DstPort']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @ReleaseDuration = params['ReleaseDuration']
        end
      end

      # ModifyDBInstanceVipVport返回参数结构体
      class ModifyDBInstanceVipVportResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务ID。(该返回字段目前已废弃)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceParam请求参数结构体
      class ModifyInstanceParamRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例短 ID 列表。
        # @type InstanceIds: Array
        # @param ParamList: 要修改的参数列表。每一个元素是 Name 和 CurrentValue 的组合。Name 是参数名，CurrentValue 是要修改成的值。
        # @type ParamList: Array
        # @param TemplateId: 模板id，ParamList和TemplateId必须至少传其中之一
        # @type TemplateId: Integer
        # @param WaitSwitch: 执行参数调整任务的方式，默认为 0。支持值包括：0 - 立刻执行，1 - 时间窗执行；当该值为 1 时，每次只能传一个实例（InstanceIds数量为1）
        # @type WaitSwitch: Integer
        # @param NotSyncRo: 参数是否同步到主实例下的只读实例。true 为不同步，false 为同步。默认为 false。
        # @type NotSyncRo: Boolean
        # @param NotSyncDr: 参数是否同步到主实例下的灾备实例。true 为不同步，false 为同步。默认为 false。
        # @type NotSyncDr: Boolean

        attr_accessor :InstanceIds, :ParamList, :TemplateId, :WaitSwitch, :NotSyncRo, :NotSyncDr

        def initialize(instanceids=nil, paramlist=nil, templateid=nil, waitswitch=nil, notsyncro=nil, notsyncdr=nil)
          @InstanceIds = instanceids
          @ParamList = paramlist
          @TemplateId = templateid
          @WaitSwitch = waitswitch
          @NotSyncRo = notsyncro
          @NotSyncDr = notsyncdr
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              parameter_tmp = Parameter.new
              parameter_tmp.deserialize(i)
              @ParamList << parameter_tmp
            end
          end
          @TemplateId = params['TemplateId']
          @WaitSwitch = params['WaitSwitch']
          @NotSyncRo = params['NotSyncRo']
          @NotSyncDr = params['NotSyncDr']
        end
      end

      # ModifyInstanceParam返回参数结构体
      class ModifyInstanceParamResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID，可用于查询任务进度。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstancePasswordComplexity请求参数结构体
      class ModifyInstancePasswordComplexityRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例短 ID 列表。
        # @type InstanceIds: Array
        # @param ParamList: 要修改的参数列表。每一个元素是Name和CurrentValue的组合。Name是参数名，CurrentValue是要修改成的值。8.0版本Name支持范围：["validate_password.policy","validate_password.length","validate_password.mixed_case_count","validate_password.number_count","validate_password.special_char_count"],5.6和5.7版本支持范围：["validate_password_policy","validate_password_length","validate_password_mixed_case_count","validate_password_number_count","validate_password_special_char_count"]
        # @type ParamList: Array

        attr_accessor :InstanceIds, :ParamList

        def initialize(instanceids=nil, paramlist=nil)
          @InstanceIds = instanceids
          @ParamList = paramlist
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              parameter_tmp = Parameter.new
              parameter_tmp.deserialize(i)
              @ParamList << parameter_tmp
            end
          end
        end
      end

      # ModifyInstancePasswordComplexity返回参数结构体
      class ModifyInstancePasswordComplexityResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID，可用于查询任务进度。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceTag请求参数结构体
      class ModifyInstanceTagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param ReplaceTags: 要增加或修改的标签。
        # @type ReplaceTags: Array
        # @param DeleteTags: 要删除的标签。
        # @type DeleteTags: Array

        attr_accessor :InstanceId, :ReplaceTags, :DeleteTags

        def initialize(instanceid=nil, replacetags=nil, deletetags=nil)
          @InstanceId = instanceid
          @ReplaceTags = replacetags
          @DeleteTags = deletetags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ReplaceTags'].nil?
            @ReplaceTags = []
            params['ReplaceTags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @ReplaceTags << taginfo_tmp
            end
          end
          unless params['DeleteTags'].nil?
            @DeleteTags = []
            params['DeleteTags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @DeleteTags << taginfo_tmp
            end
          end
        end
      end

      # ModifyInstanceTag返回参数结构体
      class ModifyInstanceTagResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLocalBinlogConfig请求参数结构体
      class ModifyLocalBinlogConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param SaveHours: 本地binlog保留时长，可取值范围：[72,168]，当实例存在灾备实例时，可取值范围：[120,168]。
        # @type SaveHours: Integer
        # @param MaxUsage: 本地binlog空间使用率，可取值范围：[30,50]。
        # @type MaxUsage: Integer

        attr_accessor :InstanceId, :SaveHours, :MaxUsage

        def initialize(instanceid=nil, savehours=nil, maxusage=nil)
          @InstanceId = instanceid
          @SaveHours = savehours
          @MaxUsage = maxusage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SaveHours = params['SaveHours']
          @MaxUsage = params['MaxUsage']
        end
      end

      # ModifyLocalBinlogConfig返回参数结构体
      class ModifyLocalBinlogConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNameOrDescByDpId请求参数结构体
      class ModifyNameOrDescByDpIdRequest < TencentCloud::Common::AbstractModel
        # @param DeployGroupId: 置放群组 ID。
        # @type DeployGroupId: String
        # @param DeployGroupName: 置放群组名称，最长不能超过60个字符。置放群组名和置放群组描述不能都为空。
        # @type DeployGroupName: String
        # @param Description: 置放群组描述，最长不能超过200个字符。置放群组名和置放群组描述不能都为空。
        # @type Description: String

        attr_accessor :DeployGroupId, :DeployGroupName, :Description

        def initialize(deploygroupid=nil, deploygroupname=nil, description=nil)
          @DeployGroupId = deploygroupid
          @DeployGroupName = deploygroupname
          @Description = description
        end

        def deserialize(params)
          @DeployGroupId = params['DeployGroupId']
          @DeployGroupName = params['DeployGroupName']
          @Description = params['Description']
        end
      end

      # ModifyNameOrDescByDpId返回参数结构体
      class ModifyNameOrDescByDpIdResponse < TencentCloud::Common::AbstractModel
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

      # ModifyParamTemplate请求参数结构体
      class ModifyParamTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID。
        # @type TemplateId: Integer
        # @param Name: 模板名称，长度不超过64。
        # @type Name: String
        # @param Description: 模板描述，长度不超过255。
        # @type Description: String
        # @param ParamList: 参数列表。
        # @type ParamList: Array

        attr_accessor :TemplateId, :Name, :Description, :ParamList

        def initialize(templateid=nil, name=nil, description=nil, paramlist=nil)
          @TemplateId = templateid
          @Name = name
          @Description = description
          @ParamList = paramlist
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Name = params['Name']
          @Description = params['Description']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              parameter_tmp = Parameter.new
              parameter_tmp.deserialize(i)
              @ParamList << parameter_tmp
            end
          end
        end
      end

      # ModifyParamTemplate返回参数结构体
      class ModifyParamTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRemoteBackupConfig请求参数结构体
      class ModifyRemoteBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param RemoteBackupSave: 异地数据备份开关，off - 关闭异地备份，on-开启异地备份
        # @type RemoteBackupSave: String
        # @param RemoteBinlogSave: 异地日志备份开关，off - 关闭异地备份，on-开启异地备份，只有在参数RemoteBackupSave为on时，RemoteBinlogSave参数才可设置为on
        # @type RemoteBinlogSave: String
        # @param RemoteRegion: 用户设置异地备份地域列表
        # @type RemoteRegion: Array
        # @param ExpireDays: 异地备份保留时间，单位为天
        # @type ExpireDays: Integer

        attr_accessor :InstanceId, :RemoteBackupSave, :RemoteBinlogSave, :RemoteRegion, :ExpireDays

        def initialize(instanceid=nil, remotebackupsave=nil, remotebinlogsave=nil, remoteregion=nil, expiredays=nil)
          @InstanceId = instanceid
          @RemoteBackupSave = remotebackupsave
          @RemoteBinlogSave = remotebinlogsave
          @RemoteRegion = remoteregion
          @ExpireDays = expiredays
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RemoteBackupSave = params['RemoteBackupSave']
          @RemoteBinlogSave = params['RemoteBinlogSave']
          @RemoteRegion = params['RemoteRegion']
          @ExpireDays = params['ExpireDays']
        end
      end

      # ModifyRemoteBackupConfig返回参数结构体
      class ModifyRemoteBackupConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRoGroupInfo请求参数结构体
      class ModifyRoGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param RoGroupId: RO 组的 ID。
        # @type RoGroupId: String
        # @param RoGroupInfo: RO 组的详细信息。
        # @type RoGroupInfo: :class:`Tencentcloud::Cdb.v20170320.models.RoGroupAttr`
        # @param RoWeightValues: RO 组内实例的权重。若修改 RO 组的权重模式为用户自定义模式（custom），则必须设置该参数，且需要设置每个 RO 实例的权重值。
        # @type RoWeightValues: Array
        # @param IsBalanceRoLoad: 是否重新均衡 RO 组内的 RO 实例的负载。支持值包括：1 - 重新均衡负载；0 - 不重新均衡负载。默认值为 0。注意，设置为重新均衡负载时，RO 组内 RO 实例会有一次数据库连接瞬断，请确保应用程序能重连数据库。
        # @type IsBalanceRoLoad: Integer
        # @param ReplicationDelayTime: 废弃参数，无意义。
        # @type ReplicationDelayTime: Integer

        attr_accessor :RoGroupId, :RoGroupInfo, :RoWeightValues, :IsBalanceRoLoad, :ReplicationDelayTime

        def initialize(rogroupid=nil, rogroupinfo=nil, roweightvalues=nil, isbalanceroload=nil, replicationdelaytime=nil)
          @RoGroupId = rogroupid
          @RoGroupInfo = rogroupinfo
          @RoWeightValues = roweightvalues
          @IsBalanceRoLoad = isbalanceroload
          @ReplicationDelayTime = replicationdelaytime
        end

        def deserialize(params)
          @RoGroupId = params['RoGroupId']
          unless params['RoGroupInfo'].nil?
            @RoGroupInfo = RoGroupAttr.new
            @RoGroupInfo.deserialize(params['RoGroupInfo'])
          end
          unless params['RoWeightValues'].nil?
            @RoWeightValues = []
            params['RoWeightValues'].each do |i|
              roweightvalue_tmp = RoWeightValue.new
              roweightvalue_tmp.deserialize(i)
              @RoWeightValues << roweightvalue_tmp
            end
          end
          @IsBalanceRoLoad = params['IsBalanceRoLoad']
          @ReplicationDelayTime = params['ReplicationDelayTime']
        end
      end

      # ModifyRoGroupInfo返回参数结构体
      class ModifyRoGroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyTimeWindow请求参数结构体
      class ModifyTimeWindowRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param TimeRanges: 修改后的可维护时间段，其中每一个时间段的格式形如：10:00-12:00；起止时间按半个小时对齐；最短半个小时，最长三个小时；最多设置两个时间段；起止时间范围为：[00:00, 24:00]。
        # @type TimeRanges: Array
        # @param Weekdays: 指定修改哪一天的客户时间段，可能的取值为：monday，tuesday，wednesday，thursday，friday，saturday，sunday。如果不指定该值或者为空，则默认一周七天都修改。
        # @type Weekdays: Array
        # @param MaxDelayTime: 数据延迟阈值，仅对主实例和灾备实例有效，不传默认修改为10
        # @type MaxDelayTime: Integer

        attr_accessor :InstanceId, :TimeRanges, :Weekdays, :MaxDelayTime

        def initialize(instanceid=nil, timeranges=nil, weekdays=nil, maxdelaytime=nil)
          @InstanceId = instanceid
          @TimeRanges = timeranges
          @Weekdays = weekdays
          @MaxDelayTime = maxdelaytime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TimeRanges = params['TimeRanges']
          @Weekdays = params['Weekdays']
          @MaxDelayTime = params['MaxDelayTime']
        end
      end

      # ModifyTimeWindow返回参数结构体
      class ModifyTimeWindowResponse < TencentCloud::Common::AbstractModel
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

      # 独享集群CDB实例的节点分布情况
      class NodeDistribution < TencentCloud::Common::AbstractModel
        # @param Node: 主实例Master节点所在主机ID或者只读实例所在主机ID
        # @type Node: String
        # @param SlaveNodeOne: 主实例第一Slave节点所在主机ID
        # @type SlaveNodeOne: String
        # @param SlaveNodeTwo: 主实例第二Slave节点所在主机ID
        # @type SlaveNodeTwo: String

        attr_accessor :Node, :SlaveNodeOne, :SlaveNodeTwo

        def initialize(node=nil, slavenodeone=nil, slavenodetwo=nil)
          @Node = node
          @SlaveNodeOne = slavenodeone
          @SlaveNodeTwo = slavenodetwo
        end

        def deserialize(params)
          @Node = params['Node']
          @SlaveNodeOne = params['SlaveNodeOne']
          @SlaveNodeTwo = params['SlaveNodeTwo']
        end
      end

      # OfflineIsolatedInstances请求参数结构体
      class OfflineIsolatedInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # OfflineIsolatedInstances返回参数结构体
      class OfflineIsolatedInstancesResponse < TencentCloud::Common::AbstractModel
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

      # OpenAuditService请求参数结构体
      class OpenAuditServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: CDB实例ID
        # @type InstanceId: String
        # @param LogExpireDay: 审计日志保存时长。支持值包括：
        # 7 - 一周
        # 30 - 一个月；
        # 90 - 三个月；
        # 180 - 六个月；
        # 365 - 一年；
        # 1095 - 三年；
        # 1825 - 五年；
        # @type LogExpireDay: Integer
        # @param HighLogExpireDay: 高频审计日志保存时长。支持值包括：
        # 7 - 一周
        # 30 - 一个月；
        # @type HighLogExpireDay: Integer
        # @param AuditRuleFilters: 审计规则。同RuleTemplateIds都不填是全审计。
        # @type AuditRuleFilters: Array
        # @param RuleTemplateIds: 规则模板ID。同AuditRuleFilters都不填是全审计。
        # @type RuleTemplateIds: Array
        # @param AuditAll: 审计类型。true-全审计；默认false-规则审计。
        # @type AuditAll: Boolean

        attr_accessor :InstanceId, :LogExpireDay, :HighLogExpireDay, :AuditRuleFilters, :RuleTemplateIds, :AuditAll

        def initialize(instanceid=nil, logexpireday=nil, highlogexpireday=nil, auditrulefilters=nil, ruletemplateids=nil, auditall=nil)
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
          @HighLogExpireDay = highlogexpireday
          @AuditRuleFilters = auditrulefilters
          @RuleTemplateIds = ruletemplateids
          @AuditAll = auditall
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogExpireDay = params['LogExpireDay']
          @HighLogExpireDay = params['HighLogExpireDay']
          unless params['AuditRuleFilters'].nil?
            @AuditRuleFilters = []
            params['AuditRuleFilters'].each do |i|
              auditrulefilters_tmp = AuditRuleFilters.new
              auditrulefilters_tmp.deserialize(i)
              @AuditRuleFilters << auditrulefilters_tmp
            end
          end
          @RuleTemplateIds = params['RuleTemplateIds']
          @AuditAll = params['AuditAll']
        end
      end

      # OpenAuditService返回参数结构体
      class OpenAuditServiceResponse < TencentCloud::Common::AbstractModel
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

      # OpenDBInstanceEncryption请求参数结构体
      class OpenDBInstanceEncryptionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 云数据库实例 ID。
        # @type InstanceId: String
        # @param KeyId: 用户自定义密钥ID，CMK唯一标识符。该值为空时，将使用腾讯云自动生成的密钥KMS-CDB。
        # @type KeyId: String
        # @param KeyRegion: 用户自定义密钥的存储地域。如：ap-guangzhou 。KeyId不为空时，该参数必填。
        # @type KeyRegion: String

        attr_accessor :InstanceId, :KeyId, :KeyRegion

        def initialize(instanceid=nil, keyid=nil, keyregion=nil)
          @InstanceId = instanceid
          @KeyId = keyid
          @KeyRegion = keyregion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KeyId = params['KeyId']
          @KeyRegion = params['KeyRegion']
        end
      end

      # OpenDBInstanceEncryption返回参数结构体
      class OpenDBInstanceEncryptionResponse < TencentCloud::Common::AbstractModel
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

      # OpenDBInstanceGTID请求参数结构体
      class OpenDBInstanceGTIDRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # OpenDBInstanceGTID返回参数结构体
      class OpenDBInstanceGTIDResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # OpenSSL请求参数结构体
      class OpenSSLRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param RoGroupId: 只读组 ID。
        # @type RoGroupId: String

        attr_accessor :InstanceId, :RoGroupId

        def initialize(instanceid=nil, rogroupid=nil)
          @InstanceId = instanceid
          @RoGroupId = rogroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RoGroupId = params['RoGroupId']
        end
      end

      # OpenSSL返回参数结构体
      class OpenSSLResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步请求 ID。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # OpenWanService请求参数结构体
      class OpenWanServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # OpenWanService返回参数结构体
      class OpenWanServiceResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # 安全组出站规则
      class Outbound < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT 或者 DROP
        # @type Action: String
        # @param CidrIp: 目的 IP 或 IP 段，例如172.16.0.0/12
        # @type CidrIp: String
        # @param PortRange: 端口或者端口范围
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持 UDP、TCP等
        # @type IpProtocol: String
        # @param Dir: 规则限定的方向，进站规则为 OUTPUT
        # @type Dir: String
        # @param AddressModule: 地址模块
        # @type AddressModule: String
        # @param Desc: 规则描述
        # @type Desc: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol, :Dir, :AddressModule, :Desc

        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil, dir=nil, addressmodule=nil, desc=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
          @Dir = dir
          @AddressModule = addressmodule
          @Desc = desc
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
          @Dir = params['Dir']
          @AddressModule = params['AddressModule']
          @Desc = params['Desc']
        end
      end

      # 实例参数信息
      class ParamInfo < TencentCloud::Common::AbstractModel
        # @param Name: 参数名
        # @type Name: String
        # @param Value: 参数值
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 参数修改记录
      class ParamRecord < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param OldValue: 参数修改前的值
        # @type OldValue: String
        # @param NewValue: 参数修改后的值
        # @type NewValue: String
        # @param IsSucess: 参数是否修改成功
        # @type IsSucess: Boolean
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param IsSuccess: 参数是否修改成功
        # @type IsSuccess: Boolean

        attr_accessor :InstanceId, :ParamName, :OldValue, :NewValue, :IsSucess, :ModifyTime, :IsSuccess
        extend Gem::Deprecate
        deprecate :IsSucess, :none, 2024, 7
        deprecate :IsSucess=, :none, 2024, 7

        def initialize(instanceid=nil, paramname=nil, oldvalue=nil, newvalue=nil, issucess=nil, modifytime=nil, issuccess=nil)
          @InstanceId = instanceid
          @ParamName = paramname
          @OldValue = oldvalue
          @NewValue = newvalue
          @IsSucess = issucess
          @ModifyTime = modifytime
          @IsSuccess = issuccess
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ParamName = params['ParamName']
          @OldValue = params['OldValue']
          @NewValue = params['NewValue']
          @IsSucess = params['IsSucess']
          @ModifyTime = params['ModifyTime']
          @IsSuccess = params['IsSuccess']
        end
      end

      # 参数模板信息
      class ParamTemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID
        # @type TemplateId: Integer
        # @param Name: 参数模板名称
        # @type Name: String
        # @param Description: 参数模板描述
        # @type Description: String
        # @param EngineVersion: 实例引擎版本
        # @type EngineVersion: String
        # @param TemplateType: 参数模板类型
        # @type TemplateType: String
        # @param EngineType: 参数模板引擎
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EngineType: String

        attr_accessor :TemplateId, :Name, :Description, :EngineVersion, :TemplateType, :EngineType

        def initialize(templateid=nil, name=nil, description=nil, engineversion=nil, templatetype=nil, enginetype=nil)
          @TemplateId = templateid
          @Name = name
          @Description = description
          @EngineVersion = engineversion
          @TemplateType = templatetype
          @EngineType = enginetype
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Name = params['Name']
          @Description = params['Description']
          @EngineVersion = params['EngineVersion']
          @TemplateType = params['TemplateType']
          @EngineType = params['EngineType']
        end
      end

      # 数据库实例参数
      class Parameter < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param CurrentValue: 参数值
        # @type CurrentValue: String

        attr_accessor :Name, :CurrentValue

        def initialize(name=nil, currentvalue=nil)
          @Name = name
          @CurrentValue = currentvalue
        end

        def deserialize(params)
          @Name = params['Name']
          @CurrentValue = params['CurrentValue']
        end
      end

      # 实例参数的详细描述
      class ParameterDetail < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称
        # @type Name: String
        # @param ParamType: 参数类型：integer，enum，float，string，func
        # @type ParamType: String
        # @param Default: 参数默认值
        # @type Default: String
        # @param Description: 参数描述
        # @type Description: String
        # @param CurrentValue: 参数当前值
        # @type CurrentValue: String
        # @param NeedReboot: 修改参数后，是否需要重启数据库以使参数生效。可能的值包括：0-不需要重启；1-需要重启
        # @type NeedReboot: Integer
        # @param Max: 参数允许的最大值
        # @type Max: Integer
        # @param Min: 参数允许的最小值
        # @type Min: Integer
        # @param EnumValue: 参数的可选枚举值。如果为非枚举参数，则为空
        # @type EnumValue: Array
        # @param MaxFunc: 参数是公式类型时，该字段有效，表示公式类型最大值
        # @type MaxFunc: String
        # @param MinFunc: 参数是公式类型时，该字段有效，表示公式类型最小值
        # @type MinFunc: String
        # @param IsNotSupportEdit: 参数是否不支持修改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsNotSupportEdit: Boolean

        attr_accessor :Name, :ParamType, :Default, :Description, :CurrentValue, :NeedReboot, :Max, :Min, :EnumValue, :MaxFunc, :MinFunc, :IsNotSupportEdit

        def initialize(name=nil, paramtype=nil, default=nil, description=nil, currentvalue=nil, needreboot=nil, max=nil, min=nil, enumvalue=nil, maxfunc=nil, minfunc=nil, isnotsupportedit=nil)
          @Name = name
          @ParamType = paramtype
          @Default = default
          @Description = description
          @CurrentValue = currentvalue
          @NeedReboot = needreboot
          @Max = max
          @Min = min
          @EnumValue = enumvalue
          @MaxFunc = maxfunc
          @MinFunc = minfunc
          @IsNotSupportEdit = isnotsupportedit
        end

        def deserialize(params)
          @Name = params['Name']
          @ParamType = params['ParamType']
          @Default = params['Default']
          @Description = params['Description']
          @CurrentValue = params['CurrentValue']
          @NeedReboot = params['NeedReboot']
          @Max = params['Max']
          @Min = params['Min']
          @EnumValue = params['EnumValue']
          @MaxFunc = params['MaxFunc']
          @MinFunc = params['MinFunc']
          @IsNotSupportEdit = params['IsNotSupportEdit']
        end
      end

      # 数据库代理地址信息
      class ProxyAddress < TencentCloud::Common::AbstractModel
        # @param ProxyAddressId: 代理组地址ID
        # @type ProxyAddressId: String
        # @param UniqVpcId: 私有网络ID
        # @type UniqVpcId: String
        # @param UniqSubnetId: 私有子网ID
        # @type UniqSubnetId: String
        # @param Vip: IP地址
        # @type Vip: String
        # @param VPort: 端口
        # @type VPort: Integer
        # @param WeightMode: 权重分配模式；
        # 系统自动分配："system"， 自定义："custom"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WeightMode: String
        # @param IsKickOut: 是否开启延迟剔除，取值："true" | "false"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsKickOut: Boolean
        # @param MinCount: 最小保留数量，最小取值：0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinCount: Integer
        # @param MaxDelay: 延迟剔除阈值，最小取值：0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxDelay: Integer
        # @param AutoAddRo: 是否自动添加RO，取值："true" | "false"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoAddRo: Boolean
        # @param ReadOnly: 是否是只读，取值："true" | "false"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReadOnly: Boolean
        # @param TransSplit: 是否开启事务分离
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransSplit: Boolean
        # @param FailOver: 是否开启故障转移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailOver: Boolean
        # @param ConnectionPool: 是否开启连接池
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionPool: Boolean
        # @param Desc: 描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param ProxyAllocation: 实例读权重分配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyAllocation: Array
        # @param AccessMode: 接入模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessMode: String
        # @param AutoLoadBalance: 是否开启自动负载均衡
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoLoadBalance: Boolean

        attr_accessor :ProxyAddressId, :UniqVpcId, :UniqSubnetId, :Vip, :VPort, :WeightMode, :IsKickOut, :MinCount, :MaxDelay, :AutoAddRo, :ReadOnly, :TransSplit, :FailOver, :ConnectionPool, :Desc, :ProxyAllocation, :AccessMode, :AutoLoadBalance

        def initialize(proxyaddressid=nil, uniqvpcid=nil, uniqsubnetid=nil, vip=nil, vport=nil, weightmode=nil, iskickout=nil, mincount=nil, maxdelay=nil, autoaddro=nil, readonly=nil, transsplit=nil, failover=nil, connectionpool=nil, desc=nil, proxyallocation=nil, accessmode=nil, autoloadbalance=nil)
          @ProxyAddressId = proxyaddressid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @Vip = vip
          @VPort = vport
          @WeightMode = weightmode
          @IsKickOut = iskickout
          @MinCount = mincount
          @MaxDelay = maxdelay
          @AutoAddRo = autoaddro
          @ReadOnly = readonly
          @TransSplit = transsplit
          @FailOver = failover
          @ConnectionPool = connectionpool
          @Desc = desc
          @ProxyAllocation = proxyallocation
          @AccessMode = accessmode
          @AutoLoadBalance = autoloadbalance
        end

        def deserialize(params)
          @ProxyAddressId = params['ProxyAddressId']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @Vip = params['Vip']
          @VPort = params['VPort']
          @WeightMode = params['WeightMode']
          @IsKickOut = params['IsKickOut']
          @MinCount = params['MinCount']
          @MaxDelay = params['MaxDelay']
          @AutoAddRo = params['AutoAddRo']
          @ReadOnly = params['ReadOnly']
          @TransSplit = params['TransSplit']
          @FailOver = params['FailOver']
          @ConnectionPool = params['ConnectionPool']
          @Desc = params['Desc']
          unless params['ProxyAllocation'].nil?
            @ProxyAllocation = []
            params['ProxyAllocation'].each do |i|
              proxyallocation_tmp = ProxyAllocation.new
              proxyallocation_tmp.deserialize(i)
              @ProxyAllocation << proxyallocation_tmp
            end
          end
          @AccessMode = params['AccessMode']
          @AutoLoadBalance = params['AutoLoadBalance']
        end
      end

      # 代理节点权重分布
      class ProxyAllocation < TencentCloud::Common::AbstractModel
        # @param Region: 代理节点所属地域
        # @type Region: String
        # @param Zone: 代理节点所属可用区
        # @type Zone: String
        # @param ProxyInstance: 代理实例分布
        # @type ProxyInstance: Array

        attr_accessor :Region, :Zone, :ProxyInstance

        def initialize(region=nil, zone=nil, proxyinstance=nil)
          @Region = region
          @Zone = zone
          @ProxyInstance = proxyinstance
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          unless params['ProxyInstance'].nil?
            @ProxyInstance = []
            params['ProxyInstance'].each do |i|
              proxyinst_tmp = ProxyInst.new
              proxyinst_tmp.deserialize(i)
              @ProxyInstance << proxyinst_tmp
            end
          end
        end
      end

      # 代理组详情
      class ProxyGroupInfo < TencentCloud::Common::AbstractModel
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param ProxyVersion: 代理版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyVersion: String
        # @param SupportUpgradeProxyVersion: 代理支持升级版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportUpgradeProxyVersion: String
        # @param Status: 代理状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param TaskStatus: 代理任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: String
        # @param ProxyNode: 代理组节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyNode: Array
        # @param ProxyAddress: 代理组地址信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyAddress: Array
        # @param ConnectionPoolLimit: 连接池阈值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionPoolLimit: Integer
        # @param SupportCreateProxyAddress: 支持创建地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportCreateProxyAddress: Boolean
        # @param SupportUpgradeProxyMysqlVersion: 支持升级代理版本所需的cdb版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportUpgradeProxyMysqlVersion: String

        attr_accessor :ProxyGroupId, :ProxyVersion, :SupportUpgradeProxyVersion, :Status, :TaskStatus, :ProxyNode, :ProxyAddress, :ConnectionPoolLimit, :SupportCreateProxyAddress, :SupportUpgradeProxyMysqlVersion

        def initialize(proxygroupid=nil, proxyversion=nil, supportupgradeproxyversion=nil, status=nil, taskstatus=nil, proxynode=nil, proxyaddress=nil, connectionpoollimit=nil, supportcreateproxyaddress=nil, supportupgradeproxymysqlversion=nil)
          @ProxyGroupId = proxygroupid
          @ProxyVersion = proxyversion
          @SupportUpgradeProxyVersion = supportupgradeproxyversion
          @Status = status
          @TaskStatus = taskstatus
          @ProxyNode = proxynode
          @ProxyAddress = proxyaddress
          @ConnectionPoolLimit = connectionpoollimit
          @SupportCreateProxyAddress = supportcreateproxyaddress
          @SupportUpgradeProxyMysqlVersion = supportupgradeproxymysqlversion
        end

        def deserialize(params)
          @ProxyGroupId = params['ProxyGroupId']
          @ProxyVersion = params['ProxyVersion']
          @SupportUpgradeProxyVersion = params['SupportUpgradeProxyVersion']
          @Status = params['Status']
          @TaskStatus = params['TaskStatus']
          unless params['ProxyNode'].nil?
            @ProxyNode = []
            params['ProxyNode'].each do |i|
              proxynode_tmp = ProxyNode.new
              proxynode_tmp.deserialize(i)
              @ProxyNode << proxynode_tmp
            end
          end
          unless params['ProxyAddress'].nil?
            @ProxyAddress = []
            params['ProxyAddress'].each do |i|
              proxyaddress_tmp = ProxyAddress.new
              proxyaddress_tmp.deserialize(i)
              @ProxyAddress << proxyaddress_tmp
            end
          end
          @ConnectionPoolLimit = params['ConnectionPoolLimit']
          @SupportCreateProxyAddress = params['SupportCreateProxyAddress']
          @SupportUpgradeProxyMysqlVersion = params['SupportUpgradeProxyMysqlVersion']
        end
      end

      # 代理实例
      class ProxyInst < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param InstanceType: 实例类型：1 master 主实例; 2 ro 只读实例; 3 dr 灾备实例; 4 sdr 小灾备实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: Integer
        # @param Status: 实例状态，可能的返回值：0-创建中；1-运行中；4-隔离中；5-已隔离
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Weight: 只读权重,如果权重为系统自动分配，改值不生效，只代表是否启用该实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param Region: 实例所属地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Zone: 实例所属可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param InstNodeId: 实例节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstNodeId: String
        # @param InstNodeRole: 节点角色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstNodeRole: String

        attr_accessor :InstanceId, :InstanceName, :InstanceType, :Status, :Weight, :Region, :Zone, :InstNodeId, :InstNodeRole

        def initialize(instanceid=nil, instancename=nil, instancetype=nil, status=nil, weight=nil, region=nil, zone=nil, instnodeid=nil, instnoderole=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceType = instancetype
          @Status = status
          @Weight = weight
          @Region = region
          @Zone = zone
          @InstNodeId = instnodeid
          @InstNodeRole = instnoderole
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
          @Status = params['Status']
          @Weight = params['Weight']
          @Region = params['Region']
          @Zone = params['Zone']
          @InstNodeId = params['InstNodeId']
          @InstNodeRole = params['InstNodeRole']
        end
      end

      # 代理节点
      class ProxyNode < TencentCloud::Common::AbstractModel
        # @param ProxyId: 代理节点ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyId: String
        # @param Cpu: CPU核数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cpu: Integer
        # @param Mem: 内存大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mem: Integer
        # @param Status: 节点状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param Zone: 代理节点可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param Region: 代理节点地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Connection: 连接数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Connection: Integer

        attr_accessor :ProxyId, :Cpu, :Mem, :Status, :Zone, :Region, :Connection

        def initialize(proxyid=nil, cpu=nil, mem=nil, status=nil, zone=nil, region=nil, connection=nil)
          @ProxyId = proxyid
          @Cpu = cpu
          @Mem = mem
          @Status = status
          @Zone = zone
          @Region = region
          @Connection = connection
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @Status = params['Status']
          @Zone = params['Zone']
          @Region = params['Region']
          @Connection = params['Connection']
        end
      end

      # 节点规格配置
      class ProxyNodeCustom < TencentCloud::Common::AbstractModel
        # @param NodeCount: 节点个数
        # @type NodeCount: Integer
        # @param Cpu: CPU核数
        # @type Cpu: Integer
        # @param Mem: 内存大小
        # @type Mem: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :NodeCount, :Cpu, :Mem, :Region, :Zone

        def initialize(nodecount=nil, cpu=nil, mem=nil, region=nil, zone=nil)
          @NodeCount = nodecount
          @Cpu = cpu
          @Mem = mem
          @Region = region
          @Zone = zone
        end

        def deserialize(params)
          @NodeCount = params['NodeCount']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @Region = params['Region']
          @Zone = params['Zone']
        end
      end

      # 集群版 RW 节点的配置。
      class ReadWriteNode < TencentCloud::Common::AbstractModel
        # @param Zone: RW 节点所在可用区。
        # @type Zone: String
        # @param NodeId: 升级集群版实例时，如果要调整只读节点可用区，需要指定节点id。
        # @type NodeId: String

        attr_accessor :Zone, :NodeId

        def initialize(zone=nil, nodeid=nil)
          @Zone = zone
          @NodeId = nodeid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @NodeId = params['NodeId']
        end
      end

      # 集群版的 RO 节点配置。
      class ReadonlyNode < TencentCloud::Common::AbstractModel
        # @param IsRandomZone: 是否分布在随机可用区。传入YES表示随机可用区。否则使用Zone指定的可用区。
        # @type IsRandomZone: String
        # @param Zone: 指定该节点分布在哪个可用区。
        # @type Zone: String

        attr_accessor :IsRandomZone, :Zone

        def initialize(israndomzone=nil, zone=nil)
          @IsRandomZone = israndomzone
          @Zone = zone
        end

        def deserialize(params)
          @IsRandomZone = params['IsRandomZone']
          @Zone = params['Zone']
        end
      end

      # ReleaseIsolatedDBInstances请求参数结构体
      class ReleaseIsolatedDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 数组，单个实例 ID 格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # ReleaseIsolatedDBInstances返回参数结构体
      class ReleaseIsolatedDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Items: 解隔离操作的结果集。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :RequestId

        def initialize(items=nil, requestid=nil)
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              releaseresult_tmp = ReleaseResult.new
              releaseresult_tmp.deserialize(i)
              @Items << releaseresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 解隔离任务结果
      class ReleaseResult < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Code: 实例解隔离操作的结果值。返回值为0表示成功。
        # @type Code: Integer
        # @param Message: 实例解隔离操作的错误信息。
        # @type Message: String

        attr_accessor :InstanceId, :Code, :Message

        def initialize(instanceid=nil, code=nil, message=nil)
          @InstanceId = instanceid
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # ReloadBalanceProxyNode请求参数结构体
      class ReloadBalanceProxyNodeRequest < TencentCloud::Common::AbstractModel
        # @param ProxyGroupId: 代理组ID
        # @type ProxyGroupId: String
        # @param ProxyAddressId: 代理组地址ID
        # @type ProxyAddressId: String

        attr_accessor :ProxyGroupId, :ProxyAddressId

        def initialize(proxygroupid=nil, proxyaddressid=nil)
          @ProxyGroupId = proxygroupid
          @ProxyAddressId = proxyaddressid
        end

        def deserialize(params)
          @ProxyGroupId = params['ProxyGroupId']
          @ProxyAddressId = params['ProxyAddressId']
        end
      end

      # ReloadBalanceProxyNode返回参数结构体
      class ReloadBalanceProxyNodeResponse < TencentCloud::Common::AbstractModel
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

      # 异地备份信息
      class RemoteBackupInfo < TencentCloud::Common::AbstractModel
        # @param SubBackupId: 异地备份子任务的ID
        # @type SubBackupId: Integer
        # @param Region: 异地备份所在地域
        # @type Region: String
        # @param Status: 备份任务状态。可能的值有 "SUCCESS": 备份成功， "FAILED": 备份失败， "RUNNING": 备份进行中。
        # @type Status: String
        # @param StartTime: 异地备份任务的开始时间
        # @type StartTime: String
        # @param FinishTime: 异地备份任务的结束时间
        # @type FinishTime: String
        # @param Url: 下载地址
        # @type Url: String

        attr_accessor :SubBackupId, :Region, :Status, :StartTime, :FinishTime, :Url

        def initialize(subbackupid=nil, region=nil, status=nil, starttime=nil, finishtime=nil, url=nil)
          @SubBackupId = subbackupid
          @Region = region
          @Status = status
          @StartTime = starttime
          @FinishTime = finishtime
          @Url = url
        end

        def deserialize(params)
          @SubBackupId = params['SubBackupId']
          @Region = params['Region']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @Url = params['Url']
        end
      end

      # RenewDBInstance请求参数结构体
      class RenewDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待续费的实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872)。
        # @type InstanceId: String
        # @param TimeSpan: 续费时长，单位：月，可选值包括 [1,2,3,4,5,6,7,8,9,10,11,12,24,36]。
        # @type TimeSpan: Integer
        # @param ModifyPayType: 如果需要将按量计费实例续费为包年包月的实例，该入参的值需要指定为 "PREPAID" 。
        # @type ModifyPayType: String
        # @param AutoRenew: 自动续费标记，0表示不自动续费，1表示进行自动续费
        # @type AutoRenew: Integer

        attr_accessor :InstanceId, :TimeSpan, :ModifyPayType, :AutoRenew

        def initialize(instanceid=nil, timespan=nil, modifypaytype=nil, autorenew=nil)
          @InstanceId = instanceid
          @TimeSpan = timespan
          @ModifyPayType = modifypaytype
          @AutoRenew = autorenew
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TimeSpan = params['TimeSpan']
          @ModifyPayType = params['ModifyPayType']
          @AutoRenew = params['AutoRenew']
        end
      end

      # RenewDBInstance返回参数结构体
      class RenewDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单 ID。
        # @type DealId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealId, :RequestId

        def initialize(dealid=nil, requestid=nil)
          @DealId = dealid
          @RequestId = requestid
        end

        def deserialize(params)
          @DealId = params['DealId']
          @RequestId = params['RequestId']
        end
      end

      # ResetPassword请求参数结构体
      class ResetPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param User: 手动刷新轮转密码的实例账户名，例如root
        # @type User: String
        # @param Host: 手动刷新轮转密码的实例账户域名，例如%
        # @type Host: String

        attr_accessor :InstanceId, :User, :Host

        def initialize(instanceid=nil, user=nil, host=nil)
          @InstanceId = instanceid
          @User = user
          @Host = host
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @User = params['User']
          @Host = params['Host']
        end
      end

      # ResetPassword返回参数结构体
      class ResetPasswordResponse < TencentCloud::Common::AbstractModel
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

      # ResetRootAccount请求参数结构体
      class ResetRootAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # ResetRootAccount返回参数结构体
      class ResetRootAccountResponse < TencentCloud::Common::AbstractModel
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

      # RestartDBInstances请求参数结构体
      class RestartDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 数组，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # RestartDBInstances返回参数结构体
      class RestartDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # 只读组参数
      class RoGroup < TencentCloud::Common::AbstractModel
        # @param RoGroupMode: 只读组模式，可选值为：alone-系统自动分配只读组；allinone-新建只读组；join-使用现有只读组。
        # @type RoGroupMode: String
        # @param RoGroupId: 只读组 ID。
        # @type RoGroupId: String
        # @param RoGroupName: 只读组名称。
        # @type RoGroupName: String
        # @param RoOfflineDelay: 是否启用延迟超限剔除功能，启用该功能后，只读实例与主实例的延迟超过延迟阈值，只读实例将被隔离。可选值：1-启用；0-不启用。
        # @type RoOfflineDelay: Integer
        # @param RoMaxDelayTime: 延迟阈值。
        # @type RoMaxDelayTime: Integer
        # @param MinRoInGroup: 最少实例保留个数，若购买只读实例数量小于设置数量将不做剔除。
        # @type MinRoInGroup: Integer
        # @param WeightMode: 读写权重分配模式，可选值：system-系统自动分配；custom-自定义。
        # @type WeightMode: String
        # @param Weight: 该字段已经废弃，无意义。查看只读实例的权重，请查看 RoInstances 字段里的 Weight 值。
        # @type Weight: Integer
        # @param RoInstances: 只读组中的只读实例详情。
        # @type RoInstances: Array
        # @param Vip: 只读组的内网 IP。
        # @type Vip: String
        # @param Vport: 只读组的内网端口号。
        # @type Vport: Integer
        # @param UniqVpcId: 私有网络 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 子网 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqSubnetId: String
        # @param RoGroupRegion: 只读组所在的地域。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoGroupRegion: String
        # @param RoGroupZone: 只读组所在的可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RoGroupZone: String
        # @param DelayReplicationTime: 延迟复制时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DelayReplicationTime: Integer

        attr_accessor :RoGroupMode, :RoGroupId, :RoGroupName, :RoOfflineDelay, :RoMaxDelayTime, :MinRoInGroup, :WeightMode, :Weight, :RoInstances, :Vip, :Vport, :UniqVpcId, :UniqSubnetId, :RoGroupRegion, :RoGroupZone, :DelayReplicationTime

        def initialize(rogroupmode=nil, rogroupid=nil, rogroupname=nil, roofflinedelay=nil, romaxdelaytime=nil, minroingroup=nil, weightmode=nil, weight=nil, roinstances=nil, vip=nil, vport=nil, uniqvpcid=nil, uniqsubnetid=nil, rogroupregion=nil, rogroupzone=nil, delayreplicationtime=nil)
          @RoGroupMode = rogroupmode
          @RoGroupId = rogroupid
          @RoGroupName = rogroupname
          @RoOfflineDelay = roofflinedelay
          @RoMaxDelayTime = romaxdelaytime
          @MinRoInGroup = minroingroup
          @WeightMode = weightmode
          @Weight = weight
          @RoInstances = roinstances
          @Vip = vip
          @Vport = vport
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @RoGroupRegion = rogroupregion
          @RoGroupZone = rogroupzone
          @DelayReplicationTime = delayreplicationtime
        end

        def deserialize(params)
          @RoGroupMode = params['RoGroupMode']
          @RoGroupId = params['RoGroupId']
          @RoGroupName = params['RoGroupName']
          @RoOfflineDelay = params['RoOfflineDelay']
          @RoMaxDelayTime = params['RoMaxDelayTime']
          @MinRoInGroup = params['MinRoInGroup']
          @WeightMode = params['WeightMode']
          @Weight = params['Weight']
          unless params['RoInstances'].nil?
            @RoInstances = []
            params['RoInstances'].each do |i|
              roinstanceinfo_tmp = RoInstanceInfo.new
              roinstanceinfo_tmp.deserialize(i)
              @RoInstances << roinstanceinfo_tmp
            end
          end
          @Vip = params['Vip']
          @Vport = params['Vport']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @RoGroupRegion = params['RoGroupRegion']
          @RoGroupZone = params['RoGroupZone']
          @DelayReplicationTime = params['DelayReplicationTime']
        end
      end

      # RO 组的配置信息
      class RoGroupAttr < TencentCloud::Common::AbstractModel
        # @param RoGroupName: RO 组名称。
        # @type RoGroupName: String
        # @param RoMaxDelayTime: RO 实例最大延迟阈值。单位为秒，最小值为 1。注意，RO 组必须设置了开启实例延迟剔除策略，该值才有效。
        # @type RoMaxDelayTime: Integer
        # @param RoOfflineDelay: 是否开启实例延迟剔除。支持的值包括：1 - 开启；0 - 不开启。注意，若设置开启实例延迟剔除，则必须设置延迟阈值（RoMaxDelayTime）参数。
        # @type RoOfflineDelay: Integer
        # @param MinRoInGroup: 最少保留实例数。可设置为小于或等于该 RO 组下 RO 实例个数的任意值。注意，若设置值大于 RO 实例数量将不做剔除；若设置为 0，所有实例延迟超限都会被剔除。
        # @type MinRoInGroup: Integer
        # @param WeightMode: 权重模式。支持值包括："system" - 系统自动分配； "custom" - 用户自定义设置。注意，若设置 "custom" 模式，则必须设置 RO 实例权重配置（RoWeightValues）参数。
        # @type WeightMode: String
        # @param ReplicationDelayTime: 延迟复制时间。
        # @type ReplicationDelayTime: Integer

        attr_accessor :RoGroupName, :RoMaxDelayTime, :RoOfflineDelay, :MinRoInGroup, :WeightMode, :ReplicationDelayTime

        def initialize(rogroupname=nil, romaxdelaytime=nil, roofflinedelay=nil, minroingroup=nil, weightmode=nil, replicationdelaytime=nil)
          @RoGroupName = rogroupname
          @RoMaxDelayTime = romaxdelaytime
          @RoOfflineDelay = roofflinedelay
          @MinRoInGroup = minroingroup
          @WeightMode = weightmode
          @ReplicationDelayTime = replicationdelaytime
        end

        def deserialize(params)
          @RoGroupName = params['RoGroupName']
          @RoMaxDelayTime = params['RoMaxDelayTime']
          @RoOfflineDelay = params['RoOfflineDelay']
          @MinRoInGroup = params['MinRoInGroup']
          @WeightMode = params['WeightMode']
          @ReplicationDelayTime = params['ReplicationDelayTime']
        end
      end

      # RO实例的详细信息
      class RoInstanceInfo < TencentCloud::Common::AbstractModel
        # @param MasterInstanceId: RO组对应的主实例的ID
        # @type MasterInstanceId: String
        # @param RoStatus: RO实例在RO组内的状态，可能的值：online-在线，offline-下线
        # @type RoStatus: String
        # @param OfflineTime: RO实例在RO组内上一次下线的时间
        # @type OfflineTime: String
        # @param Weight: RO实例在RO组内的权重
        # @type Weight: Integer
        # @param Region: RO实例所在区域名称，如ap-shanghai
        # @type Region: String
        # @param Zone: RO可用区的正式名称，如ap-shanghai-1
        # @type Zone: String
        # @param InstanceId: RO实例ID，格式如：cdbro-c1nl9rpv
        # @type InstanceId: String
        # @param Status: RO实例状态，可能返回值：0-创建中，1-运行中，3-异地RO（仅在使用DescribeDBInstances查询主实例信息时，返回值中异地RO的状态恒等于3，其他场景下无此值），4-删除中
        # @type Status: Integer
        # @param InstanceType: 实例类型，可能返回值：1-主实例，2-灾备实例，3-只读实例
        # @type InstanceType: Integer
        # @param InstanceName: RO实例名称
        # @type InstanceName: String
        # @param HourFeeStatus: 按量计费状态，可能的取值：1-正常，2-欠费
        # @type HourFeeStatus: Integer
        # @param TaskStatus: RO实例任务状态，可能返回值：<br>0-没有任务<br>1-升级中<br>2-数据导入中<br>3-开放Slave中<br>4-外网访问开通中<br>5-批量操作执行中<br>6-回档中<br>7-外网访问关闭中<br>8-密码修改中<br>9-实例名修改中<br>10-重启中<br>12-自建迁移中<br>13-删除库表中<br>14-灾备实例创建同步中
        # @type TaskStatus: Integer
        # @param Memory: RO实例内存大小，单位：MB
        # @type Memory: Integer
        # @param Volume: RO实例硬盘大小，单位：GB
        # @type Volume: Integer
        # @param Qps: 每次查询数量
        # @type Qps: Integer
        # @param Vip: RO实例的内网IP地址
        # @type Vip: String
        # @param Vport: RO实例访问端口
        # @type Vport: Integer
        # @param VpcId: RO实例所在私有网络ID
        # @type VpcId: Integer
        # @param SubnetId: RO实例所在私有网络子网ID
        # @type SubnetId: Integer
        # @param DeviceType: RO实例规格描述，目前可取值 CUSTOM
        # @type DeviceType: String
        # @param EngineVersion: RO实例数据库引擎版本，可能返回值：5.1、5.5、5.6、5.7、8.0
        # @type EngineVersion: String
        # @param DeadlineTime: RO实例到期时间，时间格式：yyyy-mm-dd hh:mm:ss，如实例为按量计费模式，则此字段值为0000-00-00 00:00:00
        # @type DeadlineTime: String
        # @param PayType: RO实例计费类型，可能返回值：0-包年包月，1-按量计费，2-后付费月结
        # @type PayType: Integer

        attr_accessor :MasterInstanceId, :RoStatus, :OfflineTime, :Weight, :Region, :Zone, :InstanceId, :Status, :InstanceType, :InstanceName, :HourFeeStatus, :TaskStatus, :Memory, :Volume, :Qps, :Vip, :Vport, :VpcId, :SubnetId, :DeviceType, :EngineVersion, :DeadlineTime, :PayType

        def initialize(masterinstanceid=nil, rostatus=nil, offlinetime=nil, weight=nil, region=nil, zone=nil, instanceid=nil, status=nil, instancetype=nil, instancename=nil, hourfeestatus=nil, taskstatus=nil, memory=nil, volume=nil, qps=nil, vip=nil, vport=nil, vpcid=nil, subnetid=nil, devicetype=nil, engineversion=nil, deadlinetime=nil, paytype=nil)
          @MasterInstanceId = masterinstanceid
          @RoStatus = rostatus
          @OfflineTime = offlinetime
          @Weight = weight
          @Region = region
          @Zone = zone
          @InstanceId = instanceid
          @Status = status
          @InstanceType = instancetype
          @InstanceName = instancename
          @HourFeeStatus = hourfeestatus
          @TaskStatus = taskstatus
          @Memory = memory
          @Volume = volume
          @Qps = qps
          @Vip = vip
          @Vport = vport
          @VpcId = vpcid
          @SubnetId = subnetid
          @DeviceType = devicetype
          @EngineVersion = engineversion
          @DeadlineTime = deadlinetime
          @PayType = paytype
        end

        def deserialize(params)
          @MasterInstanceId = params['MasterInstanceId']
          @RoStatus = params['RoStatus']
          @OfflineTime = params['OfflineTime']
          @Weight = params['Weight']
          @Region = params['Region']
          @Zone = params['Zone']
          @InstanceId = params['InstanceId']
          @Status = params['Status']
          @InstanceType = params['InstanceType']
          @InstanceName = params['InstanceName']
          @HourFeeStatus = params['HourFeeStatus']
          @TaskStatus = params['TaskStatus']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @Qps = params['Qps']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DeviceType = params['DeviceType']
          @EngineVersion = params['EngineVersion']
          @DeadlineTime = params['DeadlineTime']
          @PayType = params['PayType']
        end
      end

      # 只读vip信息
      class RoVipInfo < TencentCloud::Common::AbstractModel
        # @param RoVipStatus: 只读vip状态
        # @type RoVipStatus: Integer
        # @param RoSubnetId: 只读vip的子网
        # @type RoSubnetId: Integer
        # @param RoVpcId: 只读vip的私有网络
        # @type RoVpcId: Integer
        # @param RoVport: 只读vip的端口号
        # @type RoVport: Integer
        # @param RoVip: 只读vip
        # @type RoVip: String

        attr_accessor :RoVipStatus, :RoSubnetId, :RoVpcId, :RoVport, :RoVip

        def initialize(rovipstatus=nil, rosubnetid=nil, rovpcid=nil, rovport=nil, rovip=nil)
          @RoVipStatus = rovipstatus
          @RoSubnetId = rosubnetid
          @RoVpcId = rovpcid
          @RoVport = rovport
          @RoVip = rovip
        end

        def deserialize(params)
          @RoVipStatus = params['RoVipStatus']
          @RoSubnetId = params['RoSubnetId']
          @RoVpcId = params['RoVpcId']
          @RoVport = params['RoVport']
          @RoVip = params['RoVip']
        end
      end

      # RO 实例的权重值
      class RoWeightValue < TencentCloud::Common::AbstractModel
        # @param InstanceId: RO 实例 ID。
        # @type InstanceId: String
        # @param Weight: 权重值。取值范围为 [0, 100]。
        # @type Weight: Integer

        attr_accessor :InstanceId, :Weight

        def initialize(instanceid=nil, weight=nil)
          @InstanceId = instanceid
          @Weight = weight
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
        end
      end

      # 用于回档的数据库名
      class RollbackDBName < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 回档前的原数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabaseName: String
        # @param NewDatabaseName: 回档后的新数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewDatabaseName: String

        attr_accessor :DatabaseName, :NewDatabaseName

        def initialize(databasename=nil, newdatabasename=nil)
          @DatabaseName = databasename
          @NewDatabaseName = newdatabasename
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @NewDatabaseName = params['NewDatabaseName']
        end
      end

      # 用于回档的实例详情
      class RollbackInstancesInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 云数据库实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Strategy: 回档策略。可选值为：table、db、full；默认值为full。table - 极速回档模式，仅导入所选中表级别的备份和binlog，如有跨表操作，且关联表未被同时选中，将会导致回档失败，该模式下参数Databases必须为空；db - 快速模式，仅导入所选中库级别的备份和binlog，如有跨库操作，且关联库未被同时选中，将会导致回档失败；full - 普通回档模式，将导入整个实例的备份和binlog，速度较慢。
        # @type Strategy: String
        # @param RollbackTime: 数据库回档时间，时间格式为：yyyy-mm-dd hh:mm:ss
        # @type RollbackTime: String
        # @param Databases: 待回档的数据库信息，表示整库回档
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Databases: Array
        # @param Tables: 待回档的数据库表信息，表示按表回档
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array

        attr_accessor :InstanceId, :Strategy, :RollbackTime, :Databases, :Tables

        def initialize(instanceid=nil, strategy=nil, rollbacktime=nil, databases=nil, tables=nil)
          @InstanceId = instanceid
          @Strategy = strategy
          @RollbackTime = rollbacktime
          @Databases = databases
          @Tables = tables
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Strategy = params['Strategy']
          @RollbackTime = params['RollbackTime']
          unless params['Databases'].nil?
            @Databases = []
            params['Databases'].each do |i|
              rollbackdbname_tmp = RollbackDBName.new
              rollbackdbname_tmp.deserialize(i)
              @Databases << rollbackdbname_tmp
            end
          end
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              rollbacktables_tmp = RollbackTables.new
              rollbacktables_tmp.deserialize(i)
              @Tables << rollbacktables_tmp
            end
          end
        end
      end

      # 用于回档的数据库表名
      class RollbackTableName < TencentCloud::Common::AbstractModel
        # @param TableName: 回档前的原数据库表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableName: String
        # @param NewTableName: 回档后的新数据库表名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewTableName: String

        attr_accessor :TableName, :NewTableName

        def initialize(tablename=nil, newtablename=nil)
          @TableName = tablename
          @NewTableName = newtablename
        end

        def deserialize(params)
          @TableName = params['TableName']
          @NewTableName = params['NewTableName']
        end
      end

      # 用于回档的数据库表详情
      class RollbackTables < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Table: 数据库表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Table: Array

        attr_accessor :Database, :Table

        def initialize(database=nil, table=nil)
          @Database = database
          @Table = table
        end

        def deserialize(params)
          @Database = params['Database']
          unless params['Table'].nil?
            @Table = []
            params['Table'].each do |i|
              rollbacktablename_tmp = RollbackTableName.new
              rollbacktablename_tmp.deserialize(i)
              @Table << rollbacktablename_tmp
            end
          end
        end
      end

      # 回档任务详情
      class RollbackTask < TencentCloud::Common::AbstractModel
        # @param Info: 任务执行信息描述。
        # @type Info: String
        # @param Status: 任务执行结果。可能的取值：INITIAL - 初始化，RUNNING - 运行中，SUCCESS - 执行成功，FAILED - 执行失败，KILLED - 已终止，REMOVED - 已删除，PAUSED - 终止中。
        # @type Status: String
        # @param Progress: 任务执行进度。取值范围为[0, 100]。
        # @type Progress: Integer
        # @param StartTime: 任务开始时间。
        # @type StartTime: String
        # @param EndTime: 任务结束时间。
        # @type EndTime: String
        # @param Detail: 回档任务详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array

        attr_accessor :Info, :Status, :Progress, :StartTime, :EndTime, :Detail

        def initialize(info=nil, status=nil, progress=nil, starttime=nil, endtime=nil, detail=nil)
          @Info = info
          @Status = status
          @Progress = progress
          @StartTime = starttime
          @EndTime = endtime
          @Detail = detail
        end

        def deserialize(params)
          @Info = params['Info']
          @Status = params['Status']
          @Progress = params['Progress']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              rollbackinstancesinfo_tmp = RollbackInstancesInfo.new
              rollbackinstancesinfo_tmp.deserialize(i)
              @Detail << rollbackinstancesinfo_tmp
            end
          end
        end
      end

      # 可回档时间范围
      class RollbackTimeRange < TencentCloud::Common::AbstractModel
        # @param Begin: 实例可回档开始时间，时间格式：2016-10-29 01:06:04
        # @type Begin: String
        # @param End: 实例可回档结束时间，时间格式：2016-11-02 11:44:47
        # @type End: String

        attr_accessor :Begin, :End

        def initialize(_begin=nil, _end=nil)
          @Begin = _begin
          @End = _end
        end

        def deserialize(params)
          @Begin = params['Begin']
          @End = params['End']
        end
      end

      # 权重分配规则
      class Rule < TencentCloud::Common::AbstractModel
        # @param LessThan: 划分上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LessThan: Integer
        # @param Weight: 权重
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer

        attr_accessor :LessThan, :Weight

        def initialize(lessthan=nil, weight=nil)
          @LessThan = lessthan
          @Weight = weight
        end

        def deserialize(params)
          @LessThan = params['LessThan']
          @Weight = params['Weight']
        end
      end

      # 审计规则的规则过滤条件
      class RuleFilters < TencentCloud::Common::AbstractModel
        # @param Type: 审计规则过滤条件的参数名称。可选值：host – 客户端 IP；user – 数据库账户；dbName – 数据库名称；sqlType-SQL类型；sql-sql语句；affectRows -影响行数；sentRows-返回行数；checkRows-扫描行数；execTime-执行时间。
        # @type Type: String
        # @param Compare: 审计规则过滤条件的匹配类型。可选值：INC – 包含；EXC – 不包含；EQS – 等于；NEQ – 不等于；REG-正则；GT-大于；LT-小于。
        # @type Compare: String
        # @param Value: 审计规则过滤条件的匹配值。sqlType条件的Value需在以下选择"alter", "changeuser", "create", "delete", "drop", "execute", "insert", "login", "logout", "other", "replace", "select", "set", "update"。
        # @type Value: Array

        attr_accessor :Type, :Compare, :Value

        def initialize(type=nil, compare=nil, value=nil)
          @Type = type
          @Compare = compare
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Compare = params['Compare']
          @Value = params['Value']
        end
      end

      # 规则模板内容
      class RuleTemplateInfo < TencentCloud::Common::AbstractModel
        # @param RuleTemplateId: 规则模板ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateId: String
        # @param RuleTemplateName: 规则模板名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateName: String
        # @param RuleFilters: 规则内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleFilters: Array
        # @param AlarmLevel: 告警等级。1-低风险，2-中风险，3-高风险。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmLevel: Integer
        # @param AlarmPolicy: 告警策略。0-不告警，1-告警。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlarmPolicy: Integer
        # @param Description: 规则描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :RuleTemplateId, :RuleTemplateName, :RuleFilters, :AlarmLevel, :AlarmPolicy, :Description

        def initialize(ruletemplateid=nil, ruletemplatename=nil, rulefilters=nil, alarmlevel=nil, alarmpolicy=nil, description=nil)
          @RuleTemplateId = ruletemplateid
          @RuleTemplateName = ruletemplatename
          @RuleFilters = rulefilters
          @AlarmLevel = alarmlevel
          @AlarmPolicy = alarmpolicy
          @Description = description
        end

        def deserialize(params)
          @RuleTemplateId = params['RuleTemplateId']
          @RuleTemplateName = params['RuleTemplateName']
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              rulefilters_tmp = RuleFilters.new
              rulefilters_tmp.deserialize(i)
              @RuleFilters << rulefilters_tmp
            end
          end
          @AlarmLevel = params['AlarmLevel']
          @AlarmPolicy = params['AlarmPolicy']
          @Description = params['Description']
        end
      end

      # 规则模板变更记录信息
      class RuleTemplateRecordInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param ModifyBeforeInfo: 修改前规则模板的详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyBeforeInfo: :class:`Tencentcloud::Cdb.v20170320.models.RuleTemplateInfo`
        # @param ModifyAfterInfo: 修改后规则模板的详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyAfterInfo: :class:`Tencentcloud::Cdb.v20170320.models.RuleTemplateInfo`
        # @param AffectedInstances: 影响的实例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AffectedInstances: Array
        # @param Operator: 操作人，账号uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param UpdateTime: 变更的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :TaskId, :ModifyBeforeInfo, :ModifyAfterInfo, :AffectedInstances, :Operator, :UpdateTime

        def initialize(taskid=nil, modifybeforeinfo=nil, modifyafterinfo=nil, affectedinstances=nil, operator=nil, updatetime=nil)
          @TaskId = taskid
          @ModifyBeforeInfo = modifybeforeinfo
          @ModifyAfterInfo = modifyafterinfo
          @AffectedInstances = affectedinstances
          @Operator = operator
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['ModifyBeforeInfo'].nil?
            @ModifyBeforeInfo = RuleTemplateInfo.new
            @ModifyBeforeInfo.deserialize(params['ModifyBeforeInfo'])
          end
          unless params['ModifyAfterInfo'].nil?
            @ModifyAfterInfo = RuleTemplateInfo.new
            @ModifyAfterInfo.deserialize(params['ModifyAfterInfo'])
          end
          @AffectedInstances = params['AffectedInstances']
          @Operator = params['Operator']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 安全组详情
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param CreateTime: 创建时间，时间格式：yyyy-mm-dd hh:mm:ss
        # @type CreateTime: String
        # @param Inbound: 入站规则
        # @type Inbound: Array
        # @param Outbound: 出站规则
        # @type Outbound: Array
        # @param SecurityGroupId: 安全组ID
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组备注
        # @type SecurityGroupRemark: String

        attr_accessor :ProjectId, :CreateTime, :Inbound, :Outbound, :SecurityGroupId, :SecurityGroupName, :SecurityGroupRemark

        def initialize(projectid=nil, createtime=nil, inbound=nil, outbound=nil, securitygroupid=nil, securitygroupname=nil, securitygroupremark=nil)
          @ProjectId = projectid
          @CreateTime = createtime
          @Inbound = inbound
          @Outbound = outbound
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupRemark = securitygroupremark
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @CreateTime = params['CreateTime']
          unless params['Inbound'].nil?
            @Inbound = []
            params['Inbound'].each do |i|
              inbound_tmp = Inbound.new
              inbound_tmp.deserialize(i)
              @Inbound << inbound_tmp
            end
          end
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              outbound_tmp = Outbound.new
              outbound_tmp.deserialize(i)
              @Outbound << outbound_tmp
            end
          end
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
        end
      end

      # 从库的配置信息
      class SlaveConfig < TencentCloud::Common::AbstractModel
        # @param ReplicationMode: 从库复制方式，可能的返回值：aysnc-异步，semisync-半同步
        # @type ReplicationMode: String
        # @param Zone: 从库可用区的正式名称，如ap-shanghai-1
        # @type Zone: String

        attr_accessor :ReplicationMode, :Zone

        def initialize(replicationmode=nil, zone=nil)
          @ReplicationMode = replicationmode
          @Zone = zone
        end

        def deserialize(params)
          @ReplicationMode = params['ReplicationMode']
          @Zone = params['Zone']
        end
      end

      # 备机信息
      class SlaveInfo < TencentCloud::Common::AbstractModel
        # @param First: 第一备机信息
        # @type First: :class:`Tencentcloud::Cdb.v20170320.models.SlaveInstanceInfo`
        # @param Second: 第二备机信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Second: :class:`Tencentcloud::Cdb.v20170320.models.SlaveInstanceInfo`

        attr_accessor :First, :Second

        def initialize(first=nil, second=nil)
          @First = first
          @Second = second
        end

        def deserialize(params)
          unless params['First'].nil?
            @First = SlaveInstanceInfo.new
            @First.deserialize(params['First'])
          end
          unless params['Second'].nil?
            @Second = SlaveInstanceInfo.new
            @Second.deserialize(params['Second'])
          end
        end
      end

      # 备机信息
      class SlaveInstanceInfo < TencentCloud::Common::AbstractModel
        # @param Vport: 端口号
        # @type Vport: Integer
        # @param Region: 地域信息
        # @type Region: String
        # @param Vip: 虚拟 IP 信息
        # @type Vip: String
        # @param Zone: 可用区信息
        # @type Zone: String

        attr_accessor :Vport, :Region, :Vip, :Zone

        def initialize(vport=nil, region=nil, vip=nil, zone=nil)
          @Vport = vport
          @Region = region
          @Vip = vip
          @Zone = zone
        end

        def deserialize(params)
          @Vport = params['Vport']
          @Region = params['Region']
          @Vip = params['Vip']
          @Zone = params['Zone']
        end
      end

      # 慢查询日志详情
      class SlowLogInfo < TencentCloud::Common::AbstractModel
        # @param Name: 备份文件名
        # @type Name: String
        # @param Size: 备份文件大小，单位：Byte
        # @type Size: Integer
        # @param Date: 备份快照时间，时间格式：2016-03-17 02:10:37
        # @type Date: String
        # @param IntranetUrl: 内网下载地址
        # @type IntranetUrl: String
        # @param InternetUrl: 外网下载地址
        # @type InternetUrl: String
        # @param Type: 日志具体类型，可能的值：slowlog - 慢日志
        # @type Type: String

        attr_accessor :Name, :Size, :Date, :IntranetUrl, :InternetUrl, :Type

        def initialize(name=nil, size=nil, date=nil, intraneturl=nil, interneturl=nil, type=nil)
          @Name = name
          @Size = size
          @Date = date
          @IntranetUrl = intraneturl
          @InternetUrl = interneturl
          @Type = type
        end

        def deserialize(params)
          @Name = params['Name']
          @Size = params['Size']
          @Date = params['Date']
          @IntranetUrl = params['IntranetUrl']
          @InternetUrl = params['InternetUrl']
          @Type = params['Type']
        end
      end

      # 结构化的慢日志详情
      class SlowLogItem < TencentCloud::Common::AbstractModel
        # @param Timestamp: Sql的执行时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param QueryTime: Sql的执行时长（秒）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryTime: Float
        # @param SqlText: Sql语句。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlText: String
        # @param UserHost: 客户端地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserHost: String
        # @param UserName: 用户名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Database: 数据库名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param LockTime: 锁时长（秒）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LockTime: Float
        # @param RowsExamined: 扫描行数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowsExamined: Integer
        # @param RowsSent: 结果集行数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowsSent: Integer
        # @param SqlTemplate: Sql模板。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SqlTemplate: String
        # @param Md5: Sql语句的md5。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String

        attr_accessor :Timestamp, :QueryTime, :SqlText, :UserHost, :UserName, :Database, :LockTime, :RowsExamined, :RowsSent, :SqlTemplate, :Md5

        def initialize(timestamp=nil, querytime=nil, sqltext=nil, userhost=nil, username=nil, database=nil, locktime=nil, rowsexamined=nil, rowssent=nil, sqltemplate=nil, md5=nil)
          @Timestamp = timestamp
          @QueryTime = querytime
          @SqlText = sqltext
          @UserHost = userhost
          @UserName = username
          @Database = database
          @LockTime = locktime
          @RowsExamined = rowsexamined
          @RowsSent = rowssent
          @SqlTemplate = sqltemplate
          @Md5 = md5
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @QueryTime = params['QueryTime']
          @SqlText = params['SqlText']
          @UserHost = params['UserHost']
          @UserName = params['UserName']
          @Database = params['Database']
          @LockTime = params['LockTime']
          @RowsExamined = params['RowsExamined']
          @RowsSent = params['RowsSent']
          @SqlTemplate = params['SqlTemplate']
          @Md5 = params['Md5']
        end
      end

      # sql文件信息
      class SqlFileInfo < TencentCloud::Common::AbstractModel
        # @param UploadTime: 上传时间
        # @type UploadTime: String
        # @param UploadInfo: 上传进度
        # @type UploadInfo: :class:`Tencentcloud::Cdb.v20170320.models.UploadInfo`
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileSize: 文件大小，单位为Bytes
        # @type FileSize: Integer
        # @param IsUploadFinished: 上传是否完成标志，可选值：0 - 未完成，1 - 已完成
        # @type IsUploadFinished: Integer
        # @param FileId: 文件ID
        # @type FileId: String

        attr_accessor :UploadTime, :UploadInfo, :FileName, :FileSize, :IsUploadFinished, :FileId

        def initialize(uploadtime=nil, uploadinfo=nil, filename=nil, filesize=nil, isuploadfinished=nil, fileid=nil)
          @UploadTime = uploadtime
          @UploadInfo = uploadinfo
          @FileName = filename
          @FileSize = filesize
          @IsUploadFinished = isuploadfinished
          @FileId = fileid
        end

        def deserialize(params)
          @UploadTime = params['UploadTime']
          unless params['UploadInfo'].nil?
            @UploadInfo = UploadInfo.new
            @UploadInfo.deserialize(params['UploadInfo'])
          end
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @IsUploadFinished = params['IsUploadFinished']
          @FileId = params['FileId']
        end
      end

      # StartBatchRollback请求参数结构体
      class StartBatchRollbackRequest < TencentCloud::Common::AbstractModel
        # @param Instances: 用于回档的实例详情信息。
        # @type Instances: Array

        attr_accessor :Instances

        def initialize(instances=nil)
          @Instances = instances
        end

        def deserialize(params)
          unless params['Instances'].nil?
            @Instances = []
            params['Instances'].each do |i|
              rollbackinstancesinfo_tmp = RollbackInstancesInfo.new
              rollbackinstancesinfo_tmp.deserialize(i)
              @Instances << rollbackinstancesinfo_tmp
            end
          end
        end
      end

      # StartBatchRollback返回参数结构体
      class StartBatchRollbackResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # StartCpuExpand请求参数结构体
      class StartCpuExpandRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String
        # @param Type: 扩容类型。可选值：auto：代表进行自动扩容
        # manual：代表进行手动扩容
        # @type Type: String
        # @param ExpandCpu: 手动扩容时，扩容的CPU核心数。Type 为 manual 时必传。
        # @type ExpandCpu: Integer
        # @param AutoStrategy: 自动扩容策略。Type 为 auto 时必传。
        # @type AutoStrategy: :class:`Tencentcloud::Cdb.v20170320.models.AutoStrategy`

        attr_accessor :InstanceId, :Type, :ExpandCpu, :AutoStrategy

        def initialize(instanceid=nil, type=nil, expandcpu=nil, autostrategy=nil)
          @InstanceId = instanceid
          @Type = type
          @ExpandCpu = expandcpu
          @AutoStrategy = autostrategy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @ExpandCpu = params['ExpandCpu']
          unless params['AutoStrategy'].nil?
            @AutoStrategy = AutoStrategy.new
            @AutoStrategy.deserialize(params['AutoStrategy'])
          end
        end
      end

      # StartCpuExpand返回参数结构体
      class StartCpuExpandResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID 。可以调用DescribeAsyncRequest 传入该 ID ，进行任务执行进度的查询
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # StartReplication请求参数结构体
      class StartReplicationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。仅支持只读实例。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # StartReplication返回参数结构体
      class StartReplicationResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # StopCpuExpand请求参数结构体
      class StopCpuExpandRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID 。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # StopCpuExpand返回参数结构体
      class StopCpuExpandResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID 。可以调用DescribeAsyncRequest 传入该 ID ，进行任务执行进度的查询
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # StopDBImportJob请求参数结构体
      class StopDBImportJobRequest < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID。
        # @type AsyncRequestId: String

        attr_accessor :AsyncRequestId

        def initialize(asyncrequestid=nil)
          @AsyncRequestId = asyncrequestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
        end
      end

      # StopDBImportJob返回参数结构体
      class StopDBImportJobResponse < TencentCloud::Common::AbstractModel
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

      # StopReplication请求参数结构体
      class StopReplicationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。仅支持只读实例。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # StopReplication返回参数结构体
      class StopReplicationResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # StopRollback请求参数结构体
      class StopRollbackRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 撤销回档任务对应的实例Id。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # StopRollback返回参数结构体
      class StopRollbackResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 执行请求的异步任务ID
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # SwitchCDBProxy请求参数结构体
      class SwitchCDBProxyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ProxyGroupId: 数据库代理ID
        # @type ProxyGroupId: String

        attr_accessor :InstanceId, :ProxyGroupId

        def initialize(instanceid=nil, proxygroupid=nil)
          @InstanceId = instanceid
          @ProxyGroupId = proxygroupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ProxyGroupId = params['ProxyGroupId']
        end
      end

      # SwitchCDBProxy返回参数结构体
      class SwitchCDBProxyResponse < TencentCloud::Common::AbstractModel
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

      # SwitchDBInstanceMasterSlave请求参数结构体
      class SwitchDBInstanceMasterSlaveRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param DstSlave: 目标从实例。可选值："first" - 第一备机；"second" - 第二备机。默认值为 "first"，仅多可用区实例支持设置为 "second"。
        # @type DstSlave: String
        # @param ForceSwitch: 是否强制切换。默认为 False。注意，若设置强制切换为 True，实例存在丢失数据的风险，请谨慎使用。
        # @type ForceSwitch: Boolean
        # @param WaitSwitch: 是否时间窗内切换。默认为 False，即不在时间窗内切换。注意，如果设置了 ForceSwitch 参数为 True，则该参数不生效。
        # @type WaitSwitch: Boolean

        attr_accessor :InstanceId, :DstSlave, :ForceSwitch, :WaitSwitch

        def initialize(instanceid=nil, dstslave=nil, forceswitch=nil, waitswitch=nil)
          @InstanceId = instanceid
          @DstSlave = dstslave
          @ForceSwitch = forceswitch
          @WaitSwitch = waitswitch
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DstSlave = params['DstSlave']
          @ForceSwitch = params['ForceSwitch']
          @WaitSwitch = params['WaitSwitch']
        end
      end

      # SwitchDBInstanceMasterSlave返回参数结构体
      class SwitchDBInstanceMasterSlaveResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # SwitchDrInstanceToMaster请求参数结构体
      class SwitchDrInstanceToMasterRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 灾备实例ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # SwitchDrInstanceToMaster返回参数结构体
      class SwitchDrInstanceToMasterResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求ID，可使用此ID查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # SwitchForUpgrade请求参数结构体
      class SwitchForUpgradeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # SwitchForUpgrade返回参数结构体
      class SwitchForUpgradeResponse < TencentCloud::Common::AbstractModel
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

      # 数据库表权限
      class TablePrivilege < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名
        # @type Database: String
        # @param Table: 数据库表名
        # @type Table: String
        # @param Privileges: 权限信息
        # @type Privileges: Array

        attr_accessor :Database, :Table, :Privileges

        def initialize(database=nil, table=nil, privileges=nil)
          @Database = database
          @Table = table
          @Privileges = privileges
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @Privileges = params['Privileges']
        end
      end

      # 标签结构
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签键
        # @type Key: String
        # @param Value: 标签值
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

      # 标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: Array

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 标签信息
      class TagInfoItem < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # tag信息单元
      class TagInfoUnit < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 实例的标签信息
      class TagsInfoOfInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Tags: 标签信息
        # @type Tags: Array

        attr_accessor :InstanceId, :Tags

        def initialize(instanceid=nil, tags=nil)
          @InstanceId = instanceid
          @Tags = tags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfounit_tmp = TagInfoUnit.new
              taginfounit_tmp.deserialize(i)
              @Tags << taginfounit_tmp
            end
          end
        end
      end

      # 任务列表中的部分任务支持特定的附加信息
      class TaskAttachInfo < TencentCloud::Common::AbstractModel
        # @param AttachKey: 升级任务：
        # ”FastUpgradeStatus“：表示升级类型。1-原地升级；0-普通升级。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachKey: String
        # @param AttachValue: 升级任务：
        # ”FastUpgradeStatus“：表示升级类型。1-原地升级；0-普通升级。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachValue: String

        attr_accessor :AttachKey, :AttachValue

        def initialize(attachkey=nil, attachvalue=nil)
          @AttachKey = attachkey
          @AttachValue = attachvalue
        end

        def deserialize(params)
          @AttachKey = params['AttachKey']
          @AttachValue = params['AttachValue']
        end
      end

      # 实例任务详情
      class TaskDetail < TencentCloud::Common::AbstractModel
        # @param Code: 错误码。
        # @type Code: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param JobId: 实例任务 ID。
        # @type JobId: Integer
        # @param Progress: 实例任务进度。
        # @type Progress: Integer
        # @param TaskStatus: 实例任务状态，可能的值包括：
        # "UNDEFINED" - 未定义；
        # "INITIAL" - 初始化；
        # "RUNNING" - 运行中；
        # "SUCCEED" - 执行成功；
        # "FAILED" - 执行失败；
        # "KILLED" - 已终止；
        # "REMOVED" - 已删除；
        # "PAUSED" - 已暂停。
        # "WAITING" - 等待中（可撤销）
        # @type TaskStatus: String
        # @param TaskType: 实例任务类型，可能的值包括：
        # "ROLLBACK" - 数据库回档；
        # "SQL OPERATION" - SQL操作；
        # "IMPORT DATA" - 数据导入；
        # "MODIFY PARAM" - 参数设置；
        # "INITIAL" - 初始化云数据库实例；
        # "REBOOT" - 重启云数据库实例；
        # "OPEN GTID" - 开启云数据库实例GTID；
        # "UPGRADE RO" - 只读实例升级；
        # "BATCH ROLLBACK" - 数据库批量回档；
        # "UPGRADE MASTER" - 主实例升级；
        # "DROP TABLES" - 删除云数据库库表；
        # "SWITCH DR TO MASTER" - 灾备实例提升为主。
        # @type TaskType: String
        # @param StartTime: 实例任务开始时间。
        # @type StartTime: String
        # @param EndTime: 实例任务结束时间。
        # @type EndTime: String
        # @param InstanceIds: 任务关联的实例 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIds: Array
        # @param AsyncRequestId: 异步任务的请求 ID。
        # @type AsyncRequestId: String
        # @param TaskAttachInfo: 任务的附加信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskAttachInfo: Array

        attr_accessor :Code, :Message, :JobId, :Progress, :TaskStatus, :TaskType, :StartTime, :EndTime, :InstanceIds, :AsyncRequestId, :TaskAttachInfo

        def initialize(code=nil, message=nil, jobid=nil, progress=nil, taskstatus=nil, tasktype=nil, starttime=nil, endtime=nil, instanceids=nil, asyncrequestid=nil, taskattachinfo=nil)
          @Code = code
          @Message = message
          @JobId = jobid
          @Progress = progress
          @TaskStatus = taskstatus
          @TaskType = tasktype
          @StartTime = starttime
          @EndTime = endtime
          @InstanceIds = instanceids
          @AsyncRequestId = asyncrequestid
          @TaskAttachInfo = taskattachinfo
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          @JobId = params['JobId']
          @Progress = params['Progress']
          @TaskStatus = params['TaskStatus']
          @TaskType = params['TaskType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InstanceIds = params['InstanceIds']
          @AsyncRequestId = params['AsyncRequestId']
          unless params['TaskAttachInfo'].nil?
            @TaskAttachInfo = []
            params['TaskAttachInfo'].each do |i|
              taskattachinfo_tmp = TaskAttachInfo.new
              taskattachinfo_tmp.deserialize(i)
              @TaskAttachInfo << taskattachinfo_tmp
            end
          end
        end
      end

      # UpgradeCDBProxyVersion请求参数结构体
      class UpgradeCDBProxyVersionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ProxyGroupId: 数据库代理ID
        # @type ProxyGroupId: String
        # @param SrcProxyVersion: 数据库代理当前版本
        # @type SrcProxyVersion: String
        # @param DstProxyVersion: 数据库代理升级版本
        # @type DstProxyVersion: String
        # @param UpgradeTime: 升级时间 ：nowTime（升级完成时）timeWindow（实例维护时间）
        # @type UpgradeTime: String

        attr_accessor :InstanceId, :ProxyGroupId, :SrcProxyVersion, :DstProxyVersion, :UpgradeTime

        def initialize(instanceid=nil, proxygroupid=nil, srcproxyversion=nil, dstproxyversion=nil, upgradetime=nil)
          @InstanceId = instanceid
          @ProxyGroupId = proxygroupid
          @SrcProxyVersion = srcproxyversion
          @DstProxyVersion = dstproxyversion
          @UpgradeTime = upgradetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ProxyGroupId = params['ProxyGroupId']
          @SrcProxyVersion = params['SrcProxyVersion']
          @DstProxyVersion = params['DstProxyVersion']
          @UpgradeTime = params['UpgradeTime']
        end
      end

      # UpgradeCDBProxyVersion返回参数结构体
      class UpgradeCDBProxyVersionResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步处理ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeDBInstanceEngineVersion请求参数结构体
      class UpgradeDBInstanceEngineVersionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String
        # @param EngineVersion: 主实例数据库引擎版本，支持值包括：5.6 和 5.7。
        # @type EngineVersion: String
        # @param WaitSwitch: 切换访问新实例的方式，默认为 0。支持值包括：0 - 立刻切换，1 - 时间窗切换；当该值为 1 时，升级过程中，切换访问新实例的流程将会在时间窗内进行，或者用户主动调用接口 [切换访问新实例](https://cloud.tencent.com/document/product/236/15864) 触发该流程。
        # @type WaitSwitch: Integer
        # @param UpgradeSubversion: 是否是内核子版本升级，支持的值：1 - 升级内核子版本；0 - 升级数据库引擎版本。
        # @type UpgradeSubversion: Integer
        # @param MaxDelayTime: 延迟阈值。取值范围1~10
        # @type MaxDelayTime: Integer

        attr_accessor :InstanceId, :EngineVersion, :WaitSwitch, :UpgradeSubversion, :MaxDelayTime

        def initialize(instanceid=nil, engineversion=nil, waitswitch=nil, upgradesubversion=nil, maxdelaytime=nil)
          @InstanceId = instanceid
          @EngineVersion = engineversion
          @WaitSwitch = waitswitch
          @UpgradeSubversion = upgradesubversion
          @MaxDelayTime = maxdelaytime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @EngineVersion = params['EngineVersion']
          @WaitSwitch = params['WaitSwitch']
          @UpgradeSubversion = params['UpgradeSubversion']
          @MaxDelayTime = params['MaxDelayTime']
        end
      end

      # UpgradeDBInstanceEngineVersion返回参数结构体
      class UpgradeDBInstanceEngineVersionResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务 ID，可使用 [查询异步任务的执行结果](https://cloud.tencent.com/document/api/236/20410) 获取其执行情况。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeDBInstance请求参数结构体
      class UpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceId: String
        # @param Memory: 升级后的内存大小，单位：MB，为保证传入 Memory 值有效，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口获取可升级的内存规格。
        # 说明：如果进行迁移业务，请一定填写实例规格（CPU、内存），不然系统会默认以最小允许规格传参。
        # @type Memory: Integer
        # @param Volume: 升级后的硬盘大小，单位：GB，为保证传入 Volume 值有效，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口获取可升级的硬盘范围。
        # @type Volume: Integer
        # @param ProtectMode: 数据复制方式，支持值包括：0 - 异步复制，1 - 半同步复制，2 - 强同步复制，升级主实例时可指定该参数，升级只读实例或者灾备实例时指定该参数无意义。
        # @type ProtectMode: Integer
        # @param DeployMode: 部署模式，默认为 0，支持值包括：0 - 单可用区部署，1 - 多可用区部署，升级主实例时可指定该参数，升级只读实例或者灾备实例时指定该参数无意义。
        # @type DeployMode: Integer
        # @param SlaveZone: 备库1的可用区信息，默认和实例的 Zone 参数一致，升级主实例为多可用区部署时可指定该参数，升级只读实例或者灾备实例时指定该参数无意义。可通过 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口查询支持的可用区。
        # @type SlaveZone: String
        # @param EngineVersion: 主实例数据库引擎版本，支持值包括：5.5、5.6 和 5.7。
        # @type EngineVersion: String
        # @param WaitSwitch: 切换访问新实例的方式，默认为 0。支持值包括：0 - 立刻切换，1 - 时间窗切换；当该值为 1 时，升级过程中，切换访问新实例的流程将会在时间窗内进行，或者用户主动调用接口 [切换访问新实例](https://cloud.tencent.com/document/product/236/15864) 触发该流程。
        # @type WaitSwitch: Integer
        # @param BackupZone: 备库 2 的可用区信息，默认为空，升级主实例时可指定该参数，升级只读实例或者灾备实例时指定该参数无意义。
        # 备注：如您要将三节点降级至双节点，将该参数设置为空值即可实现。
        # @type BackupZone: String
        # @param InstanceRole: 实例类型，默认为 master，支持值包括：master - 表示主实例，dr - 表示灾备实例，ro - 表示只读实例。
        # @type InstanceRole: String
        # @param DeviceType: 实例隔离类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例， "BASIC" - 基础版实例。
        # @type DeviceType: String
        # @param Cpu: 升级后的实例cpu核数，如果不传将根据 Memory 指定的内存值自动填充最小允许规格的cpu值。
        # 说明：如果进行迁移业务，请一定填写实例规格（CPU、内存），不然系统会默认以最小允许规格传参。
        # @type Cpu: Integer
        # @param FastUpgrade: 是否极速变配。0-普通升级，1-极速变配，2 极速优先。选择极速变配会根据资源状况校验是否可以进行极速变配，满足条件则进行极速变配，不满足条件会返回报错信息。
        # @type FastUpgrade: Integer
        # @param MaxDelayTime: 延迟阈值。取值范围1~10，默认值为10。
        # @type MaxDelayTime: Integer
        # @param CrossCluster: 是否跨区迁移。0-普通迁移，1-跨区迁移，默认值为0。该值为1时支持变更实例主节点可用区。
        # @type CrossCluster: Integer
        # @param ZoneId: 主节点可用区，该值仅在跨区迁移时生效。仅支持同地域下的可用区进行迁移。
        # @type ZoneId: String
        # @param RoTransType: 针对跨集群搬迁场景，选择同可用区RO的处理逻辑。together-同可用区RO跟随主实例迁移至目标可用区（默认选项），severally-同可用区RO保持原部署模式、不迁移至目标可用区。
        # @type RoTransType: String

        attr_accessor :InstanceId, :Memory, :Volume, :ProtectMode, :DeployMode, :SlaveZone, :EngineVersion, :WaitSwitch, :BackupZone, :InstanceRole, :DeviceType, :Cpu, :FastUpgrade, :MaxDelayTime, :CrossCluster, :ZoneId, :RoTransType

        def initialize(instanceid=nil, memory=nil, volume=nil, protectmode=nil, deploymode=nil, slavezone=nil, engineversion=nil, waitswitch=nil, backupzone=nil, instancerole=nil, devicetype=nil, cpu=nil, fastupgrade=nil, maxdelaytime=nil, crosscluster=nil, zoneid=nil, rotranstype=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
          @ProtectMode = protectmode
          @DeployMode = deploymode
          @SlaveZone = slavezone
          @EngineVersion = engineversion
          @WaitSwitch = waitswitch
          @BackupZone = backupzone
          @InstanceRole = instancerole
          @DeviceType = devicetype
          @Cpu = cpu
          @FastUpgrade = fastupgrade
          @MaxDelayTime = maxdelaytime
          @CrossCluster = crosscluster
          @ZoneId = zoneid
          @RoTransType = rotranstype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @ProtectMode = params['ProtectMode']
          @DeployMode = params['DeployMode']
          @SlaveZone = params['SlaveZone']
          @EngineVersion = params['EngineVersion']
          @WaitSwitch = params['WaitSwitch']
          @BackupZone = params['BackupZone']
          @InstanceRole = params['InstanceRole']
          @DeviceType = params['DeviceType']
          @Cpu = params['Cpu']
          @FastUpgrade = params['FastUpgrade']
          @MaxDelayTime = params['MaxDelayTime']
          @CrossCluster = params['CrossCluster']
          @ZoneId = params['ZoneId']
          @RoTransType = params['RoTransType']
        end
      end

      # UpgradeDBInstance返回参数结构体
      class UpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealIds: 订单 ID。
        # @type DealIds: Array
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealIds, :AsyncRequestId, :RequestId

        def initialize(dealids=nil, asyncrequestid=nil, requestid=nil)
          @DealIds = dealids
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @DealIds = params['DealIds']
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # 文件上传描述
      class UploadInfo < TencentCloud::Common::AbstractModel
        # @param AllSliceNum: 文件所有分片数
        # @type AllSliceNum: Integer
        # @param CompleteNum: 已完成分片数
        # @type CompleteNum: Integer

        attr_accessor :AllSliceNum, :CompleteNum

        def initialize(allslicenum=nil, completenum=nil)
          @AllSliceNum = allslicenum
          @CompleteNum = completenum
        end

        def deserialize(params)
          @AllSliceNum = params['AllSliceNum']
          @CompleteNum = params['CompleteNum']
        end
      end

      # VerifyRootAccount请求参数结构体
      class VerifyRootAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param Password: 实例 ROOT 账号的密码。
        # @type Password: String

        attr_accessor :InstanceId, :Password

        def initialize(instanceid=nil, password=nil)
          @InstanceId = instanceid
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Password = params['Password']
        end
      end

      # VerifyRootAccount返回参数结构体
      class VerifyRootAccountResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsyncRequestId, :RequestId

        def initialize(asyncrequestid=nil, requestid=nil)
          @AsyncRequestId = asyncrequestid
          @RequestId = requestid
        end

        def deserialize(params)
          @AsyncRequestId = params['AsyncRequestId']
          @RequestId = params['RequestId']
        end
      end

      # 多可用区信息
      class ZoneConf < TencentCloud::Common::AbstractModel
        # @param DeployMode: 可用区部署方式，可能的值为：0-单可用区；1-多可用区
        # @type DeployMode: Array
        # @param MasterZone: 主实例所在的可用区
        # @type MasterZone: Array
        # @param SlaveZone: 实例为多可用区部署时，备库1所在的可用区
        # @type SlaveZone: Array
        # @param BackupZone: 实例为多可用区部署时，备库2所在的可用区
        # @type BackupZone: Array

        attr_accessor :DeployMode, :MasterZone, :SlaveZone, :BackupZone

        def initialize(deploymode=nil, masterzone=nil, slavezone=nil, backupzone=nil)
          @DeployMode = deploymode
          @MasterZone = masterzone
          @SlaveZone = slavezone
          @BackupZone = backupzone
        end

        def deserialize(params)
          @DeployMode = params['DeployMode']
          @MasterZone = params['MasterZone']
          @SlaveZone = params['SlaveZone']
          @BackupZone = params['BackupZone']
        end
      end

    end
  end
end

