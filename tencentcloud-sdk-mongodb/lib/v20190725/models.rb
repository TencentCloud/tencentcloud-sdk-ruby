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
  module Mongodb
    module V20190725
      # 修改实例节点详情。
      class AddNodeList < TencentCloud::Common::AbstractModel
        # @param Role: 需要新增的节点角色。
        # - SECONDARY：Mongod 节点。
        # - READONLY：只读节点。
        # - MONGOS：Mongos 节点。
        # @type Role: String
        # @param Zone: 节点所对应的可用区。当前支持的可用区，请参见[地域和可用区](https://cloud.tencent.com/document/product/240/3637)。
        # - 单可用区，所有节点在同一可用区。
        # - 多可用区：当前标准规格是三可用区分布，主从节点不在同一可用区，需注意配置新增节点对应的可用区，且新增后必须满足任意2个可用区节点数大于第3个可用区原则。
        # @type Zone: String

        attr_accessor :Role, :Zone

        def initialize(role=nil, zone=nil)
          @Role = role
          @Zone = zone
        end

        def deserialize(params)
          @Role = params['Role']
          @Zone = params['Zone']
        end
      end

      # AssignProject请求参数结构体
      class AssignProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表，请登录[MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceIds: Array
        # @param ProjectId: 项目ID，用户已创建项目的唯一ID。请在控制台账号中心的[项目管理](https://console.cloud.tencent.com/project)中复制项目 ID。
        # @type ProjectId: Integer

        attr_accessor :InstanceIds, :ProjectId

        def initialize(instanceids=nil, projectid=nil)
          @InstanceIds = instanceids
          @ProjectId = projectid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ProjectId = params['ProjectId']
        end
      end

      # AssignProject返回参数结构体
      class AssignProjectResponse < TencentCloud::Common::AbstractModel
        # @param FlowIds: 返回的异步任务ID列表。
        # @type FlowIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowIds, :RequestId

        def initialize(flowids=nil, requestid=nil)
          @FlowIds = flowids
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowIds = params['FlowIds']
          @RequestId = params['RequestId']
        end
      end

      # 审计实例信息
      class AuditInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param AuditStatus: 审计状态。
        # @type AuditStatus: String
        # @param AuditTask: 是否存在审计任务，0：无任务，1：创建中，2：关闭中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditTask: Integer
        # @param LogExpireDay: 审计日志过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogExpireDay: Integer
        # @param HighLogExpireDay: 高频日志过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighLogExpireDay: Integer
        # @param LowLogExpireDay: 低频日志过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LowLogExpireDay: Integer
        # @param BillingAmount: 费用信息。
        # @type BillingAmount: Float
        # @param HighRealStorage: 高频存储容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighRealStorage: Float
        # @param LowRealStorage: 低频存储容量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LowRealStorage: Float
        # @param InstanceInfo: 实例详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceInfo: :class:`Tencentcloud::Mongodb.v20190725.models.InstanceInfo`
        # @param PerformancesAnalyse: 性能分析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PerformancesAnalyse: Integer
        # @param AuditAll: true表示全审计，false表示规则审计
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditAll: Boolean
        # @param CreateAt: 实例审计最近一次的开通时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateAt: String
        # @param RuleTemplateIds: 实例绑定的规则模版ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RuleTemplateIds: Array
        # @param Deliver: 是否开启投递：ON，OFF
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deliver: String
        # @param DeliverSummary: 日志投递信息
        # @type DeliverSummary: Array
        # @param OldRule: 旧规则
        # @type OldRule: Boolean
        # @param RealStorage: 实际存储容量
        # @type RealStorage: Float

        attr_accessor :InstanceId, :AuditStatus, :AuditTask, :LogExpireDay, :HighLogExpireDay, :LowLogExpireDay, :BillingAmount, :HighRealStorage, :LowRealStorage, :InstanceInfo, :PerformancesAnalyse, :AuditAll, :CreateAt, :RuleTemplateIds, :Deliver, :DeliverSummary, :OldRule, :RealStorage

        def initialize(instanceid=nil, auditstatus=nil, audittask=nil, logexpireday=nil, highlogexpireday=nil, lowlogexpireday=nil, billingamount=nil, highrealstorage=nil, lowrealstorage=nil, instanceinfo=nil, performancesanalyse=nil, auditall=nil, createat=nil, ruletemplateids=nil, deliver=nil, deliversummary=nil, oldrule=nil, realstorage=nil)
          @InstanceId = instanceid
          @AuditStatus = auditstatus
          @AuditTask = audittask
          @LogExpireDay = logexpireday
          @HighLogExpireDay = highlogexpireday
          @LowLogExpireDay = lowlogexpireday
          @BillingAmount = billingamount
          @HighRealStorage = highrealstorage
          @LowRealStorage = lowrealstorage
          @InstanceInfo = instanceinfo
          @PerformancesAnalyse = performancesanalyse
          @AuditAll = auditall
          @CreateAt = createat
          @RuleTemplateIds = ruletemplateids
          @Deliver = deliver
          @DeliverSummary = deliversummary
          @OldRule = oldrule
          @RealStorage = realstorage
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
          unless params['InstanceInfo'].nil?
            @InstanceInfo = InstanceInfo.new
            @InstanceInfo.deserialize(params['InstanceInfo'])
          end
          @PerformancesAnalyse = params['PerformancesAnalyse']
          @AuditAll = params['AuditAll']
          @CreateAt = params['CreateAt']
          @RuleTemplateIds = params['RuleTemplateIds']
          @Deliver = params['Deliver']
          unless params['DeliverSummary'].nil?
            @DeliverSummary = []
            params['DeliverSummary'].each do |i|
              deliversummary_tmp = DeliverSummary.new
              deliversummary_tmp.deserialize(i)
              @DeliverSummary << deliversummary_tmp
            end
          end
          @OldRule = params['OldRule']
          @RealStorage = params['RealStorage']
        end
      end

      # 审计日志过滤条件
      class AuditLogFilter < TencentCloud::Common::AbstractModel
        # @param Host: 客户端地址。
        # @type Host: Array
        # @param User: 用户名。
        # @type User: Array
        # @param ExecTime: 执行时间。单位为：ms。表示筛选执行时间大于该值的审计日志。
        # @type ExecTime: Integer
        # @param AffectRows: 影响行数。表示筛选影响行数大于该值的审计日志。
        # @type AffectRows: Integer
        # @param Atype: 操作类型。
        # @type Atype: Array
        # @param Result: 执行结果。
        # @type Result: Array
        # @param Param: 根据此关键字过滤日志
        # @type Param: Array

        attr_accessor :Host, :User, :ExecTime, :AffectRows, :Atype, :Result, :Param

        def initialize(host=nil, user=nil, exectime=nil, affectrows=nil, atype=nil, result=nil, param=nil)
          @Host = host
          @User = user
          @ExecTime = exectime
          @AffectRows = affectrows
          @Atype = atype
          @Result = result
          @Param = param
        end

        def deserialize(params)
          @Host = params['Host']
          @User = params['User']
          @ExecTime = params['ExecTime']
          @AffectRows = params['AffectRows']
          @Atype = params['Atype']
          @Result = params['Result']
          @Param = params['Param']
        end
      end

      # 用户权限
      class Auth < TencentCloud::Common::AbstractModel
        # @param Mask: 当前账号具有的权限信息。
        # - 0：无权限。
        # - 1：只读。
        # - 3：读写。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mask: Integer
        # @param NameSpace: 指具有当前账号权限的数据库名。
        # - \* ：表示所有数据库。
        # - db.name：表示特定 name 的数据库。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NameSpace: String

        attr_accessor :Mask, :NameSpace

        def initialize(mask=nil, namespace=nil)
          @Mask = mask
          @NameSpace = namespace
        end

        def deserialize(params)
          @Mask = params['Mask']
          @NameSpace = params['NameSpace']
        end
      end

      # 备份下载任务
      class BackupDownloadTask < TencentCloud::Common::AbstractModel
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param BackupName: 备份文件名。
        # @type BackupName: String
        # @param ReplicaSetId: 分片名称。
        # @type ReplicaSetId: String
        # @param BackupSize: 备份数据大小，单位：字节。
        # @type BackupSize: Integer
        # @param Status: 任务状态。
        # - 0：等待执行。
        # - 1：正在下载。
        # - 2：下载完成。
        # - 3：下载失败。
        # - 4：等待重试。
        # @type Status: Integer
        # @param Percent: 任务进度百分比。
        # @type Percent: Integer
        # @param TimeSpend: 耗时，单位为秒。
        # @type TimeSpend: Integer
        # @param Url: 备份数据下载链接。
        # @type Url: String
        # @param BackupMethod: 备份方式。
        # - 0：逻辑备份。
        # - 1：物理备份。
        # - 3：快照备份。
        # **说明**:
        # 1. 通用版实例支持逻辑备份与物理备份。云盘版实例支持物理备份与快照备份，暂不支持逻辑备份。
        # 2. 实例开通存储加密，则备份方式不能为物理备份。
        # @type BackupMethod: Integer
        # @param BackupDesc: 发起备份时指定的备注信息。
        # @type BackupDesc: String
        # @param Region: 地区信息。
        # @type Region: String
        # @param Bucket: Bucket信息。
        # @type Bucket: String

        attr_accessor :CreateTime, :BackupName, :ReplicaSetId, :BackupSize, :Status, :Percent, :TimeSpend, :Url, :BackupMethod, :BackupDesc, :Region, :Bucket

        def initialize(createtime=nil, backupname=nil, replicasetid=nil, backupsize=nil, status=nil, percent=nil, timespend=nil, url=nil, backupmethod=nil, backupdesc=nil, region=nil, bucket=nil)
          @CreateTime = createtime
          @BackupName = backupname
          @ReplicaSetId = replicasetid
          @BackupSize = backupsize
          @Status = status
          @Percent = percent
          @TimeSpend = timespend
          @Url = url
          @BackupMethod = backupmethod
          @BackupDesc = backupdesc
          @Region = region
          @Bucket = bucket
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @BackupName = params['BackupName']
          @ReplicaSetId = params['ReplicaSetId']
          @BackupSize = params['BackupSize']
          @Status = params['Status']
          @Percent = params['Percent']
          @TimeSpend = params['TimeSpend']
          @Url = params['Url']
          @BackupMethod = params['BackupMethod']
          @BackupDesc = params['BackupDesc']
          @Region = params['Region']
          @Bucket = params['Bucket']
        end
      end

      # 创建备份下载任务结果。
      class BackupDownloadTaskStatus < TencentCloud::Common::AbstractModel
        # @param ReplicaSetId: 分片名。
        # @type ReplicaSetId: String
        # @param Status: 任务当前状态。
        # - 0：等待执行。
        # - 1：正在下载。
        # - 2：下载完成。
        # - 3：下载失败。
        # - 4：等待重试。
        # @type Status: Integer

        attr_accessor :ReplicaSetId, :Status

        def initialize(replicasetid=nil, status=nil)
          @ReplicaSetId = replicasetid
          @Status = status
        end

        def deserialize(params)
          @ReplicaSetId = params['ReplicaSetId']
          @Status = params['Status']
        end
      end

      # 备份信息。
      class BackupInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param BackupType: 备份方式。
        # - 0：自动备份。
        # - 1：手动备份。
        # @type BackupType: Integer
        # @param BackupName: 备份文件名称。
        # @type BackupName: String
        # @param BackupDesc: 备份任务备注信息。
        # @type BackupDesc: String
        # @param BackupSize: 备份文件大小，单位：KB。
        # @type BackupSize: Integer
        # @param StartTime: 备份开始时间。
        # @type StartTime: String
        # @param EndTime: 备份结束时间。
        # @type EndTime: String
        # @param Status: 备份状态。
        # - 1：备份中。
        # - 2：备份成功。
        # @type Status: Integer
        # @param BackupMethod: 备份方式。
        # - 0：逻辑备份。
        # - 1：物理备份。
        # - 3：快照备份。
        # **说明:**
        # - 通用版实例支持逻辑备份与物理备份。云盘版实例支持物理备份与快照备份，暂不支持逻辑备份。
        # - 实例开通存储加密，则备份方式不能为物理备份。
        # @type BackupMethod: Integer
        # @param BackId: 备份记录 ID。
        # @type BackId: Integer
        # @param DeleteTime: 备份删除时间。
        # @type DeleteTime: String
        # @param BackupRegion: 异地备份地域。
        # @type BackupRegion: String
        # @param RestoreTime: 备份支持的回档时间。
        # @type RestoreTime: String

        attr_accessor :InstanceId, :BackupType, :BackupName, :BackupDesc, :BackupSize, :StartTime, :EndTime, :Status, :BackupMethod, :BackId, :DeleteTime, :BackupRegion, :RestoreTime

        def initialize(instanceid=nil, backuptype=nil, backupname=nil, backupdesc=nil, backupsize=nil, starttime=nil, endtime=nil, status=nil, backupmethod=nil, backid=nil, deletetime=nil, backupregion=nil, restoretime=nil)
          @InstanceId = instanceid
          @BackupType = backuptype
          @BackupName = backupname
          @BackupDesc = backupdesc
          @BackupSize = backupsize
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @BackupMethod = backupmethod
          @BackId = backid
          @DeleteTime = deletetime
          @BackupRegion = backupregion
          @RestoreTime = restoretime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupType = params['BackupType']
          @BackupName = params['BackupName']
          @BackupDesc = params['BackupDesc']
          @BackupSize = params['BackupSize']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @BackupMethod = params['BackupMethod']
          @BackId = params['BackId']
          @DeleteTime = params['DeleteTime']
          @BackupRegion = params['BackupRegion']
          @RestoreTime = params['RestoreTime']
        end
      end

      # 客户端连接信息，包括客户端IP和连接数
      class ClientConnection < TencentCloud::Common::AbstractModel
        # @param IP: 连接的客户端 IP。
        # @type IP: String
        # @param Count: 对应客户端 IP 的连接数。
        # @type Count: Integer
        # @param InternalService: 是否为内部 IP。
        # @type InternalService: Boolean

        attr_accessor :IP, :Count, :InternalService

        def initialize(ip=nil, count=nil, internalservice=nil)
          @IP = ip
          @Count = count
          @InternalService = internalservice
        end

        def deserialize(params)
          @IP = params['IP']
          @Count = params['Count']
          @InternalService = params['InternalService']
        end
      end

      # CreateAccountUser请求参数结构体
      class CreateAccountUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param UserName: 新账号名称。其格式要求如下：
        # - 字符范围[1,64]。
        # - 可输入[A,Z]、[a,z]、[1,9]范围的字符以及下划线“\_”与短划线“-”。
        # @type UserName: String
        # @param Password: 新账号密码。密码复杂度要求如下：
        # - 字符长度范围[8,32]。
        # - 至少包含字母、数字和特殊字符（叹号“!”、at"@"、井号“#”、百分号“%”、插入符“^”、星号“\*”、小括号“()”、下划线“\_”）中的两种。
        # @type Password: String
        # @param MongoUserPassword: mongouser 账号对应的密码。mongouser 为系统默认账号，即为创建实例时，设置的密码。
        # @type MongoUserPassword: String
        # @param UserDesc: 账号备注信息。
        # @type UserDesc: String
        # @param AuthRole: 账号的读写权限信息。
        # @type AuthRole: Array

        attr_accessor :InstanceId, :UserName, :Password, :MongoUserPassword, :UserDesc, :AuthRole

        def initialize(instanceid=nil, username=nil, password=nil, mongouserpassword=nil, userdesc=nil, authrole=nil)
          @InstanceId = instanceid
          @UserName = username
          @Password = password
          @MongoUserPassword = mongouserpassword
          @UserDesc = userdesc
          @AuthRole = authrole
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Password = params['Password']
          @MongoUserPassword = params['MongoUserPassword']
          @UserDesc = params['UserDesc']
          unless params['AuthRole'].nil?
            @AuthRole = []
            params['AuthRole'].each do |i|
              auth_tmp = Auth.new
              auth_tmp.deserialize(i)
              @AuthRole << auth_tmp
            end
          end
        end
      end

      # CreateAccountUser返回参数结构体
      class CreateAccountUserResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 创建任务ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateAuditLogFile请求参数结构体
      class CreateAuditLogFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cmgo-xfts****，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param StartTime: 开始时间，格式为："2021-07-12 10:29:20"。
        # @type StartTime: String
        # @param EndTime: 结束时间，格式为："2021-07-12 10:39:20"。
        # @type EndTime: String
        # @param Order: 审计日志文件的排序方式。
        # <ul><li>ASC：升序。</li><li>DESC：降序。</li></ul>
        # @type Order: String
        # @param OrderBy: 审计日志文件的排序字段。当前支持的取值包括：
        # <ul><li>timestamp：时间戳。</li><li>affectRows：影响行数。</li><li>execTime：执行时间。</li></ul>
        # @type OrderBy: String
        # @param Filter: 过滤条件。可按设置的过滤条件过滤审计日志。
        # @type Filter: :class:`Tencentcloud::Mongodb.v20190725.models.AuditLogFilter`

        attr_accessor :InstanceId, :StartTime, :EndTime, :Order, :OrderBy, :Filter

        def initialize(instanceid=nil, starttime=nil, endtime=nil, order=nil, orderby=nil, filter=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Order = order
          @OrderBy = orderby
          @Filter = filter
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

      # CreateBackupDBInstance请求参数结构体
      class CreateBackupDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupMethod: 设置备份方式。
        # - 0：逻辑备份。
        # - 1：物理备份。
        # - 3：快照备份。
        # **说明**:
        # 1. 通用版实例支持逻辑备份与物理备份。云盘版实例支持物理备份与快照备份，暂不支持逻辑备份。
        # 2. 实例开通存储加密，则备份方式不能为物理备份。
        # @type BackupMethod: Integer
        # @param BackupRemark: 备份备注信息。
        # @type BackupRemark: String

        attr_accessor :InstanceId, :BackupMethod, :BackupRemark

        def initialize(instanceid=nil, backupmethod=nil, backupremark=nil)
          @InstanceId = instanceid
          @BackupMethod = backupmethod
          @BackupRemark = backupremark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMethod = params['BackupMethod']
          @BackupRemark = params['BackupRemark']
        end
      end

      # CreateBackupDBInstance返回参数结构体
      class CreateBackupDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 查询备份流程的状态。
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

      # CreateBackupDownloadTask请求参数结构体
      class CreateBackupDownloadTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupName: 要下载的备份文件名。请通过 [DescribeDBBackups](https://cloud.tencent.com/document/product/240/38574) 接口获取。
        # @type BackupName: String
        # @param BackupSets: 指定要下载的副本集节点 ID 或分片集群的分片节点 ID 列表。
        # - 如副本集实例 ID 为 cmgo-p8vnipr5，示例：BackupSets.0=cmgo-p8vnipr5_0，可下载全量数据。
        # - 如分片集群实例 ID 为 cmgo-p8vnipr5，示例：BackupSets.0=cmgo-p8vnipr5_0&BackupSets.1=cmgo-p8vnipr5_1，即下载分片0和分片1的数据。分片集群如需全量下载，请按示例方式传入全部分片名称。
        # @type BackupSets: Array

        attr_accessor :InstanceId, :BackupName, :BackupSets

        def initialize(instanceid=nil, backupname=nil, backupsets=nil)
          @InstanceId = instanceid
          @BackupName = backupname
          @BackupSets = backupsets
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupName = params['BackupName']
          unless params['BackupSets'].nil?
            @BackupSets = []
            params['BackupSets'].each do |i|
              replicasetinfo_tmp = ReplicaSetInfo.new
              replicasetinfo_tmp.deserialize(i)
              @BackupSets << replicasetinfo_tmp
            end
          end
        end
      end

      # CreateBackupDownloadTask返回参数结构体
      class CreateBackupDownloadTaskResponse < TencentCloud::Common::AbstractModel
        # @param Tasks: 下载任务状态。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Tasks, :RequestId

        def initialize(tasks=nil, requestid=nil)
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              backupdownloadtaskstatus_tmp = BackupDownloadTaskStatus.new
              backupdownloadtaskstatus_tmp.deserialize(i)
              @Tasks << backupdownloadtaskstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstanceHour请求参数结构体
      class CreateDBInstanceHourRequest < TencentCloud::Common::AbstractModel
        # @param Memory: 实例内存大小，单位：GB。具体售卖的内存规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB。每一个 CPU 规格对应的最大磁盘与最小磁盘范围，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Volume: Integer
        # @param ReplicateSetNum: - 创建副本集实例，指副本集数量，该参数只能为1。
        # - 创建分片集群实例，指分片的数量。请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询分片数量的取值范围，其返回的数据结构SpecItems中的参数MinReplicateSetNum与MaxReplicateSetNum分别对应其最小值与最大值。
        # @type ReplicateSetNum: Integer
        # @param NodeNum: - 创建副本集实例，指每个副本集内主从节点数量。每个副本集所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 创建分片集群实例，指每个分片的主从节点数量。每个分片所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type NodeNum: Integer
        # @param MongoVersion: 指版本信息。具体支持的版本信息 ，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # - MONGO_70_WT：MongoDB 7.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param MachineCode: 产品规格类型。
        # - HIO10G：通用高HIO万兆型。
        # - HCD：云盘版类型。
        # @type MachineCode: String
        # @param GoodsNum: 实例数量，最小值1，最大值为30。
        # @type GoodsNum: Integer
        # @param Zone: 可用区信息，输入格式如：ap-guangzhou-2。
        # - 具体信息，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 该参数为主可用区，如果多可用区部署，Zone必须是AvailabilityZoneList中的一个。
        # @type Zone: String
        # @param ClusterType: 实例架构类型。
        # - REPLSET：副本集。
        # - SHARD：分片集群。
        # @type ClusterType: String
        # @param VpcId: 私有网络ID。
        # - 仅支持配置私有网络，必须选择一个与实例同一地域的私有网络。请登录[私有网络控制台](https://console.cloud.tencent.com/vpc)获取可使用的私有网络 ID。
        # - 实例创建成功之后，支持更换私有网络。具体操作，请参见[更换网络](https://cloud.tencent.com/document/product/239/30910)。
        # @type VpcId: String
        # @param SubnetId: 私有网络 VPC 的子网 ID。
        # - 必须在已选的私有网络内指定一个子网。请登录[私有网络控制台](https://console.cloud.tencent.com/vpc)获取可使用的子网 ID。
        # - 实例创建成功之后，支持更换私有网络及子网。具体操作，请参见[更换网络](https://cloud.tencent.com/document/product/239/30910)。
        # @type SubnetId: String
        # @param Password: 实例密码。设置要求如下：
        # - 字符个数为[8,32]。
        # - 可输入[A,Z]、[a,z]、[0,9]范围内的字符。
        # - 可输入的特殊字符包括：感叹号“!”，at“@”，警号“#”、百分号“%”、插入号“^”、星号“\*”、括号“()”、下划线“_”。
        # - 不能设置单一的字母或者数字。
        # @type Password: String
        # @param ProjectId: 项目ID。
        # - 若不设置该参数，则为默认项目。
        # - 在 [MongoDB 控制台项目管理](https://console.cloud.tencent.com/project)页面，可获取项目ID。
        # @type ProjectId: Integer
        # @param Tags: 实例标签信息。
        # @type Tags: Array
        # @param Clone: 实例类型。
        # - 1：正式实例。
        # - 3：只读实例。
        # - 4：灾备实例。
        # - 5：克隆实例。注意：克隆实例 RestoreTime 为必填项。
        # @type Clone: Integer
        # @param Father: 父实例 ID。
        # - 当参数**Clone**为3或者4时，即实例为只读或灾备实例时，该参数必须配置。
        # - 请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制父实例 ID。
        # @type Father: String
        # @param SecurityGroup: 安全组 ID。 请登录[安全组控制台](https://console.cloud.tencent.com/vpc/security-group)页面获取与数据库实例同地域的安全组 ID。
        # @type SecurityGroup: Array
        # @param RestoreTime: 克隆实例回档时间。
        # - 若为克隆实例，则必须配置该参数。输入格式示例：2021-08-13 16:30:00。
        # - 回档时间范围：仅能回档7天内时间点的数据。
        # @type RestoreTime: String
        # @param InstanceName: 实例名称。仅支持长度为128个字符的中文、英文、数字、下划线\_、分隔符\-。批量购买数据库实例时，支持通过自定义命名模式串与数字后缀自动升序功能，高效设置实例名称。
        # - 基础模式：前缀＋自动升序编号（默认从1开始），**lnstanceName**仅需自定义实例名称前缀，例如设置为：cmgo，设置购买数量为5，则购买后，实例名称依次分别为cmgo1、cmgo2、cmgo3、cmgo4、cmgo5。
        # - 自定义起始序号模式：前缀+｛R:x｝（x为自定义起始序号）。**InstanceName**需填写“前缀｛R:x｝”，例如：cmgo｛R:3｝，设置购买数量为5，则实例名称为cmgo3、cmgo4、cmgo5、cmgo6、cmgo7。
        # - 复合模式串：前缀1{R:x}+前缀2{R:y}+ ⋯+固定后缀，x与y分别为每一段前缀的起始序号。**instanceName**需填写复合模式串，例如：cmgo{R:10}\_node{R:12}\_db，设置批量购买数量为5，则实例名称为 cmgo10\_node12\_db, cmgo11\_node13\_db, cmgo12\_node14\_db, cmgo13\_node15\_db, cluster14\_node16\_db.
        # @type InstanceName: String
        # @param AvailabilityZoneList: 若多可用区部署云数据库实例，指定多可用区列表。
        # - 多可用区部署实例，参数 **Zone** 指定实例主可用区信息；**AvailabilityZoneList** 指定所有可用区信息，包含主可用区。输入格式如：[ap-guangzhou-2,ap-guangzhou-3,ap-guangzhou-4]。
        # - 通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 可获取云数据库不同地域规划的可用区信息，以便指定有效的可用区。
        # - 多可用区部署节点只能部署在3个不同可用区。不支持将集群的大多数节点部署在同一个可用区。例如：3节点集群不支持2个节点部署在同一个区。
        # @type AvailabilityZoneList: Array
        # @param MongosCpu: Mongos CPU 核数，支持1、2、4、8、16。购买分片集群时，必须填写。
        # @type MongosCpu: Integer
        # @param MongosMemory: Mongos 内存大小。
        # -  购买分片集群时，必须填写。
        # - 单位：GB，支持1核2GB、2核4GB、4核8GB、8核16GB、16核32GB。
        # @type MongosMemory: Integer
        # @param MongosNodeNum: Mongos 数量。购买分片集群时，必须填写。
        # - 单可用区部署实例，其数量范围为[3,32]。
        # - 多可用区部署实例，其数量范围为[6,32]。
        # @type MongosNodeNum: Integer
        # @param ReadonlyNodeNum: 只读节点数量，取值范围[0,5]。
        # @type ReadonlyNodeNum: Integer
        # @param ReadonlyNodeAvailabilityZoneList: 指只读节点所属可用区数组。跨可用区部署实例，参数**ReadonlyNodeNum**不为**0**时，必须配置该参数。
        # @type ReadonlyNodeAvailabilityZoneList: Array
        # @param HiddenZone: Hidden节点所属可用区。跨可用区部署实例，必须配置该参数。
        # @type HiddenZone: String
        # @param ParamTemplateId: 参数模板 ID。
        # - 参数模板是预置了特定参数值的集合，可用于快速配置新的 MongoDB 实例。合理使用参数模板，能有效提升数据库的部署效率与运行性能。
        # - 参数模板 ID 可通过 [DescribeDBInstanceParamTpl ](https://cloud.tencent.com/document/product/240/109155)接口获取。请选择与实例版本与架构所对应的参数模板 ID。
        # @type ParamTemplateId: String

        attr_accessor :Memory, :Volume, :ReplicateSetNum, :NodeNum, :MongoVersion, :MachineCode, :GoodsNum, :Zone, :ClusterType, :VpcId, :SubnetId, :Password, :ProjectId, :Tags, :Clone, :Father, :SecurityGroup, :RestoreTime, :InstanceName, :AvailabilityZoneList, :MongosCpu, :MongosMemory, :MongosNodeNum, :ReadonlyNodeNum, :ReadonlyNodeAvailabilityZoneList, :HiddenZone, :ParamTemplateId

        def initialize(memory=nil, volume=nil, replicatesetnum=nil, nodenum=nil, mongoversion=nil, machinecode=nil, goodsnum=nil, zone=nil, clustertype=nil, vpcid=nil, subnetid=nil, password=nil, projectid=nil, tags=nil, clone=nil, father=nil, securitygroup=nil, restoretime=nil, instancename=nil, availabilityzonelist=nil, mongoscpu=nil, mongosmemory=nil, mongosnodenum=nil, readonlynodenum=nil, readonlynodeavailabilityzonelist=nil, hiddenzone=nil, paramtemplateid=nil)
          @Memory = memory
          @Volume = volume
          @ReplicateSetNum = replicatesetnum
          @NodeNum = nodenum
          @MongoVersion = mongoversion
          @MachineCode = machinecode
          @GoodsNum = goodsnum
          @Zone = zone
          @ClusterType = clustertype
          @VpcId = vpcid
          @SubnetId = subnetid
          @Password = password
          @ProjectId = projectid
          @Tags = tags
          @Clone = clone
          @Father = father
          @SecurityGroup = securitygroup
          @RestoreTime = restoretime
          @InstanceName = instancename
          @AvailabilityZoneList = availabilityzonelist
          @MongosCpu = mongoscpu
          @MongosMemory = mongosmemory
          @MongosNodeNum = mongosnodenum
          @ReadonlyNodeNum = readonlynodenum
          @ReadonlyNodeAvailabilityZoneList = readonlynodeavailabilityzonelist
          @HiddenZone = hiddenzone
          @ParamTemplateId = paramtemplateid
        end

        def deserialize(params)
          @Memory = params['Memory']
          @Volume = params['Volume']
          @ReplicateSetNum = params['ReplicateSetNum']
          @NodeNum = params['NodeNum']
          @MongoVersion = params['MongoVersion']
          @MachineCode = params['MachineCode']
          @GoodsNum = params['GoodsNum']
          @Zone = params['Zone']
          @ClusterType = params['ClusterType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Password = params['Password']
          @ProjectId = params['ProjectId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @Clone = params['Clone']
          @Father = params['Father']
          @SecurityGroup = params['SecurityGroup']
          @RestoreTime = params['RestoreTime']
          @InstanceName = params['InstanceName']
          @AvailabilityZoneList = params['AvailabilityZoneList']
          @MongosCpu = params['MongosCpu']
          @MongosMemory = params['MongosMemory']
          @MongosNodeNum = params['MongosNodeNum']
          @ReadonlyNodeNum = params['ReadonlyNodeNum']
          @ReadonlyNodeAvailabilityZoneList = params['ReadonlyNodeAvailabilityZoneList']
          @HiddenZone = params['HiddenZone']
          @ParamTemplateId = params['ParamTemplateId']
        end
      end

      # CreateDBInstanceHour返回参数结构体
      class CreateDBInstanceHourResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID。
        # @type DealId: String
        # @param InstanceIds: 创建的实例ID列表。
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealId, :InstanceIds, :RequestId

        def initialize(dealid=nil, instanceids=nil, requestid=nil)
          @DealId = dealid
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @DealId = params['DealId']
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstanceParamTpl请求参数结构体
      class CreateDBInstanceParamTplRequest < TencentCloud::Common::AbstractModel
        # @param TplName: 参数模板名称。
        # @type TplName: String
        # @param MongoVersion: 参数模板版本号。当**MirrorTplId**为空时，该字段必填。参数模板支持的售卖版本，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/35767) 获取。
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本，
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # - MONGO_70_WT：MongoDB 7.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param ClusterType: 实例类型。当 MirrorTplId 为空值时，该参数必填。
        # - REPLSET：副本集实例。
        # - SHARD：分片实例。
        # - STANDALONE：单节点实例。
        # @type ClusterType: String
        # @param TplDesc: 模板描述信息。
        # @type TplDesc: String
        # @param Params: 模板参数，若不配置该参数，则以系统默认模板作为新版本参数。
        # @type Params: Array
        # @param MirrorTplId: 镜像模板 ID。若指定镜像模板，则以该模板为镜像，克隆出一个新的模板。
        # **注意**：MirrorTplId 不为空值时，MongoVersion 及 ClusterType 将以 MirrorTpl 模板的版本及实例类型为准。
        # @type MirrorTplId: String

        attr_accessor :TplName, :MongoVersion, :ClusterType, :TplDesc, :Params, :MirrorTplId

        def initialize(tplname=nil, mongoversion=nil, clustertype=nil, tpldesc=nil, params=nil, mirrortplid=nil)
          @TplName = tplname
          @MongoVersion = mongoversion
          @ClusterType = clustertype
          @TplDesc = tpldesc
          @Params = params
          @MirrorTplId = mirrortplid
        end

        def deserialize(params)
          @TplName = params['TplName']
          @MongoVersion = params['MongoVersion']
          @ClusterType = params['ClusterType']
          @TplDesc = params['TplDesc']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              paramtype_tmp = ParamType.new
              paramtype_tmp.deserialize(i)
              @Params << paramtype_tmp
            end
          end
          @MirrorTplId = params['MirrorTplId']
        end
      end

      # CreateDBInstanceParamTpl返回参数结构体
      class CreateDBInstanceParamTplResponse < TencentCloud::Common::AbstractModel
        # @param TplId: 模板ID
        # @type TplId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TplId, :RequestId

        def initialize(tplid=nil, requestid=nil)
          @TplId = tplid
          @RequestId = requestid
        end

        def deserialize(params)
          @TplId = params['TplId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstance请求参数结构体
      class CreateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param NodeNum: - 创建副本集实例，指每个副本集内主从节点数量。每个副本集所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 创建分片集群实例，指每个分片的主从节点数量。每个分片所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type NodeNum: Integer
        # @param Memory: 实例内存大小，单位：GB。具体售卖的内存规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小，单位：GB。每一个 CPU 规格对应的最大磁盘与最小磁盘范围，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Volume: Integer
        # @param MongoVersion: 指版本信息。具体支持的版本信息 ，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # - MONGO_70_WT：MongoDB 7.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param GoodsNum: 实例数量, 最小值1，最大值为30。
        # @type GoodsNum: Integer
        # @param Zone: 可用区信息，输入格式如：ap-guangzhou-2。
        # - 具体信息，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 该参数为主可用区，如果多可用区部署，Zone必须是AvailabilityZoneList中的一个。
        # @type Zone: String
        # @param Period: 指定购买实例的购买时长。取值可选：[1,2,3,4,5,6,7,8,9,10,11,12,24,36]；单位：月。
        # @type Period: Integer
        # @param MachineCode: 产品规格类型。
        # - HIO10G：通用高HIO万兆型。
        # - HCD：云盘版类型。
        # @type MachineCode: String
        # @param ClusterType: 实例架构类型。
        # - REPLSET：副本集。
        # - SHARD：分片集群。
        # @type ClusterType: String
        # @param ReplicateSetNum: - 创建副本集实例，指副本集数量，该参数只能为1。
        # - 创建分片集群实例，指分片的数量。请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询分片数量的取值范围，其返回的数据结构SpecItems中的参数MinReplicateSetNum与MaxReplicateSetNum分别对应其最小值与最大值。
        # @type ReplicateSetNum: Integer
        # @param ProjectId: 项目ID。
        # - 若不设置该参数，则为默认项目。
        # - 在 [MongoDB 控制台项目管理](https://console.cloud.tencent.com/project)页面，可获取项目ID。
        # @type ProjectId: Integer
        # @param VpcId: 私有网络 ID。
        # - 仅支持配置私有网络，必须选择一个与实例同一地域的私有网络。请登录[私有网络控制台](https://console.cloud.tencent.com/vpc)获取可使用的私有网络 ID。
        # - 实例创建成功之后，支持更换私有网络。具体操作，请参见[更换网络](https://cloud.tencent.com/document/product/239/30910)。
        # @type VpcId: String
        # @param SubnetId: 私有网络 VPC 的子网 ID。
        # - 必须在已选的私有网络内指定一个子网。请登录[私有网络控制台](https://console.cloud.tencent.com/vpc)获取可使用的子网 ID。
        # - 实例创建成功之后，支持更换私有网络及子网。具体操作，请参见[更换网络](https://cloud.tencent.com/document/product/239/30910)。
        # @type SubnetId: String
        # @param Password: 实例密码。设置要求如下：
        # - 字符个数为[8,32]。
        # - 可输入[A,Z]、[a,z]、[0,9]范围内的字符。
        # - 可输入的特殊字符包括：感叹号“!”，at“@”，警号“#”、百分号“%”、插入号“^”、星号“\*”、括号“()”、下划线“\_”。
        # - 不能设置单一的字母或者数字。
        # @type Password: String
        # @param Tags: 实例标签信息。
        # @type Tags: Array
        # @param AutoRenewFlag: 自动续费标记。
        # - 0：不自动续费。
        # - 1：自动续费。
        # @type AutoRenewFlag: Integer
        # @param AutoVoucher: 是否自动选择代金券。
        # - 1：是。
        # - 0：否。默认为0。
        # @type AutoVoucher: Integer
        # @param Clone: 实例类型。
        # - 1：正式实例。
        # - 3：只读实例。
        # - 4：灾备实例。
        # - 5：克隆实例。注意：克隆实例 RestoreTime 为必填项。
        # @type Clone: Integer
        # @param Father: 父实例 ID。
        # - 当参数**Clone**为3或者4时，即实例为只读或灾备实例时，该参数必须配置。
        # - 请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制父实例 ID。
        # @type Father: String
        # @param SecurityGroup: 安全组 ID。 请登录[安全组控制台](https://console.cloud.tencent.com/vpc/security-group)页面获取与数据库实例同地域的安全组 ID。
        # @type SecurityGroup: Array
        # @param RestoreTime: 克隆实例回档时间，当Clone取值为5或6时为必填。- 若为克隆实例，则必须配置该参数。输入格式示例：2021-08-13 16:30:00。- 回档时间范围：仅能回档7天内时间点的数据。
        # @type RestoreTime: String
        # @param InstanceName: 实例名称。仅支持长度为128个字符的中文、英文、数字、下划线\_、分隔符\-。批量购买数据库实例时，支持通过自定义命名模式串与数字后缀自动升序功能，高效设置实例名称。
        # - 基础模式：前缀＋自动升序编号（默认从1开始），**lnstanceName**仅需自定义实例名称前缀，例如设置为：cmgo，设置购买数量为5，则购买后，实例名称依次分别为cmgo1、cmgo2、cmgo3、cmgo4、cmgo5。
        # - 自定义起始序号模式：前缀+｛R:x｝（x为自定义起始序号）。**InstanceName**需填写“前缀｛R:x｝”，例如：cmgo｛R:3｝，设置购买数量为5，则实例名称为cmgo3、cmgo4、cmgo5、cmgo6、cmgo7。
        # - 复合模式串：前缀1{R:x}+前缀2{R:y}+ ⋯+固定后缀，x与y分别为每一段前缀的起始序号。**instanceName**需填写复合模式串，例如：cmgo{R:10}\_node{R:12}\_db，设置批量购买数量为5，则实例名称为 cmgo10\_node12\_db, cmgo11\_node13\_db, cmgo12\_node14\_db, cmgo13\_node15\_db, cluster14\_node16\_db.
        # @type InstanceName: String
        # @param AvailabilityZoneList: 若多可用区部署云数据库实例，指定多可用区列表。
        # - 多可用区部署实例，参数 **Zone** 指定实例主可用区信息；**AvailabilityZoneList** 指定所有可用区信息，包含主可用区。输入格式如：[ap-guangzhou-2,ap-guangzhou-3,ap-guangzhou-4]。
        # - 通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 可获取云数据库不同地域规划的可用区信息，以便指定有效的可用区。
        # - 多可用区部署节点只能部署在3个不同可用区。不支持将集群的大多数节点部署在同一个可用区。例如：3节点集群不支持2个节点部署在同一个区。
        # @type AvailabilityZoneList: Array
        # @param MongosCpu: Mongos CPU 核数，支持1、2、4、8、16。购买分片集群时，必须填写。
        # @type MongosCpu: Integer
        # @param MongosMemory: Mongos 内存大小。
        # -  购买分片集群时，必须填写。
        # - 单位：GB，支持1核2GB、2核4GB、4核8GB、8核16GB、16核32GB。
        # @type MongosMemory: Integer
        # @param MongosNodeNum: Mongos 数量。购买分片集群时，必须填写。
        # - 单可用区部署实例，其数量范围为[3,32]。
        # - 多可用区部署实例，其数量范围为[6,32]。
        # @type MongosNodeNum: Integer
        # @param ReadonlyNodeNum: 只读节点数量，取值范围[0,5]。
        # @type ReadonlyNodeNum: Integer
        # @param ReadonlyNodeAvailabilityZoneList: 指只读节点所属可用区数组。跨可用区部署实例，参数**ReadonlyNodeNum**不为**0**时，必须配置该参数。
        # @type ReadonlyNodeAvailabilityZoneList: Array
        # @param HiddenZone: Hidden节点所属可用区。跨可用区部署实例，必须配置该参数。
        # @type HiddenZone: String
        # @param ParamTemplateId: 参数模板 ID。
        # - 参数模板是预置了特定参数值的集合，可用于快速配置新的 MongoDB 实例。合理使用参数模板，能有效提升数据库的部署效率与运行性能。
        # - 参数模板 ID 可通过 [DescribeDBInstanceParamTpl ](https://cloud.tencent.com/document/product/240/109155)接口获取。请选择与实例版本与架构所对应的参数模板 ID。
        # @type ParamTemplateId: String

        attr_accessor :NodeNum, :Memory, :Volume, :MongoVersion, :GoodsNum, :Zone, :Period, :MachineCode, :ClusterType, :ReplicateSetNum, :ProjectId, :VpcId, :SubnetId, :Password, :Tags, :AutoRenewFlag, :AutoVoucher, :Clone, :Father, :SecurityGroup, :RestoreTime, :InstanceName, :AvailabilityZoneList, :MongosCpu, :MongosMemory, :MongosNodeNum, :ReadonlyNodeNum, :ReadonlyNodeAvailabilityZoneList, :HiddenZone, :ParamTemplateId

        def initialize(nodenum=nil, memory=nil, volume=nil, mongoversion=nil, goodsnum=nil, zone=nil, period=nil, machinecode=nil, clustertype=nil, replicatesetnum=nil, projectid=nil, vpcid=nil, subnetid=nil, password=nil, tags=nil, autorenewflag=nil, autovoucher=nil, clone=nil, father=nil, securitygroup=nil, restoretime=nil, instancename=nil, availabilityzonelist=nil, mongoscpu=nil, mongosmemory=nil, mongosnodenum=nil, readonlynodenum=nil, readonlynodeavailabilityzonelist=nil, hiddenzone=nil, paramtemplateid=nil)
          @NodeNum = nodenum
          @Memory = memory
          @Volume = volume
          @MongoVersion = mongoversion
          @GoodsNum = goodsnum
          @Zone = zone
          @Period = period
          @MachineCode = machinecode
          @ClusterType = clustertype
          @ReplicateSetNum = replicatesetnum
          @ProjectId = projectid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Password = password
          @Tags = tags
          @AutoRenewFlag = autorenewflag
          @AutoVoucher = autovoucher
          @Clone = clone
          @Father = father
          @SecurityGroup = securitygroup
          @RestoreTime = restoretime
          @InstanceName = instancename
          @AvailabilityZoneList = availabilityzonelist
          @MongosCpu = mongoscpu
          @MongosMemory = mongosmemory
          @MongosNodeNum = mongosnodenum
          @ReadonlyNodeNum = readonlynodenum
          @ReadonlyNodeAvailabilityZoneList = readonlynodeavailabilityzonelist
          @HiddenZone = hiddenzone
          @ParamTemplateId = paramtemplateid
        end

        def deserialize(params)
          @NodeNum = params['NodeNum']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @MongoVersion = params['MongoVersion']
          @GoodsNum = params['GoodsNum']
          @Zone = params['Zone']
          @Period = params['Period']
          @MachineCode = params['MachineCode']
          @ClusterType = params['ClusterType']
          @ReplicateSetNum = params['ReplicateSetNum']
          @ProjectId = params['ProjectId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Password = params['Password']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @AutoVoucher = params['AutoVoucher']
          @Clone = params['Clone']
          @Father = params['Father']
          @SecurityGroup = params['SecurityGroup']
          @RestoreTime = params['RestoreTime']
          @InstanceName = params['InstanceName']
          @AvailabilityZoneList = params['AvailabilityZoneList']
          @MongosCpu = params['MongosCpu']
          @MongosMemory = params['MongosMemory']
          @MongosNodeNum = params['MongosNodeNum']
          @ReadonlyNodeNum = params['ReadonlyNodeNum']
          @ReadonlyNodeAvailabilityZoneList = params['ReadonlyNodeAvailabilityZoneList']
          @HiddenZone = params['HiddenZone']
          @ParamTemplateId = params['ParamTemplateId']
        end
      end

      # CreateDBInstance返回参数结构体
      class CreateDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealId: 订单ID
        # @type DealId: String
        # @param InstanceIds: 创建的实例ID列表
        # @type InstanceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealId, :InstanceIds, :RequestId

        def initialize(dealid=nil, instanceids=nil, requestid=nil)
          @DealId = dealid
          @InstanceIds = instanceids
          @RequestId = requestid
        end

        def deserialize(params)
          @DealId = params['DealId']
          @InstanceIds = params['InstanceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateLogDownloadTask请求参数结构体
      class CreateLogDownloadTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param NodeNames: 节点名称
        # @type NodeNames: Array
        # @param LogComponents: 日志类别
        # @type LogComponents: Array
        # @param LogLevels: 日志等级
        # @type LogLevels: Array
        # @param LogIds: 日志ID
        # @type LogIds: Array
        # @param LogConnections: 日志连接信息
        # @type LogConnections: Array
        # @param LogDetailParams: 日志详情过滤字段
        # @type LogDetailParams: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :NodeNames, :LogComponents, :LogLevels, :LogIds, :LogConnections, :LogDetailParams

        def initialize(instanceid=nil, starttime=nil, endtime=nil, nodenames=nil, logcomponents=nil, loglevels=nil, logids=nil, logconnections=nil, logdetailparams=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @NodeNames = nodenames
          @LogComponents = logcomponents
          @LogLevels = loglevels
          @LogIds = logids
          @LogConnections = logconnections
          @LogDetailParams = logdetailparams
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @NodeNames = params['NodeNames']
          @LogComponents = params['LogComponents']
          @LogLevels = params['LogLevels']
          @LogIds = params['LogIds']
          @LogConnections = params['LogConnections']
          @LogDetailParams = params['LogDetailParams']
        end
      end

      # CreateLogDownloadTask返回参数结构体
      class CreateLogDownloadTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 云数据库实例当前操作
      class CurrentOp < TencentCloud::Common::AbstractModel
        # @param OpId: 操作序号。
        # @type OpId: Integer
        # @param Ns: 操作所在的命名空间，形式如db.collection。
        # @type Ns: String
        # @param Query: 操作执行语句。
        # @type Query: String
        # @param Op: 操作类型。
        # - none：特殊状态，空闲连接或内部任务等。
        # - update：更新数据。
        # - insert：插入操作。
        # - query：查询操作。
        # - command：命令操作。
        # - getmore：获取更多数据。
        # - remove：删除操作。
        # - killcursors：释放查询游标的操作。
        # @type Op: String
        # @param ReplicaSetName: 操作所在的分片名称。
        # @type ReplicaSetName: String
        # @param NodeName: 操作所在的节点名称。
        # @type NodeName: String
        # @param Operation: 操作详细信息。
        # @type Operation: String
        # @param State: 节点角色。
        # - primary：主节点。
        # - secondary：从节点。
        # @type State: String
        # @param MicrosecsRunning: 操作已执行时间（ms）。
        # @type MicrosecsRunning: Integer
        # @param ExecNode: 当前操作所在节点信息。
        # @type ExecNode: String

        attr_accessor :OpId, :Ns, :Query, :Op, :ReplicaSetName, :NodeName, :Operation, :State, :MicrosecsRunning, :ExecNode

        def initialize(opid=nil, ns=nil, query=nil, op=nil, replicasetname=nil, nodename=nil, operation=nil, state=nil, microsecsrunning=nil, execnode=nil)
          @OpId = opid
          @Ns = ns
          @Query = query
          @Op = op
          @ReplicaSetName = replicasetname
          @NodeName = nodename
          @Operation = operation
          @State = state
          @MicrosecsRunning = microsecsrunning
          @ExecNode = execnode
        end

        def deserialize(params)
          @OpId = params['OpId']
          @Ns = params['Ns']
          @Query = params['Query']
          @Op = params['Op']
          @ReplicaSetName = params['ReplicaSetName']
          @NodeName = params['NodeName']
          @Operation = params['Operation']
          @State = params['State']
          @MicrosecsRunning = params['MicrosecsRunning']
          @ExecNode = params['ExecNode']
        end
      end

      # 实例信息
      class DBInstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Region: 地域信息
        # @type Region: String

        attr_accessor :InstanceId, :Region

        def initialize(instanceid=nil, region=nil)
          @InstanceId = instanceid
          @Region = region
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Region = params['Region']
        end
      end

      # 数据库实例价格
      class DBInstancePrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 实例单价。单位：元。
        # @type UnitPrice: Float
        # @param OriginalPrice: 实例原价。单位：元。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 实例折扣价。单位：元。
        # @type DiscountPrice: Float

        attr_accessor :UnitPrice, :OriginalPrice, :DiscountPrice

        def initialize(unitprice=nil, originalprice=nil, discountprice=nil)
          @UnitPrice = unitprice
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
        end
      end

      # 数据库实例 URI 形式的连接串访问地址示例。
      class DbURL < TencentCloud::Common::AbstractModel
        # @param URLType: 指 URI 类别，包括：，
        # - CLUSTER_ALL：指通过该 URI 连接库实例的主节点，可读写。
        # - CLUSTER_READ_READONLY：指通过该 URI 连接实例只读节点。
        # - CLUSTER_READ_SECONDARY：指通过该 URI 连接实例从节点。
        # - CLUSTER_READ_SECONDARY_AND_READONLY：指通过该 URI 连接实例只读从节点。
        # - CLUSTER_PRIMARY_AND_SECONDARY：指通过该 URI 连接实例 主节点与从节点。
        # - MONGOS_ALL：指通过该  URI 连接每个 Mongos 节点，可读写。
        # - MONGOS_READ_READONLY：指通过该 URI 连接 Mongos 的只读节点。
        # - MONGOS_READ_SECONDARY：指通过该 URI 连接 Mongos 的从节点。
        # - MONGOS_READ_PRIMARY_AND_SECONDARY：指通过该URI 连接 Mongos 的主节点与从节点。
        # - MONGOS_READ_SECONDARY_AND_READONLY：指通过该URI 连接 Mongos 的从节点与只读节点。
        # @type URLType: String
        # @param Address: 实例 URI 形式的连接串访问地址示例。
        # @type Address: String

        attr_accessor :URLType, :Address

        def initialize(urltype=nil, address=nil)
          @URLType = urltype
          @Address = address
        end

        def deserialize(params)
          @URLType = params['URLType']
          @Address = params['Address']
        end
      end

      # DeleteAccountUser请求参数结构体
      class DeleteAccountUserRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待删除账号的实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param UserName: 配置待删除的账号名。
        # @type UserName: String
        # @param MongoUserPassword: 配置 mongouser 对应的密码。mongouser为系统默认账号，输入其对应的密码。
        # @type MongoUserPassword: String

        attr_accessor :InstanceId, :UserName, :MongoUserPassword

        def initialize(instanceid=nil, username=nil, mongouserpassword=nil)
          @InstanceId = instanceid
          @UserName = username
          @MongoUserPassword = mongouserpassword
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @MongoUserPassword = params['MongoUserPassword']
        end
      end

      # DeleteAccountUser返回参数结构体
      class DeleteAccountUserResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 账户删除任务ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteAuditLogFile请求参数结构体
      class DeleteAuditLogFileRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-test1234，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param FileName: 审计日志文件名称，须保证文件名的准确性。
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

      # DeleteLogDownloadTask请求参数结构体
      class DeleteLogDownloadTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :InstanceId, :TaskId

        def initialize(instanceid=nil, taskid=nil)
          @InstanceId = instanceid
          @TaskId = taskid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteLogDownloadTask返回参数结构体
      class DeleteLogDownloadTaskResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，0:成功
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 日志投递信息
      class DeliverSummary < TencentCloud::Common::AbstractModel
        # @param DeliverType: 投递类型，store（存储类），mq（消息通道）
        # @type DeliverType: String
        # @param DeliverSubType: 投递子类型：cls，ckafka。
        # @type DeliverSubType: String

        attr_accessor :DeliverType, :DeliverSubType

        def initialize(delivertype=nil, deliversubtype=nil)
          @DeliverType = delivertype
          @DeliverSubType = deliversubtype
        end

        def deserialize(params)
          @DeliverType = params['DeliverType']
          @DeliverSubType = params['DeliverSubType']
        end
      end

      # DescribeAccountUsers请求参数结构体
      class DescribeAccountUsersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待获取账号的实例ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeAccountUsers返回参数结构体
      class DescribeAccountUsersResponse < TencentCloud::Common::AbstractModel
        # @param Users: 实例账号列表。
        # @type Users: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Users, :RequestId

        def initialize(users=nil, requestid=nil)
          @Users = users
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              userinfo_tmp = UserInfo.new
              userinfo_tmp.deserialize(i)
              @Users << userinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAsyncRequestInfo请求参数结构体
      class DescribeAsyncRequestInfoRequest < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 指定需查询的异步请求 ID。当接口操作涉及异步流程时（如 [CreateBackupDBInstance](https://cloud.tencent.com/document/product/240/46599)），其返回值中的 AsyncRequestId 即为本参数所需填入的 ID。
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
        # @param Status: 状态。返回参数有：initial-初始化、running-运行中、paused-任务执行失败，已暂停、undoed-任务执行失败，已回滚、failed-任务执行失败, 已终止、success-成功
        # @type Status: String
        # @param StartTime: 任务执行开始时间。
        # @type StartTime: String
        # @param EndTime: 任务执行结束时间。
        # @type EndTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :StartTime, :EndTime, :RequestId

        def initialize(status=nil, starttime=nil, endtime=nil, requestid=nil)
          @Status = status
          @StartTime = starttime
          @EndTime = endtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditInstanceList请求参数结构体
      class DescribeAuditInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param AuditSwitch: 指明待查询的实例为已开通审计或未开通审计。<ul><li>1：已开通审计功能。</li><li>0：未开通审计功能。</li></ul>
        # @type AuditSwitch: Integer
        # @param Filters: 筛选条件。
        # @type Filters: Array
        # @param AuditMode: 审计类型，不传 默认全部，0 全审计，1 规则审计
        # @type AuditMode: Integer
        # @param Limit: 每页显示数量。
        # @type Limit: Integer
        # @param Offset: 分页偏移量。
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
              filters_tmp = Filters.new
              filters_tmp.deserialize(i)
              @Filters << filters_tmp
            end
          end
          @AuditMode = params['AuditMode']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAuditInstanceList返回参数结构体
      class DescribeAuditInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数。
        # @type TotalCount: Integer
        # @param Items: 审计实例详情。
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
              auditinstance_tmp = AuditInstance.new
              auditinstance_tmp.deserialize(i)
              @Items << auditinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupDownloadTask请求参数结构体
      class DescribeBackupDownloadTaskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupName: 指定备份文件名，用于过滤指定文件的下载任务。请通过接口 [DescribeDBBackups](https://cloud.tencent.com/document/product/240/38574) 获取备份文件名。
        # @type BackupName: String
        # @param StartTime: 指定查询时间范围内的任务，StartTime 指定开始时间。若不指定开始时间，则默认不限制开始时间。
        # @type StartTime: String
        # @param EndTime: 指定查询时间范围内的任务，EndTime 指定截止时间。若不指定截止时间，则默认不限制截止时间。
        # @type EndTime: String
        # @param Limit: 此次查询返回的条数，取值范围为1-100，默认为20。
        # @type Limit: Integer
        # @param Offset: 指定此次查询返回的页数，默认为0。
        # @type Offset: Integer
        # @param OrderBy: 排序字段。
        # - createTime：按照备份下载任务的创建时间排序。默认为 createTime。
        # - finishTime：按照备份下载任务的完成时间排序。
        # @type OrderBy: String
        # @param OrderByType: 排序方式。
        # - asc：升序排列。
        # - desc：降序排列。默认为 desc。
        # @type OrderByType: String
        # @param Status: 指定任务状态，用于过滤下载任务。若不配置该参数，则返回所有状态类型的任务。
        # - 0：等待执行。
        # - 1：正在下载。
        # - 2：下载完成。
        # - 3：下载失败。
        # - 4：等待重试。
        # @type Status: Array

        attr_accessor :InstanceId, :BackupName, :StartTime, :EndTime, :Limit, :Offset, :OrderBy, :OrderByType, :Status

        def initialize(instanceid=nil, backupname=nil, starttime=nil, endtime=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, status=nil)
          @InstanceId = instanceid
          @BackupName = backupname
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupName = params['BackupName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @Status = params['Status']
        end
      end

      # DescribeBackupDownloadTask返回参数结构体
      class DescribeBackupDownloadTaskResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足查询条件的所有条数。
        # @type TotalCount: Integer
        # @param Tasks: 下载任务列表。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId

        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              backupdownloadtask_tmp = BackupDownloadTask.new
              backupdownloadtask_tmp.deserialize(i)
              @Tasks << backupdownloadtask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupRules请求参数结构体
      class DescribeBackupRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeBackupRules返回参数结构体
      class DescribeBackupRulesResponse < TencentCloud::Common::AbstractModel
        # @param BackupSaveTime: 备份数据保留期限。单位为：天。
        # @type BackupSaveTime: Integer
        # @param BackupTime: 自动备份开始时间。
        # @type BackupTime: Integer
        # @param BackupMethod: 备份方式。
        # - 0：逻辑备份。
        # - 1：物理备份。
        # @type BackupMethod: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupSaveTime, :BackupTime, :BackupMethod, :RequestId

        def initialize(backupsavetime=nil, backuptime=nil, backupmethod=nil, requestid=nil)
          @BackupSaveTime = backupsavetime
          @BackupTime = backuptime
          @BackupMethod = backupmethod
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupSaveTime = params['BackupSaveTime']
          @BackupTime = params['BackupTime']
          @BackupMethod = params['BackupMethod']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClientConnections请求参数结构体
      class DescribeClientConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待查询的实例ID，例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Limit: 单次请求返回的数量。最小值为1，最大值为1000，默认值为1000。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为0。Offset=Limit*(页码-1)。
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset

        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeClientConnections返回参数结构体
      class DescribeClientConnectionsResponse < TencentCloud::Common::AbstractModel
        # @param Clients: 客户端连接信息，包括客户端 IP 和对应 IP 的连接数量。
        # @type Clients: Array
        # @param TotalCount: 满足条件的记录总条数，可用于分页查询。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Clients, :TotalCount, :RequestId

        def initialize(clients=nil, totalcount=nil, requestid=nil)
          @Clients = clients
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Clients'].nil?
            @Clients = []
            params['Clients'].each do |i|
              clientconnection_tmp = ClientConnection.new
              clientconnection_tmp.deserialize(i)
              @Clients << clientconnection_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCurrentOp请求参数结构体
      class DescribeCurrentOpRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定要查询的实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Ns: 操作所属的命名空间 namespace，格式为 db.collection。
        # @type Ns: String
        # @param MillisecondRunning: 设置查询筛选条件为操作任务已经执行的时间。
        # - 默认值为0，取值范围为[0, 3600000]，单位：毫秒。
        # - 结果将返回超过设置时间的操作。
        # @type MillisecondRunning: Integer
        # @param Op: 设置查询筛选条件为操作任务类型。取值包括：
        # - none：特殊状态，空闲连接或内部任务等。
        # - update：更新数据。
        # - insert：插入操作。
        # - query：查询操作。
        # - command：命令操作。
        # - getmore：获取更多数据。
        # - remove：删除操作。
        # - killcursors：释放查询游标的操作。
        # @type Op: String
        # @param ReplicaSetName: 筛选条件，分片名称。
        # @type ReplicaSetName: String
        # @param State: 设置查询筛选条件为节点角色。
        # - primary：主节点。
        # - secondary：从节点。
        # @type State: String
        # @param Limit: 单次请求返回的数量，默认值为100，取值范围为[0,100]。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为0，取值范围为[0,10000]。
        # @type Offset: Integer
        # @param OrderBy: 返回结果集排序的字段，目前支持按照 MicrosecsRunning（操作任务已执行的时间）排序。
        # @type OrderBy: String
        # @param OrderByType: 返回结果集排序方式。
        # - ASC：升序。默认为 ASC，按照升序排序。
        # - DESC：降序。
        # @type OrderByType: String

        attr_accessor :InstanceId, :Ns, :MillisecondRunning, :Op, :ReplicaSetName, :State, :Limit, :Offset, :OrderBy, :OrderByType

        def initialize(instanceid=nil, ns=nil, millisecondrunning=nil, op=nil, replicasetname=nil, state=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @Ns = ns
          @MillisecondRunning = millisecondrunning
          @Op = op
          @ReplicaSetName = replicasetname
          @State = state
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Ns = params['Ns']
          @MillisecondRunning = params['MillisecondRunning']
          @Op = params['Op']
          @ReplicaSetName = params['ReplicaSetName']
          @State = params['State']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeCurrentOp返回参数结构体
      class DescribeCurrentOpResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的操作总数。
        # @type TotalCount: Integer
        # @param CurrentOps: 当前操作列表。
        # @type CurrentOps: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CurrentOps, :RequestId

        def initialize(totalcount=nil, currentops=nil, requestid=nil)
          @TotalCount = totalcount
          @CurrentOps = currentops
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CurrentOps'].nil?
            @CurrentOps = []
            params['CurrentOps'].each do |i|
              currentop_tmp = CurrentOp.new
              currentop_tmp.deserialize(i)
              @CurrentOps << currentop_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBBackups请求参数结构体
      class DescribeDBBackupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupMethod: 备份方式。
        # - 0：逻辑备份。
        # - 1：物理备份。
        # - 3：快照备份。
        # **说明**:
        # 1. 通用版实例支持逻辑备份与物理备份。云盘版实例支持物理备份与快照备份，暂不支持逻辑备份。
        # 2. 实例开通存储加密，则备份方式不能为物理备份。
        # @type BackupMethod: Integer
        # @param Limit: 分页大小，最大值为100，不设置默认查询所有。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，最小值为0，默认值为0。
        # @type Offset: Integer

        attr_accessor :InstanceId, :BackupMethod, :Limit, :Offset

        def initialize(instanceid=nil, backupmethod=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @BackupMethod = backupmethod
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMethod = params['BackupMethod']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDBBackups返回参数结构体
      class DescribeDBBackupsResponse < TencentCloud::Common::AbstractModel
        # @param BackupList: 备份列表。
        # @type BackupList: Array
        # @param TotalCount: 备份总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupList, :TotalCount, :RequestId

        def initialize(backuplist=nil, totalcount=nil, requestid=nil)
          @BackupList = backuplist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackupList'].nil?
            @BackupList = []
            params['BackupList'].each do |i|
              backupinfo_tmp = BackupInfo.new
              backupinfo_tmp.deserialize(i)
              @BackupList << backupinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceDeal请求参数结构体
      class DescribeDBInstanceDealRequest < TencentCloud::Common::AbstractModel
        # @param DealId: 订单 ID。
        # - 按量计费实例，请通过 [CreateDBInstanceHour](https://cloud.tencent.com/document/product/240/38570) 接口输出的参数**DealId**获取。。
        # - 包年包月计费实例，请通过 [CreateDBInstance](https://cloud.tencent.com/document/product/240/38571) 接口输出的参数**DealId**获取。
        # @type DealId: String

        attr_accessor :DealId

        def initialize(dealid=nil)
          @DealId = dealid
        end

        def deserialize(params)
          @DealId = params['DealId']
        end
      end

      # DescribeDBInstanceDeal返回参数结构体
      class DescribeDBInstanceDealResponse < TencentCloud::Common::AbstractModel
        # @param Status: 订单状态。
        # - 1：未支付。
        # - 2：已支付。
        # - 3：发货中。
        # - 4：发货成功。
        # - 5：发货失败。
        # - 6：退款。
        # - 7：订单关闭。
        # - 8：超时未支付关闭。
        # @type Status: Integer
        # @param OriginalPrice: 订单原价。单位：元。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 订单折扣价格。单位：元。
        # @type DiscountPrice: Float
        # @param Action: 订单操作行为。
        # - purchase：新购。
        # - renew：续费。
        # - upgrade：升配.
        # - downgrade：降配.
        # - refund：退货退款。
        # @type Action: String
        # @param InstanceId: 当前订单的实例 ID。
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :OriginalPrice, :DiscountPrice, :Action, :InstanceId, :RequestId

        def initialize(status=nil, originalprice=nil, discountprice=nil, action=nil, instanceid=nil, requestid=nil)
          @Status = status
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
          @Action = action
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
          @Action = params['Action']
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceNamespace请求参数结构体
      class DescribeDBInstanceNamespaceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定查询数据库所属的实例 ID，支持批量查询。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param DbName: 指定查询的数据库名。为空时，返回当前实例的全部数据库列表。
        # @type DbName: String

        attr_accessor :InstanceId, :DbName

        def initialize(instanceid=nil, dbname=nil)
          @InstanceId = instanceid
          @DbName = dbname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
        end
      end

      # DescribeDBInstanceNamespace返回参数结构体
      class DescribeDBInstanceNamespaceResponse < TencentCloud::Common::AbstractModel
        # @param Databases: 查询实例的数据库列表。若未使用 DbName 指定具体查询的数据库，则仅返回查询实例所有的数据库列表，而不返回 Collections 集合信息。
        # @type Databases: Array
        # @param Collections: 查询的集合信息。指定 DbName 时，则仅返回该数据库下的集合列表。
        # @type Collections: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Databases, :Collections, :RequestId

        def initialize(databases=nil, collections=nil, requestid=nil)
          @Databases = databases
          @Collections = collections
          @RequestId = requestid
        end

        def deserialize(params)
          @Databases = params['Databases']
          @Collections = params['Collections']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceNodeProperty请求参数结构体
      class DescribeDBInstanceNodePropertyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param NodeIds: 节点 ID。请登录 [MongoDB 控制台的节点管理](https://console.cloud.tencent.com/mongodb)复制节点 ID。
        # @type NodeIds: Array
        # @param Roles: 节点角色。可选值包括：
        # - PRIMARY：主节点。
        # - SECONDARY：从节点。
        # - READONLY：只读节点。
        # - ARBITER：仲裁节点。
        # @type Roles: Array
        # @param OnlyHidden: 该参数指定节点是否为 Hidden 节点，默认为 false。
        # @type OnlyHidden: Boolean
        # @param Priority: 该参数指定选举新主节点的优先级。其取值范围为[0,100]，数值越高，优先级越高。
        # @type Priority: Integer
        # @param Votes: 该参数指定节点投票权。
        # - 1：具有投票权。
        # - 0：无投票权。
        # @type Votes: Integer
        # @param Tags: 节点标签。
        # @type Tags: Array

        attr_accessor :InstanceId, :NodeIds, :Roles, :OnlyHidden, :Priority, :Votes, :Tags

        def initialize(instanceid=nil, nodeids=nil, roles=nil, onlyhidden=nil, priority=nil, votes=nil, tags=nil)
          @InstanceId = instanceid
          @NodeIds = nodeids
          @Roles = roles
          @OnlyHidden = onlyhidden
          @Priority = priority
          @Votes = votes
          @Tags = tags
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeIds = params['NodeIds']
          @Roles = params['Roles']
          @OnlyHidden = params['OnlyHidden']
          @Priority = params['Priority']
          @Votes = params['Votes']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              nodetag_tmp = NodeTag.new
              nodetag_tmp.deserialize(i)
              @Tags << nodetag_tmp
            end
          end
        end
      end

      # DescribeDBInstanceNodeProperty返回参数结构体
      class DescribeDBInstanceNodePropertyResponse < TencentCloud::Common::AbstractModel
        # @param Mongos: Mongos节点属性。
        # @type Mongos: Array
        # @param ReplicateSets: 副本集节点信息。
        # @type ReplicateSets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Mongos, :ReplicateSets, :RequestId

        def initialize(mongos=nil, replicatesets=nil, requestid=nil)
          @Mongos = mongos
          @ReplicateSets = replicatesets
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Mongos'].nil?
            @Mongos = []
            params['Mongos'].each do |i|
              nodeproperty_tmp = NodeProperty.new
              nodeproperty_tmp.deserialize(i)
              @Mongos << nodeproperty_tmp
            end
          end
          unless params['ReplicateSets'].nil?
            @ReplicateSets = []
            params['ReplicateSets'].each do |i|
              replicatesetinfo_tmp = ReplicateSetInfo.new
              replicatesetinfo_tmp.deserialize(i)
              @ReplicateSets << replicatesetinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceParamTplDetail请求参数结构体
      class DescribeDBInstanceParamTplDetailRequest < TencentCloud::Common::AbstractModel
        # @param TplId: 参数模板 ID。请通过接口 [DescribeDBInstanceParamTpl](https://cloud.tencent.com/document/product/240/109155) 获取模板 ID。
        # @type TplId: String
        # @param ParamName: 参数名称，传入该值，则只会获取该字段的参数详情。为空时，返回全部参数。
        # @type ParamName: String

        attr_accessor :TplId, :ParamName

        def initialize(tplid=nil, paramname=nil)
          @TplId = tplid
          @ParamName = paramname
        end

        def deserialize(params)
          @TplId = params['TplId']
          @ParamName = params['ParamName']
        end
      end

      # DescribeDBInstanceParamTplDetail返回参数结构体
      class DescribeDBInstanceParamTplDetailResponse < TencentCloud::Common::AbstractModel
        # @param InstanceEnumParams: 枚举类参数详情列表。
        # @type InstanceEnumParams: Array
        # @param InstanceIntegerParams: 整形参数详情列表。
        # @type InstanceIntegerParams: Array
        # @param InstanceTextParams: 文本参数详情列表。
        # @type InstanceTextParams: Array
        # @param InstanceMultiParams: 多值参数详情列表。
        # @type InstanceMultiParams: Array
        # @param TotalCount: 参数总个数。
        # @type TotalCount: Integer
        # @param MongoVersion: 模板适配的实例版本。
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本，
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # - MONGO_70_WT：MongoDB 7.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param ClusterType: 模板适配集群类型。
        # - REPLSET：副本集实例。
        # - SHARD：分片实例。
        # - STANDALONE：单节点实例。
        # @type ClusterType: String
        # @param TplName: 参数模板名称。
        # @type TplName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceEnumParams, :InstanceIntegerParams, :InstanceTextParams, :InstanceMultiParams, :TotalCount, :MongoVersion, :ClusterType, :TplName, :RequestId

        def initialize(instanceenumparams=nil, instanceintegerparams=nil, instancetextparams=nil, instancemultiparams=nil, totalcount=nil, mongoversion=nil, clustertype=nil, tplname=nil, requestid=nil)
          @InstanceEnumParams = instanceenumparams
          @InstanceIntegerParams = instanceintegerparams
          @InstanceTextParams = instancetextparams
          @InstanceMultiParams = instancemultiparams
          @TotalCount = totalcount
          @MongoVersion = mongoversion
          @ClusterType = clustertype
          @TplName = tplname
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceEnumParams'].nil?
            @InstanceEnumParams = []
            params['InstanceEnumParams'].each do |i|
              instanceenumparam_tmp = InstanceEnumParam.new
              instanceenumparam_tmp.deserialize(i)
              @InstanceEnumParams << instanceenumparam_tmp
            end
          end
          unless params['InstanceIntegerParams'].nil?
            @InstanceIntegerParams = []
            params['InstanceIntegerParams'].each do |i|
              instanceintegerparam_tmp = InstanceIntegerParam.new
              instanceintegerparam_tmp.deserialize(i)
              @InstanceIntegerParams << instanceintegerparam_tmp
            end
          end
          unless params['InstanceTextParams'].nil?
            @InstanceTextParams = []
            params['InstanceTextParams'].each do |i|
              instancetextparam_tmp = InstanceTextParam.new
              instancetextparam_tmp.deserialize(i)
              @InstanceTextParams << instancetextparam_tmp
            end
          end
          unless params['InstanceMultiParams'].nil?
            @InstanceMultiParams = []
            params['InstanceMultiParams'].each do |i|
              instancemultiparam_tmp = InstanceMultiParam.new
              instancemultiparam_tmp.deserialize(i)
              @InstanceMultiParams << instancemultiparam_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @MongoVersion = params['MongoVersion']
          @ClusterType = params['ClusterType']
          @TplName = params['TplName']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceParamTpl请求参数结构体
      class DescribeDBInstanceParamTplRequest < TencentCloud::Common::AbstractModel
        # @param TplIds: 参数模板 ID。请通过接口 [DescribeDBInstanceParamTpl](https://cloud.tencent.com/document/product/240/109155) 获取模板 ID。
        # @type TplIds: Array
        # @param TplNames: 指定查询的模板名称。
        # @type TplNames: Array
        # @param MongoVersion: 指定所需查询的参数模板的数据库版本号。具体支持的版本信息，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本，
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # - MONGO_70_WT：MongoDB 7.0 WiredTiger存储引擎版本。
        # @type MongoVersion: Array
        # @param TplType: 指定查询的模板类型。
        # - DEFAULT：系统默认模板。
        # - CUSTOMIZE：自定义模板。
        # @type TplType: String

        attr_accessor :TplIds, :TplNames, :MongoVersion, :TplType

        def initialize(tplids=nil, tplnames=nil, mongoversion=nil, tpltype=nil)
          @TplIds = tplids
          @TplNames = tplnames
          @MongoVersion = mongoversion
          @TplType = tpltype
        end

        def deserialize(params)
          @TplIds = params['TplIds']
          @TplNames = params['TplNames']
          @MongoVersion = params['MongoVersion']
          @TplType = params['TplType']
        end
      end

      # DescribeDBInstanceParamTpl返回参数结构体
      class DescribeDBInstanceParamTplResponse < TencentCloud::Common::AbstractModel
        # @param ParamTpls: 参数模板列表信息。
        # @type ParamTpls: Array
        # @param TotalCount: 参数模板总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ParamTpls, :TotalCount, :RequestId

        def initialize(paramtpls=nil, totalcount=nil, requestid=nil)
          @ParamTpls = paramtpls
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ParamTpls'].nil?
            @ParamTpls = []
            params['ParamTpls'].each do |i|
              paramtpl_tmp = ParamTpl.new
              paramtpl_tmp.deserialize(i)
              @ParamTpls << paramtpl_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstanceURL请求参数结构体
      class DescribeDBInstanceURLRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb#/)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeDBInstanceURL返回参数结构体
      class DescribeDBInstanceURLResponse < TencentCloud::Common::AbstractModel
        # @param Urls: 实例 URI 形式的连接串访问地址示例。包含：URI 类型及连接串地址。
        # @type Urls: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Urls, :RequestId

        def initialize(urls=nil, requestid=nil)
          @Urls = urls
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Urls'].nil?
            @Urls = []
            params['Urls'].each do |i|
              dburl_tmp = DbURL.new
              dburl_tmp.deserialize(i)
              @Urls << dburl_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceIds: Array
        # @param InstanceType: 指定查询的实例类型。取值范围如下：
        # - 0：所有实例。
        # - 1：正式实例。
        # - 2：临时实例
        # - 3：只读实例。
        # - -1：查询同时包括正式实例、只读实例与灾备实例。
        # @type InstanceType: Integer
        # @param ClusterType: 指定所查询实例的集群类型，取值范围如下：
        # - 0：副本集实例。
        # - 1：分片实例。
        # - -1：副本集与分片实例。
        # @type ClusterType: Integer
        # @param Status: 指定所查询实例的当前状态，取值范围如下所示：
        # - 0：待初始化。
        # - 1：流程处理中，例如：变更规格、参数修改等。
        # - 2：实例正常运行中。
        # - -2：已隔离（包年包月）。
        # - -3：已隔离（按量计费）。
        # @type Status: Array
        # @param VpcId: 私有网络的 ID。
        # - 基础网络则无需配置该参数。
        # - 请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表中，单击私有网络名称，在**私有网络**页面获取其 ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络的子网ID。
        # - 基础网络则无需配置该参数。
        # - 请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表中，单击私有网络名称，在**私有网络**页面获取其子网 ID。
        # @type SubnetId: String
        # @param PayMode: 指定所查询实例的付费类型。
        # - 0：查询按量计费实例。
        # - 1：查询包年包月实例。
        # - -1：查询按量计费与包年包月实例。
        # @type PayMode: Integer
        # @param Limit: 单次请求返回的数量。默认值为20，取值范围为(1,100]。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认值为0。
        # @type Offset: Integer
        # @param OrderBy: 配置返回结果排序依据的字段。目前支持依据"ProjectId"、"InstanceName"、"CreateTime"排序。
        # @type OrderBy: String
        # @param OrderByType: 配置返回结果的排序方式。
        # - ASC：升序。
        # - DESC：降序。
        # @type OrderByType: String
        # @param ProjectIds: 项目 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)，在右上角的账户信息下拉菜单中，选择项目管理查询项目。
        # @type ProjectIds: Array
        # @param SearchKey: 指定查询搜索的关键词。支持设置为具体的实例ID、实例名称或者内网 IP 地址。
        # @type SearchKey: String
        # @param Tags: 标签信息，包含标签键与标签值。
        # @type Tags: Array

        attr_accessor :InstanceIds, :InstanceType, :ClusterType, :Status, :VpcId, :SubnetId, :PayMode, :Limit, :Offset, :OrderBy, :OrderByType, :ProjectIds, :SearchKey, :Tags

        def initialize(instanceids=nil, instancetype=nil, clustertype=nil, status=nil, vpcid=nil, subnetid=nil, paymode=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil, projectids=nil, searchkey=nil, tags=nil)
          @InstanceIds = instanceids
          @InstanceType = instancetype
          @ClusterType = clustertype
          @Status = status
          @VpcId = vpcid
          @SubnetId = subnetid
          @PayMode = paymode
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
          @ProjectIds = projectids
          @SearchKey = searchkey
          @Tags = tags
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceType = params['InstanceType']
          @ClusterType = params['ClusterType']
          @Status = params['Status']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PayMode = params['PayMode']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
          @ProjectIds = params['ProjectIds']
          @SearchKey = params['SearchKey']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实例总数。
        # @type TotalCount: Integer
        # @param InstanceDetails: 实例详细信息列表。
        # @type InstanceDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceDetails, :RequestId

        def initialize(totalcount=nil, instancedetails=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceDetails = instancedetails
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceDetails'].nil?
            @InstanceDetails = []
            params['InstanceDetails'].each do |i|
              instancedetail_tmp = InstanceDetail.new
              instancedetail_tmp.deserialize(i)
              @InstanceDetails << instancedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDetailedSlowLogs请求参数结构体
      class DescribeDetailedSlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param StartTime: 指定查询慢日志的开始时间。- 格式：yyyy-mm-dd hh:mm:ss，如：2019-06-01 10:00:00。- 查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        # @type StartTime: String
        # @param EndTime: 指定查询慢日志的结束时间。
        # - 格式：yyyy-mm-dd hh:mm:ss，如：2019-06-02 12:00:00。
        # - 查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        # @type EndTime: String
        # @param ExecTime: 指定慢日志查询阈值，即查询执行时间大于此值的慢日志。单位：ms，默认值：100。
        # @type ExecTime: Integer
        # @param Commands: 指定查询慢日志的命令类型。
        # @type Commands: Array
        # @param Texts: 全文搜索关键字，多个关键字间为或关系。
        # @type Texts: Array
        # @param NodeNames: 指定查询慢日志的节点名称。请通过接口 [DescribeDBInstanceNodeProperty](https://cloud.tencent.com/document/product/240/82022) 查询节点名称。
        # @type NodeNames: Array
        # @param QueryHash: 指定查询 queryHash 值。
        # @type QueryHash: Array
        # @param Offset: 分页偏移量。默认值：0。取值范围：[0,100]。
        # @type Offset: Integer
        # @param Limit: 返回条数。默认值：20。取值范围：[0,10000]
        # @type Limit: Integer
        # @param OrderBy: 指定慢日志排序条件。
        # - StartTime：按照慢日志生成时间排序。
        # - ExecTime：按照慢日志执行时间排序。
        # @type OrderBy: String
        # @param OrderByType: 指定排序方式。
        # - desc：倒序。
        # - asc：顺序。
        # @type OrderByType: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :ExecTime, :Commands, :Texts, :NodeNames, :QueryHash, :Offset, :Limit, :OrderBy, :OrderByType

        def initialize(instanceid=nil, starttime=nil, endtime=nil, exectime=nil, commands=nil, texts=nil, nodenames=nil, queryhash=nil, offset=nil, limit=nil, orderby=nil, orderbytype=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @ExecTime = exectime
          @Commands = commands
          @Texts = texts
          @NodeNames = nodenames
          @QueryHash = queryhash
          @Offset = offset
          @Limit = limit
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ExecTime = params['ExecTime']
          @Commands = params['Commands']
          @Texts = params['Texts']
          @NodeNames = params['NodeNames']
          @QueryHash = params['QueryHash']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeDetailedSlowLogs返回参数结构体
      class DescribeDetailedSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足条件的慢日志数量。
        # @type TotalCount: Integer
        # @param DetailedSlowLogs: 慢日志详情。
        # @type DetailedSlowLogs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DetailedSlowLogs, :RequestId

        def initialize(totalcount=nil, detailedslowlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @DetailedSlowLogs = detailedslowlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DetailedSlowLogs'].nil?
            @DetailedSlowLogs = []
            params['DetailedSlowLogs'].each do |i|
              slowlogitem_tmp = SlowLogItem.new
              slowlogitem_tmp.deserialize(i)
              @DetailedSlowLogs << slowlogitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceParams请求参数结构体
      class DescribeInstanceParamsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待查询参数列表的实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
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
        # @param InstanceEnumParam: 参数值为枚举类型的参数集合。
        # @type InstanceEnumParam: Array
        # @param InstanceIntegerParam: 参数值为 Integer 类型的参数集合。
        # @type InstanceIntegerParam: Array
        # @param InstanceTextParam: 参数值为 Text 类型的参数集合。
        # @type InstanceTextParam: Array
        # @param InstanceMultiParam: 参数值为混合类型的参数集合。
        # @type InstanceMultiParam: Array
        # @param TotalCount: 当前实例支持修改的参数数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceEnumParam, :InstanceIntegerParam, :InstanceTextParam, :InstanceMultiParam, :TotalCount, :RequestId

        def initialize(instanceenumparam=nil, instanceintegerparam=nil, instancetextparam=nil, instancemultiparam=nil, totalcount=nil, requestid=nil)
          @InstanceEnumParam = instanceenumparam
          @InstanceIntegerParam = instanceintegerparam
          @InstanceTextParam = instancetextparam
          @InstanceMultiParam = instancemultiparam
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceEnumParam'].nil?
            @InstanceEnumParam = []
            params['InstanceEnumParam'].each do |i|
              instanceenumparam_tmp = InstanceEnumParam.new
              instanceenumparam_tmp.deserialize(i)
              @InstanceEnumParam << instanceenumparam_tmp
            end
          end
          unless params['InstanceIntegerParam'].nil?
            @InstanceIntegerParam = []
            params['InstanceIntegerParam'].each do |i|
              instanceintegerparam_tmp = InstanceIntegerParam.new
              instanceintegerparam_tmp.deserialize(i)
              @InstanceIntegerParam << instanceintegerparam_tmp
            end
          end
          unless params['InstanceTextParam'].nil?
            @InstanceTextParam = []
            params['InstanceTextParam'].each do |i|
              instancetextparam_tmp = InstanceTextParam.new
              instancetextparam_tmp.deserialize(i)
              @InstanceTextParam << instancetextparam_tmp
            end
          end
          unless params['InstanceMultiParam'].nil?
            @InstanceMultiParam = []
            params['InstanceMultiParam'].each do |i|
              instancemultiparam_tmp = InstanceMultiParam.new
              instancemultiparam_tmp.deserialize(i)
              @InstanceMultiParam << instancemultiparam_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLogDownloadTasks请求参数结构体
      class DescribeLogDownloadTasksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID
        # @type InstanceId: String
        # @param Limit: 查询条数
        # @type Limit: Integer
        # @param Offset: 页码
        # @type Offset: Integer
        # @param StartTime: 下载任务的开始时间
        # @type StartTime: String
        # @param EndTime: 下载任务的结束时间
        # @type EndTime: String

        attr_accessor :InstanceId, :Limit, :Offset, :StartTime, :EndTime

        def initialize(instanceid=nil, limit=nil, offset=nil, starttime=nil, endtime=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeLogDownloadTasks返回参数结构体
      class DescribeLogDownloadTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数量
        # @type TotalCount: Integer
        # @param Tasks: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId

        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMongodbLogs请求参数结构体
      class DescribeMongodbLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb#/)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param StartTime: 查询日志的开启时间。
        # - 格式：yyyy-mm-dd hh:mm:ss，如：2019-06-01 10:00:00。
        # - 查询时间范围：仅支持查询最近 7 天内的日志数据。
        # @type StartTime: String
        # @param EndTime: 查询日志的结束时间。
        # - 格式：yyyy-mm-dd hh:mm:ss，如：2019-06-01 10:00:00。
        # - 查询时间范围：仅支持查询最近 7 天内的日志数据。
        # @type EndTime: String
        # @param NodeNames: 节点 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)的**节点管理**页面获取查询的节点 ID。
        # @type NodeNames: Array
        # @param LogComponents: 日志类别。
        # - 日志类别包括但不限于 COMMAND、ACCESS、CONTROL、FTDC、INDEX、NETWORK、QUERY、REPL、SHARDING、STORAGE、RECOVERY、JOURNAL 和 WRITE 等。具体支持的类别可能会因 MongoDB 的版本而存在差异。具体信息，请参见[日志消息](https://www.mongodb.com/zh-cn/docs/v5.0/reference/log-messages/#log-message-examples)。
        # - 登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)，在**日志管理**页面的**错误日志**页签，也可查看**日志类别**。
        # @type LogComponents: Array
        # @param LogLevels: 日志级别。
        # - 日志级别按严重性从高到低依次为：FATAL、ERROR、WARNING。
        # - 登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)，在**日志管理**页面的**错误日志**页签，可查看**日志级别**。
        # @type LogLevels: Array
        # @param LogIds: 日志 ID。登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)，在**日志管理**页面的**错误日志**页签，可查看**日志 ID**。
        # @type LogIds: Array
        # @param LogConnections: 日志连接信息。登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)，在**日志管理**页面的**错误日志**页签，可查看**日志连接信息**。
        # @type LogConnections: Array
        # @param LogDetailParams: 指定日志筛选的字段。
        # @type LogDetailParams: Array
        # @param Offset: 偏移量，最小值为0，最大值为10000，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页大小，最小值为1，最大值为100，默认值为20。
        # @type Limit: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :NodeNames, :LogComponents, :LogLevels, :LogIds, :LogConnections, :LogDetailParams, :Offset, :Limit

        def initialize(instanceid=nil, starttime=nil, endtime=nil, nodenames=nil, logcomponents=nil, loglevels=nil, logids=nil, logconnections=nil, logdetailparams=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @NodeNames = nodenames
          @LogComponents = logcomponents
          @LogLevels = loglevels
          @LogIds = logids
          @LogConnections = logconnections
          @LogDetailParams = logdetailparams
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @NodeNames = params['NodeNames']
          @LogComponents = params['LogComponents']
          @LogLevels = params['LogLevels']
          @LogIds = params['LogIds']
          @LogConnections = params['LogConnections']
          @LogDetailParams = params['LogDetailParams']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeMongodbLogs返回参数结构体
      class DescribeMongodbLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 日志总数。
        # @type TotalCount: Integer
        # @param LogList: 日志详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LogList, :RequestId

        def initialize(totalcount=nil, loglist=nil, requestid=nil)
          @TotalCount = totalcount
          @LogList = loglist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LogList'].nil?
            @LogList = []
            params['LogList'].each do |i|
              loginfo_tmp = LogInfo.new
              loginfo_tmp.deserialize(i)
              @LogList << loginfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroup请求参数结构体
      class DescribeSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeSecurityGroup返回参数结构体
      class DescribeSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 实例绑定的安全组信息。
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

      # DescribeSlowLogPatterns请求参数结构体
      class DescribeSlowLogPatternsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param StartTime: 慢日志起始时间。
        # - 格式：yyyy-mm-dd hh:mm:ss，如：2019-06-01 10:00:00。
        # - 查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        # @type StartTime: String
        # @param EndTime: 慢日志终止时间。
        # - 格式：yyyy-mm-dd hh:mm:ss，如：2019-06-02 12:00:00。
        # - 查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        # @type EndTime: String
        # @param SlowMS: 慢日志执行时间阈值，返回执行时间超过该阈值的慢日志，单位为毫秒(ms)，最小为100毫秒。
        # @type SlowMS: Integer
        # @param Offset: 偏移量，最小值为0，最大值为10000，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页大小，最小值为1，最大值为100，默认值为20。
        # @type Limit: Integer
        # @param Format: 慢日志返回格式，可设置为json，不传默认返回原生慢日志格式。
        # @type Format: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :SlowMS, :Offset, :Limit, :Format

        def initialize(instanceid=nil, starttime=nil, endtime=nil, slowms=nil, offset=nil, limit=nil, format=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @SlowMS = slowms
          @Offset = offset
          @Limit = limit
          @Format = format
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SlowMS = params['SlowMS']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Format = params['Format']
        end
      end

      # DescribeSlowLogPatterns返回参数结构体
      class DescribeSlowLogPatternsResponse < TencentCloud::Common::AbstractModel
        # @param Count: 慢日志统计信息总数
        # @type Count: Integer
        # @param SlowLogPatterns: 慢日志统计信息
        # @type SlowLogPatterns: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :SlowLogPatterns, :RequestId

        def initialize(count=nil, slowlogpatterns=nil, requestid=nil)
          @Count = count
          @SlowLogPatterns = slowlogpatterns
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['SlowLogPatterns'].nil?
            @SlowLogPatterns = []
            params['SlowLogPatterns'].each do |i|
              slowlogpattern_tmp = SlowLogPattern.new
              slowlogpattern_tmp.deserialize(i)
              @SlowLogPatterns << slowlogpattern_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowLogs请求参数结构体
      class DescribeSlowLogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param StartTime: 慢日志起始时间。
        # - 格式：yyyy-mm-dd hh:mm:ss，如：2019-06-01 10:00:00。
        # - 查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        # @type StartTime: String
        # @param EndTime: 慢日志终止时间。
        # - 格式：yyyy-mm-dd hh:mm:ss，如：2019-06-02 12:00:00。
        # - 查询起止时间间隔不能超过24小时，只允许查询最近7天内慢日志。
        # @type EndTime: String
        # @param SlowMS: 慢日志执行时间阈值，返回执行时间超过该阈值的慢日志，单位为毫秒(ms)，最小为100毫秒。
        # @type SlowMS: Integer
        # @param Offset: 偏移量，最小值为0，最大值为10000，默认值为0。
        # @type Offset: Integer
        # @param Limit: 分页大小，最小值为1，最大值为100，默认值为20。
        # @type Limit: Integer
        # @param Format: 慢日志返回格式。默认返回原生慢日志格式，4.4及以上版本可设置为json。
        # @type Format: String

        attr_accessor :InstanceId, :StartTime, :EndTime, :SlowMS, :Offset, :Limit, :Format

        def initialize(instanceid=nil, starttime=nil, endtime=nil, slowms=nil, offset=nil, limit=nil, format=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @SlowMS = slowms
          @Offset = offset
          @Limit = limit
          @Format = format
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SlowMS = params['SlowMS']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Format = params['Format']
        end
      end

      # DescribeSlowLogs返回参数结构体
      class DescribeSlowLogsResponse < TencentCloud::Common::AbstractModel
        # @param Count: 慢日志总数。
        # @type Count: Integer
        # @param SlowLogs: 慢日志详情。
        # @type SlowLogs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :SlowLogs, :RequestId

        def initialize(count=nil, slowlogs=nil, requestid=nil)
          @Count = count
          @SlowLogs = slowlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @SlowLogs = params['SlowLogs']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpecInfo请求参数结构体
      class DescribeSpecInfoRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 待查询可用区。当前支持的可用区，请参见[地域与可用区](https://cloud.tencent.com/document/product/240/3637)。
        # @type Zone: String

        attr_accessor :Zone

        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # DescribeSpecInfo返回参数结构体
      class DescribeSpecInfoResponse < TencentCloud::Common::AbstractModel
        # @param SpecInfoList: 实例售卖规格信息列表。
        # @type SpecInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpecInfoList, :RequestId

        def initialize(specinfolist=nil, requestid=nil)
          @SpecInfoList = specinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SpecInfoList'].nil?
            @SpecInfoList = []
            params['SpecInfoList'].each do |i|
              specificationinfo_tmp = SpecificationInfo.new
              specificationinfo_tmp.deserialize(i)
              @SpecInfoList << specificationinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTransparentDataEncryptionStatus请求参数结构体
      class DescribeTransparentDataEncryptionStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeTransparentDataEncryptionStatus返回参数结构体
      class DescribeTransparentDataEncryptionStatusResponse < TencentCloud::Common::AbstractModel
        # @param TransparentDataEncryptionStatus: 表示是否开启了透明加密。
        # - close：未开启。
        # - open：已开启。
        # @type TransparentDataEncryptionStatus: String
        # @param KeyInfoList: 已绑定的密钥列表，如未绑定，返回null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyInfoList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TransparentDataEncryptionStatus, :KeyInfoList, :RequestId

        def initialize(transparentdataencryptionstatus=nil, keyinfolist=nil, requestid=nil)
          @TransparentDataEncryptionStatus = transparentdataencryptionstatus
          @KeyInfoList = keyinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          @TransparentDataEncryptionStatus = params['TransparentDataEncryptionStatus']
          unless params['KeyInfoList'].nil?
            @KeyInfoList = []
            params['KeyInfoList'].each do |i|
              kmsinfodetail_tmp = KMSInfoDetail.new
              kmsinfodetail_tmp.deserialize(i)
              @KeyInfoList << kmsinfodetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DropDBInstanceParamTpl请求参数结构体
      class DropDBInstanceParamTplRequest < TencentCloud::Common::AbstractModel
        # @param TplId: 参数模板 ID。请通过接口 [DescribeDBInstanceParamTpl](https://cloud.tencent.com/document/product/240/109155) 获取模板 ID。
        # @type TplId: String

        attr_accessor :TplId

        def initialize(tplid=nil)
          @TplId = tplid
        end

        def deserialize(params)
          @TplId = params['TplId']
        end
      end

      # DropDBInstanceParamTpl返回参数结构体
      class DropDBInstanceParamTplResponse < TencentCloud::Common::AbstractModel
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

      # EnableTransparentDataEncryption请求参数结构体
      class EnableTransparentDataEncryptionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。目前支持通用版本包含：4.4、5.0，云盘版暂不支持。
        # @type InstanceId: String
        # @param KmsRegion:  [密钥管理系统（Key Management Service，KMS）](https://cloud.tencent.com/document/product/573/18809)服务所在地域，例如 ap-shanghai。
        # @type KmsRegion: String
        # @param KeyId: 密钥 ID。若不设置该参数，不指定具体的密钥 ID，由腾讯云自动生成密钥。
        # @type KeyId: String

        attr_accessor :InstanceId, :KmsRegion, :KeyId

        def initialize(instanceid=nil, kmsregion=nil, keyid=nil)
          @InstanceId = instanceid
          @KmsRegion = kmsregion
          @KeyId = keyid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @KmsRegion = params['KmsRegion']
          @KeyId = params['KeyId']
        end
      end

      # EnableTransparentDataEncryption返回参数结构体
      class EnableTransparentDataEncryptionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 开启透明加密的异步流程id，用于查询流程状态。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 按 Key 闪回键值对
      class FBKeyValue < TencentCloud::Common::AbstractModel
        # @param Key: 指定按 Key 闪回的目标 Key （键） 。
        # @type Key: String
        # @param Value: 指定按 Key 闪回的目标 Key 所对应的 Value（值）。
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

      # 过滤条件
      class Filters < TencentCloud::Common::AbstractModel
        # @param Name: 搜索字段，目前支持：
        # "InstanceId"：实例Id，例如：cmgo-****）
        # "InstanceName"：实例名称
        # "ClusterId"：实例组Id，例如：cmgo-****
        # @type Name: String
        # @param Values: 筛选值
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

      # FlashBackDBInstance请求参数结构体
      class FlashBackDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 开启按 Key 回档的实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制需开启按 Key 回档的实例 ID。
        # @type InstanceId: String
        # @param TargetFlashbackTime: 指定数据回档的具体时间点，即将数据恢复到指定时间点的状态。
        # @type TargetFlashbackTime: String
        # @param TargetDatabases: 指定回档数据的目标库表。
        # @type TargetDatabases: Array
        # @param TargetInstanceId: 数据回档的目标实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制目标实例 ID。
        # @type TargetInstanceId: String

        attr_accessor :InstanceId, :TargetFlashbackTime, :TargetDatabases, :TargetInstanceId

        def initialize(instanceid=nil, targetflashbacktime=nil, targetdatabases=nil, targetinstanceid=nil)
          @InstanceId = instanceid
          @TargetFlashbackTime = targetflashbacktime
          @TargetDatabases = targetdatabases
          @TargetInstanceId = targetinstanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @TargetFlashbackTime = params['TargetFlashbackTime']
          unless params['TargetDatabases'].nil?
            @TargetDatabases = []
            params['TargetDatabases'].each do |i|
              flashbackdatabase_tmp = FlashbackDatabase.new
              flashbackdatabase_tmp.deserialize(i)
              @TargetDatabases << flashbackdatabase_tmp
            end
          end
          @TargetInstanceId = params['TargetInstanceId']
        end
      end

      # FlashBackDBInstance返回参数结构体
      class FlashBackDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 回档数据异步任务 ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 按 Key 闪回数据表
      class FlashbackCollection < TencentCloud::Common::AbstractModel
        # @param CollectionName: 指定按 Key 闪回源数据库集合名。
        # @type CollectionName: String
        # @param TargetResultCollectionName: 指定按 Key 闪回目标数据库集合名。
        # @type TargetResultCollectionName: String
        # @param FilterKey: 指定用于过滤按 Key 闪回的 Key（键）。
        # @type FilterKey: String
        # @param KeyValues: 指定用于按 Key 闪回的键值对。数组元素最大限制为 50000。
        # @type KeyValues: Array

        attr_accessor :CollectionName, :TargetResultCollectionName, :FilterKey, :KeyValues

        def initialize(collectionname=nil, targetresultcollectionname=nil, filterkey=nil, keyvalues=nil)
          @CollectionName = collectionname
          @TargetResultCollectionName = targetresultcollectionname
          @FilterKey = filterkey
          @KeyValues = keyvalues
        end

        def deserialize(params)
          @CollectionName = params['CollectionName']
          @TargetResultCollectionName = params['TargetResultCollectionName']
          @FilterKey = params['FilterKey']
          unless params['KeyValues'].nil?
            @KeyValues = []
            params['KeyValues'].each do |i|
              fbkeyvalue_tmp = FBKeyValue.new
              fbkeyvalue_tmp.deserialize(i)
              @KeyValues << fbkeyvalue_tmp
            end
          end
        end
      end

      # 按 Key 闪回的数据库及集合信息
      class FlashbackDatabase < TencentCloud::Common::AbstractModel
        # @param DBName: 按 Key 闪回目标数据所在库。
        # @type DBName: String
        # @param Collections: 按 Key 闪回的数据库集合。
        # @type Collections: Array

        attr_accessor :DBName, :Collections

        def initialize(dbname=nil, collections=nil)
          @DBName = dbname
          @Collections = collections
        end

        def deserialize(params)
          @DBName = params['DBName']
          unless params['Collections'].nil?
            @Collections = []
            params['Collections'].each do |i|
              flashbackcollection_tmp = FlashbackCollection.new
              flashbackcollection_tmp.deserialize(i)
              @Collections << flashbackcollection_tmp
            end
          end
        end
      end

      # FlushInstanceRouterConfig请求参数结构体
      class FlushInstanceRouterConfigRequest < TencentCloud::Common::AbstractModel
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

      # FlushInstanceRouterConfig返回参数结构体
      class FlushInstanceRouterConfigResponse < TencentCloud::Common::AbstractModel
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

      # InquirePriceCreateDBInstances请求参数结构体
      class InquirePriceCreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属区域及可用区信息。具体信息，请参见[地域和可用区](https://cloud.tencent.com/document/product/240/3637)。
        # @type Zone: String
        # @param NodeNum: - 创建副本集实例，指每个副本集内主从节点数量。每个副本集所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 创建分片集群实例，指每个分片的主从节点数量。每个分片所支持的最大节点数与最小节点数，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type NodeNum: Integer
        # @param Memory: 实例内存大小。
        # - 单位：GB。
        # - 取值范围：请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询，其返回的数据结构SpecItems中的参数CPU与Memory分别对应CPU核数与内存规格。
        # @type Memory: Integer
        # @param Volume: 实例硬盘大小。
        # - 单位：GB。
        # - 取值范围：请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询，其返回的数据结构SpecItems中的参数MinStorage与MaxStorage分别对应其最小磁盘规格与最大磁盘规格。
        # @type Volume: Integer
        # @param MongoVersion: 实例版本信息。具体支持的版本，请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询，其返回的数据结构SpecItems中的参数MongoVersionCode为实例所支持的版本信息。版本信息与版本号对应关系如下：
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # - MONGO_70_WT：MongoDB 7.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param MachineCode: 产品规格类型。
        # - HIO10G：通用高HIO万兆型。
        # - HCD：云盘版。
        # @type MachineCode: String
        # @param GoodsNum: 实例数量，取值范围为[1,10]。
        # @type GoodsNum: Integer
        # @param ClusterType: 实例类型。
        # - REPLSET：副本集。
        # - SHARD：分片集群。
        # @type ClusterType: String
        # @param ReplicateSetNum: - 创建副本集实例，指副本集数量，该参数只能为1。
        # - 创建分片集群实例，指分片的数量。请通过接口[DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567)查询分片数量的取值范围，其返回的数据结构SpecItems中的参数MinReplicateSetNum与MaxReplicateSetNum分别对应其最小值与最大值。
        # @type ReplicateSetNum: Integer
        # @param Period: - 选择包年包月计费模式，即 <b>InstanceChargeType </b>设定为<b>PREPAID</b>时，必须设置该参数，指定购买实例的购买时长。取值可选：[1,2,3,4,5,6,7,8,9,10,11,12,24,36]；单位：月。
        # -选择按量计费，即 <b>InstanceChargeType</b> 设定为 **POSTPAID_BY_HOUR** 时，该参数仅可配置为 1。
        # @type Period: Integer
        # @param InstanceChargeType: 实例付费方式。
        # - PREPAID：包年包月计费。
        # - POSTPAID_BY_HOUR：按量计费。
        # @type InstanceChargeType: String
        # @param MongosCpu: Mongos CPU 核数，支持1、2、4、8、16。购买分片集群时，必须填写。注意为空时取默认取值为2C。
        # @type MongosCpu: Integer
        # @param MongosMemory: Mongos 内存大小。-  购买分片集群时，必须填写。- 单位：GB，支持1核2GB、2核4GB、4核8GB、8核16GB、16核32GB。注意为空时取默认取值为4G。
        # @type MongosMemory: Integer
        # @param MongosNum: 指 Mongos 个数，取值范围为[3,32]。若为分片集群实例询价，则该参数必须设置。注意为空时取默认取值为3个节点。
        # @type MongosNum: Integer
        # @param ConfigServerCpu: 指 ConfigServer CPU核数，固定取值为 1，单位：GB，可不配置该参数。
        # @type ConfigServerCpu: Integer
        # @param ConfigServerMemory: 指 ConfigServer 内存大小，固定取值为 2，单位：GB，可不配置该参数。
        # @type ConfigServerMemory: Integer
        # @param ConfigServerVolume: 指 ConfigServer 磁盘大小，固定取值为 20，单位：GB，可不配置该参数。
        # @type ConfigServerVolume: Integer

        attr_accessor :Zone, :NodeNum, :Memory, :Volume, :MongoVersion, :MachineCode, :GoodsNum, :ClusterType, :ReplicateSetNum, :Period, :InstanceChargeType, :MongosCpu, :MongosMemory, :MongosNum, :ConfigServerCpu, :ConfigServerMemory, :ConfigServerVolume

        def initialize(zone=nil, nodenum=nil, memory=nil, volume=nil, mongoversion=nil, machinecode=nil, goodsnum=nil, clustertype=nil, replicatesetnum=nil, period=nil, instancechargetype=nil, mongoscpu=nil, mongosmemory=nil, mongosnum=nil, configservercpu=nil, configservermemory=nil, configservervolume=nil)
          @Zone = zone
          @NodeNum = nodenum
          @Memory = memory
          @Volume = volume
          @MongoVersion = mongoversion
          @MachineCode = machinecode
          @GoodsNum = goodsnum
          @ClusterType = clustertype
          @ReplicateSetNum = replicatesetnum
          @Period = period
          @InstanceChargeType = instancechargetype
          @MongosCpu = mongoscpu
          @MongosMemory = mongosmemory
          @MongosNum = mongosnum
          @ConfigServerCpu = configservercpu
          @ConfigServerMemory = configservermemory
          @ConfigServerVolume = configservervolume
        end

        def deserialize(params)
          @Zone = params['Zone']
          @NodeNum = params['NodeNum']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @MongoVersion = params['MongoVersion']
          @MachineCode = params['MachineCode']
          @GoodsNum = params['GoodsNum']
          @ClusterType = params['ClusterType']
          @ReplicateSetNum = params['ReplicateSetNum']
          @Period = params['Period']
          @InstanceChargeType = params['InstanceChargeType']
          @MongosCpu = params['MongosCpu']
          @MongosMemory = params['MongosMemory']
          @MongosNum = params['MongosNum']
          @ConfigServerCpu = params['ConfigServerCpu']
          @ConfigServerMemory = params['ConfigServerMemory']
          @ConfigServerVolume = params['ConfigServerVolume']
        end
      end

      # InquirePriceCreateDBInstances返回参数结构体
      class InquirePriceCreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格
        # @type Price: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstancePrice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = DBInstancePrice.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceModifyDBInstanceSpec请求参数结构体
      class InquirePriceModifyDBInstanceSpecRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Memory: 变更配置后实例内存大小，单位：GB。具体售卖的内存规格，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Memory: Integer
        # @param Volume: 变更配置后实例磁盘大小，单位：GB。每一个 CPU 规格对应的最大磁盘与最小磁盘范围，请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # @type Volume: Integer
        # @param NodeNum: 实例节点数量。请通过接口 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 获取。
        # - 副本集实例，指变更配置后实例的主从节点数量。
        # - 分片集群实例，指变更配置后实例每一个分片的主从节点数。
        # **说明**：切勿同时发起调整节点数、调整分片数、调整节点规格的任务。
        # @type NodeNum: Integer
        # @param ReplicateSetNum: 分片集群实例，指变更配置后实例的分片数量。取值范围：[2,36] 。
        # **说明**：变更后的分片数量不能小于当前现有的数量。切勿同时发起调整节点数、调整分片数与调整节点规格的任务。
        # @type ReplicateSetNum: Integer

        attr_accessor :InstanceId, :Memory, :Volume, :NodeNum, :ReplicateSetNum

        def initialize(instanceid=nil, memory=nil, volume=nil, nodenum=nil, replicatesetnum=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
          @NodeNum = nodenum
          @ReplicateSetNum = replicatesetnum
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @NodeNum = params['NodeNum']
          @ReplicateSetNum = params['ReplicateSetNum']
        end
      end

      # InquirePriceModifyDBInstanceSpec返回参数结构体
      class InquirePriceModifyDBInstanceSpecResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格。
        # @type Price: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstancePrice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = DBInstancePrice.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceRenewDBInstances请求参数结构体
      class InquirePriceRenewDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID。请登录[MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID，且单次最多同时查询5个实例。
        # @type InstanceIds: Array
        # @param InstanceChargePrepaid: 预付费模式（即包年包月）相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Mongodb.v20190725.models.InstanceChargePrepaid`

        attr_accessor :InstanceIds, :InstanceChargePrepaid

        def initialize(instanceids=nil, instancechargeprepaid=nil)
          @InstanceIds = instanceids
          @InstanceChargePrepaid = instancechargeprepaid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
        end
      end

      # InquirePriceRenewDBInstances返回参数结构体
      class InquirePriceRenewDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 价格
        # @type Price: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstancePrice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = DBInstancePrice.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。默认为1。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：
        # - NOTIFY_AND_AUTO_RENEW：通知过期且自动续费。在账户余额充足的情况下，实例到期后将按月自动续费。
        # - NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费。默认为NOTIFY_AND_MANUAL_RENEW。
        # - DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费。
        # @type RenewFlag: String

        attr_accessor :Period, :RenewFlag

        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 实例详情。
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param PayMode: 付费类型。
        # - 1：包年包月。
        # - 0：按量计费。
        # @type PayMode: Integer
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param ClusterType: 集群类型。
        # - 0：副本集实例。
        # - 1：分片实例。
        # @type ClusterType: Integer
        # @param Region: 地域信息。
        # @type Region: String
        # @param Zone: 可用区信息。
        # @type Zone: String
        # @param NetType: 网络类型。
        # - 0：基础网络。
        # - 1：私有网络。
        # @type NetType: Integer
        # @param VpcId: 私有网络的ID。
        # @type VpcId: String
        # @param SubnetId: 私有网络的子网ID。
        # @type SubnetId: String
        # @param Status: 实例状态。
        # - 0：待初始化。
        # - 1：流程处理中，例如：变更规格、参数修改等。
        # - 2：实例正常运行中。
        # - -2：已隔离（包年包月）。
        # - -3：已隔离（按量计费）。
        # @type Status: Integer
        # @param Vip: 实例IP。
        # @type Vip: String
        # @param Vport: 端口号。
        # @type Vport: Integer
        # @param CreateTime: 实例创建时间。
        # @type CreateTime: String
        # @param DeadLine: 实例到期时间。
        # @type DeadLine: String
        # @param MongoVersion: 实例存储引擎版本信息。
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本。
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # - MONGO_70_WT：MongoDB 7.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param Memory: 实例内存规格，单位：MB。
        # @type Memory: Integer
        # @param Volume: 实例磁盘规格，单位：MB。
        # @type Volume: Integer
        # @param CpuNum: 实例 CPU 核心数。
        # @type CpuNum: Integer
        # @param MachineType: 实例机器类型。
        # - HIO10G：通用高 HIO 万兆型。
        # - HCD：云盘版类型。
        # @type MachineType: String
        # @param SecondaryNum: 实例从节点数。
        # @type SecondaryNum: Integer
        # @param ReplicationSetNum: 实例分片数。
        # @type ReplicationSetNum: Integer
        # @param AutoRenewFlag: 实例自动续费标志。
        # - 0：手动续费。
        # - 1：自动续费。
        # - 2：确认不续费。
        # @type AutoRenewFlag: Integer
        # @param UsedVolume: 已用容量，单位：MB。
        # @type UsedVolume: Integer
        # @param MaintenanceStart: 维护窗口起始时间。
        # @type MaintenanceStart: String
        # @param MaintenanceEnd: 维护窗口结束时间。
        # @type MaintenanceEnd: String
        # @param ReplicaSets: 分片信息。
        # @type ReplicaSets: Array
        # @param ReadonlyInstances: 只读实例信息。
        # @type ReadonlyInstances: Array
        # @param StandbyInstances: 灾备实例信息。
        # @type StandbyInstances: Array
        # @param CloneInstances: 临时实例信息。
        # @type CloneInstances: Array
        # @param RelatedInstance: 关联实例信息，对于正式实例，该字段表示它的临时实例信息；对于临时实例，则表示它的正式实例信息;如果为只读/灾备实例,则表示他的主实例信息。
        # @type RelatedInstance: :class:`Tencentcloud::Mongodb.v20190725.models.DBInstanceInfo`
        # @param Tags: 实例标签信息集合。
        # @type Tags: Array
        # @param InstanceVer: 实例版本标记。
        # @type InstanceVer: Integer
        # @param ClusterVer: 实例版本标记。
        # @type ClusterVer: Integer
        # @param Protocol: 协议信息：mongodb。
        # @type Protocol: Integer
        # @param InstanceType: 实例类型。
        # - 0：所有实例。
        # - 1：正式实例。
        # - 2：临时实例
        # - 3：只读实例。
        # - -1：同时包括正式实例、只读实例与灾备实例。
        # @type InstanceType: Integer
        # @param InstanceStatusDesc: 实例状态描述。
        # @type InstanceStatusDesc: String
        # @param RealInstanceId: 实例对应的物理实例 ID。回档并替换过的实例有不同的 InstanceId 和 RealInstanceId，从 barad 获取监控数据等场景下需要用物理 ID 获取。
        # @type RealInstanceId: String
        # @param ZoneList: 实例当前可用区信息。
        # @type ZoneList: Array
        # @param MongosNodeNum: mongos 节点个数。
        # @type MongosNodeNum: Integer
        # @param MongosMemory: mongos 节点内存。单位：MB。
        # @type MongosMemory: Integer
        # @param MongosCpuNum: mongos 节点 CPU 核数。
        # @type MongosCpuNum: Integer
        # @param ConfigServerNodeNum: Config Server节点个数。
        # @type ConfigServerNodeNum: Integer
        # @param ConfigServerMemory: Config Server节点内存。单位：MB。
        # @type ConfigServerMemory: Integer
        # @param ConfigServerVolume: Config Server节点磁盘大小。单位：MB。
        # @type ConfigServerVolume: Integer
        # @param ConfigServerCpuNum: Config Server 节点 CPU 核数。
        # @type ConfigServerCpuNum: Integer
        # @param ReadonlyNodeNum: readonly节点个数。
        # @type ReadonlyNodeNum: Integer

        attr_accessor :InstanceId, :InstanceName, :PayMode, :ProjectId, :ClusterType, :Region, :Zone, :NetType, :VpcId, :SubnetId, :Status, :Vip, :Vport, :CreateTime, :DeadLine, :MongoVersion, :Memory, :Volume, :CpuNum, :MachineType, :SecondaryNum, :ReplicationSetNum, :AutoRenewFlag, :UsedVolume, :MaintenanceStart, :MaintenanceEnd, :ReplicaSets, :ReadonlyInstances, :StandbyInstances, :CloneInstances, :RelatedInstance, :Tags, :InstanceVer, :ClusterVer, :Protocol, :InstanceType, :InstanceStatusDesc, :RealInstanceId, :ZoneList, :MongosNodeNum, :MongosMemory, :MongosCpuNum, :ConfigServerNodeNum, :ConfigServerMemory, :ConfigServerVolume, :ConfigServerCpuNum, :ReadonlyNodeNum

        def initialize(instanceid=nil, instancename=nil, paymode=nil, projectid=nil, clustertype=nil, region=nil, zone=nil, nettype=nil, vpcid=nil, subnetid=nil, status=nil, vip=nil, vport=nil, createtime=nil, deadline=nil, mongoversion=nil, memory=nil, volume=nil, cpunum=nil, machinetype=nil, secondarynum=nil, replicationsetnum=nil, autorenewflag=nil, usedvolume=nil, maintenancestart=nil, maintenanceend=nil, replicasets=nil, readonlyinstances=nil, standbyinstances=nil, cloneinstances=nil, relatedinstance=nil, tags=nil, instancever=nil, clusterver=nil, protocol=nil, instancetype=nil, instancestatusdesc=nil, realinstanceid=nil, zonelist=nil, mongosnodenum=nil, mongosmemory=nil, mongoscpunum=nil, configservernodenum=nil, configservermemory=nil, configservervolume=nil, configservercpunum=nil, readonlynodenum=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @PayMode = paymode
          @ProjectId = projectid
          @ClusterType = clustertype
          @Region = region
          @Zone = zone
          @NetType = nettype
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @Vip = vip
          @Vport = vport
          @CreateTime = createtime
          @DeadLine = deadline
          @MongoVersion = mongoversion
          @Memory = memory
          @Volume = volume
          @CpuNum = cpunum
          @MachineType = machinetype
          @SecondaryNum = secondarynum
          @ReplicationSetNum = replicationsetnum
          @AutoRenewFlag = autorenewflag
          @UsedVolume = usedvolume
          @MaintenanceStart = maintenancestart
          @MaintenanceEnd = maintenanceend
          @ReplicaSets = replicasets
          @ReadonlyInstances = readonlyinstances
          @StandbyInstances = standbyinstances
          @CloneInstances = cloneinstances
          @RelatedInstance = relatedinstance
          @Tags = tags
          @InstanceVer = instancever
          @ClusterVer = clusterver
          @Protocol = protocol
          @InstanceType = instancetype
          @InstanceStatusDesc = instancestatusdesc
          @RealInstanceId = realinstanceid
          @ZoneList = zonelist
          @MongosNodeNum = mongosnodenum
          @MongosMemory = mongosmemory
          @MongosCpuNum = mongoscpunum
          @ConfigServerNodeNum = configservernodenum
          @ConfigServerMemory = configservermemory
          @ConfigServerVolume = configservervolume
          @ConfigServerCpuNum = configservercpunum
          @ReadonlyNodeNum = readonlynodenum
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @PayMode = params['PayMode']
          @ProjectId = params['ProjectId']
          @ClusterType = params['ClusterType']
          @Region = params['Region']
          @Zone = params['Zone']
          @NetType = params['NetType']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @CreateTime = params['CreateTime']
          @DeadLine = params['DeadLine']
          @MongoVersion = params['MongoVersion']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @CpuNum = params['CpuNum']
          @MachineType = params['MachineType']
          @SecondaryNum = params['SecondaryNum']
          @ReplicationSetNum = params['ReplicationSetNum']
          @AutoRenewFlag = params['AutoRenewFlag']
          @UsedVolume = params['UsedVolume']
          @MaintenanceStart = params['MaintenanceStart']
          @MaintenanceEnd = params['MaintenanceEnd']
          unless params['ReplicaSets'].nil?
            @ReplicaSets = []
            params['ReplicaSets'].each do |i|
              shardinfo_tmp = ShardInfo.new
              shardinfo_tmp.deserialize(i)
              @ReplicaSets << shardinfo_tmp
            end
          end
          unless params['ReadonlyInstances'].nil?
            @ReadonlyInstances = []
            params['ReadonlyInstances'].each do |i|
              dbinstanceinfo_tmp = DBInstanceInfo.new
              dbinstanceinfo_tmp.deserialize(i)
              @ReadonlyInstances << dbinstanceinfo_tmp
            end
          end
          unless params['StandbyInstances'].nil?
            @StandbyInstances = []
            params['StandbyInstances'].each do |i|
              dbinstanceinfo_tmp = DBInstanceInfo.new
              dbinstanceinfo_tmp.deserialize(i)
              @StandbyInstances << dbinstanceinfo_tmp
            end
          end
          unless params['CloneInstances'].nil?
            @CloneInstances = []
            params['CloneInstances'].each do |i|
              dbinstanceinfo_tmp = DBInstanceInfo.new
              dbinstanceinfo_tmp.deserialize(i)
              @CloneInstances << dbinstanceinfo_tmp
            end
          end
          unless params['RelatedInstance'].nil?
            @RelatedInstance = DBInstanceInfo.new
            @RelatedInstance.deserialize(params['RelatedInstance'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @InstanceVer = params['InstanceVer']
          @ClusterVer = params['ClusterVer']
          @Protocol = params['Protocol']
          @InstanceType = params['InstanceType']
          @InstanceStatusDesc = params['InstanceStatusDesc']
          @RealInstanceId = params['RealInstanceId']
          @ZoneList = params['ZoneList']
          @MongosNodeNum = params['MongosNodeNum']
          @MongosMemory = params['MongosMemory']
          @MongosCpuNum = params['MongosCpuNum']
          @ConfigServerNodeNum = params['ConfigServerNodeNum']
          @ConfigServerMemory = params['ConfigServerMemory']
          @ConfigServerVolume = params['ConfigServerVolume']
          @ConfigServerCpuNum = params['ConfigServerCpuNum']
          @ReadonlyNodeNum = params['ReadonlyNodeNum']
        end
      end

      # 实例可修改参数枚举类型集合。
      class InstanceEnumParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 参数当前值。
        # @type CurrentValue: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param EnumValue: 枚举值，所有支持的值。
        # @type EnumValue: Array
        # @param NeedRestart: 参数修改之后是否需要重启生效。
        # - 1：需要重启后生效。
        # - 0：无需重启，设置成功即可生效。
        # @type NeedRestart: String
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param Tips: 参数说明。
        # @type Tips: Array
        # @param ValueType: 参数值类型说明。
        # @type ValueType: String
        # @param Status: 是否为运行中参数值。
        # - 1：运行中参数值。
        # - 0：非运行中参数值。
        # @type Status: Integer

        attr_accessor :CurrentValue, :DefaultValue, :EnumValue, :NeedRestart, :ParamName, :Tips, :ValueType, :Status

        def initialize(currentvalue=nil, defaultvalue=nil, enumvalue=nil, needrestart=nil, paramname=nil, tips=nil, valuetype=nil, status=nil)
          @CurrentValue = currentvalue
          @DefaultValue = defaultvalue
          @EnumValue = enumvalue
          @NeedRestart = needrestart
          @ParamName = paramname
          @Tips = tips
          @ValueType = valuetype
          @Status = status
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @DefaultValue = params['DefaultValue']
          @EnumValue = params['EnumValue']
          @NeedRestart = params['NeedRestart']
          @ParamName = params['ParamName']
          @Tips = params['Tips']
          @ValueType = params['ValueType']
          @Status = params['Status']
        end
      end

      # 实例信息详情
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param AuditLogExpireDay: 审计日志保存时长。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditLogExpireDay: Integer
        # @param AuditStatus: 审计状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditStatus: String
        # @param InstanceId: 实例 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 实例名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param InstanceRole: 实例角色。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceRole: String
        # @param InstanceType: 实例类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceType: String
        # @param MongodbVersion: 数据库版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MongodbVersion: String
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param Region: 地域。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Status: 实例状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param SupportAudit: 是否支持审计。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportAudit: Boolean
        # @param Zone: 可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param TagList: 标签信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagList: Array

        attr_accessor :AuditLogExpireDay, :AuditStatus, :InstanceId, :InstanceName, :InstanceRole, :InstanceType, :MongodbVersion, :ProjectId, :Region, :Status, :SupportAudit, :Zone, :TagList

        def initialize(auditlogexpireday=nil, auditstatus=nil, instanceid=nil, instancename=nil, instancerole=nil, instancetype=nil, mongodbversion=nil, projectid=nil, region=nil, status=nil, supportaudit=nil, zone=nil, taglist=nil)
          @AuditLogExpireDay = auditlogexpireday
          @AuditStatus = auditstatus
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceRole = instancerole
          @InstanceType = instancetype
          @MongodbVersion = mongodbversion
          @ProjectId = projectid
          @Region = region
          @Status = status
          @SupportAudit = supportaudit
          @Zone = zone
          @TagList = taglist
        end

        def deserialize(params)
          @AuditLogExpireDay = params['AuditLogExpireDay']
          @AuditStatus = params['AuditStatus']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceRole = params['InstanceRole']
          @InstanceType = params['InstanceType']
          @MongodbVersion = params['MongodbVersion']
          @ProjectId = params['ProjectId']
          @Region = params['Region']
          @Status = params['Status']
          @SupportAudit = params['SupportAudit']
          @Zone = params['Zone']
          unless params['TagList'].nil?
            @TagList = []
            params['TagList'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @TagList << taginfo_tmp
            end
          end
        end
      end

      # 实例可修改参数 Integer 类型集合。
      class InstanceIntegerParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 参数当前值。
        # @type CurrentValue: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param Max: 参数最大值。
        # @type Max: String
        # @param Min: 最小值。
        # @type Min: String
        # @param NeedRestart: 参数修改之后是否需要重启生效。
        # - 1:需要重启后生效。
        # - 0：无需重启，设置成功即可生效。
        # @type NeedRestart: String
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param Tips: 参数说明。
        # @type Tips: Array
        # @param ValueType: 参数类型。
        # @type ValueType: String
        # @param Status: 是否为运行中参数值。
        # - 1：运行中参数值。
        # - 0：非运行中参数值。
        # @type Status: Integer
        # @param Unit: 冗余字段，可忽略。
        # @type Unit: String

        attr_accessor :CurrentValue, :DefaultValue, :Max, :Min, :NeedRestart, :ParamName, :Tips, :ValueType, :Status, :Unit

        def initialize(currentvalue=nil, defaultvalue=nil, max=nil, min=nil, needrestart=nil, paramname=nil, tips=nil, valuetype=nil, status=nil, unit=nil)
          @CurrentValue = currentvalue
          @DefaultValue = defaultvalue
          @Max = max
          @Min = min
          @NeedRestart = needrestart
          @ParamName = paramname
          @Tips = tips
          @ValueType = valuetype
          @Status = status
          @Unit = unit
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @DefaultValue = params['DefaultValue']
          @Max = params['Max']
          @Min = params['Min']
          @NeedRestart = params['NeedRestart']
          @ParamName = params['ParamName']
          @Tips = params['Tips']
          @ValueType = params['ValueType']
          @Status = params['Status']
          @Unit = params['Unit']
        end
      end

      # 实例可修改参数Multi类型集合。
      class InstanceMultiParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 参数当前值。
        # @type CurrentValue: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param EnumValue: 参考值范围。
        # @type EnumValue: Array
        # @param NeedRestart: 参数修改后是否需要重启才会生效。
        # - 1：需要重启后生效。
        # - 0：无需重启，设置成功即可生效。
        # @type NeedRestart: String
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param Status: 是否为运行中参数值。
        # - 1：运行中参数值。
        # - 0：非运行中参数值。
        # @type Status: Integer
        # @param Tips: 参数说明。
        # @type Tips: Array
        # @param ValueType: 当前值的类型描述，默认为multi。
        # @type ValueType: String

        attr_accessor :CurrentValue, :DefaultValue, :EnumValue, :NeedRestart, :ParamName, :Status, :Tips, :ValueType

        def initialize(currentvalue=nil, defaultvalue=nil, enumvalue=nil, needrestart=nil, paramname=nil, status=nil, tips=nil, valuetype=nil)
          @CurrentValue = currentvalue
          @DefaultValue = defaultvalue
          @EnumValue = enumvalue
          @NeedRestart = needrestart
          @ParamName = paramname
          @Status = status
          @Tips = tips
          @ValueType = valuetype
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @DefaultValue = params['DefaultValue']
          @EnumValue = params['EnumValue']
          @NeedRestart = params['NeedRestart']
          @ParamName = params['ParamName']
          @Status = params['Status']
          @Tips = params['Tips']
          @ValueType = params['ValueType']
        end
      end

      # 实例可修改参数为 Text 类型的参数集合。
      class InstanceTextParam < TencentCloud::Common::AbstractModel
        # @param CurrentValue: 参数当前值。
        # @type CurrentValue: String
        # @param DefaultValue: 参数默认值。
        # @type DefaultValue: String
        # @param NeedRestart: 修改参数值之后是否需要重启。
        # @type NeedRestart: String
        # @param ParamName: 参数名称。
        # @type ParamName: String
        # @param TextValue: Text 类型参数对应的值。
        # @type TextValue: String
        # @param Tips: 参数说明。
        # @type Tips: Array
        # @param ValueType: 参数值类型说明。
        # @type ValueType: String
        # @param Status: 是否为运行中的参数值。
        # - 1：运行中参数值。
        # - 0：非运行中参数值。
        # @type Status: String

        attr_accessor :CurrentValue, :DefaultValue, :NeedRestart, :ParamName, :TextValue, :Tips, :ValueType, :Status

        def initialize(currentvalue=nil, defaultvalue=nil, needrestart=nil, paramname=nil, textvalue=nil, tips=nil, valuetype=nil, status=nil)
          @CurrentValue = currentvalue
          @DefaultValue = defaultvalue
          @NeedRestart = needrestart
          @ParamName = paramname
          @TextValue = textvalue
          @Tips = tips
          @ValueType = valuetype
          @Status = status
        end

        def deserialize(params)
          @CurrentValue = params['CurrentValue']
          @DefaultValue = params['DefaultValue']
          @NeedRestart = params['NeedRestart']
          @ParamName = params['ParamName']
          @TextValue = params['TextValue']
          @Tips = params['Tips']
          @ValueType = params['ValueType']
          @Status = params['Status']
        end
      end

      # IsolateDBInstance请求参数结构体
      class IsolateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制需隔离的实例 ID。
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

      # KMS密钥信息
      class KMSInfoDetail < TencentCloud::Common::AbstractModel
        # @param KeyId: 主密钥 ID。
        # @type KeyId: String
        # @param KeyName: 主密钥名称。
        # @type KeyName: String
        # @param CreateTime: 实例与密钥绑定时间。
        # @type CreateTime: String
        # @param Status: 密钥状态。
        # - Enabled：开启。
        # - Disabled：不开启。
        # @type Status: String
        # @param KeyUsage: 密钥用途。
        # @type KeyUsage: String
        # @param KeyOrigin: 密钥来源。
        # @type KeyOrigin: String
        # @param KmsRegion: kms所在地域。
        # @type KmsRegion: String

        attr_accessor :KeyId, :KeyName, :CreateTime, :Status, :KeyUsage, :KeyOrigin, :KmsRegion

        def initialize(keyid=nil, keyname=nil, createtime=nil, status=nil, keyusage=nil, keyorigin=nil, kmsregion=nil)
          @KeyId = keyid
          @KeyName = keyname
          @CreateTime = createtime
          @Status = status
          @KeyUsage = keyusage
          @KeyOrigin = keyorigin
          @KmsRegion = kmsregion
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeyName = params['KeyName']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @KeyUsage = params['KeyUsage']
          @KeyOrigin = params['KeyOrigin']
          @KmsRegion = params['KmsRegion']
        end
      end

      # KillOps请求参数结构体
      class KillOpsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Operations: 待终止的操作。
        # @type Operations: Array

        attr_accessor :InstanceId, :Operations

        def initialize(instanceid=nil, operations=nil)
          @InstanceId = instanceid
          @Operations = operations
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Operations'].nil?
            @Operations = []
            params['Operations'].each do |i|
              operation_tmp = Operation.new
              operation_tmp.deserialize(i)
              @Operations << operation_tmp
            end
          end
        end
      end

      # KillOps返回参数结构体
      class KillOpsResponse < TencentCloud::Common::AbstractModel
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

      # 过滤条件
      class LogFilter < TencentCloud::Common::AbstractModel
        # @param Type: 过滤条件名称
        # @type Type: String
        # @param Compare: 过滤条件匹配类型，注意：此参数取值只能等于EQ
        # @type Compare: String
        # @param Value: 过滤条件匹配值
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

      # 日志详情
      class LogInfo < TencentCloud::Common::AbstractModel
        # @param LogComponent: 日志类别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogComponent: String
        # @param LogLevel: 日志级别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogLevel: String
        # @param LogTime: 日志产生时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogTime: String
        # @param LogDetail: 日志详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogDetail: String
        # @param LogConnection: 日志连接信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogConnection: String
        # @param LogId: 日志id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogId: String

        attr_accessor :LogComponent, :LogLevel, :LogTime, :LogDetail, :LogConnection, :LogId

        def initialize(logcomponent=nil, loglevel=nil, logtime=nil, logdetail=nil, logconnection=nil, logid=nil)
          @LogComponent = logcomponent
          @LogLevel = loglevel
          @LogTime = logtime
          @LogDetail = logdetail
          @LogConnection = logconnection
          @LogId = logid
        end

        def deserialize(params)
          @LogComponent = params['LogComponent']
          @LogLevel = params['LogLevel']
          @LogTime = params['LogTime']
          @LogDetail = params['LogDetail']
          @LogConnection = params['LogConnection']
          @LogId = params['LogId']
        end
      end

      # ModifyAuditService请求参数结构体
      class ModifyAuditServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-xfts****，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param LogExpireDay: 审计日志保存时长。单位为：天。当前支持的取值包括： 7： 一周。 30： 一个月。 90： 三个月。 180 ： 六个月。 365 ： 一年。 1095 ： 三年。 1825 ： 五年。
        # @type LogExpireDay: Integer
        # @param AuditAll: true-全审计，false-规则审计，注意：AuditAll=true 时，RuleFilters 无需填参
        # @type AuditAll: Boolean
        # @param RuleFilters: 审计过滤规则，Type的范围【SrcIp、DB、Collection、User、SqlType】，注意：Type=SqlType时，Value必须在这个范围 ["query", "insert", "update", "delete", "command"]
        # @type RuleFilters: Array

        attr_accessor :InstanceId, :LogExpireDay, :AuditAll, :RuleFilters

        def initialize(instanceid=nil, logexpireday=nil, auditall=nil, rulefilters=nil)
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
          @AuditAll = auditall
          @RuleFilters = rulefilters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogExpireDay = params['LogExpireDay']
          @AuditAll = params['AuditAll']
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              logfilter_tmp = LogFilter.new
              logfilter_tmp.deserialize(i)
              @RuleFilters << logfilter_tmp
            end
          end
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

      # ModifyDBInstanceNetworkAddress请求参数结构体
      class ModifyDBInstanceNetworkAddressRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定需修改网络的实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param OldIpExpiredTime: 原 IP 地址保留时长。
        # - 单位为分钟，0表示立即回收原 IP 地址。
        # - 原 IP 将在约定时间后释放，在释放前原 IP和新 IP均可访问。
        # @type OldIpExpiredTime: Integer
        # @param NewUniqVpcId: 切换后的私有网络 ID，若实例当前为基础网络，该字段无需配置。请通过接口 [DescribeDBInstances](https://cloud.tencent.com/document/product/240/38568) 获取私有网络 ID。
        # @type NewUniqVpcId: String
        # @param NewUniqSubnetId: 切换后私有网络的子网 ID。若实例当前为基础网络，该字段无需配置。请通过接口 [DescribeDBInstances](https://cloud.tencent.com/document/product/240/38568) 获取私有网络的子网 ID。
        # @type NewUniqSubnetId: String
        # @param NetworkAddresses: IP 地址信息，包含新 IP 地址与 原 IP 地址。
        # @type NetworkAddresses: Array

        attr_accessor :InstanceId, :OldIpExpiredTime, :NewUniqVpcId, :NewUniqSubnetId, :NetworkAddresses

        def initialize(instanceid=nil, oldipexpiredtime=nil, newuniqvpcid=nil, newuniqsubnetid=nil, networkaddresses=nil)
          @InstanceId = instanceid
          @OldIpExpiredTime = oldipexpiredtime
          @NewUniqVpcId = newuniqvpcid
          @NewUniqSubnetId = newuniqsubnetid
          @NetworkAddresses = networkaddresses
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldIpExpiredTime = params['OldIpExpiredTime']
          @NewUniqVpcId = params['NewUniqVpcId']
          @NewUniqSubnetId = params['NewUniqSubnetId']
          unless params['NetworkAddresses'].nil?
            @NetworkAddresses = []
            params['NetworkAddresses'].each do |i|
              modifynetworkaddress_tmp = ModifyNetworkAddress.new
              modifynetworkaddress_tmp.deserialize(i)
              @NetworkAddresses << modifynetworkaddress_tmp
            end
          end
        end
      end

      # ModifyDBInstanceNetworkAddress返回参数结构体
      class ModifyDBInstanceNetworkAddressResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 修改网络异步流程任务ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyDBInstanceParamTpl请求参数结构体
      class ModifyDBInstanceParamTplRequest < TencentCloud::Common::AbstractModel
        # @param TplId: 待修改的参数模板 ID。请通过接口 [DescribeDBInstanceParamTpl](https://cloud.tencent.com/document/product/240/109155) 获取模板 ID。
        # @type TplId: String
        # @param TplName: 待修改参数模板名称，为空时，保持原有名称。
        # @type TplName: String
        # @param TplDesc: 待修改参数模板描述，为空时，保持原有描述。
        # @type TplDesc: String
        # @param Params: 待修改参数名及参数值，为空时，各参数保持原有值，支持单条或批量修改。
        # @type Params: Array

        attr_accessor :TplId, :TplName, :TplDesc, :Params

        def initialize(tplid=nil, tplname=nil, tpldesc=nil, params=nil)
          @TplId = tplid
          @TplName = tplname
          @TplDesc = tpldesc
          @Params = params
        end

        def deserialize(params)
          @TplId = params['TplId']
          @TplName = params['TplName']
          @TplDesc = params['TplDesc']
          unless params['Params'].nil?
            @Params = []
            params['Params'].each do |i|
              paramtype_tmp = ParamType.new
              paramtype_tmp.deserialize(i)
              @Params << paramtype_tmp
            end
          end
        end
      end

      # ModifyDBInstanceParamTpl返回参数结构体
      class ModifyDBInstanceParamTplResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceSecurityGroup请求参数结构体
      class ModifyDBInstanceSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param SecurityGroupIds: 目标安全组 ID。请登录[安全组控制台页面](https://console.cloud.tencent.com/vpc/security-group)复制目标安全组 ID。
        # **注意**：该入参会全量替换存量已有集合，非增量更新。修改需传入预期的全量集合。
        # @type SecurityGroupIds: Array

        attr_accessor :InstanceId, :SecurityGroupIds

        def initialize(instanceid=nil, securitygroupids=nil)
          @InstanceId = instanceid
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # ModifyDBInstanceSecurityGroup返回参数结构体
      class ModifyDBInstanceSecurityGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceSpec请求参数结构体
      class ModifyDBInstanceSpecRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param Memory: 实例配置变更后的内存大小。单位：GB。该参数为空值时，默认取实例当前的内存大小。当前所支持的内存规格，请参见[产品规格](https://cloud.tencent.com/document/product/240/64125)。
        # **注意**：内存和磁盘必须同时升配或同时降配，即 Memory 与 Volume 需同时配置变更。
        # @type Memory: Integer
        # @param Volume: 实例配置变更后的硬盘大小，单位：GB。该参数为空值时，默认取当前实例的磁盘大小。当前所支持的磁盘容量，请参见[产品规格](https://cloud.tencent.com/document/product/240/64125)。
        # - 内存和磁盘必须同时升配或同时降配，即 Memory 与 Volume 需同时配置变更。
        # - 降配时，变更后的磁盘容量必须大于已用磁盘容量的1.2倍。
        # @type Volume: Integer
        # @param OplogSize: (已废弃) 请使用ResizeOplog独立接口完成。

        # 实例配置变更后 Oplog 的大小。
        # - 单位：GB。
        # - 默认 Oplog 占用容量为磁盘空间的10%。系统允许设置的 Oplog 容量范围为磁盘空间的[10%,90%]。
        # @type OplogSize: Integer
        # @param NodeNum: 实例变更后 mongod 的节点数（不包含 readonly 只读节点数）。
        # -  副本集节点数：请通过 [DescribeSpecInfo ](https://cloud.tencent.com/document/product/240/38567)接口返回的参数 MinNodeNum 与 MaxNodeNum 获取节点数量取值范围。
        # -  分片集群每个分片节点数：请通过 [DescribeSpecInfo ](https://cloud.tencent.com/document/product/240/38567)接口返回的参数 MinReplicateSetNodeNum 与 MaxReplicateSetNodeNum 获取节点数量取值范围。
        # **说明**：变更 mongod 或 mongos 的 CPU 与内存规格时，该参数可以不配置或者输入当前 mongod 或 mongos（不包含readonly）节点数量。
        # @type NodeNum: Integer
        # @param ReplicateSetNum: 实例变更后的分片数。
        # - 请通过 [DescribeSpecInfo](https://cloud.tencent.com/document/product/240/38567) 接口返回的参数**MinReplicateSetNum**与**MaxReplicateSetNum**获取实例分片数取值范围。
        # - 实例分片数量只允许增加不允许减少。
        # @type ReplicateSetNum: Integer
        # @param InMaintenance: 实例配置变更的切换时间。
        # - 0：调整完成时，立即执行变配任务。默认为0。
        # - 1：在维护时间窗内，执行变配任务。
        # **说明**：调整节点数和分片数不支持在<b>维护时间窗内</b>变更。
        # @type InMaintenance: Integer
        # @param MongosMemory: 分片实例配置变更后的 mongos 内存大小。单位：GB。实例支持的规格，请参见[产品规格](https://cloud.tencent.com/document/product/240/64125)。
        # @type MongosMemory: String
        # @param AddNodeList: 新增节点列表，节点类型及可用区信息。
        # @type AddNodeList: Array
        # @param RemoveNodeList: 删除节点列表。
        # **注意**：基于分片实例各片节点的一致性原则，删除分片实例节点时，只需指定0分片对应的节点即可，如：cmgo-9nl1czif_0-node-readonly0 将删除每个分片的第1个只读节点。
        # @type RemoveNodeList: Array

        attr_accessor :InstanceId, :Memory, :Volume, :OplogSize, :NodeNum, :ReplicateSetNum, :InMaintenance, :MongosMemory, :AddNodeList, :RemoveNodeList
        extend Gem::Deprecate
        deprecate :OplogSize, :none, 2025, 11
        deprecate :OplogSize=, :none, 2025, 11

        def initialize(instanceid=nil, memory=nil, volume=nil, oplogsize=nil, nodenum=nil, replicatesetnum=nil, inmaintenance=nil, mongosmemory=nil, addnodelist=nil, removenodelist=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Volume = volume
          @OplogSize = oplogsize
          @NodeNum = nodenum
          @ReplicateSetNum = replicatesetnum
          @InMaintenance = inmaintenance
          @MongosMemory = mongosmemory
          @AddNodeList = addnodelist
          @RemoveNodeList = removenodelist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @OplogSize = params['OplogSize']
          @NodeNum = params['NodeNum']
          @ReplicateSetNum = params['ReplicateSetNum']
          @InMaintenance = params['InMaintenance']
          @MongosMemory = params['MongosMemory']
          unless params['AddNodeList'].nil?
            @AddNodeList = []
            params['AddNodeList'].each do |i|
              addnodelist_tmp = AddNodeList.new
              addnodelist_tmp.deserialize(i)
              @AddNodeList << addnodelist_tmp
            end
          end
          unless params['RemoveNodeList'].nil?
            @RemoveNodeList = []
            params['RemoveNodeList'].each do |i|
              removenodelist_tmp = RemoveNodeList.new
              removenodelist_tmp.deserialize(i)
              @RemoveNodeList << removenodelist_tmp
            end
          end
        end
      end

      # ModifyDBInstanceSpec返回参数结构体
      class ModifyDBInstanceSpecResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstanceParams请求参数结构体
      class ModifyInstanceParamsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param InstanceParams: 指定需修改的参数名及值。当前所支持的参数名及对应取值范围，请通过 [DescribeInstanceParams ](https://cloud.tencent.com/document/product/240/65903)获取。
        # @type InstanceParams: Array
        # @param ModifyType: 操作类型，包括：
        # - IMMEDIATELY：立即调整。
        # - DELAY：延迟调整。可选字段，不配置该参数则默认为立即调整。
        # @type ModifyType: String

        attr_accessor :InstanceId, :InstanceParams, :ModifyType

        def initialize(instanceid=nil, instanceparams=nil, modifytype=nil)
          @InstanceId = instanceid
          @InstanceParams = instanceparams
          @ModifyType = modifytype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['InstanceParams'].nil?
            @InstanceParams = []
            params['InstanceParams'].each do |i|
              modifymongodbparamtype_tmp = ModifyMongoDBParamType.new
              modifymongodbparamtype_tmp.deserialize(i)
              @InstanceParams << modifymongodbparamtype_tmp
            end
          end
          @ModifyType = params['ModifyType']
        end
      end

      # ModifyInstanceParams返回参数结构体
      class ModifyInstanceParamsResponse < TencentCloud::Common::AbstractModel
        # @param Changed: 修改参数配置是否生效。
        # - true：参数修改后的值已生效。
        # - false：执行失败。
        # @type Changed: Boolean
        # @param TaskId: 该参数暂时无意义(兼容前端保留)。
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Changed, :TaskId, :RequestId

        def initialize(changed=nil, taskid=nil, requestid=nil)
          @Changed = changed
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @Changed = params['Changed']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 修改mongoDB实例，请求参数
      class ModifyMongoDBParamType < TencentCloud::Common::AbstractModel
        # @param Key: 需要修改的参数名称，请严格参考通过 DescribeInstanceParams 获取的当前实例支持的参数名。
        # @type Key: String
        # @param Value: 需要修改的参数名称对应的值，请严格参考通过 DescribeInstanceParams 获取的参数对应的值的范围。
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

      # 修改数据库地址
      class ModifyNetworkAddress < TencentCloud::Common::AbstractModel
        # @param NewIPAddress: 新IP地址。
        # @type NewIPAddress: String
        # @param OldIpAddress: 原IP地址。
        # @type OldIpAddress: String

        attr_accessor :NewIPAddress, :OldIpAddress

        def initialize(newipaddress=nil, oldipaddress=nil)
          @NewIPAddress = newipaddress
          @OldIpAddress = oldipaddress
        end

        def deserialize(params)
          @NewIPAddress = params['NewIPAddress']
          @OldIpAddress = params['OldIpAddress']
        end
      end

      # 节点属性
      class NodeProperty < TencentCloud::Common::AbstractModel
        # @param Zone: 节点所在的可用区。
        # @type Zone: String
        # @param NodeName: 节点名称。
        # @type NodeName: String
        # @param Address: 节点访问地址。
        # @type Address: String
        # @param WanServiceAddress: 节点公网访问外网地址(IP或域名，示例为IP方式)。
        # @type WanServiceAddress: String
        # @param Role: 节点角色。
        # - PRIMARY：主节点。
        # - SECONDARY：从节点。
        # - READONLY：只读节点。
        # - ARBITER：仲裁节点。
        # @type Role: String
        # @param Hidden: 节点是否为 Hidden 节点。
        # - true：Hidden 节点。
        # - false：非 Hidden 节点。
        # @type Hidden: Boolean
        # @param Status: 节点状态。
        # - NORMAL：正常运行中。
        # - STARTUP：正在启动。
        # - STARTUP2：正在启动，处理中间数据。
        # - RECOVERING：恢复中，暂不可用。
        # - DOWN：已掉线。
        # - UNKNOWN：未知状态。
        # - ROLLBACK：回滚中。
        # - REMOVED：已移除。
        # @type Status: String
        # @param SlaveDelay: 主从同步延迟时间，单位：秒。
        # @type SlaveDelay: Integer
        # @param Priority: 节点优先级。其取值范围为[0,100]，数值越高，优先级越高。
        # @type Priority: Integer
        # @param Votes: 节点投票权。
        # - 1：具有投票权。
        # - 0：无投票权。
        # @type Votes: Integer
        # @param Tags: 节点标签。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param ReplicateSetId: 副本集 ID。
        # @type ReplicateSetId: String

        attr_accessor :Zone, :NodeName, :Address, :WanServiceAddress, :Role, :Hidden, :Status, :SlaveDelay, :Priority, :Votes, :Tags, :ReplicateSetId

        def initialize(zone=nil, nodename=nil, address=nil, wanserviceaddress=nil, role=nil, hidden=nil, status=nil, slavedelay=nil, priority=nil, votes=nil, tags=nil, replicatesetid=nil)
          @Zone = zone
          @NodeName = nodename
          @Address = address
          @WanServiceAddress = wanserviceaddress
          @Role = role
          @Hidden = hidden
          @Status = status
          @SlaveDelay = slavedelay
          @Priority = priority
          @Votes = votes
          @Tags = tags
          @ReplicateSetId = replicatesetid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @NodeName = params['NodeName']
          @Address = params['Address']
          @WanServiceAddress = params['WanServiceAddress']
          @Role = params['Role']
          @Hidden = params['Hidden']
          @Status = params['Status']
          @SlaveDelay = params['SlaveDelay']
          @Priority = params['Priority']
          @Votes = params['Votes']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              nodetag_tmp = NodeTag.new
              nodetag_tmp.deserialize(i)
              @Tags << nodetag_tmp
            end
          end
          @ReplicateSetId = params['ReplicateSetId']
        end
      end

      # 节点Tag
      class NodeTag < TencentCloud::Common::AbstractModel
        # @param TagKey: 节点Tag key
        # @type TagKey: String
        # @param TagValue: 节点Tag Value
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

      # OfflineIsolatedDBInstance请求参数结构体
      class OfflineIsolatedDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。请登录 [MongoDB 控制台回收站](https://console.cloud.tencent.com/mongodb/recycle)在实例列表复制需下线的实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # OfflineIsolatedDBInstance返回参数结构体
      class OfflineIsolatedDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # OpenAuditService请求参数结构体
      class OpenAuditServiceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，格式如：cmgo-xfts****，与云数据库控制台页面中显示的实例 ID 相同。
        # @type InstanceId: String
        # @param LogExpireDay: 审计日志保存时长。单位为：天。当前支持的取值包括： 7： 一周。 30： 一个月。 90： 三个月。 180 ： 六个月。 365 ： 一年。 1095 ： 三年。 1825 ： 五年。
        # @type LogExpireDay: Integer
        # @param AuditAll: true-全审计，false-规则审计，注意：AuditAll=true 时，RuleFilters 无需填参
        # @type AuditAll: Boolean
        # @param RuleFilters: 审计过滤规则，Type的范围【SrcIp、DB、Collection、User、SqlType】，注意：Type=SqlType时，Value必须在这个范围 ["query", "insert", "update", "delete", "command"]
        # @type RuleFilters: Array

        attr_accessor :InstanceId, :LogExpireDay, :AuditAll, :RuleFilters

        def initialize(instanceid=nil, logexpireday=nil, auditall=nil, rulefilters=nil)
          @InstanceId = instanceid
          @LogExpireDay = logexpireday
          @AuditAll = auditall
          @RuleFilters = rulefilters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @LogExpireDay = params['LogExpireDay']
          @AuditAll = params['AuditAll']
          unless params['RuleFilters'].nil?
            @RuleFilters = []
            params['RuleFilters'].each do |i|
              logfilter_tmp = LogFilter.new
              logfilter_tmp.deserialize(i)
              @RuleFilters << logfilter_tmp
            end
          end
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

      # 需要终止的操作。
      class Operation < TencentCloud::Common::AbstractModel
        # @param ReplicaSetName: 操作所在的分片名称。请通过接口 [DescribeCurrentOp](https://cloud.tencent.com/document/product/240/48120) 查询分片名称。
        # @type ReplicaSetName: String
        # @param NodeName: 操作所在的节点名。请通过接口 [DescribeCurrentOp](https://cloud.tencent.com/document/product/240/48120) 查询节点名称。
        # @type NodeName: String
        # @param OpId: 操作序号。请通过接口 [DescribeCurrentOp](https://cloud.tencent.com/document/product/240/48120) 查询操作序号。
        # @type OpId: Integer

        attr_accessor :ReplicaSetName, :NodeName, :OpId

        def initialize(replicasetname=nil, nodename=nil, opid=nil)
          @ReplicaSetName = replicasetname
          @NodeName = nodename
          @OpId = opid
        end

        def deserialize(params)
          @ReplicaSetName = params['ReplicaSetName']
          @NodeName = params['NodeName']
          @OpId = params['OpId']
        end
      end

      # 数据库参数模板
      class ParamTpl < TencentCloud::Common::AbstractModel
        # @param TplName: 参数模板名称。
        # @type TplName: String
        # @param TplId: 参数模板 ID。
        # @type TplId: String
        # @param MongoVersion: 参数模板适用的数据库版本。
        # - MONGO_36_WT：MongoDB 3.6 WiredTiger存储引擎版本，
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本，
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # - MONGO_70_WT：MongoDB 7.0 WiredTiger存储引擎版本。
        # @type MongoVersion: String
        # @param ClusterType: 参数模板适用的数据库类型。
        # - REPLSET：副本集实例。
        # - SHARD：分片实例。
        # - STANDALONE：单节点实例。
        # @type ClusterType: String
        # @param TplDesc: 参数模板描述。
        # @type TplDesc: String
        # @param TplType: 模板类型。
        # - DEFAULT：系统默认模板。
        # - CUSTOMIZE：自定义模板。
        # @type TplType: String

        attr_accessor :TplName, :TplId, :MongoVersion, :ClusterType, :TplDesc, :TplType

        def initialize(tplname=nil, tplid=nil, mongoversion=nil, clustertype=nil, tpldesc=nil, tpltype=nil)
          @TplName = tplname
          @TplId = tplid
          @MongoVersion = mongoversion
          @ClusterType = clustertype
          @TplDesc = tpldesc
          @TplType = tpltype
        end

        def deserialize(params)
          @TplName = params['TplName']
          @TplId = params['TplId']
          @MongoVersion = params['MongoVersion']
          @ClusterType = params['ClusterType']
          @TplDesc = params['TplDesc']
          @TplType = params['TplType']
        end
      end

      # 数据库参数
      class ParamType < TencentCloud::Common::AbstractModel
        # @param Key: 参数
        # @type Key: String
        # @param Value: 参数值
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

      # 修改实例节点详情。
      class RemoveNodeList < TencentCloud::Common::AbstractModel
        # @param Role: 需要删除的节点角色。
        # - SECONDARY：Mongod 从节点。
        # - READONLY：只读节点。
        # - MONGOS：Mongos 节点。
        # @type Role: String
        # @param NodeName: 要删除的节点 ID。分片集群须指定一组分片要删除的节点名称即可，其余分片对该组对齐。
        # - 获取方式：登录 [MongoDB控制台](https://console.cloud.tencent.com/mongodb)，在**节点管理**页签，可获取**节点 ID**。
        # - 特别说明：分片集群同一节点上的分片，仅需指定0分片节点 ID 即可。例如：cmgo-6hfk\*\*\*\*\_0-node-primary。
        # @type NodeName: String
        # @param Zone: 节点所对应的可用区。当前支持可用区信息，请参见[地域和可用区](https://cloud.tencent.com/document/product/240/3637)。
        # - 单可用区，所有节点在同一可用区。
        # - 多可用区：当前标准规格是三可用区分布，主从节点不在同一可用区，需注意配置所删除节点对应的可用区，且删除后必须满足任意2个可用区节点数大于第3个可用区原则。
        # @type Zone: String

        attr_accessor :Role, :NodeName, :Zone

        def initialize(role=nil, nodename=nil, zone=nil)
          @Role = role
          @NodeName = nodename
          @Zone = zone
        end

        def deserialize(params)
          @Role = params['Role']
          @NodeName = params['NodeName']
          @Zone = params['Zone']
        end
      end

      # RenameInstance请求参数结构体
      class RenameInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，格式如：cmgo-p8vnipr5。请登录[MongoDB 控制台](https://console.cloud.tencent.com/mongodb#/)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param NewName: 自定义实例名称，要求为1～128 长度的任意字符。
        # @type NewName: String

        attr_accessor :InstanceId, :NewName

        def initialize(instanceid=nil, newname=nil)
          @InstanceId = instanceid
          @NewName = newname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NewName = params['NewName']
        end
      end

      # RenameInstance返回参数结构体
      class RenameInstanceResponse < TencentCloud::Common::AbstractModel
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

      # RenewDBInstances请求参数结构体
      class RenewDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 指定续费的一个或多个待操作的实例ID。
        # - 可通过[DescribeDBInstances](https://cloud.tencent.com/document/product/240/38568)接口返回值中的**InstanceId**获取。
        # - 每次续费请求的实例数量上限为100。
        # @type InstanceIds: Array
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的续费时长、是否设置自动续费等属性。包年包月实例该参数为必传参数。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Mongodb.v20190725.models.InstanceChargePrepaid`

        attr_accessor :InstanceIds, :InstanceChargePrepaid

        def initialize(instanceids=nil, instancechargeprepaid=nil)
          @InstanceIds = instanceids
          @InstanceChargePrepaid = instancechargeprepaid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
        end
      end

      # RenewDBInstances返回参数结构体
      class RenewDBInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 分片信息。
      class ReplicaSetInfo < TencentCloud::Common::AbstractModel
        # @param ReplicaSetId: 副本集 ID。
        # @type ReplicaSetId: String

        attr_accessor :ReplicaSetId

        def initialize(replicasetid=nil)
          @ReplicaSetId = replicasetid
        end

        def deserialize(params)
          @ReplicaSetId = params['ReplicaSetId']
        end
      end

      # 副本集信息
      class ReplicateSetInfo < TencentCloud::Common::AbstractModel
        # @param Nodes: 节点属性
        # @type Nodes: Array

        attr_accessor :Nodes

        def initialize(nodes=nil)
          @Nodes = nodes
        end

        def deserialize(params)
          unless params['Nodes'].nil?
            @Nodes = []
            params['Nodes'].each do |i|
              nodeproperty_tmp = NodeProperty.new
              nodeproperty_tmp.deserialize(i)
              @Nodes << nodeproperty_tmp
            end
          end
        end
      end

      # ResetDBInstancePassword请求参数结构体
      class ResetDBInstancePasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param UserName: 指定需修改密码的账号名称。可通过接口 [DescribeAccountUsers](https://cloud.tencent.com/document/product/240/80800) 获取账号列表，复制需修改密码的账号。
        # @type UserName: String
        # @param Password: 指定账户的新密码。密码复杂度要求：
        # - 8-32个字符长度。
        # - 至少包含字母、数字和字符（!@#%^\*()\_）中的两种。
        # @type Password: String

        attr_accessor :InstanceId, :UserName, :Password

        def initialize(instanceid=nil, username=nil, password=nil)
          @InstanceId = instanceid
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # ResetDBInstancePassword返回参数结构体
      class ResetDBInstancePasswordResponse < TencentCloud::Common::AbstractModel
        # @param AsyncRequestId: 任务请求 ID。
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

      # RestartNodes请求参数结构体
      class RestartNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param NodeIds: 需要重启的节点 ID 列表。
        # - 支持重启的节点类型包含：mongod节点、只读节点、mongos节点。
        # - 节点 ID，请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在**节点管理**页面复制，或者通过 [DescribeDBInstanceNodeProperty ](https://cloud.tencent.com/document/product/240/82022)接口获取。
        # @type NodeIds: Array

        attr_accessor :InstanceId, :NodeIds

        def initialize(instanceid=nil, nodeids=nil)
          @InstanceId = instanceid
          @NodeIds = nodeids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeIds = params['NodeIds']
        end
      end

      # RestartNodes返回参数结构体
      class RestartNodesResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程 ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 安全组信息
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param ProjectId: 所属项目 ID。
        # @type ProjectId: Integer
        # @param CreateTime: 安全组创建时间。
        # @type CreateTime: String
        # @param Inbound: 安全组入站规则。
        # @type Inbound: Array
        # @param Outbound: 安全组出站规则。
        # @type Outbound: Array
        # @param SecurityGroupId: 安全组 ID。
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称。
        # @type SecurityGroupName: String
        # @param SecurityGroupRemark: 安全组备注信息。
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
              securitygroupbound_tmp = SecurityGroupBound.new
              securitygroupbound_tmp.deserialize(i)
              @Inbound << securitygroupbound_tmp
            end
          end
          unless params['Outbound'].nil?
            @Outbound = []
            params['Outbound'].each do |i|
              securitygroupbound_tmp = SecurityGroupBound.new
              securitygroupbound_tmp.deserialize(i)
              @Outbound << securitygroupbound_tmp
            end
          end
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupRemark = params['SecurityGroupRemark']
        end
      end

      # 安全组规则
      class SecurityGroupBound < TencentCloud::Common::AbstractModel
        # @param Action: 执行策略。
        # - ACCEPT：允许，放行该端口相应的访问请求。
        # - DROP：拒绝，直接丢弃数据包，不返回任何回应信息。
        # @type Action: String
        # @param CidrIp: 访问数据库的入站 IP 或 IP 段。
        # @type CidrIp: String
        # @param PortRange: 访问数据库的端口。
        # @type PortRange: String
        # @param IpProtocol: 传输层协议：tcp。
        # @type IpProtocol: String
        # @param Id: 安全组 ID。
        # @type Id: String
        # @param AddressModule: IP 地址或 IP 地址组参数模板 ID。请登录[参数模板控制台](https://console.cloud.tencent.com/vpc/template/ip)获取参数模板 IP 地址详情。
        # @type AddressModule: String
        # @param ServiceModule: 协议端口或协议端口组参数模板 ID。请登录[参数模板控制台](https://console.cloud.tencent.com/vpc/template/protoport)获取参数模板协议端口详情。
        # @type ServiceModule: String
        # @param Desc: 安全组描述信息。
        # @type Desc: String

        attr_accessor :Action, :CidrIp, :PortRange, :IpProtocol, :Id, :AddressModule, :ServiceModule, :Desc

        def initialize(action=nil, cidrip=nil, portrange=nil, ipprotocol=nil, id=nil, addressmodule=nil, servicemodule=nil, desc=nil)
          @Action = action
          @CidrIp = cidrip
          @PortRange = portrange
          @IpProtocol = ipprotocol
          @Id = id
          @AddressModule = addressmodule
          @ServiceModule = servicemodule
          @Desc = desc
        end

        def deserialize(params)
          @Action = params['Action']
          @CidrIp = params['CidrIp']
          @PortRange = params['PortRange']
          @IpProtocol = params['IpProtocol']
          @Id = params['Id']
          @AddressModule = params['AddressModule']
          @ServiceModule = params['ServiceModule']
          @Desc = params['Desc']
        end
      end

      # SetAccountUserPrivilege请求参数结构体
      class SetAccountUserPrivilegeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定待设置账号的实例ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param UserName: 设置访问实例的账号名称。设置要求为：字母开头的1-64个字符，只可输入[A,Z]、[a,z]、[1,9]范围的字符以及下划线“_”与短划线“-”。
        # @type UserName: String
        # @param AuthRole: 设置权限信息。
        # @type AuthRole: Array

        attr_accessor :InstanceId, :UserName, :AuthRole

        def initialize(instanceid=nil, username=nil, authrole=nil)
          @InstanceId = instanceid
          @UserName = username
          @AuthRole = authrole
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          unless params['AuthRole'].nil?
            @AuthRole = []
            params['AuthRole'].each do |i|
              auth_tmp = Auth.new
              auth_tmp.deserialize(i)
              @AuthRole << auth_tmp
            end
          end
        end
      end

      # SetAccountUserPrivilege返回参数结构体
      class SetAccountUserPrivilegeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务ID。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # SetBackupRules请求参数结构体
      class SetBackupRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID，例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param BackupMethod: 备份方式。
        # - 0：逻辑备份。
        # - 1：物理备份。
        # - 3：快照备份。
        # **说明**:
        # 1. 通用版实例支持逻辑备份与物理备份。云盘版实例支持物理备份与快照备份，暂不支持逻辑备份。
        # 2. 实例开通存储加密，则备份方式不能为物理备份。
        # @type BackupMethod: Integer
        # @param BackupTime: 设置自动备份开始时间。取值范围为：[0,23]，例如：该参数设置为2，表示02:00开始备份。
        # @type BackupTime: Integer
        # @param Notify: 设置自动备份发生错误时，是否发送失败告警。
        # - true：发送。
        # - false：不发送。
        # @type Notify: Boolean
        # @param BackupRetentionPeriod: 指定备份数据保存天数。默认为 7 天，支持设置为7、30、90、180、365。
        # @type BackupRetentionPeriod: Integer

        attr_accessor :InstanceId, :BackupMethod, :BackupTime, :Notify, :BackupRetentionPeriod

        def initialize(instanceid=nil, backupmethod=nil, backuptime=nil, notify=nil, backupretentionperiod=nil)
          @InstanceId = instanceid
          @BackupMethod = backupmethod
          @BackupTime = backuptime
          @Notify = notify
          @BackupRetentionPeriod = backupretentionperiod
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupMethod = params['BackupMethod']
          @BackupTime = params['BackupTime']
          @Notify = params['Notify']
          @BackupRetentionPeriod = params['BackupRetentionPeriod']
        end
      end

      # SetBackupRules返回参数结构体
      class SetBackupRulesResponse < TencentCloud::Common::AbstractModel
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

      # SetDBInstanceDeletionProtection请求参数结构体
      class SetDBInstanceDeletionProtectionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceIds: Array
        # @param EnableDeletionProtection: 实例销毁保护选项，取值范围：0-关闭销毁保护，1-开启销毁保护
        # @type EnableDeletionProtection: Integer

        attr_accessor :InstanceIds, :EnableDeletionProtection

        def initialize(instanceids=nil, enabledeletionprotection=nil)
          @InstanceIds = instanceids
          @EnableDeletionProtection = enabledeletionprotection
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @EnableDeletionProtection = params['EnableDeletionProtection']
        end
      end

      # SetDBInstanceDeletionProtection返回参数结构体
      class SetDBInstanceDeletionProtectionResponse < TencentCloud::Common::AbstractModel
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

      # SetInstanceMaintenance请求参数结构体
      class SetInstanceMaintenanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定实例ID。例如：cmgo-p8vn****。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制实例 ID。
        # @type InstanceId: String
        # @param MaintenanceStart: 维护时间窗开始时间。取值范围为"00:00-23:00"的任意整点或半点，如00:00或00:30。
        # @type MaintenanceStart: String
        # @param MaintenanceEnd: 维护时间窗结束时间。
        # - 取值范围为"00:00-23:00"的任意整点或半点，维护时间持续时长最小为30分钟，最大为3小时。
        # - 结束时间务必是基于开始时间向后的时间。
        # @type MaintenanceEnd: String

        attr_accessor :InstanceId, :MaintenanceStart, :MaintenanceEnd

        def initialize(instanceid=nil, maintenancestart=nil, maintenanceend=nil)
          @InstanceId = instanceid
          @MaintenanceStart = maintenancestart
          @MaintenanceEnd = maintenanceend
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MaintenanceStart = params['MaintenanceStart']
          @MaintenanceEnd = params['MaintenanceEnd']
        end
      end

      # SetInstanceMaintenance返回参数结构体
      class SetInstanceMaintenanceResponse < TencentCloud::Common::AbstractModel
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

      # 实例分片详情
      class ShardInfo < TencentCloud::Common::AbstractModel
        # @param UsedVolume: 分片已使用容量
        # @type UsedVolume: Float
        # @param ReplicaSetId: 分片ID
        # @type ReplicaSetId: String
        # @param ReplicaSetName: 分片名
        # @type ReplicaSetName: String
        # @param Memory: 分片内存规格，单位为MB
        # @type Memory: Integer
        # @param Volume: 分片磁盘规格，单位为MB
        # @type Volume: Integer
        # @param OplogSize: 分片Oplog大小，单位为MB
        # @type OplogSize: Integer
        # @param SecondaryNum: 分片从节点数
        # @type SecondaryNum: Integer
        # @param RealReplicaSetId: 分片物理id
        # @type RealReplicaSetId: String

        attr_accessor :UsedVolume, :ReplicaSetId, :ReplicaSetName, :Memory, :Volume, :OplogSize, :SecondaryNum, :RealReplicaSetId

        def initialize(usedvolume=nil, replicasetid=nil, replicasetname=nil, memory=nil, volume=nil, oplogsize=nil, secondarynum=nil, realreplicasetid=nil)
          @UsedVolume = usedvolume
          @ReplicaSetId = replicasetid
          @ReplicaSetName = replicasetname
          @Memory = memory
          @Volume = volume
          @OplogSize = oplogsize
          @SecondaryNum = secondarynum
          @RealReplicaSetId = realreplicasetid
        end

        def deserialize(params)
          @UsedVolume = params['UsedVolume']
          @ReplicaSetId = params['ReplicaSetId']
          @ReplicaSetName = params['ReplicaSetName']
          @Memory = params['Memory']
          @Volume = params['Volume']
          @OplogSize = params['OplogSize']
          @SecondaryNum = params['SecondaryNum']
          @RealReplicaSetId = params['RealReplicaSetId']
        end
      end

      # 慢日志详情
      class SlowLogItem < TencentCloud::Common::AbstractModel
        # @param Log: 慢日志详情。
        # @type Log: String
        # @param NodeName: 节点名称。
        # @type NodeName: String
        # @param QueryHash: 查询哈希值。
        # @type QueryHash: String

        attr_accessor :Log, :NodeName, :QueryHash

        def initialize(log=nil, nodename=nil, queryhash=nil)
          @Log = log
          @NodeName = nodename
          @QueryHash = queryhash
        end

        def deserialize(params)
          @Log = params['Log']
          @NodeName = params['NodeName']
          @QueryHash = params['QueryHash']
        end
      end

      # 用于描述MongoDB数据库慢日志统计信息
      class SlowLogPattern < TencentCloud::Common::AbstractModel
        # @param Pattern: 慢日志输出格式：库名.表名.命令。
        # @type Pattern: String
        # @param QueryHash: 记录慢日志时所带的queryHash 值，标识一类查询。
        # @type QueryHash: String
        # @param MaxTime: 最大执行时间。单位：毫秒。
        # @type MaxTime: Integer
        # @param AverageTime: 平均执行时间。单位：毫秒。
        # @type AverageTime: Integer
        # @param Total: 慢日志条数。
        # @type Total: Integer

        attr_accessor :Pattern, :QueryHash, :MaxTime, :AverageTime, :Total

        def initialize(pattern=nil, queryhash=nil, maxtime=nil, averagetime=nil, total=nil)
          @Pattern = pattern
          @QueryHash = queryhash
          @MaxTime = maxtime
          @AverageTime = averagetime
          @Total = total
        end

        def deserialize(params)
          @Pattern = params['Pattern']
          @QueryHash = params['QueryHash']
          @MaxTime = params['MaxTime']
          @AverageTime = params['AverageTime']
          @Total = params['Total']
        end
      end

      # mongodb售卖规格。
      class SpecItem < TencentCloud::Common::AbstractModel
        # @param SpecCode: 规格信息标识。格式如：mongo.HIO10G.128g。由节点类型、规格类型、内存规格三部分组成。
        # - 节点类型：**mongo**，指 Mongod 节点；**mongos**，指 Mongos 节点；**cfgstr**，指 Configserver 节点。
        # - 规格类型：**HIO10G**，指通用高HIO万兆型；**HCD**：指云盘版类型。
        # - 内存规格：支持4、8、16、32、64、128、240、512。单位g：表示GB。128g 则表示128GB。
        # @type SpecCode: String
        # @param Status: 售卖规格有效标志，取值范围如下：
        # - 0：停止售卖，
        # - 1：开放售卖。
        # @type Status: Integer
        # @param Cpu: 计算资源规格，CPU核数。
        # @type Cpu: Integer
        # @param Memory: 内存规格，单位为：MB。
        # @type Memory: Integer
        # @param DefaultStorage: 默认磁盘规格，单位为：MB。
        # @type DefaultStorage: Integer
        # @param MaxStorage: 最大磁盘规格，单位为：MB。
        # @type MaxStorage: Integer
        # @param MinStorage: 最小磁盘规格，单位为：MB。
        # @type MinStorage: Integer
        # @param Qps: 指每秒最大请求次数，单位为：次/秒。
        # @type Qps: Integer
        # @param Conns: 规格所支持的最大连接数限制。
        # @type Conns: Integer
        # @param MongoVersionCode: 实例存储引擎版本信息。
        # - MONGO_40_WT：MongoDB 4.0 WiredTiger存储引擎版本。
        # - MONGO_42_WT：MongoDB 4.2 WiredTiger存储引擎版本。
        # - MONGO_44_WT：MongoDB 4.4 WiredTiger存储引擎版本。
        # - MONGO_50_WT：MongoDB 5.0 WiredTiger存储引擎版本。
        # - MONGO_60_WT：MongoDB 6.0 WiredTiger存储引擎版本。
        # - MONGO_70_WT：MongoDB 7.0 WiredTiger存储引擎版本。
        # @type MongoVersionCode: String
        # @param MongoVersionValue: 实例版本对应的数字版本。
        # @type MongoVersionValue: Integer
        # @param Version: 实例版本信息。支持：4.2、4.4、5.0、6.0、7.0。
        # @type Version: String
        # @param EngineName: 存储引擎。
        # @type EngineName: String
        # @param ClusterType: 集群类型，取值如下：
        # - 1：分片集群。
        # - 0：副本集集群。
        # @type ClusterType: Integer
        # @param MinNodeNum: 每个副本集最小节点数。
        # @type MinNodeNum: Integer
        # @param MaxNodeNum: 每个副本集最大节点数。
        # @type MaxNodeNum: Integer
        # @param MinReplicateSetNum: 最小分片数。
        # @type MinReplicateSetNum: Integer
        # @param MaxReplicateSetNum: 最大分片数。
        # @type MaxReplicateSetNum: Integer
        # @param MinReplicateSetNodeNum: 每个分片最小节点数。
        # @type MinReplicateSetNodeNum: Integer
        # @param MaxReplicateSetNodeNum: 每个分片最大节点数。
        # @type MaxReplicateSetNodeNum: Integer
        # @param MachineType: 集群的规格类型，取值范围如下：
        # - HIO10G：通用高HIO万兆型。
        # - HCD：云盘版类型。
        # @type MachineType: String

        attr_accessor :SpecCode, :Status, :Cpu, :Memory, :DefaultStorage, :MaxStorage, :MinStorage, :Qps, :Conns, :MongoVersionCode, :MongoVersionValue, :Version, :EngineName, :ClusterType, :MinNodeNum, :MaxNodeNum, :MinReplicateSetNum, :MaxReplicateSetNum, :MinReplicateSetNodeNum, :MaxReplicateSetNodeNum, :MachineType

        def initialize(speccode=nil, status=nil, cpu=nil, memory=nil, defaultstorage=nil, maxstorage=nil, minstorage=nil, qps=nil, conns=nil, mongoversioncode=nil, mongoversionvalue=nil, version=nil, enginename=nil, clustertype=nil, minnodenum=nil, maxnodenum=nil, minreplicatesetnum=nil, maxreplicatesetnum=nil, minreplicatesetnodenum=nil, maxreplicatesetnodenum=nil, machinetype=nil)
          @SpecCode = speccode
          @Status = status
          @Cpu = cpu
          @Memory = memory
          @DefaultStorage = defaultstorage
          @MaxStorage = maxstorage
          @MinStorage = minstorage
          @Qps = qps
          @Conns = conns
          @MongoVersionCode = mongoversioncode
          @MongoVersionValue = mongoversionvalue
          @Version = version
          @EngineName = enginename
          @ClusterType = clustertype
          @MinNodeNum = minnodenum
          @MaxNodeNum = maxnodenum
          @MinReplicateSetNum = minreplicatesetnum
          @MaxReplicateSetNum = maxreplicatesetnum
          @MinReplicateSetNodeNum = minreplicatesetnodenum
          @MaxReplicateSetNodeNum = maxreplicatesetnodenum
          @MachineType = machinetype
        end

        def deserialize(params)
          @SpecCode = params['SpecCode']
          @Status = params['Status']
          @Cpu = params['Cpu']
          @Memory = params['Memory']
          @DefaultStorage = params['DefaultStorage']
          @MaxStorage = params['MaxStorage']
          @MinStorage = params['MinStorage']
          @Qps = params['Qps']
          @Conns = params['Conns']
          @MongoVersionCode = params['MongoVersionCode']
          @MongoVersionValue = params['MongoVersionValue']
          @Version = params['Version']
          @EngineName = params['EngineName']
          @ClusterType = params['ClusterType']
          @MinNodeNum = params['MinNodeNum']
          @MaxNodeNum = params['MaxNodeNum']
          @MinReplicateSetNum = params['MinReplicateSetNum']
          @MaxReplicateSetNum = params['MaxReplicateSetNum']
          @MinReplicateSetNodeNum = params['MinReplicateSetNodeNum']
          @MaxReplicateSetNodeNum = params['MaxReplicateSetNodeNum']
          @MachineType = params['MachineType']
        end
      end

      # 实例规格信息。
      class SpecificationInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域信息。
        # @type Region: String
        # @param Zone: 可用区信息。
        # @type Zone: String
        # @param SpecItems: 售卖规格信息。
        # @type SpecItems: Array
        # @param SupportMultiAZ: 是否支持跨可用区部署。
        # - 1：支持。
        # - 0：不支持。
        # @type SupportMultiAZ: Integer

        attr_accessor :Region, :Zone, :SpecItems, :SupportMultiAZ

        def initialize(region=nil, zone=nil, specitems=nil, supportmultiaz=nil)
          @Region = region
          @Zone = zone
          @SpecItems = specitems
          @SupportMultiAZ = supportmultiaz
        end

        def deserialize(params)
          @Region = params['Region']
          @Zone = params['Zone']
          unless params['SpecItems'].nil?
            @SpecItems = []
            params['SpecItems'].each do |i|
              specitem_tmp = SpecItem.new
              specitem_tmp.deserialize(i)
              @SpecItems << specitem_tmp
            end
          end
          @SupportMultiAZ = params['SupportMultiAZ']
        end
      end

      # 实例标签信息
      class TagInfo < TencentCloud::Common::AbstractModel
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

      # 日志下载任务描述
      class Task < TencentCloud::Common::AbstractModel
        # @param TaskType: 下载任务类型，0:慢日志，1:错误日志
        # @type TaskType: Integer
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param FileSize: 文件大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param Status: 任务状态，0:初始化，1:运行中，2:成功，3:失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param Percent: 百分比
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Integer
        # @param Url: 下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :TaskType, :TaskId, :CreateTime, :UpdateTime, :FileSize, :Status, :Percent, :Url

        def initialize(tasktype=nil, taskid=nil, createtime=nil, updatetime=nil, filesize=nil, status=nil, percent=nil, url=nil)
          @TaskType = tasktype
          @TaskId = taskid
          @CreateTime = createtime
          @UpdateTime = updatetime
          @FileSize = filesize
          @Status = status
          @Percent = percent
          @Url = url
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @TaskId = params['TaskId']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @FileSize = params['FileSize']
          @Status = params['Status']
          @Percent = params['Percent']
          @Url = params['Url']
        end
      end

      # TerminateDBInstances请求参数结构体
      class TerminateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 指定预隔离实例 ID。请登录 [MongoDB 控制台](https://console.cloud.tencent.com/mongodb)在实例列表复制预隔离实例 ID。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # TerminateDBInstances返回参数结构体
      class TerminateDBInstancesResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeDBInstanceKernelVersion请求参数结构体
      class UpgradeDBInstanceKernelVersionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID列表，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceId: String
        # @param InMaintenance: 是否维护时间内升级。0-否，1-是
        # @type InMaintenance: Integer

        attr_accessor :InstanceId, :InMaintenance

        def initialize(instanceid=nil, inmaintenance=nil)
          @InstanceId = instanceid
          @InMaintenance = inmaintenance
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InMaintenance = params['InMaintenance']
        end
      end

      # UpgradeDBInstanceKernelVersion返回参数结构体
      class UpgradeDBInstanceKernelVersionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程任务ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # UpgradeDbInstanceVersion请求参数结构体
      class UpgradeDbInstanceVersionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID列表，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同。
        # @type InstanceId: String
        # @param MongoVersion: 新升级的数据库版本，当前仅支持MONGO_40_WT（MongoDB 4.0 WiredTiger存储引擎版本）及MONGO_42_WT（MongoDB 4.0 WiredTiger存储引擎版本）。
        # @type MongoVersion: String
        # @param InMaintenance: 是否在维护时间内升级。0-立即升级 1-维护时间内升级
        # @type InMaintenance: Integer

        attr_accessor :InstanceId, :MongoVersion, :InMaintenance

        def initialize(instanceid=nil, mongoversion=nil, inmaintenance=nil)
          @InstanceId = instanceid
          @MongoVersion = mongoversion
          @InMaintenance = inmaintenance
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MongoVersion = params['MongoVersion']
          @InMaintenance = params['InMaintenance']
        end
      end

      # UpgradeDbInstanceVersion返回参数结构体
      class UpgradeDbInstanceVersionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程任务ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 账户基本信息
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 账号名。
        # @type UserName: String
        # @param AuthRole: 账号权限详情。
        # @type AuthRole: Array
        # @param CreateTime: 账号创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 账号更新时间。
        # @type UpdateTime: String
        # @param UserDesc: 备注信息。
        # @type UserDesc: String
        # @param ConsolePassUpdateTime: 控制台密码更新时间
        # @type ConsolePassUpdateTime: String

        attr_accessor :UserName, :AuthRole, :CreateTime, :UpdateTime, :UserDesc, :ConsolePassUpdateTime

        def initialize(username=nil, authrole=nil, createtime=nil, updatetime=nil, userdesc=nil, consolepassupdatetime=nil)
          @UserName = username
          @AuthRole = authrole
          @CreateTime = createtime
          @UpdateTime = updatetime
          @UserDesc = userdesc
          @ConsolePassUpdateTime = consolepassupdatetime
        end

        def deserialize(params)
          @UserName = params['UserName']
          unless params['AuthRole'].nil?
            @AuthRole = []
            params['AuthRole'].each do |i|
              auth_tmp = Auth.new
              auth_tmp.deserialize(i)
              @AuthRole << auth_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @UserDesc = params['UserDesc']
          @ConsolePassUpdateTime = params['ConsolePassUpdateTime']
        end
      end

    end
  end
end

