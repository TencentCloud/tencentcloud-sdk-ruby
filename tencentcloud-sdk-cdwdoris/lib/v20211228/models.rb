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
  module Cdwdoris
    module V20211228
      # ActionAlterUser请求参数结构体
      class ActionAlterUserRequest < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户信息
        # @type UserInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.UserInfo`
        # @param ApiType: api接口类型
        # @type ApiType: String
        # @param UserPrivilege: 用户权限类型 0:普通用户 1:管理员
        # @type UserPrivilege: Integer

        attr_accessor :UserInfo, :ApiType, :UserPrivilege

        def initialize(userinfo=nil, apitype=nil, userprivilege=nil)
          @UserInfo = userinfo
          @ApiType = apitype
          @UserPrivilege = userprivilege
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = UserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @ApiType = params['ApiType']
          @UserPrivilege = params['UserPrivilege']
        end
      end

      # ActionAlterUser返回参数结构体
      class ActionAlterUserResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 集群内节点的规格磁盘规格描述
      class AttachCBSSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 节点磁盘类型，例如“CLOUD_SSD”\"CLOUD_PREMIUM"
        # @type DiskType: String
        # @param DiskSize: 磁盘容量，单位G
        # @type DiskSize: Integer
        # @param DiskCount: 磁盘总数
        # @type DiskCount: Integer
        # @param DiskDesc: 描述
        # @type DiskDesc: String

        attr_accessor :DiskType, :DiskSize, :DiskCount, :DiskDesc

        def initialize(disktype=nil, disksize=nil, diskcount=nil, diskdesc=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskCount = diskcount
          @DiskDesc = diskdesc
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskCount = params['DiskCount']
          @DiskDesc = params['DiskDesc']
        end
      end

      # 备份实例详情
      class BackUpJobDisplay < TencentCloud::Common::AbstractModel
        # @param JobId: 备份实例id
        # @type JobId: Integer
        # @param Snapshot: 备份实例名
        # @type Snapshot: String
        # @param BackUpSize: 备份数据量
        # @type BackUpSize: Integer
        # @param BackUpSingleSize: 备份单副本数据量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackUpSingleSize: Integer
        # @param BackUpTime: 实例创建时间
        # @type BackUpTime: String
        # @param ExpireTime: 实例过期时间
        # @type ExpireTime: String
        # @param JobStatus: 实例状态
        # @type JobStatus: String
        # @param BackupType: 0为默认。1时是对远端的doris进行备份，不周期，一次性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupType: Integer
        # @param BackupTimeType: 0为默认。1时是立即备份。2时是迁移
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupTimeType: Integer
        # @param DorisSourceInfo: 远端doris的连接信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DorisSourceInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.DorisSourceInfo`
        # @param JobStatusNum: 实例状态对应的数值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JobStatusNum: Integer
        # @param BackupCosInfo: 备份实例中关于cos的信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupCosInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.BackupCosInfo`
        # @param IsUserDefineBucket: 是否使用的自定义桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUserDefineBucket: Boolean

        attr_accessor :JobId, :Snapshot, :BackUpSize, :BackUpSingleSize, :BackUpTime, :ExpireTime, :JobStatus, :BackupType, :BackupTimeType, :DorisSourceInfo, :JobStatusNum, :BackupCosInfo, :IsUserDefineBucket

        def initialize(jobid=nil, snapshot=nil, backupsize=nil, backupsinglesize=nil, backuptime=nil, expiretime=nil, jobstatus=nil, backuptype=nil, backuptimetype=nil, dorissourceinfo=nil, jobstatusnum=nil, backupcosinfo=nil, isuserdefinebucket=nil)
          @JobId = jobid
          @Snapshot = snapshot
          @BackUpSize = backupsize
          @BackUpSingleSize = backupsinglesize
          @BackUpTime = backuptime
          @ExpireTime = expiretime
          @JobStatus = jobstatus
          @BackupType = backuptype
          @BackupTimeType = backuptimetype
          @DorisSourceInfo = dorissourceinfo
          @JobStatusNum = jobstatusnum
          @BackupCosInfo = backupcosinfo
          @IsUserDefineBucket = isuserdefinebucket
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Snapshot = params['Snapshot']
          @BackUpSize = params['BackUpSize']
          @BackUpSingleSize = params['BackUpSingleSize']
          @BackUpTime = params['BackUpTime']
          @ExpireTime = params['ExpireTime']
          @JobStatus = params['JobStatus']
          @BackupType = params['BackupType']
          @BackupTimeType = params['BackupTimeType']
          unless params['DorisSourceInfo'].nil?
            @DorisSourceInfo = DorisSourceInfo.new
            @DorisSourceInfo.deserialize(params['DorisSourceInfo'])
          end
          @JobStatusNum = params['JobStatusNum']
          unless params['BackupCosInfo'].nil?
            @BackupCosInfo = BackupCosInfo.new
            @BackupCosInfo.deserialize(params['BackupCosInfo'])
          end
          @IsUserDefineBucket = params['IsUserDefineBucket']
        end
      end

      # 备份实例中关于cos的信息
      class BackupCosInfo < TencentCloud::Common::AbstractModel
        # @param CosBucket: 备份文件所在的cos桶
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosBucket: String
        # @param CosPath: 备份文件所在的完整cos路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CosPath: String
        # @param SnapShotPath: 备份文件名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapShotPath: String

        attr_accessor :CosBucket, :CosPath, :SnapShotPath

        def initialize(cosbucket=nil, cospath=nil, snapshotpath=nil)
          @CosBucket = cosbucket
          @CosPath = cospath
          @SnapShotPath = snapshotpath
        end

        def deserialize(params)
          @CosBucket = params['CosBucket']
          @CosPath = params['CosPath']
          @SnapShotPath = params['SnapShotPath']
        end
      end

      # 备份任务的进度详情
      class BackupStatus < TencentCloud::Common::AbstractModel
        # @param JobId: 备份任务id
        # @type JobId: Integer
        # @param SnapshotName: 快照名称
        # @type SnapshotName: String
        # @param DbName: 库名
        # @type DbName: String
        # @param State: 状态
        # @type State: String
        # @param BackupObjects: 备份对象
        # @type BackupObjects: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param SnapshotFinishedTime: 快照结束时间
        # @type SnapshotFinishedTime: String
        # @param UploadFinishedTime: 上传结束时间
        # @type UploadFinishedTime: String
        # @param FinishedTime: 结束时间
        # @type FinishedTime: String
        # @param UnfinishedTasks: 未完成任务
        # @type UnfinishedTasks: String
        # @param Progress: 进度
        # @type Progress: String
        # @param TaskErrMsg: 错误信息
        # @type TaskErrMsg: String
        # @param Status: 状态
        # @type Status: String
        # @param Timeout: 超时信息
        # @type Timeout: Integer
        # @param BackupJobId: 备份实例id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupJobId: Integer
        # @param TaskId: 实例对应snapshoit的id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: Integer

        attr_accessor :JobId, :SnapshotName, :DbName, :State, :BackupObjects, :CreateTime, :SnapshotFinishedTime, :UploadFinishedTime, :FinishedTime, :UnfinishedTasks, :Progress, :TaskErrMsg, :Status, :Timeout, :BackupJobId, :TaskId

        def initialize(jobid=nil, snapshotname=nil, dbname=nil, state=nil, backupobjects=nil, createtime=nil, snapshotfinishedtime=nil, uploadfinishedtime=nil, finishedtime=nil, unfinishedtasks=nil, progress=nil, taskerrmsg=nil, status=nil, timeout=nil, backupjobid=nil, taskid=nil)
          @JobId = jobid
          @SnapshotName = snapshotname
          @DbName = dbname
          @State = state
          @BackupObjects = backupobjects
          @CreateTime = createtime
          @SnapshotFinishedTime = snapshotfinishedtime
          @UploadFinishedTime = uploadfinishedtime
          @FinishedTime = finishedtime
          @UnfinishedTasks = unfinishedtasks
          @Progress = progress
          @TaskErrMsg = taskerrmsg
          @Status = status
          @Timeout = timeout
          @BackupJobId = backupjobid
          @TaskId = taskid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @SnapshotName = params['SnapshotName']
          @DbName = params['DbName']
          @State = params['State']
          @BackupObjects = params['BackupObjects']
          @CreateTime = params['CreateTime']
          @SnapshotFinishedTime = params['SnapshotFinishedTime']
          @UploadFinishedTime = params['UploadFinishedTime']
          @FinishedTime = params['FinishedTime']
          @UnfinishedTasks = params['UnfinishedTasks']
          @Progress = params['Progress']
          @TaskErrMsg = params['TaskErrMsg']
          @Status = params['Status']
          @Timeout = params['Timeout']
          @BackupJobId = params['BackupJobId']
          @TaskId = params['TaskId']
        end
      end

      # 备份表信息
      class BackupTableContent < TencentCloud::Common::AbstractModel
        # @param Database: 数据库
        # @type Database: String
        # @param Table: 表
        # @type Table: String
        # @param TotalBytes: 表总字节数
        # @type TotalBytes: Integer
        # @param SingleReplicaBytes: 表单个副本的大小
        # @type SingleReplicaBytes: String
        # @param BackupStatus: 备份状态
        # @type BackupStatus: Integer
        # @param BackupErrorMsg: 备份的错误信息
        # @type BackupErrorMsg: String
        # @param IsOpenCoolDown: 该库表是否绑定降冷策略
        # @type IsOpenCoolDown: Boolean

        attr_accessor :Database, :Table, :TotalBytes, :SingleReplicaBytes, :BackupStatus, :BackupErrorMsg, :IsOpenCoolDown

        def initialize(database=nil, table=nil, totalbytes=nil, singlereplicabytes=nil, backupstatus=nil, backuperrormsg=nil, isopencooldown=nil)
          @Database = database
          @Table = table
          @TotalBytes = totalbytes
          @SingleReplicaBytes = singlereplicabytes
          @BackupStatus = backupstatus
          @BackupErrorMsg = backuperrormsg
          @IsOpenCoolDown = isopencooldown
        end

        def deserialize(params)
          @Database = params['Database']
          @Table = params['Table']
          @TotalBytes = params['TotalBytes']
          @SingleReplicaBytes = params['SingleReplicaBytes']
          @BackupStatus = params['BackupStatus']
          @BackupErrorMsg = params['BackupErrorMsg']
          @IsOpenCoolDown = params['IsOpenCoolDown']
        end
      end

      # 资源组绑定的用户信息，需要username和host信息进行授权
      class BindUser < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserName: String
        # @param Host: 主机信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Host: String

        attr_accessor :UserName, :Host

        def initialize(username=nil, host=nil)
          @UserName = username
          @Host = host
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Host = params['Host']
        end
      end

      # CancelBackupJob请求参数结构体
      class CancelBackupJobRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackUpJobId: 需要取消的备份实例id
        # @type BackUpJobId: Integer

        attr_accessor :InstanceId, :BackUpJobId

        def initialize(instanceid=nil, backupjobid=nil)
          @InstanceId = instanceid
          @BackUpJobId = backupjobid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackUpJobId = params['BackUpJobId']
        end
      end

      # CancelBackupJob返回参数结构体
      class CancelBackupJobResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 集群计费相关信息
      class ChargeProperties < TencentCloud::Common::AbstractModel
        # @param ChargeType: 计费类型，“PREPAID” 预付费，“POSTPAID_BY_HOUR” 后付费
        # @type ChargeType: String
        # @param RenewFlag: 是否自动续费，1表示自动续费开启
        # @type RenewFlag: Integer
        # @param TimeSpan: 计费时间长度
        # @type TimeSpan: Integer
        # @param TimeUnit: 计费时间单位，“m”表示月等
        # @type TimeUnit: String

        attr_accessor :ChargeType, :RenewFlag, :TimeSpan, :TimeUnit

        def initialize(chargetype=nil, renewflag=nil, timespan=nil, timeunit=nil)
          @ChargeType = chargetype
          @RenewFlag = renewflag
          @TimeSpan = timespan
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @ChargeType = params['ChargeType']
          @RenewFlag = params['RenewFlag']
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
        end
      end

      # CheckCoolDownWorkingVariableConfigCorrect请求参数结构体
      class CheckCoolDownWorkingVariableConfigCorrectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CheckCoolDownWorkingVariableConfigCorrect返回参数结构体
      class CheckCoolDownWorkingVariableConfigCorrectResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 集群的配置文件的修改历史
      class ClusterConfigsHistory < TencentCloud::Common::AbstractModel
        # @param FileName: 配置文件名称
        # @type FileName: String
        # @param NewConfValue: 修改后的配置文件内容，base64编码
        # @type NewConfValue: String
        # @param OldConfValue: 修改前的配置文件内容，base64编码
        # @type OldConfValue: String
        # @param Remark: 修改原因
        # @type Remark: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param UserUin: 修改子账号id
        # @type UserUin: String

        attr_accessor :FileName, :NewConfValue, :OldConfValue, :Remark, :ModifyTime, :UserUin

        def initialize(filename=nil, newconfvalue=nil, oldconfvalue=nil, remark=nil, modifytime=nil, useruin=nil)
          @FileName = filename
          @NewConfValue = newconfvalue
          @OldConfValue = oldconfvalue
          @Remark = remark
          @ModifyTime = modifytime
          @UserUin = useruin
        end

        def deserialize(params)
          @FileName = params['FileName']
          @NewConfValue = params['NewConfValue']
          @OldConfValue = params['OldConfValue']
          @Remark = params['Remark']
          @ModifyTime = params['ModifyTime']
          @UserUin = params['UserUin']
        end
      end

      # 用于返回XML格式的配置文件和内容以及其他配置文件有关的信息
      class ClusterConfigsInfoFromEMR < TencentCloud::Common::AbstractModel
        # @param FileName: 配置文件名称
        # @type FileName: String
        # @param FileConf: 配置文件对应的相关属性信息
        # @type FileConf: String
        # @param KeyConf: 配置文件对应的其他属性信息
        # @type KeyConf: String
        # @param OriParam: 配置文件的内容，base64编码
        # @type OriParam: String
        # @param NeedRestart: 用于表示当前配置文件是不是有过修改后没有重启，提醒用户需要重启
        # @type NeedRestart: Integer
        # @param FilePath: 配置文件路径
        # @type FilePath: String
        # @param FileKeyValues: 配置文件kv值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileKeyValues: String
        # @param FileKeyValuesNew: 配置文件kv值
        # @type FileKeyValuesNew: Array

        attr_accessor :FileName, :FileConf, :KeyConf, :OriParam, :NeedRestart, :FilePath, :FileKeyValues, :FileKeyValuesNew
        extend Gem::Deprecate
        deprecate :FileKeyValues, :none, 2025, 1
        deprecate :FileKeyValues=, :none, 2025, 1

        def initialize(filename=nil, fileconf=nil, keyconf=nil, oriparam=nil, needrestart=nil, filepath=nil, filekeyvalues=nil, filekeyvaluesnew=nil)
          @FileName = filename
          @FileConf = fileconf
          @KeyConf = keyconf
          @OriParam = oriparam
          @NeedRestart = needrestart
          @FilePath = filepath
          @FileKeyValues = filekeyvalues
          @FileKeyValuesNew = filekeyvaluesnew
        end

        def deserialize(params)
          @FileName = params['FileName']
          @FileConf = params['FileConf']
          @KeyConf = params['KeyConf']
          @OriParam = params['OriParam']
          @NeedRestart = params['NeedRestart']
          @FilePath = params['FilePath']
          @FileKeyValues = params['FileKeyValues']
          unless params['FileKeyValuesNew'].nil?
            @FileKeyValuesNew = []
            params['FileKeyValuesNew'].each do |i|
              configkeyvalue_tmp = ConfigKeyValue.new
              configkeyvalue_tmp.deserialize(i)
              @FileKeyValuesNew << configkeyvalue_tmp
            end
          end
        end
      end

      # 返回配置的文件内容（key-value）
      class ConfigKeyValue < TencentCloud::Common::AbstractModel
        # @param KeyName: key
        # @type KeyName: String
        # @param Value: 值
        # @type Value: String
        # @param Message: 备注
        # @type Message: String
        # @param Display: 1-只读，2-可修改但不可删除，3-可删除
        # @type Display: Integer
        # @param SupportHotUpdate: 0不支持 1支持热更新
        # @type SupportHotUpdate: Integer

        attr_accessor :KeyName, :Value, :Message, :Display, :SupportHotUpdate

        def initialize(keyname=nil, value=nil, message=nil, display=nil, supporthotupdate=nil)
          @KeyName = keyname
          @Value = value
          @Message = message
          @Display = display
          @SupportHotUpdate = supporthotupdate
        end

        def deserialize(params)
          @KeyName = params['KeyName']
          @Value = params['Value']
          @Message = params['Message']
          @Display = params['Display']
          @SupportHotUpdate = params['SupportHotUpdate']
        end
      end

      # 配置文件修改信息
      class ConfigSubmitContext < TencentCloud::Common::AbstractModel
        # @param FileName: 配置文件名称
        # @type FileName: String
        # @param NewConfValue: 配置文件新内容，base64编码
        # @type NewConfValue: String
        # @param OldConfValue: 配置文件旧内容，base64编码
        # @type OldConfValue: String
        # @param FilePath: 文件路径
        # @type FilePath: String

        attr_accessor :FileName, :NewConfValue, :OldConfValue, :FilePath

        def initialize(filename=nil, newconfvalue=nil, oldconfvalue=nil, filepath=nil)
          @FileName = filename
          @NewConfValue = newconfvalue
          @OldConfValue = oldconfvalue
          @FilePath = filepath
        end

        def deserialize(params)
          @FileName = params['FileName']
          @NewConfValue = params['NewConfValue']
          @OldConfValue = params['OldConfValue']
          @FilePath = params['FilePath']
        end
      end

      # 冷热分层backend节点信息
      class CoolDownBackend < TencentCloud::Common::AbstractModel
        # @param Host: 字段：Host
        # @type Host: String
        # @param DataUsedCapacity: 字段：DataUsedCapacity
        # @type DataUsedCapacity: String
        # @param TotalCapacity: 字段：TotalCapacity
        # @type TotalCapacity: String
        # @param RemoteUsedCapacity: 字段：RemoteUsedCapacity
        # @type RemoteUsedCapacity: String

        attr_accessor :Host, :DataUsedCapacity, :TotalCapacity, :RemoteUsedCapacity

        def initialize(host=nil, datausedcapacity=nil, totalcapacity=nil, remoteusedcapacity=nil)
          @Host = host
          @DataUsedCapacity = datausedcapacity
          @TotalCapacity = totalcapacity
          @RemoteUsedCapacity = remoteusedcapacity
        end

        def deserialize(params)
          @Host = params['Host']
          @DataUsedCapacity = params['DataUsedCapacity']
          @TotalCapacity = params['TotalCapacity']
          @RemoteUsedCapacity = params['RemoteUsedCapacity']
        end
      end

      # 冷热分层策略
      class CoolDownPolicyInfo < TencentCloud::Common::AbstractModel
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param CooldownDatetime: cooldown_ttl
        # @type CooldownDatetime: String
        # @param CooldownTtl: cooldown_datetime
        # @type CooldownTtl: String

        attr_accessor :PolicyName, :CooldownDatetime, :CooldownTtl

        def initialize(policyname=nil, cooldowndatetime=nil, cooldownttl=nil)
          @PolicyName = policyname
          @CooldownDatetime = cooldowndatetime
          @CooldownTtl = cooldownttl
        end

        def deserialize(params)
          @PolicyName = params['PolicyName']
          @CooldownDatetime = params['CooldownDatetime']
          @CooldownTtl = params['CooldownTtl']
        end
      end

      # 冷热分层Table数据信息
      class CoolDownTableDataInfo < TencentCloud::Common::AbstractModel
        # @param DatabaseName: 列：DatabaseName
        # @type DatabaseName: String
        # @param TableName: 列：TableName
        # @type TableName: String
        # @param Size: 列：Size
        # @type Size: String
        # @param RemoteSize: 列：RemoteSize
        # @type RemoteSize: String

        attr_accessor :DatabaseName, :TableName, :Size, :RemoteSize

        def initialize(databasename=nil, tablename=nil, size=nil, remotesize=nil)
          @DatabaseName = databasename
          @TableName = tablename
          @Size = size
          @RemoteSize = remotesize
        end

        def deserialize(params)
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
          @Size = params['Size']
          @RemoteSize = params['RemoteSize']
        end
      end

      # 客户提供cos认证信息。
      class CosSourceInfo < TencentCloud::Common::AbstractModel
        # @param SecretId: cos认证中的Id
        # @type SecretId: String
        # @param SecretKey: cos认证中的key
        # @type SecretKey: String
        # @param CosPath: cos认证中的路径
        # @type CosPath: String

        attr_accessor :SecretId, :SecretKey, :CosPath

        def initialize(secretid=nil, secretkey=nil, cospath=nil)
          @SecretId = secretid
          @SecretKey = secretkey
          @CosPath = cospath
        end

        def deserialize(params)
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @CosPath = params['CosPath']
        end
      end

      # CreateBackUpSchedule请求参数结构体
      class CreateBackUpScheduleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param OperationType: 操作类型 create(创建) update(编辑修改)
        # @type OperationType: String
        # @param ScheduleId: 编辑时需要传
        # @type ScheduleId: Integer
        # @param WeekDays: 选择的星期 逗号分隔
        # 废弃：使用ScheduleInfo
        # @type WeekDays: String
        # @param ExecuteHour: 执行小时
        # 废弃：使用ScheduleInfo
        # @type ExecuteHour: Integer
        # @param BackUpTables: 备份表列表
        # @type BackUpTables: Array
        # @param BackupType: 0为默认。1时是对远端的doris进行备份，不周期，一次性
        # @type BackupType: Integer
        # @param DorisSourceInfo: 远端doris集群的连接信息
        # @type DorisSourceInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.DorisSourceInfo`
        # @param BackupTimeType: 0为默认。1时是一次性备份。2时是远端备份
        # @type BackupTimeType: Integer
        # @param RestoreType: 0为默认。1时是备份完成后立即恢复
        # @type RestoreType: Integer
        # @param AuthType: 0为默认。1时是提供自定义的secret连接cos
        # @type AuthType: Integer
        # @param CosSourceInfo: cos认证的信息
        # @type CosSourceInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.CosSourceInfo`
        # @param ScheduleName: 调度任务名
        # @type ScheduleName: String
        # @param ScheduleInfo: 调度信息
        # @type ScheduleInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.ScheduleInfo`
        # @param UpdateStatus: 更新任务状态：
        # 3-暂停,
        # 2-删除,
        # 1-启动
        # @type UpdateStatus: Integer
        # @param CosBucket: 当前任务的cos桶信息
        # @type CosBucket: String

        attr_accessor :InstanceId, :OperationType, :ScheduleId, :WeekDays, :ExecuteHour, :BackUpTables, :BackupType, :DorisSourceInfo, :BackupTimeType, :RestoreType, :AuthType, :CosSourceInfo, :ScheduleName, :ScheduleInfo, :UpdateStatus, :CosBucket
        extend Gem::Deprecate
        deprecate :WeekDays, :none, 2025, 1
        deprecate :WeekDays=, :none, 2025, 1
        deprecate :ExecuteHour, :none, 2025, 1
        deprecate :ExecuteHour=, :none, 2025, 1

        def initialize(instanceid=nil, operationtype=nil, scheduleid=nil, weekdays=nil, executehour=nil, backuptables=nil, backuptype=nil, dorissourceinfo=nil, backuptimetype=nil, restoretype=nil, authtype=nil, cossourceinfo=nil, schedulename=nil, scheduleinfo=nil, updatestatus=nil, cosbucket=nil)
          @InstanceId = instanceid
          @OperationType = operationtype
          @ScheduleId = scheduleid
          @WeekDays = weekdays
          @ExecuteHour = executehour
          @BackUpTables = backuptables
          @BackupType = backuptype
          @DorisSourceInfo = dorissourceinfo
          @BackupTimeType = backuptimetype
          @RestoreType = restoretype
          @AuthType = authtype
          @CosSourceInfo = cossourceinfo
          @ScheduleName = schedulename
          @ScheduleInfo = scheduleinfo
          @UpdateStatus = updatestatus
          @CosBucket = cosbucket
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OperationType = params['OperationType']
          @ScheduleId = params['ScheduleId']
          @WeekDays = params['WeekDays']
          @ExecuteHour = params['ExecuteHour']
          unless params['BackUpTables'].nil?
            @BackUpTables = []
            params['BackUpTables'].each do |i|
              backuptablecontent_tmp = BackupTableContent.new
              backuptablecontent_tmp.deserialize(i)
              @BackUpTables << backuptablecontent_tmp
            end
          end
          @BackupType = params['BackupType']
          unless params['DorisSourceInfo'].nil?
            @DorisSourceInfo = DorisSourceInfo.new
            @DorisSourceInfo.deserialize(params['DorisSourceInfo'])
          end
          @BackupTimeType = params['BackupTimeType']
          @RestoreType = params['RestoreType']
          @AuthType = params['AuthType']
          unless params['CosSourceInfo'].nil?
            @CosSourceInfo = CosSourceInfo.new
            @CosSourceInfo.deserialize(params['CosSourceInfo'])
          end
          @ScheduleName = params['ScheduleName']
          unless params['ScheduleInfo'].nil?
            @ScheduleInfo = ScheduleInfo.new
            @ScheduleInfo.deserialize(params['ScheduleInfo'])
          end
          @UpdateStatus = params['UpdateStatus']
          @CosBucket = params['CosBucket']
        end
      end

      # CreateBackUpSchedule返回参数结构体
      class CreateBackUpScheduleResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # CreateCoolDownPolicy请求参数结构体
      class CreateCoolDownPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param CoolDownTtl: cooldown_ttl
        # @type CoolDownTtl: String
        # @param CoolDownDatetime: cooldown_datetime
        # @type CoolDownDatetime: String

        attr_accessor :InstanceId, :PolicyName, :CoolDownTtl, :CoolDownDatetime

        def initialize(instanceid=nil, policyname=nil, cooldownttl=nil, cooldowndatetime=nil)
          @InstanceId = instanceid
          @PolicyName = policyname
          @CoolDownTtl = cooldownttl
          @CoolDownDatetime = cooldowndatetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PolicyName = params['PolicyName']
          @CoolDownTtl = params['CoolDownTtl']
          @CoolDownDatetime = params['CoolDownDatetime']
        end
      end

      # CreateCoolDownPolicy返回参数结构体
      class CreateCoolDownPolicyResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # CreateInstanceNew请求参数结构体
      class CreateInstanceNewRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param FeSpec: FE规格
        # @type FeSpec: :class:`Tencentcloud::Cdwdoris.v20211228.models.CreateInstanceSpec`
        # @param BeSpec: BE规格
        # @type BeSpec: :class:`Tencentcloud::Cdwdoris.v20211228.models.CreateInstanceSpec`
        # @param HaFlag: 是否高可用
        # @type HaFlag: Boolean
        # @param UserVPCId: 用户VPCID
        # @type UserVPCId: String
        # @param UserSubnetId: 用户子网ID
        # @type UserSubnetId: String
        # @param ProductVersion: 产品版本号
        # @type ProductVersion: String
        # @param ChargeProperties: 付费类型
        # @type ChargeProperties: :class:`Tencentcloud::Cdwdoris.v20211228.models.ChargeProperties`
        # @param InstanceName: 实例名字
        # @type InstanceName: String
        # @param DorisUserPwd: 数据库密码
        # @type DorisUserPwd: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param HaType: 高可用类型：
        # 0：非高可用（只有1个FE，FeSpec.CreateInstanceSpec.Count=1），
        # 1：读高可用（至少需部署3个FE，FeSpec.CreateInstanceSpec.Count>=3，且为奇数），
        # 2：读写高可用（至少需部署5个FE，FeSpec.CreateInstanceSpec.Count>=5，且为奇数）。
        # @type HaType: Integer
        # @param CaseSensitive: 表名大小写是否敏感，0：敏感；1：不敏感，以小写进行比较；2：不敏感，表名改为以小写存储
        # @type CaseSensitive: Integer
        # @param EnableMultiZones: 是否开启多可用区
        # @type EnableMultiZones: Boolean
        # @param UserMultiZoneInfos: 开启多可用区后，用户的所有可用区和子网信息
        # @type UserMultiZoneInfos: :class:`Tencentcloud::Cdwdoris.v20211228.models.NetworkInfo`

        attr_accessor :Zone, :FeSpec, :BeSpec, :HaFlag, :UserVPCId, :UserSubnetId, :ProductVersion, :ChargeProperties, :InstanceName, :DorisUserPwd, :Tags, :HaType, :CaseSensitive, :EnableMultiZones, :UserMultiZoneInfos

        def initialize(zone=nil, fespec=nil, bespec=nil, haflag=nil, uservpcid=nil, usersubnetid=nil, productversion=nil, chargeproperties=nil, instancename=nil, dorisuserpwd=nil, tags=nil, hatype=nil, casesensitive=nil, enablemultizones=nil, usermultizoneinfos=nil)
          @Zone = zone
          @FeSpec = fespec
          @BeSpec = bespec
          @HaFlag = haflag
          @UserVPCId = uservpcid
          @UserSubnetId = usersubnetid
          @ProductVersion = productversion
          @ChargeProperties = chargeproperties
          @InstanceName = instancename
          @DorisUserPwd = dorisuserpwd
          @Tags = tags
          @HaType = hatype
          @CaseSensitive = casesensitive
          @EnableMultiZones = enablemultizones
          @UserMultiZoneInfos = usermultizoneinfos
        end

        def deserialize(params)
          @Zone = params['Zone']
          unless params['FeSpec'].nil?
            @FeSpec = CreateInstanceSpec.new
            @FeSpec.deserialize(params['FeSpec'])
          end
          unless params['BeSpec'].nil?
            @BeSpec = CreateInstanceSpec.new
            @BeSpec.deserialize(params['BeSpec'])
          end
          @HaFlag = params['HaFlag']
          @UserVPCId = params['UserVPCId']
          @UserSubnetId = params['UserSubnetId']
          @ProductVersion = params['ProductVersion']
          unless params['ChargeProperties'].nil?
            @ChargeProperties = ChargeProperties.new
            @ChargeProperties.deserialize(params['ChargeProperties'])
          end
          @InstanceName = params['InstanceName']
          @DorisUserPwd = params['DorisUserPwd']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @HaType = params['HaType']
          @CaseSensitive = params['CaseSensitive']
          @EnableMultiZones = params['EnableMultiZones']
          unless params['UserMultiZoneInfos'].nil?
            @UserMultiZoneInfos = NetworkInfo.new
            @UserMultiZoneInfos.deserialize(params['UserMultiZoneInfos'])
          end
        end
      end

      # CreateInstanceNew返回参数结构体
      class CreateInstanceNewResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 集群规格
      class CreateInstanceSpec < TencentCloud::Common::AbstractModel
        # @param SpecName: 规格名字
        # @type SpecName: String
        # @param Count: 数量
        # @type Count: Integer
        # @param DiskSize: 云盘大小
        # @type DiskSize: Integer

        attr_accessor :SpecName, :Count, :DiskSize

        def initialize(specname=nil, count=nil, disksize=nil)
          @SpecName = specname
          @Count = count
          @DiskSize = disksize
        end

        def deserialize(params)
          @SpecName = params['SpecName']
          @Count = params['Count']
          @DiskSize = params['DiskSize']
        end
      end

      # CreateWorkloadGroup请求参数结构体
      class CreateWorkloadGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param WorkloadGroup: 资源组配置
        # @type WorkloadGroup: :class:`Tencentcloud::Cdwdoris.v20211228.models.WorkloadGroupConfig`

        attr_accessor :InstanceId, :WorkloadGroup

        def initialize(instanceid=nil, workloadgroup=nil)
          @InstanceId = instanceid
          @WorkloadGroup = workloadgroup
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['WorkloadGroup'].nil?
            @WorkloadGroup = WorkloadGroupConfig.new
            @WorkloadGroup.deserialize(params['WorkloadGroup'])
          end
        end
      end

      # CreateWorkloadGroup返回参数结构体
      class CreateWorkloadGroupResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 数据库审计
      class DataBaseAuditRecord < TencentCloud::Common::AbstractModel
        # @param OsUser: 查询用户
        # @type OsUser: String
        # @param InitialQueryId: 查询ID
        # @type InitialQueryId: String
        # @param Sql: SQL语句
        # @type Sql: String
        # @param QueryStartTime: 开始时间
        # @type QueryStartTime: String
        # @param DurationMs: 执行耗时
        # @type DurationMs: Integer
        # @param ReadRows: 读取行数
        # @type ReadRows: Integer
        # @param ResultRows: 读取字节数
        # @type ResultRows: Integer
        # @param ResultBytes: 结果字节数
        # @type ResultBytes: Integer
        # @param MemoryUsage: 内存
        # @type MemoryUsage: Integer
        # @param InitialAddress: 初始查询IP
        # @type InitialAddress: String
        # @param DbName: 数据库
        # @type DbName: String
        # @param SqlType: sql类型
        # @type SqlType: String
        # @param Catalog: catalog名称
        # @type Catalog: String
        # @param State: 状态
        # @type State: String
        # @param IsQuery: 是否是查询
        # @type IsQuery: Boolean

        attr_accessor :OsUser, :InitialQueryId, :Sql, :QueryStartTime, :DurationMs, :ReadRows, :ResultRows, :ResultBytes, :MemoryUsage, :InitialAddress, :DbName, :SqlType, :Catalog, :State, :IsQuery

        def initialize(osuser=nil, initialqueryid=nil, sql=nil, querystarttime=nil, durationms=nil, readrows=nil, resultrows=nil, resultbytes=nil, memoryusage=nil, initialaddress=nil, dbname=nil, sqltype=nil, catalog=nil, state=nil, isquery=nil)
          @OsUser = osuser
          @InitialQueryId = initialqueryid
          @Sql = sql
          @QueryStartTime = querystarttime
          @DurationMs = durationms
          @ReadRows = readrows
          @ResultRows = resultrows
          @ResultBytes = resultbytes
          @MemoryUsage = memoryusage
          @InitialAddress = initialaddress
          @DbName = dbname
          @SqlType = sqltype
          @Catalog = catalog
          @State = state
          @IsQuery = isquery
        end

        def deserialize(params)
          @OsUser = params['OsUser']
          @InitialQueryId = params['InitialQueryId']
          @Sql = params['Sql']
          @QueryStartTime = params['QueryStartTime']
          @DurationMs = params['DurationMs']
          @ReadRows = params['ReadRows']
          @ResultRows = params['ResultRows']
          @ResultBytes = params['ResultBytes']
          @MemoryUsage = params['MemoryUsage']
          @InitialAddress = params['InitialAddress']
          @DbName = params['DbName']
          @SqlType = params['SqlType']
          @Catalog = params['Catalog']
          @State = params['State']
          @IsQuery = params['IsQuery']
        end
      end

      # DeleteBackUpData请求参数结构体
      class DeleteBackUpDataRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackUpJobId: 任务id
        # @type BackUpJobId: Integer
        # @param IsDeleteAll: 是否删除所有实例
        # @type IsDeleteAll: Boolean

        attr_accessor :InstanceId, :BackUpJobId, :IsDeleteAll

        def initialize(instanceid=nil, backupjobid=nil, isdeleteall=nil)
          @InstanceId = instanceid
          @BackUpJobId = backupjobid
          @IsDeleteAll = isdeleteall
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackUpJobId = params['BackUpJobId']
          @IsDeleteAll = params['IsDeleteAll']
        end
      end

      # DeleteBackUpData返回参数结构体
      class DeleteBackUpDataResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWorkloadGroup请求参数结构体
      class DeleteWorkloadGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param WorkloadGroupName: 需要删除的资源组名称
        # @type WorkloadGroupName: String

        attr_accessor :InstanceId, :WorkloadGroupName

        def initialize(instanceid=nil, workloadgroupname=nil)
          @InstanceId = instanceid
          @WorkloadGroupName = workloadgroupname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @WorkloadGroupName = params['WorkloadGroupName']
        end
      end

      # DeleteWorkloadGroup返回参数结构体
      class DeleteWorkloadGroupResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAreaRegion请求参数结构体
      class DescribeAreaRegionRequest < TencentCloud::Common::AbstractModel
        # @param IsInternationalSite: 是否是国际站
        # @type IsInternationalSite: Boolean

        attr_accessor :IsInternationalSite

        def initialize(isinternationalsite=nil)
          @IsInternationalSite = isinternationalsite
        end

        def deserialize(params)
          @IsInternationalSite = params['IsInternationalSite']
        end
      end

      # DescribeAreaRegion返回参数结构体
      class DescribeAreaRegionResponse < TencentCloud::Common::AbstractModel
        # @param Items: 地域列表
        # @type Items: Array
        # @param FrontEndRules: 前端规则描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrontEndRules: Array
        # @param AvailableWhiteListNames: 返回可用的白名单名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AvailableWhiteListNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Items, :FrontEndRules, :AvailableWhiteListNames, :RequestId

        def initialize(items=nil, frontendrules=nil, availablewhitelistnames=nil, requestid=nil)
          @Items = items
          @FrontEndRules = frontendrules
          @AvailableWhiteListNames = availablewhitelistnames
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              regionareainfo_tmp = RegionAreaInfo.new
              regionareainfo_tmp.deserialize(i)
              @Items << regionareainfo_tmp
            end
          end
          unless params['FrontEndRules'].nil?
            @FrontEndRules = []
            params['FrontEndRules'].each do |i|
              frontendrule_tmp = FrontEndRule.new
              frontendrule_tmp.deserialize(i)
              @FrontEndRules << frontendrule_tmp
            end
          end
          @AvailableWhiteListNames = params['AvailableWhiteListNames']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackUpJobDetail请求参数结构体
      class DescribeBackUpJobDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackUpJobId: 任务id
        # @type BackUpJobId: Integer

        attr_accessor :InstanceId, :BackUpJobId

        def initialize(instanceid=nil, backupjobid=nil)
          @InstanceId = instanceid
          @BackUpJobId = backupjobid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackUpJobId = params['BackUpJobId']
        end
      end

      # DescribeBackUpJobDetail返回参数结构体
      class DescribeBackUpJobDetailResponse < TencentCloud::Common::AbstractModel
        # @param TableContents: 备份表详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TableContents: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableContents, :RequestId

        def initialize(tablecontents=nil, requestid=nil)
          @TableContents = tablecontents
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TableContents'].nil?
            @TableContents = []
            params['TableContents'].each do |i|
              backuptablecontent_tmp = BackupTableContent.new
              backuptablecontent_tmp.deserialize(i)
              @TableContents << backuptablecontent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackUpJob请求参数结构体
      class DescribeBackUpJobRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param ApplicationType: 任务类型：
        # 0-不限制，或使用TypeFilters过滤；
        # 1-备份恢复（包括周期备份和一次性备份）；
        # 2-数据迁移（包括跨集群迁移和cos迁移）
        # @type ApplicationType: Integer
        # @param PageSize: 分页大小
        # @type PageSize: Integer
        # @param PageNum: 页号
        # @type PageNum: Integer
        # @param BeginTime: 开始时间
        # @type BeginTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param JobIdFiltersStr: jobid的string类型
        # @type JobIdFiltersStr: String

        attr_accessor :InstanceId, :ApplicationType, :PageSize, :PageNum, :BeginTime, :EndTime, :JobIdFiltersStr

        def initialize(instanceid=nil, applicationtype=nil, pagesize=nil, pagenum=nil, begintime=nil, endtime=nil, jobidfiltersstr=nil)
          @InstanceId = instanceid
          @ApplicationType = applicationtype
          @PageSize = pagesize
          @PageNum = pagenum
          @BeginTime = begintime
          @EndTime = endtime
          @JobIdFiltersStr = jobidfiltersstr
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ApplicationType = params['ApplicationType']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @JobIdFiltersStr = params['JobIdFiltersStr']
        end
      end

      # DescribeBackUpJob返回参数结构体
      class DescribeBackUpJobResponse < TencentCloud::Common::AbstractModel
        # @param BackUpJobs: 任务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackUpJobs: Array
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackUpJobs, :ErrorMsg, :TotalCount, :RequestId

        def initialize(backupjobs=nil, errormsg=nil, totalcount=nil, requestid=nil)
          @BackUpJobs = backupjobs
          @ErrorMsg = errormsg
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackUpJobs'].nil?
            @BackUpJobs = []
            params['BackUpJobs'].each do |i|
              backupjobdisplay_tmp = BackUpJobDisplay.new
              backupjobdisplay_tmp.deserialize(i)
              @BackUpJobs << backupjobdisplay_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackUpSchedules请求参数结构体
      class DescribeBackUpSchedulesRequest < TencentCloud::Common::AbstractModel
        # @param ApplicationType: 任务类型
        # 0-不限制，或使用TypeFilters过滤；
        # 1-备份恢复（包括周期备份和一次性备份）；
        # 2-数据迁移（包括跨集群迁移和cos迁移）
        # @type ApplicationType: Integer

        attr_accessor :ApplicationType

        def initialize(applicationtype=nil)
          @ApplicationType = applicationtype
        end

        def deserialize(params)
          @ApplicationType = params['ApplicationType']
        end
      end

      # DescribeBackUpSchedules返回参数结构体
      class DescribeBackUpSchedulesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBackUpTables请求参数结构体
      class DescribeBackUpTablesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackupType: 0为默认。1时是对远端的doris进行备份，不周期，一次性。2时为cos恢复，一次性
        # @type BackupType: Integer
        # @param DorisSourceInfo: 远端doris集群的连接信息
        # @type DorisSourceInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.DorisSourceInfo`
        # @param CosSourceInfo: cos信息
        # @type CosSourceInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.CosSourceInfo`

        attr_accessor :InstanceId, :BackupType, :DorisSourceInfo, :CosSourceInfo

        def initialize(instanceid=nil, backuptype=nil, dorissourceinfo=nil, cossourceinfo=nil)
          @InstanceId = instanceid
          @BackupType = backuptype
          @DorisSourceInfo = dorissourceinfo
          @CosSourceInfo = cossourceinfo
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupType = params['BackupType']
          unless params['DorisSourceInfo'].nil?
            @DorisSourceInfo = DorisSourceInfo.new
            @DorisSourceInfo.deserialize(params['DorisSourceInfo'])
          end
          unless params['CosSourceInfo'].nil?
            @CosSourceInfo = CosSourceInfo.new
            @CosSourceInfo.deserialize(params['CosSourceInfo'])
          end
        end
      end

      # DescribeBackUpTables返回参数结构体
      class DescribeBackUpTablesResponse < TencentCloud::Common::AbstractModel
        # @param AvailableTables: 可备份表列表
        # @type AvailableTables: Array
        # @param Msg: msg
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Msg: String
        # @param IsUnknownVersion: 未知version
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsUnknownVersion: Boolean
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AvailableTables, :Msg, :IsUnknownVersion, :ErrorMsg, :RequestId

        def initialize(availabletables=nil, msg=nil, isunknownversion=nil, errormsg=nil, requestid=nil)
          @AvailableTables = availabletables
          @Msg = msg
          @IsUnknownVersion = isunknownversion
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AvailableTables'].nil?
            @AvailableTables = []
            params['AvailableTables'].each do |i|
              backuptablecontent_tmp = BackupTableContent.new
              backuptablecontent_tmp.deserialize(i)
              @AvailableTables << backuptablecontent_tmp
            end
          end
          @Msg = params['Msg']
          @IsUnknownVersion = params['IsUnknownVersion']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackUpTaskDetail请求参数结构体
      class DescribeBackUpTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackUpJobId: 任务id
        # @type BackUpJobId: Integer

        attr_accessor :InstanceId, :BackUpJobId

        def initialize(instanceid=nil, backupjobid=nil)
          @InstanceId = instanceid
          @BackUpJobId = backupjobid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackUpJobId = params['BackUpJobId']
        end
      end

      # DescribeBackUpTaskDetail返回参数结构体
      class DescribeBackUpTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param BackupStatus: 备份任务进度详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupStatus: Array
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupStatus, :ErrorMsg, :RequestId

        def initialize(backupstatus=nil, errormsg=nil, requestid=nil)
          @BackupStatus = backupstatus
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackupStatus'].nil?
            @BackupStatus = []
            params['BackupStatus'].each do |i|
              backupstatus_tmp = BackupStatus.new
              backupstatus_tmp.deserialize(i)
              @BackupStatus << backupstatus_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterConfigsHistory请求参数结构体
      class DescribeClusterConfigsHistoryRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id名称
        # @type InstanceId: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param StartTime: 配置修改历史的时间范围开始
        # @type StartTime: String
        # @param EndTime: 配置修改历史的时间范围结束
        # @type EndTime: String
        # @param ConfigFileNames: 需要查询的配置文件名称数组，如果为空则查询全部历史记录。目前支持的配置文件名称有：
        # apache_hdfs_broker.conf、be.conf、fe.conf、core-site.xml、hdfs-site.xml、odbcinst.ini
        # @type ConfigFileNames: Array

        attr_accessor :InstanceId, :Offset, :Limit, :StartTime, :EndTime, :ConfigFileNames

        def initialize(instanceid=nil, offset=nil, limit=nil, starttime=nil, endtime=nil, configfilenames=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @StartTime = starttime
          @EndTime = endtime
          @ConfigFileNames = configfilenames
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ConfigFileNames = params['ConfigFileNames']
        end
      end

      # DescribeClusterConfigsHistory返回参数结构体
      class DescribeClusterConfigsHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param ClusterConfHistory: 配置文件修改历史
        # @type ClusterConfHistory: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClusterConfHistory, :RequestId

        def initialize(totalcount=nil, clusterconfhistory=nil, requestid=nil)
          @TotalCount = totalcount
          @ClusterConfHistory = clusterconfhistory
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClusterConfHistory'].nil?
            @ClusterConfHistory = []
            params['ClusterConfHistory'].each do |i|
              clusterconfigshistory_tmp = ClusterConfigsHistory.new
              clusterconfigshistory_tmp.deserialize(i)
              @ClusterConfHistory << clusterconfigshistory_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeClusterConfigs请求参数结构体
      class DescribeClusterConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param ConfigType:  0 公有云查询；1青鹅查询，青鹅查询显示所有需要展示的
        # @type ConfigType: Integer
        # @param FileName: 模糊搜索关键字文件
        # @type FileName: String
        # @param ClusterConfigType: 0集群维度 1节点维度
        # @type ClusterConfigType: Integer
        # @param IPAddress: eth0的ip地址
        # @type IPAddress: String

        attr_accessor :InstanceId, :ConfigType, :FileName, :ClusterConfigType, :IPAddress

        def initialize(instanceid=nil, configtype=nil, filename=nil, clusterconfigtype=nil, ipaddress=nil)
          @InstanceId = instanceid
          @ConfigType = configtype
          @FileName = filename
          @ClusterConfigType = clusterconfigtype
          @IPAddress = ipaddress
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConfigType = params['ConfigType']
          @FileName = params['FileName']
          @ClusterConfigType = params['ClusterConfigType']
          @IPAddress = params['IPAddress']
        end
      end

      # DescribeClusterConfigs返回参数结构体
      class DescribeClusterConfigsResponse < TencentCloud::Common::AbstractModel
        # @param ClusterConfList: 返回实例的配置文件相关的信息
        # @type ClusterConfList: Array
        # @param BuildVersion: 返回当前内核版本 如果不存在则返回空字符串
        # @type BuildVersion: String
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param HasCN: 是否包含CN节点
        # @type HasCN: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClusterConfList, :BuildVersion, :ErrorMsg, :HasCN, :RequestId

        def initialize(clusterconflist=nil, buildversion=nil, errormsg=nil, hascn=nil, requestid=nil)
          @ClusterConfList = clusterconflist
          @BuildVersion = buildversion
          @ErrorMsg = errormsg
          @HasCN = hascn
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ClusterConfList'].nil?
            @ClusterConfList = []
            params['ClusterConfList'].each do |i|
              clusterconfigsinfofromemr_tmp = ClusterConfigsInfoFromEMR.new
              clusterconfigsinfofromemr_tmp.deserialize(i)
              @ClusterConfList << clusterconfigsinfofromemr_tmp
            end
          end
          @BuildVersion = params['BuildVersion']
          @ErrorMsg = params['ErrorMsg']
          @HasCN = params['HasCN']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCoolDownBackends请求参数结构体
      class DescribeCoolDownBackendsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeCoolDownBackends返回参数结构体
      class DescribeCoolDownBackendsResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param List: 节点信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :List, :RequestId

        def initialize(errormsg=nil, list=nil, requestid=nil)
          @ErrorMsg = errormsg
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              cooldownbackend_tmp = CoolDownBackend.new
              cooldownbackend_tmp.deserialize(i)
              @List << cooldownbackend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCoolDownPolicies请求参数结构体
      class DescribeCoolDownPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeCoolDownPolicies返回参数结构体
      class DescribeCoolDownPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param List: 冷热分层策略列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :List, :RequestId

        def initialize(errormsg=nil, list=nil, requestid=nil)
          @ErrorMsg = errormsg
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              cooldownpolicyinfo_tmp = CoolDownPolicyInfo.new
              cooldownpolicyinfo_tmp.deserialize(i)
              @List << cooldownpolicyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCoolDownTableData请求参数结构体
      class DescribeCoolDownTableDataRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param DatabaseName: 数据库名称
        # @type DatabaseName: String

        attr_accessor :InstanceId, :DatabaseName

        def initialize(instanceid=nil, databasename=nil)
          @InstanceId = instanceid
          @DatabaseName = databasename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DatabaseName = params['DatabaseName']
        end
      end

      # DescribeCoolDownTableData返回参数结构体
      class DescribeCoolDownTableDataResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param List: 冷热分层Table数据列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :List, :RequestId

        def initialize(errormsg=nil, list=nil, requestid=nil)
          @ErrorMsg = errormsg
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              cooldowntabledatainfo_tmp = CoolDownTableDataInfo.new
              cooldowntabledatainfo_tmp.deserialize(i)
              @List << cooldowntabledatainfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseAuditDownload请求参数结构体
      class DescribeDatabaseAuditDownloadRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 分页
        # @type PageSize: Integer
        # @param PageNum: 分页
        # @type PageNum: Integer
        # @param OrderType: 排序参数
        # @type OrderType: String
        # @param User: 用户
        # @type User: String
        # @param DbName: 数据库
        # @type DbName: String
        # @param SqlType: sql类型
        # @type SqlType: String
        # @param Sql: sql语句
        # @type Sql: String
        # @param Users: 用户 多选
        # @type Users: Array
        # @param DbNames: 数据库 多选
        # @type DbNames: Array
        # @param SqlTypes: sql类型 多选
        # @type SqlTypes: Array
        # @param Catalogs: catalog名称 （多选）
        # @type Catalogs: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :PageSize, :PageNum, :OrderType, :User, :DbName, :SqlType, :Sql, :Users, :DbNames, :SqlTypes, :Catalogs

        def initialize(instanceid=nil, starttime=nil, endtime=nil, pagesize=nil, pagenum=nil, ordertype=nil, user=nil, dbname=nil, sqltype=nil, sql=nil, users=nil, dbnames=nil, sqltypes=nil, catalogs=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNum = pagenum
          @OrderType = ordertype
          @User = user
          @DbName = dbname
          @SqlType = sqltype
          @Sql = sql
          @Users = users
          @DbNames = dbnames
          @SqlTypes = sqltypes
          @Catalogs = catalogs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @OrderType = params['OrderType']
          @User = params['User']
          @DbName = params['DbName']
          @SqlType = params['SqlType']
          @Sql = params['Sql']
          @Users = params['Users']
          @DbNames = params['DbNames']
          @SqlTypes = params['SqlTypes']
          @Catalogs = params['Catalogs']
        end
      end

      # DescribeDatabaseAuditDownload返回参数结构体
      class DescribeDatabaseAuditDownloadResponse < TencentCloud::Common::AbstractModel
        # @param CosUrl: 日志的cos地址
        # @type CosUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosUrl, :RequestId

        def initialize(cosurl=nil, requestid=nil)
          @CosUrl = cosurl
          @RequestId = requestid
        end

        def deserialize(params)
          @CosUrl = params['CosUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDatabaseAuditRecords请求参数结构体
      class DescribeDatabaseAuditRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 分页
        # @type PageSize: Integer
        # @param PageNum: 分页
        # @type PageNum: Integer
        # @param OrderType: 排序参数
        # @type OrderType: String
        # @param User: 用户
        # @type User: String
        # @param DbName: 数据库
        # @type DbName: String
        # @param SqlType: sql类型
        # @type SqlType: String
        # @param Sql: sql语句
        # @type Sql: String
        # @param Users: 用户 （多选）
        # @type Users: Array
        # @param DbNames: 数据库 （多选）
        # @type DbNames: Array
        # @param SqlTypes: sql类型 （多选）
        # @type SqlTypes: Array
        # @param Catalogs: catalog名称（多选）
        # @type Catalogs: Array
        # @param IsQuery: 是否是查询
        # @type IsQuery: Array

        attr_accessor :InstanceId, :StartTime, :EndTime, :PageSize, :PageNum, :OrderType, :User, :DbName, :SqlType, :Sql, :Users, :DbNames, :SqlTypes, :Catalogs, :IsQuery

        def initialize(instanceid=nil, starttime=nil, endtime=nil, pagesize=nil, pagenum=nil, ordertype=nil, user=nil, dbname=nil, sqltype=nil, sql=nil, users=nil, dbnames=nil, sqltypes=nil, catalogs=nil, isquery=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNum = pagenum
          @OrderType = ordertype
          @User = user
          @DbName = dbname
          @SqlType = sqltype
          @Sql = sql
          @Users = users
          @DbNames = dbnames
          @SqlTypes = sqltypes
          @Catalogs = catalogs
          @IsQuery = isquery
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @OrderType = params['OrderType']
          @User = params['User']
          @DbName = params['DbName']
          @SqlType = params['SqlType']
          @Sql = params['Sql']
          @Users = params['Users']
          @DbNames = params['DbNames']
          @SqlTypes = params['SqlTypes']
          @Catalogs = params['Catalogs']
          @IsQuery = params['IsQuery']
        end
      end

      # DescribeDatabaseAuditRecords返回参数结构体
      class DescribeDatabaseAuditRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param SlowQueryRecords: 记录列表
        # @type SlowQueryRecords: :class:`Tencentcloud::Cdwdoris.v20211228.models.DataBaseAuditRecord`
        # @param Records: 记录列表
        # @type Records: Array
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SlowQueryRecords, :Records, :ErrorMsg, :RequestId

        def initialize(totalcount=nil, slowqueryrecords=nil, records=nil, errormsg=nil, requestid=nil)
          @TotalCount = totalcount
          @SlowQueryRecords = slowqueryrecords
          @Records = records
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SlowQueryRecords'].nil?
            @SlowQueryRecords = DataBaseAuditRecord.new
            @SlowQueryRecords.deserialize(params['SlowQueryRecords'])
          end
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              databaseauditrecord_tmp = DataBaseAuditRecord.new
              databaseauditrecord_tmp.deserialize(i)
              @Records << databaseauditrecord_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodesInfo请求参数结构体
      class DescribeInstanceNodesInfoRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 集群id
        # @type InstanceID: String

        attr_accessor :InstanceID

        def initialize(instanceid=nil)
          @InstanceID = instanceid
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
        end
      end

      # DescribeInstanceNodesInfo返回参数结构体
      class DescribeInstanceNodesInfoResponse < TencentCloud::Common::AbstractModel
        # @param BeNodes: Be节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeNodes: Array
        # @param FeNodes: Fe节点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeNodes: Array
        # @param FeMaster: Fe master节点
        # @type FeMaster: String
        # @param BeNodeInfos: Be节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeNodeInfos: Array
        # @param FeNodeInfos: Fe节点信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeNodeInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BeNodes, :FeNodes, :FeMaster, :BeNodeInfos, :FeNodeInfos, :RequestId

        def initialize(benodes=nil, fenodes=nil, femaster=nil, benodeinfos=nil, fenodeinfos=nil, requestid=nil)
          @BeNodes = benodes
          @FeNodes = fenodes
          @FeMaster = femaster
          @BeNodeInfos = benodeinfos
          @FeNodeInfos = fenodeinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @BeNodes = params['BeNodes']
          @FeNodes = params['FeNodes']
          @FeMaster = params['FeMaster']
          unless params['BeNodeInfos'].nil?
            @BeNodeInfos = []
            params['BeNodeInfos'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @BeNodeInfos << nodeinfo_tmp
            end
          end
          unless params['FeNodeInfos'].nil?
            @FeNodeInfos = []
            params['FeNodeInfos'].each do |i|
              nodeinfo_tmp = NodeInfo.new
              nodeinfo_tmp.deserialize(i)
              @FeNodeInfos << nodeinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodes请求参数结构体
      class DescribeInstanceNodesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String
        # @param NodeRole: 集群角色类型，默认为 "data"数据节点
        # @type NodeRole: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param DisplayPolicy: 展现策略，All时显示所有
        # @type DisplayPolicy: String

        attr_accessor :InstanceId, :NodeRole, :Offset, :Limit, :DisplayPolicy

        def initialize(instanceid=nil, noderole=nil, offset=nil, limit=nil, displaypolicy=nil)
          @InstanceId = instanceid
          @NodeRole = noderole
          @Offset = offset
          @Limit = limit
          @DisplayPolicy = displaypolicy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @NodeRole = params['NodeRole']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @DisplayPolicy = params['DisplayPolicy']
        end
      end

      # DescribeInstanceNodes返回参数结构体
      class DescribeInstanceNodesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param InstanceNodesList: 实例节点总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNodesList: Array
        # @param NodeRoles: 节点类型
        # @type NodeRoles: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceNodesList, :NodeRoles, :RequestId

        def initialize(totalcount=nil, instancenodeslist=nil, noderoles=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceNodesList = instancenodeslist
          @NodeRoles = noderoles
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceNodesList'].nil?
            @InstanceNodesList = []
            params['InstanceNodesList'].each do |i|
              instancenode_tmp = InstanceNode.new
              instancenode_tmp.deserialize(i)
              @InstanceNodesList << instancenode_tmp
            end
          end
          @NodeRoles = params['NodeRoles']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceNodesRole请求参数结构体
      class DescribeInstanceNodesRoleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param IpFilter: 过滤ip
        # @type IpFilter: String

        attr_accessor :InstanceId, :IpFilter

        def initialize(instanceid=nil, ipfilter=nil)
          @InstanceId = instanceid
          @IpFilter = ipfilter
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IpFilter = params['IpFilter']
        end
      end

      # DescribeInstanceNodesRole返回参数结构体
      class DescribeInstanceNodesRoleResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误码
        # @type ErrorMsg: String
        # @param TotalCount: 节点总数
        # @type TotalCount: Integer
        # @param NodeInfos: 无
        # @type NodeInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :TotalCount, :NodeInfos, :RequestId

        def initialize(errormsg=nil, totalcount=nil, nodeinfos=nil, requestid=nil)
          @ErrorMsg = errormsg
          @TotalCount = totalcount
          @NodeInfos = nodeinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @TotalCount = params['TotalCount']
          unless params['NodeInfos'].nil?
            @NodeInfos = []
            params['NodeInfos'].each do |i|
              nodeinfos_tmp = NodeInfos.new
              nodeinfos_tmp.deserialize(i)
              @NodeInfos << nodeinfos_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceOperations请求参数结构体
      class DescribeInstanceOperationsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Offset: 分页参数，偏移量，从0开始
        # @type Offset: Integer
        # @param Limit: 分页参数，每页数目，默认为10
        # @type Limit: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String

        attr_accessor :InstanceId, :Offset, :Limit, :StartTime, :EndTime

        def initialize(instanceid=nil, offset=nil, limit=nil, starttime=nil, endtime=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeInstanceOperations返回参数结构体
      class DescribeInstanceOperationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 操作记录总数
        # @type TotalCount: Integer
        # @param Operations: 操作记录具体数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operations: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Operations, :RequestId

        def initialize(totalcount=nil, operations=nil, requestid=nil)
          @TotalCount = totalcount
          @Operations = operations
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Operations'].nil?
            @Operations = []
            params['Operations'].each do |i|
              instanceoperation_tmp = InstanceOperation.new
              instanceoperation_tmp.deserialize(i)
              @Operations << instanceoperation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstance请求参数结构体
      class DescribeInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstance返回参数结构体
      class DescribeInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstanceInfo: 实例描述信息
        # @type InstanceInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.InstanceInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceInfo, :RequestId

        def initialize(instanceinfo=nil, requestid=nil)
          @InstanceInfo = instanceinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceInfo'].nil?
            @InstanceInfo = InstanceInfo.new
            @InstanceInfo.deserialize(params['InstanceInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceState请求参数结构体
      class DescribeInstanceStateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例名称
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceState返回参数结构体
      class DescribeInstanceStateResponse < TencentCloud::Common::AbstractModel
        # @param InstanceState: 集群状态，例如：Serving
        # @type InstanceState: String
        # @param FlowCreateTime: 集群操作创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowCreateTime: String
        # @param FlowName: 集群操作名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowName: String
        # @param FlowProgress: 集群操作进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowProgress: Float
        # @param InstanceStateDesc: 集群状态描述，例如：运行中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceStateDesc: String
        # @param FlowMsg: 集群流程错误信息，例如：“创建失败，资源不足”
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceState, :FlowCreateTime, :FlowName, :FlowProgress, :InstanceStateDesc, :FlowMsg, :RequestId

        def initialize(instancestate=nil, flowcreatetime=nil, flowname=nil, flowprogress=nil, instancestatedesc=nil, flowmsg=nil, requestid=nil)
          @InstanceState = instancestate
          @FlowCreateTime = flowcreatetime
          @FlowName = flowname
          @FlowProgress = flowprogress
          @InstanceStateDesc = instancestatedesc
          @FlowMsg = flowmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceState = params['InstanceState']
          @FlowCreateTime = params['FlowCreateTime']
          @FlowName = params['FlowName']
          @FlowProgress = params['FlowProgress']
          @InstanceStateDesc = params['InstanceStateDesc']
          @FlowMsg = params['FlowMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceUsedSubnets请求参数结构体
      class DescribeInstanceUsedSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceUsedSubnets返回参数结构体
      class DescribeInstanceUsedSubnetsResponse < TencentCloud::Common::AbstractModel
        # @param VpcId: 集群使用的vpc信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param UsedSubnets: 集群使用的subnet信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UsedSubnets: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcId, :UsedSubnets, :RequestId

        def initialize(vpcid=nil, usedsubnets=nil, requestid=nil)
          @VpcId = vpcid
          @UsedSubnets = usedsubnets
          @RequestId = requestid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @UsedSubnets = params['UsedSubnets']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesHealthState请求参数结构体
      class DescribeInstancesHealthStateRequest < TencentCloud::Common::AbstractModel
        # @param InstanceID: 集群Id
        # @type InstanceID: String
        # @param Input: 为空：代表当前appId下所有集群 或者  某个集群Id
        # @type Input: String

        attr_accessor :InstanceID, :Input
        extend Gem::Deprecate
        deprecate :InstanceID, :none, 2025, 1
        deprecate :InstanceID=, :none, 2025, 1

        def initialize(instanceid=nil, input=nil)
          @InstanceID = instanceid
          @Input = input
        end

        def deserialize(params)
          @InstanceID = params['InstanceID']
          @Input = params['Input']
        end
      end

      # DescribeInstancesHealthState返回参数结构体
      class DescribeInstancesHealthStateResponse < TencentCloud::Common::AbstractModel
        # @param Data: base64编码后的数据，包含了集群的健康信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param SearchInstanceId: 搜索的集群id名称
        # @type SearchInstanceId: String
        # @param SearchInstanceName: 搜索的集群name
        # @type SearchInstanceName: String
        # @param Offset: 分页参数，第一页为0，第二页为10
        # @type Offset: Integer
        # @param Limit: 分页参数，分页步长，默认为10
        # @type Limit: Integer
        # @param SearchTags: 搜索标签列表，没匹配到则不过滤集群列表
        # @type SearchTags: Array

        attr_accessor :SearchInstanceId, :SearchInstanceName, :Offset, :Limit, :SearchTags

        def initialize(searchinstanceid=nil, searchinstancename=nil, offset=nil, limit=nil, searchtags=nil)
          @SearchInstanceId = searchinstanceid
          @SearchInstanceName = searchinstancename
          @Offset = offset
          @Limit = limit
          @SearchTags = searchtags
        end

        def deserialize(params)
          @SearchInstanceId = params['SearchInstanceId']
          @SearchInstanceName = params['SearchInstanceName']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['SearchTags'].nil?
            @SearchTags = []
            params['SearchTags'].each do |i|
              searchtags_tmp = SearchTags.new
              searchtags_tmp.deserialize(i)
              @SearchTags << searchtags_tmp
            end
          end
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 实例总数
        # @type TotalCount: Integer
        # @param InstancesList: 实例数组
        # @type InstancesList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstancesList, :RequestId

        def initialize(totalcount=nil, instanceslist=nil, requestid=nil)
          @TotalCount = totalcount
          @InstancesList = instanceslist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstancesList'].nil?
            @InstancesList = []
            params['InstancesList'].each do |i|
              instanceinfo_tmp = InstanceInfo.new
              instanceinfo_tmp.deserialize(i)
              @InstancesList << instanceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRestoreTaskDetail请求参数结构体
      class DescribeRestoreTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackUpJobId: 任务id
        # @type BackUpJobId: Integer

        attr_accessor :InstanceId, :BackUpJobId

        def initialize(instanceid=nil, backupjobid=nil)
          @InstanceId = instanceid
          @BackUpJobId = backupjobid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackUpJobId = params['BackUpJobId']
        end
      end

      # DescribeRestoreTaskDetail返回参数结构体
      class DescribeRestoreTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param RestoreStatus: 恢复任务进度详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestoreStatus: Array
        # @param ErrorMsg: 错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RestoreStatus, :ErrorMsg, :RequestId

        def initialize(restorestatus=nil, errormsg=nil, requestid=nil)
          @RestoreStatus = restorestatus
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RestoreStatus'].nil?
            @RestoreStatus = []
            params['RestoreStatus'].each do |i|
              restorestatus_tmp = RestoreStatus.new
              restorestatus_tmp.deserialize(i)
              @RestoreStatus << restorestatus_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowQueryRecordsDownload请求参数结构体
      class DescribeSlowQueryRecordsDownloadRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param QueryDurationMs: 慢查询时间
        # @type QueryDurationMs: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param DurationMs: 排序参数
        # @type DurationMs: String
        # @param Sql: 查询sql
        # @type Sql: String
        # @param ReadRows: 排序参数
        # @type ReadRows: String
        # @param ResultBytes: 排序参数
        # @type ResultBytes: String
        # @param MemoryUsage: 排序参数
        # @type MemoryUsage: String
        # @param IsQuery: IsQuery条件
        # @type IsQuery: Integer
        # @param DbName: 数据库名称
        # @type DbName: Array
        # @param CatalogName: catalog名称
        # @type CatalogName: Array

        attr_accessor :InstanceId, :QueryDurationMs, :StartTime, :EndTime, :DurationMs, :Sql, :ReadRows, :ResultBytes, :MemoryUsage, :IsQuery, :DbName, :CatalogName

        def initialize(instanceid=nil, querydurationms=nil, starttime=nil, endtime=nil, durationms=nil, sql=nil, readrows=nil, resultbytes=nil, memoryusage=nil, isquery=nil, dbname=nil, catalogname=nil)
          @InstanceId = instanceid
          @QueryDurationMs = querydurationms
          @StartTime = starttime
          @EndTime = endtime
          @DurationMs = durationms
          @Sql = sql
          @ReadRows = readrows
          @ResultBytes = resultbytes
          @MemoryUsage = memoryusage
          @IsQuery = isquery
          @DbName = dbname
          @CatalogName = catalogname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @QueryDurationMs = params['QueryDurationMs']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DurationMs = params['DurationMs']
          @Sql = params['Sql']
          @ReadRows = params['ReadRows']
          @ResultBytes = params['ResultBytes']
          @MemoryUsage = params['MemoryUsage']
          @IsQuery = params['IsQuery']
          @DbName = params['DbName']
          @CatalogName = params['CatalogName']
        end
      end

      # DescribeSlowQueryRecordsDownload返回参数结构体
      class DescribeSlowQueryRecordsDownloadResponse < TencentCloud::Common::AbstractModel
        # @param CosUrl: cos地址
        # @type CosUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CosUrl, :RequestId

        def initialize(cosurl=nil, requestid=nil)
          @CosUrl = cosurl
          @RequestId = requestid
        end

        def deserialize(params)
          @CosUrl = params['CosUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowQueryRecords请求参数结构体
      class DescribeSlowQueryRecordsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param QueryDurationMs: 慢查询时间
        # @type QueryDurationMs: Integer
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param PageSize: 分页
        # @type PageSize: Integer
        # @param PageNum: 分页
        # @type PageNum: Integer
        # @param DurationMs: 排序参数
        # @type DurationMs: String
        # @param DbName: 数据库名称
        # @type DbName: Array
        # @param IsQuery: 是否是查询，0：否， 1：是
        # @type IsQuery: Integer
        # @param CatalogName: catalog名称
        # @type CatalogName: Array
        # @param Sql: sql名
        # @type Sql: String
        # @param ReadRows: ReadRows排序字段
        # @type ReadRows: String
        # @param ResultBytes: ResultBytes排序字段
        # @type ResultBytes: String
        # @param MemoryUsage: MemoryUsage排序字段
        # @type MemoryUsage: String

        attr_accessor :InstanceId, :QueryDurationMs, :StartTime, :EndTime, :PageSize, :PageNum, :DurationMs, :DbName, :IsQuery, :CatalogName, :Sql, :ReadRows, :ResultBytes, :MemoryUsage

        def initialize(instanceid=nil, querydurationms=nil, starttime=nil, endtime=nil, pagesize=nil, pagenum=nil, durationms=nil, dbname=nil, isquery=nil, catalogname=nil, sql=nil, readrows=nil, resultbytes=nil, memoryusage=nil)
          @InstanceId = instanceid
          @QueryDurationMs = querydurationms
          @StartTime = starttime
          @EndTime = endtime
          @PageSize = pagesize
          @PageNum = pagenum
          @DurationMs = durationms
          @DbName = dbname
          @IsQuery = isquery
          @CatalogName = catalogname
          @Sql = sql
          @ReadRows = readrows
          @ResultBytes = resultbytes
          @MemoryUsage = memoryusage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @QueryDurationMs = params['QueryDurationMs']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PageSize = params['PageSize']
          @PageNum = params['PageNum']
          @DurationMs = params['DurationMs']
          @DbName = params['DbName']
          @IsQuery = params['IsQuery']
          @CatalogName = params['CatalogName']
          @Sql = params['Sql']
          @ReadRows = params['ReadRows']
          @ResultBytes = params['ResultBytes']
          @MemoryUsage = params['MemoryUsage']
        end
      end

      # DescribeSlowQueryRecords返回参数结构体
      class DescribeSlowQueryRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param SlowQueryRecords: 记录列表
        # @type SlowQueryRecords: Array
        # @param DBNameList: 所有数据库名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DBNameList: Array
        # @param CatalogNameList: 所有catalog名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CatalogNameList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SlowQueryRecords, :DBNameList, :CatalogNameList, :RequestId

        def initialize(totalcount=nil, slowqueryrecords=nil, dbnamelist=nil, catalognamelist=nil, requestid=nil)
          @TotalCount = totalcount
          @SlowQueryRecords = slowqueryrecords
          @DBNameList = dbnamelist
          @CatalogNameList = catalognamelist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SlowQueryRecords'].nil?
            @SlowQueryRecords = []
            params['SlowQueryRecords'].each do |i|
              slowqueryrecord_tmp = SlowQueryRecord.new
              slowqueryrecord_tmp.deserialize(i)
              @SlowQueryRecords << slowqueryrecord_tmp
            end
          end
          @DBNameList = params['DBNameList']
          @CatalogNameList = params['CatalogNameList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSpec请求参数结构体
      class DescribeSpecRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 地域信息，例如"ap-guangzhou-1"
        # @type Zone: String
        # @param PayMode: 计费类型，PREPAID 包年包月，POSTPAID_BY_HOUR 按量计费
        # @type PayMode: String
        # @param Zones: 多可用区
        # @type Zones: Array
        # @param SpecName: 机型名称
        # @type SpecName: String

        attr_accessor :Zone, :PayMode, :Zones, :SpecName

        def initialize(zone=nil, paymode=nil, zones=nil, specname=nil)
          @Zone = zone
          @PayMode = paymode
          @Zones = zones
          @SpecName = specname
        end

        def deserialize(params)
          @Zone = params['Zone']
          @PayMode = params['PayMode']
          @Zones = params['Zones']
          @SpecName = params['SpecName']
        end
      end

      # DescribeSpec返回参数结构体
      class DescribeSpecResponse < TencentCloud::Common::AbstractModel
        # @param MasterSpec: fe节点规格描述
        # @type MasterSpec: Array
        # @param CoreSpec: be节点规格描述
        # @type CoreSpec: Array
        # @param AttachCBSSpec: 云盘列表
        # @type AttachCBSSpec: Array
        # @param CNSpec: cn节点列表
        # @type CNSpec: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MasterSpec, :CoreSpec, :AttachCBSSpec, :CNSpec, :RequestId

        def initialize(masterspec=nil, corespec=nil, attachcbsspec=nil, cnspec=nil, requestid=nil)
          @MasterSpec = masterspec
          @CoreSpec = corespec
          @AttachCBSSpec = attachcbsspec
          @CNSpec = cnspec
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MasterSpec'].nil?
            @MasterSpec = []
            params['MasterSpec'].each do |i|
              resourcespec_tmp = ResourceSpec.new
              resourcespec_tmp.deserialize(i)
              @MasterSpec << resourcespec_tmp
            end
          end
          unless params['CoreSpec'].nil?
            @CoreSpec = []
            params['CoreSpec'].each do |i|
              resourcespec_tmp = ResourceSpec.new
              resourcespec_tmp.deserialize(i)
              @CoreSpec << resourcespec_tmp
            end
          end
          unless params['AttachCBSSpec'].nil?
            @AttachCBSSpec = []
            params['AttachCBSSpec'].each do |i|
              diskspec_tmp = DiskSpec.new
              diskspec_tmp.deserialize(i)
              @AttachCBSSpec << diskspec_tmp
            end
          end
          unless params['CNSpec'].nil?
            @CNSpec = []
            params['CNSpec'].each do |i|
              resourcespec_tmp = ResourceSpec.new
              resourcespec_tmp.deserialize(i)
              @CNSpec << resourcespec_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSqlApis请求参数结构体
      class DescribeSqlApisRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param ApiType: GetUsers：获取用户列表；
        # GetDatabases：获取数据库列表；
        # GetTables：获取数据库表列表；
        # GetUserPrivilegesV2：获取用户下的权限，粒度到表级别；
        # DeleteUser：删除用户；
        # GetCatalog：获取Catalog列表；
        # @type ApiType: String
        # @param UserName: 用户名称
        # @type UserName: String
        # @param WhiteHost: 用户链接来自的 IP
        # @type WhiteHost: String
        # @param Catalog: catalog名称
        # @type Catalog: String
        # @param Catalogs: catalog集合
        # @type Catalogs: Array
        # @param DatabaseName: 数据库名
        # @type DatabaseName: String
        # @param TableName: 表名
        # @type TableName: String

        attr_accessor :InstanceId, :ApiType, :UserName, :WhiteHost, :Catalog, :Catalogs, :DatabaseName, :TableName

        def initialize(instanceid=nil, apitype=nil, username=nil, whitehost=nil, catalog=nil, catalogs=nil, databasename=nil, tablename=nil)
          @InstanceId = instanceid
          @ApiType = apitype
          @UserName = username
          @WhiteHost = whitehost
          @Catalog = catalog
          @Catalogs = catalogs
          @DatabaseName = databasename
          @TableName = tablename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ApiType = params['ApiType']
          @UserName = params['UserName']
          @WhiteHost = params['WhiteHost']
          @Catalog = params['Catalog']
          @Catalogs = params['Catalogs']
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
        end
      end

      # DescribeSqlApis返回参数结构体
      class DescribeSqlApisResponse < TencentCloud::Common::AbstractModel
        # @param ReturnData: 返回的查询数据，大部分情况是list，也可能是bool
        # @type ReturnData: String
        # @param ErrorMsg: 错误消息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReturnData, :ErrorMsg, :RequestId

        def initialize(returndata=nil, errormsg=nil, requestid=nil)
          @ReturnData = returndata
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ReturnData = params['ReturnData']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTableList请求参数结构体
      class DescribeTableListRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 资源ID，建表所用的TCHouse-D资源ID。
        # @type InstanceId: String
        # @param DbName: 需要获取表列表的库
        # @type DbName: String
        # @param UserName: 使用该用户进行操作，该用户需要有对应的权限。如果该TCHouse-D集群使用CAM用户注册内核账户，则不需要填写
        # @type UserName: String
        # @param PassWord: 用户对应的密码。如果该TCHouse-D集群使用CAM用户注册内核账户，则不需要填写
        # @type PassWord: String
        # @param CatalogName: 查询库所在的数据源，不填则默认为内部数据源（internal）。
        # @type CatalogName: String

        attr_accessor :InstanceId, :DbName, :UserName, :PassWord, :CatalogName

        def initialize(instanceid=nil, dbname=nil, username=nil, password=nil, catalogname=nil)
          @InstanceId = instanceid
          @DbName = dbname
          @UserName = username
          @PassWord = password
          @CatalogName = catalogname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DbName = params['DbName']
          @UserName = params['UserName']
          @PassWord = params['PassWord']
          @CatalogName = params['CatalogName']
        end
      end

      # DescribeTableList返回参数结构体
      class DescribeTableListResponse < TencentCloud::Common::AbstractModel
        # @param TableNames: 表名列表
        # @type TableNames: Array
        # @param Message: 错误信息
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TableNames, :Message, :RequestId

        def initialize(tablenames=nil, message=nil, requestid=nil)
          @TableNames = tablenames
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @TableNames = params['TableNames']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserBindWorkloadGroup请求参数结构体
      class DescribeUserBindWorkloadGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeUserBindWorkloadGroup返回参数结构体
      class DescribeUserBindWorkloadGroupResponse < TencentCloud::Common::AbstractModel
        # @param UserBindInfos: 用户绑定资源组信息
        # @type UserBindInfos: Array
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UserBindInfos, :ErrorMsg, :RequestId

        def initialize(userbindinfos=nil, errormsg=nil, requestid=nil)
          @UserBindInfos = userbindinfos
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['UserBindInfos'].nil?
            @UserBindInfos = []
            params['UserBindInfos'].each do |i|
              userworkloadgroup_tmp = UserWorkloadGroup.new
              userworkloadgroup_tmp.deserialize(i)
              @UserBindInfos << userworkloadgroup_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWorkloadGroup请求参数结构体
      class DescribeWorkloadGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeWorkloadGroup返回参数结构体
      class DescribeWorkloadGroupResponse < TencentCloud::Common::AbstractModel
        # @param WorkloadGroups: 资源组信息
        # @type WorkloadGroups: Array
        # @param Status: 是否开启资源组：开启-open、关闭-close
        # @type Status: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkloadGroups, :Status, :ErrorMsg, :RequestId

        def initialize(workloadgroups=nil, status=nil, errormsg=nil, requestid=nil)
          @WorkloadGroups = workloadgroups
          @Status = status
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WorkloadGroups'].nil?
            @WorkloadGroups = []
            params['WorkloadGroups'].each do |i|
              workloadgroupconfig_tmp = WorkloadGroupConfig.new
              workloadgroupconfig_tmp.deserialize(i)
              @WorkloadGroups << workloadgroupconfig_tmp
            end
          end
          @Status = params['Status']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # DestroyInstance请求参数结构体
      class DestroyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DestroyInstance返回参数结构体
      class DestroyInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 磁盘规格描述
      class DiskSpec < TencentCloud::Common::AbstractModel
        # @param DiskType: 磁盘类型，例如“CLOUD_SSD", "LOCAL_SSD"等
        # @type DiskType: String
        # @param DiskDesc: 磁盘类型说明，例如"云SSD", "本地SSD"等
        # @type DiskDesc: String
        # @param MinDiskSize: 磁盘最小规格大小，单位G
        # @type MinDiskSize: Integer
        # @param MaxDiskSize: 磁盘最大规格大小，单位G
        # @type MaxDiskSize: Integer
        # @param DiskCount: 磁盘数目
        # @type DiskCount: Integer

        attr_accessor :DiskType, :DiskDesc, :MinDiskSize, :MaxDiskSize, :DiskCount

        def initialize(disktype=nil, diskdesc=nil, mindisksize=nil, maxdisksize=nil, diskcount=nil)
          @DiskType = disktype
          @DiskDesc = diskdesc
          @MinDiskSize = mindisksize
          @MaxDiskSize = maxdisksize
          @DiskCount = diskcount
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskDesc = params['DiskDesc']
          @MinDiskSize = params['MinDiskSize']
          @MaxDiskSize = params['MaxDiskSize']
          @DiskCount = params['DiskCount']
        end
      end

      # 外部doris集群的连接信息
      class DorisSourceInfo < TencentCloud::Common::AbstractModel
        # @param Host: doris集群的fe的ip
        # @type Host: String
        # @param Port: doris集群的fe的端口号
        # @type Port: Integer
        # @param User: doris集群的账号
        # @type User: String
        # @param Password: base64编码的doris集群对应用户的密码
        # @type Password: String

        attr_accessor :Host, :Port, :User, :Password

        def initialize(host=nil, port=nil, user=nil, password=nil)
          @Host = host
          @Port = port
          @User = user
          @Password = password
        end

        def deserialize(params)
          @Host = params['Host']
          @Port = params['Port']
          @User = params['User']
          @Password = params['Password']
        end
      end

      # 前端规则描述
      class FrontEndRule < TencentCloud::Common::AbstractModel
        # @param ID: id序列
        # @type ID: Integer
        # @param Name: 规则名称
        # @type Name: String
        # @param Rule: 详细规则
        # @type Rule: String

        attr_accessor :ID, :Name, :Rule

        def initialize(id=nil, name=nil, rule=nil)
          @ID = id
          @Name = name
          @Rule = rule
        end

        def deserialize(params)
          @ID = params['ID']
          @Name = params['Name']
          @Rule = params['Rule']
        end
      end

      # KV配置
      class InstanceConfigItem < TencentCloud::Common::AbstractModel
        # @param ConfKey: key
        # @type ConfKey: String
        # @param ConfValue: value
        # @type ConfValue: String

        attr_accessor :ConfKey, :ConfValue

        def initialize(confkey=nil, confvalue=nil)
          @ConfKey = confkey
          @ConfValue = confvalue
        end

        def deserialize(params)
          @ConfKey = params['ConfKey']
          @ConfValue = params['ConfValue']
        end
      end

      # Instance表detail字段
      class InstanceDetail < TencentCloud::Common::AbstractModel
        # @param EnableAlarmStrategy: 告警策略是否可用
        # @type EnableAlarmStrategy: Boolean

        attr_accessor :EnableAlarmStrategy

        def initialize(enablealarmstrategy=nil)
          @EnableAlarmStrategy = enablealarmstrategy
        end

        def deserialize(params)
          @EnableAlarmStrategy = params['EnableAlarmStrategy']
        end
      end

      # 实例描述信息
      class InstanceInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例ID, "cdw-xxxx" 字符串类型
        # @type InstanceId: String
        # @param InstanceName: 集群实例名称
        # @type InstanceName: String
        # @param Status: 状态,
        # Init 创建中; Serving 运行中；
        # Deleted已销毁；Deleting 销毁中；
        # Modify 集群变更中；
        # @type Status: String
        # @param Version: 版本
        # @type Version: String
        # @param Region: 地域, ap-guangzhou
        # @type Region: String
        # @param Zone: 可用区， ap-guangzhou-3
        # @type Zone: String
        # @param VpcId: 私有网络名称
        # @type VpcId: String
        # @param SubnetId: 子网名称
        # @type SubnetId: String
        # @param PayMode: 付费类型，"hour", "prepay"
        # @type PayMode: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param MasterSummary: 数据节点描述信息
        # @type MasterSummary: :class:`Tencentcloud::Cdwdoris.v20211228.models.NodesSummary`
        # @param CoreSummary: zookeeper节点描述信息
        # @type CoreSummary: :class:`Tencentcloud::Cdwdoris.v20211228.models.NodesSummary`
        # @param HA: 高可用，“true" "false"
        # @type HA: String
        # @param HaType: 高可用类型：
        # 0：非高可用
        # 1：读高可用
        # 2：读写高可用。
        # @type HaType: Integer
        # @param AccessInfo: 访问地址，例如 "10.0.0.1:9000"
        # @type AccessInfo: String
        # @param Id: 记录ID，数值型
        # @type Id: Integer
        # @param RegionId: regionId, 表示地域
        # @type RegionId: Integer
        # @param ZoneDesc: 可用区说明，例如 "广州二区"
        # @type ZoneDesc: String
        # @param FlowMsg: 错误流程说明信息
        # @type FlowMsg: String
        # @param StatusDesc: 状态描述，例如“运行中”等
        # @type StatusDesc: String
        # @param RenewFlag: 自动续费标记
        # @type RenewFlag: Boolean
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param Monitor: 监控信息
        # @type Monitor: String
        # @param HasClsTopic: 是否开通日志
        # @type HasClsTopic: Boolean
        # @param ClsTopicId: 日志主题ID
        # @type ClsTopicId: String
        # @param ClsLogSetId: 日志集ID
        # @type ClsLogSetId: String
        # @param EnableXMLConfig: 是否支持xml配置管理
        # @type EnableXMLConfig: Integer
        # @param RegionDesc: 区域
        # @type RegionDesc: String
        # @param Eip: 弹性网卡地址
        # @type Eip: String
        # @param CosMoveFactor: 冷热分层系数
        # @type CosMoveFactor: Integer
        # @param Kind: external/local/yunti
        # @type Kind: String
        # @param CosBucketName: cos桶
        # @type CosBucketName: String
        # @param CanAttachCbs: cbs
        # @type CanAttachCbs: Boolean
        # @param BuildVersion: 小版本
        # @type BuildVersion: String
        # @param Components: 组件信息
        # 注：这里返回类型实际为map[string]struct类型，并非显示的string类型，可以参考“示例值”进行数据的解析。
        # @type Components: String
        # @param IfExistCatalog: 判断审计日志表是否有catalog字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IfExistCatalog: Integer
        # @param Characteristic: 页面特性，用于前端屏蔽一些页面入口
        # @type Characteristic: Array
        # @param RestartTimeout: 超时时间 单位s
        # @type RestartTimeout: String
        # @param GraceShutdownWaitSeconds: 内核优雅重启超时时间，如果为-1说明未设置
        # @type GraceShutdownWaitSeconds: String
        # @param CaseSensitive: 表名大小写是否敏感，0：敏感；1：不敏感，以小写进行比较；2：不敏感，表名改为以小写存储
        # @type CaseSensitive: Integer
        # @param IsWhiteSGs: 用户是否可以绑定安全组
        # @type IsWhiteSGs: Boolean
        # @param BindSGs: 已绑定的安全组信息
        # @type BindSGs: Array
        # @param EnableMultiZones: 是否为多可用区
        # @type EnableMultiZones: Boolean
        # @param UserNetworkInfos: 用户可用区和子网信息
        # @type UserNetworkInfos: String
        # @param EnableCoolDown: 是否启用冷热分层。0：未开启 1：已开启
        # @type EnableCoolDown: Integer
        # @param CoolDownBucket: 冷热分层使用COS桶
        # @type CoolDownBucket: String
        # @param Details: 实例扩展信息
        # @type Details: :class:`Tencentcloud::Cdwdoris.v20211228.models.InstanceDetail`
        # @param EnableDlc: 是否启用DLC 0:关闭 1:开启
        # @type EnableDlc: Integer
        # @param AccountType: 账户类型 0:普通用户 1:CAM用户
        # @type AccountType: Integer
        # @param MonitorMode: 监控模式 0: 老监控 1：新监控
        # @type MonitorMode: Integer
        # @param CNSummary: cn节点信息
        # @type CNSummary: :class:`Tencentcloud::Cdwdoris.v20211228.models.NodesSummary`

        attr_accessor :InstanceId, :InstanceName, :Status, :Version, :Region, :Zone, :VpcId, :SubnetId, :PayMode, :CreateTime, :ExpireTime, :MasterSummary, :CoreSummary, :HA, :HaType, :AccessInfo, :Id, :RegionId, :ZoneDesc, :FlowMsg, :StatusDesc, :RenewFlag, :Tags, :Monitor, :HasClsTopic, :ClsTopicId, :ClsLogSetId, :EnableXMLConfig, :RegionDesc, :Eip, :CosMoveFactor, :Kind, :CosBucketName, :CanAttachCbs, :BuildVersion, :Components, :IfExistCatalog, :Characteristic, :RestartTimeout, :GraceShutdownWaitSeconds, :CaseSensitive, :IsWhiteSGs, :BindSGs, :EnableMultiZones, :UserNetworkInfos, :EnableCoolDown, :CoolDownBucket, :Details, :EnableDlc, :AccountType, :MonitorMode, :CNSummary
        extend Gem::Deprecate
        deprecate :IfExistCatalog, :none, 2025, 1
        deprecate :IfExistCatalog=, :none, 2025, 1

        def initialize(instanceid=nil, instancename=nil, status=nil, version=nil, region=nil, zone=nil, vpcid=nil, subnetid=nil, paymode=nil, createtime=nil, expiretime=nil, mastersummary=nil, coresummary=nil, ha=nil, hatype=nil, accessinfo=nil, id=nil, regionid=nil, zonedesc=nil, flowmsg=nil, statusdesc=nil, renewflag=nil, tags=nil, monitor=nil, hasclstopic=nil, clstopicid=nil, clslogsetid=nil, enablexmlconfig=nil, regiondesc=nil, eip=nil, cosmovefactor=nil, kind=nil, cosbucketname=nil, canattachcbs=nil, buildversion=nil, components=nil, ifexistcatalog=nil, characteristic=nil, restarttimeout=nil, graceshutdownwaitseconds=nil, casesensitive=nil, iswhitesgs=nil, bindsgs=nil, enablemultizones=nil, usernetworkinfos=nil, enablecooldown=nil, cooldownbucket=nil, details=nil, enabledlc=nil, accounttype=nil, monitormode=nil, cnsummary=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @Status = status
          @Version = version
          @Region = region
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
          @PayMode = paymode
          @CreateTime = createtime
          @ExpireTime = expiretime
          @MasterSummary = mastersummary
          @CoreSummary = coresummary
          @HA = ha
          @HaType = hatype
          @AccessInfo = accessinfo
          @Id = id
          @RegionId = regionid
          @ZoneDesc = zonedesc
          @FlowMsg = flowmsg
          @StatusDesc = statusdesc
          @RenewFlag = renewflag
          @Tags = tags
          @Monitor = monitor
          @HasClsTopic = hasclstopic
          @ClsTopicId = clstopicid
          @ClsLogSetId = clslogsetid
          @EnableXMLConfig = enablexmlconfig
          @RegionDesc = regiondesc
          @Eip = eip
          @CosMoveFactor = cosmovefactor
          @Kind = kind
          @CosBucketName = cosbucketname
          @CanAttachCbs = canattachcbs
          @BuildVersion = buildversion
          @Components = components
          @IfExistCatalog = ifexistcatalog
          @Characteristic = characteristic
          @RestartTimeout = restarttimeout
          @GraceShutdownWaitSeconds = graceshutdownwaitseconds
          @CaseSensitive = casesensitive
          @IsWhiteSGs = iswhitesgs
          @BindSGs = bindsgs
          @EnableMultiZones = enablemultizones
          @UserNetworkInfos = usernetworkinfos
          @EnableCoolDown = enablecooldown
          @CoolDownBucket = cooldownbucket
          @Details = details
          @EnableDlc = enabledlc
          @AccountType = accounttype
          @MonitorMode = monitormode
          @CNSummary = cnsummary
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @Status = params['Status']
          @Version = params['Version']
          @Region = params['Region']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          unless params['MasterSummary'].nil?
            @MasterSummary = NodesSummary.new
            @MasterSummary.deserialize(params['MasterSummary'])
          end
          unless params['CoreSummary'].nil?
            @CoreSummary = NodesSummary.new
            @CoreSummary.deserialize(params['CoreSummary'])
          end
          @HA = params['HA']
          @HaType = params['HaType']
          @AccessInfo = params['AccessInfo']
          @Id = params['Id']
          @RegionId = params['RegionId']
          @ZoneDesc = params['ZoneDesc']
          @FlowMsg = params['FlowMsg']
          @StatusDesc = params['StatusDesc']
          @RenewFlag = params['RenewFlag']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Monitor = params['Monitor']
          @HasClsTopic = params['HasClsTopic']
          @ClsTopicId = params['ClsTopicId']
          @ClsLogSetId = params['ClsLogSetId']
          @EnableXMLConfig = params['EnableXMLConfig']
          @RegionDesc = params['RegionDesc']
          @Eip = params['Eip']
          @CosMoveFactor = params['CosMoveFactor']
          @Kind = params['Kind']
          @CosBucketName = params['CosBucketName']
          @CanAttachCbs = params['CanAttachCbs']
          @BuildVersion = params['BuildVersion']
          @Components = params['Components']
          @IfExistCatalog = params['IfExistCatalog']
          @Characteristic = params['Characteristic']
          @RestartTimeout = params['RestartTimeout']
          @GraceShutdownWaitSeconds = params['GraceShutdownWaitSeconds']
          @CaseSensitive = params['CaseSensitive']
          @IsWhiteSGs = params['IsWhiteSGs']
          @BindSGs = params['BindSGs']
          @EnableMultiZones = params['EnableMultiZones']
          @UserNetworkInfos = params['UserNetworkInfos']
          @EnableCoolDown = params['EnableCoolDown']
          @CoolDownBucket = params['CoolDownBucket']
          unless params['Details'].nil?
            @Details = InstanceDetail.new
            @Details.deserialize(params['Details'])
          end
          @EnableDlc = params['EnableDlc']
          @AccountType = params['AccountType']
          @MonitorMode = params['MonitorMode']
          unless params['CNSummary'].nil?
            @CNSummary = NodesSummary.new
            @CNSummary.deserialize(params['CNSummary'])
          end
        end
      end

      # 实例节点描述信息
      class InstanceNode < TencentCloud::Common::AbstractModel
        # @param Ip: IP地址
        # @type Ip: String
        # @param Spec: 机型，如 S1
        # @type Spec: String
        # @param Core: cpu核数
        # @type Core: Integer
        # @param Memory: 内存大小
        # @type Memory: Integer
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DiskSize: 磁盘大小
        # @type DiskSize: Integer
        # @param Role: 所属clickhouse cluster名称
        # @type Role: String
        # @param Status: 状态
        # @type Status: String
        # @param Rip: rip
        # @type Rip: String
        # @param FeRole: FE节点角色
        # @type FeRole: String
        # @param UUID: UUID
        # @type UUID: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :Ip, :Spec, :Core, :Memory, :DiskType, :DiskSize, :Role, :Status, :Rip, :FeRole, :UUID, :Zone, :CreateTime

        def initialize(ip=nil, spec=nil, core=nil, memory=nil, disktype=nil, disksize=nil, role=nil, status=nil, rip=nil, ferole=nil, uuid=nil, zone=nil, createtime=nil)
          @Ip = ip
          @Spec = spec
          @Core = core
          @Memory = memory
          @DiskType = disktype
          @DiskSize = disksize
          @Role = role
          @Status = status
          @Rip = rip
          @FeRole = ferole
          @UUID = uuid
          @Zone = zone
          @CreateTime = createtime
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Spec = params['Spec']
          @Core = params['Core']
          @Memory = params['Memory']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @Role = params['Role']
          @Status = params['Status']
          @Rip = params['Rip']
          @FeRole = params['FeRole']
          @UUID = params['UUID']
          @Zone = params['Zone']
          @CreateTime = params['CreateTime']
        end
      end

      # 集群操作描述
      class InstanceOperation < TencentCloud::Common::AbstractModel
        # @param Name: 操作名称，例如“create_instance"、“scaleout_instance”等
        # @type Name: String
        # @param Result: 操作结果，“Success"表示成功，”Fail"表示失败
        # @type Result: String
        # @param Desc: 操作名称描述，例如“创建”，“修改集群名称”等
        # @type Desc: String
        # @param Level: 操作级别，例如“Critical", "Normal"等
        # @type Level: String
        # @param LevelDesc: 操作级别描述，例如“高危”，“一般”等
        # @type LevelDesc: String
        # @param StartTime: 操作开始时间
        # @type StartTime: String
        # @param EndTime: 操作结束时间
        # @type EndTime: String
        # @param ResultDesc: 操作结果描述，例如“成功”，“失败”
        # @type ResultDesc: String
        # @param OperateUin: 操作用户ID
        # @type OperateUin: String
        # @param JobId: 操作对应的jobid
        # @type JobId: Integer
        # @param OperationDetail: 操作明细
        # @type OperationDetail: String

        attr_accessor :Name, :Result, :Desc, :Level, :LevelDesc, :StartTime, :EndTime, :ResultDesc, :OperateUin, :JobId, :OperationDetail

        def initialize(name=nil, result=nil, desc=nil, level=nil, leveldesc=nil, starttime=nil, endtime=nil, resultdesc=nil, operateuin=nil, jobid=nil, operationdetail=nil)
          @Name = name
          @Result = result
          @Desc = desc
          @Level = level
          @LevelDesc = leveldesc
          @StartTime = starttime
          @EndTime = endtime
          @ResultDesc = resultdesc
          @OperateUin = operateuin
          @JobId = jobid
          @OperationDetail = operationdetail
        end

        def deserialize(params)
          @Name = params['Name']
          @Result = params['Result']
          @Desc = params['Desc']
          @Level = params['Level']
          @LevelDesc = params['LevelDesc']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ResultDesc = params['ResultDesc']
          @OperateUin = params['OperateUin']
          @JobId = params['JobId']
          @OperationDetail = params['OperationDetail']
        end
      end

      # ModifyClusterConfigs请求参数结构体
      class ModifyClusterConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID，例如cdwch-xxxx
        # @type InstanceId: String
        # @param ModifyConfContext: 配置文件修改信息
        # @type ModifyConfContext: Array
        # @param Remark: 修改原因
        # @type Remark: String

        attr_accessor :InstanceId, :ModifyConfContext, :Remark

        def initialize(instanceid=nil, modifyconfcontext=nil, remark=nil)
          @InstanceId = instanceid
          @ModifyConfContext = modifyconfcontext
          @Remark = remark
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ModifyConfContext'].nil?
            @ModifyConfContext = []
            params['ModifyConfContext'].each do |i|
              configsubmitcontext_tmp = ConfigSubmitContext.new
              configsubmitcontext_tmp.deserialize(i)
              @ModifyConfContext << configsubmitcontext_tmp
            end
          end
          @Remark = params['Remark']
        end
      end

      # ModifyClusterConfigs返回参数结构体
      class ModifyClusterConfigsResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程相关信息
        # @type FlowId: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCoolDownPolicy请求参数结构体
      class ModifyCoolDownPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param PolicyName: 策略名称
        # @type PolicyName: String
        # @param CoolDownTtl: cooldown_ttl
        # @type CoolDownTtl: String
        # @param CoolDownDatetime: cooldown_datetime
        # @type CoolDownDatetime: String

        attr_accessor :InstanceId, :PolicyName, :CoolDownTtl, :CoolDownDatetime

        def initialize(instanceid=nil, policyname=nil, cooldownttl=nil, cooldowndatetime=nil)
          @InstanceId = instanceid
          @PolicyName = policyname
          @CoolDownTtl = cooldownttl
          @CoolDownDatetime = cooldowndatetime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PolicyName = params['PolicyName']
          @CoolDownTtl = params['CoolDownTtl']
          @CoolDownDatetime = params['CoolDownDatetime']
        end
      end

      # ModifyCoolDownPolicy返回参数结构体
      class ModifyCoolDownPolicyResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstanceKeyValConfigs请求参数结构体
      class ModifyInstanceKeyValConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FileName: 文件名称
        # @type FileName: String
        # @param AddItems: 新增配置列表
        # @type AddItems: Array
        # @param UpdateItems: 更新配置列表
        # @type UpdateItems: Array
        # @param DelItems: 删除配置列表
        # @type DelItems: Array
        # @param Message: 备注（50字以内）
        # @type Message: String
        # @param HotUpdateItems: 热更新列表
        # @type HotUpdateItems: Array
        # @param DeleteItems: 删除配置列表
        # @type DeleteItems: :class:`Tencentcloud::Cdwdoris.v20211228.models.InstanceConfigItem`
        # @param IPAddress: ip地址
        # @type IPAddress: String

        attr_accessor :InstanceId, :FileName, :AddItems, :UpdateItems, :DelItems, :Message, :HotUpdateItems, :DeleteItems, :IPAddress

        def initialize(instanceid=nil, filename=nil, additems=nil, updateitems=nil, delitems=nil, message=nil, hotupdateitems=nil, deleteitems=nil, ipaddress=nil)
          @InstanceId = instanceid
          @FileName = filename
          @AddItems = additems
          @UpdateItems = updateitems
          @DelItems = delitems
          @Message = message
          @HotUpdateItems = hotupdateitems
          @DeleteItems = deleteitems
          @IPAddress = ipaddress
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FileName = params['FileName']
          unless params['AddItems'].nil?
            @AddItems = []
            params['AddItems'].each do |i|
              instanceconfigitem_tmp = InstanceConfigItem.new
              instanceconfigitem_tmp.deserialize(i)
              @AddItems << instanceconfigitem_tmp
            end
          end
          unless params['UpdateItems'].nil?
            @UpdateItems = []
            params['UpdateItems'].each do |i|
              instanceconfigitem_tmp = InstanceConfigItem.new
              instanceconfigitem_tmp.deserialize(i)
              @UpdateItems << instanceconfigitem_tmp
            end
          end
          unless params['DelItems'].nil?
            @DelItems = []
            params['DelItems'].each do |i|
              instanceconfigitem_tmp = InstanceConfigItem.new
              instanceconfigitem_tmp.deserialize(i)
              @DelItems << instanceconfigitem_tmp
            end
          end
          @Message = params['Message']
          unless params['HotUpdateItems'].nil?
            @HotUpdateItems = []
            params['HotUpdateItems'].each do |i|
              instanceconfigitem_tmp = InstanceConfigItem.new
              instanceconfigitem_tmp.deserialize(i)
              @HotUpdateItems << instanceconfigitem_tmp
            end
          end
          unless params['DeleteItems'].nil?
            @DeleteItems = InstanceConfigItem.new
            @DeleteItems.deserialize(params['DeleteItems'])
          end
          @IPAddress = params['IPAddress']
        end
      end

      # ModifyInstanceKeyValConfigs返回参数结构体
      class ModifyInstanceKeyValConfigsResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param FlowId: ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :FlowId, :RequestId

        def initialize(errormsg=nil, flowid=nil, requestid=nil)
          @ErrorMsg = errormsg
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyInstance请求参数结构体
      class ModifyInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param InstanceName: 新修改的实例名称
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

      # ModifyInstance返回参数结构体
      class ModifyInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyNodeStatus请求参数结构体
      class ModifyNodeStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID，例如cdwch-xxxx
        # @type InstanceId: String
        # @param NodeInfos: 节点信息
        # @type NodeInfos: Array
        # @param OperationCode: 节点操作
        # @type OperationCode: String
        # @param RestartTimeOut: 超时时间（秒）
        # @type RestartTimeOut: String

        attr_accessor :InstanceId, :NodeInfos, :OperationCode, :RestartTimeOut

        def initialize(instanceid=nil, nodeinfos=nil, operationcode=nil, restarttimeout=nil)
          @InstanceId = instanceid
          @NodeInfos = nodeinfos
          @OperationCode = operationcode
          @RestartTimeOut = restarttimeout
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['NodeInfos'].nil?
            @NodeInfos = []
            params['NodeInfos'].each do |i|
              nodeinfos_tmp = NodeInfos.new
              nodeinfos_tmp.deserialize(i)
              @NodeInfos << nodeinfos_tmp
            end
          end
          @OperationCode = params['OperationCode']
          @RestartTimeOut = params['RestartTimeOut']
        end
      end

      # ModifyNodeStatus返回参数结构体
      class ModifyNodeStatusResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程相关信息
        # @type FlowId: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifySecurityGroups请求参数结构体
      class ModifySecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param OldSecurityGroupIds: 修改前的安全组信息
        # @type OldSecurityGroupIds: Array
        # @param ModifySecurityGroupIds: 修改后的安全组信息
        # @type ModifySecurityGroupIds: Array

        attr_accessor :InstanceId, :OldSecurityGroupIds, :ModifySecurityGroupIds

        def initialize(instanceid=nil, oldsecuritygroupids=nil, modifysecuritygroupids=nil)
          @InstanceId = instanceid
          @OldSecurityGroupIds = oldsecuritygroupids
          @ModifySecurityGroupIds = modifysecuritygroupids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldSecurityGroupIds = params['OldSecurityGroupIds']
          @ModifySecurityGroupIds = params['ModifySecurityGroupIds']
        end
      end

      # ModifySecurityGroups返回参数结构体
      class ModifySecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserBindWorkloadGroup请求参数结构体
      class ModifyUserBindWorkloadGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BindUsers: 需要绑定资源组的用户信息，如果一个账户拥有多个主机信息，需要将这些信息都传入
        # @type BindUsers: Array
        # @param OldWorkloadGroupName: 修改前绑定的资源组名称
        # @type OldWorkloadGroupName: String
        # @param NewWorkloadGroupName: 修改后绑定的资源组名称
        # @type NewWorkloadGroupName: String

        attr_accessor :InstanceId, :BindUsers, :OldWorkloadGroupName, :NewWorkloadGroupName

        def initialize(instanceid=nil, bindusers=nil, oldworkloadgroupname=nil, newworkloadgroupname=nil)
          @InstanceId = instanceid
          @BindUsers = bindusers
          @OldWorkloadGroupName = oldworkloadgroupname
          @NewWorkloadGroupName = newworkloadgroupname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['BindUsers'].nil?
            @BindUsers = []
            params['BindUsers'].each do |i|
              binduser_tmp = BindUser.new
              binduser_tmp.deserialize(i)
              @BindUsers << binduser_tmp
            end
          end
          @OldWorkloadGroupName = params['OldWorkloadGroupName']
          @NewWorkloadGroupName = params['NewWorkloadGroupName']
        end
      end

      # ModifyUserBindWorkloadGroup返回参数结构体
      class ModifyUserBindWorkloadGroupResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyUserPrivilegesV3请求参数结构体
      class ModifyUserPrivilegesV3Request < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param UserPrivileges: 用户权限
        # @type UserPrivileges: :class:`Tencentcloud::Cdwdoris.v20211228.models.UpdateUserPrivileges`
        # @param WhiteHost: 用户链接来自的 IP
        # @type WhiteHost: String

        attr_accessor :InstanceId, :UserName, :UserPrivileges, :WhiteHost

        def initialize(instanceid=nil, username=nil, userprivileges=nil, whitehost=nil)
          @InstanceId = instanceid
          @UserName = username
          @UserPrivileges = userprivileges
          @WhiteHost = whitehost
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          unless params['UserPrivileges'].nil?
            @UserPrivileges = UpdateUserPrivileges.new
            @UserPrivileges.deserialize(params['UserPrivileges'])
          end
          @WhiteHost = params['WhiteHost']
        end
      end

      # ModifyUserPrivilegesV3返回参数结构体
      class ModifyUserPrivilegesV3Response < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息，为空就是没有错误
        # @type ErrorMsg: String
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :InstanceId, :RequestId

        def initialize(errormsg=nil, instanceid=nil, requestid=nil)
          @ErrorMsg = errormsg
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyWorkloadGroup请求参数结构体
      class ModifyWorkloadGroupRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param WorkloadGroup: 修改的资源组信息
        # @type WorkloadGroup: :class:`Tencentcloud::Cdwdoris.v20211228.models.WorkloadGroupConfig`

        attr_accessor :InstanceId, :WorkloadGroup

        def initialize(instanceid=nil, workloadgroup=nil)
          @InstanceId = instanceid
          @WorkloadGroup = workloadgroup
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['WorkloadGroup'].nil?
            @WorkloadGroup = WorkloadGroupConfig.new
            @WorkloadGroup.deserialize(params['WorkloadGroup'])
          end
        end
      end

      # ModifyWorkloadGroup返回参数结构体
      class ModifyWorkloadGroupResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyWorkloadGroupStatus请求参数结构体
      class ModifyWorkloadGroupStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param OperationType: 是否开启资源组：open-开启、close-关闭
        # @type OperationType: String

        attr_accessor :InstanceId, :OperationType

        def initialize(instanceid=nil, operationtype=nil)
          @InstanceId = instanceid
          @OperationType = operationtype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OperationType = params['OperationType']
        end
      end

      # ModifyWorkloadGroupStatus返回参数结构体
      class ModifyWorkloadGroupStatusResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 网络信息
      class NetworkInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param SubnetId: 子网id
        # @type SubnetId: String
        # @param SubnetIpNum: 当前子网可用ip数
        # @type SubnetIpNum: Integer

        attr_accessor :Zone, :SubnetId, :SubnetIpNum

        def initialize(zone=nil, subnetid=nil, subnetipnum=nil)
          @Zone = zone
          @SubnetId = subnetid
          @SubnetIpNum = subnetipnum
        end

        def deserialize(params)
          @Zone = params['Zone']
          @SubnetId = params['SubnetId']
          @SubnetIpNum = params['SubnetIpNum']
        end
      end

      # NodeInfo
      class NodeInfo < TencentCloud::Common::AbstractModel
        # @param Ip: 用户IP
        # @type Ip: String
        # @param Status: 节点状态
        # @type Status: Integer
        # @param NodeName: 节点角色名
        # @type NodeName: String
        # @param ComponentName: 组件名
        # @type ComponentName: String
        # @param NodeRole: 节点角色
        # @type NodeRole: String
        # @param LastRestartTime: 节点上次重启的时间
        # @type LastRestartTime: String
        # @param Zone: 节点所在可用区
        # @type Zone: String
        # @param Id: Id
        # @type Id: String

        attr_accessor :Ip, :Status, :NodeName, :ComponentName, :NodeRole, :LastRestartTime, :Zone, :Id

        def initialize(ip=nil, status=nil, nodename=nil, componentname=nil, noderole=nil, lastrestarttime=nil, zone=nil, id=nil)
          @Ip = ip
          @Status = status
          @NodeName = nodename
          @ComponentName = componentname
          @NodeRole = noderole
          @LastRestartTime = lastrestarttime
          @Zone = zone
          @Id = id
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Status = params['Status']
          @NodeName = params['NodeName']
          @ComponentName = params['ComponentName']
          @NodeRole = params['NodeRole']
          @LastRestartTime = params['LastRestartTime']
          @Zone = params['Zone']
          @Id = params['Id']
        end
      end

      # 节点信息列表
      class NodeInfos < TencentCloud::Common::AbstractModel
        # @param NodeName: 节点名称
        # @type NodeName: String
        # @param Status: 节点状态
        # @type Status: Integer
        # @param Ip: 节点ip
        # @type Ip: String
        # @param NodeRole: 节点角色
        # @type NodeRole: String
        # @param ComponentName: 组件名
        # @type ComponentName: String
        # @param LastRestartTime: 上一次重启时间
        # @type LastRestartTime: String
        # @param Id: id
        # @type Id: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :NodeName, :Status, :Ip, :NodeRole, :ComponentName, :LastRestartTime, :Id, :Zone, :CreateTime

        def initialize(nodename=nil, status=nil, ip=nil, noderole=nil, componentname=nil, lastrestarttime=nil, id=nil, zone=nil, createtime=nil)
          @NodeName = nodename
          @Status = status
          @Ip = ip
          @NodeRole = noderole
          @ComponentName = componentname
          @LastRestartTime = lastrestarttime
          @Id = id
          @Zone = zone
          @CreateTime = createtime
        end

        def deserialize(params)
          @NodeName = params['NodeName']
          @Status = params['Status']
          @Ip = params['Ip']
          @NodeRole = params['NodeRole']
          @ComponentName = params['ComponentName']
          @LastRestartTime = params['LastRestartTime']
          @Id = params['Id']
          @Zone = params['Zone']
          @CreateTime = params['CreateTime']
        end
      end

      # 节点角色描述信息
      class NodesSummary < TencentCloud::Common::AbstractModel
        # @param Spec: 机型，如 S1
        # @type Spec: String
        # @param NodeSize: 节点数目
        # @type NodeSize: Integer
        # @param Core: cpu核数，单位个
        # @type Core: Integer
        # @param Memory: 内存大小，单位G
        # @type Memory: Integer
        # @param Disk: 磁盘大小，单位G
        # @type Disk: Integer
        # @param DiskType: 磁盘类型
        # @type DiskType: String
        # @param DiskDesc: 磁盘描述
        # @type DiskDesc: String
        # @param AttachCBSSpec: 挂载云盘信息
        # @type AttachCBSSpec: :class:`Tencentcloud::Cdwdoris.v20211228.models.AttachCBSSpec`
        # @param SubProductType: 子产品名称
        # @type SubProductType: String
        # @param SpecCore: 规格核数
        # @type SpecCore: Integer
        # @param SpecMemory: 规格内存
        # @type SpecMemory: Integer
        # @param DiskCount: 磁盘大小
        # @type DiskCount: Integer
        # @param Encrypt: 是否加密
        # @type Encrypt: Integer
        # @param MaxDiskSize: 最大磁盘
        # @type MaxDiskSize: Integer

        attr_accessor :Spec, :NodeSize, :Core, :Memory, :Disk, :DiskType, :DiskDesc, :AttachCBSSpec, :SubProductType, :SpecCore, :SpecMemory, :DiskCount, :Encrypt, :MaxDiskSize

        def initialize(spec=nil, nodesize=nil, core=nil, memory=nil, disk=nil, disktype=nil, diskdesc=nil, attachcbsspec=nil, subproducttype=nil, speccore=nil, specmemory=nil, diskcount=nil, encrypt=nil, maxdisksize=nil)
          @Spec = spec
          @NodeSize = nodesize
          @Core = core
          @Memory = memory
          @Disk = disk
          @DiskType = disktype
          @DiskDesc = diskdesc
          @AttachCBSSpec = attachcbsspec
          @SubProductType = subproducttype
          @SpecCore = speccore
          @SpecMemory = specmemory
          @DiskCount = diskcount
          @Encrypt = encrypt
          @MaxDiskSize = maxdisksize
        end

        def deserialize(params)
          @Spec = params['Spec']
          @NodeSize = params['NodeSize']
          @Core = params['Core']
          @Memory = params['Memory']
          @Disk = params['Disk']
          @DiskType = params['DiskType']
          @DiskDesc = params['DiskDesc']
          unless params['AttachCBSSpec'].nil?
            @AttachCBSSpec = AttachCBSSpec.new
            @AttachCBSSpec.deserialize(params['AttachCBSSpec'])
          end
          @SubProductType = params['SubProductType']
          @SpecCore = params['SpecCore']
          @SpecMemory = params['SpecMemory']
          @DiskCount = params['DiskCount']
          @Encrypt = params['Encrypt']
          @MaxDiskSize = params['MaxDiskSize']
        end
      end

      # OpenCoolDownPolicy请求参数结构体
      class OpenCoolDownPolicyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param DatabaseName: db名称
        # @type DatabaseName: String
        # @param TableName: table名称
        # @type TableName: String
        # @param OperationType: 操作类型
        # @type OperationType: String
        # @param BatchOpenCoolDownTables: 逗号分隔 需要带上db的名字 db1.tb1,db1.tb2,db2.tb1
        # @type BatchOpenCoolDownTables: String
        # @param PolicyName: 绑定的时候用 策略名称
        # @type PolicyName: String
        # @param BatchOpenCoolDownPartitions: 逗号分隔 p1,p2,p3
        # @type BatchOpenCoolDownPartitions: String

        attr_accessor :InstanceId, :DatabaseName, :TableName, :OperationType, :BatchOpenCoolDownTables, :PolicyName, :BatchOpenCoolDownPartitions

        def initialize(instanceid=nil, databasename=nil, tablename=nil, operationtype=nil, batchopencooldowntables=nil, policyname=nil, batchopencooldownpartitions=nil)
          @InstanceId = instanceid
          @DatabaseName = databasename
          @TableName = tablename
          @OperationType = operationtype
          @BatchOpenCoolDownTables = batchopencooldowntables
          @PolicyName = policyname
          @BatchOpenCoolDownPartitions = batchopencooldownpartitions
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DatabaseName = params['DatabaseName']
          @TableName = params['TableName']
          @OperationType = params['OperationType']
          @BatchOpenCoolDownTables = params['BatchOpenCoolDownTables']
          @PolicyName = params['PolicyName']
          @BatchOpenCoolDownPartitions = params['BatchOpenCoolDownPartitions']
        end
      end

      # OpenCoolDownPolicy返回参数结构体
      class OpenCoolDownPolicyResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param QueryDocument: 返回信息
        # @type QueryDocument: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :QueryDocument, :RequestId

        def initialize(errormsg=nil, querydocument=nil, requestid=nil)
          @ErrorMsg = errormsg
          @QueryDocument = querydocument
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @QueryDocument = params['QueryDocument']
          @RequestId = params['RequestId']
        end
      end

      # OpenCoolDown请求参数结构体
      class OpenCoolDownRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # OpenCoolDown返回参数结构体
      class OpenCoolDownResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # RecoverBackUpJob请求参数结构体
      class RecoverBackUpJobRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param BackUpJobId: 任务id
        # @type BackUpJobId: Integer
        # @param ReplicationNum: 恢复出来的新表副本数
        # @type ReplicationNum: Integer
        # @param ReserveSourceConfig: 恢复是否保持源表中的配置，1时表示保留源表中的配置
        # @type ReserveSourceConfig: Integer
        # @param RecoverType: 0默认 1cos恢复
        # @type RecoverType: Integer
        # @param CosSourceInfo: CosSourceInfo对象
        # @type CosSourceInfo: :class:`Tencentcloud::Cdwdoris.v20211228.models.CosSourceInfo`
        # @param ScheduleType: 0默认 1定期执行
        # @type ScheduleType: Integer
        # @param NextTime: 年-月-日 时:分:秒
        # @type NextTime: String
        # @param ScheduleName: 调度名称
        # @type ScheduleName: String
        # @param OperationType: create update
        # @type OperationType: String
        # @param RecoverScope: 恢复粒度：All全量、Database按库、Table按表
        # @type RecoverScope: String
        # @param RecoverDatabase: 恢复库：如果是按库备份，则需要该字段，库之间用","分割
        # @type RecoverDatabase: String
        # @param ReserveStoragePolicy: 1:恢复后，不保留降冷策略，数据变为热数据；
        # 2:恢复后，沿用备份表的降冷策略；
        # 0:默认值，该版本没有这个配置（2.1版本2.1.8之前；2.0版本2.0.16之前）
        # @type ReserveStoragePolicy: Integer

        attr_accessor :InstanceId, :BackUpJobId, :ReplicationNum, :ReserveSourceConfig, :RecoverType, :CosSourceInfo, :ScheduleType, :NextTime, :ScheduleName, :OperationType, :RecoverScope, :RecoverDatabase, :ReserveStoragePolicy
        extend Gem::Deprecate
        deprecate :RecoverType, :none, 2025, 1
        deprecate :RecoverType=, :none, 2025, 1
        deprecate :CosSourceInfo, :none, 2025, 1
        deprecate :CosSourceInfo=, :none, 2025, 1
        deprecate :ScheduleType, :none, 2025, 1
        deprecate :ScheduleType=, :none, 2025, 1
        deprecate :NextTime, :none, 2025, 1
        deprecate :NextTime=, :none, 2025, 1
        deprecate :ScheduleName, :none, 2025, 1
        deprecate :ScheduleName=, :none, 2025, 1
        deprecate :OperationType, :none, 2025, 1
        deprecate :OperationType=, :none, 2025, 1

        def initialize(instanceid=nil, backupjobid=nil, replicationnum=nil, reservesourceconfig=nil, recovertype=nil, cossourceinfo=nil, scheduletype=nil, nexttime=nil, schedulename=nil, operationtype=nil, recoverscope=nil, recoverdatabase=nil, reservestoragepolicy=nil)
          @InstanceId = instanceid
          @BackUpJobId = backupjobid
          @ReplicationNum = replicationnum
          @ReserveSourceConfig = reservesourceconfig
          @RecoverType = recovertype
          @CosSourceInfo = cossourceinfo
          @ScheduleType = scheduletype
          @NextTime = nexttime
          @ScheduleName = schedulename
          @OperationType = operationtype
          @RecoverScope = recoverscope
          @RecoverDatabase = recoverdatabase
          @ReserveStoragePolicy = reservestoragepolicy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackUpJobId = params['BackUpJobId']
          @ReplicationNum = params['ReplicationNum']
          @ReserveSourceConfig = params['ReserveSourceConfig']
          @RecoverType = params['RecoverType']
          unless params['CosSourceInfo'].nil?
            @CosSourceInfo = CosSourceInfo.new
            @CosSourceInfo.deserialize(params['CosSourceInfo'])
          end
          @ScheduleType = params['ScheduleType']
          @NextTime = params['NextTime']
          @ScheduleName = params['ScheduleName']
          @OperationType = params['OperationType']
          @RecoverScope = params['RecoverScope']
          @RecoverDatabase = params['RecoverDatabase']
          @ReserveStoragePolicy = params['ReserveStoragePolicy']
        end
      end

      # RecoverBackUpJob返回参数结构体
      class RecoverBackUpJobResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 恢复任务总数量
        # @type TotalCount: Integer
        # @param DuplicateTables: 重复的表名
        # @type DuplicateTables: Array
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DuplicateTables, :ErrorMsg, :RequestId

        def initialize(totalcount=nil, duplicatetables=nil, errormsg=nil, requestid=nil)
          @TotalCount = totalcount
          @DuplicateTables = duplicatetables
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @DuplicateTables = params['DuplicateTables']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ReduceInstance请求参数结构体
      class ReduceInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param DelHosts: 节点列表
        # @type DelHosts: Array
        # @param Type: 角色（MATER/CORE），MASTER 对应 FE，CORE对应BE
        # @type Type: String
        # @param HaType: 缩容后集群高可用类型：0：非高可用，1：读高可用，2：读写高可用。
        # @type HaType: Integer

        attr_accessor :InstanceId, :DelHosts, :Type, :HaType

        def initialize(instanceid=nil, delhosts=nil, type=nil, hatype=nil)
          @InstanceId = instanceid
          @DelHosts = delhosts
          @Type = type
          @HaType = hatype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DelHosts = params['DelHosts']
          @Type = params['Type']
          @HaType = params['HaType']
        end
      end

      # ReduceInstance返回参数结构体
      class ReduceInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 可用区的地域大类描述
      class RegionAreaInfo < TencentCloud::Common::AbstractModel
        # @param Name: 大类地域信息，如"south_china", "east_china"等
        # @type Name: String
        # @param Desc: 对应Name的描述，例如“华南地区”，“华东地区”等
        # @type Desc: String
        # @param Regions: 具体地域列表1
        # @type Regions: Array

        attr_accessor :Name, :Desc, :Regions

        def initialize(name=nil, desc=nil, regions=nil)
          @Name = name
          @Desc = desc
          @Regions = regions
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          unless params['Regions'].nil?
            @Regions = []
            params['Regions'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @Regions << regioninfo_tmp
            end
          end
        end
      end

      # 地域描述信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Name: 地域名称，例如“ap-guangzhou"
        # @type Name: String
        # @param Desc: 地域描述，例如"广州”
        # @type Desc: String
        # @param RegionId: 地域唯一标记
        # @type RegionId: Integer
        # @param Zones: 地域下所有可用区列表
        # @type Zones: Array
        # @param Count: 该地域下集群数目
        # @type Count: Integer
        # @param IsInternationalSite: 0代表是国际站 1代表不是
        # @type IsInternationalSite: Integer
        # @param Bucket: 桶
        # @type Bucket: String

        attr_accessor :Name, :Desc, :RegionId, :Zones, :Count, :IsInternationalSite, :Bucket

        def initialize(name=nil, desc=nil, regionid=nil, zones=nil, count=nil, isinternationalsite=nil, bucket=nil)
          @Name = name
          @Desc = desc
          @RegionId = regionid
          @Zones = zones
          @Count = count
          @IsInternationalSite = isinternationalsite
          @Bucket = bucket
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @RegionId = params['RegionId']
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @Zones << zoneinfo_tmp
            end
          end
          @Count = params['Count']
          @IsInternationalSite = params['IsInternationalSite']
          @Bucket = params['Bucket']
        end
      end

      # ResizeDisk请求参数结构体
      class ResizeDiskRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Type: 角色（MATER/CORE），MASTER 对应 FE，CORE对应BE
        # @type Type: String
        # @param DiskSize: 云盘大小
        # @type DiskSize: Integer

        attr_accessor :InstanceId, :Type, :DiskSize

        def initialize(instanceid=nil, type=nil, disksize=nil)
          @InstanceId = instanceid
          @Type = type
          @DiskSize = disksize
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @DiskSize = params['DiskSize']
        end
      end

      # ResizeDisk返回参数结构体
      class ResizeDiskResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :FlowId, :ErrorMsg, :RequestId

        def initialize(instanceid=nil, flowid=nil, errormsg=nil, requestid=nil)
          @InstanceId = instanceid
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 资源规格描述信息
      class ResourceSpec < TencentCloud::Common::AbstractModel
        # @param Name: 规格名称，例如“SCH1"
        # @type Name: String
        # @param Cpu: cpu核数
        # @type Cpu: Integer
        # @param Mem: 内存大小，单位G
        # @type Mem: Integer
        # @param Type: 分类标记，STANDARD/BIGDATA/HIGHIO分别表示标准型/大数据型/高IO
        # @type Type: String
        # @param SystemDisk: 系统盘描述信息
        # @type SystemDisk: :class:`Tencentcloud::Cdwdoris.v20211228.models.DiskSpec`
        # @param DataDisk: 数据盘描述信息
        # @type DataDisk: :class:`Tencentcloud::Cdwdoris.v20211228.models.DiskSpec`
        # @param MaxNodeSize: 最大节点数目限制
        # @type MaxNodeSize: Integer
        # @param Available: 是否可用，false代表售罄
        # @type Available: Boolean
        # @param ComputeSpecDesc: 规格描述信息
        # @type ComputeSpecDesc: String
        # @param InstanceQuota: cvm库存
        # @type InstanceQuota: Integer

        attr_accessor :Name, :Cpu, :Mem, :Type, :SystemDisk, :DataDisk, :MaxNodeSize, :Available, :ComputeSpecDesc, :InstanceQuota

        def initialize(name=nil, cpu=nil, mem=nil, type=nil, systemdisk=nil, datadisk=nil, maxnodesize=nil, available=nil, computespecdesc=nil, instancequota=nil)
          @Name = name
          @Cpu = cpu
          @Mem = mem
          @Type = type
          @SystemDisk = systemdisk
          @DataDisk = datadisk
          @MaxNodeSize = maxnodesize
          @Available = available
          @ComputeSpecDesc = computespecdesc
          @InstanceQuota = instancequota
        end

        def deserialize(params)
          @Name = params['Name']
          @Cpu = params['Cpu']
          @Mem = params['Mem']
          @Type = params['Type']
          unless params['SystemDisk'].nil?
            @SystemDisk = DiskSpec.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisk'].nil?
            @DataDisk = DiskSpec.new
            @DataDisk.deserialize(params['DataDisk'])
          end
          @MaxNodeSize = params['MaxNodeSize']
          @Available = params['Available']
          @ComputeSpecDesc = params['ComputeSpecDesc']
          @InstanceQuota = params['InstanceQuota']
        end
      end

      # RestartClusterForConfigs请求参数结构体
      class RestartClusterForConfigsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID，例如cdwch-xxxx
        # @type InstanceId: String
        # @param ConfigName: 配置文件名称
        # @type ConfigName: String
        # @param OperationType: grace_restart为优雅滚动重启 不填默认立刻重启
        # @type OperationType: String

        attr_accessor :InstanceId, :ConfigName, :OperationType

        def initialize(instanceid=nil, configname=nil, operationtype=nil)
          @InstanceId = instanceid
          @ConfigName = configname
          @OperationType = operationtype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConfigName = params['ConfigName']
          @OperationType = params['OperationType']
        end
      end

      # RestartClusterForConfigs返回参数结构体
      class RestartClusterForConfigsResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程相关信息
        # @type FlowId: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # RestartClusterForNode请求参数结构体
      class RestartClusterForNodeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID，例如cdwch-xxxx
        # @type InstanceId: String
        # @param ConfigName: 配置文件名称
        # @type ConfigName: String
        # @param BatchSize: 每次重启的批次
        # @type BatchSize: Integer
        # @param NodeList: 重启节点
        # @type NodeList: Array
        # @param RollingRestart: false表示非滚动重启，true表示滚动重启
        # @type RollingRestart: Boolean

        attr_accessor :InstanceId, :ConfigName, :BatchSize, :NodeList, :RollingRestart

        def initialize(instanceid=nil, configname=nil, batchsize=nil, nodelist=nil, rollingrestart=nil)
          @InstanceId = instanceid
          @ConfigName = configname
          @BatchSize = batchsize
          @NodeList = nodelist
          @RollingRestart = rollingrestart
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ConfigName = params['ConfigName']
          @BatchSize = params['BatchSize']
          @NodeList = params['NodeList']
          @RollingRestart = params['RollingRestart']
        end
      end

      # RestartClusterForNode返回参数结构体
      class RestartClusterForNodeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程相关信息
        # @type FlowId: Integer
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 恢复任务信息
      class RestoreStatus < TencentCloud::Common::AbstractModel
        # @param JobId: 恢复任务id
        # @type JobId: Integer
        # @param Label: 恢复任务标签
        # @type Label: String
        # @param Timestamp: 恢复任务时间戳
        # @type Timestamp: String
        # @param DbName: 恢复任务所在库
        # @type DbName: String
        # @param State: 恢复任务状态
        # @type State: String
        # @param AllowLoad: 恢复时是否允许导入
        # @type AllowLoad: Boolean
        # @param ReplicationNum: 副本数
        # @type ReplicationNum: String
        # @param ReplicaAllocation: 副本数
        # @type ReplicaAllocation: String
        # @param RestoreObjects: 恢复对象
        # @type RestoreObjects: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param MetaPreparedTime: 元数据准备时间
        # @type MetaPreparedTime: String
        # @param SnapshotFinishedTime: 快照结束时间
        # @type SnapshotFinishedTime: String
        # @param DownloadFinishedTime: 下载结束时间
        # @type DownloadFinishedTime: String
        # @param FinishedTime: 结束时间
        # @type FinishedTime: String
        # @param UnfinishedTasks: 未完成任务
        # @type UnfinishedTasks: String
        # @param Progress: 进度
        # @type Progress: String
        # @param TaskErrMsg: 错误信息
        # @type TaskErrMsg: String
        # @param Status: 状态
        # @type Status: String
        # @param Timeout: 作业超时时间
        # @type Timeout: Integer
        # @param ReserveReplica: 是否保持源表中的副本数
        # @type ReserveReplica: Boolean
        # @param ReserveDynamicPartitionEnable: 是否保持源表中的动态分区
        # @type ReserveDynamicPartitionEnable: Boolean
        # @param BackupJobId: 备份实例id
        # @type BackupJobId: Integer
        # @param TaskId: 实例对应snapshot的id
        # @type TaskId: Integer

        attr_accessor :JobId, :Label, :Timestamp, :DbName, :State, :AllowLoad, :ReplicationNum, :ReplicaAllocation, :RestoreObjects, :CreateTime, :MetaPreparedTime, :SnapshotFinishedTime, :DownloadFinishedTime, :FinishedTime, :UnfinishedTasks, :Progress, :TaskErrMsg, :Status, :Timeout, :ReserveReplica, :ReserveDynamicPartitionEnable, :BackupJobId, :TaskId

        def initialize(jobid=nil, label=nil, timestamp=nil, dbname=nil, state=nil, allowload=nil, replicationnum=nil, replicaallocation=nil, restoreobjects=nil, createtime=nil, metapreparedtime=nil, snapshotfinishedtime=nil, downloadfinishedtime=nil, finishedtime=nil, unfinishedtasks=nil, progress=nil, taskerrmsg=nil, status=nil, timeout=nil, reservereplica=nil, reservedynamicpartitionenable=nil, backupjobid=nil, taskid=nil)
          @JobId = jobid
          @Label = label
          @Timestamp = timestamp
          @DbName = dbname
          @State = state
          @AllowLoad = allowload
          @ReplicationNum = replicationnum
          @ReplicaAllocation = replicaallocation
          @RestoreObjects = restoreobjects
          @CreateTime = createtime
          @MetaPreparedTime = metapreparedtime
          @SnapshotFinishedTime = snapshotfinishedtime
          @DownloadFinishedTime = downloadfinishedtime
          @FinishedTime = finishedtime
          @UnfinishedTasks = unfinishedtasks
          @Progress = progress
          @TaskErrMsg = taskerrmsg
          @Status = status
          @Timeout = timeout
          @ReserveReplica = reservereplica
          @ReserveDynamicPartitionEnable = reservedynamicpartitionenable
          @BackupJobId = backupjobid
          @TaskId = taskid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Label = params['Label']
          @Timestamp = params['Timestamp']
          @DbName = params['DbName']
          @State = params['State']
          @AllowLoad = params['AllowLoad']
          @ReplicationNum = params['ReplicationNum']
          @ReplicaAllocation = params['ReplicaAllocation']
          @RestoreObjects = params['RestoreObjects']
          @CreateTime = params['CreateTime']
          @MetaPreparedTime = params['MetaPreparedTime']
          @SnapshotFinishedTime = params['SnapshotFinishedTime']
          @DownloadFinishedTime = params['DownloadFinishedTime']
          @FinishedTime = params['FinishedTime']
          @UnfinishedTasks = params['UnfinishedTasks']
          @Progress = params['Progress']
          @TaskErrMsg = params['TaskErrMsg']
          @Status = params['Status']
          @Timeout = params['Timeout']
          @ReserveReplica = params['ReserveReplica']
          @ReserveDynamicPartitionEnable = params['ReserveDynamicPartitionEnable']
          @BackupJobId = params['BackupJobId']
          @TaskId = params['TaskId']
        end
      end

      # ScaleOutInstance请求参数结构体
      class ScaleOutInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param Type: 角色（MATER/CORE），MASTER 对应 FE，CORE对应BE
        # @type Type: String
        # @param NodeCount: 节点数量
        # @type NodeCount: Integer
        # @param HaType: 扩容后集群高可用类型：0：非高可用，1：读高可用，2：读写高可用。
        # @type HaType: Integer

        attr_accessor :InstanceId, :Type, :NodeCount, :HaType

        def initialize(instanceid=nil, type=nil, nodecount=nil, hatype=nil)
          @InstanceId = instanceid
          @Type = type
          @NodeCount = nodecount
          @HaType = hatype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @NodeCount = params['NodeCount']
          @HaType = params['HaType']
        end
      end

      # ScaleOutInstance返回参数结构体
      class ScaleOutInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # ScaleUpInstance请求参数结构体
      class ScaleUpInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群ID
        # @type InstanceId: String
        # @param SpecName: 节点规格
        # @type SpecName: String
        # @param Type: 角色（MATER/CORE），MASTER 对应 FE，CORE对应BE
        # @type Type: String

        attr_accessor :InstanceId, :SpecName, :Type

        def initialize(instanceid=nil, specname=nil, type=nil)
          @InstanceId = instanceid
          @SpecName = specname
          @Type = type
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SpecName = params['SpecName']
          @Type = params['Type']
        end
      end

      # ScaleUpInstance返回参数结构体
      class ScaleUpInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :InstanceId, :ErrorMsg, :RequestId

        def initialize(flowid=nil, instanceid=nil, errormsg=nil, requestid=nil)
          @FlowId = flowid
          @InstanceId = instanceid
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @InstanceId = params['InstanceId']
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 调度信息
      class ScheduleInfo < TencentCloud::Common::AbstractModel
        # @param EffectivePeriod: 生效周期
        # @type EffectivePeriod: String
        # @param ScheduleType: 调度类型，不传该参数时为立即执行：
        # Day-天
        # Week-周
        # Month-月
        # Once-单次
        # @type ScheduleType: String
        # @param ScheduleData: 执行调度的日期。调度类型为周和月时以英文逗号分隔；
        # 调度类型为单次时，该值是个日期
        # @type ScheduleData: String
        # @param ScheduleHour: 执行时间：时
        # @type ScheduleHour: Integer
        # @param ScheduleMin: 执行时间：分
        # @type ScheduleMin: Integer
        # @param BackupScope: 备份粒度：
        # All-全量
        # Database-按库
        # Table-按表
        # @type BackupScope: String
        # @param BackupDatabase: 备份库：如果是按库备份，则需要该字段，库之间用英文逗号分割
        # @type BackupDatabase: String

        attr_accessor :EffectivePeriod, :ScheduleType, :ScheduleData, :ScheduleHour, :ScheduleMin, :BackupScope, :BackupDatabase

        def initialize(effectiveperiod=nil, scheduletype=nil, scheduledata=nil, schedulehour=nil, schedulemin=nil, backupscope=nil, backupdatabase=nil)
          @EffectivePeriod = effectiveperiod
          @ScheduleType = scheduletype
          @ScheduleData = scheduledata
          @ScheduleHour = schedulehour
          @ScheduleMin = schedulemin
          @BackupScope = backupscope
          @BackupDatabase = backupdatabase
        end

        def deserialize(params)
          @EffectivePeriod = params['EffectivePeriod']
          @ScheduleType = params['ScheduleType']
          @ScheduleData = params['ScheduleData']
          @ScheduleHour = params['ScheduleHour']
          @ScheduleMin = params['ScheduleMin']
          @BackupScope = params['BackupScope']
          @BackupDatabase = params['BackupDatabase']
        end
      end

      # 列表页搜索的标记列表
      class SearchTags < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
        # @type TagValue: String
        # @param AllValue: 1表示只输入标签的键，没有输入值；非1则表示输入键时且输入值
        # @type AllValue: Integer

        attr_accessor :TagKey, :TagValue, :AllValue

        def initialize(tagkey=nil, tagvalue=nil, allvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @AllValue = allvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @AllValue = params['AllValue']
        end
      end

      # 慢查询记录
      class SlowQueryRecord < TencentCloud::Common::AbstractModel
        # @param OsUser: 查询用户
        # @type OsUser: String
        # @param InitialQueryId: 查询ID
        # @type InitialQueryId: String
        # @param Sql: SQL语句
        # @type Sql: String
        # @param QueryStartTime: 开始时间
        # @type QueryStartTime: String
        # @param DurationMs: 执行耗时
        # @type DurationMs: Integer
        # @param ReadRows: 读取行数
        # @type ReadRows: Integer
        # @param ResultRows: 读取字节数
        # @type ResultRows: Integer
        # @param ResultBytes: 结果字节数
        # @type ResultBytes: Integer
        # @param MemoryUsage: 内存
        # @type MemoryUsage: Integer
        # @param InitialAddress: 初始查询IP
        # @type InitialAddress: String
        # @param DbName: 数据库名
        # @type DbName: String
        # @param IsQuery: 是否是查询，0：否，1：查询语句
        # @type IsQuery: Integer
        # @param ResultBytesMB: ResultBytes的MB格式
        # @type ResultBytesMB: Float
        # @param MemoryUsageMB: MemoryUsage的MB表示
        # @type MemoryUsageMB: Float
        # @param DurationSec: DurationMs的秒表示
        # @type DurationSec: Float
        # @param State: 状态
        # @type State: String
        # @param CatalogName: Catalog  Name
        # @type CatalogName: String
        # @param CpuTimeMs: cpu执行时间
        # @type CpuTimeMs: Integer

        attr_accessor :OsUser, :InitialQueryId, :Sql, :QueryStartTime, :DurationMs, :ReadRows, :ResultRows, :ResultBytes, :MemoryUsage, :InitialAddress, :DbName, :IsQuery, :ResultBytesMB, :MemoryUsageMB, :DurationSec, :State, :CatalogName, :CpuTimeMs

        def initialize(osuser=nil, initialqueryid=nil, sql=nil, querystarttime=nil, durationms=nil, readrows=nil, resultrows=nil, resultbytes=nil, memoryusage=nil, initialaddress=nil, dbname=nil, isquery=nil, resultbytesmb=nil, memoryusagemb=nil, durationsec=nil, state=nil, catalogname=nil, cputimems=nil)
          @OsUser = osuser
          @InitialQueryId = initialqueryid
          @Sql = sql
          @QueryStartTime = querystarttime
          @DurationMs = durationms
          @ReadRows = readrows
          @ResultRows = resultrows
          @ResultBytes = resultbytes
          @MemoryUsage = memoryusage
          @InitialAddress = initialaddress
          @DbName = dbname
          @IsQuery = isquery
          @ResultBytesMB = resultbytesmb
          @MemoryUsageMB = memoryusagemb
          @DurationSec = durationsec
          @State = state
          @CatalogName = catalogname
          @CpuTimeMs = cputimems
        end

        def deserialize(params)
          @OsUser = params['OsUser']
          @InitialQueryId = params['InitialQueryId']
          @Sql = params['Sql']
          @QueryStartTime = params['QueryStartTime']
          @DurationMs = params['DurationMs']
          @ReadRows = params['ReadRows']
          @ResultRows = params['ResultRows']
          @ResultBytes = params['ResultBytes']
          @MemoryUsage = params['MemoryUsage']
          @InitialAddress = params['InitialAddress']
          @DbName = params['DbName']
          @IsQuery = params['IsQuery']
          @ResultBytesMB = params['ResultBytesMB']
          @MemoryUsageMB = params['MemoryUsageMB']
          @DurationSec = params['DurationSec']
          @State = params['State']
          @CatalogName = params['CatalogName']
          @CpuTimeMs = params['CpuTimeMs']
        end
      end

      # 标签描述
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键
        # @type TagKey: String
        # @param TagValue: 标签的值
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

      # UpdateCoolDown请求参数结构体
      class UpdateCoolDownRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群id
        # @type InstanceId: String
        # @param Enable: 是否启用 0：不启用 1：启用
        # @type Enable: Integer
        # @param Bucket: 用户存放冷热分层数据Cos桶地址
        # @type Bucket: String

        attr_accessor :InstanceId, :Enable, :Bucket

        def initialize(instanceid=nil, enable=nil, bucket=nil)
          @InstanceId = instanceid
          @Enable = enable
          @Bucket = bucket
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Enable = params['Enable']
          @Bucket = params['Bucket']
        end
      end

      # UpdateCoolDown返回参数结构体
      class UpdateCoolDownResponse < TencentCloud::Common::AbstractModel
        # @param ErrorMsg: 错误信息
        # @type ErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorMsg, :RequestId

        def initialize(errormsg=nil, requestid=nil)
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorMsg = params['ErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 更新用户权限结构体
      class UpdateUserPrivileges < TencentCloud::Common::AbstractModel
        # @param IsSetGlobalCatalog: 是否设置catalog权限
        # @type IsSetGlobalCatalog: Boolean

        attr_accessor :IsSetGlobalCatalog

        def initialize(issetglobalcatalog=nil)
          @IsSetGlobalCatalog = issetglobalcatalog
        end

        def deserialize(params)
          @IsSetGlobalCatalog = params['IsSetGlobalCatalog']
        end
      end

      # 新增或是修改用户
      class UserInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 集群实例id
        # @type InstanceId: String
        # @param UserName: 用户名
        # @type UserName: String
        # @param PassWord: 密码
        # @type PassWord: String
        # @param WhiteHost: 用户链接来自的 IP
        # @type WhiteHost: String
        # @param OldWhiteHost: 修改前用户链接来自的 IP
        # @type OldWhiteHost: String
        # @param Describe: 描述
        # @type Describe: String
        # @param OldPwd: 旧密码
        # @type OldPwd: String
        # @param CamUin: 绑定的子用户uin
        # @type CamUin: String
        # @param CamRangerGroupIds: ranger group id列表
        # @type CamRangerGroupIds: Array

        attr_accessor :InstanceId, :UserName, :PassWord, :WhiteHost, :OldWhiteHost, :Describe, :OldPwd, :CamUin, :CamRangerGroupIds

        def initialize(instanceid=nil, username=nil, password=nil, whitehost=nil, oldwhitehost=nil, describe=nil, oldpwd=nil, camuin=nil, camrangergroupids=nil)
          @InstanceId = instanceid
          @UserName = username
          @PassWord = password
          @WhiteHost = whitehost
          @OldWhiteHost = oldwhitehost
          @Describe = describe
          @OldPwd = oldpwd
          @CamUin = camuin
          @CamRangerGroupIds = camrangergroupids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @PassWord = params['PassWord']
          @WhiteHost = params['WhiteHost']
          @OldWhiteHost = params['OldWhiteHost']
          @Describe = params['Describe']
          @OldPwd = params['OldPwd']
          @CamUin = params['CamUin']
          @CamRangerGroupIds = params['CamRangerGroupIds']
        end
      end

      # 用户绑定资源组信息
      class UserWorkloadGroup < TencentCloud::Common::AbstractModel
        # @param UserName: test
        # @type UserName: String
        # @param WorkloadGroupName: normal
        # @type WorkloadGroupName: String

        attr_accessor :UserName, :WorkloadGroupName

        def initialize(username=nil, workloadgroupname=nil)
          @UserName = username
          @WorkloadGroupName = workloadgroupname
        end

        def deserialize(params)
          @UserName = params['UserName']
          @WorkloadGroupName = params['WorkloadGroupName']
        end
      end

      # 资源组相关配置
      class WorkloadGroupConfig < TencentCloud::Common::AbstractModel
        # @param WorkloadGroupName: 资源组名称
        # @type WorkloadGroupName: String
        # @param CpuShare: CPU权重
        # @type CpuShare: Integer
        # @param MemoryLimit: 内存限制，所有资源组的内存限制值之和应该小于等于100
        # @type MemoryLimit: Integer
        # @param EnableMemoryOverCommit: 是否允许超配分配
        # @type EnableMemoryOverCommit: Boolean
        # @param CpuHardLimit: cpu硬限制
        # @type CpuHardLimit: String

        attr_accessor :WorkloadGroupName, :CpuShare, :MemoryLimit, :EnableMemoryOverCommit, :CpuHardLimit

        def initialize(workloadgroupname=nil, cpushare=nil, memorylimit=nil, enablememoryovercommit=nil, cpuhardlimit=nil)
          @WorkloadGroupName = workloadgroupname
          @CpuShare = cpushare
          @MemoryLimit = memorylimit
          @EnableMemoryOverCommit = enablememoryovercommit
          @CpuHardLimit = cpuhardlimit
        end

        def deserialize(params)
          @WorkloadGroupName = params['WorkloadGroupName']
          @CpuShare = params['CpuShare']
          @MemoryLimit = params['MemoryLimit']
          @EnableMemoryOverCommit = params['EnableMemoryOverCommit']
          @CpuHardLimit = params['CpuHardLimit']
        end
      end

      # 可用区描述信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Name: 可用区名称，例如"ap-guangzhou-1"
        # @type Name: String
        # @param Desc: 可用区描述信息，例如“广州一区”
        # @type Desc: String
        # @param ZoneId: 可用区唯一标记
        # @type ZoneId: Integer
        # @param Encrypt: Encryptid
        # @type Encrypt: Integer
        # @param Main: 是否为主力园区
        # @type Main: Boolean

        attr_accessor :Name, :Desc, :ZoneId, :Encrypt, :Main

        def initialize(name=nil, desc=nil, zoneid=nil, encrypt=nil, main=nil)
          @Name = name
          @Desc = desc
          @ZoneId = zoneid
          @Encrypt = encrypt
          @Main = main
        end

        def deserialize(params)
          @Name = params['Name']
          @Desc = params['Desc']
          @ZoneId = params['ZoneId']
          @Encrypt = params['Encrypt']
          @Main = params['Main']
        end
      end

    end
  end
end

