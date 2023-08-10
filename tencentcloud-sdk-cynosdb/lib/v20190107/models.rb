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
  module Cynosdb
    module V20190107
      # 集群支持的功能
      class Ability < TencentCloud::Common::AbstractModel
        # @param IsSupportSlaveZone: 是否支持从可用区
        # @type IsSupportSlaveZone: String
        # @param NonsupportSlaveZoneReason: 不支持从可用区的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NonsupportSlaveZoneReason: String
        # @param IsSupportRo: 是否支持RO实例
        # @type IsSupportRo: String
        # @param NonsupportRoReason: 不支持RO实例的原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NonsupportRoReason: String

        attr_accessor :IsSupportSlaveZone, :NonsupportSlaveZoneReason, :IsSupportRo, :NonsupportRoReason

        def initialize(issupportslavezone=nil, nonsupportslavezonereason=nil, issupportro=nil, nonsupportroreason=nil)
          @IsSupportSlaveZone = issupportslavezone
          @NonsupportSlaveZoneReason = nonsupportslavezonereason
          @IsSupportRo = issupportro
          @NonsupportRoReason = nonsupportroreason
        end

        def deserialize(params)
          @IsSupportSlaveZone = params['IsSupportSlaveZone']
          @NonsupportSlaveZoneReason = params['NonsupportSlaveZoneReason']
          @IsSupportRo = params['IsSupportRo']
          @NonsupportRoReason = params['NonsupportRoReason']
        end
      end

      # 数据库账号信息
      class Account < TencentCloud::Common::AbstractModel
        # @param AccountName: 数据库账号名
        # @type AccountName: String
        # @param Description: 数据库账号描述
        # @type Description: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Host: 主机
        # @type Host: String
        # @param MaxUserConnections: 用户最大连接数
        # @type MaxUserConnections: Integer

        attr_accessor :AccountName, :Description, :CreateTime, :UpdateTime, :Host, :MaxUserConnections

        def initialize(accountname=nil, description=nil, createtime=nil, updatetime=nil, host=nil, maxuserconnections=nil)
          @AccountName = accountname
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Host = host
          @MaxUserConnections = maxuserconnections
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Host = params['Host']
          @MaxUserConnections = params['MaxUserConnections']
        end
      end

      # 账号参数
      class AccountParam < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称，当前仅支持参数：max_user_connections
        # @type ParamName: String
        # @param ParamValue: 参数值
        # @type ParamValue: String

        attr_accessor :ParamName, :ParamValue

        def initialize(paramname=nil, paramvalue=nil)
          @ParamName = paramname
          @ParamValue = paramvalue
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @ParamValue = params['ParamValue']
        end
      end

      # ActivateInstance请求参数结构体
      class ActivateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 实例 ID 列表，单个实例 ID 格式如：cynosdbmysql-ins-n7ocdslw，与TDSQL-C MySQL数据库控制台页面中显示的实例 ID 相同，可使用 查询实例列表 接口获取，其值为输出参数中字段 InstanceId 的值。
        # @type InstanceIdList: Array

        attr_accessor :ClusterId, :InstanceIdList

        def initialize(clusterid=nil, instanceidlist=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
        end
      end

      # ActivateInstance返回参数结构体
      class ActivateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # AddClusterSlaveZone请求参数结构体
      class AddClusterSlaveZoneRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SlaveZone: 从可用区
        # @type SlaveZone: String

        attr_accessor :ClusterId, :SlaveZone

        def initialize(clusterid=nil, slavezone=nil)
          @ClusterId = clusterid
          @SlaveZone = slavezone
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SlaveZone = params['SlaveZone']
        end
      end

      # AddClusterSlaveZone返回参数结构体
      class AddClusterSlaveZoneResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步FlowId
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # AddInstances请求参数结构体
      class AddInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Cpu: Cpu核数
        # @type Cpu: Integer
        # @param Memory: 内存，单位为GB
        # @type Memory: Integer
        # @param ReadOnlyCount: 新增只读实例数，取值范围为[0,4]
        # @type ReadOnlyCount: Integer
        # @param InstanceGrpId: 实例组ID，在已有RO组中新增实例时使用，不传则新增RO组。当前版本不建议传输该值。当前版本已废弃。
        # @type InstanceGrpId: String
        # @param VpcId: 所属VPC网络ID。
        # @type VpcId: String
        # @param SubnetId: 所属子网ID，如果设置了VpcId，则SubnetId必填。
        # @type SubnetId: String
        # @param Port: 新增RO组时使用的Port，取值范围为[0,65535)
        # @type Port: Integer
        # @param InstanceName: 实例名称，字符串长度范围为[0,64)，取值范围为大小写字母，0-9数字，'_','-','.'
        # @type InstanceName: String
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String
        # @param OrderSource: 订单来源，字符串长度范围为[0,64)
        # @type OrderSource: String
        # @param DealMode: 交易模式 0-下单并支付 1-下单
        # @type DealMode: Integer
        # @param ParamTemplateId: 参数模板ID
        # @type ParamTemplateId: Integer
        # @param InstanceParams: 参数列表，ParamTemplateId 传入时InstanceParams才有效
        # @type InstanceParams: Array
        # @param SecurityGroupIds: 安全组ID，新建只读实例时可以指定安全组。
        # @type SecurityGroupIds: Array

        attr_accessor :ClusterId, :Cpu, :Memory, :ReadOnlyCount, :InstanceGrpId, :VpcId, :SubnetId, :Port, :InstanceName, :AutoVoucher, :DbType, :OrderSource, :DealMode, :ParamTemplateId, :InstanceParams, :SecurityGroupIds

        def initialize(clusterid=nil, cpu=nil, memory=nil, readonlycount=nil, instancegrpid=nil, vpcid=nil, subnetid=nil, port=nil, instancename=nil, autovoucher=nil, dbtype=nil, ordersource=nil, dealmode=nil, paramtemplateid=nil, instanceparams=nil, securitygroupids=nil)
          @ClusterId = clusterid
          @Cpu = cpu
          @Memory = memory
          @ReadOnlyCount = readonlycount
          @InstanceGrpId = instancegrpid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Port = port
          @InstanceName = instancename
          @AutoVoucher = autovoucher
          @DbType = dbtype
          @OrderSource = ordersource
          @DealMode = dealmode
          @ParamTemplateId = paramtemplateid
          @InstanceParams = instanceparams
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @ReadOnlyCount = params['ReadOnlyCount']
          @InstanceGrpId = params['InstanceGrpId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Port = params['Port']
          @InstanceName = params['InstanceName']
          @AutoVoucher = params['AutoVoucher']
          @DbType = params['DbType']
          @OrderSource = params['OrderSource']
          @DealMode = params['DealMode']
          @ParamTemplateId = params['ParamTemplateId']
          unless params['InstanceParams'].nil?
            @InstanceParams = []
            params['InstanceParams'].each do |i|
              modifyparamitem_tmp = ModifyParamItem.new
              modifyparamitem_tmp.deserialize(i)
              @InstanceParams << modifyparamitem_tmp
            end
          end
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # AddInstances返回参数结构体
      class AddInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水，一次开通一个冻结流水。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param DealNames: 后付费订单号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param ResourceIds: 发货资源id列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: Array
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :DealNames, :ResourceIds, :BigDealIds, :RequestId

        def initialize(tranid=nil, dealnames=nil, resourceids=nil, bigdealids=nil, requestid=nil)
          @TranId = tranid
          @DealNames = dealnames
          @ResourceIds = resourceids
          @BigDealIds = bigdealids
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @DealNames = params['DealNames']
          @ResourceIds = params['ResourceIds']
          @BigDealIds = params['BigDealIds']
          @RequestId = params['RequestId']
        end
      end

      # 数据库地址
      class Addr < TencentCloud::Common::AbstractModel
        # @param IP: IP地址
        # @type IP: String
        # @param Port: 端口
        # @type Port: Integer

        attr_accessor :IP, :Port

        def initialize(ip=nil, port=nil)
          @IP = ip
          @Port = port
        end

        def deserialize(params)
          @IP = params['IP']
          @Port = params['Port']
        end
      end

      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例组ID数组
        # @type InstanceIds: Array
        # @param SecurityGroupIds: 要修改的安全组ID列表，一个或者多个安全组Id组成的数组。
        # @type SecurityGroupIds: Array
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :InstanceIds, :SecurityGroupIds, :Zone

        def initialize(instanceids=nil, securitygroupids=nil, zone=nil)
          @InstanceIds = instanceids
          @SecurityGroupIds = securitygroupids
          @Zone = zone
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @SecurityGroupIds = params['SecurityGroupIds']
          @Zone = params['Zone']
        end
      end

      # AssociateSecurityGroups返回参数结构体
      class AssociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 审计日志详细信息
      class AuditLog < TencentCloud::Common::AbstractModel
        # @param AffectRows: 影响行数。
        # @type AffectRows: Integer
        # @param ErrCode: 错误码。
        # @type ErrCode: Integer
        # @param SqlType: SQL类型。
        # @type SqlType: String
        # @param TableName: 表名称。
        # @type TableName: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param PolicyName: 审计策略名称。
        # @type PolicyName: String
        # @param DBName: 数据库名称。
        # @type DBName: String
        # @param Sql: SQL语句。
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
        # @param ThreadId: 执行线程ID。
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
        # @param TrxLivingTime: 事物持续等待时间，微秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrxLivingTime: Integer
        # @param NsTime: 开始时间，与timestamp构成一个精确到纳秒的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NsTime: Integer

        attr_accessor :AffectRows, :ErrCode, :SqlType, :TableName, :InstanceName, :PolicyName, :DBName, :Sql, :Host, :User, :ExecTime, :Timestamp, :SentRows, :ThreadId, :CheckRows, :CpuTime, :IoWaitTime, :LockWaitTime, :TrxLivingTime, :NsTime

        def initialize(affectrows=nil, errcode=nil, sqltype=nil, tablename=nil, instancename=nil, policyname=nil, dbname=nil, sql=nil, host=nil, user=nil, exectime=nil, timestamp=nil, sentrows=nil, threadid=nil, checkrows=nil, cputime=nil, iowaittime=nil, lockwaittime=nil, trxlivingtime=nil, nstime=nil)
          @AffectRows = affectrows
          @ErrCode = errcode
          @SqlType = sqltype
          @TableName = tablename
          @InstanceName = instancename
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
          @TrxLivingTime = trxlivingtime
          @NsTime = nstime
        end

        def deserialize(params)
          @AffectRows = params['AffectRows']
          @ErrCode = params['ErrCode']
          @SqlType = params['SqlType']
          @TableName = params['TableName']
          @InstanceName = params['InstanceName']
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
          @TrxLivingTime = params['TrxLivingTime']
          @NsTime = params['NsTime']
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
        # @param SentRows: 返回行数。
        # @type SentRows: Integer
        # @param ThreadId: 线程ID。
        # @type ThreadId: Array

        attr_accessor :Host, :User, :DBName, :TableName, :PolicyName, :Sql, :SqlType, :ExecTime, :AffectRows, :SqlTypes, :Sqls, :SentRows, :ThreadId

        def initialize(host=nil, user=nil, dbname=nil, tablename=nil, policyname=nil, sql=nil, sqltype=nil, exectime=nil, affectrows=nil, sqltypes=nil, sqls=nil, sentrows=nil, threadid=nil)
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
          @SentRows = sentrows
          @ThreadId = threadid
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
          @SentRows = params['SentRows']
          @ThreadId = params['ThreadId']
        end
      end

      # 规则审计的过滤条件
      class AuditRuleFilters < TencentCloud::Common::AbstractModel
        # @param RuleFilters: 单条审计规则。
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

      # 审计规则模版的详情
      class AuditRuleTemplateInfo < TencentCloud::Common::AbstractModel
        # @param RuleTemplateId: 规则模版ID。
        # @type RuleTemplateId: String
        # @param RuleTemplateName: 规则模版名称。
        # @type RuleTemplateName: String
        # @param RuleFilters: 规则模版的过滤条件
        # @type RuleFilters: Array
        # @param Description: 规则模版描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param CreateAt: 规则模版创建时间。
        # @type CreateAt: String

        attr_accessor :RuleTemplateId, :RuleTemplateName, :RuleFilters, :Description, :CreateAt

        def initialize(ruletemplateid=nil, ruletemplatename=nil, rulefilters=nil, description=nil, createat=nil)
          @RuleTemplateId = ruletemplateid
          @RuleTemplateName = ruletemplatename
          @RuleFilters = rulefilters
          @Description = description
          @CreateAt = createat
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
        end
      end

      # 备份文件信息
      class BackupFileInfo < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照文件ID，已废弃，请使用BackupId
        # @type SnapshotId: Integer
        # @param FileName: 备份文件名
        # @type FileName: String
        # @param FileSize: 备份文件大小
        # @type FileSize: Integer
        # @param StartTime: 备份开始时间
        # @type StartTime: String
        # @param FinishTime: 备份完成时间
        # @type FinishTime: String
        # @param BackupType: 备份类型：snapshot，快照备份；logic，逻辑备份
        # @type BackupType: String
        # @param BackupMethod: 备份方式：auto，自动备份；manual，手动备份
        # @type BackupMethod: String
        # @param BackupStatus: 备份文件状态：success：备份成功；fail：备份失败；creating：备份文件创建中；deleting：备份文件删除中
        # @type BackupStatus: String
        # @param SnapshotTime: 备份文件时间
        # @type SnapshotTime: String
        # @param BackupId: 备份ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupId: Integer
        # @param SnapShotType: 快照类型，可选值：full，全量；increment，增量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapShotType: String
        # @param BackupName: 备份文件备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupName: String

        attr_accessor :SnapshotId, :FileName, :FileSize, :StartTime, :FinishTime, :BackupType, :BackupMethod, :BackupStatus, :SnapshotTime, :BackupId, :SnapShotType, :BackupName

        def initialize(snapshotid=nil, filename=nil, filesize=nil, starttime=nil, finishtime=nil, backuptype=nil, backupmethod=nil, backupstatus=nil, snapshottime=nil, backupid=nil, snapshottype=nil, backupname=nil)
          @SnapshotId = snapshotid
          @FileName = filename
          @FileSize = filesize
          @StartTime = starttime
          @FinishTime = finishtime
          @BackupType = backuptype
          @BackupMethod = backupmethod
          @BackupStatus = backupstatus
          @SnapshotTime = snapshottime
          @BackupId = backupid
          @SnapShotType = snapshottype
          @BackupName = backupname
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @BackupType = params['BackupType']
          @BackupMethod = params['BackupMethod']
          @BackupStatus = params['BackupStatus']
          @SnapshotTime = params['SnapshotTime']
          @BackupId = params['BackupId']
          @SnapShotType = params['SnapShotType']
          @BackupName = params['BackupName']
        end
      end

      # 计费资源信息
      class BillingResourceInfo < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array
        # @param DealName: 订单ID
        # @type DealName: String

        attr_accessor :ClusterId, :InstanceIds, :DealName

        def initialize(clusterid=nil, instanceids=nil, dealname=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @DealName = dealname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          @DealName = params['DealName']
        end
      end

      # BindClusterResourcePackages请求参数结构体
      class BindClusterResourcePackagesRequest < TencentCloud::Common::AbstractModel
        # @param PackageIds: 资源包唯一ID
        # @type PackageIds: Array
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :PackageIds, :ClusterId

        def initialize(packageids=nil, clusterid=nil)
          @PackageIds = packageids
          @ClusterId = clusterid
        end

        def deserialize(params)
          @PackageIds = params['PackageIds']
          @ClusterId = params['ClusterId']
        end
      end

      # BindClusterResourcePackages返回参数结构体
      class BindClusterResourcePackagesResponse < TencentCloud::Common::AbstractModel
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

      # 资源包绑定的实例信息
      class BindInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 绑定的实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceRegion: 绑定的实例所在的地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceRegion: String
        # @param InstanceType: 绑定的实例类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String

        attr_accessor :InstanceId, :InstanceRegion, :InstanceType

        def initialize(instanceid=nil, instanceregion=nil, instancetype=nil)
          @InstanceId = instanceid
          @InstanceRegion = instanceregion
          @InstanceType = instancetype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceRegion = params['InstanceRegion']
          @InstanceType = params['InstanceType']
        end
      end

      # Binlog描述
      class BinlogItem < TencentCloud::Common::AbstractModel
        # @param FileName: Binlog文件名称
        # @type FileName: String
        # @param FileSize: 文件大小，单位：字节
        # @type FileSize: Integer
        # @param StartTime: 事务最早时间
        # @type StartTime: String
        # @param FinishTime: 事务最晚时间
        # @type FinishTime: String
        # @param BinlogId: Binlog文件ID
        # @type BinlogId: Integer

        attr_accessor :FileName, :FileSize, :StartTime, :FinishTime, :BinlogId

        def initialize(filename=nil, filesize=nil, starttime=nil, finishtime=nil, binlogid=nil)
          @FileName = filename
          @FileSize = filesize
          @StartTime = starttime
          @FinishTime = finishtime
          @BinlogId = binlogid
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileSize = params['FileSize']
          @StartTime = params['StartTime']
          @FinishTime = params['FinishTime']
          @BinlogId = params['BinlogId']
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

      # CloseClusterPasswordComplexity请求参数结构体
      class CloseClusterPasswordComplexityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 集群ID数组
        # @type ClusterIds: Array

        attr_accessor :ClusterIds

        def initialize(clusterids=nil)
          @ClusterIds = clusterids
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
        end
      end

      # CloseClusterPasswordComplexity返回参数结构体
      class CloseClusterPasswordComplexityResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CloseProxy请求参数结构体
      class CloseProxyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String
        # @param OnlyCloseRW: 是否只关闭读写分离，取值：是 "true","false"
        # @type OnlyCloseRW: Boolean

        attr_accessor :ClusterId, :ProxyGroupId, :OnlyCloseRW

        def initialize(clusterid=nil, proxygroupid=nil, onlycloserw=nil)
          @ClusterId = clusterid
          @ProxyGroupId = proxygroupid
          @OnlyCloseRW = onlycloserw
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ProxyGroupId = params['ProxyGroupId']
          @OnlyCloseRW = params['OnlyCloseRW']
        end
      end

      # CloseProxy返回参数结构体
      class CloseProxyResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :TaskId, :RequestId

        def initialize(flowid=nil, taskid=nil, requestid=nil)
          @FlowId = flowid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CloseWan请求参数结构体
      class CloseWanRequest < TencentCloud::Common::AbstractModel
        # @param InstanceGrpId: 实例组id
        # @type InstanceGrpId: String

        attr_accessor :InstanceGrpId

        def initialize(instancegrpid=nil)
          @InstanceGrpId = instancegrpid
        end

        def deserialize(params)
          @InstanceGrpId = params['InstanceGrpId']
        end
      end

      # CloseWan返回参数结构体
      class CloseWanResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 集群实例信息
      class ClusterInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param InstanceType: 引擎类型
        # @type InstanceType: String
        # @param InstanceStatus: 实例状态
        # @type InstanceStatus: String
        # @param InstanceStatusDesc: 实例状态描述
        # @type InstanceStatusDesc: String
        # @param InstanceCpu: cpu核数
        # @type InstanceCpu: Integer
        # @param InstanceMemory: 内存
        # @type InstanceMemory: Integer
        # @param InstanceStorage: 硬盘
        # @type InstanceStorage: Integer
        # @param InstanceRole: 实例角色
        # @type InstanceRole: String
        # @param MaintainStartTime: 执行开始时间(距离0点的秒数)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaintainStartTime: Integer
        # @param MaintainDuration: 持续的时间(单位：秒)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaintainDuration: Integer
        # @param MaintainWeekDays: 可以执行的时间，枚举值：["Mon","Tue","Wed","Thu","Fri", "Sat", "Sun"]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaintainWeekDays: Array

        attr_accessor :InstanceId, :InstanceName, :InstanceType, :InstanceStatus, :InstanceStatusDesc, :InstanceCpu, :InstanceMemory, :InstanceStorage, :InstanceRole, :MaintainStartTime, :MaintainDuration, :MaintainWeekDays

        def initialize(instanceid=nil, instancename=nil, instancetype=nil, instancestatus=nil, instancestatusdesc=nil, instancecpu=nil, instancememory=nil, instancestorage=nil, instancerole=nil, maintainstarttime=nil, maintainduration=nil, maintainweekdays=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceType = instancetype
          @InstanceStatus = instancestatus
          @InstanceStatusDesc = instancestatusdesc
          @InstanceCpu = instancecpu
          @InstanceMemory = instancememory
          @InstanceStorage = instancestorage
          @InstanceRole = instancerole
          @MaintainStartTime = maintainstarttime
          @MaintainDuration = maintainduration
          @MaintainWeekDays = maintainweekdays
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceType = params['InstanceType']
          @InstanceStatus = params['InstanceStatus']
          @InstanceStatusDesc = params['InstanceStatusDesc']
          @InstanceCpu = params['InstanceCpu']
          @InstanceMemory = params['InstanceMemory']
          @InstanceStorage = params['InstanceStorage']
          @InstanceRole = params['InstanceRole']
          @MaintainStartTime = params['MaintainStartTime']
          @MaintainDuration = params['MaintainDuration']
          @MaintainWeekDays = params['MaintainWeekDays']
        end
      end

      # 参数修改记录
      class ClusterParamModifyLog < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param UpdateValue: 修改后的值
        # @type UpdateValue: String
        # @param Status: 修改状态
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String

        attr_accessor :ParamName, :CurrentValue, :UpdateValue, :Status, :CreateTime, :UpdateTime, :ClusterId, :InstanceId

        def initialize(paramname=nil, currentvalue=nil, updatevalue=nil, status=nil, createtime=nil, updatetime=nil, clusterid=nil, instanceid=nil)
          @ParamName = paramname
          @CurrentValue = currentvalue
          @UpdateValue = updatevalue
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ClusterId = clusterid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @CurrentValue = params['CurrentValue']
          @UpdateValue = params['UpdateValue']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ClusterId = params['ClusterId']
          @InstanceId = params['InstanceId']
        end
      end

      # CopyClusterPasswordComplexity请求参数结构体
      class CopyClusterPasswordComplexityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterIds: 复制集群ID数组
        # @type ClusterIds: Array
        # @param SourceClusterId: 集群id
        # @type SourceClusterId: String

        attr_accessor :ClusterIds, :SourceClusterId

        def initialize(clusterids=nil, sourceclusterid=nil)
          @ClusterIds = clusterids
          @SourceClusterId = sourceclusterid
        end

        def deserialize(params)
          @ClusterIds = params['ClusterIds']
          @SourceClusterId = params['SourceClusterId']
        end
      end

      # CopyClusterPasswordComplexity返回参数结构体
      class CopyClusterPasswordComplexityResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAccounts请求参数结构体
      class CreateAccountsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Accounts: 新账户列表
        # @type Accounts: Array

        attr_accessor :ClusterId, :Accounts

        def initialize(clusterid=nil, accounts=nil)
          @ClusterId = clusterid
          @Accounts = accounts
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              newaccount_tmp = NewAccount.new
              newaccount_tmp.deserialize(i)
              @Accounts << newaccount_tmp
            end
          end
        end
      end

      # CreateAccounts返回参数结构体
      class CreateAccountsResponse < TencentCloud::Common::AbstractModel
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

      # CreateAuditLogFile请求参数结构体
      class CreateAuditLogFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 开始时间，格式为："2017-07-12 10:29:20"。
        # @type StartTime: String
        # @param EndTime: 结束时间，格式为："2017-07-12 10:29:20"。
        # @type EndTime: String
        # @param Order: 排序方式。支持值包括："ASC" - 升序，"DESC" - 降序。
        # @type Order: String
        # @param OrderBy: 排序字段。支持值包括：
        # "timestamp" - 时间戳；
        # "affectRows" - 影响行数；
        # "execTime" - 执行时间。
        # @type OrderBy: String
        # @param Filter: 已废弃。
        # @type Filter: :class:`Tencentcloud::Cynosdb.v20190107.models.AuditLogFilter`
        # @param LogFilter: 审计日志过滤条件
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
              instanceauditlogfilter_tmp = InstanceAuditLogFilter.new
              instanceauditlogfilter_tmp.deserialize(i)
              @LogFilter << instanceauditlogfilter_tmp
            end
          end
        end
      end

      # CreateAuditLogFile返回参数结构体
      class CreateAuditLogFileResponse < TencentCloud::Common::AbstractModel
        # @param FileName: 审计日志文件名称。
        # @type FileName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateAuditRuleTemplate请求参数结构体
      class CreateAuditRuleTemplateRequest < TencentCloud::Common::AbstractModel
        # @param RuleFilters: 审计规则。
        # @type RuleFilters: Array
        # @param RuleTemplateName: 规则模版名称。
        # @type RuleTemplateName: String
        # @param Description: 规则模版描述。
        # @type Description: String

        attr_accessor :RuleFilters, :RuleTemplateName, :Description

        def initialize(rulefilters=nil, ruletemplatename=nil, description=nil)
          @RuleFilters = rulefilters
          @RuleTemplateName = ruletemplatename
          @Description = description
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
        end
      end

      # CreateAuditRuleTemplate返回参数结构体
      class CreateAuditRuleTemplateResponse < TencentCloud::Common::AbstractModel
        # @param RuleTemplateId: 生成的规则模版ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BackupType: 备份类型, 可选值：logic，逻辑备份；snapshot，物理备份
        # @type BackupType: String
        # @param BackupDatabases: 备份的库, 只在 BackupType 为 logic 时有效
        # @type BackupDatabases: Array
        # @param BackupTables: 备份的表, 只在 BackupType 为 logic 时有效
        # @type BackupTables: Array
        # @param BackupName: 备注名
        # @type BackupName: String

        attr_accessor :ClusterId, :BackupType, :BackupDatabases, :BackupTables, :BackupName

        def initialize(clusterid=nil, backuptype=nil, backupdatabases=nil, backuptables=nil, backupname=nil)
          @ClusterId = clusterid
          @BackupType = backuptype
          @BackupDatabases = backupdatabases
          @BackupTables = backuptables
          @BackupName = backupname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BackupType = params['BackupType']
          @BackupDatabases = params['BackupDatabases']
          unless params['BackupTables'].nil?
            @BackupTables = []
            params['BackupTables'].each do |i|
              databasetables_tmp = DatabaseTables.new
              databasetables_tmp.deserialize(i)
              @BackupTables << databasetables_tmp
            end
          end
          @BackupName = params['BackupName']
        end
      end

      # CreateBackup返回参数结构体
      class CreateBackupResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateClusterDatabase请求参数结构体
      class CreateClusterDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param DbName: 数据库名
        # @type DbName: String
        # @param CharacterSet: 字符集类型
        # @type CharacterSet: String
        # @param CollateRule: 排序规则
        # @type CollateRule: String
        # @param UserHostPrivileges: 授权用户主机权限
        # @type UserHostPrivileges: Array
        # @param Description: 备注
        # @type Description: String

        attr_accessor :ClusterId, :DbName, :CharacterSet, :CollateRule, :UserHostPrivileges, :Description

        def initialize(clusterid=nil, dbname=nil, characterset=nil, collaterule=nil, userhostprivileges=nil, description=nil)
          @ClusterId = clusterid
          @DbName = dbname
          @CharacterSet = characterset
          @CollateRule = collaterule
          @UserHostPrivileges = userhostprivileges
          @Description = description
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @DbName = params['DbName']
          @CharacterSet = params['CharacterSet']
          @CollateRule = params['CollateRule']
          unless params['UserHostPrivileges'].nil?
            @UserHostPrivileges = []
            params['UserHostPrivileges'].each do |i|
              userhostprivilege_tmp = UserHostPrivilege.new
              userhostprivilege_tmp.deserialize(i)
              @UserHostPrivileges << userhostprivilege_tmp
            end
          end
          @Description = params['Description']
        end
      end

      # CreateClusterDatabase返回参数结构体
      class CreateClusterDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # CreateClusters请求参数结构体
      class CreateClustersRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param VpcId: 所属VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 所属子网ID
        # @type SubnetId: String
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String
        # @param DbVersion: 数据库版本，取值范围:
        # <li> MYSQL可选值：5.7，8.0 </li>
        # @type DbVersion: String
        # @param ProjectId: 所属项目ID
        # @type ProjectId: Integer
        # @param Cpu: 当DbMode为NORMAL或不填时必选
        # 普通实例Cpu核数
        # @type Cpu: Integer
        # @param Memory: 当DbMode为NORMAL或不填时必选
        # 普通实例内存,单位GB
        # @type Memory: Integer
        # @param Storage: 该参数无实际意义，已废弃。
        # 存储大小，单位GB。
        # @type Storage: Integer
        # @param ClusterName: 集群名称，长度小于64个字符，每个字符取值范围：大/小写字母，数字，特殊符号（'-','_','.'）
        # @type ClusterName: String
        # @param AdminPassword: 账号密码(8-64个字符，包含大小写英文字母、数字和符号~!@#$%^&*_-+=`|\(){}[]:;'<>,.?/中的任意三种)
        # @type AdminPassword: String
        # @param Port: 端口，默认3306，取值范围[0, 65535)
        # @type Port: Integer
        # @param PayMode: 计费模式，按量计费：0，包年包月：1。默认按量计费。
        # @type PayMode: Integer
        # @param Count: 购买集群数，可选值范围[1,50]，默认为1
        # @type Count: Integer
        # @param RollbackStrategy: 回档类型：
        # noneRollback：不回档；
        # snapRollback，快照回档；
        # timeRollback，时间点回档
        # @type RollbackStrategy: String
        # @param RollbackId: 快照回档，表示snapshotId；时间点回档，表示queryId，为0，表示需要判断时间点是否有效
        # @type RollbackId: Integer
        # @param OriginalClusterId: 回档时，传入源集群ID，用于查找源poolId
        # @type OriginalClusterId: String
        # @param ExpectTime: 时间点回档，指定时间；快照回档，快照时间
        # @type ExpectTime: String
        # @param ExpectTimeThresh: 该参数无实际意义，已废弃。
        # 时间点回档，指定时间允许范围
        # @type ExpectTimeThresh: Integer
        # @param StorageLimit: 普通实例存储上限，单位GB
        # 当DbType为MYSQL，且存储计费模式为预付费时，该参数需不大于cpu与memory对应存储规格上限
        # @type StorageLimit: Integer
        # @param InstanceCount: 实例数量，数量范围为(0,16]
        # @type InstanceCount: Integer
        # @param TimeSpan: 包年包月购买时长
        # @type TimeSpan: Integer
        # @param TimeUnit: 包年包月购买时长单位，['s','d','m','y']
        # @type TimeUnit: String
        # @param AutoRenewFlag: 包年包月购买是否自动续费，默认为0
        # @type AutoRenewFlag: Integer
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param HaCount: 实例数量（该参数已不再使用，只做存量兼容处理）
        # @type HaCount: Integer
        # @param OrderSource: 订单来源
        # @type OrderSource: String
        # @param ResourceTags: 集群创建需要绑定的tag数组信息
        # @type ResourceTags: Array
        # @param DbMode: Db类型
        # 当DbType为MYSQL时可选(默认NORMAL)：
        # <li>NORMAL</li>
        # <li>SERVERLESS</li>
        # @type DbMode: String
        # @param MinCpu: 当DbMode为SEVERLESS时必填
        # cpu最小值，可选范围参考DescribeServerlessInstanceSpecs接口返回
        # @type MinCpu: Float
        # @param MaxCpu: 当DbMode为SEVERLESS时必填：
        # cpu最大值，可选范围参考DescribeServerlessInstanceSpecs接口返回
        # @type MaxCpu: Float
        # @param AutoPause: 当DbMode为SEVERLESS时，指定集群是否自动暂停，可选范围
        # <li>yes</li>
        # <li>no</li>
        # 默认值:yes
        # @type AutoPause: String
        # @param AutoPauseDelay: 当DbMode为SEVERLESS时，指定集群自动暂停的延迟，单位秒，可选范围[600,691200]
        # 默认值:600
        # @type AutoPauseDelay: Integer
        # @param StoragePayMode: 集群存储计费模式，按量计费：0，包年包月：1。默认按量计费
        # 当DbType为MYSQL时，在集群计算计费模式为后付费（包括DbMode为SERVERLESS）时，存储计费模式仅可为按量计费
        # 回档与克隆均不支持包年包月存储
        # @type StoragePayMode: Integer
        # @param SecurityGroupIds: 安全组id数组
        # @type SecurityGroupIds: Array
        # @param AlarmPolicyIds: 告警策略Id数组
        # @type AlarmPolicyIds: Array
        # @param ClusterParams: 参数数组，暂时支持character_set_server （utf8｜latin1｜gbk｜utf8mb4） ，lower_case_table_names，1-大小写不敏感，0-大小写敏感
        # @type ClusterParams: Array
        # @param DealMode: 交易模式，0-下单且支付，1-下单
        # @type DealMode: Integer
        # @param ParamTemplateId: 参数模版ID，可以通过查询参数模板信息DescribeParamTemplates获得参数模板ID
        # @type ParamTemplateId: Integer
        # @param SlaveZone: 多可用区地址
        # @type SlaveZone: String
        # @param InstanceInitInfos: 实例初始化配置信息，主要用于购买集群时选不同规格实例
        # @type InstanceInitInfos: Array

        attr_accessor :Zone, :VpcId, :SubnetId, :DbType, :DbVersion, :ProjectId, :Cpu, :Memory, :Storage, :ClusterName, :AdminPassword, :Port, :PayMode, :Count, :RollbackStrategy, :RollbackId, :OriginalClusterId, :ExpectTime, :ExpectTimeThresh, :StorageLimit, :InstanceCount, :TimeSpan, :TimeUnit, :AutoRenewFlag, :AutoVoucher, :HaCount, :OrderSource, :ResourceTags, :DbMode, :MinCpu, :MaxCpu, :AutoPause, :AutoPauseDelay, :StoragePayMode, :SecurityGroupIds, :AlarmPolicyIds, :ClusterParams, :DealMode, :ParamTemplateId, :SlaveZone, :InstanceInitInfos

        def initialize(zone=nil, vpcid=nil, subnetid=nil, dbtype=nil, dbversion=nil, projectid=nil, cpu=nil, memory=nil, storage=nil, clustername=nil, adminpassword=nil, port=nil, paymode=nil, count=nil, rollbackstrategy=nil, rollbackid=nil, originalclusterid=nil, expecttime=nil, expecttimethresh=nil, storagelimit=nil, instancecount=nil, timespan=nil, timeunit=nil, autorenewflag=nil, autovoucher=nil, hacount=nil, ordersource=nil, resourcetags=nil, dbmode=nil, mincpu=nil, maxcpu=nil, autopause=nil, autopausedelay=nil, storagepaymode=nil, securitygroupids=nil, alarmpolicyids=nil, clusterparams=nil, dealmode=nil, paramtemplateid=nil, slavezone=nil, instanceinitinfos=nil)
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @DbType = dbtype
          @DbVersion = dbversion
          @ProjectId = projectid
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @ClusterName = clustername
          @AdminPassword = adminpassword
          @Port = port
          @PayMode = paymode
          @Count = count
          @RollbackStrategy = rollbackstrategy
          @RollbackId = rollbackid
          @OriginalClusterId = originalclusterid
          @ExpectTime = expecttime
          @ExpectTimeThresh = expecttimethresh
          @StorageLimit = storagelimit
          @InstanceCount = instancecount
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @AutoRenewFlag = autorenewflag
          @AutoVoucher = autovoucher
          @HaCount = hacount
          @OrderSource = ordersource
          @ResourceTags = resourcetags
          @DbMode = dbmode
          @MinCpu = mincpu
          @MaxCpu = maxcpu
          @AutoPause = autopause
          @AutoPauseDelay = autopausedelay
          @StoragePayMode = storagepaymode
          @SecurityGroupIds = securitygroupids
          @AlarmPolicyIds = alarmpolicyids
          @ClusterParams = clusterparams
          @DealMode = dealmode
          @ParamTemplateId = paramtemplateid
          @SlaveZone = slavezone
          @InstanceInitInfos = instanceinitinfos
        end

        def deserialize(params)
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @ProjectId = params['ProjectId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @ClusterName = params['ClusterName']
          @AdminPassword = params['AdminPassword']
          @Port = params['Port']
          @PayMode = params['PayMode']
          @Count = params['Count']
          @RollbackStrategy = params['RollbackStrategy']
          @RollbackId = params['RollbackId']
          @OriginalClusterId = params['OriginalClusterId']
          @ExpectTime = params['ExpectTime']
          @ExpectTimeThresh = params['ExpectTimeThresh']
          @StorageLimit = params['StorageLimit']
          @InstanceCount = params['InstanceCount']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @AutoRenewFlag = params['AutoRenewFlag']
          @AutoVoucher = params['AutoVoucher']
          @HaCount = params['HaCount']
          @OrderSource = params['OrderSource']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @DbMode = params['DbMode']
          @MinCpu = params['MinCpu']
          @MaxCpu = params['MaxCpu']
          @AutoPause = params['AutoPause']
          @AutoPauseDelay = params['AutoPauseDelay']
          @StoragePayMode = params['StoragePayMode']
          @SecurityGroupIds = params['SecurityGroupIds']
          @AlarmPolicyIds = params['AlarmPolicyIds']
          unless params['ClusterParams'].nil?
            @ClusterParams = []
            params['ClusterParams'].each do |i|
              paramitem_tmp = ParamItem.new
              paramitem_tmp.deserialize(i)
              @ClusterParams << paramitem_tmp
            end
          end
          @DealMode = params['DealMode']
          @ParamTemplateId = params['ParamTemplateId']
          @SlaveZone = params['SlaveZone']
          unless params['InstanceInitInfos'].nil?
            @InstanceInitInfos = []
            params['InstanceInitInfos'].each do |i|
              instanceinitinfo_tmp = InstanceInitInfo.new
              instanceinitinfo_tmp.deserialize(i)
              @InstanceInitInfos << instanceinitinfo_tmp
            end
          end
        end
      end

      # CreateClusters返回参数结构体
      class CreateClustersResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param DealNames: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param ResourceIds: 资源ID列表（该字段已不再维护，请使用dealNames字段查询接口DescribeResourcesByDealName获取资源ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: Array
        # @param ClusterIds: 集群ID列表（该字段已不再维护，请使用dealNames字段查询接口DescribeResourcesByDealName获取集群ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterIds: Array
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :DealNames, :ResourceIds, :ClusterIds, :BigDealIds, :RequestId

        def initialize(tranid=nil, dealnames=nil, resourceids=nil, clusterids=nil, bigdealids=nil, requestid=nil)
          @TranId = tranid
          @DealNames = dealnames
          @ResourceIds = resourceids
          @ClusterIds = clusterids
          @BigDealIds = bigdealids
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @DealNames = params['DealNames']
          @ResourceIds = params['ResourceIds']
          @ClusterIds = params['ClusterIds']
          @BigDealIds = params['BigDealIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateParamTemplate请求参数结构体
      class CreateParamTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称
        # @type TemplateName: String
        # @param EngineVersion: mysql版本号
        # @type EngineVersion: String
        # @param TemplateDescription: 模板描述
        # @type TemplateDescription: String
        # @param TemplateId: 可选参数，需要复制的模板ID
        # @type TemplateId: Integer
        # @param DbMode: 数据库类型，可选值：NORMAL（默认值），SERVERLESS
        # @type DbMode: String
        # @param ParamList: 参数列表
        # @type ParamList: Array

        attr_accessor :TemplateName, :EngineVersion, :TemplateDescription, :TemplateId, :DbMode, :ParamList

        def initialize(templatename=nil, engineversion=nil, templatedescription=nil, templateid=nil, dbmode=nil, paramlist=nil)
          @TemplateName = templatename
          @EngineVersion = engineversion
          @TemplateDescription = templatedescription
          @TemplateId = templateid
          @DbMode = dbmode
          @ParamList = paramlist
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          @EngineVersion = params['EngineVersion']
          @TemplateDescription = params['TemplateDescription']
          @TemplateId = params['TemplateId']
          @DbMode = params['DbMode']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paramitem_tmp = ParamItem.new
              paramitem_tmp.deserialize(i)
              @ParamList << paramitem_tmp
            end
          end
        end
      end

      # CreateParamTemplate返回参数结构体
      class CreateParamTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateProxyEndPoint请求参数结构体
      class CreateProxyEndPointRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param UniqueVpcId: 私有网络ID，默认与集群私有网络ID保持一致
        # @type UniqueVpcId: String
        # @param UniqueSubnetId: 私有网络子网ID，默认与集群子网ID保持一致
        # @type UniqueSubnetId: String
        # @param ConnectionPoolType: 连接池类型：SessionConnectionPool(会话级别连接池 )
        # @type ConnectionPoolType: String
        # @param OpenConnectionPool: 是否开启连接池,yes-开启，no-不开启
        # @type OpenConnectionPool: String
        # @param ConnectionPoolTimeOut: 连接池阈值：单位（秒）
        # @type ConnectionPoolTimeOut: Integer
        # @param SecurityGroupIds: 安全组ID数组
        # @type SecurityGroupIds: Array
        # @param Description: 描述说明
        # @type Description: String
        # @param Vip: vip信息
        # @type Vip: String
        # @param WeightMode: 权重模式：
        # system-系统分配，custom-自定义
        # @type WeightMode: String
        # @param AutoAddRo: 是否自动添加只读实例，yes-是，no-不自动添加
        # @type AutoAddRo: String
        # @param FailOver: 是否开启故障转移
        # @type FailOver: String
        # @param ConsistencyType: 一致性类型：
        # eventual,global,session
        # @type ConsistencyType: String
        # @param RwType: 读写属性：
        # READWRITE,READONLY
        # @type RwType: String
        # @param ConsistencyTimeOut: 一致性超时时间
        # @type ConsistencyTimeOut: Integer
        # @param TransSplit: 事务拆分
        # @type TransSplit: Boolean
        # @param AccessMode: 连接模式：
        # nearby,balance
        # @type AccessMode: String
        # @param InstanceWeights: 实例权重
        # @type InstanceWeights: Array

        attr_accessor :ClusterId, :UniqueVpcId, :UniqueSubnetId, :ConnectionPoolType, :OpenConnectionPool, :ConnectionPoolTimeOut, :SecurityGroupIds, :Description, :Vip, :WeightMode, :AutoAddRo, :FailOver, :ConsistencyType, :RwType, :ConsistencyTimeOut, :TransSplit, :AccessMode, :InstanceWeights

        def initialize(clusterid=nil, uniquevpcid=nil, uniquesubnetid=nil, connectionpooltype=nil, openconnectionpool=nil, connectionpooltimeout=nil, securitygroupids=nil, description=nil, vip=nil, weightmode=nil, autoaddro=nil, failover=nil, consistencytype=nil, rwtype=nil, consistencytimeout=nil, transsplit=nil, accessmode=nil, instanceweights=nil)
          @ClusterId = clusterid
          @UniqueVpcId = uniquevpcid
          @UniqueSubnetId = uniquesubnetid
          @ConnectionPoolType = connectionpooltype
          @OpenConnectionPool = openconnectionpool
          @ConnectionPoolTimeOut = connectionpooltimeout
          @SecurityGroupIds = securitygroupids
          @Description = description
          @Vip = vip
          @WeightMode = weightmode
          @AutoAddRo = autoaddro
          @FailOver = failover
          @ConsistencyType = consistencytype
          @RwType = rwtype
          @ConsistencyTimeOut = consistencytimeout
          @TransSplit = transsplit
          @AccessMode = accessmode
          @InstanceWeights = instanceweights
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @UniqueVpcId = params['UniqueVpcId']
          @UniqueSubnetId = params['UniqueSubnetId']
          @ConnectionPoolType = params['ConnectionPoolType']
          @OpenConnectionPool = params['OpenConnectionPool']
          @ConnectionPoolTimeOut = params['ConnectionPoolTimeOut']
          @SecurityGroupIds = params['SecurityGroupIds']
          @Description = params['Description']
          @Vip = params['Vip']
          @WeightMode = params['WeightMode']
          @AutoAddRo = params['AutoAddRo']
          @FailOver = params['FailOver']
          @ConsistencyType = params['ConsistencyType']
          @RwType = params['RwType']
          @ConsistencyTimeOut = params['ConsistencyTimeOut']
          @TransSplit = params['TransSplit']
          @AccessMode = params['AccessMode']
          unless params['InstanceWeights'].nil?
            @InstanceWeights = []
            params['InstanceWeights'].each do |i|
              proxyinstanceweight_tmp = ProxyInstanceWeight.new
              proxyinstanceweight_tmp.deserialize(i)
              @InstanceWeights << proxyinstanceweight_tmp
            end
          end
        end
      end

      # CreateProxyEndPoint返回参数结构体
      class CreateProxyEndPointResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :TaskId, :ProxyGroupId, :RequestId

        def initialize(flowid=nil, taskid=nil, proxygroupid=nil, requestid=nil)
          @FlowId = flowid
          @TaskId = taskid
          @ProxyGroupId = proxygroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @TaskId = params['TaskId']
          @ProxyGroupId = params['ProxyGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProxy请求参数结构体
      class CreateProxyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Cpu: cpu核数
        # @type Cpu: Integer
        # @param Mem: 内存
        # @type Mem: Integer
        # @param UniqueVpcId: 私有网络ID，默认与集群私有网络ID保持一致
        # @type UniqueVpcId: String
        # @param UniqueSubnetId: 私有网络子网ID，默认与集群子网ID保持一致
        # @type UniqueSubnetId: String
        # @param ProxyCount: 数据库代理组节点个数
        # @type ProxyCount: Integer
        # @param ConnectionPoolType: 连接池类型：SessionConnectionPool(会话级别连接池 )
        # @type ConnectionPoolType: String
        # @param OpenConnectionPool: 是否开启连接池,yes-开启，no-不开启
        # @type OpenConnectionPool: String
        # @param ConnectionPoolTimeOut: 连接池阈值：单位（秒）
        # @type ConnectionPoolTimeOut: Integer
        # @param SecurityGroupIds: 安全组ID数组
        # @type SecurityGroupIds: Array
        # @param Description: 描述说明
        # @type Description: String
        # @param ProxyZones: 数据库节点信息
        # @type ProxyZones: Array

        attr_accessor :ClusterId, :Cpu, :Mem, :UniqueVpcId, :UniqueSubnetId, :ProxyCount, :ConnectionPoolType, :OpenConnectionPool, :ConnectionPoolTimeOut, :SecurityGroupIds, :Description, :ProxyZones

        def initialize(clusterid=nil, cpu=nil, mem=nil, uniquevpcid=nil, uniquesubnetid=nil, proxycount=nil, connectionpooltype=nil, openconnectionpool=nil, connectionpooltimeout=nil, securitygroupids=nil, description=nil, proxyzones=nil)
          @ClusterId = clusterid
          @Cpu = cpu
          @Mem = mem
          @UniqueVpcId = uniquevpcid
          @UniqueSubnetId = uniquesubnetid
          @ProxyCount = proxycount
          @ConnectionPoolType = connectionpooltype
          @OpenConnectionPool = openconnectionpool
          @ConnectionPoolTimeOut = connectionpooltimeout
          @SecurityGroupIds = securitygroupids
          @Description = description
          @ProxyZones = proxyzones
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @UniqueVpcId = params['UniqueVpcId']
          @UniqueSubnetId = params['UniqueSubnetId']
          @ProxyCount = params['ProxyCount']
          @ConnectionPoolType = params['ConnectionPoolType']
          @OpenConnectionPool = params['OpenConnectionPool']
          @ConnectionPoolTimeOut = params['ConnectionPoolTimeOut']
          @SecurityGroupIds = params['SecurityGroupIds']
          @Description = params['Description']
          unless params['ProxyZones'].nil?
            @ProxyZones = []
            params['ProxyZones'].each do |i|
              proxyzone_tmp = ProxyZone.new
              proxyzone_tmp.deserialize(i)
              @ProxyZones << proxyzone_tmp
            end
          end
        end
      end

      # CreateProxy返回参数结构体
      class CreateProxyResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :TaskId, :ProxyGroupId, :RequestId

        def initialize(flowid=nil, taskid=nil, proxygroupid=nil, requestid=nil)
          @FlowId = flowid
          @TaskId = taskid
          @ProxyGroupId = proxygroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @TaskId = params['TaskId']
          @ProxyGroupId = params['ProxyGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateResourcePackage请求参数结构体
      class CreateResourcePackageRequest < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param PackageRegion: 资源包使用地域
        # china-中国内地通用，overseas-港澳台及海外通用
        # @type PackageRegion: String
        # @param PackageType: 资源包类型：CCU-计算资源包，DISK-存储资源包
        # @type PackageType: String
        # @param PackageVersion: 资源包版本
        # base-基础版本，common-通用版本，enterprise-企业版本
        # @type PackageVersion: String
        # @param PackageSpec: 资源包大小，计算资源单位：万个；存储资源：GB
        # @type PackageSpec: Float
        # @param ExpireDay: 资源包有效期，单位:天
        # @type ExpireDay: Integer
        # @param PackageCount: 购买资源包个数
        # @type PackageCount: Integer
        # @param PackageName: 资源包名称
        # @type PackageName: String

        attr_accessor :InstanceType, :PackageRegion, :PackageType, :PackageVersion, :PackageSpec, :ExpireDay, :PackageCount, :PackageName

        def initialize(instancetype=nil, packageregion=nil, packagetype=nil, packageversion=nil, packagespec=nil, expireday=nil, packagecount=nil, packagename=nil)
          @InstanceType = instancetype
          @PackageRegion = packageregion
          @PackageType = packagetype
          @PackageVersion = packageversion
          @PackageSpec = packagespec
          @ExpireDay = expireday
          @PackageCount = packagecount
          @PackageName = packagename
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @PackageRegion = params['PackageRegion']
          @PackageType = params['PackageType']
          @PackageVersion = params['PackageVersion']
          @PackageSpec = params['PackageSpec']
          @ExpireDay = params['ExpireDay']
          @PackageCount = params['PackageCount']
          @PackageName = params['PackageName']
        end
      end

      # CreateResourcePackage返回参数结构体
      class CreateResourcePackageResponse < TencentCloud::Common::AbstractModel
        # @param BigDealIds: 付费总订单号
        # @type BigDealIds: Array
        # @param DealNames: 每个物品对应一个dealName，业务需要根据dealName保证发货接口幂等
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BigDealIds, :DealNames, :RequestId

        def initialize(bigdealids=nil, dealnames=nil, requestid=nil)
          @BigDealIds = bigdealids
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @BigDealIds = params['BigDealIds']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # 集群信息
      class CynosdbCluster < TencentCloud::Common::AbstractModel
        # @param Status: 集群状态， 可选值如下:
        # creating: 创建中
        # running:运行中
        # isolating:隔离中
        # isolated:已隔离
        # activating:解隔离中
        # offlining:下线中
        # offlined:已下线
        # deleting:删除中
        # deleted:已删除
        # @type Status: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域
        # @type Region: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceNum: 实例数
        # @type InstanceNum: Integer
        # @param Uin: 用户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param DbType: 引擎类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbType: String
        # @param AppId: 用户appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param StatusDesc: 集群状态描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusDesc: String
        # @param CreateTime: 集群创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param PayMode: 付费模式。0-按量计费，1-包年包月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param PeriodEndTime: 截止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeriodEndTime: String
        # @param Vip: 集群读写vip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Vport: 集群读写vport
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vport: Integer
        # @param ProjectID: 项目id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectID: Integer
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param CynosVersion: cynos内核版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CynosVersion: String
        # @param StorageLimit: 存储容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageLimit: Integer
        # @param RenewFlag: 续费标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param ProcessingTask: 正在处理的任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcessingTask: String
        # @param Tasks: 集群的任务数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param ResourceTags: 集群绑定的tag数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTags: Array
        # @param DbMode: Db类型(NORMAL, SERVERLESS)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbMode: String
        # @param ServerlessStatus: 当Db类型为SERVERLESS时，serverless集群状态，可选值:
        # resume
        # pause
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ServerlessStatus: String
        # @param Storage: 集群预付费存储值大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Storage: Integer
        # @param StorageId: 集群存储为预付费时的存储ID，用于预付费存储变配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageId: String
        # @param StoragePayMode: 集群存储付费模式。0-按量计费，1-包年包月
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoragePayMode: Integer
        # @param MinStorageSize: 集群计算规格对应的最小存储值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinStorageSize: Integer
        # @param MaxStorageSize: 集群计算规格对应的最大存储值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxStorageSize: Integer
        # @param NetAddrs: 集群网络信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetAddrs: Array
        # @param PhysicalZone: 物理可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhysicalZone: String
        # @param MasterZone: 主可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterZone: String
        # @param HasSlaveZone: 是否有从可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasSlaveZone: String
        # @param SlaveZones: 从可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveZones: Array
        # @param BusinessType: 商业类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessType: String
        # @param IsFreeze: 是否冻结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFreeze: String
        # @param OrderSource: 订单来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderSource: String
        # @param Ability: 能力
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ability: :class:`Tencentcloud::Cynosdb.v20190107.models.Ability`
        # @param ResourcePackages: 实例绑定资源包信息（此处只返回存储资源包，即packageType=DISK）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourcePackages: Array

        attr_accessor :Status, :UpdateTime, :Zone, :ClusterName, :Region, :DbVersion, :ClusterId, :InstanceNum, :Uin, :DbType, :AppId, :StatusDesc, :CreateTime, :PayMode, :PeriodEndTime, :Vip, :Vport, :ProjectID, :VpcId, :SubnetId, :CynosVersion, :StorageLimit, :RenewFlag, :ProcessingTask, :Tasks, :ResourceTags, :DbMode, :ServerlessStatus, :Storage, :StorageId, :StoragePayMode, :MinStorageSize, :MaxStorageSize, :NetAddrs, :PhysicalZone, :MasterZone, :HasSlaveZone, :SlaveZones, :BusinessType, :IsFreeze, :OrderSource, :Ability, :ResourcePackages

        def initialize(status=nil, updatetime=nil, zone=nil, clustername=nil, region=nil, dbversion=nil, clusterid=nil, instancenum=nil, uin=nil, dbtype=nil, appid=nil, statusdesc=nil, createtime=nil, paymode=nil, periodendtime=nil, vip=nil, vport=nil, projectid=nil, vpcid=nil, subnetid=nil, cynosversion=nil, storagelimit=nil, renewflag=nil, processingtask=nil, tasks=nil, resourcetags=nil, dbmode=nil, serverlessstatus=nil, storage=nil, storageid=nil, storagepaymode=nil, minstoragesize=nil, maxstoragesize=nil, netaddrs=nil, physicalzone=nil, masterzone=nil, hasslavezone=nil, slavezones=nil, businesstype=nil, isfreeze=nil, ordersource=nil, ability=nil, resourcepackages=nil)
          @Status = status
          @UpdateTime = updatetime
          @Zone = zone
          @ClusterName = clustername
          @Region = region
          @DbVersion = dbversion
          @ClusterId = clusterid
          @InstanceNum = instancenum
          @Uin = uin
          @DbType = dbtype
          @AppId = appid
          @StatusDesc = statusdesc
          @CreateTime = createtime
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @Vip = vip
          @Vport = vport
          @ProjectID = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @CynosVersion = cynosversion
          @StorageLimit = storagelimit
          @RenewFlag = renewflag
          @ProcessingTask = processingtask
          @Tasks = tasks
          @ResourceTags = resourcetags
          @DbMode = dbmode
          @ServerlessStatus = serverlessstatus
          @Storage = storage
          @StorageId = storageid
          @StoragePayMode = storagepaymode
          @MinStorageSize = minstoragesize
          @MaxStorageSize = maxstoragesize
          @NetAddrs = netaddrs
          @PhysicalZone = physicalzone
          @MasterZone = masterzone
          @HasSlaveZone = hasslavezone
          @SlaveZones = slavezones
          @BusinessType = businesstype
          @IsFreeze = isfreeze
          @OrderSource = ordersource
          @Ability = ability
          @ResourcePackages = resourcepackages
        end

        def deserialize(params)
          @Status = params['Status']
          @UpdateTime = params['UpdateTime']
          @Zone = params['Zone']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @DbVersion = params['DbVersion']
          @ClusterId = params['ClusterId']
          @InstanceNum = params['InstanceNum']
          @Uin = params['Uin']
          @DbType = params['DbType']
          @AppId = params['AppId']
          @StatusDesc = params['StatusDesc']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @ProjectID = params['ProjectID']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @CynosVersion = params['CynosVersion']
          @StorageLimit = params['StorageLimit']
          @RenewFlag = params['RenewFlag']
          @ProcessingTask = params['ProcessingTask']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              objecttask_tmp = ObjectTask.new
              objecttask_tmp.deserialize(i)
              @Tasks << objecttask_tmp
            end
          end
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @DbMode = params['DbMode']
          @ServerlessStatus = params['ServerlessStatus']
          @Storage = params['Storage']
          @StorageId = params['StorageId']
          @StoragePayMode = params['StoragePayMode']
          @MinStorageSize = params['MinStorageSize']
          @MaxStorageSize = params['MaxStorageSize']
          unless params['NetAddrs'].nil?
            @NetAddrs = []
            params['NetAddrs'].each do |i|
              netaddr_tmp = NetAddr.new
              netaddr_tmp.deserialize(i)
              @NetAddrs << netaddr_tmp
            end
          end
          @PhysicalZone = params['PhysicalZone']
          @MasterZone = params['MasterZone']
          @HasSlaveZone = params['HasSlaveZone']
          @SlaveZones = params['SlaveZones']
          @BusinessType = params['BusinessType']
          @IsFreeze = params['IsFreeze']
          @OrderSource = params['OrderSource']
          unless params['Ability'].nil?
            @Ability = Ability.new
            @Ability.deserialize(params['Ability'])
          end
          unless params['ResourcePackages'].nil?
            @ResourcePackages = []
            params['ResourcePackages'].each do |i|
              resourcepackage_tmp = ResourcePackage.new
              resourcepackage_tmp.deserialize(i)
              @ResourcePackages << resourcepackage_tmp
            end
          end
        end
      end

      # 集群详情详细信息
      class CynosdbClusterDetail < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param PhysicalZone: 物理可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhysicalZone: String
        # @param Status: 状态
        # @type Status: String
        # @param StatusDesc: 状态描述
        # @type StatusDesc: String
        # @param ServerlessStatus: 当Db类型为SERVERLESS时，serverless集群状态，可选值:
        # resume
        # resuming
        # pause
        # pausing
        # @type ServerlessStatus: String
        # @param StorageId: 存储Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageId: String
        # @param Storage: 存储大小，单位为G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Storage: Integer
        # @param MaxStorageSize: 最大存储规格，单位为G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxStorageSize: Integer
        # @param MinStorageSize: 最小存储规格，单位为G
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinStorageSize: Integer
        # @param StoragePayMode: 存储付费类型，1为包年包月，0为按量计费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StoragePayMode: Integer
        # @param VpcName: VPC名称
        # @type VpcName: String
        # @param VpcId: vpc唯一id
        # @type VpcId: String
        # @param SubnetName: 子网名称
        # @type SubnetName: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Charset: 字符集
        # @type Charset: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbMode: 数据库类型，normal，serverless
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbMode: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param StorageLimit: 存储空间上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageLimit: Integer
        # @param UsedStorage: 使用容量
        # @type UsedStorage: Integer
        # @param Vip: vip地址
        # @type Vip: String
        # @param Vport: vport端口
        # @type Vport: Integer
        # @param RoAddr: 集群只读实例的vip地址和vport端口
        # @type RoAddr: Array
        # @param Ability: 集群支持的功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ability: :class:`Tencentcloud::Cynosdb.v20190107.models.Ability`
        # @param CynosVersion: cynos版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CynosVersion: String
        # @param BusinessType: 商业类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessType: String
        # @param HasSlaveZone: 是否有从可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasSlaveZone: String
        # @param IsFreeze: 是否冻结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFreeze: String
        # @param Tasks: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param MasterZone: 主可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterZone: String
        # @param SlaveZones: 从可用区列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveZones: Array
        # @param InstanceSet: 实例信息
        # @type InstanceSet: Array
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param PeriodEndTime: 到期时间
        # @type PeriodEndTime: String
        # @param ProjectID: 项目id
        # @type ProjectID: Integer
        # @param ResourceTags: 实例绑定的tag数组信息
        # @type ResourceTags: Array
        # @param ProxyStatus: Proxy状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyStatus: String
        # @param LogBin: binlog开关，可选值：ON, OFF
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogBin: String
        # @param IsSkipTrade: 是否跳过交易
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSkipTrade: String
        # @param PitrType: pitr类型，可选值：normal, redo_pitr
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PitrType: String
        # @param IsOpenPasswordComplexity: 是否打开密码复杂度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsOpenPasswordComplexity: String
        # @param NetworkStatus: 网络类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkStatus: String
        # @param ResourcePackages: 集群绑定的资源包信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourcePackages: Array
        # @param RenewFlag: 自动续费标识，1为自动续费，0为到期不续
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer

        attr_accessor :ClusterId, :ClusterName, :Region, :Zone, :PhysicalZone, :Status, :StatusDesc, :ServerlessStatus, :StorageId, :Storage, :MaxStorageSize, :MinStorageSize, :StoragePayMode, :VpcName, :VpcId, :SubnetName, :SubnetId, :Charset, :CreateTime, :DbType, :DbMode, :DbVersion, :StorageLimit, :UsedStorage, :Vip, :Vport, :RoAddr, :Ability, :CynosVersion, :BusinessType, :HasSlaveZone, :IsFreeze, :Tasks, :MasterZone, :SlaveZones, :InstanceSet, :PayMode, :PeriodEndTime, :ProjectID, :ResourceTags, :ProxyStatus, :LogBin, :IsSkipTrade, :PitrType, :IsOpenPasswordComplexity, :NetworkStatus, :ResourcePackages, :RenewFlag

        def initialize(clusterid=nil, clustername=nil, region=nil, zone=nil, physicalzone=nil, status=nil, statusdesc=nil, serverlessstatus=nil, storageid=nil, storage=nil, maxstoragesize=nil, minstoragesize=nil, storagepaymode=nil, vpcname=nil, vpcid=nil, subnetname=nil, subnetid=nil, charset=nil, createtime=nil, dbtype=nil, dbmode=nil, dbversion=nil, storagelimit=nil, usedstorage=nil, vip=nil, vport=nil, roaddr=nil, ability=nil, cynosversion=nil, businesstype=nil, hasslavezone=nil, isfreeze=nil, tasks=nil, masterzone=nil, slavezones=nil, instanceset=nil, paymode=nil, periodendtime=nil, projectid=nil, resourcetags=nil, proxystatus=nil, logbin=nil, isskiptrade=nil, pitrtype=nil, isopenpasswordcomplexity=nil, networkstatus=nil, resourcepackages=nil, renewflag=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @Region = region
          @Zone = zone
          @PhysicalZone = physicalzone
          @Status = status
          @StatusDesc = statusdesc
          @ServerlessStatus = serverlessstatus
          @StorageId = storageid
          @Storage = storage
          @MaxStorageSize = maxstoragesize
          @MinStorageSize = minstoragesize
          @StoragePayMode = storagepaymode
          @VpcName = vpcname
          @VpcId = vpcid
          @SubnetName = subnetname
          @SubnetId = subnetid
          @Charset = charset
          @CreateTime = createtime
          @DbType = dbtype
          @DbMode = dbmode
          @DbVersion = dbversion
          @StorageLimit = storagelimit
          @UsedStorage = usedstorage
          @Vip = vip
          @Vport = vport
          @RoAddr = roaddr
          @Ability = ability
          @CynosVersion = cynosversion
          @BusinessType = businesstype
          @HasSlaveZone = hasslavezone
          @IsFreeze = isfreeze
          @Tasks = tasks
          @MasterZone = masterzone
          @SlaveZones = slavezones
          @InstanceSet = instanceset
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @ProjectID = projectid
          @ResourceTags = resourcetags
          @ProxyStatus = proxystatus
          @LogBin = logbin
          @IsSkipTrade = isskiptrade
          @PitrType = pitrtype
          @IsOpenPasswordComplexity = isopenpasswordcomplexity
          @NetworkStatus = networkstatus
          @ResourcePackages = resourcepackages
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @Region = params['Region']
          @Zone = params['Zone']
          @PhysicalZone = params['PhysicalZone']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @ServerlessStatus = params['ServerlessStatus']
          @StorageId = params['StorageId']
          @Storage = params['Storage']
          @MaxStorageSize = params['MaxStorageSize']
          @MinStorageSize = params['MinStorageSize']
          @StoragePayMode = params['StoragePayMode']
          @VpcName = params['VpcName']
          @VpcId = params['VpcId']
          @SubnetName = params['SubnetName']
          @SubnetId = params['SubnetId']
          @Charset = params['Charset']
          @CreateTime = params['CreateTime']
          @DbType = params['DbType']
          @DbMode = params['DbMode']
          @DbVersion = params['DbVersion']
          @StorageLimit = params['StorageLimit']
          @UsedStorage = params['UsedStorage']
          @Vip = params['Vip']
          @Vport = params['Vport']
          unless params['RoAddr'].nil?
            @RoAddr = []
            params['RoAddr'].each do |i|
              addr_tmp = Addr.new
              addr_tmp.deserialize(i)
              @RoAddr << addr_tmp
            end
          end
          unless params['Ability'].nil?
            @Ability = Ability.new
            @Ability.deserialize(params['Ability'])
          end
          @CynosVersion = params['CynosVersion']
          @BusinessType = params['BusinessType']
          @HasSlaveZone = params['HasSlaveZone']
          @IsFreeze = params['IsFreeze']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              objecttask_tmp = ObjectTask.new
              objecttask_tmp.deserialize(i)
              @Tasks << objecttask_tmp
            end
          end
          @MasterZone = params['MasterZone']
          @SlaveZones = params['SlaveZones']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              clusterinstancedetail_tmp = ClusterInstanceDetail.new
              clusterinstancedetail_tmp.deserialize(i)
              @InstanceSet << clusterinstancedetail_tmp
            end
          end
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @ProjectID = params['ProjectID']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @ProxyStatus = params['ProxyStatus']
          @LogBin = params['LogBin']
          @IsSkipTrade = params['IsSkipTrade']
          @PitrType = params['PitrType']
          @IsOpenPasswordComplexity = params['IsOpenPasswordComplexity']
          @NetworkStatus = params['NetworkStatus']
          unless params['ResourcePackages'].nil?
            @ResourcePackages = []
            params['ResourcePackages'].each do |i|
              resourcepackage_tmp = ResourcePackage.new
              resourcepackage_tmp.deserialize(i)
              @ResourcePackages << resourcepackage_tmp
            end
          end
          @RenewFlag = params['RenewFlag']
        end
      end

      # 实例错误日志返回类型
      class CynosdbErrorLogItem < TencentCloud::Common::AbstractModel
        # @param Timestamp: 日志时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: Integer
        # @param Level: 日志等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: String
        # @param Content: 日志内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Timestamp, :Level, :Content

        def initialize(timestamp=nil, level=nil, content=nil)
          @Timestamp = timestamp
          @Level = level
          @Content = content
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Level = params['Level']
          @Content = params['Content']
        end
      end

      # 实例信息
      class CynosdbInstance < TencentCloud::Common::AbstractModel
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Status: 实例状态
        # @type Status: String
        # @param StatusDesc: 实例状态中文描述
        # @type StatusDesc: String
        # @param DbMode: 实例形态，是否为serverless实例
        # @type DbMode: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param Cpu: Cpu，单位：核
        # @type Cpu: Integer
        # @param Memory: 内存，单位：GB
        # @type Memory: Integer
        # @param Storage: 存储量，单位：GB
        # @type Storage: Integer
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param InstanceRole: 实例当前角色
        # @type InstanceRole: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param VpcId: VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Vip: 实例内网IP
        # @type Vip: String
        # @param Vport: 实例内网端口
        # @type Vport: Integer
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param PeriodEndTime: 实例过期时间
        # @type PeriodEndTime: String
        # @param DestroyDeadlineText: 销毁期限
        # @type DestroyDeadlineText: String
        # @param IsolateTime: 隔离时间
        # @type IsolateTime: String
        # @param NetType: 网络类型
        # @type NetType: Integer
        # @param WanDomain: 外网域名
        # @type WanDomain: String
        # @param WanIP: 外网IP
        # @type WanIP: String
        # @param WanPort: 外网端口
        # @type WanPort: Integer
        # @param WanStatus: 外网状态
        # @type WanStatus: String
        # @param DestroyTime: 实例销毁时间
        # @type DestroyTime: String
        # @param CynosVersion: Cynos内核版本
        # @type CynosVersion: String
        # @param ProcessingTask: 正在处理的任务
        # @type ProcessingTask: String
        # @param RenewFlag: 续费标志
        # @type RenewFlag: Integer
        # @param MinCpu: serverless实例cpu下限
        # @type MinCpu: Float
        # @param MaxCpu: serverless实例cpu上限
        # @type MaxCpu: Float
        # @param ServerlessStatus: serverless实例状态, 可选值：
        # resume
        # pause
        # @type ServerlessStatus: String
        # @param StorageId: 预付费存储Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StorageId: String
        # @param StoragePayMode: 存储付费类型
        # @type StoragePayMode: Integer
        # @param PhysicalZone: 物理区
        # @type PhysicalZone: String
        # @param BusinessType: 商业类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BusinessType: String
        # @param Tasks: 任务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param IsFreeze: 是否冻结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFreeze: String
        # @param ResourceTags: 资源标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceTags: Array
        # @param MasterZone: 主可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MasterZone: String
        # @param SlaveZones: 备可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlaveZones: Array
        # @param InstanceNetInfo: 实例网络信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNetInfo: Array
        # @param ResourcePackages: 实例绑定资源包信息（此处只返回计算资源包，即packageType=CCU）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourcePackages: Array

        attr_accessor :Uin, :AppId, :ClusterId, :ClusterName, :InstanceId, :InstanceName, :ProjectId, :Region, :Zone, :Status, :StatusDesc, :DbMode, :DbType, :DbVersion, :Cpu, :Memory, :Storage, :InstanceType, :InstanceRole, :UpdateTime, :CreateTime, :VpcId, :SubnetId, :Vip, :Vport, :PayMode, :PeriodEndTime, :DestroyDeadlineText, :IsolateTime, :NetType, :WanDomain, :WanIP, :WanPort, :WanStatus, :DestroyTime, :CynosVersion, :ProcessingTask, :RenewFlag, :MinCpu, :MaxCpu, :ServerlessStatus, :StorageId, :StoragePayMode, :PhysicalZone, :BusinessType, :Tasks, :IsFreeze, :ResourceTags, :MasterZone, :SlaveZones, :InstanceNetInfo, :ResourcePackages

        def initialize(uin=nil, appid=nil, clusterid=nil, clustername=nil, instanceid=nil, instancename=nil, projectid=nil, region=nil, zone=nil, status=nil, statusdesc=nil, dbmode=nil, dbtype=nil, dbversion=nil, cpu=nil, memory=nil, storage=nil, instancetype=nil, instancerole=nil, updatetime=nil, createtime=nil, vpcid=nil, subnetid=nil, vip=nil, vport=nil, paymode=nil, periodendtime=nil, destroydeadlinetext=nil, isolatetime=nil, nettype=nil, wandomain=nil, wanip=nil, wanport=nil, wanstatus=nil, destroytime=nil, cynosversion=nil, processingtask=nil, renewflag=nil, mincpu=nil, maxcpu=nil, serverlessstatus=nil, storageid=nil, storagepaymode=nil, physicalzone=nil, businesstype=nil, tasks=nil, isfreeze=nil, resourcetags=nil, masterzone=nil, slavezones=nil, instancenetinfo=nil, resourcepackages=nil)
          @Uin = uin
          @AppId = appid
          @ClusterId = clusterid
          @ClusterName = clustername
          @InstanceId = instanceid
          @InstanceName = instancename
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @Status = status
          @StatusDesc = statusdesc
          @DbMode = dbmode
          @DbType = dbtype
          @DbVersion = dbversion
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @InstanceType = instancetype
          @InstanceRole = instancerole
          @UpdateTime = updatetime
          @CreateTime = createtime
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Vport = vport
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @DestroyDeadlineText = destroydeadlinetext
          @IsolateTime = isolatetime
          @NetType = nettype
          @WanDomain = wandomain
          @WanIP = wanip
          @WanPort = wanport
          @WanStatus = wanstatus
          @DestroyTime = destroytime
          @CynosVersion = cynosversion
          @ProcessingTask = processingtask
          @RenewFlag = renewflag
          @MinCpu = mincpu
          @MaxCpu = maxcpu
          @ServerlessStatus = serverlessstatus
          @StorageId = storageid
          @StoragePayMode = storagepaymode
          @PhysicalZone = physicalzone
          @BusinessType = businesstype
          @Tasks = tasks
          @IsFreeze = isfreeze
          @ResourceTags = resourcetags
          @MasterZone = masterzone
          @SlaveZones = slavezones
          @InstanceNetInfo = instancenetinfo
          @ResourcePackages = resourcepackages
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DbMode = params['DbMode']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceType = params['InstanceType']
          @InstanceRole = params['InstanceRole']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @DestroyDeadlineText = params['DestroyDeadlineText']
          @IsolateTime = params['IsolateTime']
          @NetType = params['NetType']
          @WanDomain = params['WanDomain']
          @WanIP = params['WanIP']
          @WanPort = params['WanPort']
          @WanStatus = params['WanStatus']
          @DestroyTime = params['DestroyTime']
          @CynosVersion = params['CynosVersion']
          @ProcessingTask = params['ProcessingTask']
          @RenewFlag = params['RenewFlag']
          @MinCpu = params['MinCpu']
          @MaxCpu = params['MaxCpu']
          @ServerlessStatus = params['ServerlessStatus']
          @StorageId = params['StorageId']
          @StoragePayMode = params['StoragePayMode']
          @PhysicalZone = params['PhysicalZone']
          @BusinessType = params['BusinessType']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              objecttask_tmp = ObjectTask.new
              objecttask_tmp.deserialize(i)
              @Tasks << objecttask_tmp
            end
          end
          @IsFreeze = params['IsFreeze']
          unless params['ResourceTags'].nil?
            @ResourceTags = []
            params['ResourceTags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @ResourceTags << tag_tmp
            end
          end
          @MasterZone = params['MasterZone']
          @SlaveZones = params['SlaveZones']
          unless params['InstanceNetInfo'].nil?
            @InstanceNetInfo = []
            params['InstanceNetInfo'].each do |i|
              instancenetinfo_tmp = InstanceNetInfo.new
              instancenetinfo_tmp.deserialize(i)
              @InstanceNetInfo << instancenetinfo_tmp
            end
          end
          unless params['ResourcePackages'].nil?
            @ResourcePackages = []
            params['ResourcePackages'].each do |i|
              resourcepackage_tmp = ResourcePackage.new
              resourcepackage_tmp.deserialize(i)
              @ResourcePackages << resourcepackage_tmp
            end
          end
        end
      end

      # 实例详情
      class CynosdbInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Uin: 用户Uin
        # @type Uin: String
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param Status: 实例状态
        # @type Status: String
        # @param StatusDesc: 实例状态中文描述
        # @type StatusDesc: String
        # @param DbType: 数据库类型
        # @type DbType: String
        # @param DbVersion: 数据库版本
        # @type DbVersion: String
        # @param Cpu: Cpu，单位：核
        # @type Cpu: Integer
        # @param Memory: 内存，单位：GB
        # @type Memory: Integer
        # @param Storage: 存储量，单位：GB
        # @type Storage: Integer
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param InstanceRole: 实例当前角色
        # @type InstanceRole: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param PayMode: 付费模式
        # @type PayMode: Integer
        # @param PeriodEndTime: 实例过期时间
        # @type PeriodEndTime: String
        # @param NetType: 网络类型
        # @type NetType: Integer
        # @param VpcId: VPC网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Vip: 实例内网IP
        # @type Vip: String
        # @param Vport: 实例内网端口
        # @type Vport: Integer
        # @param WanDomain: 实例外网域名
        # @type WanDomain: String
        # @param Charset: 字符集
        # @type Charset: String
        # @param CynosVersion: Cynos内核版本
        # @type CynosVersion: String
        # @param RenewFlag: 续费标志
        # @type RenewFlag: Integer
        # @param MinCpu: serverless实例cpu下限
        # @type MinCpu: Float
        # @param MaxCpu: serverless实例cpu上限
        # @type MaxCpu: Float
        # @param ServerlessStatus: serverless实例状态, 可能值：
        # resume
        # pause
        # @type ServerlessStatus: String

        attr_accessor :Uin, :AppId, :ClusterId, :ClusterName, :InstanceId, :InstanceName, :ProjectId, :Region, :Zone, :Status, :StatusDesc, :DbType, :DbVersion, :Cpu, :Memory, :Storage, :InstanceType, :InstanceRole, :UpdateTime, :CreateTime, :PayMode, :PeriodEndTime, :NetType, :VpcId, :SubnetId, :Vip, :Vport, :WanDomain, :Charset, :CynosVersion, :RenewFlag, :MinCpu, :MaxCpu, :ServerlessStatus

        def initialize(uin=nil, appid=nil, clusterid=nil, clustername=nil, instanceid=nil, instancename=nil, projectid=nil, region=nil, zone=nil, status=nil, statusdesc=nil, dbtype=nil, dbversion=nil, cpu=nil, memory=nil, storage=nil, instancetype=nil, instancerole=nil, updatetime=nil, createtime=nil, paymode=nil, periodendtime=nil, nettype=nil, vpcid=nil, subnetid=nil, vip=nil, vport=nil, wandomain=nil, charset=nil, cynosversion=nil, renewflag=nil, mincpu=nil, maxcpu=nil, serverlessstatus=nil)
          @Uin = uin
          @AppId = appid
          @ClusterId = clusterid
          @ClusterName = clustername
          @InstanceId = instanceid
          @InstanceName = instancename
          @ProjectId = projectid
          @Region = region
          @Zone = zone
          @Status = status
          @StatusDesc = statusdesc
          @DbType = dbtype
          @DbVersion = dbversion
          @Cpu = cpu
          @Memory = memory
          @Storage = storage
          @InstanceType = instancetype
          @InstanceRole = instancerole
          @UpdateTime = updatetime
          @CreateTime = createtime
          @PayMode = paymode
          @PeriodEndTime = periodendtime
          @NetType = nettype
          @VpcId = vpcid
          @SubnetId = subnetid
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @Charset = charset
          @CynosVersion = cynosversion
          @RenewFlag = renewflag
          @MinCpu = mincpu
          @MaxCpu = maxcpu
          @ServerlessStatus = serverlessstatus
        end

        def deserialize(params)
          @Uin = params['Uin']
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Zone = params['Zone']
          @Status = params['Status']
          @StatusDesc = params['StatusDesc']
          @DbType = params['DbType']
          @DbVersion = params['DbVersion']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceType = params['InstanceType']
          @InstanceRole = params['InstanceRole']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @PayMode = params['PayMode']
          @PeriodEndTime = params['PeriodEndTime']
          @NetType = params['NetType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @Charset = params['Charset']
          @CynosVersion = params['CynosVersion']
          @RenewFlag = params['RenewFlag']
          @MinCpu = params['MinCpu']
          @MaxCpu = params['MaxCpu']
          @ServerlessStatus = params['ServerlessStatus']
        end
      end

      # 实例组信息
      class CynosdbInstanceGrp < TencentCloud::Common::AbstractModel
        # @param AppId: 用户appId
        # @type AppId: Integer
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param DeletedTime: 删除时间
        # @type DeletedTime: String
        # @param InstanceGrpId: 实例组ID
        # @type InstanceGrpId: String
        # @param Status: 状态
        # @type Status: String
        # @param Type: 实例组类型。ha-ha组；ro-只读组
        # @type Type: String
        # @param UpdatedTime: 更新时间
        # @type UpdatedTime: String
        # @param Vip: 内网IP
        # @type Vip: String
        # @param Vport: 内网端口
        # @type Vport: Integer
        # @param WanDomain: 外网域名
        # @type WanDomain: String
        # @param WanIP: 外网ip
        # @type WanIP: String
        # @param WanPort: 外网端口
        # @type WanPort: Integer
        # @param WanStatus: 外网状态
        # @type WanStatus: String
        # @param InstanceSet: 实例组包含实例信息
        # @type InstanceSet: Array
        # @param UniqVpcId: VPC的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param UniqSubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqSubnetId: String
        # @param OldAddrInfo: 正在回收IP信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldAddrInfo: :class:`Tencentcloud::Cynosdb.v20190107.models.OldAddrInfo`
        # @param ProcessingTasks: 正在进行的任务
        # @type ProcessingTasks: Array
        # @param Tasks: 任务列表
        # @type Tasks: Array
        # @param NetServiceId: biz_net_service表id
        # @type NetServiceId: Integer

        attr_accessor :AppId, :ClusterId, :CreatedTime, :DeletedTime, :InstanceGrpId, :Status, :Type, :UpdatedTime, :Vip, :Vport, :WanDomain, :WanIP, :WanPort, :WanStatus, :InstanceSet, :UniqVpcId, :UniqSubnetId, :OldAddrInfo, :ProcessingTasks, :Tasks, :NetServiceId

        def initialize(appid=nil, clusterid=nil, createdtime=nil, deletedtime=nil, instancegrpid=nil, status=nil, type=nil, updatedtime=nil, vip=nil, vport=nil, wandomain=nil, wanip=nil, wanport=nil, wanstatus=nil, instanceset=nil, uniqvpcid=nil, uniqsubnetid=nil, oldaddrinfo=nil, processingtasks=nil, tasks=nil, netserviceid=nil)
          @AppId = appid
          @ClusterId = clusterid
          @CreatedTime = createdtime
          @DeletedTime = deletedtime
          @InstanceGrpId = instancegrpid
          @Status = status
          @Type = type
          @UpdatedTime = updatedtime
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @WanIP = wanip
          @WanPort = wanport
          @WanStatus = wanstatus
          @InstanceSet = instanceset
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @OldAddrInfo = oldaddrinfo
          @ProcessingTasks = processingtasks
          @Tasks = tasks
          @NetServiceId = netserviceid
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ClusterId = params['ClusterId']
          @CreatedTime = params['CreatedTime']
          @DeletedTime = params['DeletedTime']
          @InstanceGrpId = params['InstanceGrpId']
          @Status = params['Status']
          @Type = params['Type']
          @UpdatedTime = params['UpdatedTime']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @WanIP = params['WanIP']
          @WanPort = params['WanPort']
          @WanStatus = params['WanStatus']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              cynosdbinstance_tmp = CynosdbInstance.new
              cynosdbinstance_tmp.deserialize(i)
              @InstanceSet << cynosdbinstance_tmp
            end
          end
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          unless params['OldAddrInfo'].nil?
            @OldAddrInfo = OldAddrInfo.new
            @OldAddrInfo.deserialize(params['OldAddrInfo'])
          end
          @ProcessingTasks = params['ProcessingTasks']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              objecttask_tmp = ObjectTask.new
              objecttask_tmp.deserialize(i)
              @Tasks << objecttask_tmp
            end
          end
          @NetServiceId = params['NetServiceId']
        end
      end

      # 数据库权限列表
      class DatabasePrivileges < TencentCloud::Common::AbstractModel
        # @param Db: 数据库
        # @type Db: String
        # @param Privileges: 权限列表
        # @type Privileges: Array

        attr_accessor :Db, :Privileges

        def initialize(db=nil, privileges=nil)
          @Db = db
          @Privileges = privileges
        end

        def deserialize(params)
          @Db = params['Db']
          @Privileges = params['Privileges']
        end
      end

      # 数据库表信息
      class DatabaseTables < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Database: String
        # @param Tables: 表名称列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array

        attr_accessor :Database, :Tables

        def initialize(database=nil, tables=nil)
          @Database = database
          @Tables = tables
        end

        def deserialize(params)
          @Database = params['Database']
          @Tables = params['Tables']
        end
      end

      # 数据库详细信息
      class DbInfo < TencentCloud::Common::AbstractModel
        # @param DbName: 数据库名称
        # @type DbName: String
        # @param CharacterSet: 字符集类型
        # @type CharacterSet: String
        # @param Status: 数据库状态
        # @type Status: String
        # @param CollateRule: 排序规则
        # @type CollateRule: String
        # @param Description: 数据库备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param UserHostPrivileges: 用户权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserHostPrivileges: Array
        # @param DbId: 数据库ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbId: Integer
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param AppId: 用户appid
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param Uin: 用户Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param ClusterId: 集群Id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String

        attr_accessor :DbName, :CharacterSet, :Status, :CollateRule, :Description, :UserHostPrivileges, :DbId, :CreateTime, :UpdateTime, :AppId, :Uin, :ClusterId

        def initialize(dbname=nil, characterset=nil, status=nil, collaterule=nil, description=nil, userhostprivileges=nil, dbid=nil, createtime=nil, updatetime=nil, appid=nil, uin=nil, clusterid=nil)
          @DbName = dbname
          @CharacterSet = characterset
          @Status = status
          @CollateRule = collaterule
          @Description = description
          @UserHostPrivileges = userhostprivileges
          @DbId = dbid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @AppId = appid
          @Uin = uin
          @ClusterId = clusterid
        end

        def deserialize(params)
          @DbName = params['DbName']
          @CharacterSet = params['CharacterSet']
          @Status = params['Status']
          @CollateRule = params['CollateRule']
          @Description = params['Description']
          unless params['UserHostPrivileges'].nil?
            @UserHostPrivileges = []
            params['UserHostPrivileges'].each do |i|
              userhostprivilege_tmp = UserHostPrivilege.new
              userhostprivilege_tmp.deserialize(i)
              @UserHostPrivileges << userhostprivilege_tmp
            end
          end
          @DbId = params['DbId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @AppId = params['AppId']
          @Uin = params['Uin']
          @ClusterId = params['ClusterId']
        end
      end

      # 数据库表
      class DbTable < TencentCloud::Common::AbstractModel
        # @param Db: 数据库名称
        # @type Db: String
        # @param TableName: 数据库表名称
        # @type TableName: String

        attr_accessor :Db, :TableName

        def initialize(db=nil, tablename=nil)
          @Db = db
          @TableName = tablename
        end

        def deserialize(params)
          @Db = params['Db']
          @TableName = params['TableName']
        end
      end

      # DeleteAccounts请求参数结构体
      class DeleteAccountsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Accounts: 账号数组，包含account和host
        # @type Accounts: Array

        attr_accessor :ClusterId, :Accounts

        def initialize(clusterid=nil, accounts=nil)
          @ClusterId = clusterid
          @Accounts = accounts
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Accounts'].nil?
            @Accounts = []
            params['Accounts'].each do |i|
              inputaccount_tmp = InputAccount.new
              inputaccount_tmp.deserialize(i)
              @Accounts << inputaccount_tmp
            end
          end
        end
      end

      # DeleteAccounts返回参数结构体
      class DeleteAccountsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAuditLogFile请求参数结构体
      class DeleteAuditLogFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FileName: 审计日志文件名称。
        # @type FileName: String

        attr_accessor :InstanceId, :FileName

        def initialize(instanceid=nil, filename=nil)
          @InstanceId = instanceid
          @FileName = filename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileName = params['FileName']
        end
      end

      # DeleteAuditLogFile返回参数结构体
      class DeleteAuditLogFileResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAuditRuleTemplates请求参数结构体
      class DeleteAuditRuleTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param RuleTemplateIds: 审计规则模版ID。
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

      # DeleteBackup请求参数结构体
      class DeleteBackupRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SnapshotIdList: 备份文件ID，旧版本使用的字段，不推荐使用
        # @type SnapshotIdList: Array
        # @param BackupIds: 备份文件ID，推荐使用
        # @type BackupIds: Array

        attr_accessor :ClusterId, :SnapshotIdList, :BackupIds

        def initialize(clusterid=nil, snapshotidlist=nil, backupids=nil)
          @ClusterId = clusterid
          @SnapshotIdList = snapshotidlist
          @BackupIds = backupids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SnapshotIdList = params['SnapshotIdList']
          @BackupIds = params['BackupIds']
        end
      end

      # DeleteBackup返回参数结构体
      class DeleteBackupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteClusterDatabase请求参数结构体
      class DeleteClusterDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param DbNames: 数据库名
        # @type DbNames: Array

        attr_accessor :ClusterId, :DbNames

        def initialize(clusterid=nil, dbnames=nil)
          @ClusterId = clusterid
          @DbNames = dbnames
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @DbNames = params['DbNames']
        end
      end

      # DeleteClusterDatabase返回参数结构体
      class DeleteClusterDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # DeleteParamTemplate请求参数结构体
      class DeleteParamTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID
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

      # DescribeAccountAllGrantPrivileges请求参数结构体
      class DescribeAccountAllGrantPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`

        attr_accessor :ClusterId, :Account

        def initialize(clusterid=nil, account=nil)
          @ClusterId = clusterid
          @Account = account
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
        end
      end

      # DescribeAccountAllGrantPrivileges返回参数结构体
      class DescribeAccountAllGrantPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param PrivilegeStatements: 权限语句
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivilegeStatements: Array
        # @param GlobalPrivileges: 全局权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GlobalPrivileges: Array
        # @param DatabasePrivileges: 数据库权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DatabasePrivileges: Array
        # @param TablePrivileges: 数据库表权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TablePrivileges: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PrivilegeStatements, :GlobalPrivileges, :DatabasePrivileges, :TablePrivileges, :RequestId

        def initialize(privilegestatements=nil, globalprivileges=nil, databaseprivileges=nil, tableprivileges=nil, requestid=nil)
          @PrivilegeStatements = privilegestatements
          @GlobalPrivileges = globalprivileges
          @DatabasePrivileges = databaseprivileges
          @TablePrivileges = tableprivileges
          @RequestId = requestid
        end

        def deserialize(params)
          @PrivilegeStatements = params['PrivilegeStatements']
          @GlobalPrivileges = params['GlobalPrivileges']
          unless params['DatabasePrivileges'].nil?
            @DatabasePrivileges = []
            params['DatabasePrivileges'].each do |i|
              databaseprivileges_tmp = DatabasePrivileges.new
              databaseprivileges_tmp.deserialize(i)
              @DatabasePrivileges << databaseprivileges_tmp
            end
          end
          unless params['TablePrivileges'].nil?
            @TablePrivileges = []
            params['TablePrivileges'].each do |i|
              tableprivileges_tmp = TablePrivileges.new
              tableprivileges_tmp.deserialize(i)
              @TablePrivileges << tableprivileges_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccountPrivileges请求参数结构体
      class DescribeAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param AccountName: 账户名
        # @type AccountName: String
        # @param Host: 主机
        # @type Host: String
        # @param Db: 数据库名，为*时，忽略Type/TableName, 表示修改用户全局权限；
        # @type Db: String
        # @param Type: 指定数据库下的对象类型，可选"table"，"*"
        # @type Type: String
        # @param TableName: 当Type="table"时，用来指定表名
        # @type TableName: String

        attr_accessor :ClusterId, :AccountName, :Host, :Db, :Type, :TableName

        def initialize(clusterid=nil, accountname=nil, host=nil, db=nil, type=nil, tablename=nil)
          @ClusterId = clusterid
          @AccountName = accountname
          @Host = host
          @Db = db
          @Type = type
          @TableName = tablename
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AccountName = params['AccountName']
          @Host = params['Host']
          @Db = params['Db']
          @Type = params['Type']
          @TableName = params['TableName']
        end
      end

      # DescribeAccountPrivileges返回参数结构体
      class DescribeAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
        # @param Privileges: 权限列表，示例值为：["select","update","delete","create","drop","references","index","alter","show_db","create_tmp_table","lock_tables","execute","create_view","show_view","create_routine","alter_routine","event","trigger"]
        # @type Privileges: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Privileges, :RequestId

        def initialize(privileges=nil, requestid=nil)
          @Privileges = privileges
          @RequestId = requestid
        end

        def deserialize(params)
          @Privileges = params['Privileges']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AccountNames: 需要过滤的账户列表
        # @type AccountNames: Array
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # 该参数已废用
        # @type DbType: String
        # @param Hosts: 需要过滤的账户列表
        # @type Hosts: Array
        # @param Limit: 限制量
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param AccountRegular: 模糊匹配关键字(同时匹配AccountName和AccountHost，返回并集结果，支持正则)
        # @type AccountRegular: String

        attr_accessor :ClusterId, :AccountNames, :DbType, :Hosts, :Limit, :Offset, :AccountRegular

        def initialize(clusterid=nil, accountnames=nil, dbtype=nil, hosts=nil, limit=nil, offset=nil, accountregular=nil)
          @ClusterId = clusterid
          @AccountNames = accountnames
          @DbType = dbtype
          @Hosts = hosts
          @Limit = limit
          @Offset = offset
          @AccountRegular = accountregular
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @AccountNames = params['AccountNames']
          @DbType = params['DbType']
          @Hosts = params['Hosts']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @AccountRegular = params['AccountRegular']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param AccountSet: 数据库账号列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountSet: Array
        # @param TotalCount: 账号总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccountSet, :TotalCount, :RequestId

        def initialize(accountset=nil, totalcount=nil, requestid=nil)
          @AccountSet = accountset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AccountSet'].nil?
            @AccountSet = []
            params['AccountSet'].each do |i|
              account_tmp = Account.new
              account_tmp.deserialize(i)
              @AccountSet << account_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditLogFiles请求参数结构体
      class DescribeAuditLogFilesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
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
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 开始时间，格式为："2017-07-12 10:29:20"。
        # @type StartTime: String
        # @param EndTime: 结束时间，格式为："2017-07-12 10:29:20"。
        # @type EndTime: String
        # @param Order: 排序方式。支持值包括："ASC" - 升序，"DESC" - 降序。
        # @type Order: String
        # @param OrderBy: 排序字段。支持值包括：
        # "timestamp" - 时间戳；
        # "affectRows" - 影响行数；
        # "execTime" - 执行时间。
        # @type OrderBy: String
        # @param Filter: 已废弃。
        # @type Filter: :class:`Tencentcloud::Cynosdb.v20190107.models.AuditLogFilter`
        # @param Limit: 分页参数，单次返回的数据条数。默认值为100，最大值为100。
        # @type Limit: Integer
        # @param Offset: 分页偏移量。
        # @type Offset: Integer
        # @param LogFilter: 过滤条件。多个值之前是且的关系。
        # @type LogFilter: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :Order, :OrderBy, :Filter, :Limit, :Offset, :LogFilter

        def initialize(instanceid=nil, starttime=nil, endtime=nil, order=nil, orderby=nil, filter=nil, limit=nil, offset=nil, logfilter=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @OrderBy = orderby
          @Filter = filter
          @Limit = limit
          @Offset = offset
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
          @Limit = params['Limit']
          @Offset = params['Offset']
          unless params['LogFilter'].nil?
            @LogFilter = []
            params['LogFilter'].each do |i|
              instanceauditlogfilter_tmp = InstanceAuditLogFilter.new
              instanceauditlogfilter_tmp.deserialize(i)
              @LogFilter << instanceauditlogfilter_tmp
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAuditRuleTemplates请求参数结构体
      class DescribeAuditRuleTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param RuleTemplateIds: 规则模版ID。
        # @type RuleTemplateIds: Array
        # @param RuleTemplateNames: 规则模版名称
        # @type RuleTemplateNames: Array
        # @param Limit: 单次请求返回的数量。默认值20。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为 0。
        # @type Offset: Integer

        attr_accessor :RuleTemplateIds, :RuleTemplateNames, :Limit, :Offset

        def initialize(ruletemplateids=nil, ruletemplatenames=nil, limit=nil, offset=nil)
          @RuleTemplateIds = ruletemplateids
          @RuleTemplateNames = ruletemplatenames
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @RuleTemplateIds = params['RuleTemplateIds']
          @RuleTemplateNames = params['RuleTemplateNames']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAuditRuleTemplates返回参数结构体
      class DescribeAuditRuleTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param Items: 规则模版详细信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeAuditRuleWithInstanceIds请求参数结构体
      class DescribeAuditRuleWithInstanceIdsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID。目前仅支持单个实例的查询。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeAuditRuleWithInstanceIds返回参数结构体
      class DescribeAuditRuleWithInstanceIdsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 无
        # @type TotalCount: Integer
        # @param Items: 实例审计规则信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              instanceauditrule_tmp = InstanceAuditRule.new
              instanceauditrule_tmp.deserialize(i)
              @Items << instanceauditrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupConfig请求参数结构体
      class DescribeBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeBackupConfig返回参数结构体
      class DescribeBackupConfigResponse < TencentCloud::Common::AbstractModel
        # @param BackupTimeBeg: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeBeg: Integer
        # @param BackupTimeEnd: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeEnd: Integer
        # @param ReserveDuration: 表示保留备份时长, 单位秒，超过该时间将被清理, 七天表示为3600*24*7=604800
        # @type ReserveDuration: Integer
        # @param BackupFreq: 备份频率，长度为7的数组，分别对应周一到周日的备份方式，full-全量备份，increment-增量备份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupFreq: Array
        # @param BackupType: 备份方式，logic-逻辑备份，snapshot-快照备份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupTimeBeg, :BackupTimeEnd, :ReserveDuration, :BackupFreq, :BackupType, :RequestId

        def initialize(backuptimebeg=nil, backuptimeend=nil, reserveduration=nil, backupfreq=nil, backuptype=nil, requestid=nil)
          @BackupTimeBeg = backuptimebeg
          @BackupTimeEnd = backuptimeend
          @ReserveDuration = reserveduration
          @BackupFreq = backupfreq
          @BackupType = backuptype
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupTimeBeg = params['BackupTimeBeg']
          @BackupTimeEnd = params['BackupTimeEnd']
          @ReserveDuration = params['ReserveDuration']
          @BackupFreq = params['BackupFreq']
          @BackupType = params['BackupType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupDownloadUrl请求参数结构体
      class DescribeBackupDownloadUrlRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BackupId: 备份ID
        # @type BackupId: Integer

        attr_accessor :ClusterId, :BackupId

        def initialize(clusterid=nil, backupid=nil)
          @ClusterId = clusterid
          @BackupId = backupid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BackupId = params['BackupId']
        end
      end

      # DescribeBackupDownloadUrl返回参数结构体
      class DescribeBackupDownloadUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 备份下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupList请求参数结构体
      class DescribeBackupListRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Limit: 备份文件列表大小，取值范围(0,100]
        # @type Limit: Integer
        # @param Offset: 备份文件列表偏移，取值范围[0,INF)
        # @type Offset: Integer
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String
        # @param BackupIds: 备份ID
        # @type BackupIds: Array
        # @param BackupType: 备份类型，可选值：snapshot，快照备份； logic，逻辑备份
        # @type BackupType: String
        # @param BackupMethod: 备份方式，可选值：auto，自动备份；manual，手动备
        # @type BackupMethod: String
        # @param SnapShotType: 快照类型，可选值：full，全量；increment，增量
        # @type SnapShotType: String
        # @param StartTime: 备份开始时间
        # @type StartTime: String
        # @param EndTime: 备份结束时间
        # @type EndTime: String
        # @param FileNames: 备份文件名，模糊查询
        # @type FileNames: Array
        # @param BackupNames: 备份备注名，模糊查询
        # @type BackupNames: Array
        # @param SnapshotIdList: 快照备份Id列表
        # @type SnapshotIdList: Array

        attr_accessor :ClusterId, :Limit, :Offset, :DbType, :BackupIds, :BackupType, :BackupMethod, :SnapShotType, :StartTime, :EndTime, :FileNames, :BackupNames, :SnapshotIdList

        def initialize(clusterid=nil, limit=nil, offset=nil, dbtype=nil, backupids=nil, backuptype=nil, backupmethod=nil, snapshottype=nil, starttime=nil, endtime=nil, filenames=nil, backupnames=nil, snapshotidlist=nil)
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
          @DbType = dbtype
          @BackupIds = backupids
          @BackupType = backuptype
          @BackupMethod = backupmethod
          @SnapShotType = snapshottype
          @StartTime = starttime
          @EndTime = endtime
          @FileNames = filenames
          @BackupNames = backupnames
          @SnapshotIdList = snapshotidlist
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @DbType = params['DbType']
          @BackupIds = params['BackupIds']
          @BackupType = params['BackupType']
          @BackupMethod = params['BackupMethod']
          @SnapShotType = params['SnapShotType']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @FileNames = params['FileNames']
          @BackupNames = params['BackupNames']
          @SnapshotIdList = params['SnapshotIdList']
        end
      end

      # DescribeBackupList返回参数结构体
      class DescribeBackupListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总共备份文件个数
        # @type TotalCount: Integer
        # @param BackupList: 备份文件列表
        # @type BackupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupList, :RequestId

        def initialize(totalcount=nil, backuplist=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupList = backuplist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupList'].nil?
            @BackupList = []
            params['BackupList'].each do |i|
              backupfileinfo_tmp = BackupFileInfo.new
              backupfileinfo_tmp.deserialize(i)
              @BackupList << backupfileinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBinlogDownloadUrl请求参数结构体
      class DescribeBinlogDownloadUrlRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BinlogId: Binlog文件ID
        # @type BinlogId: Integer

        attr_accessor :ClusterId, :BinlogId

        def initialize(clusterid=nil, binlogid=nil)
          @ClusterId = clusterid
          @BinlogId = binlogid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BinlogId = params['BinlogId']
        end
      end

      # DescribeBinlogDownloadUrl返回参数结构体
      class DescribeBinlogDownloadUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownloadUrl: 下载地址
        # @type DownloadUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadUrl, :RequestId

        def initialize(downloadurl=nil, requestid=nil)
          @DownloadUrl = downloadurl
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadUrl = params['DownloadUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBinlogSaveDays请求参数结构体
      class DescribeBinlogSaveDaysRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeBinlogSaveDays返回参数结构体
      class DescribeBinlogSaveDaysResponse < TencentCloud::Common::AbstractModel
        # @param BinlogSaveDays: Binlog保留天数
        # @type BinlogSaveDays: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BinlogSaveDays, :RequestId

        def initialize(binlogsavedays=nil, requestid=nil)
          @BinlogSaveDays = binlogsavedays
          @RequestId = requestid
        end

        def deserialize(params)
          @BinlogSaveDays = params['BinlogSaveDays']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBinlogs请求参数结构体
      class DescribeBinlogsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制条数
        # @type Limit: Integer

        attr_accessor :ClusterId, :StartTime, :EndTime, :Offset, :Limit

        def initialize(clusterid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @ClusterId = clusterid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeBinlogs返回参数结构体
      class DescribeBinlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总条数
        # @type TotalCount: Integer
        # @param Binlogs: Binlog列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Binlogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Binlogs, :RequestId

        def initialize(totalcount=nil, binlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @Binlogs = binlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Binlogs'].nil?
            @Binlogs = []
            params['Binlogs'].each do |i|
              binlogitem_tmp = BinlogItem.new
              binlogitem_tmp.deserialize(i)
              @Binlogs << binlogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterDetailDatabases请求参数结构体
      class DescribeClusterDetailDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20,最大100
        # @type Limit: Integer
        # @param DbName: 数据库名称
        # @type DbName: String

        attr_accessor :ClusterId, :Offset, :Limit, :DbName

        def initialize(clusterid=nil, offset=nil, limit=nil, dbname=nil)
          @ClusterId = clusterid
          @Offset = offset
          @Limit = limit
          @DbName = dbname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DbName = params['DbName']
        end
      end

      # DescribeClusterDetailDatabases返回参数结构体
      class DescribeClusterDetailDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param DbInfos: 数据库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbInfos: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DbInfos, :TotalCount, :RequestId

        def initialize(dbinfos=nil, totalcount=nil, requestid=nil)
          @DbInfos = dbinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DbInfos'].nil?
            @DbInfos = []
            params['DbInfos'].each do |i|
              dbinfo_tmp = DbInfo.new
              dbinfo_tmp.deserialize(i)
              @DbInfos << dbinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterDetail请求参数结构体
      class DescribeClusterDetailRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterDetail返回参数结构体
      class DescribeClusterDetailResponse < TencentCloud::Common::AbstractModel
        # @param Detail: 集群详细信息
        # @type Detail: :class:`Tencentcloud::Cynosdb.v20190107.models.CynosdbClusterDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Detail, :RequestId

        def initialize(detail=nil, requestid=nil)
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Detail'].nil?
            @Detail = CynosdbClusterDetail.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterInstanceGrps请求参数结构体
      class DescribeClusterInstanceGrpsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterInstanceGrps返回参数结构体
      class DescribeClusterInstanceGrpsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例组个数
        # @type TotalCount: Integer
        # @param InstanceGrpInfoList: 实例组列表
        # @type InstanceGrpInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceGrpInfoList, :RequestId

        def initialize(totalcount=nil, instancegrpinfolist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceGrpInfoList = instancegrpinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceGrpInfoList'].nil?
            @InstanceGrpInfoList = []
            params['InstanceGrpInfoList'].each do |i|
              cynosdbinstancegrp_tmp = CynosdbInstanceGrp.new
              cynosdbinstancegrp_tmp.deserialize(i)
              @InstanceGrpInfoList << cynosdbinstancegrp_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterParamLogs请求参数结构体
      class DescribeClusterParamLogsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 实例ID列表，用来记录具体操作哪些实例
        # @type InstanceIds: Array
        # @param OrderBy: 排序字段，定义在回返结果的基于哪个字段进行排序
        # @type OrderBy: String
        # @param OrderByType: 定义具体的排序规则，限定为desc,asc,DESC,ASC其中之一
        # @type OrderByType: String
        # @param Limit: 返回数量，默认为 20，取值范围为(0,100]
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0，取值范围为[0,INF)
        # @type Offset: Integer

        attr_accessor :ClusterId, :InstanceIds, :OrderBy, :OrderByType, :Limit, :Offset

        def initialize(clusterid=nil, instanceids=nil, orderby=nil, orderbytype=nil, limit=nil, offset=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeClusterParamLogs返回参数结构体
      class DescribeClusterParamLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数
        # @type TotalCount: Integer
        # @param ClusterParamLogs: 参数修改记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterParamLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterParamLogs, :RequestId

        def initialize(totalcount=nil, clusterparamlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterParamLogs = clusterparamlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterParamLogs'].nil?
            @ClusterParamLogs = []
            params['ClusterParamLogs'].each do |i|
              clusterparammodifylog_tmp = ClusterParamModifyLog.new
              clusterparammodifylog_tmp.deserialize(i)
              @ClusterParamLogs << clusterparammodifylog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterParams请求参数结构体
      class DescribeClusterParamsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ParamName: 参数名字
        # @type ParamName: String

        attr_accessor :ClusterId, :ParamName

        def initialize(clusterid=nil, paramname=nil)
          @ClusterId = clusterid
          @ParamName = paramname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ParamName = params['ParamName']
        end
      end

      # DescribeClusterParams返回参数结构体
      class DescribeClusterParamsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 参数个数
        # @type TotalCount: Integer
        # @param Items: 实例参数列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              paraminfo_tmp = ParamInfo.new
              paraminfo_tmp.deserialize(i)
              @Items << paraminfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterPasswordComplexity请求参数结构体
      class DescribeClusterPasswordComplexityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeClusterPasswordComplexity返回参数结构体
      class DescribeClusterPasswordComplexityResponse < TencentCloud::Common::AbstractModel
        # @param ValidatePasswordDictionary: 数据字典参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidatePasswordDictionary: :class:`Tencentcloud::Cynosdb.v20190107.models.ParamInfo`
        # @param ValidatePasswordLength: 密码长度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidatePasswordLength: :class:`Tencentcloud::Cynosdb.v20190107.models.ParamInfo`
        # @param ValidatePasswordMixedCaseCount: 大小写敏感字符个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidatePasswordMixedCaseCount: :class:`Tencentcloud::Cynosdb.v20190107.models.ParamInfo`
        # @param ValidatePasswordNumberCount: 数字个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidatePasswordNumberCount: :class:`Tencentcloud::Cynosdb.v20190107.models.ParamInfo`
        # @param ValidatePasswordPolicy: 密码等级
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidatePasswordPolicy: :class:`Tencentcloud::Cynosdb.v20190107.models.ParamInfo`
        # @param ValidatePasswordSpecialCharCount: 特殊字符个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidatePasswordSpecialCharCount: :class:`Tencentcloud::Cynosdb.v20190107.models.ParamInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ValidatePasswordDictionary, :ValidatePasswordLength, :ValidatePasswordMixedCaseCount, :ValidatePasswordNumberCount, :ValidatePasswordPolicy, :ValidatePasswordSpecialCharCount, :RequestId

        def initialize(validatepassworddictionary=nil, validatepasswordlength=nil, validatepasswordmixedcasecount=nil, validatepasswordnumbercount=nil, validatepasswordpolicy=nil, validatepasswordspecialcharcount=nil, requestid=nil)
          @ValidatePasswordDictionary = validatepassworddictionary
          @ValidatePasswordLength = validatepasswordlength
          @ValidatePasswordMixedCaseCount = validatepasswordmixedcasecount
          @ValidatePasswordNumberCount = validatepasswordnumbercount
          @ValidatePasswordPolicy = validatepasswordpolicy
          @ValidatePasswordSpecialCharCount = validatepasswordspecialcharcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ValidatePasswordDictionary'].nil?
            @ValidatePasswordDictionary = ParamInfo.new
            @ValidatePasswordDictionary.deserialize(params['ValidatePasswordDictionary'])
          end
          unless params['ValidatePasswordLength'].nil?
            @ValidatePasswordLength = ParamInfo.new
            @ValidatePasswordLength.deserialize(params['ValidatePasswordLength'])
          end
          unless params['ValidatePasswordMixedCaseCount'].nil?
            @ValidatePasswordMixedCaseCount = ParamInfo.new
            @ValidatePasswordMixedCaseCount.deserialize(params['ValidatePasswordMixedCaseCount'])
          end
          unless params['ValidatePasswordNumberCount'].nil?
            @ValidatePasswordNumberCount = ParamInfo.new
            @ValidatePasswordNumberCount.deserialize(params['ValidatePasswordNumberCount'])
          end
          unless params['ValidatePasswordPolicy'].nil?
            @ValidatePasswordPolicy = ParamInfo.new
            @ValidatePasswordPolicy.deserialize(params['ValidatePasswordPolicy'])
          end
          unless params['ValidatePasswordSpecialCharCount'].nil?
            @ValidatePasswordSpecialCharCount = ParamInfo.new
            @ValidatePasswordSpecialCharCount.deserialize(params['ValidatePasswordSpecialCharCount'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusters请求参数结构体
      class DescribeClustersRequest < TencentCloud::Common::AbstractModel
        # @param DbType: 引擎类型：目前支持“MYSQL”， “POSTGRESQL”
        # @type DbType: String
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，取值范围：
        # <li> CREATETIME：创建时间</li>
        # <li> PERIODENDTIME：过期时间</li>
        # @type OrderBy: String
        # @param OrderByType: 排序类型，取值范围：
        # <li> ASC：升序排序 </li>
        # <li> DESC：降序排序 </li>
        # @type OrderByType: String
        # @param Filters: 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Filters: Array

        attr_accessor :DbType, :Limit, :Offset, :OrderBy, :OrderByType, :Filters

        def initialize(dbtype=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, filters=nil)
          @DbType = dbtype
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Filters = filters
        end

        def deserialize(params)
          @DbType = params['DbType']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filters << queryfilter_tmp
            end
          end
        end
      end

      # DescribeClusters返回参数结构体
      class DescribeClustersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 集群数
        # @type TotalCount: Integer
        # @param ClusterSet: 集群列表
        # @type ClusterSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterSet, :RequestId

        def initialize(totalcount=nil, clusterset=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterSet = clusterset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterSet'].nil?
            @ClusterSet = []
            params['ClusterSet'].each do |i|
              cynosdbcluster_tmp = CynosdbCluster.new
              cynosdbcluster_tmp.deserialize(i)
              @ClusterSet << cynosdbcluster_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBSecurityGroups请求参数结构体
      class DescribeDBSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例组ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBSecurityGroups返回参数结构体
      class DescribeDBSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组信息
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeFlow请求参数结构体
      class DescribeFlowRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer

        attr_accessor :FlowId

        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # DescribeFlow返回参数结构体
      class DescribeFlowResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务流状态。0-成功，1-失败，2-处理中
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceDetail请求参数结构体
      class DescribeInstanceDetailRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceDetail返回参数结构体
      class DescribeInstanceDetailResponse < TencentCloud::Common::AbstractModel
        # @param Detail: 实例详情
        # @type Detail: :class:`Tencentcloud::Cynosdb.v20190107.models.CynosdbInstanceDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Detail, :RequestId

        def initialize(detail=nil, requestid=nil)
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Detail'].nil?
            @Detail = CynosdbInstanceDetail.new
            @Detail.deserialize(params['Detail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceErrorLogs请求参数结构体
      class DescribeInstanceErrorLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Limit: 日志条数限制
        # @type Limit: Integer
        # @param Offset: 日志条数偏移量
        # @type Offset: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param OrderBy: 排序字段，有Timestamp枚举值
        # @type OrderBy: String
        # @param OrderByType: 排序类型，有ASC,DESC枚举值
        # @type OrderByType: String
        # @param LogLevels: 日志等级，有error、warning、note三种，支持多个等级同时搜索
        # @type LogLevels: Array
        # @param KeyWords: 关键字，支持模糊搜索
        # @type KeyWords: Array

        attr_accessor :InstanceId, :Limit, :Offset, :StartTime, :EndTime, :OrderBy, :OrderByType, :LogLevels, :KeyWords

        def initialize(instanceid=nil, limit=nil, offset=nil, starttime=nil, endtime=nil, orderby=nil, orderbytype=nil, loglevels=nil, keywords=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @StartTime = starttime
          @EndTime = endtime
          @OrderBy = orderby
          @OrderByType = orderbytype
          @LogLevels = loglevels
          @KeyWords = keywords
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @LogLevels = params['LogLevels']
          @KeyWords = params['KeyWords']
        end
      end

      # DescribeInstanceErrorLogs返回参数结构体
      class DescribeInstanceErrorLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 日志条数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ErrorLogs: 错误日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ErrorLogs, :RequestId

        def initialize(totalcount=nil, errorlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @ErrorLogs = errorlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ErrorLogs'].nil?
            @ErrorLogs = []
            params['ErrorLogs'].each do |i|
              cynosdberrorlogitem_tmp = CynosdbErrorLogItem.new
              cynosdberrorlogitem_tmp.deserialize(i)
              @ErrorLogs << cynosdberrorlogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParams请求参数结构体
      class DescribeInstanceParamsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 实例ID，支持批量查询
        # @type InstanceIds: Array
        # @param ParamKeyword: 参数名搜索条件，支持模糊匹配
        # @type ParamKeyword: String

        attr_accessor :ClusterId, :InstanceIds, :ParamKeyword

        def initialize(clusterid=nil, instanceids=nil, paramkeyword=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @ParamKeyword = paramkeyword
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          @ParamKeyword = params['ParamKeyword']
        end
      end

      # DescribeInstanceParams返回参数结构体
      class DescribeInstanceParamsResponse < TencentCloud::Common::AbstractModel
        # @param Items: 实例参数列表
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              instanceparamitem_tmp = InstanceParamItem.new
              instanceparamitem_tmp.deserialize(i)
              @Items << instanceparamitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceSlowQueries请求参数结构体
      class DescribeInstanceSlowQueriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 事务开始最早时间
        # @type StartTime: String
        # @param EndTime: 事务开始最晚时间
        # @type EndTime: String
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Username: 用户名
        # @type Username: String
        # @param Host: 客户端host
        # @type Host: String
        # @param Database: 数据库名
        # @type Database: String
        # @param OrderBy: 排序字段，可选值：QueryTime,LockTime,RowsExamined,RowsSent
        # @type OrderBy: String
        # @param OrderByType: 排序类型，可选值：asc,desc
        # @type OrderByType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset, :Username, :Host, :Database, :OrderBy, :OrderByType

        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, username=nil, host=nil, database=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Username = username
          @Host = host
          @Database = database
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Username = params['Username']
          @Host = params['Host']
          @Database = params['Database']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeInstanceSlowQueries返回参数结构体
      class DescribeInstanceSlowQueriesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总条数
        # @type TotalCount: Integer
        # @param SlowQueries: 慢查询记录
        # @type SlowQueries: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SlowQueries, :RequestId

        def initialize(totalcount=nil, slowqueries=nil, requestid=nil)
          @TotalCount = totalcount
          @SlowQueries = slowqueries
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SlowQueries'].nil?
            @SlowQueries = []
            params['SlowQueries'].each do |i|
              slowqueriesitem_tmp = SlowQueriesItem.new
              slowqueriesitem_tmp.deserialize(i)
              @SlowQueries << slowqueriesitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceSpecs请求参数结构体
      class DescribeInstanceSpecsRequest < TencentCloud::Common::AbstractModel
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String
        # @param IncludeZoneStocks: 是否需要返回可用区信息
        # @type IncludeZoneStocks: Boolean

        attr_accessor :DbType, :IncludeZoneStocks

        def initialize(dbtype=nil, includezonestocks=nil)
          @DbType = dbtype
          @IncludeZoneStocks = includezonestocks
        end

        def deserialize(params)
          @DbType = params['DbType']
          @IncludeZoneStocks = params['IncludeZoneStocks']
        end
      end

      # DescribeInstanceSpecs返回参数结构体
      class DescribeInstanceSpecsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceSpecSet: 规格信息
        # @type InstanceSpecSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceSpecSet, :RequestId

        def initialize(instancespecset=nil, requestid=nil)
          @InstanceSpecSet = instancespecset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceSpecSet'].nil?
            @InstanceSpecSet = []
            params['InstanceSpecSet'].each do |i|
              instancespec_tmp = InstanceSpec.new
              instancespec_tmp.deserialize(i)
              @InstanceSpecSet << instancespec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，取值范围：
        # <li> CREATETIME：创建时间</li>
        # <li> PERIODENDTIME：过期时间</li>
        # @type OrderBy: String
        # @param OrderByType: 排序类型，取值范围：
        # <li> ASC：升序排序 </li>
        # <li> DESC：降序排序 </li>
        # @type OrderByType: String
        # @param Filters: 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Filters: Array
        # @param DbType: 引擎类型：目前支持“MYSQL”， “POSTGRESQL”
        # @type DbType: String
        # @param Status: 实例状态, 可选值:
        # creating 创建中
        # running 运行中
        # isolating 隔离中
        # isolated 已隔离
        # activating 恢复中
        # offlining 下线中
        # offlined 已下线
        # @type Status: String
        # @param InstanceIds: 实例id列表
        # @type InstanceIds: Array

        attr_accessor :Limit, :Offset, :OrderBy, :OrderByType, :Filters, :DbType, :Status, :InstanceIds

        def initialize(limit=nil, offset=nil, orderby=nil, orderbytype=nil, filters=nil, dbtype=nil, status=nil, instanceids=nil)
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Filters = filters
          @DbType = dbtype
          @Status = status
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filters << queryfilter_tmp
            end
          end
          @DbType = params['DbType']
          @Status = params['Status']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例个数
        # @type TotalCount: Integer
        # @param InstanceSet: 实例列表
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :RequestId

        def initialize(totalcount=nil, instanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceSet'].nil?
            @InstanceSet = []
            params['InstanceSet'].each do |i|
              cynosdbinstance_tmp = CynosdbInstance.new
              cynosdbinstance_tmp.deserialize(i)
              @InstanceSet << cynosdbinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaintainPeriod请求参数结构体
      class DescribeMaintainPeriodRequest < TencentCloud::Common::AbstractModel
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

      # DescribeMaintainPeriod返回参数结构体
      class DescribeMaintainPeriodResponse < TencentCloud::Common::AbstractModel
        # @param MaintainWeekDays: 维护week days
        # @type MaintainWeekDays: Array
        # @param MaintainStartTime: 维护开始时间，单位秒
        # @type MaintainStartTime: Integer
        # @param MaintainDuration: 维护时长，单位秒
        # @type MaintainDuration: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaintainWeekDays, :MaintainStartTime, :MaintainDuration, :RequestId

        def initialize(maintainweekdays=nil, maintainstarttime=nil, maintainduration=nil, requestid=nil)
          @MaintainWeekDays = maintainweekdays
          @MaintainStartTime = maintainstarttime
          @MaintainDuration = maintainduration
          @RequestId = requestid
        end

        def deserialize(params)
          @MaintainWeekDays = params['MaintainWeekDays']
          @MaintainStartTime = params['MaintainStartTime']
          @MaintainDuration = params['MaintainDuration']
          @RequestId = params['RequestId']
        end
      end

      # DescribeParamTemplateDetail请求参数结构体
      class DescribeParamTemplateDetailRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID
        # @type TemplateId: Integer

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeParamTemplateDetail返回参数结构体
      class DescribeParamTemplateDetailResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 参数模板ID
        # @type TemplateId: Integer
        # @param TemplateName: 参数模板名称
        # @type TemplateName: String
        # @param TemplateDescription: 参数模板描述
        # @type TemplateDescription: String
        # @param EngineVersion: 引擎版本
        # @type EngineVersion: String
        # @param TotalCount: 参数总条数
        # @type TotalCount: Integer
        # @param Items: 参数列表
        # @type Items: Array
        # @param DbMode: 数据库类型，可选值：NORMAL，SERVERLESS
        # @type DbMode: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :TemplateName, :TemplateDescription, :EngineVersion, :TotalCount, :Items, :DbMode, :RequestId

        def initialize(templateid=nil, templatename=nil, templatedescription=nil, engineversion=nil, totalcount=nil, items=nil, dbmode=nil, requestid=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TemplateDescription = templatedescription
          @EngineVersion = engineversion
          @TotalCount = totalcount
          @Items = items
          @DbMode = dbmode
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @TemplateDescription = params['TemplateDescription']
          @EngineVersion = params['EngineVersion']
          @TotalCount = params['TotalCount']
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              paramdetail_tmp = ParamDetail.new
              paramdetail_tmp.deserialize(i)
              @Items << paramdetail_tmp
            end
          end
          @DbMode = params['DbMode']
          @RequestId = params['RequestId']
        end
      end

      # DescribeParamTemplates请求参数结构体
      class DescribeParamTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param EngineVersions: 数据库引擎版本号
        # @type EngineVersions: Array
        # @param TemplateNames: 模板名称
        # @type TemplateNames: Array
        # @param TemplateIds: 模板ID
        # @type TemplateIds: Array
        # @param DbModes: 数据库类型，可选值：NORMAL，SERVERLESS
        # @type DbModes: Array
        # @param Offset: 查询偏移量
        # @type Offset: Integer
        # @param Limit: 查询限制条数
        # @type Limit: Integer
        # @param Products: 查询的模板对应的产品类型
        # @type Products: Array
        # @param TemplateTypes: 模板类型
        # @type TemplateTypes: Array
        # @param EngineTypes: 版本类型
        # @type EngineTypes: Array
        # @param OrderBy: 返回结果的排序字段
        # @type OrderBy: String
        # @param OrderDirection: 排序方式（asc、desc）
        # @type OrderDirection: String

        attr_accessor :EngineVersions, :TemplateNames, :TemplateIds, :DbModes, :Offset, :Limit, :Products, :TemplateTypes, :EngineTypes, :OrderBy, :OrderDirection

        def initialize(engineversions=nil, templatenames=nil, templateids=nil, dbmodes=nil, offset=nil, limit=nil, products=nil, templatetypes=nil, enginetypes=nil, orderby=nil, orderdirection=nil)
          @EngineVersions = engineversions
          @TemplateNames = templatenames
          @TemplateIds = templateids
          @DbModes = dbmodes
          @Offset = offset
          @Limit = limit
          @Products = products
          @TemplateTypes = templatetypes
          @EngineTypes = enginetypes
          @OrderBy = orderby
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @EngineVersions = params['EngineVersions']
          @TemplateNames = params['TemplateNames']
          @TemplateIds = params['TemplateIds']
          @DbModes = params['DbModes']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Products = params['Products']
          @TemplateTypes = params['TemplateTypes']
          @EngineTypes = params['EngineTypes']
          @OrderBy = params['OrderBy']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeParamTemplates返回参数结构体
      class DescribeParamTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 参数模板数量
        # @type TotalCount: Integer
        # @param Items: 参数模板信息
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
              paramtemplatelistinfo_tmp = ParamTemplateListInfo.new
              paramtemplatelistinfo_tmp.deserialize(i)
              @Items << paramtemplatelistinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProjectSecurityGroups请求参数结构体
      class DescribeProjectSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Limit: 限制量
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param SearchKey: 搜索关键字
        # @type SearchKey: String

        attr_accessor :ProjectId, :Limit, :Offset, :SearchKey

        def initialize(projectid=nil, limit=nil, offset=nil, searchkey=nil)
          @ProjectId = projectid
          @Limit = limit
          @Offset = offset
          @SearchKey = searchkey
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeProjectSecurityGroups返回参数结构体
      class DescribeProjectSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 安全组详情
        # @type Groups: Array
        # @param Total: 总数量
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :Total, :RequestId

        def initialize(groups=nil, total=nil, requestid=nil)
          @Groups = groups
          @Total = total
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
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxies请求参数结构体
      class DescribeProxiesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，取值范围：
        # <li> CREATETIME：创建时间</li>
        # <li> PERIODENDTIME：过期时间</li>
        # @type OrderBy: String
        # @param OrderByType: 排序类型，取值范围：
        # <li> ASC：升序排序 </li>
        # <li> DESC：降序排序 </li>
        # @type OrderByType: String
        # @param Filters: 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Filters: Array

        attr_accessor :ClusterId, :Limit, :Offset, :OrderBy, :OrderByType, :Filters

        def initialize(clusterid=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, filters=nil)
          @ClusterId = clusterid
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Filters = filters
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              queryparamfilter_tmp = QueryParamFilter.new
              queryparamfilter_tmp.deserialize(i)
              @Filters << queryparamfilter_tmp
            end
          end
        end
      end

      # DescribeProxies返回参数结构体
      class DescribeProxiesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据库代理组数
        # @type TotalCount: Integer
        # @param ProxyGroupInfos: 数据库代理组列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyGroupInfos: Array
        # @param ProxyNodeInfos: 数据库代理节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyNodeInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProxyGroupInfos, :ProxyNodeInfos, :RequestId

        def initialize(totalcount=nil, proxygroupinfos=nil, proxynodeinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @ProxyGroupInfos = proxygroupinfos
          @ProxyNodeInfos = proxynodeinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ProxyGroupInfos'].nil?
            @ProxyGroupInfos = []
            params['ProxyGroupInfos'].each do |i|
              proxygroupinfo_tmp = ProxyGroupInfo.new
              proxygroupinfo_tmp.deserialize(i)
              @ProxyGroupInfos << proxygroupinfo_tmp
            end
          end
          unless params['ProxyNodeInfos'].nil?
            @ProxyNodeInfos = []
            params['ProxyNodeInfos'].each do |i|
              proxynodeinfo_tmp = ProxyNodeInfo.new
              proxynodeinfo_tmp.deserialize(i)
              @ProxyNodeInfos << proxynodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxyNodes请求参数结构体
      class DescribeProxyNodesRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为 20，最大值为 100
        # @type Limit: Integer
        # @param Offset: 记录偏移量，默认值为0
        # @type Offset: Integer
        # @param OrderBy: 排序字段，取值范围：
        # <li> CREATETIME：创建时间</li>
        # <li> PERIODENDTIME：过期时间</li>
        # @type OrderBy: String
        # @param OrderByType: 排序类型，取值范围：
        # <li> ASC：升序排序 </li>
        # <li> DESC：降序排序 </li>
        # @type OrderByType: String
        # @param Filters: 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Filters: Array

        attr_accessor :Limit, :Offset, :OrderBy, :OrderByType, :Filters

        def initialize(limit=nil, offset=nil, orderby=nil, orderbytype=nil, filters=nil)
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Filters = filters
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              queryfilter_tmp = QueryFilter.new
              queryfilter_tmp.deserialize(i)
              @Filters << queryfilter_tmp
            end
          end
        end
      end

      # DescribeProxyNodes返回参数结构体
      class DescribeProxyNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据库代理节点总数
        # @type TotalCount: Integer
        # @param ProxyNodeInfos: 数据库代理节点列表
        # @type ProxyNodeInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProxyNodeInfos, :RequestId

        def initialize(totalcount=nil, proxynodeinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @ProxyNodeInfos = proxynodeinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ProxyNodeInfos'].nil?
            @ProxyNodeInfos = []
            params['ProxyNodeInfos'].each do |i|
              proxynodeinfo_tmp = ProxyNodeInfo.new
              proxynodeinfo_tmp.deserialize(i)
              @ProxyNodeInfos << proxynodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxySpecs请求参数结构体
      class DescribeProxySpecsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeProxySpecs返回参数结构体
      class DescribeProxySpecsResponse < TencentCloud::Common::AbstractModel
        # @param ProxySpecs: 数据库代理规格列表
        # @type ProxySpecs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxySpecs, :RequestId

        def initialize(proxyspecs=nil, requestid=nil)
          @ProxySpecs = proxyspecs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProxySpecs'].nil?
            @ProxySpecs = []
            params['ProxySpecs'].each do |i|
              proxyspec_tmp = ProxySpec.new
              proxyspec_tmp.deserialize(i)
              @ProxySpecs << proxyspec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcePackageDetail请求参数结构体
      class DescribeResourcePackageDetailRequest < TencentCloud::Common::AbstractModel
        # @param PackageId: 资源包唯一ID
        # @type PackageId: String
        # @param ClusterIds: 实例ID
        # @type ClusterIds: Array
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param Offset: 偏移量
        # @type Offset: String
        # @param Limit: 限制
        # @type Limit: String

        attr_accessor :PackageId, :ClusterIds, :StartTime, :EndTime, :Offset, :Limit

        def initialize(packageid=nil, clusterids=nil, starttime=nil, endtime=nil, offset=nil, limit=nil)
          @PackageId = packageid
          @ClusterIds = clusterids
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @ClusterIds = params['ClusterIds']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeResourcePackageDetail返回参数结构体
      class DescribeResourcePackageDetailResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总使用明细数
        # @type Total: Integer
        # @param Detail: 资源包明细说明
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Detail, :RequestId

        def initialize(total=nil, detail=nil, requestid=nil)
          @Total = total
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              packagedetail_tmp = PackageDetail.new
              packagedetail_tmp.deserialize(i)
              @Detail << packagedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcePackageList请求参数结构体
      class DescribeResourcePackageListRequest < TencentCloud::Common::AbstractModel
        # @param PackageId: 资源包唯一ID
        # @type PackageId: Array
        # @param PackageName: 资源包名称
        # @type PackageName: Array
        # @param PackageType: 资源包类型
        # CCU-计算资源包，DISK-存储资源包
        # @type PackageType: Array
        # @param PackageRegion: 资源包使用地域
        # china-中国内地通用，overseas-港澳台及海外通用
        # @type PackageRegion: Array
        # @param Status: 资源包状态
        # creating-创建中；
        # using-使用中；
        # expired-已过期；
        # normal_finish-使用完；
        # apply_refund-申请退费中；
        # refund-已退费。
        # @type Status: Array
        # @param OrderBy: 排序条件，支持排序条件:startTime-生效时间，
        # expireTime-过期时间，packageUsedSpec-使用容量，packageTotalSpec-总存储量。
        # 按照数组顺序排列；
        # @type OrderBy: Array
        # @param OrderDirection: 排序方式，DESC-降序，ASC-升序
        # @type OrderDirection: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制
        # @type Limit: Integer

        attr_accessor :PackageId, :PackageName, :PackageType, :PackageRegion, :Status, :OrderBy, :OrderDirection, :Offset, :Limit

        def initialize(packageid=nil, packagename=nil, packagetype=nil, packageregion=nil, status=nil, orderby=nil, orderdirection=nil, offset=nil, limit=nil)
          @PackageId = packageid
          @PackageName = packagename
          @PackageType = packagetype
          @PackageRegion = packageregion
          @Status = status
          @OrderBy = orderby
          @OrderDirection = orderdirection
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          @PackageType = params['PackageType']
          @PackageRegion = params['PackageRegion']
          @Status = params['Status']
          @OrderBy = params['OrderBy']
          @OrderDirection = params['OrderDirection']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeResourcePackageList返回参数结构体
      class DescribeResourcePackageListResponse < TencentCloud::Common::AbstractModel
        # @param Total: 总配置数
        # @type Total: Integer
        # @param Detail: 资源包明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Detail, :RequestId

        def initialize(total=nil, detail=nil, requestid=nil)
          @Total = total
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              package_tmp = Package.new
              package_tmp.deserialize(i)
              @Detail << package_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcePackageSaleSpec请求参数结构体
      class DescribeResourcePackageSaleSpecRequest < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param PackageRegion: 资源包使用地域
        # china-中国内地通用，overseas-港澳台及海外通用
        # @type PackageRegion: String
        # @param PackageType: 资源包类型
        # CCU-计算资源包
        # DISK-存储资源包
        # @type PackageType: String
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限制
        # @type Limit: Integer

        attr_accessor :InstanceType, :PackageRegion, :PackageType, :Offset, :Limit

        def initialize(instancetype=nil, packageregion=nil, packagetype=nil, offset=nil, limit=nil)
          @InstanceType = instancetype
          @PackageRegion = packageregion
          @PackageType = packagetype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @PackageRegion = params['PackageRegion']
          @PackageType = params['PackageType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeResourcePackageSaleSpec返回参数结构体
      class DescribeResourcePackageSaleSpecResponse < TencentCloud::Common::AbstractModel
        # @param Total: 可售卖资源包规格总数
        # @type Total: Integer
        # @param Detail: 资源包明细说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :Detail, :RequestId

        def initialize(total=nil, detail=nil, requestid=nil)
          @Total = total
          @Detail = detail
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              salepackagespec_tmp = SalePackageSpec.new
              salepackagespec_tmp.deserialize(i)
              @Detail << salepackagespec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcesByDealName请求参数结构体
      class DescribeResourcesByDealNameRequest < TencentCloud::Common::AbstractModel
        # @param DealName: 计费订单ID（如果计费还没回调业务发货，可能出现错误码InvalidParameterValue.DealNameNotFound，这种情况需要业务重试DescribeResourcesByDealName接口直到成功）
        # @type DealName: String
        # @param DealNames: 计费订单ID列表，可以一次查询若干条订单ID对应资源信息（如果计费还没回调业务发货，可能出现错误码InvalidParameterValue.DealNameNotFound，这种情况需要业务重试DescribeResourcesByDealName接口直到成功）
        # @type DealNames: Array

        attr_accessor :DealName, :DealNames

        def initialize(dealname=nil, dealnames=nil)
          @DealName = dealname
          @DealNames = dealnames
        end

        def deserialize(params)
          @DealName = params['DealName']
          @DealNames = params['DealNames']
        end
      end

      # DescribeResourcesByDealName返回参数结构体
      class DescribeResourcesByDealNameResponse < TencentCloud::Common::AbstractModel
        # @param BillingResourceInfos: 计费资源id信息数组
        # @type BillingResourceInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BillingResourceInfos, :RequestId

        def initialize(billingresourceinfos=nil, requestid=nil)
          @BillingResourceInfos = billingresourceinfos
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BillingResourceInfos'].nil?
            @BillingResourceInfos = []
            params['BillingResourceInfos'].each do |i|
              billingresourceinfo_tmp = BillingResourceInfo.new
              billingresourceinfo_tmp.deserialize(i)
              @BillingResourceInfos << billingresourceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackTimeRange请求参数结构体
      class DescribeRollbackTimeRangeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # DescribeRollbackTimeRange返回参数结构体
      class DescribeRollbackTimeRangeResponse < TencentCloud::Common::AbstractModel
        # @param TimeRangeStart: 有效回归时间范围开始时间点（已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeRangeStart: String
        # @param TimeRangeEnd: 有效回归时间范围结束时间点（已废弃）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeRangeEnd: String
        # @param RollbackTimeRanges: 可回档时间范围
        # @type RollbackTimeRanges: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TimeRangeStart, :TimeRangeEnd, :RollbackTimeRanges, :RequestId

        def initialize(timerangestart=nil, timerangeend=nil, rollbacktimeranges=nil, requestid=nil)
          @TimeRangeStart = timerangestart
          @TimeRangeEnd = timerangeend
          @RollbackTimeRanges = rollbacktimeranges
          @RequestId = requestid
        end

        def deserialize(params)
          @TimeRangeStart = params['TimeRangeStart']
          @TimeRangeEnd = params['TimeRangeEnd']
          unless params['RollbackTimeRanges'].nil?
            @RollbackTimeRanges = []
            params['RollbackTimeRanges'].each do |i|
              rollbacktimerange_tmp = RollbackTimeRange.new
              rollbacktimerange_tmp.deserialize(i)
              @RollbackTimeRanges << rollbacktimerange_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackTimeValidity请求参数结构体
      class DescribeRollbackTimeValidityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ExpectTime: 期望回滚的时间点
        # @type ExpectTime: String
        # @param ExpectTimeThresh: 回滚时间点的允许误差范围
        # @type ExpectTimeThresh: Integer

        attr_accessor :ClusterId, :ExpectTime, :ExpectTimeThresh

        def initialize(clusterid=nil, expecttime=nil, expecttimethresh=nil)
          @ClusterId = clusterid
          @ExpectTime = expecttime
          @ExpectTimeThresh = expecttimethresh
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ExpectTime = params['ExpectTime']
          @ExpectTimeThresh = params['ExpectTimeThresh']
        end
      end

      # DescribeRollbackTimeValidity返回参数结构体
      class DescribeRollbackTimeValidityResponse < TencentCloud::Common::AbstractModel
        # @param PoolId: 存储poolID
        # @type PoolId: Integer
        # @param QueryId: 回滚任务ID，后续按该时间点回滚时，需要传入
        # @type QueryId: Integer
        # @param Status: 时间点是否有效：pass，检测通过；fail，检测失败
        # @type Status: String
        # @param SuggestTime: 建议时间点，在Status为fail时，该值才有效
        # @type SuggestTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PoolId, :QueryId, :Status, :SuggestTime, :RequestId

        def initialize(poolid=nil, queryid=nil, status=nil, suggesttime=nil, requestid=nil)
          @PoolId = poolid
          @QueryId = queryid
          @Status = status
          @SuggestTime = suggesttime
          @RequestId = requestid
        end

        def deserialize(params)
          @PoolId = params['PoolId']
          @QueryId = params['QueryId']
          @Status = params['Status']
          @SuggestTime = params['SuggestTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSupportProxyVersion请求参数结构体
      class DescribeSupportProxyVersionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String

        attr_accessor :ClusterId, :ProxyGroupId

        def initialize(clusterid=nil, proxygroupid=nil)
          @ClusterId = clusterid
          @ProxyGroupId = proxygroupid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ProxyGroupId = params['ProxyGroupId']
        end
      end

      # DescribeSupportProxyVersion返回参数结构体
      class DescribeSupportProxyVersionResponse < TencentCloud::Common::AbstractModel
        # @param SupportProxyVersions: 支持的数据库代理版本集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportProxyVersions: Array
        # @param CurrentProxyVersion: 当前proxy版本号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentProxyVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SupportProxyVersions, :CurrentProxyVersion, :RequestId

        def initialize(supportproxyversions=nil, currentproxyversion=nil, requestid=nil)
          @SupportProxyVersions = supportproxyversions
          @CurrentProxyVersion = currentproxyversion
          @RequestId = requestid
        end

        def deserialize(params)
          @SupportProxyVersions = params['SupportProxyVersions']
          @CurrentProxyVersion = params['CurrentProxyVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param IncludeVirtualZones: 是否包含虚拟区
        # @type IncludeVirtualZones: Boolean
        # @param ShowPermission: 是否展示地域下所有可用区，并显示用户每个可用区权限
        # @type ShowPermission: Boolean

        attr_accessor :IncludeVirtualZones, :ShowPermission

        def initialize(includevirtualzones=nil, showpermission=nil)
          @IncludeVirtualZones = includevirtualzones
          @ShowPermission = showpermission
        end

        def deserialize(params)
          @IncludeVirtualZones = params['IncludeVirtualZones']
          @ShowPermission = params['ShowPermission']
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param RegionSet: 地域信息
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionSet, :RequestId

        def initialize(regionset=nil, requestid=nil)
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              saleregion_tmp = SaleRegion.new
              saleregion_tmp.deserialize(i)
              @RegionSet << saleregion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例组ID数组
        # @type InstanceIds: Array
        # @param SecurityGroupIds: 要修改的安全组ID列表，一个或者多个安全组ID组成的数组。
        # @type SecurityGroupIds: Array
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :InstanceIds, :SecurityGroupIds, :Zone

        def initialize(instanceids=nil, securitygroupids=nil, zone=nil)
          @InstanceIds = instanceids
          @SecurityGroupIds = securitygroupids
          @Zone = zone
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @SecurityGroupIds = params['SecurityGroupIds']
          @Zone = params['Zone']
        end
      end

      # DisassociateSecurityGroups返回参数结构体
      class DisassociateSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # 错误日志导出格式
      class ErrorLogItemExport < TencentCloud::Common::AbstractModel
        # @param Timestamp: 时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Timestamp: String
        # @param Level: 日志等级，可选值note, warning，error
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Level: String
        # @param Content: 日志内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Timestamp, :Level, :Content

        def initialize(timestamp=nil, level=nil, content=nil)
          @Timestamp = timestamp
          @Level = level
          @Content = content
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Level = params['Level']
          @Content = params['Content']
        end
      end

      # ExportInstanceErrorLogs请求参数结构体
      class ExportInstanceErrorLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 日志最早时间
        # @type StartTime: String
        # @param EndTime: 日志最晚时间
        # @type EndTime: String
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param LogLevels: 日志等级
        # @type LogLevels: Array
        # @param KeyWords: 关键字
        # @type KeyWords: Array
        # @param FileType: 文件类型，可选值：csv, original
        # @type FileType: String
        # @param OrderBy: 可选值Timestamp
        # @type OrderBy: String
        # @param OrderByType: ASC或DESC
        # @type OrderByType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset, :LogLevels, :KeyWords, :FileType, :OrderBy, :OrderByType

        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, loglevels=nil, keywords=nil, filetype=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @LogLevels = loglevels
          @KeyWords = keywords
          @FileType = filetype
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @LogLevels = params['LogLevels']
          @KeyWords = params['KeyWords']
          @FileType = params['FileType']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # ExportInstanceErrorLogs返回参数结构体
      class ExportInstanceErrorLogsResponse < TencentCloud::Common::AbstractModel
        # @param ErrorLogItems: 错误日志导出内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorLogItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorLogItems, :RequestId

        def initialize(errorlogitems=nil, requestid=nil)
          @ErrorLogItems = errorlogitems
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ErrorLogItems'].nil?
            @ErrorLogItems = []
            params['ErrorLogItems'].each do |i|
              errorlogitemexport_tmp = ErrorLogItemExport.new
              errorlogitemexport_tmp.deserialize(i)
              @ErrorLogItems << errorlogitemexport_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ExportInstanceSlowQueries请求参数结构体
      class ExportInstanceSlowQueriesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 事务开始最早时间
        # @type StartTime: String
        # @param EndTime: 事务开始最晚时间
        # @type EndTime: String
        # @param Limit: 限制条数
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Username: 用户名
        # @type Username: String
        # @param Host: 客户端host
        # @type Host: String
        # @param Database: 数据库名
        # @type Database: String
        # @param FileType: 文件类型，可选值：csv, original
        # @type FileType: String
        # @param OrderBy: 排序字段，可选值： QueryTime,LockTime,RowsExamined,RowsSent
        # @type OrderBy: String
        # @param OrderByType: 排序类型，可选值：asc,desc
        # @type OrderByType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset, :Username, :Host, :Database, :FileType, :OrderBy, :OrderByType

        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, username=nil, host=nil, database=nil, filetype=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @Username = username
          @Host = host
          @Database = database
          @FileType = filetype
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Username = params['Username']
          @Host = params['Host']
          @Database = params['Database']
          @FileType = params['FileType']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # ExportInstanceSlowQueries返回参数结构体
      class ExportInstanceSlowQueriesResponse < TencentCloud::Common::AbstractModel
        # @param FileContent: 慢查询导出内容
        # @type FileContent: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileContent, :RequestId

        def initialize(filecontent=nil, requestid=nil)
          @FileContent = filecontent
          @RequestId = requestid
        end

        def deserialize(params)
          @FileContent = params['FileContent']
          @RequestId = params['RequestId']
        end
      end

      # GrantAccountPrivileges请求参数结构体
      class GrantAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`
        # @param DbTablePrivileges: 数据库表权限码数组
        # @type DbTablePrivileges: Array
        # @param DbTables: 数据库表信息
        # @type DbTables: Array

        attr_accessor :ClusterId, :Account, :DbTablePrivileges, :DbTables

        def initialize(clusterid=nil, account=nil, dbtableprivileges=nil, dbtables=nil)
          @ClusterId = clusterid
          @Account = account
          @DbTablePrivileges = dbtableprivileges
          @DbTables = dbtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
          @DbTablePrivileges = params['DbTablePrivileges']
          unless params['DbTables'].nil?
            @DbTables = []
            params['DbTables'].each do |i|
              dbtable_tmp = DbTable.new
              dbtable_tmp.deserialize(i)
              @DbTables << dbtable_tmp
            end
          end
        end
      end

      # GrantAccountPrivileges返回参数结构体
      class GrantAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # 账号，包含accountName和host
      class InputAccount < TencentCloud::Common::AbstractModel
        # @param AccountName: 账号
        # @type AccountName: String
        # @param Host: 主机，默认‘%’
        # @type Host: String

        attr_accessor :AccountName, :Host

        def initialize(accountname=nil, host=nil)
          @AccountName = accountname
          @Host = host
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @Host = params['Host']
        end
      end

      # InquirePriceCreate请求参数结构体
      class InquirePriceCreateRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区,每个地域提供最佳实践
        # @type Zone: String
        # @param GoodsNum: 购买计算节点个数
        # @type GoodsNum: Integer
        # @param InstancePayMode: 实例购买类型，可选值为：PREPAID, POSTPAID, SERVERLESS
        # @type InstancePayMode: String
        # @param StoragePayMode: 存储购买类型，可选值为：PREPAID, POSTPAID
        # @type StoragePayMode: String
        # @param Cpu: CPU核数，PREPAID与POSTPAID实例类型必传
        # @type Cpu: Integer
        # @param Memory: 内存大小，单位G，PREPAID与POSTPAID实例类型必传
        # @type Memory: Integer
        # @param Ccu: Ccu大小，serverless类型必传
        # @type Ccu: Float
        # @param StorageLimit: 存储大小，PREPAID存储类型必传
        # @type StorageLimit: Integer
        # @param TimeSpan: 购买时长，PREPAID购买类型必传
        # @type TimeSpan: Integer
        # @param TimeUnit: 时长单位，可选值为：m,d。PREPAID购买类型必传
        # @type TimeUnit: String

        attr_accessor :Zone, :GoodsNum, :InstancePayMode, :StoragePayMode, :Cpu, :Memory, :Ccu, :StorageLimit, :TimeSpan, :TimeUnit

        def initialize(zone=nil, goodsnum=nil, instancepaymode=nil, storagepaymode=nil, cpu=nil, memory=nil, ccu=nil, storagelimit=nil, timespan=nil, timeunit=nil)
          @Zone = zone
          @GoodsNum = goodsnum
          @InstancePayMode = instancepaymode
          @StoragePayMode = storagepaymode
          @Cpu = cpu
          @Memory = memory
          @Ccu = ccu
          @StorageLimit = storagelimit
          @TimeSpan = timespan
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @Zone = params['Zone']
          @GoodsNum = params['GoodsNum']
          @InstancePayMode = params['InstancePayMode']
          @StoragePayMode = params['StoragePayMode']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @Ccu = params['Ccu']
          @StorageLimit = params['StorageLimit']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
        end
      end

      # InquirePriceCreate返回参数结构体
      class InquirePriceCreateResponse < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 实例价格
        # @type InstancePrice: :class:`Tencentcloud::Cynosdb.v20190107.models.TradePrice`
        # @param StoragePrice: 存储价格
        # @type StoragePrice: :class:`Tencentcloud::Cynosdb.v20190107.models.TradePrice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstancePrice, :StoragePrice, :RequestId

        def initialize(instanceprice=nil, storageprice=nil, requestid=nil)
          @InstancePrice = instanceprice
          @StoragePrice = storageprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = TradePrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['StoragePrice'].nil?
            @StoragePrice = TradePrice.new
            @StoragePrice.deserialize(params['StoragePrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceRenew请求参数结构体
      class InquirePriceRenewRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param TimeSpan: 购买时长,与TimeUnit组合才能生效
        # @type TimeSpan: Integer
        # @param TimeUnit: 购买时长单位, 与TimeSpan组合生效，可选:日:d,月:m
        # @type TimeUnit: String

        attr_accessor :ClusterId, :TimeSpan, :TimeUnit

        def initialize(clusterid=nil, timespan=nil, timeunit=nil)
          @ClusterId = clusterid
          @TimeSpan = timespan
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
        end
      end

      # InquirePriceRenew返回参数结构体
      class InquirePriceRenewResponse < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 实例ID列表
        # @type InstanceIds: Array
        # @param Prices: 对应的询价结果数组
        # @type Prices: Array
        # @param InstanceRealTotalPrice: 续费计算节点的总价格
        # @type InstanceRealTotalPrice: Integer
        # @param StorageRealTotalPrice: 续费存储节点的总价格
        # @type StorageRealTotalPrice: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterId, :InstanceIds, :Prices, :InstanceRealTotalPrice, :StorageRealTotalPrice, :RequestId

        def initialize(clusterid=nil, instanceids=nil, prices=nil, instancerealtotalprice=nil, storagerealtotalprice=nil, requestid=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @Prices = prices
          @InstanceRealTotalPrice = instancerealtotalprice
          @StorageRealTotalPrice = storagerealtotalprice
          @RequestId = requestid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          unless params['Prices'].nil?
            @Prices = []
            params['Prices'].each do |i|
              tradeprice_tmp = TradePrice.new
              tradeprice_tmp.deserialize(i)
              @Prices << tradeprice_tmp
            end
          end
          @InstanceRealTotalPrice = params['InstanceRealTotalPrice']
          @StorageRealTotalPrice = params['StorageRealTotalPrice']
          @RequestId = params['RequestId']
        end
      end

      # 审计日志搜索条件
      class InstanceAuditLogFilter < TencentCloud::Common::AbstractModel
        # @param Type: 过滤项。目前支持以下搜索条件：

        # 包含、不包含、包含（分词维度）、不包含（分词维度）:
        # sql - SQL详情

        # 等于、不等于、包含、不包含：
        # host - 客户端地址；
        # user - 用户名；
        # dbName - 数据库名称；

        # 等于、不等于：
        # sqlType - SQL类型；
        # errCode - 错误码；
        # threadId - 线程ID；

        # 范围搜索（时间类型统一为微妙）：
        # execTime - 执行时间；
        # lockWaitTime - 锁等待时间；
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
        # @param Value: 过滤的值。反向查询时，多个值之前是且的关系，正向查询多个值是或的关系。
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

      # 实例的审计规则详情，DescribeAuditRuleWithInstanceIds接口的出参。
      class InstanceAuditRule < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param AuditRule: 是否是规则审计。true-规则审计，false-全审计。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditRule: Boolean
        # @param AuditRuleFilters: 审计规则详情。仅当AuditRule=true时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditRuleFilters: Array

        attr_accessor :InstanceId, :AuditRule, :AuditRuleFilters

        def initialize(instanceid=nil, auditrule=nil, auditrulefilters=nil)
          @InstanceId = instanceid
          @AuditRule = auditrule
          @AuditRuleFilters = auditrulefilters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AuditRule = params['AuditRule']
          unless params['AuditRuleFilters'].nil?
            @AuditRuleFilters = []
            params['AuditRuleFilters'].each do |i|
              auditrulefilters_tmp = AuditRuleFilters.new
              auditrulefilters_tmp.deserialize(i)
              @AuditRuleFilters << auditrulefilters_tmp
            end
          end
        end
      end

      # 实例初始化配置信息
      class InstanceInitInfo < TencentCloud::Common::AbstractModel
        # @param Cpu: 实例cpu
        # @type Cpu: Integer
        # @param Memory: 实例内存
        # @type Memory: Integer
        # @param InstanceType: 实例类型 rw/ro
        # @type InstanceType: String
        # @param InstanceCount: 实例个数,范围[1,15]
        # @type InstanceCount: Integer

        attr_accessor :Cpu, :Memory, :InstanceType, :InstanceCount

        def initialize(cpu=nil, memory=nil, instancetype=nil, instancecount=nil)
          @Cpu = cpu
          @Memory = memory
          @InstanceType = instancetype
          @InstanceCount = instancecount
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @InstanceType = params['InstanceType']
          @InstanceCount = params['InstanceCount']
        end
      end

      # 实例网络信息
      class InstanceNetInfo < TencentCloud::Common::AbstractModel
        # @param InstanceGroupType: 网络类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroupType: String
        # @param InstanceGroupId: 实例组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroupId: String
        # @param VpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param NetType: 网络类型, 0-基础网络, 1-vpc网络, 2-黑石网络
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetType: Integer
        # @param Vip: 私有网络IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Vport: 私有网络端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vport: Integer
        # @param WanDomain: 外网域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanDomain: String
        # @param WanIP: 外网Ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanIP: String
        # @param WanPort: 外网端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanPort: Integer
        # @param WanStatus: 外网开启状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanStatus: String

        attr_accessor :InstanceGroupType, :InstanceGroupId, :VpcId, :SubnetId, :NetType, :Vip, :Vport, :WanDomain, :WanIP, :WanPort, :WanStatus

        def initialize(instancegrouptype=nil, instancegroupid=nil, vpcid=nil, subnetid=nil, nettype=nil, vip=nil, vport=nil, wandomain=nil, wanip=nil, wanport=nil, wanstatus=nil)
          @InstanceGroupType = instancegrouptype
          @InstanceGroupId = instancegroupid
          @VpcId = vpcid
          @SubnetId = subnetid
          @NetType = nettype
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @WanIP = wanip
          @WanPort = wanport
          @WanStatus = wanstatus
        end

        def deserialize(params)
          @InstanceGroupType = params['InstanceGroupType']
          @InstanceGroupId = params['InstanceGroupId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @NetType = params['NetType']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @WanIP = params['WanIP']
          @WanPort = params['WanPort']
          @WanStatus = params['WanStatus']
        end
      end

      # 实例参数信息
      class InstanceParamItem < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ParamsItems: 实例参数列表
        # @type ParamsItems: Array

        attr_accessor :InstanceId, :ParamsItems

        def initialize(instanceid=nil, paramsitems=nil)
          @InstanceId = instanceid
          @ParamsItems = paramsitems
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ParamsItems'].nil?
            @ParamsItems = []
            params['ParamsItems'].each do |i|
              paramitemdetail_tmp = ParamItemDetail.new
              paramitemdetail_tmp.deserialize(i)
              @ParamsItems << paramitemdetail_tmp
            end
          end
        end
      end

      # 实例可售卖规格详细信息，创建实例时Cpu/Memory确定实例规格，存储可选大小为[MinStorageSize,MaxStorageSize]
      class InstanceSpec < TencentCloud::Common::AbstractModel
        # @param Cpu: 实例CPU，单位：核
        # @type Cpu: Integer
        # @param Memory: 实例内存，单位：GB
        # @type Memory: Integer
        # @param MaxStorageSize: 实例最大可用存储，单位：GB
        # @type MaxStorageSize: Integer
        # @param MinStorageSize: 实例最小可用存储，单位：GB
        # @type MinStorageSize: Integer
        # @param HasStock: 是否有库存
        # @type HasStock: Boolean
        # @param MachineType: 机器类型
        # @type MachineType: String
        # @param MaxIops: 最大IOPS
        # @type MaxIops: Integer
        # @param MaxIoBandWidth: 最大IO带宽
        # @type MaxIoBandWidth: Integer
        # @param ZoneStockInfos: 地域库存信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneStockInfos: Array
        # @param StockCount: 库存数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StockCount: Integer

        attr_accessor :Cpu, :Memory, :MaxStorageSize, :MinStorageSize, :HasStock, :MachineType, :MaxIops, :MaxIoBandWidth, :ZoneStockInfos, :StockCount

        def initialize(cpu=nil, memory=nil, maxstoragesize=nil, minstoragesize=nil, hasstock=nil, machinetype=nil, maxiops=nil, maxiobandwidth=nil, zonestockinfos=nil, stockcount=nil)
          @Cpu = cpu
          @Memory = memory
          @MaxStorageSize = maxstoragesize
          @MinStorageSize = minstoragesize
          @HasStock = hasstock
          @MachineType = machinetype
          @MaxIops = maxiops
          @MaxIoBandWidth = maxiobandwidth
          @ZoneStockInfos = zonestockinfos
          @StockCount = stockcount
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @MaxStorageSize = params['MaxStorageSize']
          @MinStorageSize = params['MinStorageSize']
          @HasStock = params['HasStock']
          @MachineType = params['MachineType']
          @MaxIops = params['MaxIops']
          @MaxIoBandWidth = params['MaxIoBandWidth']
          unless params['ZoneStockInfos'].nil?
            @ZoneStockInfos = []
            params['ZoneStockInfos'].each do |i|
              zonestockinfo_tmp = ZoneStockInfo.new
              zonestockinfo_tmp.deserialize(i)
              @ZoneStockInfos << zonestockinfo_tmp
            end
          end
          @StockCount = params['StockCount']
        end
      end

      # IsolateCluster请求参数结构体
      class IsolateClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param DbType: 该参数已废用
        # @type DbType: String

        attr_accessor :ClusterId, :DbType

        def initialize(clusterid=nil, dbtype=nil)
          @ClusterId = clusterid
          @DbType = dbtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @DbType = params['DbType']
        end
      end

      # IsolateCluster返回参数结构体
      class IsolateClusterResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowId: Integer
        # @param DealNames: 退款订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :DealNames, :RequestId

        def initialize(flowid=nil, dealnames=nil, requestid=nil)
          @FlowId = flowid
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # IsolateInstance请求参数结构体
      class IsolateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 实例ID数组
        # @type InstanceIdList: Array
        # @param DbType: 该参数已废弃
        # @type DbType: String

        attr_accessor :ClusterId, :InstanceIdList, :DbType

        def initialize(clusterid=nil, instanceidlist=nil, dbtype=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
          @DbType = dbtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
          @DbType = params['DbType']
        end
      end

      # IsolateInstance返回参数结构体
      class IsolateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流id
        # @type FlowId: Integer
        # @param DealNames: 隔离实例的订单id（预付费实例）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :DealNames, :RequestId

        def initialize(flowid=nil, dealnames=nil, requestid=nil)
          @FlowId = flowid
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # 参数是否可修改的详细信息
      class ModifiableInfo < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyAccountDescription请求参数结构体
      class ModifyAccountDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param AccountName: 数据库账号名
        # @type AccountName: String
        # @param Description: 数据库账号描述信息
        # @type Description: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Host: 主机，默认为"%"
        # @type Host: String

        attr_accessor :AccountName, :Description, :ClusterId, :Host

        def initialize(accountname=nil, description=nil, clusterid=nil, host=nil)
          @AccountName = accountname
          @Description = description
          @ClusterId = clusterid
          @Host = host
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @Description = params['Description']
          @ClusterId = params['ClusterId']
          @Host = params['Host']
        end
      end

      # ModifyAccountDescription返回参数结构体
      class ModifyAccountDescriptionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccountHost请求参数结构体
      class ModifyAccountHostRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param NewHost: 新主机
        # @type NewHost: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`

        attr_accessor :ClusterId, :NewHost, :Account

        def initialize(clusterid=nil, newhost=nil, account=nil)
          @ClusterId = clusterid
          @NewHost = newhost
          @Account = account
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NewHost = params['NewHost']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
        end
      end

      # ModifyAccountHost返回参数结构体
      class ModifyAccountHostResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccountParams请求参数结构体
      class ModifyAccountParamsRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id，不超过32个字符
        # @type ClusterId: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`
        # @param AccountParams: 数据库表权限数组,当前仅支持参数：max_user_connections，max_user_connections不能大于10240
        # @type AccountParams: Array

        attr_accessor :ClusterId, :Account, :AccountParams

        def initialize(clusterid=nil, account=nil, accountparams=nil)
          @ClusterId = clusterid
          @Account = account
          @AccountParams = accountparams
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
          unless params['AccountParams'].nil?
            @AccountParams = []
            params['AccountParams'].each do |i|
              accountparam_tmp = AccountParam.new
              accountparam_tmp.deserialize(i)
              @AccountParams << accountparam_tmp
            end
          end
        end
      end

      # ModifyAccountParams返回参数结构体
      class ModifyAccountParamsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccountPrivileges请求参数结构体
      class ModifyAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`
        # @param GlobalPrivileges: 全局权限数组
        # @type GlobalPrivileges: Array
        # @param DatabasePrivileges: 数据库权限数组
        # @type DatabasePrivileges: Array
        # @param TablePrivileges: 表权限数组
        # @type TablePrivileges: Array

        attr_accessor :ClusterId, :Account, :GlobalPrivileges, :DatabasePrivileges, :TablePrivileges

        def initialize(clusterid=nil, account=nil, globalprivileges=nil, databaseprivileges=nil, tableprivileges=nil)
          @ClusterId = clusterid
          @Account = account
          @GlobalPrivileges = globalprivileges
          @DatabasePrivileges = databaseprivileges
          @TablePrivileges = tableprivileges
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
          @GlobalPrivileges = params['GlobalPrivileges']
          unless params['DatabasePrivileges'].nil?
            @DatabasePrivileges = []
            params['DatabasePrivileges'].each do |i|
              databaseprivileges_tmp = DatabasePrivileges.new
              databaseprivileges_tmp.deserialize(i)
              @DatabasePrivileges << databaseprivileges_tmp
            end
          end
          unless params['TablePrivileges'].nil?
            @TablePrivileges = []
            params['TablePrivileges'].each do |i|
              tableprivileges_tmp = TablePrivileges.new
              tableprivileges_tmp.deserialize(i)
              @TablePrivileges << tableprivileges_tmp
            end
          end
        end
      end

      # ModifyAccountPrivileges返回参数结构体
      class ModifyAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAuditRuleTemplates请求参数结构体
      class ModifyAuditRuleTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param RuleTemplateIds: 审计规则模版ID。
        # @type RuleTemplateIds: Array
        # @param RuleFilters: 修改后的审计规则。
        # @type RuleFilters: Array
        # @param RuleTemplateName: 修改后的规则模版名称。
        # @type RuleTemplateName: String
        # @param Description: 修改后的规则模版描述。
        # @type Description: String

        attr_accessor :RuleTemplateIds, :RuleFilters, :RuleTemplateName, :Description

        def initialize(ruletemplateids=nil, rulefilters=nil, ruletemplatename=nil, description=nil)
          @RuleTemplateIds = ruletemplateids
          @RuleFilters = rulefilters
          @RuleTemplateName = ruletemplatename
          @Description = description
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
        end
      end

      # ModifyAuditRuleTemplates返回参数结构体
      class ModifyAuditRuleTemplatesResponse < TencentCloud::Common::AbstractModel
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
        # @param AuditRuleFilters: 规则审计。
        # @type AuditRuleFilters: Array
        # @param RuleTemplateIds: 规则模版ID。
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

      # ModifyBackupConfig请求参数结构体
      class ModifyBackupConfigRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ReserveDuration: 表示保留备份时长, 单位秒，超过该时间将被清理, 七天表示为3600*24*7=604800，最大为158112000
        # @type ReserveDuration: Integer
        # @param BackupTimeBeg: 表示全备开始时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeBeg: Integer
        # @param BackupTimeEnd: 表示全备结束时间，[0-24*3600]， 如0:00, 1:00, 2:00 分别为 0，3600， 7200
        # @type BackupTimeEnd: Integer
        # @param BackupFreq: 该参数目前不支持修改，无需填写。备份频率，长度为7的数组，分别对应周一到周日的备份方式，full-全量备份，increment-增量备份
        # @type BackupFreq: Array
        # @param BackupType: 该参数目前不支持修改，无需填写。备份方式，logic-逻辑备份，snapshot-快照备份
        # @type BackupType: String

        attr_accessor :ClusterId, :ReserveDuration, :BackupTimeBeg, :BackupTimeEnd, :BackupFreq, :BackupType

        def initialize(clusterid=nil, reserveduration=nil, backuptimebeg=nil, backuptimeend=nil, backupfreq=nil, backuptype=nil)
          @ClusterId = clusterid
          @ReserveDuration = reserveduration
          @BackupTimeBeg = backuptimebeg
          @BackupTimeEnd = backuptimeend
          @BackupFreq = backupfreq
          @BackupType = backuptype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ReserveDuration = params['ReserveDuration']
          @BackupTimeBeg = params['BackupTimeBeg']
          @BackupTimeEnd = params['BackupTimeEnd']
          @BackupFreq = params['BackupFreq']
          @BackupType = params['BackupType']
        end
      end

      # ModifyBackupConfig返回参数结构体
      class ModifyBackupConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupName请求参数结构体
      class ModifyBackupNameRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BackupId: 备份文件ID
        # @type BackupId: Integer
        # @param BackupName: 备注名，长度不能超过60个字符
        # @type BackupName: String

        attr_accessor :ClusterId, :BackupId, :BackupName

        def initialize(clusterid=nil, backupid=nil, backupname=nil)
          @ClusterId = clusterid
          @BackupId = backupid
          @BackupName = backupname
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BackupId = params['BackupId']
          @BackupName = params['BackupName']
        end
      end

      # ModifyBackupName返回参数结构体
      class ModifyBackupNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBinlogSaveDays请求参数结构体
      class ModifyBinlogSaveDaysRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param BinlogSaveDays: Binlog保留天数
        # @type BinlogSaveDays: Integer

        attr_accessor :ClusterId, :BinlogSaveDays

        def initialize(clusterid=nil, binlogsavedays=nil)
          @ClusterId = clusterid
          @BinlogSaveDays = binlogsavedays
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @BinlogSaveDays = params['BinlogSaveDays']
        end
      end

      # ModifyBinlogSaveDays返回参数结构体
      class ModifyBinlogSaveDaysResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterDatabase请求参数结构体
      class ModifyClusterDatabaseRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param DbName: 数据库名
        # @type DbName: String
        # @param NewUserHostPrivileges: 新授权用户主机权限
        # @type NewUserHostPrivileges: Array
        # @param Description: 备注
        # @type Description: String
        # @param OldUserHostPrivileges: 历史授权用户主机权限
        # @type OldUserHostPrivileges: Array

        attr_accessor :ClusterId, :DbName, :NewUserHostPrivileges, :Description, :OldUserHostPrivileges

        def initialize(clusterid=nil, dbname=nil, newuserhostprivileges=nil, description=nil, olduserhostprivileges=nil)
          @ClusterId = clusterid
          @DbName = dbname
          @NewUserHostPrivileges = newuserhostprivileges
          @Description = description
          @OldUserHostPrivileges = olduserhostprivileges
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @DbName = params['DbName']
          unless params['NewUserHostPrivileges'].nil?
            @NewUserHostPrivileges = []
            params['NewUserHostPrivileges'].each do |i|
              userhostprivilege_tmp = UserHostPrivilege.new
              userhostprivilege_tmp.deserialize(i)
              @NewUserHostPrivileges << userhostprivilege_tmp
            end
          end
          @Description = params['Description']
          unless params['OldUserHostPrivileges'].nil?
            @OldUserHostPrivileges = []
            params['OldUserHostPrivileges'].each do |i|
              userhostprivilege_tmp = UserHostPrivilege.new
              userhostprivilege_tmp.deserialize(i)
              @OldUserHostPrivileges << userhostprivilege_tmp
            end
          end
        end
      end

      # ModifyClusterDatabase返回参数结构体
      class ModifyClusterDatabaseResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterName请求参数结构体
      class ModifyClusterNameRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名
        # @type ClusterName: String

        attr_accessor :ClusterId, :ClusterName

        def initialize(clusterid=nil, clustername=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
        end
      end

      # ModifyClusterName返回参数结构体
      class ModifyClusterNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClusterParam请求参数结构体
      class ModifyClusterParamRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ParamList: 要修改的参数列表。每一个元素是ParamName、CurrentValue和OldValue的组合。ParamName是参数名称，CurrentValue是当前值，OldValue是之前值且不做校验
        # @type ParamList: Array
        # @param IsInMaintainPeriod: 维护期间执行-yes,立即执行-no
        # @type IsInMaintainPeriod: String

        attr_accessor :ClusterId, :ParamList, :IsInMaintainPeriod

        def initialize(clusterid=nil, paramlist=nil, isinmaintainperiod=nil)
          @ClusterId = clusterid
          @ParamList = paramlist
          @IsInMaintainPeriod = isinmaintainperiod
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              paramitem_tmp = ParamItem.new
              paramitem_tmp.deserialize(i)
              @ParamList << paramitem_tmp
            end
          end
          @IsInMaintainPeriod = params['IsInMaintainPeriod']
        end
      end

      # ModifyClusterParam返回参数结构体
      class ModifyClusterParamResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 异步请求Id，用于查询结果
        # @type AsyncRequestId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyClusterPasswordComplexity请求参数结构体
      class ModifyClusterPasswordComplexityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ValidatePasswordLength: 密码长度
        # @type ValidatePasswordLength: Integer
        # @param ValidatePasswordMixedCaseCount: 大小写字符个数
        # @type ValidatePasswordMixedCaseCount: Integer
        # @param ValidatePasswordSpecialCharCount: 特殊字符个数
        # @type ValidatePasswordSpecialCharCount: Integer
        # @param ValidatePasswordNumberCount: 数字个数
        # @type ValidatePasswordNumberCount: Integer
        # @param ValidatePasswordPolicy: 密码强度（"MEDIUM", "STRONG"）
        # @type ValidatePasswordPolicy: String
        # @param ValidatePasswordDictionary: 数据字典
        # @type ValidatePasswordDictionary: Array

        attr_accessor :ClusterId, :ValidatePasswordLength, :ValidatePasswordMixedCaseCount, :ValidatePasswordSpecialCharCount, :ValidatePasswordNumberCount, :ValidatePasswordPolicy, :ValidatePasswordDictionary

        def initialize(clusterid=nil, validatepasswordlength=nil, validatepasswordmixedcasecount=nil, validatepasswordspecialcharcount=nil, validatepasswordnumbercount=nil, validatepasswordpolicy=nil, validatepassworddictionary=nil)
          @ClusterId = clusterid
          @ValidatePasswordLength = validatepasswordlength
          @ValidatePasswordMixedCaseCount = validatepasswordmixedcasecount
          @ValidatePasswordSpecialCharCount = validatepasswordspecialcharcount
          @ValidatePasswordNumberCount = validatepasswordnumbercount
          @ValidatePasswordPolicy = validatepasswordpolicy
          @ValidatePasswordDictionary = validatepassworddictionary
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ValidatePasswordLength = params['ValidatePasswordLength']
          @ValidatePasswordMixedCaseCount = params['ValidatePasswordMixedCaseCount']
          @ValidatePasswordSpecialCharCount = params['ValidatePasswordSpecialCharCount']
          @ValidatePasswordNumberCount = params['ValidatePasswordNumberCount']
          @ValidatePasswordPolicy = params['ValidatePasswordPolicy']
          @ValidatePasswordDictionary = params['ValidatePasswordDictionary']
        end
      end

      # ModifyClusterPasswordComplexity返回参数结构体
      class ModifyClusterPasswordComplexityResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyClusterSlaveZone请求参数结构体
      class ModifyClusterSlaveZoneRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param OldSlaveZone: 旧从可用区
        # @type OldSlaveZone: String
        # @param NewSlaveZone: 新从可用区
        # @type NewSlaveZone: String

        attr_accessor :ClusterId, :OldSlaveZone, :NewSlaveZone

        def initialize(clusterid=nil, oldslavezone=nil, newslavezone=nil)
          @ClusterId = clusterid
          @OldSlaveZone = oldslavezone
          @NewSlaveZone = newslavezone
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @OldSlaveZone = params['OldSlaveZone']
          @NewSlaveZone = params['NewSlaveZone']
        end
      end

      # ModifyClusterSlaveZone返回参数结构体
      class ModifyClusterSlaveZoneResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步FlowId
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyClusterStorage请求参数结构体
      class ModifyClusterStorageRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param NewStorageLimit: 集群新存储大小（单位G）
        # @type NewStorageLimit: Integer
        # @param OldStorageLimit: 集群原存储大小（单位G）
        # @type OldStorageLimit: Integer
        # @param DealMode: 交易模式 0-下单并支付 1-下单
        # @type DealMode: Integer

        attr_accessor :ClusterId, :NewStorageLimit, :OldStorageLimit, :DealMode

        def initialize(clusterid=nil, newstoragelimit=nil, oldstoragelimit=nil, dealmode=nil)
          @ClusterId = clusterid
          @NewStorageLimit = newstoragelimit
          @OldStorageLimit = oldstoragelimit
          @DealMode = dealmode
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @NewStorageLimit = params['NewStorageLimit']
          @OldStorageLimit = params['OldStorageLimit']
          @DealMode = params['DealMode']
        end
      end

      # ModifyClusterStorage返回参数结构体
      class ModifyClusterStorageResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param DealNames: 订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :BigDealIds, :DealNames, :RequestId

        def initialize(tranid=nil, bigdealids=nil, dealnames=nil, requestid=nil)
          @TranId = tranid
          @BigDealIds = bigdealids
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @BigDealIds = params['BigDealIds']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBInstanceSecurityGroups请求参数结构体
      class ModifyDBInstanceSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例组ID
        # @type InstanceId: String
        # @param SecurityGroupIds: 要修改的安全组ID列表，一个或者多个安全组ID组成的数组。
        # @type SecurityGroupIds: Array
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :InstanceId, :SecurityGroupIds, :Zone

        def initialize(instanceid=nil, securitygroupids=nil, zone=nil)
          @InstanceId = instanceid
          @SecurityGroupIds = securitygroupids
          @Zone = zone
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SecurityGroupIds = params['SecurityGroupIds']
          @Zone = params['Zone']
        end
      end

      # ModifyDBInstanceSecurityGroups返回参数结构体
      class ModifyDBInstanceSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceName请求参数结构体
      class ModifyInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
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

      # ModifyInstanceName返回参数结构体
      class ModifyInstanceNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceParam请求参数结构体
      class ModifyInstanceParamRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIds: 实例ID
        # @type InstanceIds: Array
        # @param ClusterParamList: 集群参数列表
        # @type ClusterParamList: Array
        # @param InstanceParamList: 实例参数列表
        # @type InstanceParamList: Array
        # @param IsInMaintainPeriod: yes：在运维时间窗内修改，no：立即执行（默认值）
        # @type IsInMaintainPeriod: String

        attr_accessor :ClusterId, :InstanceIds, :ClusterParamList, :InstanceParamList, :IsInMaintainPeriod

        def initialize(clusterid=nil, instanceids=nil, clusterparamlist=nil, instanceparamlist=nil, isinmaintainperiod=nil)
          @ClusterId = clusterid
          @InstanceIds = instanceids
          @ClusterParamList = clusterparamlist
          @InstanceParamList = instanceparamlist
          @IsInMaintainPeriod = isinmaintainperiod
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIds = params['InstanceIds']
          unless params['ClusterParamList'].nil?
            @ClusterParamList = []
            params['ClusterParamList'].each do |i|
              modifyparamitem_tmp = ModifyParamItem.new
              modifyparamitem_tmp.deserialize(i)
              @ClusterParamList << modifyparamitem_tmp
            end
          end
          unless params['InstanceParamList'].nil?
            @InstanceParamList = []
            params['InstanceParamList'].each do |i|
              modifyparamitem_tmp = ModifyParamItem.new
              modifyparamitem_tmp.deserialize(i)
              @InstanceParamList << modifyparamitem_tmp
            end
          end
          @IsInMaintainPeriod = params['IsInMaintainPeriod']
        end
      end

      # ModifyInstanceParam返回参数结构体
      class ModifyInstanceParamResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyMaintainPeriodConfig请求参数结构体
      class ModifyMaintainPeriodConfigRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param MaintainStartTime: 维护开始时间，单位为秒，如3:00为10800
        # @type MaintainStartTime: Integer
        # @param MaintainDuration: 维护持续时间，单位为秒，如1小时为3600
        # @type MaintainDuration: Integer
        # @param MaintainWeekDays: 每周维护日期，日期取值范围[Mon, Tue, Wed, Thu, Fri, Sat, Sun]
        # @type MaintainWeekDays: Array

        attr_accessor :InstanceId, :MaintainStartTime, :MaintainDuration, :MaintainWeekDays

        def initialize(instanceid=nil, maintainstarttime=nil, maintainduration=nil, maintainweekdays=nil)
          @InstanceId = instanceid
          @MaintainStartTime = maintainstarttime
          @MaintainDuration = maintainduration
          @MaintainWeekDays = maintainweekdays
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MaintainStartTime = params['MaintainStartTime']
          @MaintainDuration = params['MaintainDuration']
          @MaintainWeekDays = params['MaintainWeekDays']
        end
      end

      # ModifyMaintainPeriodConfig返回参数结构体
      class ModifyMaintainPeriodConfigResponse < TencentCloud::Common::AbstractModel
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

      # 修改的实例参数信息
      class ModifyParamItem < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名
        # @type ParamName: String
        # @param CurrentValue: 参数当前值
        # @type CurrentValue: String
        # @param OldValue: 参数旧值（只在出参时有用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldValue: String

        attr_accessor :ParamName, :CurrentValue, :OldValue

        def initialize(paramname=nil, currentvalue=nil, oldvalue=nil)
          @ParamName = paramname
          @CurrentValue = currentvalue
          @OldValue = oldvalue
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @CurrentValue = params['CurrentValue']
          @OldValue = params['OldValue']
        end
      end

      # ModifyParamTemplate请求参数结构体
      class ModifyParamTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: Integer
        # @param TemplateName: 模板名
        # @type TemplateName: String
        # @param TemplateDescription: 模板描述
        # @type TemplateDescription: String
        # @param ParamList: 参数列表
        # @type ParamList: Array

        attr_accessor :TemplateId, :TemplateName, :TemplateDescription, :ParamList

        def initialize(templateid=nil, templatename=nil, templatedescription=nil, paramlist=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TemplateDescription = templatedescription
          @ParamList = paramlist
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @TemplateDescription = params['TemplateDescription']
          unless params['ParamList'].nil?
            @ParamList = []
            params['ParamList'].each do |i|
              modifyparamitem_tmp = ModifyParamItem.new
              modifyparamitem_tmp.deserialize(i)
              @ParamList << modifyparamitem_tmp
            end
          end
        end
      end

      # ModifyParamTemplate返回参数结构体
      class ModifyParamTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProxyDesc请求参数结构体
      class ModifyProxyDescRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String
        # @param Description: 数据库代理描述
        # @type Description: String

        attr_accessor :ClusterId, :ProxyGroupId, :Description

        def initialize(clusterid=nil, proxygroupid=nil, description=nil)
          @ClusterId = clusterid
          @ProxyGroupId = proxygroupid
          @Description = description
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ProxyGroupId = params['ProxyGroupId']
          @Description = params['Description']
        end
      end

      # ModifyProxyDesc返回参数结构体
      class ModifyProxyDescResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProxyRwSplit请求参数结构体
      class ModifyProxyRwSplitRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String
        # @param ConsistencyType: 一致性类型；“eventual"-最终一致性, "session"-会话一致性, "global"-全局一致性
        # @type ConsistencyType: String
        # @param ConsistencyTimeOut: 一致性超时时间
        # @type ConsistencyTimeOut: String
        # @param WeightMode: 读写权重分配模式；系统自动分配："system"， 自定义："custom"
        # @type WeightMode: String
        # @param InstanceWeights: 实例只读权重
        # @type InstanceWeights: Array
        # @param FailOver: 是否开启故障转移，代理出现故障后，连接地址将路由到主实例，取值："yes" , "no"
        # @type FailOver: String
        # @param AutoAddRo: 是否自动添加只读实例，取值："yes" , "no"
        # @type AutoAddRo: String
        # @param OpenRw: 是否打开读写分离
        # @type OpenRw: String
        # @param RwType: 读写类型：
        # READWRITE,READONLY
        # @type RwType: String
        # @param TransSplit: 事务拆分
        # @type TransSplit: Boolean
        # @param AccessMode: 连接模式：
        # nearby,balance
        # @type AccessMode: String
        # @param OpenConnectionPool: 是否打开连接池：
        # yes,no
        # @type OpenConnectionPool: String
        # @param ConnectionPoolType: 连接池类型：
        # SessionConnectionPool
        # @type ConnectionPoolType: String
        # @param ConnectionPoolTimeOut: 连接池时间
        # @type ConnectionPoolTimeOut: Integer

        attr_accessor :ClusterId, :ProxyGroupId, :ConsistencyType, :ConsistencyTimeOut, :WeightMode, :InstanceWeights, :FailOver, :AutoAddRo, :OpenRw, :RwType, :TransSplit, :AccessMode, :OpenConnectionPool, :ConnectionPoolType, :ConnectionPoolTimeOut

        def initialize(clusterid=nil, proxygroupid=nil, consistencytype=nil, consistencytimeout=nil, weightmode=nil, instanceweights=nil, failover=nil, autoaddro=nil, openrw=nil, rwtype=nil, transsplit=nil, accessmode=nil, openconnectionpool=nil, connectionpooltype=nil, connectionpooltimeout=nil)
          @ClusterId = clusterid
          @ProxyGroupId = proxygroupid
          @ConsistencyType = consistencytype
          @ConsistencyTimeOut = consistencytimeout
          @WeightMode = weightmode
          @InstanceWeights = instanceweights
          @FailOver = failover
          @AutoAddRo = autoaddro
          @OpenRw = openrw
          @RwType = rwtype
          @TransSplit = transsplit
          @AccessMode = accessmode
          @OpenConnectionPool = openconnectionpool
          @ConnectionPoolType = connectionpooltype
          @ConnectionPoolTimeOut = connectionpooltimeout
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ProxyGroupId = params['ProxyGroupId']
          @ConsistencyType = params['ConsistencyType']
          @ConsistencyTimeOut = params['ConsistencyTimeOut']
          @WeightMode = params['WeightMode']
          unless params['InstanceWeights'].nil?
            @InstanceWeights = []
            params['InstanceWeights'].each do |i|
              proxyinstanceweight_tmp = ProxyInstanceWeight.new
              proxyinstanceweight_tmp.deserialize(i)
              @InstanceWeights << proxyinstanceweight_tmp
            end
          end
          @FailOver = params['FailOver']
          @AutoAddRo = params['AutoAddRo']
          @OpenRw = params['OpenRw']
          @RwType = params['RwType']
          @TransSplit = params['TransSplit']
          @AccessMode = params['AccessMode']
          @OpenConnectionPool = params['OpenConnectionPool']
          @ConnectionPoolType = params['ConnectionPoolType']
          @ConnectionPoolTimeOut = params['ConnectionPoolTimeOut']
        end
      end

      # ModifyProxyRwSplit返回参数结构体
      class ModifyProxyRwSplitResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步FlowId
        # @type FlowId: Integer
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :TaskId, :RequestId

        def initialize(flowid=nil, taskid=nil, requestid=nil)
          @FlowId = flowid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyResourcePackageClusters请求参数结构体
      class ModifyResourcePackageClustersRequest < TencentCloud::Common::AbstractModel
        # @param PackageId: 资源包唯一ID
        # @type PackageId: String
        # @param BindClusterIds: 需要建立绑定关系的集群ID
        # @type BindClusterIds: Array
        # @param UnbindClusterIds: 需要解除绑定关系的集群ID
        # @type UnbindClusterIds: Array

        attr_accessor :PackageId, :BindClusterIds, :UnbindClusterIds

        def initialize(packageid=nil, bindclusterids=nil, unbindclusterids=nil)
          @PackageId = packageid
          @BindClusterIds = bindclusterids
          @UnbindClusterIds = unbindclusterids
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @BindClusterIds = params['BindClusterIds']
          @UnbindClusterIds = params['UnbindClusterIds']
        end
      end

      # ModifyResourcePackageClusters返回参数结构体
      class ModifyResourcePackageClustersResponse < TencentCloud::Common::AbstractModel
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

      # ModifyResourcePackageName请求参数结构体
      class ModifyResourcePackageNameRequest < TencentCloud::Common::AbstractModel
        # @param PackageId: 资源包唯一ID
        # @type PackageId: String
        # @param PackageName: 自定义的资源包名称，最长支持120个字符
        # @type PackageName: String

        attr_accessor :PackageId, :PackageName

        def initialize(packageid=nil, packagename=nil)
          @PackageId = packageid
          @PackageName = packagename
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
        end
      end

      # ModifyResourcePackageName返回参数结构体
      class ModifyResourcePackageNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVipVport请求参数结构体
      class ModifyVipVportRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param InstanceGrpId: 实例组id
        # @type InstanceGrpId: String
        # @param Vip: 需要修改的目的ip
        # @type Vip: String
        # @param Vport: 需要修改的目的端口
        # @type Vport: Integer
        # @param DbType: 数据库类型，取值范围:
        # <li> MYSQL </li>
        # @type DbType: String
        # @param OldIpReserveHours: 旧ip回收前的保留时间，单位小时，0表示立即回收
        # @type OldIpReserveHours: Integer

        attr_accessor :ClusterId, :InstanceGrpId, :Vip, :Vport, :DbType, :OldIpReserveHours

        def initialize(clusterid=nil, instancegrpid=nil, vip=nil, vport=nil, dbtype=nil, oldipreservehours=nil)
          @ClusterId = clusterid
          @InstanceGrpId = instancegrpid
          @Vip = vip
          @Vport = vport
          @DbType = dbtype
          @OldIpReserveHours = oldipreservehours
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceGrpId = params['InstanceGrpId']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @DbType = params['DbType']
          @OldIpReserveHours = params['OldIpReserveHours']
        end
      end

      # ModifyVipVport返回参数结构体
      class ModifyVipVportResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 系统支持的模块
      class Module < TencentCloud::Common::AbstractModel
        # @param IsDisable: 是否支持，可选值:yes,no
        # @type IsDisable: String
        # @param ModuleName: 模块名
        # @type ModuleName: String

        attr_accessor :IsDisable, :ModuleName

        def initialize(isdisable=nil, modulename=nil)
          @IsDisable = isdisable
          @ModuleName = modulename
        end

        def deserialize(params)
          @IsDisable = params['IsDisable']
          @ModuleName = params['ModuleName']
        end
      end

      # 网络信息
      class NetAddr < TencentCloud::Common::AbstractModel
        # @param Vip: 内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Vport: 内网端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vport: Integer
        # @param WanDomain: 外网域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanDomain: String
        # @param WanPort: 外网端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanPort: Integer
        # @param NetType: 网络类型（ro-只读,rw/ha-读写）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetType: String
        # @param UniqSubnetId: 子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqSubnetId: String
        # @param UniqVpcId: 私有网络ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UniqVpcId: String
        # @param Description: 描述信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param WanIP: 外网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanIP: String
        # @param WanStatus: 外网状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WanStatus: String
        # @param InstanceGroupId: 实例组ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceGroupId: String

        attr_accessor :Vip, :Vport, :WanDomain, :WanPort, :NetType, :UniqSubnetId, :UniqVpcId, :Description, :WanIP, :WanStatus, :InstanceGroupId

        def initialize(vip=nil, vport=nil, wandomain=nil, wanport=nil, nettype=nil, uniqsubnetid=nil, uniqvpcid=nil, description=nil, wanip=nil, wanstatus=nil, instancegroupid=nil)
          @Vip = vip
          @Vport = vport
          @WanDomain = wandomain
          @WanPort = wanport
          @NetType = nettype
          @UniqSubnetId = uniqsubnetid
          @UniqVpcId = uniqvpcid
          @Description = description
          @WanIP = wanip
          @WanStatus = wanstatus
          @InstanceGroupId = instancegroupid
        end

        def deserialize(params)
          @Vip = params['Vip']
          @Vport = params['Vport']
          @WanDomain = params['WanDomain']
          @WanPort = params['WanPort']
          @NetType = params['NetType']
          @UniqSubnetId = params['UniqSubnetId']
          @UniqVpcId = params['UniqVpcId']
          @Description = params['Description']
          @WanIP = params['WanIP']
          @WanStatus = params['WanStatus']
          @InstanceGroupId = params['InstanceGroupId']
        end
      end

      # x08新创建的账号
      class NewAccount < TencentCloud::Common::AbstractModel
        # @param AccountName: 账户名，包含字母数字_,以字母开头，字母或数字结尾，长度1-16
        # @type AccountName: String
        # @param AccountPassword: 密码，密码长度范围为8到64个字符
        # @type AccountPassword: String
        # @param Host: 主机
        # @type Host: String
        # @param Description: 描述
        # @type Description: String
        # @param MaxUserConnections: 用户最大连接数，不能大于10240
        # @type MaxUserConnections: Integer

        attr_accessor :AccountName, :AccountPassword, :Host, :Description, :MaxUserConnections

        def initialize(accountname=nil, accountpassword=nil, host=nil, description=nil, maxuserconnections=nil)
          @AccountName = accountname
          @AccountPassword = accountpassword
          @Host = host
          @Description = description
          @MaxUserConnections = maxuserconnections
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @AccountPassword = params['AccountPassword']
          @Host = params['Host']
          @Description = params['Description']
          @MaxUserConnections = params['MaxUserConnections']
        end
      end

      # 任务信息
      class ObjectTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务自增ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer
        # @param TaskType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskType: String
        # @param TaskStatus: 任务状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskStatus: String
        # @param ObjectId: 任务ID（集群ID|实例组ID|实例ID）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectId: String
        # @param ObjectType: 任务类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectType: String

        attr_accessor :TaskId, :TaskType, :TaskStatus, :ObjectId, :ObjectType

        def initialize(taskid=nil, tasktype=nil, taskstatus=nil, objectid=nil, objecttype=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @TaskStatus = taskstatus
          @ObjectId = objectid
          @ObjectType = objecttype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @TaskStatus = params['TaskStatus']
          @ObjectId = params['ObjectId']
          @ObjectType = params['ObjectType']
        end
      end

      # OfflineCluster请求参数结构体
      class OfflineClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # OfflineCluster返回参数结构体
      class OfflineClusterResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # OfflineInstance请求参数结构体
      class OfflineInstanceRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceIdList: 实例ID数组
        # @type InstanceIdList: Array

        attr_accessor :ClusterId, :InstanceIdList

        def initialize(clusterid=nil, instanceidlist=nil)
          @ClusterId = clusterid
          @InstanceIdList = instanceidlist
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceIdList = params['InstanceIdList']
        end
      end

      # OfflineInstance返回参数结构体
      class OfflineInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 数据库地址
      class OldAddrInfo < TencentCloud::Common::AbstractModel
        # @param Vip: IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vip: String
        # @param Vport: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vport: Integer
        # @param ReturnTime: 期望执行回收时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnTime: String

        attr_accessor :Vip, :Vport, :ReturnTime

        def initialize(vip=nil, vport=nil, returntime=nil)
          @Vip = vip
          @Vport = vport
          @ReturnTime = returntime
        end

        def deserialize(params)
          @Vip = params['Vip']
          @Vport = params['Vport']
          @ReturnTime = params['ReturnTime']
        end
      end

      # OpenAuditService请求参数结构体
      class OpenAuditServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param LogExpireDay: 日志保留时长。
        # @type LogExpireDay: Integer
        # @param HighLogExpireDay: 高频日志保留时长。
        # @type HighLogExpireDay: Integer
        # @param AuditRuleFilters: 审计规则。同RuleTemplateIds都不填是全审计。
        # @type AuditRuleFilters: Array
        # @param RuleTemplateIds: 规则模版ID。同AuditRuleFilters都不填是全审计。
        # @type RuleTemplateIds: Array

        attr_accessor :InstanceId, :LogExpireDay, :HighLogExpireDay, :AuditRuleFilters, :RuleTemplateIds

        def initialize(instanceid=nil, logexpireday=nil, highlogexpireday=nil, auditrulefilters=nil, ruletemplateids=nil)
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
          @HighLogExpireDay = highlogexpireday
          @AuditRuleFilters = auditrulefilters
          @RuleTemplateIds = ruletemplateids
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
        end
      end

      # OpenAuditService返回参数结构体
      class OpenAuditServiceResponse < TencentCloud::Common::AbstractModel
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

      # OpenClusterPasswordComplexity请求参数结构体
      class OpenClusterPasswordComplexityRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param ValidatePasswordLength: 密码长度
        # @type ValidatePasswordLength: Integer
        # @param ValidatePasswordMixedCaseCount: 大小写字符个数
        # @type ValidatePasswordMixedCaseCount: Integer
        # @param ValidatePasswordSpecialCharCount: 特殊字符个数
        # @type ValidatePasswordSpecialCharCount: Integer
        # @param ValidatePasswordNumberCount: 数字个数
        # @type ValidatePasswordNumberCount: Integer
        # @param ValidatePasswordPolicy: 密码强度（"MEDIUM", "STRONG"）
        # @type ValidatePasswordPolicy: String
        # @param ValidatePasswordDictionary: 数据字典
        # @type ValidatePasswordDictionary: Array

        attr_accessor :ClusterId, :ValidatePasswordLength, :ValidatePasswordMixedCaseCount, :ValidatePasswordSpecialCharCount, :ValidatePasswordNumberCount, :ValidatePasswordPolicy, :ValidatePasswordDictionary

        def initialize(clusterid=nil, validatepasswordlength=nil, validatepasswordmixedcasecount=nil, validatepasswordspecialcharcount=nil, validatepasswordnumbercount=nil, validatepasswordpolicy=nil, validatepassworddictionary=nil)
          @ClusterId = clusterid
          @ValidatePasswordLength = validatepasswordlength
          @ValidatePasswordMixedCaseCount = validatepasswordmixedcasecount
          @ValidatePasswordSpecialCharCount = validatepasswordspecialcharcount
          @ValidatePasswordNumberCount = validatepasswordnumbercount
          @ValidatePasswordPolicy = validatepasswordpolicy
          @ValidatePasswordDictionary = validatepassworddictionary
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ValidatePasswordLength = params['ValidatePasswordLength']
          @ValidatePasswordMixedCaseCount = params['ValidatePasswordMixedCaseCount']
          @ValidatePasswordSpecialCharCount = params['ValidatePasswordSpecialCharCount']
          @ValidatePasswordNumberCount = params['ValidatePasswordNumberCount']
          @ValidatePasswordPolicy = params['ValidatePasswordPolicy']
          @ValidatePasswordDictionary = params['ValidatePasswordDictionary']
        end
      end

      # OpenClusterPasswordComplexity返回参数结构体
      class OpenClusterPasswordComplexityResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # OpenClusterReadOnlyInstanceGroupAccess请求参数结构体
      class OpenClusterReadOnlyInstanceGroupAccessRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # OpenClusterReadOnlyInstanceGroupAccess返回参数结构体
      class OpenClusterReadOnlyInstanceGroupAccessResponse < TencentCloud::Common::AbstractModel
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

      # OpenReadOnlyInstanceExclusiveAccess请求参数结构体
      class OpenReadOnlyInstanceExclusiveAccessRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param InstanceId: 需要开通独有访问的只读实例ID
        # @type InstanceId: String
        # @param VpcId: 指定的vpc ID
        # @type VpcId: String
        # @param SubnetId: 指定的子网ID
        # @type SubnetId: String
        # @param Port: 端口
        # @type Port: Integer
        # @param SecurityGroupIds: 安全组
        # @type SecurityGroupIds: Array

        attr_accessor :ClusterId, :InstanceId, :VpcId, :SubnetId, :Port, :SecurityGroupIds

        def initialize(clusterid=nil, instanceid=nil, vpcid=nil, subnetid=nil, port=nil, securitygroupids=nil)
          @ClusterId = clusterid
          @InstanceId = instanceid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Port = port
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Port = params['Port']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # OpenReadOnlyInstanceExclusiveAccess返回参数结构体
      class OpenReadOnlyInstanceExclusiveAccessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 开通流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # OpenWan请求参数结构体
      class OpenWanRequest < TencentCloud::Common::AbstractModel
        # @param InstanceGrpId: 实例组id
        # @type InstanceGrpId: String

        attr_accessor :InstanceGrpId

        def initialize(instancegrpid=nil)
          @InstanceGrpId = instancegrpid
        end

        def deserialize(params)
          @InstanceGrpId = params['InstanceGrpId']
        end
      end

      # OpenWan返回参数结构体
      class OpenWanResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 资源包
      class Package < TencentCloud::Common::AbstractModel
        # @param AppId: AppID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param PackageId: 资源包唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageId: String
        # @param PackageName: 资源包名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageName: String
        # @param PackageType: 资源包类型
        # CCU-计算资源包，DISK-存储资源包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param PackageRegion: 资源包使用地域
        # china-中国内地通用，overseas-港澳台及海外通用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageRegion: String
        # @param Status: 资源包状态
        # creating-创建中；
        # using-使用中；
        # expired-已过期；
        # normal_finish-使用完；
        # apply_refund-申请退费中；
        # refund-已退费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param PackageTotalSpec: 资源包总量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageTotalSpec: Float
        # @param PackageUsedSpec: 资源包已使用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageUsedSpec: Float
        # @param HasQuota: 资源包已使用量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasQuota: Boolean
        # @param BindInstanceInfos: 绑定实例信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindInstanceInfos: Array
        # @param StartTime: 生效时间：2022-07-01 00:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param ExpireTime: 失效时间：2022-08-01 00:00:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String

        attr_accessor :AppId, :PackageId, :PackageName, :PackageType, :PackageRegion, :Status, :PackageTotalSpec, :PackageUsedSpec, :HasQuota, :BindInstanceInfos, :StartTime, :ExpireTime

        def initialize(appid=nil, packageid=nil, packagename=nil, packagetype=nil, packageregion=nil, status=nil, packagetotalspec=nil, packageusedspec=nil, hasquota=nil, bindinstanceinfos=nil, starttime=nil, expiretime=nil)
          @AppId = appid
          @PackageId = packageid
          @PackageName = packagename
          @PackageType = packagetype
          @PackageRegion = packageregion
          @Status = status
          @PackageTotalSpec = packagetotalspec
          @PackageUsedSpec = packageusedspec
          @HasQuota = hasquota
          @BindInstanceInfos = bindinstanceinfos
          @StartTime = starttime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @AppId = params['AppId']
          @PackageId = params['PackageId']
          @PackageName = params['PackageName']
          @PackageType = params['PackageType']
          @PackageRegion = params['PackageRegion']
          @Status = params['Status']
          @PackageTotalSpec = params['PackageTotalSpec']
          @PackageUsedSpec = params['PackageUsedSpec']
          @HasQuota = params['HasQuota']
          unless params['BindInstanceInfos'].nil?
            @BindInstanceInfos = []
            params['BindInstanceInfos'].each do |i|
              bindinstanceinfo_tmp = BindInstanceInfo.new
              bindinstanceinfo_tmp.deserialize(i)
              @BindInstanceInfos << bindinstanceinfo_tmp
            end
          end
          @StartTime = params['StartTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 资源包明细说明
      class PackageDetail < TencentCloud::Common::AbstractModel
        # @param AppId: AppId账户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param PackageId: 资源包唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageId: String
        # @param InstanceId: 实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param SuccessDeductSpec: 成功抵扣容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessDeductSpec: Float
        # @param PackageTotalUsedSpec: 截止当前，资源包已使用的容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageTotalUsedSpec: Float
        # @param StartTime: 抵扣开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 抵扣结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param ExtendInfo: 扩展信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtendInfo: String

        attr_accessor :AppId, :PackageId, :InstanceId, :SuccessDeductSpec, :PackageTotalUsedSpec, :StartTime, :EndTime, :ExtendInfo

        def initialize(appid=nil, packageid=nil, instanceid=nil, successdeductspec=nil, packagetotalusedspec=nil, starttime=nil, endtime=nil, extendinfo=nil)
          @AppId = appid
          @PackageId = packageid
          @InstanceId = instanceid
          @SuccessDeductSpec = successdeductspec
          @PackageTotalUsedSpec = packagetotalusedspec
          @StartTime = starttime
          @EndTime = endtime
          @ExtendInfo = extendinfo
        end

        def deserialize(params)
          @AppId = params['AppId']
          @PackageId = params['PackageId']
          @InstanceId = params['InstanceId']
          @SuccessDeductSpec = params['SuccessDeductSpec']
          @PackageTotalUsedSpec = params['PackageTotalUsedSpec']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ExtendInfo = params['ExtendInfo']
        end
      end

      # 实例参数详细描述
      class ParamDetail < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param ParamType: 参数类型：integer，enum，float，string，func
        # @type ParamType: String
        # @param SupportFunc: true-支持"func"，false-不支持公式
        # @type SupportFunc: Boolean
        # @param Default: 默认值
        # @type Default: String
        # @param Description: 参数描述
        # @type Description: String
        # @param CurrentValue: 参数当前值
        # @type CurrentValue: String
        # @param NeedReboot: 修改参数后，是否需要重启数据库以使参数生效。0-不需要重启，1-需要重启。
        # @type NeedReboot: Integer
        # @param Max: 参数容许的最大值
        # @type Max: String
        # @param Min: 参数容许的最小值
        # @type Min: String
        # @param EnumValue: 参数的可选枚举值。如果为非枚举值，则为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnumValue: Array
        # @param IsGlobal: 1：全局参数，0：非全局参数
        # @type IsGlobal: Integer
        # @param MatchType: 匹配类型，multiVal
        # @type MatchType: String
        # @param MatchValue: 匹配目标值，当multiVal时，各个key用，分割
        # @type MatchValue: String
        # @param IsFunc: true-为公式，false-非公式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFunc: Boolean
        # @param Func: 参数设置为公式时，Func返回设置的公式内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Func: String
        # @param ModifiableInfo: 参数是否可修改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiableInfo: :class:`Tencentcloud::Cynosdb.v20190107.models.ModifiableInfo`

        attr_accessor :ParamName, :ParamType, :SupportFunc, :Default, :Description, :CurrentValue, :NeedReboot, :Max, :Min, :EnumValue, :IsGlobal, :MatchType, :MatchValue, :IsFunc, :Func, :ModifiableInfo

        def initialize(paramname=nil, paramtype=nil, supportfunc=nil, default=nil, description=nil, currentvalue=nil, needreboot=nil, max=nil, min=nil, enumvalue=nil, isglobal=nil, matchtype=nil, matchvalue=nil, isfunc=nil, func=nil, modifiableinfo=nil)
          @ParamName = paramname
          @ParamType = paramtype
          @SupportFunc = supportfunc
          @Default = default
          @Description = description
          @CurrentValue = currentvalue
          @NeedReboot = needreboot
          @Max = max
          @Min = min
          @EnumValue = enumvalue
          @IsGlobal = isglobal
          @MatchType = matchtype
          @MatchValue = matchvalue
          @IsFunc = isfunc
          @Func = func
          @ModifiableInfo = modifiableinfo
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @ParamType = params['ParamType']
          @SupportFunc = params['SupportFunc']
          @Default = params['Default']
          @Description = params['Description']
          @CurrentValue = params['CurrentValue']
          @NeedReboot = params['NeedReboot']
          @Max = params['Max']
          @Min = params['Min']
          @EnumValue = params['EnumValue']
          @IsGlobal = params['IsGlobal']
          @MatchType = params['MatchType']
          @MatchValue = params['MatchValue']
          @IsFunc = params['IsFunc']
          @Func = params['Func']
          unless params['ModifiableInfo'].nil?
            @ModifiableInfo = ModifiableInfo.new
            @ModifiableInfo.deserialize(params['ModifiableInfo'])
          end
        end
      end

      # 参数信息
      class ParamInfo < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param Default: 默认值
        # @type Default: String
        # @param EnumValue: 参数为enum/string/bool时，可选值列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnumValue: Array
        # @param Max: 参数类型为float/integer时的最大值
        # @type Max: String
        # @param Min: 参数类型为float/integer时的最小值
        # @type Min: String
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param NeedReboot: 是否需要重启生效
        # @type NeedReboot: Integer
        # @param ParamType: 参数类型：integer/float/string/enum/bool
        # @type ParamType: String
        # @param MatchType: 匹配类型，multiVal, regex在参数类型是string时使用
        # @type MatchType: String
        # @param MatchValue: 匹配目标值，当multiVal时，各个key用;分割
        # @type MatchValue: String
        # @param Description: 参数描述
        # @type Description: String
        # @param IsGlobal: 是否为全局参数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsGlobal: Integer
        # @param ModifiableInfo: 参数是否可修改
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifiableInfo: :class:`Tencentcloud::Cynosdb.v20190107.models.ModifiableInfo`
        # @param IsFunc: 是否为函数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFunc: Boolean
        # @param Func: 函数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Func: String

        attr_accessor :CurrentValue, :Default, :EnumValue, :Max, :Min, :ParamName, :NeedReboot, :ParamType, :MatchType, :MatchValue, :Description, :IsGlobal, :ModifiableInfo, :IsFunc, :Func

        def initialize(currentvalue=nil, default=nil, enumvalue=nil, max=nil, min=nil, paramname=nil, needreboot=nil, paramtype=nil, matchtype=nil, matchvalue=nil, description=nil, isglobal=nil, modifiableinfo=nil, isfunc=nil, func=nil)
          @CurrentValue = currentvalue
          @Default = default
          @EnumValue = enumvalue
          @Max = max
          @Min = min
          @ParamName = paramname
          @NeedReboot = needreboot
          @ParamType = paramtype
          @MatchType = matchtype
          @MatchValue = matchvalue
          @Description = description
          @IsGlobal = isglobal
          @ModifiableInfo = modifiableinfo
          @IsFunc = isfunc
          @Func = func
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @Default = params['Default']
          @EnumValue = params['EnumValue']
          @Max = params['Max']
          @Min = params['Min']
          @ParamName = params['ParamName']
          @NeedReboot = params['NeedReboot']
          @ParamType = params['ParamType']
          @MatchType = params['MatchType']
          @MatchValue = params['MatchValue']
          @Description = params['Description']
          @IsGlobal = params['IsGlobal']
          unless params['ModifiableInfo'].nil?
            @ModifiableInfo = ModifiableInfo.new
            @ModifiableInfo.deserialize(params['ModifiableInfo'])
          end
          @IsFunc = params['IsFunc']
          @Func = params['Func']
        end
      end

      # 修改参数时，传入参数描述
      class ParamItem < TencentCloud::Common::AbstractModel
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param OldValue: 原有值
        # @type OldValue: String

        attr_accessor :ParamName, :CurrentValue, :OldValue

        def initialize(paramname=nil, currentvalue=nil, oldvalue=nil)
          @ParamName = paramname
          @CurrentValue = currentvalue
          @OldValue = oldvalue
        end

        def deserialize(params)
          @ParamName = params['ParamName']
          @CurrentValue = params['CurrentValue']
          @OldValue = params['OldValue']
        end
      end

      # 实例参数信息
      class ParamItemDetail < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param Default: 默认值
        # @type Default: String
        # @param EnumValue: 参数的可选枚举值。如果为非枚举值，则为空
        # @type EnumValue: Array
        # @param IsGlobal: 1：全局参数，0：非全局参数
        # @type IsGlobal: Integer
        # @param Max: 最大值
        # @type Max: String
        # @param Min: 最小值
        # @type Min: String
        # @param NeedReboot: 修改参数后，是否需要重启数据库以使参数生效。0-不需要重启，1-需要重启。
        # @type NeedReboot: Integer
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param ParamType: 参数类型：integer，enum，float，string，func
        # @type ParamType: String
        # @param Description: 参数描述
        # @type Description: String
        # @param IsFunc: 类型是否为公式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsFunc: Boolean
        # @param Func: 参数配置公式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Func: String

        attr_accessor :CurrentValue, :Default, :EnumValue, :IsGlobal, :Max, :Min, :NeedReboot, :ParamName, :ParamType, :Description, :IsFunc, :Func

        def initialize(currentvalue=nil, default=nil, enumvalue=nil, isglobal=nil, max=nil, min=nil, needreboot=nil, paramname=nil, paramtype=nil, description=nil, isfunc=nil, func=nil)
          @CurrentValue = currentvalue
          @Default = default
          @EnumValue = enumvalue
          @IsGlobal = isglobal
          @Max = max
          @Min = min
          @NeedReboot = needreboot
          @ParamName = paramname
          @ParamType = paramtype
          @Description = description
          @IsFunc = isfunc
          @Func = func
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @Default = params['Default']
          @EnumValue = params['EnumValue']
          @IsGlobal = params['IsGlobal']
          @Max = params['Max']
          @Min = params['Min']
          @NeedReboot = params['NeedReboot']
          @ParamName = params['ParamName']
          @ParamType = params['ParamType']
          @Description = params['Description']
          @IsFunc = params['IsFunc']
          @Func = params['Func']
        end
      end

      # 参数模板信息
      class ParamTemplateListInfo < TencentCloud::Common::AbstractModel
        # @param Id: 参数模板ID
        # @type Id: Integer
        # @param TemplateName: 参数模板名称
        # @type TemplateName: String
        # @param TemplateDescription: 参数模板描述
        # @type TemplateDescription: String
        # @param EngineVersion: 引擎版本
        # @type EngineVersion: String
        # @param DbMode: 数据库类型，可选值：NORMAL，SERVERLESS
        # @type DbMode: String
        # @param ParamInfoSet: 参数模板详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ParamInfoSet: Array

        attr_accessor :Id, :TemplateName, :TemplateDescription, :EngineVersion, :DbMode, :ParamInfoSet

        def initialize(id=nil, templatename=nil, templatedescription=nil, engineversion=nil, dbmode=nil, paraminfoset=nil)
          @Id = id
          @TemplateName = templatename
          @TemplateDescription = templatedescription
          @EngineVersion = engineversion
          @DbMode = dbmode
          @ParamInfoSet = paraminfoset
        end

        def deserialize(params)
          @Id = params['Id']
          @TemplateName = params['TemplateName']
          @TemplateDescription = params['TemplateDescription']
          @EngineVersion = params['EngineVersion']
          @DbMode = params['DbMode']
          unless params['ParamInfoSet'].nil?
            @ParamInfoSet = []
            params['ParamInfoSet'].each do |i|
              templateparaminfo_tmp = TemplateParamInfo.new
              templateparaminfo_tmp.deserialize(i)
              @ParamInfoSet << templateparaminfo_tmp
            end
          end
        end
      end

      # PauseServerless请求参数结构体
      class PauseServerlessRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ForcePause: 是否强制暂停，忽略当前的用户链接  0:不强制  1:强制， 默认为1
        # @type ForcePause: Integer

        attr_accessor :ClusterId, :ForcePause

        def initialize(clusterid=nil, forcepause=nil)
          @ClusterId = clusterid
          @ForcePause = forcepause
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ForcePause = params['ForcePause']
        end
      end

      # PauseServerless返回参数结构体
      class PauseServerlessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 安全组规则
      class PolicyRule < TencentCloud::Common::AbstractModel
        # @param Action: 策略，ACCEPT或者DROP
        # @type Action: String
        # @param CidrIp: 来源IP或IP段，例如192.168.0.0/16
        # @type CidrIp: String
        # @param PortRange: 端口
        # @type PortRange: String
        # @param IpProtocol: 网络协议，支持udp、tcp等
        # @type IpProtocol: String
        # @param ServiceModule: 协议端口ID或者协议端口组ID。
        # @type ServiceModule: String
        # @param AddressModule: IP地址ID或者ID地址组ID。
        # @type AddressModule: String
        # @param Id: id
        # @type Id: String
        # @param Desc: 描述
        # @type Desc: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol, :ServiceModule, :AddressModule, :Id, :Desc

        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil, servicemodule=nil, addressmodule=nil, id=nil, desc=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
          @ServiceModule = servicemodule
          @AddressModule = addressmodule
          @Id = id
          @Desc = desc
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
          @ServiceModule = params['ServiceModule']
          @AddressModule = params['AddressModule']
          @Id = params['Id']
          @Desc = params['Desc']
        end
      end

      # 数据库代理连接池信息
      class ProxyConnectionPoolInfo < TencentCloud::Common::AbstractModel
        # @param ConnectionPoolTimeOut: 连接池保持阈值：单位（秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionPoolTimeOut: Integer
        # @param OpenConnectionPool: 是否开启了连接池
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenConnectionPool: String
        # @param ConnectionPoolType: 连接池类型：SessionConnectionPool（会话级别连接池）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionPoolType: String

        attr_accessor :ConnectionPoolTimeOut, :OpenConnectionPool, :ConnectionPoolType

        def initialize(connectionpooltimeout=nil, openconnectionpool=nil, connectionpooltype=nil)
          @ConnectionPoolTimeOut = connectionpooltimeout
          @OpenConnectionPool = openconnectionpool
          @ConnectionPoolType = connectionpooltype
        end

        def deserialize(params)
          @ConnectionPoolTimeOut = params['ConnectionPoolTimeOut']
          @OpenConnectionPool = params['OpenConnectionPool']
          @ConnectionPoolType = params['ConnectionPoolType']
        end
      end

      # proxy组
      class ProxyGroup < TencentCloud::Common::AbstractModel
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String
        # @param ProxyNodeCount: 数据库代理组节点个数
        # @type ProxyNodeCount: Integer
        # @param Status: 数据库代理组状态
        # @type Status: String
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param CurrentProxyVersion: 当前代理版本
        # @type CurrentProxyVersion: String
        # @param ClusterId: 集群ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClusterId: String
        # @param AppId: 用户AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AppId: Integer
        # @param OpenRw: 读写节点开通数据库代理
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenRw: String

        attr_accessor :ProxyGroupId, :ProxyNodeCount, :Status, :Region, :Zone, :CurrentProxyVersion, :ClusterId, :AppId, :OpenRw

        def initialize(proxygroupid=nil, proxynodecount=nil, status=nil, region=nil, zone=nil, currentproxyversion=nil, clusterid=nil, appid=nil, openrw=nil)
          @ProxyGroupId = proxygroupid
          @ProxyNodeCount = proxynodecount
          @Status = status
          @Region = region
          @Zone = zone
          @CurrentProxyVersion = currentproxyversion
          @ClusterId = clusterid
          @AppId = appid
          @OpenRw = openrw
        end

        def deserialize(params)
          @ProxyGroupId = params['ProxyGroupId']
          @ProxyNodeCount = params['ProxyNodeCount']
          @Status = params['Status']
          @Region = params['Region']
          @Zone = params['Zone']
          @CurrentProxyVersion = params['CurrentProxyVersion']
          @ClusterId = params['ClusterId']
          @AppId = params['AppId']
          @OpenRw = params['OpenRw']
        end
      end

      # 数据库代理组详细信息
      class ProxyGroupInfo < TencentCloud::Common::AbstractModel
        # @param ProxyGroup: 数据库代理组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyGroup: :class:`Tencentcloud::Cynosdb.v20190107.models.ProxyGroup`
        # @param ProxyGroupRwInfo: 数据库代理组读写分离信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyGroupRwInfo: :class:`Tencentcloud::Cynosdb.v20190107.models.ProxyGroupRwInfo`
        # @param ProxyNodes: 数据库代理节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyNodes: Array
        # @param ConnectionPool: 数据库代理连接池信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConnectionPool: :class:`Tencentcloud::Cynosdb.v20190107.models.ProxyConnectionPoolInfo`
        # @param NetAddrInfos: 数据库代理网络信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetAddrInfos: Array
        # @param Tasks: 数据库代理任务集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array

        attr_accessor :ProxyGroup, :ProxyGroupRwInfo, :ProxyNodes, :ConnectionPool, :NetAddrInfos, :Tasks

        def initialize(proxygroup=nil, proxygrouprwinfo=nil, proxynodes=nil, connectionpool=nil, netaddrinfos=nil, tasks=nil)
          @ProxyGroup = proxygroup
          @ProxyGroupRwInfo = proxygrouprwinfo
          @ProxyNodes = proxynodes
          @ConnectionPool = connectionpool
          @NetAddrInfos = netaddrinfos
          @Tasks = tasks
        end

        def deserialize(params)
          unless params['ProxyGroup'].nil?
            @ProxyGroup = ProxyGroup.new
            @ProxyGroup.deserialize(params['ProxyGroup'])
          end
          unless params['ProxyGroupRwInfo'].nil?
            @ProxyGroupRwInfo = ProxyGroupRwInfo.new
            @ProxyGroupRwInfo.deserialize(params['ProxyGroupRwInfo'])
          end
          unless params['ProxyNodes'].nil?
            @ProxyNodes = []
            params['ProxyNodes'].each do |i|
              proxynodeinfo_tmp = ProxyNodeInfo.new
              proxynodeinfo_tmp.deserialize(i)
              @ProxyNodes << proxynodeinfo_tmp
            end
          end
          unless params['ConnectionPool'].nil?
            @ConnectionPool = ProxyConnectionPoolInfo.new
            @ConnectionPool.deserialize(params['ConnectionPool'])
          end
          unless params['NetAddrInfos'].nil?
            @NetAddrInfos = []
            params['NetAddrInfos'].each do |i|
              netaddr_tmp = NetAddr.new
              netaddr_tmp.deserialize(i)
              @NetAddrInfos << netaddr_tmp
            end
          end
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              objecttask_tmp = ObjectTask.new
              objecttask_tmp.deserialize(i)
              @Tasks << objecttask_tmp
            end
          end
        end
      end

      # 数据库代理组读写分离信息
      class ProxyGroupRwInfo < TencentCloud::Common::AbstractModel
        # @param ConsistencyType: 一致性类型 eventual-最终一致性,global-全局一致性,session-会话一致性
        # @type ConsistencyType: String
        # @param ConsistencyTimeOut: 一致性超时时间
        # @type ConsistencyTimeOut: Integer
        # @param WeightMode: 权重模式 system-系统分配，custom-自定义
        # @type WeightMode: String
        # @param FailOver: 是否开启故障转移
        # @type FailOver: String
        # @param AutoAddRo: 是否自动添加只读实例，yes-是，no-不自动添加
        # @type AutoAddRo: String
        # @param InstanceWeights: 实例权重数组
        # @type InstanceWeights: Array
        # @param OpenRw: 是否开通读写节点，yse-是，no-否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpenRw: String
        # @param RwType: 读写属性，可选值：READWRITE,READONLY
        # @type RwType: String
        # @param TransSplit: 事务拆分
        # @type TransSplit: Boolean
        # @param AccessMode: 连接模式，可选值：balance，nearby
        # @type AccessMode: String

        attr_accessor :ConsistencyType, :ConsistencyTimeOut, :WeightMode, :FailOver, :AutoAddRo, :InstanceWeights, :OpenRw, :RwType, :TransSplit, :AccessMode

        def initialize(consistencytype=nil, consistencytimeout=nil, weightmode=nil, failover=nil, autoaddro=nil, instanceweights=nil, openrw=nil, rwtype=nil, transsplit=nil, accessmode=nil)
          @ConsistencyType = consistencytype
          @ConsistencyTimeOut = consistencytimeout
          @WeightMode = weightmode
          @FailOver = failover
          @AutoAddRo = autoaddro
          @InstanceWeights = instanceweights
          @OpenRw = openrw
          @RwType = rwtype
          @TransSplit = transsplit
          @AccessMode = accessmode
        end

        def deserialize(params)
          @ConsistencyType = params['ConsistencyType']
          @ConsistencyTimeOut = params['ConsistencyTimeOut']
          @WeightMode = params['WeightMode']
          @FailOver = params['FailOver']
          @AutoAddRo = params['AutoAddRo']
          unless params['InstanceWeights'].nil?
            @InstanceWeights = []
            params['InstanceWeights'].each do |i|
              proxyinstanceweight_tmp = ProxyInstanceWeight.new
              proxyinstanceweight_tmp.deserialize(i)
              @InstanceWeights << proxyinstanceweight_tmp
            end
          end
          @OpenRw = params['OpenRw']
          @RwType = params['RwType']
          @TransSplit = params['TransSplit']
          @AccessMode = params['AccessMode']
        end
      end

      # 数据库代理，读写分离实例权重
      class ProxyInstanceWeight < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param Weight: 实例权重
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

      # 数据库代理组节点
      class ProxyNodeInfo < TencentCloud::Common::AbstractModel
        # @param ProxyNodeId: 数据库代理节点ID
        # @type ProxyNodeId: String
        # @param ProxyNodeConnections: 节点当前连接数, DescribeProxyNodes接口此字段值不返回
        # @type ProxyNodeConnections: Integer
        # @param Cpu: 数据库代理节点cpu
        # @type Cpu: Integer
        # @param Mem: 数据库代理节点内存
        # @type Mem: Integer
        # @param Status: 数据库代理节点状态
        # @type Status: String
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param AppId: 用户AppID
        # @type AppId: Integer
        # @param Region: 地域
        # @type Region: String
        # @param Zone: 可用区
        # @type Zone: String

        attr_accessor :ProxyNodeId, :ProxyNodeConnections, :Cpu, :Mem, :Status, :ProxyGroupId, :ClusterId, :AppId, :Region, :Zone

        def initialize(proxynodeid=nil, proxynodeconnections=nil, cpu=nil, mem=nil, status=nil, proxygroupid=nil, clusterid=nil, appid=nil, region=nil, zone=nil)
          @ProxyNodeId = proxynodeid
          @ProxyNodeConnections = proxynodeconnections
          @Cpu = cpu
          @Mem = mem
          @Status = status
          @ProxyGroupId = proxygroupid
          @ClusterId = clusterid
          @AppId = appid
          @Region = region
          @Zone = zone
        end

        def deserialize(params)
          @ProxyNodeId = params['ProxyNodeId']
          @ProxyNodeConnections = params['ProxyNodeConnections']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @Status = params['Status']
          @ProxyGroupId = params['ProxyGroupId']
          @ClusterId = params['ClusterId']
          @AppId = params['AppId']
          @Region = params['Region']
          @Zone = params['Zone']
        end
      end

      # 数据库代理规格
      class ProxySpec < TencentCloud::Common::AbstractModel
        # @param Cpu: 数据库代理cpu核数
        # @type Cpu: Integer
        # @param Mem: 数据库代理内存
        # @type Mem: Integer

        attr_accessor :Cpu, :Mem

        def initialize(cpu=nil, mem=nil)
          @Cpu = cpu
          @Mem = mem
        end

        def deserialize(params)
          @Cpu = params['Cpu']
          @Mem = params['Mem']
        end
      end

      # proxy节点可用区内个数
      class ProxyZone < TencentCloud::Common::AbstractModel
        # @param ProxyNodeZone: proxy节点可用区
        # @type ProxyNodeZone: String
        # @param ProxyNodeCount: proxy节点数量
        # @type ProxyNodeCount: Integer

        attr_accessor :ProxyNodeZone, :ProxyNodeCount

        def initialize(proxynodezone=nil, proxynodecount=nil)
          @ProxyNodeZone = proxynodezone
          @ProxyNodeCount = proxynodecount
        end

        def deserialize(params)
          @ProxyNodeZone = params['ProxyNodeZone']
          @ProxyNodeCount = params['ProxyNodeCount']
        end
      end

      # 查询过滤器
      class QueryFilter < TencentCloud::Common::AbstractModel
        # @param Names: 搜索字段，目前支持："InstanceId", "ProjectId", "InstanceName", "Vip"
        # @type Names: Array
        # @param Values: 搜索字符串
        # @type Values: Array
        # @param ExactMatch: 是否精确匹配
        # @type ExactMatch: Boolean
        # @param Name: 搜索字段
        # @type Name: String
        # @param Operator: 操作符
        # @type Operator: String

        attr_accessor :Names, :Values, :ExactMatch, :Name, :Operator

        def initialize(names=nil, values=nil, exactmatch=nil, name=nil, operator=nil)
          @Names = names
          @Values = values
          @ExactMatch = exactmatch
          @Name = name
          @Operator = operator
        end

        def deserialize(params)
          @Names = params['Names']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
          @Name = params['Name']
          @Operator = params['Operator']
        end
      end

      # 查询参数过滤器
      class QueryParamFilter < TencentCloud::Common::AbstractModel
        # @param Names: 搜索字段，目前支持："InstanceId", "ProjectId", "InstanceName", "Vip"
        # @type Names: Array
        # @param Values: 搜索字符串
        # @type Values: Array
        # @param ExactMatch: 是否精确匹配
        # @type ExactMatch: Boolean

        attr_accessor :Names, :Values, :ExactMatch

        def initialize(names=nil, values=nil, exactmatch=nil)
          @Names = names
          @Values = values
          @ExactMatch = exactmatch
        end

        def deserialize(params)
          @Names = params['Names']
          @Values = params['Values']
          @ExactMatch = params['ExactMatch']
        end
      end

      # RefundResourcePackage请求参数结构体
      class RefundResourcePackageRequest < TencentCloud::Common::AbstractModel
        # @param PackageId: 资源包唯一ID
        # @type PackageId: String

        attr_accessor :PackageId

        def initialize(packageid=nil)
          @PackageId = packageid
        end

        def deserialize(params)
          @PackageId = params['PackageId']
        end
      end

      # RefundResourcePackage返回参数结构体
      class RefundResourcePackageResponse < TencentCloud::Common::AbstractModel
        # @param DealNames: 每个物品对应一个dealName，业务需要根据dealName保证发货接口幂等
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealNames, :RequestId

        def initialize(dealnames=nil, requestid=nil)
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # ReloadBalanceProxyNode请求参数结构体
      class ReloadBalanceProxyNodeRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String

        attr_accessor :ClusterId, :ProxyGroupId

        def initialize(clusterid=nil, proxygroupid=nil)
          @ClusterId = clusterid
          @ProxyGroupId = proxygroupid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ProxyGroupId = params['ProxyGroupId']
        end
      end

      # ReloadBalanceProxyNode返回参数结构体
      class ReloadBalanceProxyNodeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :TaskId, :RequestId

        def initialize(flowid=nil, taskid=nil, requestid=nil)
          @FlowId = flowid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # RemoveClusterSlaveZone请求参数结构体
      class RemoveClusterSlaveZoneRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SlaveZone: 从可用区
        # @type SlaveZone: String

        attr_accessor :ClusterId, :SlaveZone

        def initialize(clusterid=nil, slavezone=nil)
          @ClusterId = clusterid
          @SlaveZone = slavezone
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SlaveZone = params['SlaveZone']
        end
      end

      # RemoveClusterSlaveZone返回参数结构体
      class RemoveClusterSlaveZoneResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步FlowId
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ResetAccountPassword请求参数结构体
      class ResetAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param AccountName: 数据库账号名
        # @type AccountName: String
        # @param AccountPassword: 数据库账号新密码
        # @type AccountPassword: String
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Host: 主机，不填默认为"%"
        # @type Host: String

        attr_accessor :AccountName, :AccountPassword, :ClusterId, :Host

        def initialize(accountname=nil, accountpassword=nil, clusterid=nil, host=nil)
          @AccountName = accountname
          @AccountPassword = accountpassword
          @ClusterId = clusterid
          @Host = host
        end

        def deserialize(params)
          @AccountName = params['AccountName']
          @AccountPassword = params['AccountPassword']
          @ClusterId = params['ClusterId']
          @Host = params['Host']
        end
      end

      # ResetAccountPassword返回参数结构体
      class ResetAccountPasswordResponse < TencentCloud::Common::AbstractModel
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

      # 资源包信息
      class ResourcePackage < TencentCloud::Common::AbstractModel
        # @param PackageId: 资源包的唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageId: String
        # @param PackageType: 资源包类型：CCU：计算资源包
        # DISK：存储资源包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String

        attr_accessor :PackageId, :PackageType

        def initialize(packageid=nil, packagetype=nil)
          @PackageId = packageid
          @PackageType = packagetype
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @PackageType = params['PackageType']
        end
      end

      # RestartInstance请求参数结构体
      class RestartInstanceRequest < TencentCloud::Common::AbstractModel
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

      # RestartInstance返回参数结构体
      class RestartInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ResumeServerless请求参数结构体
      class ResumeServerlessRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String

        attr_accessor :ClusterId

        def initialize(clusterid=nil)
          @ClusterId = clusterid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
        end
      end

      # ResumeServerless返回参数结构体
      class ResumeServerlessResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # RevokeAccountPrivileges请求参数结构体
      class RevokeAccountPrivilegesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Account: 账号信息
        # @type Account: :class:`Tencentcloud::Cynosdb.v20190107.models.InputAccount`
        # @param DbTablePrivileges: 数据库表权限数组
        # @type DbTablePrivileges: Array
        # @param DbTables: 数据库表信息
        # @type DbTables: Array

        attr_accessor :ClusterId, :Account, :DbTablePrivileges, :DbTables

        def initialize(clusterid=nil, account=nil, dbtableprivileges=nil, dbtables=nil)
          @ClusterId = clusterid
          @Account = account
          @DbTablePrivileges = dbtableprivileges
          @DbTables = dbtables
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          unless params['Account'].nil?
            @Account = InputAccount.new
            @Account.deserialize(params['Account'])
          end
          @DbTablePrivileges = params['DbTablePrivileges']
          unless params['DbTables'].nil?
            @DbTables = []
            params['DbTables'].each do |i|
              dbtable_tmp = DbTable.new
              dbtable_tmp.deserialize(i)
              @DbTables << dbtable_tmp
            end
          end
        end
      end

      # RevokeAccountPrivileges返回参数结构体
      class RevokeAccountPrivilegesResponse < TencentCloud::Common::AbstractModel
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

      # RollBackCluster请求参数结构体
      class RollBackClusterRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param RollbackStrategy: 回档策略 timeRollback-按时间点回档 snapRollback-按备份文件回档
        # @type RollbackStrategy: String
        # @param RollbackId: 回档ID
        # @type RollbackId: Integer
        # @param ExpectTime: 期望回档时间
        # @type ExpectTime: String
        # @param ExpectTimeThresh: 期望阈值（已废弃）
        # @type ExpectTimeThresh: Integer
        # @param RollbackDatabases: 回档数据库列表
        # @type RollbackDatabases: Array
        # @param RollbackTables: 回档数据库表列表
        # @type RollbackTables: Array
        # @param RollbackMode: 按时间点回档模式，full: 普通; db: 快速; table: 极速  （默认是普通）
        # @type RollbackMode: String

        attr_accessor :ClusterId, :RollbackStrategy, :RollbackId, :ExpectTime, :ExpectTimeThresh, :RollbackDatabases, :RollbackTables, :RollbackMode

        def initialize(clusterid=nil, rollbackstrategy=nil, rollbackid=nil, expecttime=nil, expecttimethresh=nil, rollbackdatabases=nil, rollbacktables=nil, rollbackmode=nil)
          @ClusterId = clusterid
          @RollbackStrategy = rollbackstrategy
          @RollbackId = rollbackid
          @ExpectTime = expecttime
          @ExpectTimeThresh = expecttimethresh
          @RollbackDatabases = rollbackdatabases
          @RollbackTables = rollbacktables
          @RollbackMode = rollbackmode
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @RollbackStrategy = params['RollbackStrategy']
          @RollbackId = params['RollbackId']
          @ExpectTime = params['ExpectTime']
          @ExpectTimeThresh = params['ExpectTimeThresh']
          unless params['RollbackDatabases'].nil?
            @RollbackDatabases = []
            params['RollbackDatabases'].each do |i|
              rollbackdatabase_tmp = RollbackDatabase.new
              rollbackdatabase_tmp.deserialize(i)
              @RollbackDatabases << rollbackdatabase_tmp
            end
          end
          unless params['RollbackTables'].nil?
            @RollbackTables = []
            params['RollbackTables'].each do |i|
              rollbacktable_tmp = RollbackTable.new
              rollbacktable_tmp.deserialize(i)
              @RollbackTables << rollbacktable_tmp
            end
          end
          @RollbackMode = params['RollbackMode']
        end
      end

      # RollBackCluster返回参数结构体
      class RollBackClusterResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 回滚数据库信息
      class RollbackDatabase < TencentCloud::Common::AbstractModel
        # @param OldDatabase: 旧数据库名称
        # @type OldDatabase: String
        # @param NewDatabase: 新数据库名称
        # @type NewDatabase: String

        attr_accessor :OldDatabase, :NewDatabase

        def initialize(olddatabase=nil, newdatabase=nil)
          @OldDatabase = olddatabase
          @NewDatabase = newdatabase
        end

        def deserialize(params)
          @OldDatabase = params['OldDatabase']
          @NewDatabase = params['NewDatabase']
        end
      end

      # 回档数据库及表
      class RollbackTable < TencentCloud::Common::AbstractModel
        # @param Database: 数据库名称
        # @type Database: String
        # @param Tables: 数据库表
        # @type Tables: Array

        attr_accessor :Database, :Tables

        def initialize(database=nil, tables=nil)
          @Database = database
          @Tables = tables
        end

        def deserialize(params)
          @Database = params['Database']
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              rollbacktableinfo_tmp = RollbackTableInfo.new
              rollbacktableinfo_tmp.deserialize(i)
              @Tables << rollbacktableinfo_tmp
            end
          end
        end
      end

      # 回档表信息
      class RollbackTableInfo < TencentCloud::Common::AbstractModel
        # @param OldTable: 旧表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldTable: String
        # @param NewTable: 新表名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewTable: String

        attr_accessor :OldTable, :NewTable

        def initialize(oldtable=nil, newtable=nil)
          @OldTable = oldtable
          @NewTable = newtable
        end

        def deserialize(params)
          @OldTable = params['OldTable']
          @NewTable = params['NewTable']
        end
      end

      # 可回档的时间范围
      class RollbackTimeRange < TencentCloud::Common::AbstractModel
        # @param TimeRangeStart: 开始时间
        # @type TimeRangeStart: String
        # @param TimeRangeEnd: 结束时间
        # @type TimeRangeEnd: String

        attr_accessor :TimeRangeStart, :TimeRangeEnd

        def initialize(timerangestart=nil, timerangeend=nil)
          @TimeRangeStart = timerangestart
          @TimeRangeEnd = timerangeend
        end

        def deserialize(params)
          @TimeRangeStart = params['TimeRangeStart']
          @TimeRangeEnd = params['TimeRangeEnd']
        end
      end

      # 审计规则的规则过滤条件
      class RuleFilters < TencentCloud::Common::AbstractModel
        # @param Type: 审计规则过滤条件的参数名称。可选值：host – 客户端 IP；user – 数据库账户；dbName – 数据库名称；sqlType-SQL类型；sql-sql语句。
        # @type Type: String
        # @param Compare: 审计规则过滤条件的匹配类型。可选值：INC – 包含；EXC – 不包含；EQS – 等于；NEQ – 不等于。
        # @type Compare: String
        # @param Value: 审计规则过滤条件的匹配值。
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

      # 资源包明细说明
      class SalePackageSpec < TencentCloud::Common::AbstractModel
        # @param PackageRegion: 资源包使用地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageRegion: String
        # @param PackageType: 资源包类型
        # CCU-计算资源包
        # DISK-存储资源包
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param PackageVersion: 资源包版本
        # base-基础版本，common-通用版本，enterprise-企业版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageVersion: String
        # @param MinPackageSpec: 当前版本资源包最小资源数，计算资源单位：个；存储资源：GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MinPackageSpec: Float
        # @param MaxPackageSpec: 当前版本资源包最大资源数，计算资源单位：个；存储资源：GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxPackageSpec: Float
        # @param ExpireDay: 资源包有效期，单位:天
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireDay: Integer

        attr_accessor :PackageRegion, :PackageType, :PackageVersion, :MinPackageSpec, :MaxPackageSpec, :ExpireDay

        def initialize(packageregion=nil, packagetype=nil, packageversion=nil, minpackagespec=nil, maxpackagespec=nil, expireday=nil)
          @PackageRegion = packageregion
          @PackageType = packagetype
          @PackageVersion = packageversion
          @MinPackageSpec = minpackagespec
          @MaxPackageSpec = maxpackagespec
          @ExpireDay = expireday
        end

        def deserialize(params)
          @PackageRegion = params['PackageRegion']
          @PackageType = params['PackageType']
          @PackageVersion = params['PackageVersion']
          @MinPackageSpec = params['MinPackageSpec']
          @MaxPackageSpec = params['MaxPackageSpec']
          @ExpireDay = params['ExpireDay']
        end
      end

      # 售卖地域信息
      class SaleRegion < TencentCloud::Common::AbstractModel
        # @param Region: 地域英文名
        # @type Region: String
        # @param RegionId: 地域数字ID
        # @type RegionId: Integer
        # @param RegionZh: 地域中文名
        # @type RegionZh: String
        # @param ZoneSet: 可售卖可用区列表
        # @type ZoneSet: Array
        # @param DbType: 引擎类型
        # @type DbType: String
        # @param Modules: 地域模块支持情况
        # @type Modules: Array

        attr_accessor :Region, :RegionId, :RegionZh, :ZoneSet, :DbType, :Modules

        def initialize(region=nil, regionid=nil, regionzh=nil, zoneset=nil, dbtype=nil, modules=nil)
          @Region = region
          @RegionId = regionid
          @RegionZh = regionzh
          @ZoneSet = zoneset
          @DbType = dbtype
          @Modules = modules
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionId = params['RegionId']
          @RegionZh = params['RegionZh']
          unless params['ZoneSet'].nil?
            @ZoneSet = []
            params['ZoneSet'].each do |i|
              salezone_tmp = SaleZone.new
              salezone_tmp.deserialize(i)
              @ZoneSet << salezone_tmp
            end
          end
          @DbType = params['DbType']
          unless params['Modules'].nil?
            @Modules = []
            params['Modules'].each do |i|
              module_tmp = Module.new
              module_tmp.deserialize(i)
              @Modules << module_tmp
            end
          end
        end
      end

      # 售卖可用区信息
      class SaleZone < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区英文名
        # @type Zone: String
        # @param ZoneId: 可用区数字ID
        # @type ZoneId: Integer
        # @param ZoneZh: 可用区中文名
        # @type ZoneZh: String
        # @param IsSupportServerless: 是否支持serverless集群<br>
        # 0:不支持<br>
        # 1:支持
        # @type IsSupportServerless: Integer
        # @param IsSupportNormal: 是否支持普通集群<br>
        # 0:不支持<br>
        # 1:支持
        # @type IsSupportNormal: Integer
        # @param PhysicalZone: 物理区
        # @type PhysicalZone: String
        # @param HasPermission: 用户是否有可用区权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasPermission: Boolean
        # @param IsWholeRdmaZone: 是否为全链路RDMA可用区
        # @type IsWholeRdmaZone: String

        attr_accessor :Zone, :ZoneId, :ZoneZh, :IsSupportServerless, :IsSupportNormal, :PhysicalZone, :HasPermission, :IsWholeRdmaZone

        def initialize(zone=nil, zoneid=nil, zonezh=nil, issupportserverless=nil, issupportnormal=nil, physicalzone=nil, haspermission=nil, iswholerdmazone=nil)
          @Zone = zone
          @ZoneId = zoneid
          @ZoneZh = zonezh
          @IsSupportServerless = issupportserverless
          @IsSupportNormal = issupportnormal
          @PhysicalZone = physicalzone
          @HasPermission = haspermission
          @IsWholeRdmaZone = iswholerdmazone
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @ZoneZh = params['ZoneZh']
          @IsSupportServerless = params['IsSupportServerless']
          @IsSupportNormal = params['IsSupportNormal']
          @PhysicalZone = params['PhysicalZone']
          @HasPermission = params['HasPermission']
          @IsWholeRdmaZone = params['IsWholeRdmaZone']
        end
      end

      # SearchClusterDatabases请求参数结构体
      class SearchClusterDatabasesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Database: 数据库名
        # @type Database: String
        # @param MatchType: 是否精确搜索。
        # 0: 模糊搜索 1:精确搜索
        # 默认为0
        # @type MatchType: Integer

        attr_accessor :ClusterId, :Database, :MatchType

        def initialize(clusterid=nil, database=nil, matchtype=nil)
          @ClusterId = clusterid
          @Database = database
          @MatchType = matchtype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Database = params['Database']
          @MatchType = params['MatchType']
        end
      end

      # SearchClusterDatabases返回参数结构体
      class SearchClusterDatabasesResponse < TencentCloud::Common::AbstractModel
        # @param Databases: 数据库列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Databases: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Databases, :RequestId

        def initialize(databases=nil, requestid=nil)
          @Databases = databases
          @RequestId = requestid
        end

        def deserialize(params)
          @Databases = params['Databases']
          @RequestId = params['RequestId']
        end
      end

      # SearchClusterTables请求参数结构体
      class SearchClusterTablesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param Database: 数据库名
        # @type Database: String
        # @param Table: 数据表名
        # @type Table: String
        # @param TableType: 数据表类型：
        # view：只返回 view，
        # base_table： 只返回基本表，
        # all：返回 view 和表
        # @type TableType: String

        attr_accessor :ClusterId, :Database, :Table, :TableType

        def initialize(clusterid=nil, database=nil, table=nil, tabletype=nil)
          @ClusterId = clusterid
          @Database = database
          @Table = table
          @TableType = tabletype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Database = params['Database']
          @Table = params['Table']
          @TableType = params['TableType']
        end
      end

      # SearchClusterTables返回参数结构体
      class SearchClusterTablesResponse < TencentCloud::Common::AbstractModel
        # @param Tables: 数据表列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tables: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tables, :RequestId

        def initialize(tables=nil, requestid=nil)
          @Tables = tables
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tables'].nil?
            @Tables = []
            params['Tables'].each do |i|
              databasetables_tmp = DatabaseTables.new
              databasetables_tmp.deserialize(i)
              @Tables << databasetables_tmp
            end
          end
          @RequestId = params['RequestId']
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
              policyrule_tmp = PolicyRule.new
              policyrule_tmp.deserialize(i)
              @Inbound << policyrule_tmp
            end
          end
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              policyrule_tmp = PolicyRule.new
              policyrule_tmp.deserialize(i)
              @Outbound << policyrule_tmp
            end
          end
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
        end
      end

      # SetRenewFlag请求参数结构体
      class SetRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param ResourceIds: 需操作的实例ID
        # @type ResourceIds: Array
        # @param AutoRenewFlag: 自动续费标志位，续费标记 0:正常续费  1:自动续费 2:到期不续
        # @type AutoRenewFlag: Integer

        attr_accessor :ResourceIds, :AutoRenewFlag

        def initialize(resourceids=nil, autorenewflag=nil)
          @ResourceIds = resourceids
          @AutoRenewFlag = autorenewflag
        end

        def deserialize(params)
          @ResourceIds = params['ResourceIds']
          @AutoRenewFlag = params['AutoRenewFlag']
        end
      end

      # SetRenewFlag返回参数结构体
      class SetRenewFlagResponse < TencentCloud::Common::AbstractModel
        # @param Count: 操作成功实例数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId

        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # 实例慢查询信息
      class SlowQueriesItem < TencentCloud::Common::AbstractModel
        # @param Timestamp: 执行时间戳
        # @type Timestamp: Integer
        # @param QueryTime: 执行时长，单位秒
        # @type QueryTime: Float
        # @param SqlText: sql语句
        # @type SqlText: String
        # @param UserHost: 客户端host
        # @type UserHost: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param Database: 数据库名
        # @type Database: String
        # @param LockTime: 锁时长，单位秒
        # @type LockTime: Float
        # @param RowsExamined: 扫描行数
        # @type RowsExamined: Integer
        # @param RowsSent: 返回行数
        # @type RowsSent: Integer
        # @param SqlTemplate: sql模板
        # @type SqlTemplate: String
        # @param SqlMd5: sql语句md5
        # @type SqlMd5: String

        attr_accessor :Timestamp, :QueryTime, :SqlText, :UserHost, :UserName, :Database, :LockTime, :RowsExamined, :RowsSent, :SqlTemplate, :SqlMd5

        def initialize(timestamp=nil, querytime=nil, sqltext=nil, userhost=nil, username=nil, database=nil, locktime=nil, rowsexamined=nil, rowssent=nil, sqltemplate=nil, sqlmd5=nil)
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
          @SqlMd5 = sqlmd5
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
          @SqlMd5 = params['SqlMd5']
        end
      end

      # SwitchClusterVpc请求参数结构体
      class SwitchClusterVpcRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param UniqVpcId: 字符串vpc id
        # @type UniqVpcId: String
        # @param UniqSubnetId: 字符串子网id
        # @type UniqSubnetId: String
        # @param OldIpReserveHours: 旧地址回收时间
        # @type OldIpReserveHours: Integer

        attr_accessor :ClusterId, :UniqVpcId, :UniqSubnetId, :OldIpReserveHours

        def initialize(clusterid=nil, uniqvpcid=nil, uniqsubnetid=nil, oldipreservehours=nil)
          @ClusterId = clusterid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @OldIpReserveHours = oldipreservehours
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @OldIpReserveHours = params['OldIpReserveHours']
        end
      end

      # SwitchClusterVpc返回参数结构体
      class SwitchClusterVpcResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务id。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # SwitchClusterZone请求参数结构体
      class SwitchClusterZoneRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param OldZone: 当前可用区
        # @type OldZone: String
        # @param NewZone: 要切换到的可用区
        # @type NewZone: String
        # @param IsInMaintainPeriod: 维护期间执行-yes,立即执行-no
        # @type IsInMaintainPeriod: String

        attr_accessor :ClusterId, :OldZone, :NewZone, :IsInMaintainPeriod

        def initialize(clusterid=nil, oldzone=nil, newzone=nil, isinmaintainperiod=nil)
          @ClusterId = clusterid
          @OldZone = oldzone
          @NewZone = newzone
          @IsInMaintainPeriod = isinmaintainperiod
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @OldZone = params['OldZone']
          @NewZone = params['NewZone']
          @IsInMaintainPeriod = params['IsInMaintainPeriod']
        end
      end

      # SwitchClusterZone返回参数结构体
      class SwitchClusterZoneResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步FlowId
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # SwitchProxyVpc请求参数结构体
      class SwitchProxyVpcRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param UniqVpcId: 字符串vpc id
        # @type UniqVpcId: String
        # @param UniqSubnetId: 字符串子网id
        # @type UniqSubnetId: String
        # @param OldIpReserveHours: 旧地址回收时间
        # @type OldIpReserveHours: Integer
        # @param ProxyGroupId: 数据库代理组Id（该参数为必填项，可以通过DescribeProxies接口获得）
        # @type ProxyGroupId: String

        attr_accessor :ClusterId, :UniqVpcId, :UniqSubnetId, :OldIpReserveHours, :ProxyGroupId

        def initialize(clusterid=nil, uniqvpcid=nil, uniqsubnetid=nil, oldipreservehours=nil, proxygroupid=nil)
          @ClusterId = clusterid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @OldIpReserveHours = oldipreservehours
          @ProxyGroupId = proxygroupid
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @OldIpReserveHours = params['OldIpReserveHours']
          @ProxyGroupId = params['ProxyGroupId']
        end
      end

      # SwitchProxyVpc返回参数结构体
      class SwitchProxyVpcResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务id。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # mysql表权限
      class TablePrivileges < TencentCloud::Common::AbstractModel
        # @param Db: 数据库名
        # @type Db: String
        # @param TableName: 表名
        # @type TableName: String
        # @param Privileges: 权限列表
        # @type Privileges: Array

        attr_accessor :Db, :TableName, :Privileges

        def initialize(db=nil, tablename=nil, privileges=nil)
          @Db = db
          @TableName = tablename
          @Privileges = privileges
        end

        def deserialize(params)
          @Db = params['Db']
          @TableName = params['TableName']
          @Privileges = params['Privileges']
        end
      end

      # 集群绑定的标签信息，包含标签键TagKey和标签值TagValue
      class Tag < TencentCloud::Common::AbstractModel
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

      # 参数模板详情
      class TemplateParamInfo < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 当前值
        # @type CurrentValue: String
        # @param Default: 默认值
        # @type Default: String
        # @param EnumValue: 参数类型为enum时可选的值类型集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnumValue: Array
        # @param Max: 参数类型为float/integer时的最大值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Max: String
        # @param Min: 参数类型为float/integer时的最小值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Min: String
        # @param ParamName: 参数名称
        # @type ParamName: String
        # @param NeedReboot: 是否需要重启
        # @type NeedReboot: Integer
        # @param Description: 参数描述
        # @type Description: String
        # @param ParamType: 参数类型，integer/float/string/enum
        # @type ParamType: String

        attr_accessor :CurrentValue, :Default, :EnumValue, :Max, :Min, :ParamName, :NeedReboot, :Description, :ParamType

        def initialize(currentvalue=nil, default=nil, enumvalue=nil, max=nil, min=nil, paramname=nil, needreboot=nil, description=nil, paramtype=nil)
          @CurrentValue = currentvalue
          @Default = default
          @EnumValue = enumvalue
          @Max = max
          @Min = min
          @ParamName = paramname
          @NeedReboot = needreboot
          @Description = description
          @ParamType = paramtype
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @Default = params['Default']
          @EnumValue = params['EnumValue']
          @Max = params['Max']
          @Min = params['Min']
          @ParamName = params['ParamName']
          @NeedReboot = params['NeedReboot']
          @Description = params['Description']
          @ParamType = params['ParamType']
        end
      end

      # 计费询价结果
      class TradePrice < TencentCloud::Common::AbstractModel
        # @param TotalPrice: 预付费模式下资源总价，不包含优惠，单位:分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPrice: Integer
        # @param Discount: 总的折扣，100表示100%不打折
        # @type Discount: Float
        # @param TotalPriceDiscount: 预付费模式下的优惠后总价, 单位: 分,例如用户享有折扣 =TotalPrice × Discount
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPriceDiscount: Integer
        # @param UnitPrice: 后付费模式下的单位资源价格，不包含优惠，单位:分
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Integer
        # @param UnitPriceDiscount: 优惠后后付费模式下的单位资源价格, 单位: 分,例如用户享有折扣=UnitPricet × Discount
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Integer
        # @param ChargeUnit: 计费价格单位
        # @type ChargeUnit: String

        attr_accessor :TotalPrice, :Discount, :TotalPriceDiscount, :UnitPrice, :UnitPriceDiscount, :ChargeUnit

        def initialize(totalprice=nil, discount=nil, totalpricediscount=nil, unitprice=nil, unitpricediscount=nil, chargeunit=nil)
          @TotalPrice = totalprice
          @Discount = discount
          @TotalPriceDiscount = totalpricediscount
          @UnitPrice = unitprice
          @UnitPriceDiscount = unitpricediscount
          @ChargeUnit = chargeunit
        end

        def deserialize(params)
          @TotalPrice = params['TotalPrice']
          @Discount = params['Discount']
          @TotalPriceDiscount = params['TotalPriceDiscount']
          @UnitPrice = params['UnitPrice']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @ChargeUnit = params['ChargeUnit']
        end
      end

      # UnbindClusterResourcePackages请求参数结构体
      class UnbindClusterResourcePackagesRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param PackageIds: 资源包唯一ID,如果不传，解绑该实例绑定的所有资源包
        # @type PackageIds: Array

        attr_accessor :ClusterId, :PackageIds

        def initialize(clusterid=nil, packageids=nil)
          @ClusterId = clusterid
          @PackageIds = packageids
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @PackageIds = params['PackageIds']
        end
      end

      # UnbindClusterResourcePackages返回参数结构体
      class UnbindClusterResourcePackagesResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeClusterVersion请求参数结构体
      class UpgradeClusterVersionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群id
        # @type ClusterId: String
        # @param CynosVersion: 内核版本
        # @type CynosVersion: String
        # @param UpgradeType: 升级时间类型，可选：upgradeImmediate,upgradeInMaintain
        # @type UpgradeType: String

        attr_accessor :ClusterId, :CynosVersion, :UpgradeType

        def initialize(clusterid=nil, cynosversion=nil, upgradetype=nil)
          @ClusterId = clusterid
          @CynosVersion = cynosversion
          @UpgradeType = upgradetype
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @CynosVersion = params['CynosVersion']
          @UpgradeType = params['UpgradeType']
        end
      end

      # UpgradeClusterVersion返回参数结构体
      class UpgradeClusterVersionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务id
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId

        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeInstance请求参数结构体
      class UpgradeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Cpu: 数据库CPU
        # @type Cpu: Integer
        # @param Memory: 数据库内存，单位GB
        # @type Memory: Integer
        # @param UpgradeType: 升级类型：upgradeImmediate，upgradeInMaintain
        # @type UpgradeType: String
        # @param StorageLimit: 该参数已废弃
        # @type StorageLimit: Integer
        # @param AutoVoucher: 是否自动选择代金券 1是 0否 默认为0
        # @type AutoVoucher: Integer
        # @param DbType: 该参数已废弃
        # @type DbType: String
        # @param DealMode: 交易模式 0-下单并支付 1-下单
        # @type DealMode: Integer
        # @param UpgradeMode: NormalUpgrade：普通变配，FastUpgrade：极速变配，若变配过程判断会造成闪断，变配流程会终止。
        # @type UpgradeMode: String

        attr_accessor :InstanceId, :Cpu, :Memory, :UpgradeType, :StorageLimit, :AutoVoucher, :DbType, :DealMode, :UpgradeMode

        def initialize(instanceid=nil, cpu=nil, memory=nil, upgradetype=nil, storagelimit=nil, autovoucher=nil, dbtype=nil, dealmode=nil, upgrademode=nil)
          @InstanceId = instanceid
          @Cpu = cpu
          @Memory = memory
          @UpgradeType = upgradetype
          @StorageLimit = storagelimit
          @AutoVoucher = autovoucher
          @DbType = dbtype
          @DealMode = dealmode
          @UpgradeMode = upgrademode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @UpgradeType = params['UpgradeType']
          @StorageLimit = params['StorageLimit']
          @AutoVoucher = params['AutoVoucher']
          @DbType = params['DbType']
          @DealMode = params['DealMode']
          @UpgradeMode = params['UpgradeMode']
        end
      end

      # UpgradeInstance返回参数结构体
      class UpgradeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param TranId: 冻结流水ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranId: String
        # @param BigDealIds: 大订单号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BigDealIds: Array
        # @param DealNames: 订单号
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TranId, :BigDealIds, :DealNames, :RequestId

        def initialize(tranid=nil, bigdealids=nil, dealnames=nil, requestid=nil)
          @TranId = tranid
          @BigDealIds = bigdealids
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @TranId = params['TranId']
          @BigDealIds = params['BigDealIds']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeProxy请求参数结构体
      class UpgradeProxyRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param Cpu: cpu核数
        # @type Cpu: Integer
        # @param Mem: 内存
        # @type Mem: Integer
        # @param ProxyCount: 数据库代理组节点个数
        # @type ProxyCount: Integer
        # @param ProxyGroupId: 数据库代理组ID（已废弃）
        # @type ProxyGroupId: String
        # @param ReloadBalance: 重新负载均衡：auto（自动），manual（手动）
        # @type ReloadBalance: String
        # @param IsInMaintainPeriod: 升级时间 ：no（升级完成时）yes（实例维护时间）
        # @type IsInMaintainPeriod: String
        # @param ProxyZones: 数据库代理节点信息
        # @type ProxyZones: Array

        attr_accessor :ClusterId, :Cpu, :Mem, :ProxyCount, :ProxyGroupId, :ReloadBalance, :IsInMaintainPeriod, :ProxyZones

        def initialize(clusterid=nil, cpu=nil, mem=nil, proxycount=nil, proxygroupid=nil, reloadbalance=nil, isinmaintainperiod=nil, proxyzones=nil)
          @ClusterId = clusterid
          @Cpu = cpu
          @Mem = mem
          @ProxyCount = proxycount
          @ProxyGroupId = proxygroupid
          @ReloadBalance = reloadbalance
          @IsInMaintainPeriod = isinmaintainperiod
          @ProxyZones = proxyzones
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @ProxyCount = params['ProxyCount']
          @ProxyGroupId = params['ProxyGroupId']
          @ReloadBalance = params['ReloadBalance']
          @IsInMaintainPeriod = params['IsInMaintainPeriod']
          unless params['ProxyZones'].nil?
            @ProxyZones = []
            params['ProxyZones'].each do |i|
              proxyzone_tmp = ProxyZone.new
              proxyzone_tmp.deserialize(i)
              @ProxyZones << proxyzone_tmp
            end
          end
        end
      end

      # UpgradeProxy返回参数结构体
      class UpgradeProxyResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :TaskId, :RequestId

        def initialize(flowid=nil, taskid=nil, requestid=nil)
          @FlowId = flowid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeProxyVersion请求参数结构体
      class UpgradeProxyVersionRequest < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param SrcProxyVersion: 数据库代理当前版本
        # @type SrcProxyVersion: String
        # @param DstProxyVersion: 数据库代理升级版本
        # @type DstProxyVersion: String
        # @param ProxyGroupId: 数据库代理组ID
        # @type ProxyGroupId: String
        # @param IsInMaintainPeriod: 升级时间 ：no（升级完成时）yes（实例维护时间）
        # @type IsInMaintainPeriod: String

        attr_accessor :ClusterId, :SrcProxyVersion, :DstProxyVersion, :ProxyGroupId, :IsInMaintainPeriod

        def initialize(clusterid=nil, srcproxyversion=nil, dstproxyversion=nil, proxygroupid=nil, isinmaintainperiod=nil)
          @ClusterId = clusterid
          @SrcProxyVersion = srcproxyversion
          @DstProxyVersion = dstproxyversion
          @ProxyGroupId = proxygroupid
          @IsInMaintainPeriod = isinmaintainperiod
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @SrcProxyVersion = params['SrcProxyVersion']
          @DstProxyVersion = params['DstProxyVersion']
          @ProxyGroupId = params['ProxyGroupId']
          @IsInMaintainPeriod = params['IsInMaintainPeriod']
        end
      end

      # UpgradeProxyVersion返回参数结构体
      class UpgradeProxyVersionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程ID
        # @type FlowId: Integer
        # @param TaskId: 异步任务id
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :TaskId, :RequestId

        def initialize(flowid=nil, taskid=nil, requestid=nil)
          @FlowId = flowid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 用户主机权限
      class UserHostPrivilege < TencentCloud::Common::AbstractModel
        # @param DbUserName: 授权用户
        # @type DbUserName: String
        # @param DbHost: 客户端ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbHost: String
        # @param DbPrivilege: 用户权限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DbPrivilege: String

        attr_accessor :DbUserName, :DbHost, :DbPrivilege

        def initialize(dbusername=nil, dbhost=nil, dbprivilege=nil)
          @DbUserName = dbusername
          @DbHost = dbhost
          @DbPrivilege = dbprivilege
        end

        def deserialize(params)
          @DbUserName = params['DbUserName']
          @DbHost = params['DbHost']
          @DbPrivilege = params['DbPrivilege']
        end
      end

      # 可用区库存信息
      class ZoneStockInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param HasStock: 是否有库存
        # @type HasStock: Boolean
        # @param StockCount: 库存数量
        # @type StockCount: Integer

        attr_accessor :Zone, :HasStock, :StockCount

        def initialize(zone=nil, hasstock=nil, stockcount=nil)
          @Zone = zone
          @HasStock = hasstock
          @StockCount = stockcount
        end

        def deserialize(params)
          @Zone = params['Zone']
          @HasStock = params['HasStock']
          @StockCount = params['StockCount']
        end
      end

    end
  end
end

