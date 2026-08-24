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
  module Bdrc
    module V20260330
      # 备份高级保留策略
      class AdvancedRetentionPolicy < TencentCloud::Common::AbstractModel
        # @param Days: 保留设定天数中的每天最新的一个备份
        # @type Days: Integer
        # @param Weeks: 保留设置周中的每周最新的一个备份
        # @type Weeks: Integer
        # @param Months: 保留设置月内的每月最新的一个备份
        # @type Months: Integer
        # @param Years: 保留设置年内的每年最新的一个备份
        # @type Years: Integer

        attr_accessor :Days, :Weeks, :Months, :Years

        def initialize(days=nil, weeks=nil, months=nil, years=nil)
          @Days = days
          @Weeks = weeks
          @Months = months
          @Years = years
        end

        def deserialize(params)
          @Days = params['Days']
          @Weeks = params['Weeks']
          @Months = params['Months']
          @Years = params['Years']
        end
      end

      # ApplyBackupGroup请求参数结构体
      class ApplyBackupGroupRequest < TencentCloud::Common::AbstractModel
        # @param BackupGroupId: 回滚的备份组ID。
        # @type BackupGroupId: String
        # @param ApplyDisks: 回滚的备份ID、云硬盘ID列表。
        # @type ApplyDisks: Array
        # @param AutoStopInstance: 回滚备份前是否执行自动关机，如果回滚的盘挂载在实例上且实例处于运行状态，可传入该参数。
        # @type AutoStopInstance: Boolean
        # @param AutoStartInstance: 回滚备份完成后是否执行自动开机。
        # @type AutoStartInstance: Boolean

        attr_accessor :BackupGroupId, :ApplyDisks, :AutoStopInstance, :AutoStartInstance

        def initialize(backupgroupid=nil, applydisks=nil, autostopinstance=nil, autostartinstance=nil)
          @BackupGroupId = backupgroupid
          @ApplyDisks = applydisks
          @AutoStopInstance = autostopinstance
          @AutoStartInstance = autostartinstance
        end

        def deserialize(params)
          @BackupGroupId = params['BackupGroupId']
          unless params['ApplyDisks'].nil?
            @ApplyDisks = []
            params['ApplyDisks'].each do |i|
              applydisk_tmp = ApplyDisk.new
              applydisk_tmp.deserialize(i)
              @ApplyDisks << applydisk_tmp
            end
          end
          @AutoStopInstance = params['AutoStopInstance']
          @AutoStartInstance = params['AutoStartInstance']
        end
      end

      # ApplyBackupGroup返回参数结构体
      class ApplyBackupGroupResponse < TencentCloud::Common::AbstractModel
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

      # 备份组备份和云盘绑定信息
      class ApplyDisk < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份ID
        # @type BackupId: String
        # @param DiskId: 云盘ID
        # @type DiskId: String

        attr_accessor :BackupId, :DiskId

        def initialize(backupid=nil, diskid=nil)
          @BackupId = backupid
          @DiskId = diskid
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          @DiskId = params['DiskId']
        end
      end

      # 备份的执行策略信息
      class AspInfo < TencentCloud::Common::AbstractModel
        # @param AspId: 备份策略ID
        # @type AspId: String
        # @param AspName: 备份策略名称
        # @type AspName: String
        # @param AspState: 备份策略状态
        # @type AspState: String
        # @param Policy: 备份策略执行详情
        # @type Policy: Array
        # @param IsActivated: 备份策略是否使能
        # @type IsActivated: Boolean
        # @param IsPermanent: 是否永久保留
        # @type IsPermanent: Boolean
        # @param RetentionDays: 保留时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RetentionDays: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :AspId, :AspName, :AspState, :Policy, :IsActivated, :IsPermanent, :RetentionDays, :CreateTime

        def initialize(aspid=nil, aspname=nil, aspstate=nil, policy=nil, isactivated=nil, ispermanent=nil, retentiondays=nil, createtime=nil)
          @AspId = aspid
          @AspName = aspname
          @AspState = aspstate
          @Policy = policy
          @IsActivated = isactivated
          @IsPermanent = ispermanent
          @RetentionDays = retentiondays
          @CreateTime = createtime
        end

        def deserialize(params)
          @AspId = params['AspId']
          @AspName = params['AspName']
          @AspState = params['AspState']
          unless params['Policy'].nil?
            @Policy = []
            params['Policy'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @Policy << policy_tmp
            end
          end
          @IsActivated = params['IsActivated']
          @IsPermanent = params['IsPermanent']
          @RetentionDays = params['RetentionDays']
          @CreateTime = params['CreateTime']
        end
      end

      # 定期备份策略的详细信息
      class AutoBackupPolicy < TencentCloud::Common::AbstractModel
        # @param IsActivated: 定期备份策略是否激活。
        # @type IsActivated: Boolean
        # @param IsPermanent: 使用该定期备份策略创建出来的备份是否永久保留。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPermanent: Boolean
        # @param NextTriggerTime: 使用该定期备份策略创建出来的备份是否永久保留。
        # @type NextTriggerTime: String
        # @param AutoBackupPolicyState: NORMAL
        # @type AutoBackupPolicyState: String
        # @param AutoBackupPolicyName: 备份策略的名称。
        # @type AutoBackupPolicyName: String
        # @param Policy: 定期备份的执行策略。
        # @type Policy: Array
        # @param AutoBackupPolicyId: 备份策略ID。
        # @type AutoBackupPolicyId: String
        # @param CreateTime: 备份策略的创建时间。
        # @type CreateTime: String
        # @param RetentionDays: 使用该定期备份策略创建出来的备份保留天数。
        # @type RetentionDays: Integer
        # @param AppId: 用户AppId。
        # @type AppId: Integer
        # @param InstanceIdSet: 定期备份策略绑定的实例ID列表。
        # @type InstanceIdSet: Array
        # @param RetentionMonths: 该定期快照创建的快照最大保留月数
        # @type RetentionMonths: Integer
        # @param RetentionAmount: 该定期快照创建的快照最大保留数量
        # @type RetentionAmount: Integer
        # @param AccountName: 创建人。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountName: String
        # @param AccountUin: 主账号uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountUin: String
        # @param SubAccountUin: 子账号uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param StorageType: 策略存储类型
        # @type StorageType: String
        # @param VaultId: 备份库ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VaultId: String
        # @param AdvancedRetentionPolicy: 高级保留策略
        # @type AdvancedRetentionPolicy: :class:`Tencentcloud::Bdrc.v20260330.models.AdvancedRetentionPolicy`

        attr_accessor :IsActivated, :IsPermanent, :NextTriggerTime, :AutoBackupPolicyState, :AutoBackupPolicyName, :Policy, :AutoBackupPolicyId, :CreateTime, :RetentionDays, :AppId, :InstanceIdSet, :RetentionMonths, :RetentionAmount, :AccountName, :AccountUin, :SubAccountUin, :StorageType, :VaultId, :AdvancedRetentionPolicy

        def initialize(isactivated=nil, ispermanent=nil, nexttriggertime=nil, autobackuppolicystate=nil, autobackuppolicyname=nil, policy=nil, autobackuppolicyid=nil, createtime=nil, retentiondays=nil, appid=nil, instanceidset=nil, retentionmonths=nil, retentionamount=nil, accountname=nil, accountuin=nil, subaccountuin=nil, storagetype=nil, vaultid=nil, advancedretentionpolicy=nil)
          @IsActivated = isactivated
          @IsPermanent = ispermanent
          @NextTriggerTime = nexttriggertime
          @AutoBackupPolicyState = autobackuppolicystate
          @AutoBackupPolicyName = autobackuppolicyname
          @Policy = policy
          @AutoBackupPolicyId = autobackuppolicyid
          @CreateTime = createtime
          @RetentionDays = retentiondays
          @AppId = appid
          @InstanceIdSet = instanceidset
          @RetentionMonths = retentionmonths
          @RetentionAmount = retentionamount
          @AccountName = accountname
          @AccountUin = accountuin
          @SubAccountUin = subaccountuin
          @StorageType = storagetype
          @VaultId = vaultid
          @AdvancedRetentionPolicy = advancedretentionpolicy
        end

        def deserialize(params)
          @IsActivated = params['IsActivated']
          @IsPermanent = params['IsPermanent']
          @NextTriggerTime = params['NextTriggerTime']
          @AutoBackupPolicyState = params['AutoBackupPolicyState']
          @AutoBackupPolicyName = params['AutoBackupPolicyName']
          unless params['Policy'].nil?
            @Policy = []
            params['Policy'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @Policy << policy_tmp
            end
          end
          @AutoBackupPolicyId = params['AutoBackupPolicyId']
          @CreateTime = params['CreateTime']
          @RetentionDays = params['RetentionDays']
          @AppId = params['AppId']
          @InstanceIdSet = params['InstanceIdSet']
          @RetentionMonths = params['RetentionMonths']
          @RetentionAmount = params['RetentionAmount']
          @AccountName = params['AccountName']
          @AccountUin = params['AccountUin']
          @SubAccountUin = params['SubAccountUin']
          @StorageType = params['StorageType']
          @VaultId = params['VaultId']
          unless params['AdvancedRetentionPolicy'].nil?
            @AdvancedRetentionPolicy = AdvancedRetentionPolicy.new
            @AdvancedRetentionPolicy.deserialize(params['AdvancedRetentionPolicy'])
          end
        end
      end

      # 描述了 “tat-agent” 相关的信息
      class AutomationServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启该服务。取值范围：TRUE（开启）/FALSE（不开启）。默认取值：TRUE。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # 单个备份的操作掩码。
      class BackupDeniedAction < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份ID。
        # @type BackupId: String
        # @param DeniedActions: 具体的备份操作掩码列表。
        # @type DeniedActions: Array

        attr_accessor :BackupId, :DeniedActions

        def initialize(backupid=nil, deniedactions=nil)
          @BackupId = backupid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          unless params['DeniedActions'].nil?
            @DeniedActions = []
            params['DeniedActions'].each do |i|
              deniedaction_tmp = DeniedAction.new
              deniedaction_tmp.deserialize(i)
              @DeniedActions << deniedaction_tmp
            end
          end
        end
      end

      # 备份详情
      class BackupDetail < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份组ID
        # @type BackupId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AutoBackupPolicyId: 备份策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoBackupPolicyId: String
        # @param BackupBindDisk: 备份和云盘绑定关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupBindDisk: Array

        attr_accessor :BackupId, :InstanceId, :CreateTime, :AutoBackupPolicyId, :BackupBindDisk

        def initialize(backupid=nil, instanceid=nil, createtime=nil, autobackuppolicyid=nil, backupbinddisk=nil)
          @BackupId = backupid
          @InstanceId = instanceid
          @CreateTime = createtime
          @AutoBackupPolicyId = autobackuppolicyid
          @BackupBindDisk = backupbinddisk
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          @InstanceId = params['InstanceId']
          @CreateTime = params['CreateTime']
          @AutoBackupPolicyId = params['AutoBackupPolicyId']
          unless params['BackupBindDisk'].nil?
            @BackupBindDisk = []
            params['BackupBindDisk'].each do |i|
              applydisk_tmp = ApplyDisk.new
              applydisk_tmp.deserialize(i)
              @BackupBindDisk << applydisk_tmp
            end
          end
        end
      end

      # 备份组详情
      class BackupGroup < TencentCloud::Common::AbstractModel
        # @param BackupGroupId: 备份组ID。
        # @type BackupGroupId: String
        # @param Percent: 备份组创建进度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Integer
        # @param BackupBindDisk: 备份和云盘绑定关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupBindDisk: Array
        # @param BackupGroupName: 备份组名称。
        # @type BackupGroupName: String
        # @param BackupGroupState: 备份组状态。NORMAL: 正常；CREATING: 创建中；ROLLBACKING: 回滚中
        # @type BackupGroupState: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AppId: 用户AppId。
        # @type AppId: Integer
        # @param IsPermanent: 是否为永久备份组。
        # @type IsPermanent: Boolean
        # @param DeadlineTime: 备份组的到期时间。如果为永久备份组，则取值为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadlineTime: String
        # @param InstanceId: 创建备份组的实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceDetails: 创建备份组时刻实例的详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceDetails: String
        # @param AccountName: 创建人名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountName: String
        # @param AccountUin: 主账号uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountUin: String
        # @param SubAccountUin: 创建备份的子账号uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param AutoBackupPolicyId: 创建当前备份的定期备份策略ID，为null则为手动创建的备份。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoBackupPolicyId: String

        attr_accessor :BackupGroupId, :Percent, :BackupBindDisk, :BackupGroupName, :BackupGroupState, :ModifyTime, :CreateTime, :AppId, :IsPermanent, :DeadlineTime, :InstanceId, :InstanceDetails, :AccountName, :AccountUin, :SubAccountUin, :AutoBackupPolicyId

        def initialize(backupgroupid=nil, percent=nil, backupbinddisk=nil, backupgroupname=nil, backupgroupstate=nil, modifytime=nil, createtime=nil, appid=nil, ispermanent=nil, deadlinetime=nil, instanceid=nil, instancedetails=nil, accountname=nil, accountuin=nil, subaccountuin=nil, autobackuppolicyid=nil)
          @BackupGroupId = backupgroupid
          @Percent = percent
          @BackupBindDisk = backupbinddisk
          @BackupGroupName = backupgroupname
          @BackupGroupState = backupgroupstate
          @ModifyTime = modifytime
          @CreateTime = createtime
          @AppId = appid
          @IsPermanent = ispermanent
          @DeadlineTime = deadlinetime
          @InstanceId = instanceid
          @InstanceDetails = instancedetails
          @AccountName = accountname
          @AccountUin = accountuin
          @SubAccountUin = subaccountuin
          @AutoBackupPolicyId = autobackuppolicyid
        end

        def deserialize(params)
          @BackupGroupId = params['BackupGroupId']
          @Percent = params['Percent']
          unless params['BackupBindDisk'].nil?
            @BackupBindDisk = []
            params['BackupBindDisk'].each do |i|
              applydisk_tmp = ApplyDisk.new
              applydisk_tmp.deserialize(i)
              @BackupBindDisk << applydisk_tmp
            end
          end
          @BackupGroupName = params['BackupGroupName']
          @BackupGroupState = params['BackupGroupState']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
          @AppId = params['AppId']
          @IsPermanent = params['IsPermanent']
          @DeadlineTime = params['DeadlineTime']
          @InstanceId = params['InstanceId']
          @InstanceDetails = params['InstanceDetails']
          @AccountName = params['AccountName']
          @AccountUin = params['AccountUin']
          @SubAccountUin = params['SubAccountUin']
          @AutoBackupPolicyId = params['AutoBackupPolicyId']
        end
      end

      # 备份组的操作掩码
      class BackupGroupDeniedAction < TencentCloud::Common::AbstractModel
        # @param BackupGroupId: 备份组ID
        # @type BackupGroupId: String
        # @param DeniedActions: 拒绝的操作
        # @type DeniedActions: Array

        attr_accessor :BackupGroupId, :DeniedActions

        def initialize(backupgroupid=nil, deniedactions=nil)
          @BackupGroupId = backupgroupid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @BackupGroupId = params['BackupGroupId']
          unless params['DeniedActions'].nil?
            @DeniedActions = []
            params['DeniedActions'].each do |i|
              deniedaction_tmp = DeniedAction.new
              deniedaction_tmp.deserialize(i)
              @DeniedActions << deniedaction_tmp
            end
          end
        end
      end

      # 备份组回滚任务
      class BackupGroupRollbackTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 备份组回滚任务
        # @type TaskId: String
        # @param SourceInstanceId: 源实例ID
        # @type SourceInstanceId: String
        # @param TargetInstanceId: 目标实例ID
        # @type TargetInstanceId: String
        # @param BackupGroupId: 备份组ID
        # @type BackupGroupId: String
        # @param RollbackType: 恢复类型：ORIGINAL-原实例恢复，NEW-新实例恢复
        # @type RollbackType: String
        # @param Status: 任务状态。取值包括"init"、"migrating"、"done"、"failed"。
        # @type Status: String
        # @param Percent: 进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Integer
        # @param StartTime: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param AppId: APP ID
        # @type AppId: Integer
        # @param BackupGroupName: 备份点名称
        # @type BackupGroupName: String
        # @param FailReason: 恢复失败原因
        # @type FailReason: String

        attr_accessor :TaskId, :SourceInstanceId, :TargetInstanceId, :BackupGroupId, :RollbackType, :Status, :Percent, :StartTime, :EndTime, :AppId, :BackupGroupName, :FailReason

        def initialize(taskid=nil, sourceinstanceid=nil, targetinstanceid=nil, backupgroupid=nil, rollbacktype=nil, status=nil, percent=nil, starttime=nil, endtime=nil, appid=nil, backupgroupname=nil, failreason=nil)
          @TaskId = taskid
          @SourceInstanceId = sourceinstanceid
          @TargetInstanceId = targetinstanceid
          @BackupGroupId = backupgroupid
          @RollbackType = rollbacktype
          @Status = status
          @Percent = percent
          @StartTime = starttime
          @EndTime = endtime
          @AppId = appid
          @BackupGroupName = backupgroupname
          @FailReason = failreason
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SourceInstanceId = params['SourceInstanceId']
          @TargetInstanceId = params['TargetInstanceId']
          @BackupGroupId = params['BackupGroupId']
          @RollbackType = params['RollbackType']
          @Status = params['Status']
          @Percent = params['Percent']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @AppId = params['AppId']
          @BackupGroupName = params['BackupGroupName']
          @FailReason = params['FailReason']
        end
      end

      # 备份点信息
      class BackupInfo < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份点ID
        # @type BackupId: String
        # @param BackupName: 备份名称
        # @type BackupName: String
        # @param PlanId: 所属计划ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlanId: String
        # @param AspInstanceId: 策略ID
        # @type AspInstanceId: String
        # @param ResourceId: 资源ID
        # @type ResourceId: String
        # @param Status: 备份状态，取值如下：
        # 0 备份完成
        # 1 创建中（备份进行中）
        # 2 部分成功（指定的备份路径中部分目录不存在）
        # 3 恢复中（该备份点正在被恢复任务使用）
        # 92  已取消
        # 98 创建失败
        # 99 已删除
        # 100 删除中
        # @type Status: Integer
        # @param BackupPaths: 备份路径
        # @type BackupPaths: Array
        # @param IncludeFileTypes: 包含文件类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeFileTypes: Array
        # @param ExcludePatterns: 排除路径
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludePatterns: Array
        # @param ExcludeSystemDirectories: 是否排除系统目录
        # @type ExcludeSystemDirectories: Boolean
        # @param VaultId: 备份库ID
        # @type VaultId: String
        # @param ScannedFileCount: 扫描文件数
        # @type ScannedFileCount: Integer
        # @param ScannedSize: 扫描大小(字节)
        # @type ScannedSize: Integer
        # @param ScannedSizeFormatted: 扫描大小(格式化)
        # @type ScannedSizeFormatted: String
        # @param BackupFileCount: 已备份文件数量
        # @type BackupFileCount: Integer
        # @param BackupSize: 已备份大小(字节)
        # @type BackupSize: Integer
        # @param BackupSizeFormatted: 已备份大小(格式化)
        # @type BackupSizeFormatted: String
        # @param Progress: 备份进度(0-100)
        # @type Progress: Float
        # @param JobId: 任务ID
        # @type JobId: String
        # @param StartTime: 开始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param IsPermanent: 是否为永久保留
        # @type IsPermanent: Boolean
        # @param Deadline: 到期时间
        # @type Deadline: String
        # @param NonExistSourcePaths: 不存在的路径信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NonExistSourcePaths: Array
        # @param FailReason: 备份失败原因
        # @type FailReason: String
        # @param AppId: 备份所属AppId
        # @type AppId: Integer
        # @param ResourceType: 备份类型
        # @type ResourceType: String

        attr_accessor :BackupId, :BackupName, :PlanId, :AspInstanceId, :ResourceId, :Status, :BackupPaths, :IncludeFileTypes, :ExcludePatterns, :ExcludeSystemDirectories, :VaultId, :ScannedFileCount, :ScannedSize, :ScannedSizeFormatted, :BackupFileCount, :BackupSize, :BackupSizeFormatted, :Progress, :JobId, :StartTime, :EndTime, :CreatedTime, :IsPermanent, :Deadline, :NonExistSourcePaths, :FailReason, :AppId, :ResourceType

        def initialize(backupid=nil, backupname=nil, planid=nil, aspinstanceid=nil, resourceid=nil, status=nil, backuppaths=nil, includefiletypes=nil, excludepatterns=nil, excludesystemdirectories=nil, vaultid=nil, scannedfilecount=nil, scannedsize=nil, scannedsizeformatted=nil, backupfilecount=nil, backupsize=nil, backupsizeformatted=nil, progress=nil, jobid=nil, starttime=nil, endtime=nil, createdtime=nil, ispermanent=nil, deadline=nil, nonexistsourcepaths=nil, failreason=nil, appid=nil, resourcetype=nil)
          @BackupId = backupid
          @BackupName = backupname
          @PlanId = planid
          @AspInstanceId = aspinstanceid
          @ResourceId = resourceid
          @Status = status
          @BackupPaths = backuppaths
          @IncludeFileTypes = includefiletypes
          @ExcludePatterns = excludepatterns
          @ExcludeSystemDirectories = excludesystemdirectories
          @VaultId = vaultid
          @ScannedFileCount = scannedfilecount
          @ScannedSize = scannedsize
          @ScannedSizeFormatted = scannedsizeformatted
          @BackupFileCount = backupfilecount
          @BackupSize = backupsize
          @BackupSizeFormatted = backupsizeformatted
          @Progress = progress
          @JobId = jobid
          @StartTime = starttime
          @EndTime = endtime
          @CreatedTime = createdtime
          @IsPermanent = ispermanent
          @Deadline = deadline
          @NonExistSourcePaths = nonexistsourcepaths
          @FailReason = failreason
          @AppId = appid
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          @BackupName = params['BackupName']
          @PlanId = params['PlanId']
          @AspInstanceId = params['AspInstanceId']
          @ResourceId = params['ResourceId']
          @Status = params['Status']
          @BackupPaths = params['BackupPaths']
          @IncludeFileTypes = params['IncludeFileTypes']
          @ExcludePatterns = params['ExcludePatterns']
          @ExcludeSystemDirectories = params['ExcludeSystemDirectories']
          @VaultId = params['VaultId']
          @ScannedFileCount = params['ScannedFileCount']
          @ScannedSize = params['ScannedSize']
          @ScannedSizeFormatted = params['ScannedSizeFormatted']
          @BackupFileCount = params['BackupFileCount']
          @BackupSize = params['BackupSize']
          @BackupSizeFormatted = params['BackupSizeFormatted']
          @Progress = params['Progress']
          @JobId = params['JobId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedTime = params['CreatedTime']
          @IsPermanent = params['IsPermanent']
          @Deadline = params['Deadline']
          @NonExistSourcePaths = params['NonExistSourcePaths']
          @FailReason = params['FailReason']
          @AppId = params['AppId']
          @ResourceType = params['ResourceType']
        end
      end

      # 描述实例的备份信息
      class BackupInstance < TencentCloud::Common::AbstractModel
        # @param AutoBackupPolicyIdSet: 实例绑定的定期备份策略列表。
        # @type AutoBackupPolicyIdSet: Array
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param AppId: 用户AppId。
        # @type AppId: Integer
        # @param LatestBackupTime: 实例最新备份时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestBackupTime: String
        # @param BackupGroupIdSet: 实例的备份组ID列表。
        # @type BackupGroupIdSet: Array
        # @param ModifyTime: 修改时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String

        attr_accessor :AutoBackupPolicyIdSet, :InstanceId, :AppId, :LatestBackupTime, :BackupGroupIdSet, :ModifyTime, :CreateTime, :InstanceName

        def initialize(autobackuppolicyidset=nil, instanceid=nil, appid=nil, latestbackuptime=nil, backupgroupidset=nil, modifytime=nil, createtime=nil, instancename=nil)
          @AutoBackupPolicyIdSet = autobackuppolicyidset
          @InstanceId = instanceid
          @AppId = appid
          @LatestBackupTime = latestbackuptime
          @BackupGroupIdSet = backupgroupidset
          @ModifyTime = modifytime
          @CreateTime = createtime
          @InstanceName = instancename
        end

        def deserialize(params)
          @AutoBackupPolicyIdSet = params['AutoBackupPolicyIdSet']
          @InstanceId = params['InstanceId']
          @AppId = params['AppId']
          @LatestBackupTime = params['LatestBackupTime']
          @BackupGroupIdSet = params['BackupGroupIdSet']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
          @InstanceName = params['InstanceName']
        end
      end

      # 整机备份计划
      class BackupPlan < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AutoBackupPolicyId: 备份策略ID
        # @type AutoBackupPolicyId: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AppId: APP ID
        # @type AppId: Integer
        # @param BackupCount: 备份数量
        # @type BackupCount: Integer
        # @param LastTriggerTime: 上次执行时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTriggerTime: String
        # @param LastTriggerError: 上次执行错误信息，如果为空表示上次执行成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastTriggerError: String

        attr_accessor :InstanceId, :AutoBackupPolicyId, :ModifyTime, :CreateTime, :AppId, :BackupCount, :LastTriggerTime, :LastTriggerError

        def initialize(instanceid=nil, autobackuppolicyid=nil, modifytime=nil, createtime=nil, appid=nil, backupcount=nil, lasttriggertime=nil, lasttriggererror=nil)
          @InstanceId = instanceid
          @AutoBackupPolicyId = autobackuppolicyid
          @ModifyTime = modifytime
          @CreateTime = createtime
          @AppId = appid
          @BackupCount = backupcount
          @LastTriggerTime = lasttriggertime
          @LastTriggerError = lasttriggererror
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AutoBackupPolicyId = params['AutoBackupPolicyId']
          @ModifyTime = params['ModifyTime']
          @CreateTime = params['CreateTime']
          @AppId = params['AppId']
          @BackupCount = params['BackupCount']
          @LastTriggerTime = params['LastTriggerTime']
          @LastTriggerError = params['LastTriggerError']
        end
      end

      # 备份策略概览
      class BackupPolicyOverview < TencentCloud::Common::AbstractModel
        # @param TotalCount: 自动备份策略总数
        # @type TotalCount: Integer
        # @param BoundCount: 已绑定资源的策略数
        # @type BoundCount: Integer
        # @param UnboundCount: 未绑定任何资源的策略数
        # @type UnboundCount: Integer

        attr_accessor :TotalCount, :BoundCount, :UnboundCount

        def initialize(totalcount=nil, boundcount=nil, unboundcount=nil)
          @TotalCount = totalcount
          @BoundCount = boundcount
          @UnboundCount = unboundcount
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @BoundCount = params['BoundCount']
          @UnboundCount = params['UnboundCount']
        end
      end

      # 备份库信息
      class BackupVault < TencentCloud::Common::AbstractModel
        # @param VaultId: 备份库ID
        # @type VaultId: String
        # @param VaultName: 备份库名称
        # @type VaultName: String
        # @param Description: 备份库描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param Status: 备份库状态：READ_WRITE / READ_ONLY / UNAVAILABLE / DELETING
        # @type Status: String
        # @param EncryptType: 加密方式：NONE / SSE-COS / SSE-KMS
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptType: String
        # @param KmsKeyId: KMS密钥ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KmsKeyId: String
        # @param VaultType: 备份库类型：COMMON
        # @type VaultType: String
        # @param BackupPolicySet: 关联的备份策略按类型统计
        # @type BackupPolicySet: Array
        # @param BackupSet: 备份点按类型统计（不含已删除）
        # @type BackupSet: Array
        # @param Region: 地域信息
        # @type Region: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param SourceDataSize: 源端数据量
        # @type SourceDataSize: Integer
        # @param VaultDataSize: 存储库数据量
        # @type VaultDataSize: Integer

        attr_accessor :VaultId, :VaultName, :Description, :Status, :EncryptType, :KmsKeyId, :VaultType, :BackupPolicySet, :BackupSet, :Region, :CreateTime, :SourceDataSize, :VaultDataSize

        def initialize(vaultid=nil, vaultname=nil, description=nil, status=nil, encrypttype=nil, kmskeyid=nil, vaulttype=nil, backuppolicyset=nil, backupset=nil, region=nil, createtime=nil, sourcedatasize=nil, vaultdatasize=nil)
          @VaultId = vaultid
          @VaultName = vaultname
          @Description = description
          @Status = status
          @EncryptType = encrypttype
          @KmsKeyId = kmskeyid
          @VaultType = vaulttype
          @BackupPolicySet = backuppolicyset
          @BackupSet = backupset
          @Region = region
          @CreateTime = createtime
          @SourceDataSize = sourcedatasize
          @VaultDataSize = vaultdatasize
        end

        def deserialize(params)
          @VaultId = params['VaultId']
          @VaultName = params['VaultName']
          @Description = params['Description']
          @Status = params['Status']
          @EncryptType = params['EncryptType']
          @KmsKeyId = params['KmsKeyId']
          @VaultType = params['VaultType']
          unless params['BackupPolicySet'].nil?
            @BackupPolicySet = []
            params['BackupPolicySet'].each do |i|
              typecount_tmp = TypeCount.new
              typecount_tmp.deserialize(i)
              @BackupPolicySet << typecount_tmp
            end
          end
          unless params['BackupSet'].nil?
            @BackupSet = []
            params['BackupSet'].each do |i|
              typecount_tmp = TypeCount.new
              typecount_tmp.deserialize(i)
              @BackupSet << typecount_tmp
            end
          end
          @Region = params['Region']
          @CreateTime = params['CreateTime']
          @SourceDataSize = params['SourceDataSize']
          @VaultDataSize = params['VaultDataSize']
        end
      end

      # 备份库概览
      class BackupVaultOverview < TencentCloud::Common::AbstractModel
        # @param TotalCount: 备份库总数
        # @type TotalCount: Integer
        # @param TotalSizeMb: 备份库总存储量（已用容量），单位 MB
        # @type TotalSizeMb: Integer

        attr_accessor :TotalCount, :TotalSizeMb

        def initialize(totalcount=nil, totalsizemb=nil)
          @TotalCount = totalcount
          @TotalSizeMb = totalsizemb
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalSizeMb = params['TotalSizeMb']
        end
      end

      # 描述了 “基础” 服务相关的信息
      class BasicServicesSettings < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启基础服务。取值范围：TRUE（开启）/FALSE（不开启）。默认取值：TRUE。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # BindAutoBackupPolicy请求参数结构体
      class BindAutoBackupPolicyRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # BindAutoBackupPolicy返回参数结构体
      class BindAutoBackupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # 共同备份点信息
      class CommonBackupPoint < TencentCloud::Common::AbstractModel
        # @param BackupCommonTime: 共同时间点（精确到小时）
        # @type BackupCommonTime: String
        # @param BackupDetailSet: 共同备份点信息
        # @type BackupDetailSet: Array

        attr_accessor :BackupCommonTime, :BackupDetailSet

        def initialize(backupcommontime=nil, backupdetailset=nil)
          @BackupCommonTime = backupcommontime
          @BackupDetailSet = backupdetailset
        end

        def deserialize(params)
          @BackupCommonTime = params['BackupCommonTime']
          unless params['BackupDetailSet'].nil?
            @BackupDetailSet = []
            params['BackupDetailSet'].each do |i|
              backupdetail_tmp = BackupDetail.new
              backupdetail_tmp.deserialize(i)
              @BackupDetailSet << backupdetail_tmp
            end
          end
        end
      end

      # 复制对信息
      class CopyPair < TencentCloud::Common::AbstractModel
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param CopyPairId: 复制对ID（CVM 类型为 cvmcopypair-xxxxxxxx，DISK/CFS 类型为 copypair-xxxxxxxx）
        # @type CopyPairId: String
        # @param CopyPairName: 复制对名称
        # @type CopyPairName: String
        # @param SitePairId: 所属容灾站点对ID
        # @type SitePairId: String
        # @param SitePairName: 所属容灾站点对名称
        # @type SitePairName: String
        # @param ProtectGroupId: 保护组ID
        # @type ProtectGroupId: String
        # @param ProtectGroupName: 保护组名称
        # @type ProtectGroupName: String
        # @param CopyPairState: 复制对状态。可选值：INIT、RUNNING、FULL_COPYING、INC_COPYING、NORMAL、DOWN、DEGRADE 等
        # @type CopyPairState: String
        # @param CopyPairType: 复制对类型。可选值：DISK、INSTANCE、CFS
        # @type CopyPairType: String
        # @param SourceRegion: 生产地域
        # @type SourceRegion: String
        # @param SourceZone: 生产可用区
        # @type SourceZone: String
        # @param SourceVpc: 生产端VPC
        # @type SourceVpc: String
        # @param TargetRegion: 容灾地域
        # @type TargetRegion: String
        # @param TargetZone: 容灾可用区
        # @type TargetZone: String
        # @param TargetVpc: 容灾端VPC
        # @type TargetVpc: String
        # @param SourceResourceId: 生产资源ID。CVM 类型为源 InstanceId（ins-xxx）；DISK 类型为源 DiskId（disk-xxx）；CFS 类型为源 FilesystemId（cfs-xxx）
        # @type SourceResourceId: String
        # @param TargetResourceId: 容灾资源ID。语义同 SourceResourceId（CVM/DISK/CFS）。延迟创建模式且 CVM 未真实创建时为占位符 drp-xxx，CVM 创建后为真实 ins-xxx
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetResourceId: String
        # @param InstanceId: 生产站点盘挂载的实例ID（DISK 类型时为挂载的 CVM ins-xxx；INSTANCE 类型时与 SourceResourceId 一致）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceCopyPairId: 所属CVM复制对ID（仅 DISK 类型且其 CVM 复制对存在时返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCopyPairId: String
        # @param Percent: 复制进度。CVM 类型为所有挂载磁盘进度的平均值；DISK/CFS 类型为本盘进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Percent: Integer
        # @param LatestProtectionTime: 最新保护时间点。当 CopyPairState=FULL_COPYING 时为 null（首次全量未完成）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestProtectionTime: String
        # @param RecoveryPointObjective: RPO（秒）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecoveryPointObjective: Integer
        # @param DataDirection: 数据方向。可选值：POSITIVE（正向）、REVERSE（反向，failover 后）。后端在 REVERSE 时已自动轮转 src/target 字段
        # @type DataDirection: String
        # @param CreateFrom: 创建来源。可选值：LOCAL（本地侧创建）、PEER（对端创建）
        # @type CreateFrom: String
        # @param DisasterRecoveryType: 容灾类型。可选值：CROSS_ZONE（跨可用区）、CROSS_REGION（跨地域）、CROSS_CLOUD（跨云）
        # @type DisasterRecoveryType: String
        # @param PeerCloudName: 对端云名称（仅跨云场景）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerCloudName: String
        # @param Rollbacking: 是否在回滚中（0/1）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rollbacking: Integer
        # @param RollbackPercent: 回滚进度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RollbackPercent: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param AccountUin: 创建账户 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountUin: String
        # @param SubAccountUin: 创建协作者 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param DrillGroupId: 演练组ID（用于演练组内过滤存量复制对，无演练时为 null）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrillGroupId: String
        # @param ProtectionTimeSet: 保护时间点列表（仅当 QueryProtectionTime=true 时返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectionTimeSet: Array
        # @param DiskCopyPairSet: CVM下挂载磁盘的复制对列表（仅 CopyPairType=INSTANCE 时返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskCopyPairSet: Array
        # @param DeferredCreate: 是否为延迟创建模式（创建后固定不变）。仅 CVM 复制对返回
        # @type DeferredCreate: Boolean
        # @param TargetCvmCreated: 目标 CVM 是否已真实创建（首次 failover 完成后置 true）。仅 CVM 复制对返回
        # @type TargetCvmCreated: Boolean
        # @param CvmCreateParams: CVM 创建参数（JSON 字符串）。仅当请求传 QueryCvmCreateParams=true 且复制对处于 deferred_create=1 AND target_cvm_created=0 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CvmCreateParams: String

        attr_accessor :AppId, :CopyPairId, :CopyPairName, :SitePairId, :SitePairName, :ProtectGroupId, :ProtectGroupName, :CopyPairState, :CopyPairType, :SourceRegion, :SourceZone, :SourceVpc, :TargetRegion, :TargetZone, :TargetVpc, :SourceResourceId, :TargetResourceId, :InstanceId, :InstanceCopyPairId, :Percent, :LatestProtectionTime, :RecoveryPointObjective, :DataDirection, :CreateFrom, :DisasterRecoveryType, :PeerCloudName, :Rollbacking, :RollbackPercent, :CreateTime, :AccountUin, :SubAccountUin, :DrillGroupId, :ProtectionTimeSet, :DiskCopyPairSet, :DeferredCreate, :TargetCvmCreated, :CvmCreateParams

        def initialize(appid=nil, copypairid=nil, copypairname=nil, sitepairid=nil, sitepairname=nil, protectgroupid=nil, protectgroupname=nil, copypairstate=nil, copypairtype=nil, sourceregion=nil, sourcezone=nil, sourcevpc=nil, targetregion=nil, targetzone=nil, targetvpc=nil, sourceresourceid=nil, targetresourceid=nil, instanceid=nil, instancecopypairid=nil, percent=nil, latestprotectiontime=nil, recoverypointobjective=nil, datadirection=nil, createfrom=nil, disasterrecoverytype=nil, peercloudname=nil, rollbacking=nil, rollbackpercent=nil, createtime=nil, accountuin=nil, subaccountuin=nil, drillgroupid=nil, protectiontimeset=nil, diskcopypairset=nil, deferredcreate=nil, targetcvmcreated=nil, cvmcreateparams=nil)
          @AppId = appid
          @CopyPairId = copypairid
          @CopyPairName = copypairname
          @SitePairId = sitepairid
          @SitePairName = sitepairname
          @ProtectGroupId = protectgroupid
          @ProtectGroupName = protectgroupname
          @CopyPairState = copypairstate
          @CopyPairType = copypairtype
          @SourceRegion = sourceregion
          @SourceZone = sourcezone
          @SourceVpc = sourcevpc
          @TargetRegion = targetregion
          @TargetZone = targetzone
          @TargetVpc = targetvpc
          @SourceResourceId = sourceresourceid
          @TargetResourceId = targetresourceid
          @InstanceId = instanceid
          @InstanceCopyPairId = instancecopypairid
          @Percent = percent
          @LatestProtectionTime = latestprotectiontime
          @RecoveryPointObjective = recoverypointobjective
          @DataDirection = datadirection
          @CreateFrom = createfrom
          @DisasterRecoveryType = disasterrecoverytype
          @PeerCloudName = peercloudname
          @Rollbacking = rollbacking
          @RollbackPercent = rollbackpercent
          @CreateTime = createtime
          @AccountUin = accountuin
          @SubAccountUin = subaccountuin
          @DrillGroupId = drillgroupid
          @ProtectionTimeSet = protectiontimeset
          @DiskCopyPairSet = diskcopypairset
          @DeferredCreate = deferredcreate
          @TargetCvmCreated = targetcvmcreated
          @CvmCreateParams = cvmcreateparams
        end

        def deserialize(params)
          @AppId = params['AppId']
          @CopyPairId = params['CopyPairId']
          @CopyPairName = params['CopyPairName']
          @SitePairId = params['SitePairId']
          @SitePairName = params['SitePairName']
          @ProtectGroupId = params['ProtectGroupId']
          @ProtectGroupName = params['ProtectGroupName']
          @CopyPairState = params['CopyPairState']
          @CopyPairType = params['CopyPairType']
          @SourceRegion = params['SourceRegion']
          @SourceZone = params['SourceZone']
          @SourceVpc = params['SourceVpc']
          @TargetRegion = params['TargetRegion']
          @TargetZone = params['TargetZone']
          @TargetVpc = params['TargetVpc']
          @SourceResourceId = params['SourceResourceId']
          @TargetResourceId = params['TargetResourceId']
          @InstanceId = params['InstanceId']
          @InstanceCopyPairId = params['InstanceCopyPairId']
          @Percent = params['Percent']
          @LatestProtectionTime = params['LatestProtectionTime']
          @RecoveryPointObjective = params['RecoveryPointObjective']
          @DataDirection = params['DataDirection']
          @CreateFrom = params['CreateFrom']
          @DisasterRecoveryType = params['DisasterRecoveryType']
          @PeerCloudName = params['PeerCloudName']
          @Rollbacking = params['Rollbacking']
          @RollbackPercent = params['RollbackPercent']
          @CreateTime = params['CreateTime']
          @AccountUin = params['AccountUin']
          @SubAccountUin = params['SubAccountUin']
          @DrillGroupId = params['DrillGroupId']
          @ProtectionTimeSet = params['ProtectionTimeSet']
          unless params['DiskCopyPairSet'].nil?
            @DiskCopyPairSet = []
            params['DiskCopyPairSet'].each do |i|
              diskcopypairforcvm_tmp = DiskCopyPairForCvm.new
              diskcopypairforcvm_tmp.deserialize(i)
              @DiskCopyPairSet << diskcopypairforcvm_tmp
            end
          end
          @DeferredCreate = params['DeferredCreate']
          @TargetCvmCreated = params['TargetCvmCreated']
          @CvmCreateParams = params['CvmCreateParams']
        end
      end

      # 复制对操作掩码
      class CopyPairDeniedAction < TencentCloud::Common::AbstractModel
        # @param CopyPairId: 复制对ID
        # @type CopyPairId: String
        # @param DeniedActions: 被禁止的操作列表（Action名称数组）
        # @type DeniedActions: Array

        attr_accessor :CopyPairId, :DeniedActions

        def initialize(copypairid=nil, deniedactions=nil)
          @CopyPairId = copypairid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @CopyPairId = params['CopyPairId']
          unless params['DeniedActions'].nil?
            @DeniedActions = []
            params['DeniedActions'].each do |i|
              deniedaction_tmp = DeniedAction.new
              deniedaction_tmp.deserialize(i)
              @DeniedActions << deniedaction_tmp
            end
          end
        end
      end

      # 复制对价格信息
      class CopyPairPrice < TencentCloud::Common::AbstractModel
        # @param UnitPrice: 后付费每小时原价，单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float
        # @param UnitPriceHigh: 高精度后付费每小时原价，单位：元（字符串形式，避免精度丢失）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceHigh: String
        # @param UnitPriceDiscount: 后付费每小时折扣价，单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Float
        # @param UnitPriceDiscountHigh: 高精度后付费每小时折扣价，单位：元（字符串形式，避免精度丢失）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscountHigh: String
        # @param Discount: 折扣，100 表示无折扣，80 表示 8 折
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Integer
        # @param ChargeUnit: 计价单元，固定为 HOUR（按小时计费）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeUnit: String
        # @param DetailPrices: 计费项目明细列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetailPrices: Array

        attr_accessor :UnitPrice, :UnitPriceHigh, :UnitPriceDiscount, :UnitPriceDiscountHigh, :Discount, :ChargeUnit, :DetailPrices

        def initialize(unitprice=nil, unitpricehigh=nil, unitpricediscount=nil, unitpricediscounthigh=nil, discount=nil, chargeunit=nil, detailprices=nil)
          @UnitPrice = unitprice
          @UnitPriceHigh = unitpricehigh
          @UnitPriceDiscount = unitpricediscount
          @UnitPriceDiscountHigh = unitpricediscounthigh
          @Discount = discount
          @ChargeUnit = chargeunit
          @DetailPrices = detailprices
        end

        def deserialize(params)
          @UnitPrice = params['UnitPrice']
          @UnitPriceHigh = params['UnitPriceHigh']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @UnitPriceDiscountHigh = params['UnitPriceDiscountHigh']
          @Discount = params['Discount']
          @ChargeUnit = params['ChargeUnit']
          unless params['DetailPrices'].nil?
            @DetailPrices = []
            params['DetailPrices'].each do |i|
              copypairpricedetail_tmp = CopyPairPriceDetail.new
              copypairpricedetail_tmp.deserialize(i)
              @DetailPrices << copypairpricedetail_tmp
            end
          end
        end
      end

      # 复制对价格明细项
      class CopyPairPriceDetail < TencentCloud::Common::AbstractModel
        # @param PriceName: 计费项目标识名称。取值：InstanceCount（容灾CVM实例数）、InstanceDataCapacity（容灾CVM实例数据量）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceName: String
        # @param PriceTitle: 计费项目展示名称（跟随语言环境翻译）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PriceTitle: String
        # @param UnitPrice: 该计费项每小时原价，单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float
        # @param UnitPriceDiscount: 该计费项每小时折扣价，单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Float
        # @param Discount: 该计费项的折扣，100 表示无折扣
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Discount: Integer
        # @param ChargeUnit: 计价单元，固定为 HOUR
        # @type ChargeUnit: String

        attr_accessor :PriceName, :PriceTitle, :UnitPrice, :UnitPriceDiscount, :Discount, :ChargeUnit

        def initialize(pricename=nil, pricetitle=nil, unitprice=nil, unitpricediscount=nil, discount=nil, chargeunit=nil)
          @PriceName = pricename
          @PriceTitle = pricetitle
          @UnitPrice = unitprice
          @UnitPriceDiscount = unitpricediscount
          @Discount = discount
          @ChargeUnit = chargeunit
        end

        def deserialize(params)
          @PriceName = params['PriceName']
          @PriceTitle = params['PriceTitle']
          @UnitPrice = params['UnitPrice']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @Discount = params['Discount']
          @ChargeUnit = params['ChargeUnit']
        end
      end

      # CreateAutoBackupPolicy请求参数结构体
      class CreateAutoBackupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Policy: 定期备份的执行策略。
        # @type Policy: Array
        # @param IsPermanent: 通过该定期备份策略创建的备份是否永久保留。false表示非永久保留，true表示永久保留，默认为false。
        # @type IsPermanent: Boolean
        # @param AutoBackupPolicyName: 定期备份策略的名称。
        # @type AutoBackupPolicyName: String
        # @param IsActivated: 是否激活定期备份策略。
        # @type IsActivated: Boolean
        # @param RetentionDays: 通过定期备份策略创建出的备份保留时间。
        # @type RetentionDays: Integer
        # @param RetentionMonths: 该定期备份策略创建的备份可以保留的月数，该参数不可与IsPermanent/RetentionDays参数冲突。
        # @type RetentionMonths: Integer
        # @param RetentionAmount: 通过该定期备份策略最多保留的备份个数，超过该个数限制后自动删除最先创建的备份，该参数不可与IsPermanent参数冲突。
        # @type RetentionAmount: Integer
        # @param StorageType: 备份存储类型。COMMON表示走普通模式（不需要备份库），VAULT表示走备份库（必须关联一个备份库）。默认为COMMON
        # @type StorageType: String
        # @param VaultId: 备份库ID，创建agent备份策略时必须指定。当StorageType为VAULT时必传。
        # @type VaultId: String
        # @param AdvancedRetentionPolicy: 定期备份高级保留策略，该参数不可与IsPermanent参数冲突。
        # @type AdvancedRetentionPolicy: :class:`Tencentcloud::Bdrc.v20260330.models.AdvancedRetentionPolicy`

        attr_accessor :Policy, :IsPermanent, :AutoBackupPolicyName, :IsActivated, :RetentionDays, :RetentionMonths, :RetentionAmount, :StorageType, :VaultId, :AdvancedRetentionPolicy

        def initialize(policy=nil, ispermanent=nil, autobackuppolicyname=nil, isactivated=nil, retentiondays=nil, retentionmonths=nil, retentionamount=nil, storagetype=nil, vaultid=nil, advancedretentionpolicy=nil)
          @Policy = policy
          @IsPermanent = ispermanent
          @AutoBackupPolicyName = autobackuppolicyname
          @IsActivated = isactivated
          @RetentionDays = retentiondays
          @RetentionMonths = retentionmonths
          @RetentionAmount = retentionamount
          @StorageType = storagetype
          @VaultId = vaultid
          @AdvancedRetentionPolicy = advancedretentionpolicy
        end

        def deserialize(params)
          unless params['Policy'].nil?
            @Policy = []
            params['Policy'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @Policy << policy_tmp
            end
          end
          @IsPermanent = params['IsPermanent']
          @AutoBackupPolicyName = params['AutoBackupPolicyName']
          @IsActivated = params['IsActivated']
          @RetentionDays = params['RetentionDays']
          @RetentionMonths = params['RetentionMonths']
          @RetentionAmount = params['RetentionAmount']
          @StorageType = params['StorageType']
          @VaultId = params['VaultId']
          unless params['AdvancedRetentionPolicy'].nil?
            @AdvancedRetentionPolicy = AdvancedRetentionPolicy.new
            @AdvancedRetentionPolicy.deserialize(params['AdvancedRetentionPolicy'])
          end
        end
      end

      # CreateAutoBackupPolicy返回参数结构体
      class CreateAutoBackupPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AutoBackupPolicyId: 定期备份策略ID。
        # @type AutoBackupPolicyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoBackupPolicyId, :RequestId

        def initialize(autobackuppolicyid=nil, requestid=nil)
          @AutoBackupPolicyId = autobackuppolicyid
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoBackupPolicyId = params['AutoBackupPolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBackupGroup请求参数结构体
      class CreateBackupGroupRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 需要创建备份组的云硬盘ID列表。
        # @type DiskIds: Array
        # @param BackupGroupName: 备份组的名称
        # @type BackupGroupName: String
        # @param Deadline: 指定备份组到期时间，如果未传入该参数，默认为永久保留。
        # @type Deadline: String

        attr_accessor :DiskIds, :BackupGroupName, :Deadline

        def initialize(diskids=nil, backupgroupname=nil, deadline=nil)
          @DiskIds = diskids
          @BackupGroupName = backupgroupname
          @Deadline = deadline
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @BackupGroupName = params['BackupGroupName']
          @Deadline = params['Deadline']
        end
      end

      # CreateBackupGroup返回参数结构体
      class CreateBackupGroupResponse < TencentCloud::Common::AbstractModel
        # @param BackupGroupId: 备份组ID。
        # @type BackupGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupGroupId, :RequestId

        def initialize(backupgroupid=nil, requestid=nil)
          @BackupGroupId = backupgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @BackupGroupId = params['BackupGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBackupVault请求参数结构体
      class CreateBackupVaultRequest < TencentCloud::Common::AbstractModel
        # @param VaultName: 备份库名称
        # @type VaultName: String
        # @param Description: 备份库描述
        # @type Description: String
        # @param EncryptType: 加密方式: NONE/SSE-COS/SSE-KMS
        # @type EncryptType: String
        # @param KmsKeyId: KMS密钥ID（SSE-KMS时使用）
        # @type KmsKeyId: String

        attr_accessor :VaultName, :Description, :EncryptType, :KmsKeyId

        def initialize(vaultname=nil, description=nil, encrypttype=nil, kmskeyid=nil)
          @VaultName = vaultname
          @Description = description
          @EncryptType = encrypttype
          @KmsKeyId = kmskeyid
        end

        def deserialize(params)
          @VaultName = params['VaultName']
          @Description = params['Description']
          @EncryptType = params['EncryptType']
          @KmsKeyId = params['KmsKeyId']
        end
      end

      # CreateBackupVault返回参数结构体
      class CreateBackupVaultResponse < TencentCloud::Common::AbstractModel
        # @param VaultId: 备份库唯一ID
        # @type VaultId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VaultId, :RequestId

        def initialize(vaultid=nil, requestid=nil)
          @VaultId = vaultid
          @RequestId = requestid
        end

        def deserialize(params)
          @VaultId = params['VaultId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDisasterRecoveryProtectGroup请求参数结构体
      class CreateDisasterRecoveryProtectGroupRequest < TencentCloud::Common::AbstractModel
        # @param SitePairId: 所属容灾站点对id
        # @type SitePairId: String
        # @param ProtectGroupType: 容灾保护组的产品类型
        # @type ProtectGroupType: String
        # @param RecoveryPointObjective: 容灾保护组预期rpo, 单位分钟（当前仅支持15分钟）
        # @type RecoveryPointObjective: Integer
        # @param ProtectGroupName: 容灾保护组的名称，最大长度不能超60个字符。
        # @type ProtectGroupName: String
        # @param DataDirection: 数据复制方向， ['POSITIVE', 'REVERSE']
        # @type DataDirection: String

        attr_accessor :SitePairId, :ProtectGroupType, :RecoveryPointObjective, :ProtectGroupName, :DataDirection

        def initialize(sitepairid=nil, protectgrouptype=nil, recoverypointobjective=nil, protectgroupname=nil, datadirection=nil)
          @SitePairId = sitepairid
          @ProtectGroupType = protectgrouptype
          @RecoveryPointObjective = recoverypointobjective
          @ProtectGroupName = protectgroupname
          @DataDirection = datadirection
        end

        def deserialize(params)
          @SitePairId = params['SitePairId']
          @ProtectGroupType = params['ProtectGroupType']
          @RecoveryPointObjective = params['RecoveryPointObjective']
          @ProtectGroupName = params['ProtectGroupName']
          @DataDirection = params['DataDirection']
        end
      end

      # CreateDisasterRecoveryProtectGroup返回参数结构体
      class CreateDisasterRecoveryProtectGroupResponse < TencentCloud::Common::AbstractModel
        # @param ProtectGroupId: 创建的容灾保护组ID
        # @type ProtectGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProtectGroupId, :RequestId

        def initialize(protectgroupid=nil, requestid=nil)
          @ProtectGroupId = protectgroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProtectGroupId = params['ProtectGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDisasterRecoverySitePair请求参数结构体
      class CreateDisasterRecoverySitePairRequest < TencentCloud::Common::AbstractModel
        # @param DisasterRecoveryType: 容灾策略的容灾类型，跨地域：CROSS_REGION，或跨可用区：CROSS_ZONE
        # @type DisasterRecoveryType: String
        # @param SourceRegion: 生产站点地域
        # @type SourceRegion: String
        # @param SourceZone: 容灾策略生产站点可用区
        # @type SourceZone: String
        # @param TargetRegion: 容灾站点地域
        # @type TargetRegion: String
        # @param TargetZone: 容灾策略容灾站点可用区
        # @type TargetZone: String
        # @param SourceVpc: 容灾策略生产vpc
        # @type SourceVpc: String
        # @param TargetVpc: 容灾策略容灾vpc
        # @type TargetVpc: String
        # @param SitePairProductType: 容灾策略所属产品类型，包括DISK、CFS、INSTANCE
        # @type SitePairProductType: String
        # @param SitePairName: 容灾策略的名称，最大长度为60个字符。
        # @type SitePairName: String
        # @param CopyType: 容灾策略复制技术SYN/ASY
        # @type CopyType: String

        attr_accessor :DisasterRecoveryType, :SourceRegion, :SourceZone, :TargetRegion, :TargetZone, :SourceVpc, :TargetVpc, :SitePairProductType, :SitePairName, :CopyType

        def initialize(disasterrecoverytype=nil, sourceregion=nil, sourcezone=nil, targetregion=nil, targetzone=nil, sourcevpc=nil, targetvpc=nil, sitepairproducttype=nil, sitepairname=nil, copytype=nil)
          @DisasterRecoveryType = disasterrecoverytype
          @SourceRegion = sourceregion
          @SourceZone = sourcezone
          @TargetRegion = targetregion
          @TargetZone = targetzone
          @SourceVpc = sourcevpc
          @TargetVpc = targetvpc
          @SitePairProductType = sitepairproducttype
          @SitePairName = sitepairname
          @CopyType = copytype
        end

        def deserialize(params)
          @DisasterRecoveryType = params['DisasterRecoveryType']
          @SourceRegion = params['SourceRegion']
          @SourceZone = params['SourceZone']
          @TargetRegion = params['TargetRegion']
          @TargetZone = params['TargetZone']
          @SourceVpc = params['SourceVpc']
          @TargetVpc = params['TargetVpc']
          @SitePairProductType = params['SitePairProductType']
          @SitePairName = params['SitePairName']
          @CopyType = params['CopyType']
        end
      end

      # CreateDisasterRecoverySitePair返回参数结构体
      class CreateDisasterRecoverySitePairResponse < TencentCloud::Common::AbstractModel
        # @param SitePairId: 容灾站点对ID
        # @type SitePairId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SitePairId, :RequestId

        def initialize(sitepairid=nil, requestid=nil)
          @SitePairId = sitepairid
          @RequestId = requestid
        end

        def deserialize(params)
          @SitePairId = params['SitePairId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDisasterRecoveryVpcMapping请求参数结构体
      class CreateDisasterRecoveryVpcMappingRequest < TencentCloud::Common::AbstractModel
        # @param SourceVpcId: 源端VPC ID
        # @type SourceVpcId: String
        # @param SourceSubnetId: 源端子网ID
        # @type SourceSubnetId: String
        # @param TargetVpcId: 目标端VPC ID
        # @type TargetVpcId: String
        # @param TargetSubnetId: 目标端子网ID
        # @type TargetSubnetId: String
        # @param SitePairId: 站点对ID
        # @type SitePairId: String

        attr_accessor :SourceVpcId, :SourceSubnetId, :TargetVpcId, :TargetSubnetId, :SitePairId

        def initialize(sourcevpcid=nil, sourcesubnetid=nil, targetvpcid=nil, targetsubnetid=nil, sitepairid=nil)
          @SourceVpcId = sourcevpcid
          @SourceSubnetId = sourcesubnetid
          @TargetVpcId = targetvpcid
          @TargetSubnetId = targetsubnetid
          @SitePairId = sitepairid
        end

        def deserialize(params)
          @SourceVpcId = params['SourceVpcId']
          @SourceSubnetId = params['SourceSubnetId']
          @TargetVpcId = params['TargetVpcId']
          @TargetSubnetId = params['TargetSubnetId']
          @SitePairId = params['SitePairId']
        end
      end

      # CreateDisasterRecoveryVpcMapping返回参数结构体
      class CreateDisasterRecoveryVpcMappingResponse < TencentCloud::Common::AbstractModel
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

      # CreateFileBackupPlan请求参数结构体
      class CreateFileBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 备份策略ID
        # @type PolicyId: String
        # @param BackupStorageId: 备份库ID
        # @type BackupStorageId: String
        # @param PlanName: 计划名称
        # @type PlanName: String
        # @param Resources: 实例配置列表，[1,20]
        # @type Resources: Array

        attr_accessor :PolicyId, :BackupStorageId, :PlanName, :Resources

        def initialize(policyid=nil, backupstorageid=nil, planname=nil, resources=nil)
          @PolicyId = policyid
          @BackupStorageId = backupstorageid
          @PlanName = planname
          @Resources = resources
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @BackupStorageId = params['BackupStorageId']
          @PlanName = params['PlanName']
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resourceplan_tmp = ResourcePlan.new
              resourceplan_tmp.deserialize(i)
              @Resources << resourceplan_tmp
            end
          end
        end
      end

      # CreateFileBackupPlan返回参数结构体
      class CreateFileBackupPlanResponse < TencentCloud::Common::AbstractModel
        # @param PlanIds: 备份计划 ID 列表
        # @type PlanIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlanIds, :RequestId

        def initialize(planids=nil, requestid=nil)
          @PlanIds = planids
          @RequestId = requestid
        end

        def deserialize(params)
          @PlanIds = params['PlanIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateFileBackup请求参数结构体
      class CreateFileBackupRequest < TencentCloud::Common::AbstractModel
        # @param ResourceId: 资源ID列表
        # @type ResourceId: String
        # @param PlanId: 计划ID
        # @type PlanId: String
        # @param BackupPaths: 备份路径列表，1~20 个
        # @type BackupPaths: Array
        # @param IncludeFileTypes: 包含文件类型，0~20 个
        # @type IncludeFileTypes: Array
        # @param ExcludePatterns: 排除文件路径列表，0~20 个
        # @type ExcludePatterns: Array
        # @param ExcludeSystemDirectories: 是否排除系统目录
        # @type ExcludeSystemDirectories: Boolean
        # @param BackupStorageId: 备份库ID
        # @type BackupStorageId: String
        # @param Deadline: 备份到期时间
        # @type Deadline: String
        # @param BackupName: 备份名称
        # @type BackupName: String

        attr_accessor :ResourceId, :PlanId, :BackupPaths, :IncludeFileTypes, :ExcludePatterns, :ExcludeSystemDirectories, :BackupStorageId, :Deadline, :BackupName

        def initialize(resourceid=nil, planid=nil, backuppaths=nil, includefiletypes=nil, excludepatterns=nil, excludesystemdirectories=nil, backupstorageid=nil, deadline=nil, backupname=nil)
          @ResourceId = resourceid
          @PlanId = planid
          @BackupPaths = backuppaths
          @IncludeFileTypes = includefiletypes
          @ExcludePatterns = excludepatterns
          @ExcludeSystemDirectories = excludesystemdirectories
          @BackupStorageId = backupstorageid
          @Deadline = deadline
          @BackupName = backupname
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @PlanId = params['PlanId']
          @BackupPaths = params['BackupPaths']
          @IncludeFileTypes = params['IncludeFileTypes']
          @ExcludePatterns = params['ExcludePatterns']
          @ExcludeSystemDirectories = params['ExcludeSystemDirectories']
          @BackupStorageId = params['BackupStorageId']
          @Deadline = params['Deadline']
          @BackupName = params['BackupName']
        end
      end

      # CreateFileBackup返回参数结构体
      class CreateFileBackupResponse < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份Id
        # @type BackupId: String
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

      # CreateFileRestoreTask请求参数结构体
      class CreateFileRestoreTaskRequest < TencentCloud::Common::AbstractModel
        # @param ConflictStrategy: 冲突处理策略：skip-跳过/"         "overwrite-覆盖/newer-保留较新的版本/"         "if_changed-内容变化时覆盖，默认overwrite
        # @type ConflictStrategy: String

        attr_accessor :ConflictStrategy

        def initialize(conflictstrategy=nil)
          @ConflictStrategy = conflictstrategy
        end

        def deserialize(params)
          @ConflictStrategy = params['ConflictStrategy']
        end
      end

      # CreateFileRestoreTask返回参数结构体
      class CreateFileRestoreTaskResponse < TencentCloud::Common::AbstractModel
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

      # CreateInstanceCopyPair请求参数结构体
      class CreateInstanceCopyPairRequest < TencentCloud::Common::AbstractModel
        # @param ProtectGroupId: 所属保护组
        # @type ProtectGroupId: String
        # @param CreateTargetInstanceParameters: 目标端CVM创建参数列表（1~10 个）
        # @type CreateTargetInstanceParameters: Array
        # @param InstanceCopyPairName: 复制对名称，不传则新名称为"未命名"
        # @type InstanceCopyPairName: String
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性
        # @type ClientToken: String
        # @param RecoveryPointObjective: 用户期望的RPO，单位分钟，目前仅支持15分钟
        # @type RecoveryPointObjective: Integer

        attr_accessor :ProtectGroupId, :CreateTargetInstanceParameters, :InstanceCopyPairName, :ClientToken, :RecoveryPointObjective

        def initialize(protectgroupid=nil, createtargetinstanceparameters=nil, instancecopypairname=nil, clienttoken=nil, recoverypointobjective=nil)
          @ProtectGroupId = protectgroupid
          @CreateTargetInstanceParameters = createtargetinstanceparameters
          @InstanceCopyPairName = instancecopypairname
          @ClientToken = clienttoken
          @RecoveryPointObjective = recoverypointobjective
        end

        def deserialize(params)
          @ProtectGroupId = params['ProtectGroupId']
          unless params['CreateTargetInstanceParameters'].nil?
            @CreateTargetInstanceParameters = []
            params['CreateTargetInstanceParameters'].each do |i|
              createinstancemodel_tmp = CreateInstanceModel.new
              createinstancemodel_tmp.deserialize(i)
              @CreateTargetInstanceParameters << createinstancemodel_tmp
            end
          end
          @InstanceCopyPairName = params['InstanceCopyPairName']
          @ClientToken = params['ClientToken']
          @RecoveryPointObjective = params['RecoveryPointObjective']
        end
      end

      # CreateInstanceCopyPair返回参数结构体
      class CreateInstanceCopyPairResponse < TencentCloud::Common::AbstractModel
        # @param CopyPairIds: 创建的CVM复制对ID列表
        # @type CopyPairIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CopyPairIds, :RequestId

        def initialize(copypairids=nil, requestid=nil)
          @CopyPairIds = copypairids
          @RequestId = requestid
        end

        def deserialize(params)
          @CopyPairIds = params['CopyPairIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateInstanceDrillPairs请求参数结构体
      class CreateInstanceDrillPairsRequest < TencentCloud::Common::AbstractModel
        # @param ProtectGroupId: 所属容灾保护组
        # @type ProtectGroupId: String
        # @param DrillPairGroupVpc: 演练组vpc
        # @type DrillPairGroupVpc: String
        # @param DrillPairGroupName: 文件系统复制对名称,不传则新名称为“未命名”
        # @type DrillPairGroupName: String
        # @param CreationToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性
        # @type CreationToken: String
        # @param DrillPairGroupId: 指定创建入哪个演练组
        # @type DrillPairGroupId: String
        # @param CreateTargetInstanceParameters: 创建目标演练实例的参数列表
        # @type CreateTargetInstanceParameters: Array

        attr_accessor :ProtectGroupId, :DrillPairGroupVpc, :DrillPairGroupName, :CreationToken, :DrillPairGroupId, :CreateTargetInstanceParameters

        def initialize(protectgroupid=nil, drillpairgroupvpc=nil, drillpairgroupname=nil, creationtoken=nil, drillpairgroupid=nil, createtargetinstanceparameters=nil)
          @ProtectGroupId = protectgroupid
          @DrillPairGroupVpc = drillpairgroupvpc
          @DrillPairGroupName = drillpairgroupname
          @CreationToken = creationtoken
          @DrillPairGroupId = drillpairgroupid
          @CreateTargetInstanceParameters = createtargetinstanceparameters
        end

        def deserialize(params)
          @ProtectGroupId = params['ProtectGroupId']
          @DrillPairGroupVpc = params['DrillPairGroupVpc']
          @DrillPairGroupName = params['DrillPairGroupName']
          @CreationToken = params['CreationToken']
          @DrillPairGroupId = params['DrillPairGroupId']
          unless params['CreateTargetInstanceParameters'].nil?
            @CreateTargetInstanceParameters = []
            params['CreateTargetInstanceParameters'].each do |i|
              createinstancemodel_tmp = CreateInstanceModel.new
              createinstancemodel_tmp.deserialize(i)
              @CreateTargetInstanceParameters << createinstancemodel_tmp
            end
          end
        end
      end

      # CreateInstanceDrillPairs返回参数结构体
      class CreateInstanceDrillPairsResponse < TencentCloud::Common::AbstractModel
        # @param DrillPairIds: 演练对ID列表
        # @type DrillPairIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DrillPairIds, :RequestId

        def initialize(drillpairids=nil, requestid=nil)
          @DrillPairIds = drillpairids
          @RequestId = requestid
        end

        def deserialize(params)
          @DrillPairIds = params['DrillPairIds']
          @RequestId = params['RequestId']
        end
      end

      # 创建cvm参数
      class CreateInstanceModel < TencentCloud::Common::AbstractModel
        # @param SourceInstanceId: 源CVM ID
        # @type SourceInstanceId: String
        # @param InstanceChargeType: 实例计费模式
        # @type InstanceChargeType: String
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目等属性。
        # @type Placement: :class:`Tencentcloud::Bdrc.v20260330.models.Placement`
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param SystemDisk: 指定系统盘规格
        # @type SystemDisk: :class:`Tencentcloud::Bdrc.v20260330.models.DiskModel`
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Bdrc.v20260330.models.InstanceChargePrepaid`
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param DataDisks: 指定数据盘规格列表
        # @type DataDisks: Array
        # @param VirtualPrivateCloud: 私有网络相关信息配置
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Bdrc.v20260330.models.VirtualPrivateCloud`
        # @param InternetAccessible: 公网带宽相关信息设置
        # @type InternetAccessible: :class:`Tencentcloud::Bdrc.v20260330.models.InternetAccessible`
        # @param InstanceName: 实例显示名称。不传则新实例名为"未命名"。最大长度不能超60个字节。
        # @type InstanceName: String
        # @param LoginSettings: 实例登录设置
        # @type LoginSettings: :class:`Tencentcloud::Bdrc.v20260330.models.LoginSettings`
        # @param EnhancedService: 增强服务配置
        # @type EnhancedService: :class:`Tencentcloud::Bdrc.v20260330.models.EnhancedService`
        # @param SpotPrice: 竞价实例最高出价
        # @type SpotPrice: String
        # @param HostName: 实例主机名
        # @type HostName: String
        # @param UserData: 提供给实例使用的用户数据
        # @type UserData: String
        # @param DisasterRecoverGroupIds: 放置群组ID
        # @type DisasterRecoverGroupIds: Array
        # @param StoppedMode: 关机计费模式，默认关机收费（KEEP_CHARGING / STOP_CHARGING），仅 CreateInstanceCopyPair 场景生效
        # @type StoppedMode: String
        # @param CopyPairId: 容灾演练使用的复制对ID，仅 CreateInstanceDrillPairs 场景生效
        # @type CopyPairId: String
        # @param RecoveryTime: 容灾演练的恢复时间点，仅 CreateInstanceDrillPairs 场景生效
        # @type RecoveryTime: String

        attr_accessor :SourceInstanceId, :InstanceChargeType, :Placement, :ImageId, :SystemDisk, :InstanceChargePrepaid, :InstanceType, :DataDisks, :VirtualPrivateCloud, :InternetAccessible, :InstanceName, :LoginSettings, :EnhancedService, :SpotPrice, :HostName, :UserData, :DisasterRecoverGroupIds, :StoppedMode, :CopyPairId, :RecoveryTime

        def initialize(sourceinstanceid=nil, instancechargetype=nil, placement=nil, imageid=nil, systemdisk=nil, instancechargeprepaid=nil, instancetype=nil, datadisks=nil, virtualprivatecloud=nil, internetaccessible=nil, instancename=nil, loginsettings=nil, enhancedservice=nil, spotprice=nil, hostname=nil, userdata=nil, disasterrecovergroupids=nil, stoppedmode=nil, copypairid=nil, recoverytime=nil)
          @SourceInstanceId = sourceinstanceid
          @InstanceChargeType = instancechargetype
          @Placement = placement
          @ImageId = imageid
          @SystemDisk = systemdisk
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceType = instancetype
          @DataDisks = datadisks
          @VirtualPrivateCloud = virtualprivatecloud
          @InternetAccessible = internetaccessible
          @InstanceName = instancename
          @LoginSettings = loginsettings
          @EnhancedService = enhancedservice
          @SpotPrice = spotprice
          @HostName = hostname
          @UserData = userdata
          @DisasterRecoverGroupIds = disasterrecovergroupids
          @StoppedMode = stoppedmode
          @CopyPairId = copypairid
          @RecoveryTime = recoverytime
        end

        def deserialize(params)
          @SourceInstanceId = params['SourceInstanceId']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @ImageId = params['ImageId']
          unless params['SystemDisk'].nil?
            @SystemDisk = DiskModel.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceType = params['InstanceType']
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              diskmodel_tmp = DiskModel.new
              diskmodel_tmp.deserialize(i)
              @DataDisks << diskmodel_tmp
            end
          end
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @InstanceName = params['InstanceName']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @SpotPrice = params['SpotPrice']
          @HostName = params['HostName']
          @UserData = params['UserData']
          @DisasterRecoverGroupIds = params['DisasterRecoverGroupIds']
          @StoppedMode = params['StoppedMode']
          @CopyPairId = params['CopyPairId']
          @RecoveryTime = params['RecoveryTime']
        end
      end

      # CreateSecurityGroupMapping请求参数结构体
      class CreateSecurityGroupMappingRequest < TencentCloud::Common::AbstractModel
        # @param SrcSecurityGroupId: 生产端实例绑定的安全组ID
        # @type SrcSecurityGroupId: String
        # @param TargetSecurityGroupId: 容灾端实例绑定的安全组ID
        # @type TargetSecurityGroupId: String
        # @param SitePairId: 安全组映射所属的站点对ID。
        # @type SitePairId: String

        attr_accessor :SrcSecurityGroupId, :TargetSecurityGroupId, :SitePairId

        def initialize(srcsecuritygroupid=nil, targetsecuritygroupid=nil, sitepairid=nil)
          @SrcSecurityGroupId = srcsecuritygroupid
          @TargetSecurityGroupId = targetsecuritygroupid
          @SitePairId = sitepairid
        end

        def deserialize(params)
          @SrcSecurityGroupId = params['SrcSecurityGroupId']
          @TargetSecurityGroupId = params['TargetSecurityGroupId']
          @SitePairId = params['SitePairId']
        end
      end

      # CreateSecurityGroupMapping返回参数结构体
      class CreateSecurityGroupMappingResponse < TencentCloud::Common::AbstractModel
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

      # 跨云信息
      class CrossCloudDetails < TencentCloud::Common::AbstractModel
        # @param SourceCloudName: 源端云名称（跨云对端云名称）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceCloudName: String
        # @param TargetCloudName: 目标端云名称（跨云本端云名称）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetCloudName: String
        # @param SourceAppId: 源端云AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceAppId: Integer
        # @param SourceUin: 源端云主账号 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceUin: String
        # @param SourceSubAccountUin: 源端云子账号 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceSubAccountUin: String
        # @param SourceUserName: 源端云用户名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceUserName: String
        # @param TargetAppId: 目标端云AppId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetAppId: Integer
        # @param TargetUin: 目标端云主账号 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetUin: String
        # @param TargetSubAccountUin: 目标端云子账号 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetSubAccountUin: String
        # @param PeerRegionName: 对端云的地域显示名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerRegionName: String
        # @param PeerZoneName: 对端云的可用区显示名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerZoneName: String
        # @param PeerVpcName: 对端云的VPC显示名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerVpcName: String

        attr_accessor :SourceCloudName, :TargetCloudName, :SourceAppId, :SourceUin, :SourceSubAccountUin, :SourceUserName, :TargetAppId, :TargetUin, :TargetSubAccountUin, :PeerRegionName, :PeerZoneName, :PeerVpcName

        def initialize(sourcecloudname=nil, targetcloudname=nil, sourceappid=nil, sourceuin=nil, sourcesubaccountuin=nil, sourceusername=nil, targetappid=nil, targetuin=nil, targetsubaccountuin=nil, peerregionname=nil, peerzonename=nil, peervpcname=nil)
          @SourceCloudName = sourcecloudname
          @TargetCloudName = targetcloudname
          @SourceAppId = sourceappid
          @SourceUin = sourceuin
          @SourceSubAccountUin = sourcesubaccountuin
          @SourceUserName = sourceusername
          @TargetAppId = targetappid
          @TargetUin = targetuin
          @TargetSubAccountUin = targetsubaccountuin
          @PeerRegionName = peerregionname
          @PeerZoneName = peerzonename
          @PeerVpcName = peervpcname
        end

        def deserialize(params)
          @SourceCloudName = params['SourceCloudName']
          @TargetCloudName = params['TargetCloudName']
          @SourceAppId = params['SourceAppId']
          @SourceUin = params['SourceUin']
          @SourceSubAccountUin = params['SourceSubAccountUin']
          @SourceUserName = params['SourceUserName']
          @TargetAppId = params['TargetAppId']
          @TargetUin = params['TargetUin']
          @TargetSubAccountUin = params['TargetSubAccountUin']
          @PeerRegionName = params['PeerRegionName']
          @PeerZoneName = params['PeerZoneName']
          @PeerVpcName = params['PeerVpcName']
        end
      end

      # DeleteAutoBackupPolicies请求参数结构体
      class DeleteAutoBackupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param AutoBackupPolicyIds: 备份策略 ID 列表
        # @type AutoBackupPolicyIds: Array

        attr_accessor :AutoBackupPolicyIds

        def initialize(autobackuppolicyids=nil)
          @AutoBackupPolicyIds = autobackuppolicyids
        end

        def deserialize(params)
          @AutoBackupPolicyIds = params['AutoBackupPolicyIds']
        end
      end

      # DeleteAutoBackupPolicies返回参数结构体
      class DeleteAutoBackupPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBackupGroups请求参数结构体
      class DeleteBackupGroupsRequest < TencentCloud::Common::AbstractModel
        # @param BackupGroupIds: 备份组ID列表。
        # @type BackupGroupIds: Array

        attr_accessor :BackupGroupIds

        def initialize(backupgroupids=nil)
          @BackupGroupIds = backupgroupids
        end

        def deserialize(params)
          @BackupGroupIds = params['BackupGroupIds']
        end
      end

      # DeleteBackupGroups返回参数结构体
      class DeleteBackupGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBackupVaults请求参数结构体
      class DeleteBackupVaultsRequest < TencentCloud::Common::AbstractModel
        # @param VaultIds: 备份库 ID 列表
        # @type VaultIds: Array

        attr_accessor :VaultIds

        def initialize(vaultids=nil)
          @VaultIds = vaultids
        end

        def deserialize(params)
          @VaultIds = params['VaultIds']
        end
      end

      # DeleteBackupVaults返回参数结构体
      class DeleteBackupVaultsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCopyPairs请求参数结构体
      class DeleteCopyPairsRequest < TencentCloud::Common::AbstractModel
        # @param CopyPairIds: 要删除的复制对ID列表（长度 1~10）
        # @type CopyPairIds: Array
        # @param CopyPairType: 要删除复制对的类型，可选值：DISK、INSTANCE、CFS
        # @type CopyPairType: String
        # @param DeleteTargetResource: 是否一并删除容灾站点云盘，默认 true（容灾盘数据可能处于中间状态，保留也无法正常使用）
        # @type DeleteTargetResource: Boolean

        attr_accessor :CopyPairIds, :CopyPairType, :DeleteTargetResource

        def initialize(copypairids=nil, copypairtype=nil, deletetargetresource=nil)
          @CopyPairIds = copypairids
          @CopyPairType = copypairtype
          @DeleteTargetResource = deletetargetresource
        end

        def deserialize(params)
          @CopyPairIds = params['CopyPairIds']
          @CopyPairType = params['CopyPairType']
          @DeleteTargetResource = params['DeleteTargetResource']
        end
      end

      # DeleteCopyPairs返回参数结构体
      class DeleteCopyPairsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDisasterRecoveryProtectGroups请求参数结构体
      class DeleteDisasterRecoveryProtectGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProtectGroups: 删除容灾保护组ID列表，最多10个
        # @type ProtectGroups: Array

        attr_accessor :ProtectGroups

        def initialize(protectgroups=nil)
          @ProtectGroups = protectgroups
        end

        def deserialize(params)
          @ProtectGroups = params['ProtectGroups']
        end
      end

      # DeleteDisasterRecoveryProtectGroups返回参数结构体
      class DeleteDisasterRecoveryProtectGroupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDisasterRecoverySitePairs请求参数结构体
      class DeleteDisasterRecoverySitePairsRequest < TencentCloud::Common::AbstractModel
        # @param SitePairIds: 删除容灾策略ID列表
        # @type SitePairIds: Array

        attr_accessor :SitePairIds

        def initialize(sitepairids=nil)
          @SitePairIds = sitepairids
        end

        def deserialize(params)
          @SitePairIds = params['SitePairIds']
        end
      end

      # DeleteDisasterRecoverySitePairs返回参数结构体
      class DeleteDisasterRecoverySitePairsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDisasterRecoveryVpcMapping请求参数结构体
      class DeleteDisasterRecoveryVpcMappingRequest < TencentCloud::Common::AbstractModel
        # @param VpcMappingIds: 删除容灾vpc映射主键id列表
        # @type VpcMappingIds: Array

        attr_accessor :VpcMappingIds

        def initialize(vpcmappingids=nil)
          @VpcMappingIds = vpcmappingids
        end

        def deserialize(params)
          @VpcMappingIds = params['VpcMappingIds']
        end
      end

      # DeleteDisasterRecoveryVpcMapping返回参数结构体
      class DeleteDisasterRecoveryVpcMappingResponse < TencentCloud::Common::AbstractModel
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

      # 删除演练对结果
      class DeleteDrillPairResult < TencentCloud::Common::AbstractModel
        # @param DrillPairId: 演练对ID。
        # @type DrillPairId: String
        # @param Code: 删除结果码。成功为 Success，失败为对应错误码（如 InternalError.ComponentError）。
        # @type Code: String
        # @param Message: 删除结果描述信息，成功时为空串。
        # @type Message: String

        attr_accessor :DrillPairId, :Code, :Message

        def initialize(drillpairid=nil, code=nil, message=nil)
          @DrillPairId = drillpairid
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @DrillPairId = params['DrillPairId']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # DeleteDrillPairs请求参数结构体
      class DeleteDrillPairsRequest < TencentCloud::Common::AbstractModel
        # @param DrillPairType: 要删除演练对的类型，其类型枚举跟复制对保持一致。枚举值：DISK / INSTANCE / CFS。
        # @type DrillPairType: String
        # @param DrillPairIds: 要删除的演练对列表。长度范围 [1, 10]。
        # @type DrillPairIds: Array
        # @param DrillGroupIds: 要删除的演练组id列表。
        # @type DrillGroupIds: Array
        # @param DeleteDrillResource: 是否一并删除演练CFS/CVM/DISK演练资源。
        # @type DeleteDrillResource: Boolean

        attr_accessor :DrillPairType, :DrillPairIds, :DrillGroupIds, :DeleteDrillResource

        def initialize(drillpairtype=nil, drillpairids=nil, drillgroupids=nil, deletedrillresource=nil)
          @DrillPairType = drillpairtype
          @DrillPairIds = drillpairids
          @DrillGroupIds = drillgroupids
          @DeleteDrillResource = deletedrillresource
        end

        def deserialize(params)
          @DrillPairType = params['DrillPairType']
          @DrillPairIds = params['DrillPairIds']
          @DrillGroupIds = params['DrillGroupIds']
          @DeleteDrillResource = params['DeleteDrillResource']
        end
      end

      # DeleteDrillPairs返回参数结构体
      class DeleteDrillPairsResponse < TencentCloud::Common::AbstractModel
        # @param DeleteDrillPairResultSet: 删除演练对的逐条结果列表。
        # @type DeleteDrillPairResultSet: Array
        # @param DeleteDrillPairGroupSet: 成功标记为删除的演练组ID列表。
        # @type DeleteDrillPairGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteDrillPairResultSet, :DeleteDrillPairGroupSet, :RequestId

        def initialize(deletedrillpairresultset=nil, deletedrillpairgroupset=nil, requestid=nil)
          @DeleteDrillPairResultSet = deletedrillpairresultset
          @DeleteDrillPairGroupSet = deletedrillpairgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeleteDrillPairResultSet'].nil?
            @DeleteDrillPairResultSet = []
            params['DeleteDrillPairResultSet'].each do |i|
              deletedrillpairresult_tmp = DeleteDrillPairResult.new
              deletedrillpairresult_tmp.deserialize(i)
              @DeleteDrillPairResultSet << deletedrillpairresult_tmp
            end
          end
          @DeleteDrillPairGroupSet = params['DeleteDrillPairGroupSet']
          @RequestId = params['RequestId']
        end
      end

      # DeleteFileBackupPlans请求参数结构体
      class DeleteFileBackupPlansRequest < TencentCloud::Common::AbstractModel
        # @param PlanIds: 备份点 ID 列表
        # @type PlanIds: Array

        attr_accessor :PlanIds

        def initialize(planids=nil)
          @PlanIds = planids
        end

        def deserialize(params)
          @PlanIds = params['PlanIds']
        end
      end

      # DeleteFileBackupPlans返回参数结构体
      class DeleteFileBackupPlansResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFileBackups请求参数结构体
      class DeleteFileBackupsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DeleteFileBackups返回参数结构体
      class DeleteFileBackupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityGroupMapping请求参数结构体
      class DeleteSecurityGroupMappingRequest < TencentCloud::Common::AbstractModel
        # @param SitePairId: 要删除安全组映射所属的站点对ID
        # @type SitePairId: String
        # @param SecurityGroupMappingIds: 要删除的安全组映射ID列表
        # @type SecurityGroupMappingIds: Array

        attr_accessor :SitePairId, :SecurityGroupMappingIds

        def initialize(sitepairid=nil, securitygroupmappingids=nil)
          @SitePairId = sitepairid
          @SecurityGroupMappingIds = securitygroupmappingids
        end

        def deserialize(params)
          @SitePairId = params['SitePairId']
          @SecurityGroupMappingIds = params['SecurityGroupMappingIds']
        end
      end

      # DeleteSecurityGroupMapping返回参数结构体
      class DeleteSecurityGroupMappingResponse < TencentCloud::Common::AbstractModel
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

      # 备份不能执行的接口。
      class DeniedAction < TencentCloud::Common::AbstractModel
        # @param Action: 不能操作的接口名。
        # @type Action: String
        # @param Message: 接口不能操作的原因。
        # @type Message: String
        # @param Code: 接口不能操作对应提示的错误码。
        # @type Code: String

        attr_accessor :Action, :Message, :Code

        def initialize(action=nil, message=nil, code=nil)
          @Action = action
          @Message = message
          @Code = code
        end

        def deserialize(params)
          @Action = params['Action']
          @Message = params['Message']
          @Code = params['Code']
        end
      end

      # DescribeAutoBackupPolicies请求参数结构体
      class DescribeAutoBackupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。支持以下过滤条件：\n"              "auto-backup-policy-id - 定期快照策略ID，如asp-xxx。\n"              "auto-backup-policy-state - 定期快照策略状态。\n"              "auto-backup-policy-name - 定期快照策略名称，支持模糊匹配。\n"              "tag - 按标签键值对过滤，需包含Key和/或Value。\n"              "tag-key - 按标签键过滤。\n"              "tag-value - 按标签值过滤。\n"              "tag:tag-key - 按指定标签键的标签值过滤。\n"              "vault-id - 备份库ID过滤。\n"              "storage-type - 存储类型过滤"              "（COMMON：普通模式，VAULT：备份库模式）。
        # @type Filters: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大1000
        # @type Limit: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param OrderField: 排序字段
        # @type OrderField: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeAutoBackupPolicies返回参数结构体
      class DescribeAutoBackupPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总数量。
        # @type TotalCount: Integer
        # @param AutoBackupPolicySet: 备份策略列表详情。
        # @type AutoBackupPolicySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AutoBackupPolicySet, :RequestId

        def initialize(totalcount=nil, autobackuppolicyset=nil, requestid=nil)
          @TotalCount = totalcount
          @AutoBackupPolicySet = autobackuppolicyset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AutoBackupPolicySet'].nil?
            @AutoBackupPolicySet = []
            params['AutoBackupPolicySet'].each do |i|
              autobackuppolicy_tmp = AutoBackupPolicy.new
              autobackuppolicy_tmp.deserialize(i)
              @AutoBackupPolicySet << autobackuppolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupGroupRollbackTasks请求参数结构体
      class DescribeBackupGroupRollbackTasksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，支持恢复任务ID（task-id）、备份组ID（backup-group-id）、源实例ID（source-instance-id）、目标实例ID（target-instance-id）、恢复状态（status）和回滚类型（rollback-type）过滤
        # @type Filters: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大1000
        # @type Limit: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param OrderField: 排序字段
        # @type OrderField: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeBackupGroupRollbackTasks返回参数结构体
      class DescribeBackupGroupRollbackTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总数量。
        # @type TotalCount: Integer
        # @param RollbackTaskSet: 备份组恢复详情。
        # @type RollbackTaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RollbackTaskSet, :RequestId

        def initialize(totalcount=nil, rollbacktaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @RollbackTaskSet = rollbacktaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RollbackTaskSet'].nil?
            @RollbackTaskSet = []
            params['RollbackTaskSet'].each do |i|
              backupgrouprollbacktask_tmp = BackupGroupRollbackTask.new
              backupgrouprollbacktask_tmp.deserialize(i)
              @RollbackTaskSet << backupgrouprollbacktask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupGroupsDeniedActions请求参数结构体
      class DescribeBackupGroupsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param BackupGroupIds: 备份组列表
        # @type BackupGroupIds: Array

        attr_accessor :BackupGroupIds

        def initialize(backupgroupids=nil)
          @BackupGroupIds = backupgroupids
        end

        def deserialize(params)
          @BackupGroupIds = params['BackupGroupIds']
        end
      end

      # DescribeBackupGroupsDeniedActions返回参数结构体
      class DescribeBackupGroupsDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param BackupGroupDeniedActionSet: 备份组不允许操作信息
        # @type BackupGroupDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupGroupDeniedActionSet, :RequestId

        def initialize(backupgroupdeniedactionset=nil, requestid=nil)
          @BackupGroupDeniedActionSet = backupgroupdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackupGroupDeniedActionSet'].nil?
            @BackupGroupDeniedActionSet = []
            params['BackupGroupDeniedActionSet'].each do |i|
              backupgroupdeniedaction_tmp = BackupGroupDeniedAction.new
              backupgroupdeniedaction_tmp.deserialize(i)
              @BackupGroupDeniedActionSet << backupgroupdeniedaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupGroups请求参数结构体
      class DescribeBackupGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。backup-group-id - Array of String - 是否必填：否 -（过滤条件）按备份组ID过滤 ;backup-group-state - Array of String - 是否必填：否 -（过滤条件）按备份组状态过滤。(NORMAL: 正常 | CREATING:创建中 | ROLLBACKING:回滚中) ;backup-group-name - Array of String - 是否必填：否 -（过滤条件）按备份组名称过滤 ;backup-id - Array of String - 是否必填：否 -（过滤条件）按备份组内的备份ID过滤
        # @type Filters: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大500
        # @type Limit: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param OrderField: 排序字段。目前支持CREATE_TIME。
        # @type OrderField: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeBackupGroups返回参数结构体
      class DescribeBackupGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总数量。
        # @type TotalCount: Integer
        # @param BackupGroupSet: 备份列表详情。
        # @type BackupGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupGroupSet, :RequestId

        def initialize(totalcount=nil, backupgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupGroupSet = backupgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupGroupSet'].nil?
            @BackupGroupSet = []
            params['BackupGroupSet'].each do |i|
              backupgroup_tmp = BackupGroup.new
              backupgroup_tmp.deserialize(i)
              @BackupGroupSet << backupgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupInstances请求参数结构体
      class DescribeBackupInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。;instance-id - Array of String - 是否必填：否 -（过滤条件）按实例ID过滤。;auto-backup-policy-id - Array of String - 是否必填：否 -（过滤条件）按照实例绑定的定期备份策略过滤。;auto-backup-policy-name - Array of String - 是否必填：否 -（过滤条件）按照云硬盘绑定的定期备份策略名称过滤。
        # @type Filters: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大500
        # @type Limit: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param OrderField: 排序字段
        # @type OrderField: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeBackupInstances返回参数结构体
      class DescribeBackupInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的受保护实例总数量
        # @type TotalCount: Integer
        # @param BackupInstanceSet: 符合条件的受保护实例详情
        # @type BackupInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupInstanceSet, :RequestId

        def initialize(totalcount=nil, backupinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupInstanceSet = backupinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupInstanceSet'].nil?
            @BackupInstanceSet = []
            params['BackupInstanceSet'].each do |i|
              backupinstance_tmp = BackupInstance.new
              backupinstance_tmp.deserialize(i)
              @BackupInstanceSet << backupinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupOverviewGeneral请求参数结构体
      class DescribeBackupOverviewGeneralRequest < TencentCloud::Common::AbstractModel
        # @param AllRegions: <p>是否查询全部地域。false-仅当前地域（默认），true-全部地域汇总</p>
        # @type AllRegions: Boolean

        attr_accessor :AllRegions

        def initialize(allregions=nil)
          @AllRegions = allregions
        end

        def deserialize(params)
          @AllRegions = params['AllRegions']
        end
      end

      # DescribeBackupOverviewGeneral返回参数结构体
      class DescribeBackupOverviewGeneralResponse < TencentCloud::Common::AbstractModel
        # @param InstanceBackupOverview: <p>整机备份（CVM 备份组）概览数据</p>
        # @type InstanceBackupOverview: :class:`Tencentcloud::Bdrc.v20260330.models.InstanceBackupOverview`
        # @param FileBackupOverview: <p>文件备份概览数据</p>
        # @type FileBackupOverview: :class:`Tencentcloud::Bdrc.v20260330.models.FileBackupOverview`
        # @param BackupPolicyOverview: <p>备份策略概览</p>
        # @type BackupPolicyOverview: :class:`Tencentcloud::Bdrc.v20260330.models.BackupPolicyOverview`
        # @param BackupVaultOverview: <p>备份库概览</p>
        # @type BackupVaultOverview: :class:`Tencentcloud::Bdrc.v20260330.models.BackupVaultOverview`
        # @param ProtectedResourceOverview: <p>受保护资源概览</p>
        # @type ProtectedResourceOverview: :class:`Tencentcloud::Bdrc.v20260330.models.ProtectedResourceOverview`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceBackupOverview, :FileBackupOverview, :BackupPolicyOverview, :BackupVaultOverview, :ProtectedResourceOverview, :RequestId

        def initialize(instancebackupoverview=nil, filebackupoverview=nil, backuppolicyoverview=nil, backupvaultoverview=nil, protectedresourceoverview=nil, requestid=nil)
          @InstanceBackupOverview = instancebackupoverview
          @FileBackupOverview = filebackupoverview
          @BackupPolicyOverview = backuppolicyoverview
          @BackupVaultOverview = backupvaultoverview
          @ProtectedResourceOverview = protectedresourceoverview
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceBackupOverview'].nil?
            @InstanceBackupOverview = InstanceBackupOverview.new
            @InstanceBackupOverview.deserialize(params['InstanceBackupOverview'])
          end
          unless params['FileBackupOverview'].nil?
            @FileBackupOverview = FileBackupOverview.new
            @FileBackupOverview.deserialize(params['FileBackupOverview'])
          end
          unless params['BackupPolicyOverview'].nil?
            @BackupPolicyOverview = BackupPolicyOverview.new
            @BackupPolicyOverview.deserialize(params['BackupPolicyOverview'])
          end
          unless params['BackupVaultOverview'].nil?
            @BackupVaultOverview = BackupVaultOverview.new
            @BackupVaultOverview.deserialize(params['BackupVaultOverview'])
          end
          unless params['ProtectedResourceOverview'].nil?
            @ProtectedResourceOverview = ProtectedResourceOverview.new
            @ProtectedResourceOverview.deserialize(params['ProtectedResourceOverview'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupPlans请求参数结构体
      class DescribeBackupPlansRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，支持instance-id和auto-backup-policy-id
        # @type Filters: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大100
        # @type Limit: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param OrderField: 排序字段
        # @type OrderField: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeBackupPlans返回参数结构体
      class DescribeBackupPlansResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总数量。
        # @type TotalCount: Integer
        # @param BackupPlanSet: 备份列表详情。
        # @type BackupPlanSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupPlanSet, :RequestId

        def initialize(totalcount=nil, backupplanset=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupPlanSet = backupplanset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupPlanSet'].nil?
            @BackupPlanSet = []
            params['BackupPlanSet'].each do |i|
              backupplan_tmp = BackupPlan.new
              backupplan_tmp.deserialize(i)
              @BackupPlanSet << backupplan_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupVaultsDeniedActions请求参数结构体
      class DescribeBackupVaultsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param VaultIds: 备份库ID列表
        # @type VaultIds: Array

        attr_accessor :VaultIds

        def initialize(vaultids=nil)
          @VaultIds = vaultids
        end

        def deserialize(params)
          @VaultIds = params['VaultIds']
        end
      end

      # DescribeBackupVaultsDeniedActions返回参数结构体
      class DescribeBackupVaultsDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param BackupVaultDeniedActionSet: 备份库不允许操作信息
        # @type BackupVaultDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupVaultDeniedActionSet, :RequestId

        def initialize(backupvaultdeniedactionset=nil, requestid=nil)
          @BackupVaultDeniedActionSet = backupvaultdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackupVaultDeniedActionSet'].nil?
            @BackupVaultDeniedActionSet = []
            params['BackupVaultDeniedActionSet'].each do |i|
              vaultdeniedaction_tmp = VaultDeniedAction.new
              vaultdeniedaction_tmp.deserialize(i)
              @BackupVaultDeniedActionSet << vaultdeniedaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackupVaults请求参数结构体
      class DescribeBackupVaultsRequest < TencentCloud::Common::AbstractModel
        # @param VaultIds: 备份库ID列表
        # @type VaultIds: Array
        # @param Filters: 过滤条件，支持instance-id和auto-backup-policy-id
        # @type Filters: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大1000
        # @type Limit: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param OrderField: 排序字段
        # @type OrderField: String

        attr_accessor :VaultIds, :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(vaultids=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @VaultIds = vaultids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @VaultIds = params['VaultIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeBackupVaults返回参数结构体
      class DescribeBackupVaultsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总数量。
        # @type TotalCount: Integer
        # @param BackupVaultSet: 备份库列表详情。
        # @type BackupVaultSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupVaultSet, :RequestId

        def initialize(totalcount=nil, backupvaultset=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupVaultSet = backupvaultset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupVaultSet'].nil?
            @BackupVaultSet = []
            params['BackupVaultSet'].each do |i|
              backupvault_tmp = BackupVault.new
              backupvault_tmp.deserialize(i)
              @BackupVaultSet << backupvault_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCommonBackupPoints请求参数结构体
      class DescribeCommonBackupPointsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例列表
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeCommonBackupPoints返回参数结构体
      class DescribeCommonBackupPointsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总数量。
        # @type TotalCount: Integer
        # @param CommonBackupPointSet: 共同备份点详情。
        # @type CommonBackupPointSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CommonBackupPointSet, :RequestId

        def initialize(totalcount=nil, commonbackuppointset=nil, requestid=nil)
          @TotalCount = totalcount
          @CommonBackupPointSet = commonbackuppointset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CommonBackupPointSet'].nil?
            @CommonBackupPointSet = []
            params['CommonBackupPointSet'].each do |i|
              commonbackuppoint_tmp = CommonBackupPoint.new
              commonbackuppoint_tmp.deserialize(i)
              @CommonBackupPointSet << commonbackuppoint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCopyPairsDeniedActions请求参数结构体
      class DescribeCopyPairsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param CopyPairIds: 复制对ID列表
        # @type CopyPairIds: Array
        # @param CopyPairType: 要查询复制对的类型，枚举值：DISK（云硬盘）、INSTANCE（云服务器）、CFS（文件存储）
        # @type CopyPairType: String

        attr_accessor :CopyPairIds, :CopyPairType

        def initialize(copypairids=nil, copypairtype=nil)
          @CopyPairIds = copypairids
          @CopyPairType = copypairtype
        end

        def deserialize(params)
          @CopyPairIds = params['CopyPairIds']
          @CopyPairType = params['CopyPairType']
        end
      end

      # DescribeCopyPairsDeniedActions返回参数结构体
      class DescribeCopyPairsDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param CopyPairDeniedActionSet: 复制对操作掩码列表，返回每个复制对被禁止执行的操作
        # @type CopyPairDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CopyPairDeniedActionSet, :RequestId

        def initialize(copypairdeniedactionset=nil, requestid=nil)
          @CopyPairDeniedActionSet = copypairdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CopyPairDeniedActionSet'].nil?
            @CopyPairDeniedActionSet = []
            params['CopyPairDeniedActionSet'].each do |i|
              copypairdeniedaction_tmp = CopyPairDeniedAction.new
              copypairdeniedaction_tmp.deserialize(i)
              @CopyPairDeniedActionSet << copypairdeniedaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCopyPairs请求参数结构体
      class DescribeCopyPairsRequest < TencentCloud::Common::AbstractModel
        # @param CopyPairType: <p>要查询复制对的类型，可选值：DISK、INSTANCE、CFS</p>
        # @type CopyPairType: String
        # @param CopyPairIds: <p>要查询复制对ID列表</p>
        # @type CopyPairIds: Array
        # @param Filters: <p>过滤条件，详见过滤条件表。支持的Name：disaster-recovery-site-pair-id、target-resource-id、source-resource-id、copy-pair-id、copy-pair-name</p>
        # @type Filters: Array
        # @param Offset: <p>偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节</p>
        # @type Offset: Integer
        # @param Limit: <p>返回数量，默认为20，最大值为100。</p>
        # @type Limit: Integer
        # @param Order: <p>输出结果按升序还是降序，可选值：ASC、DESC</p>
        # @type Order: String
        # @param OrderField: <p>输出结果的排序字段，可选值：CREATE_TIME</p>
        # @type OrderField: String
        # @param QueryProtectionTime: <p>是否要查询保护时间点列表，默认 false。当设置为 true 时，必须同时传入 CopyPairIds 参数。</p>
        # @type QueryProtectionTime: Boolean
        # @param GetAllCopyPair: <p>是否查询跨云+非跨云全部复制对，默认 false</p>
        # @type GetAllCopyPair: Boolean
        # @param QueryCvmCreateParams: <p>是否要查询 CVM 创建参数（仅对延迟创建模式且目标 CVM 未创建的复制对生效），默认为true。为 true 时，每条 deferred_create=1 AND target_cvm_created=0 的 CVM 复制对出参会附带 CvmCreateParams 字段</p>
        # @type QueryCvmCreateParams: Boolean
        # @param CreateFrom: <p>复制对创建来源过滤。不传则查询所有；传 LOCAL 仅查本端创建的复制对，传 PEER 仅查对端创建的复制对。</p><p>枚举值：</p><ul><li>LOCAL： 仅查本端创建的复制对</li><li>PEER： 仅查对端创建的复制对</li></ul>
        # @type CreateFrom: String

        attr_accessor :CopyPairType, :CopyPairIds, :Filters, :Offset, :Limit, :Order, :OrderField, :QueryProtectionTime, :GetAllCopyPair, :QueryCvmCreateParams, :CreateFrom

        def initialize(copypairtype=nil, copypairids=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil, queryprotectiontime=nil, getallcopypair=nil, querycvmcreateparams=nil, createfrom=nil)
          @CopyPairType = copypairtype
          @CopyPairIds = copypairids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
          @QueryProtectionTime = queryprotectiontime
          @GetAllCopyPair = getallcopypair
          @QueryCvmCreateParams = querycvmcreateparams
          @CreateFrom = createfrom
        end

        def deserialize(params)
          @CopyPairType = params['CopyPairType']
          @CopyPairIds = params['CopyPairIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
          @QueryProtectionTime = params['QueryProtectionTime']
          @GetAllCopyPair = params['GetAllCopyPair']
          @QueryCvmCreateParams = params['QueryCvmCreateParams']
          @CreateFrom = params['CreateFrom']
        end
      end

      # DescribeCopyPairs返回参数结构体
      class DescribeCopyPairsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>符合条件的复制对总数</p>
        # @type TotalCount: Integer
        # @param CopyPairSet: <p>复制对列表。</p>
        # @type CopyPairSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CopyPairSet, :RequestId

        def initialize(totalcount=nil, copypairset=nil, requestid=nil)
          @TotalCount = totalcount
          @CopyPairSet = copypairset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CopyPairSet'].nil?
            @CopyPairSet = []
            params['CopyPairSet'].each do |i|
              copypair_tmp = CopyPair.new
              copypair_tmp.deserialize(i)
              @CopyPairSet << copypair_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisasterRecoveryDrillGroups请求参数结构体
      class DescribeDisasterRecoveryDrillGroupsRequest < TencentCloud::Common::AbstractModel
        # @param DrillGroupType: 要查询的容灾演练组产品类型。枚举值：DISK / INSTANCE / CFS。
        # @type DrillGroupType: String
        # @param DrillGroupIds: 要查询的容灾演练组ID列表。
        # @type DrillGroupIds: Array
        # @param Filters: 过滤条件，详见定期快照过滤条件表。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer
        # @param Order: 输出结果按升序还是降序。枚举值：ASC / DESC。
        # @type Order: String
        # @param OrderField: 输出结果的排序字段。枚举值：CREATE_TIME。
        # @type OrderField: String

        attr_accessor :DrillGroupType, :DrillGroupIds, :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(drillgrouptype=nil, drillgroupids=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @DrillGroupType = drillgrouptype
          @DrillGroupIds = drillgroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @DrillGroupType = params['DrillGroupType']
          @DrillGroupIds = params['DrillGroupIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeDisasterRecoveryDrillGroups返回参数结构体
      class DescribeDisasterRecoveryDrillGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 有效的容灾演练组数量。
        # @type TotalCount: Integer
        # @param DrillGroupSet: 容灾演练组列表。
        # @type DrillGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DrillGroupSet, :RequestId

        def initialize(totalcount=nil, drillgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @DrillGroupSet = drillgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DrillGroupSet'].nil?
            @DrillGroupSet = []
            params['DrillGroupSet'].each do |i|
              disasterrecoverydrillgroup_tmp = DisasterRecoveryDrillGroup.new
              disasterrecoverydrillgroup_tmp.deserialize(i)
              @DrillGroupSet << disasterrecoverydrillgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisasterRecoveryOverview请求参数结构体
      class DescribeDisasterRecoveryOverviewRequest < TencentCloud::Common::AbstractModel
        # @param CopyPairType: 要查询的产品/复制对的类型，枚举值：• DISK：云硬盘类型复制对• INSTANCE：CVM 实例复制对• CFS：文件存储复制对• ALL：聚合当前支持的类型；默认为CFS
        # @type CopyPairType: String

        attr_accessor :CopyPairType

        def initialize(copypairtype=nil)
          @CopyPairType = copypairtype
        end

        def deserialize(params)
          @CopyPairType = params['CopyPairType']
        end
      end

      # DescribeDisasterRecoveryOverview返回参数结构体
      class DescribeDisasterRecoveryOverviewResponse < TencentCloud::Common::AbstractModel
        # @param DisasterRecoveryOverview: 跨所有地域聚合后的容灾总览数据
        # @type DisasterRecoveryOverview: :class:`Tencentcloud::Bdrc.v20260330.models.DisasterRecoveryOverview`
        # @param OverviewInRegionSet: 按地域拆分的容灾总览列表
        # @type OverviewInRegionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DisasterRecoveryOverview, :OverviewInRegionSet, :RequestId

        def initialize(disasterrecoveryoverview=nil, overviewinregionset=nil, requestid=nil)
          @DisasterRecoveryOverview = disasterrecoveryoverview
          @OverviewInRegionSet = overviewinregionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DisasterRecoveryOverview'].nil?
            @DisasterRecoveryOverview = DisasterRecoveryOverview.new
            @DisasterRecoveryOverview.deserialize(params['DisasterRecoveryOverview'])
          end
          unless params['OverviewInRegionSet'].nil?
            @OverviewInRegionSet = []
            params['OverviewInRegionSet'].each do |i|
              disasterrecoveryoverview_tmp = DisasterRecoveryOverview.new
              disasterrecoveryoverview_tmp.deserialize(i)
              @OverviewInRegionSet << disasterrecoveryoverview_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisasterRecoveryProtectGroups请求参数结构体
      class DescribeDisasterRecoveryProtectGroupsRequest < TencentCloud::Common::AbstractModel
        # @param ProtectGroupType: 要查询的容灾保护组产品类型，枚举值：DISK / INSTANCE / CFS。
        # @type ProtectGroupType: String
        # @param ProtectGroupIds: 要查询的容灾保护组ID列表。
        # @type ProtectGroupIds: Array
        # @param Filters: 过滤条件（过滤项由 core handler 定义，如 disaster-recovery-protect-group-id 等）。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer
        # @param Order: 输出结果按升序还是降序
        # @type Order: String
        # @param OrderField: 输出结果的排序字段
        # @type OrderField: String

        attr_accessor :ProtectGroupType, :ProtectGroupIds, :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(protectgrouptype=nil, protectgroupids=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @ProtectGroupType = protectgrouptype
          @ProtectGroupIds = protectgroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @ProtectGroupType = params['ProtectGroupType']
          @ProtectGroupIds = params['ProtectGroupIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeDisasterRecoveryProtectGroups返回参数结构体
      class DescribeDisasterRecoveryProtectGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的容灾保护组总数
        # @type TotalCount: Integer
        # @param ProtectGroupSet: 容灾保护组列表
        # @type ProtectGroupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProtectGroupSet, :RequestId

        def initialize(totalcount=nil, protectgroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @ProtectGroupSet = protectgroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ProtectGroupSet'].nil?
            @ProtectGroupSet = []
            params['ProtectGroupSet'].each do |i|
              protectgroup_tmp = ProtectGroup.new
              protectgroup_tmp.deserialize(i)
              @ProtectGroupSet << protectgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisasterRecoverySitePairsDeniedActions请求参数结构体
      class DescribeDisasterRecoverySitePairsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param SitePairIds: 要查询的容灾策略ID列表，单个ID格式为 sitepair-xxxxxxxx
        # @type SitePairIds: Array

        attr_accessor :SitePairIds

        def initialize(sitepairids=nil)
          @SitePairIds = sitepairids
        end

        def deserialize(params)
          @SitePairIds = params['SitePairIds']
        end
      end

      # DescribeDisasterRecoverySitePairsDeniedActions返回参数结构体
      class DescribeDisasterRecoverySitePairsDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param SitePairDeniedActionSet: 每个容灾策略对应的禁止操作集合，返回顺序与入参 SitePairIds 一致
        # @type SitePairDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SitePairDeniedActionSet, :RequestId

        def initialize(sitepairdeniedactionset=nil, requestid=nil)
          @SitePairDeniedActionSet = sitepairdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SitePairDeniedActionSet'].nil?
            @SitePairDeniedActionSet = []
            params['SitePairDeniedActionSet'].each do |i|
              sitepairdeniedaction_tmp = SitePairDeniedAction.new
              sitepairdeniedaction_tmp.deserialize(i)
              @SitePairDeniedActionSet << sitepairdeniedaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisasterRecoverySitePairs请求参数结构体
      class DescribeDisasterRecoverySitePairsRequest < TencentCloud::Common::AbstractModel
        # @param SitePairType: 要查询的容灾策略产品类型。取值范围：DISK / INSTANCE / CFS。
        # @type SitePairType: String
        # @param SitePairIds: 要查询的容灾策略ID列表。
        # @type SitePairIds: Array
        # @param Filters: 过滤条件，详见定期快照过滤条件表。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer
        # @param Order: 输出结果按升序还是降序，DESC表示降序，ASC表示升序
        # @type Order: String
        # @param OrderField: 输出结果的排序字段
        # @type OrderField: String

        attr_accessor :SitePairType, :SitePairIds, :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(sitepairtype=nil, sitepairids=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @SitePairType = sitepairtype
          @SitePairIds = sitepairids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @SitePairType = params['SitePairType']
          @SitePairIds = params['SitePairIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeDisasterRecoverySitePairs返回参数结构体
      class DescribeDisasterRecoverySitePairsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 有效的容灾策略数量。
        # @type TotalCount: Integer
        # @param SitePairSet: 容灾策略列表。
        # @type SitePairSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SitePairSet, :RequestId

        def initialize(totalcount=nil, sitepairset=nil, requestid=nil)
          @TotalCount = totalcount
          @SitePairSet = sitepairset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SitePairSet'].nil?
            @SitePairSet = []
            params['SitePairSet'].each do |i|
              sitepair_tmp = SitePair.new
              sitepair_tmp.deserialize(i)
              @SitePairSet << sitepair_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisasterRecoverySupportRegion请求参数结构体
      class DescribeDisasterRecoverySupportRegionRequest < TencentCloud::Common::AbstractModel
        # @param Status: <p>状态过滤：valid（生效）/ invalid（停用）；为空则同时返回生效与停用的全部记录。</p>
        # @type Status: String

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # DescribeDisasterRecoverySupportRegion返回参数结构体
      class DescribeDisasterRecoverySupportRegionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: <p>符合条件的支持的生产地域配置总数。</p>
        # @type TotalCount: Integer
        # @param SupportRegionSet: <p>支持的生产地域配置详情列表。</p>
        # @type SupportRegionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SupportRegionSet, :RequestId

        def initialize(totalcount=nil, supportregionset=nil, requestid=nil)
          @TotalCount = totalcount
          @SupportRegionSet = supportregionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SupportRegionSet'].nil?
            @SupportRegionSet = []
            params['SupportRegionSet'].each do |i|
              supportregioninfo_tmp = SupportRegionInfo.new
              supportregioninfo_tmp.deserialize(i)
              @SupportRegionSet << supportregioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisks请求参数结构体
      class DescribeDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 要查询信息的云盘ID列表
        # @type DiskIds: Array
        # @param DiskRegion: 云盘所在地域
        # @type DiskRegion: String

        attr_accessor :DiskIds, :DiskRegion

        def initialize(diskids=nil, diskregion=nil)
          @DiskIds = diskids
          @DiskRegion = diskregion
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @DiskRegion = params['DiskRegion']
        end
      end

      # DescribeDisks返回参数结构体
      class DescribeDisksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的云盘总数
        # @type TotalCount: Integer
        # @param DiskInfoSet: 云盘详情列表
        # @type DiskInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DiskInfoSet, :RequestId

        def initialize(totalcount=nil, diskinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @DiskInfoSet = diskinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DiskInfoSet'].nil?
            @DiskInfoSet = []
            params['DiskInfoSet'].each do |i|
              diskinfo_tmp = DiskInfo.new
              diskinfo_tmp.deserialize(i)
              @DiskInfoSet << diskinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDrillPairsDeniedActions请求参数结构体
      class DescribeDrillPairsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param DrillPairType: 要查询演练对的类型，枚举值：DISK（云硬盘）、INSTANCE（云服务器）、CFS（文件存储）
        # @type DrillPairType: String
        # @param DrillPairIds: 演练对ID列表
        # @type DrillPairIds: Array

        attr_accessor :DrillPairType, :DrillPairIds

        def initialize(drillpairtype=nil, drillpairids=nil)
          @DrillPairType = drillpairtype
          @DrillPairIds = drillpairids
        end

        def deserialize(params)
          @DrillPairType = params['DrillPairType']
          @DrillPairIds = params['DrillPairIds']
        end
      end

      # DescribeDrillPairsDeniedActions返回参数结构体
      class DescribeDrillPairsDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param DrillPairDeniedActionSet: 演练对操作掩码列表，返回每个演练对被禁止执行的操作
        # @type DrillPairDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DrillPairDeniedActionSet, :RequestId

        def initialize(drillpairdeniedactionset=nil, requestid=nil)
          @DrillPairDeniedActionSet = drillpairdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DrillPairDeniedActionSet'].nil?
            @DrillPairDeniedActionSet = []
            params['DrillPairDeniedActionSet'].each do |i|
              drillpairdeniedaction_tmp = DrillPairDeniedAction.new
              drillpairdeniedaction_tmp.deserialize(i)
              @DrillPairDeniedActionSet << drillpairdeniedaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDrillPairs请求参数结构体
      class DescribeDrillPairsRequest < TencentCloud::Common::AbstractModel
        # @param DrillPairType: 要查询演练对的类型。枚举值：DISK / INSTANCE / CFS。
        # @type DrillPairType: String
        # @param DrillPairIds: 要查询演练对ID列表。
        # @type DrillPairIds: Array
        # @param Filters: 过滤条件，详见定期快照过滤条件表。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer
        # @param Order: 输出结果按升序还是降序。枚举值：ASC / DESC。
        # @type Order: String
        # @param OrderField: 输出结果的排序字段。枚举值：CREATE_TIME / END_TIME。
        # @type OrderField: String

        attr_accessor :DrillPairType, :DrillPairIds, :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(drillpairtype=nil, drillpairids=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @DrillPairType = drillpairtype
          @DrillPairIds = drillpairids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @DrillPairType = params['DrillPairType']
          @DrillPairIds = params['DrillPairIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeDrillPairs返回参数结构体
      class DescribeDrillPairsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 有效的容灾演练对数量。
        # @type TotalCount: Integer
        # @param DrillPairSet: 容灾演练对列表。
        # @type DrillPairSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DrillPairSet, :RequestId

        def initialize(totalcount=nil, drillpairset=nil, requestid=nil)
          @TotalCount = totalcount
          @DrillPairSet = drillpairset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DrillPairSet'].nil?
            @DrillPairSet = []
            params['DrillPairSet'].each do |i|
              drillpair_tmp = DrillPair.new
              drillpair_tmp.deserialize(i)
              @DrillPairSet << drillpair_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileBackupObjects请求参数结构体
      class DescribeFileBackupObjectsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFileBackupObjects返回参数结构体
      class DescribeFileBackupObjectsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 当前路径下包含的目录及文件总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RequestId

        def initialize(totalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileBackupPlans请求参数结构体
      class DescribeFileBackupPlansRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大500
        # @type Limit: Integer
        # @param OrderField: 排序字段
        # @type OrderField: String
        # @param Order: 排序方式
        # @type Order: String
        # @param Filters: 过滤条件。支持: instance-id, plan-id, plan-name, status, auto-backup-policy-id
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :OrderField, :Order, :Filters

        def initialize(offset=nil, limit=nil, orderfield=nil, order=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Order = params['Order']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
        end
      end

      # DescribeFileBackupPlans返回参数结构体
      class DescribeFileBackupPlansResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的计划总数量
        # @type TotalCount: Integer
        # @param PlanSet: 符合条件的计划详情
        # @type PlanSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PlanSet, :RequestId

        def initialize(totalcount=nil, planset=nil, requestid=nil)
          @TotalCount = totalcount
          @PlanSet = planset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['PlanSet'].nil?
            @PlanSet = []
            params['PlanSet'].each do |i|
              planinfo_tmp = PlanInfo.new
              planinfo_tmp.deserialize(i)
              @PlanSet << planinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileBackupsDeniedActions请求参数结构体
      class DescribeFileBackupsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param BackupIds: 要查询的文件备份ID列表
        # @type BackupIds: Array

        attr_accessor :BackupIds

        def initialize(backupids=nil)
          @BackupIds = backupids
        end

        def deserialize(params)
          @BackupIds = params['BackupIds']
        end
      end

      # DescribeFileBackupsDeniedActions返回参数结构体
      class DescribeFileBackupsDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param BackupDeniedActionSet: 备份的操作掩码。
        # @type BackupDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BackupDeniedActionSet, :RequestId

        def initialize(backupdeniedactionset=nil, requestid=nil)
          @BackupDeniedActionSet = backupdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BackupDeniedActionSet'].nil?
            @BackupDeniedActionSet = []
            params['BackupDeniedActionSet'].each do |i|
              backupdeniedaction_tmp = BackupDeniedAction.new
              backupdeniedaction_tmp.deserialize(i)
              @BackupDeniedActionSet << backupdeniedaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileBackups请求参数结构体
      class DescribeFileBackupsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大500
        # @type Limit: Integer
        # @param OrderField: 排序字段
        # @type OrderField: String
        # @param Order: 排序方式
        # @type Order: String
        # @param Filters: 过滤条件。支持: backup-id, plan-id, instance-id, status, backup-type, auto-backup-policy-id
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :OrderField, :Order, :Filters

        def initialize(offset=nil, limit=nil, orderfield=nil, order=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Order = params['Order']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
        end
      end

      # DescribeFileBackups返回参数结构体
      class DescribeFileBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的备份点总数量
        # @type TotalCount: Integer
        # @param BackupSet: 符合条件的备份点详情
        # @type BackupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BackupSet, :RequestId

        def initialize(totalcount=nil, backupset=nil, requestid=nil)
          @TotalCount = totalcount
          @BackupSet = backupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BackupSet'].nil?
            @BackupSet = []
            params['BackupSet'].each do |i|
              backupinfo_tmp = BackupInfo.new
              backupinfo_tmp.deserialize(i)
              @BackupSet << backupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFileRestoreTasks请求参数结构体
      class DescribeFileRestoreTasksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。支持: backup-id, task-id, instance-id, "         "target-instance-id, status
        # @type Filters: Array
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大500
        # @type Limit: Integer
        # @param Order: 排序方式
        # @type Order: String
        # @param OrderField: 排序字段
        # @type OrderField: String

        attr_accessor :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeFileRestoreTasks返回参数结构体
      class DescribeFileRestoreTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的总数量。
        # @type TotalCount: Integer
        # @param RestoreTaskSet: 恢复任务列表详情。
        # @type RestoreTaskSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RestoreTaskSet, :RequestId

        def initialize(totalcount=nil, restoretaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @RestoreTaskSet = restoretaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RestoreTaskSet'].nil?
            @RestoreTaskSet = []
            params['RestoreTaskSet'].each do |i|
              restoretask_tmp = RestoreTask.new
              restoretask_tmp.deserialize(i)
              @RestoreTaskSet << restoretask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJobs请求参数结构体
      class DescribeJobsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeJobs返回参数结构体
      class DescribeJobsResponse < TencentCloud::Common::AbstractModel
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

      # DescribePriceCreateCopyPairs请求参数结构体
      class DescribePriceCreateCopyPairsRequest < TencentCloud::Common::AbstractModel
        # @param DataCapacities: 每个复制对的容量列表，长度 1~10。数组长度即为询价的复制对个数，每个元素对应一个复制对的容量
        # @type DataCapacities: Array

        attr_accessor :DataCapacities

        def initialize(datacapacities=nil)
          @DataCapacities = datacapacities
        end

        def deserialize(params)
          @DataCapacities = params['DataCapacities']
        end
      end

      # DescribePriceCreateCopyPairs返回参数结构体
      class DescribePriceCreateCopyPairsResponse < TencentCloud::Common::AbstractModel
        # @param CopyPairPrices: 复制对价格列表，与入参一一对应
        # @type CopyPairPrices: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CopyPairPrices, :RequestId

        def initialize(copypairprices=nil, requestid=nil)
          @CopyPairPrices = copypairprices
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CopyPairPrices'].nil?
            @CopyPairPrices = []
            params['CopyPairPrices'].each do |i|
              copypairprice_tmp = CopyPairPrice.new
              copypairprice_tmp.deserialize(i)
              @CopyPairPrices << copypairprice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProtectGroupsDeniedActions请求参数结构体
      class DescribeProtectGroupsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param ProtectGroupIds: 保护组ID列表
        # @type ProtectGroupIds: Array

        attr_accessor :ProtectGroupIds

        def initialize(protectgroupids=nil)
          @ProtectGroupIds = protectgroupids
        end

        def deserialize(params)
          @ProtectGroupIds = params['ProtectGroupIds']
        end
      end

      # DescribeProtectGroupsDeniedActions返回参数结构体
      class DescribeProtectGroupsDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param ProtectGroupDeniedActionSet: 保护组操作掩码列表，返回每个保护组被禁止执行的操作
        # @type ProtectGroupDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProtectGroupDeniedActionSet, :RequestId

        def initialize(protectgroupdeniedactionset=nil, requestid=nil)
          @ProtectGroupDeniedActionSet = protectgroupdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProtectGroupDeniedActionSet'].nil?
            @ProtectGroupDeniedActionSet = []
            params['ProtectGroupDeniedActionSet'].each do |i|
              protectgroupdeniedaction_tmp = ProtectGroupDeniedAction.new
              protectgroupdeniedaction_tmp.deserialize(i)
              @ProtectGroupDeniedActionSet << protectgroupdeniedaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProtectedInstances请求参数结构体
      class DescribeProtectedInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认20，最大500
        # @type Limit: Integer
        # @param OrderField: 排序字段
        # @type OrderField: String
        # @param Order: 排序方式
        # @type Order: String
        # @param Filters: 过滤条件。支持: instance-id, agent-status
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :OrderField, :Order, :Filters

        def initialize(offset=nil, limit=nil, orderfield=nil, order=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Order = params['Order']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
        end
      end

      # DescribeProtectedInstances返回参数结构体
      class DescribeProtectedInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的受保护实例总数量
        # @type TotalCount: Integer
        # @param InstanceSet: 符合条件的受保护实例详情
        # @type InstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              protectinstance_tmp = ProtectInstance.new
              protectinstance_tmp.deserialize(i)
              @InstanceSet << protectinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupMappings请求参数结构体
      class DescribeSecurityGroupMappingsRequest < TencentCloud::Common::AbstractModel
        # @param SitePairId: 安全组映射所属的站点对ID。
        # @type SitePairId: String
        # @param Filters: 过滤条件，详见过滤条件表。支持的Name：src-security-group-id、target-security-group-id
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为500。关于Limit的更进一步介绍请参考 API 简介中的相关小节
        # @type Limit: Integer
        # @param Order: 输出结果按升序还是降序，可选值：ASC、DESC
        # @type Order: String
        # @param OrderField: 输出结果的排序字段，可选值：CREATE_TIME
        # @type OrderField: String

        attr_accessor :SitePairId, :Filters, :Offset, :Limit, :Order, :OrderField

        def initialize(sitepairid=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @SitePairId = sitepairid
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @SitePairId = params['SitePairId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeSecurityGroupMappings返回参数结构体
      class DescribeSecurityGroupMappingsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param SecurityGroupMappingSet: 安全组映射详情。
        # @type SecurityGroupMappingSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SecurityGroupMappingSet, :RequestId

        def initialize(totalcount=nil, securitygroupmappingset=nil, requestid=nil)
          @TotalCount = totalcount
          @SecurityGroupMappingSet = securitygroupmappingset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SecurityGroupMappingSet'].nil?
            @SecurityGroupMappingSet = []
            params['SecurityGroupMappingSet'].each do |i|
              securitygroupmapping_tmp = SecurityGroupMapping.new
              securitygroupmapping_tmp.deserialize(i)
              @SecurityGroupMappingSet << securitygroupmapping_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcMappings请求参数结构体
      class DescribeVpcMappingsRequest < TencentCloud::Common::AbstractModel
        # @param SitePairId: 要查询的站点对id
        # @type SitePairId: String
        # @param Filters: 过滤条件。支持: source-vpc-id, target-vpc-id, source-subnet-id, target-subnet-id
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer

        attr_accessor :SitePairId, :Filters, :Offset, :Limit

        def initialize(sitepairid=nil, filters=nil, offset=nil, limit=nil)
          @SitePairId = sitepairid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SitePairId = params['SitePairId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filtermodel_tmp = FilterModel.new
              filtermodel_tmp.deserialize(i)
              @Filters << filtermodel_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeVpcMappings返回参数结构体
      class DescribeVpcMappingsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的VPC映射规则总数
        # @type TotalCount: Integer
        # @param VpcMappingSet: VPC映射规则列表
        # @type VpcMappingSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpcMappingSet, :RequestId

        def initialize(totalcount=nil, vpcmappingset=nil, requestid=nil)
          @TotalCount = totalcount
          @VpcMappingSet = vpcmappingset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VpcMappingSet'].nil?
            @VpcMappingSet = []
            params['VpcMappingSet'].each do |i|
              vpcmapping_tmp = VpcMapping.new
              vpcmapping_tmp.deserialize(i)
              @VpcMappingSet << vpcmapping_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 容灾演练组
      class DisasterRecoveryDrillGroup < TencentCloud::Common::AbstractModel
        # @param Id: 资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param AccountUin: 账户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountUin: String
        # @param SubAccountUin: 子账户uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param SitePairId: 容灾站点对ID
        # @type SitePairId: String
        # @param ProtectGroupId: 保护组ID
        # @type ProtectGroupId: String
        # @param DrillGroupId: 演练组ID
        # @type DrillGroupId: String
        # @param DrillGroupName: 演练组名称
        # @type DrillGroupName: String
        # @param DrillGroupType: 演练组类型。枚举值：DISK / INSTANCE / CFS。
        # @type DrillGroupType: String
        # @param RecoveryTime: 恢复时间点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecoveryTime: String
        # @param DrillVpc: 演练VPC
        # @type DrillVpc: String
        # @param DrillSecurityGroup: 演练安全组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrillSecurityGroup: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param LifeState: 生命周期状态。枚举值：NORMAL / DELETED。
        # @type LifeState: String
        # @param DisasterRecoveryType: 容灾类型。枚举值：CROSS_ZONE / CROSS_REGION 等。
        # @type DisasterRecoveryType: String
        # @param CopyType: 复制技术。枚举值：SYN（同步）/ ASYN（异步）。
        # @type CopyType: String
        # @param PeerCloudName: 对端云名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerCloudName: String
        # @param LocalCloudName: 本地云名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocalCloudName: String
        # @param SourceRegion: 生产地域
        # @type SourceRegion: String
        # @param SourceZone: 生产可用区
        # @type SourceZone: String
        # @param SourceVpc: 生产端VPC
        # @type SourceVpc: String
        # @param DrillRegion: 演练地域
        # @type DrillRegion: String
        # @param DrillZone: 演练可用区
        # @type DrillZone: String
        # @param DataDirection: 数据方向。枚举值：POSITIVE（正向）/ REVERSE（反向）。
        # @type DataDirection: String
        # @param BindDrilledResourceCount: 绑定的演练资源数量。
        # @type BindDrilledResourceCount: Integer
        # @param DrilledResourceStatusSet: 演练资源状态分布（key 为状态名如 FAILED / SUCCESS，value 为该状态数量）。
        # @type DrilledResourceStatusSet: Array

        attr_accessor :Id, :AppId, :AccountUin, :SubAccountUin, :SitePairId, :ProtectGroupId, :DrillGroupId, :DrillGroupName, :DrillGroupType, :RecoveryTime, :DrillVpc, :DrillSecurityGroup, :CreateTime, :ModifyTime, :LifeState, :DisasterRecoveryType, :CopyType, :PeerCloudName, :LocalCloudName, :SourceRegion, :SourceZone, :SourceVpc, :DrillRegion, :DrillZone, :DataDirection, :BindDrilledResourceCount, :DrilledResourceStatusSet

        def initialize(id=nil, appid=nil, accountuin=nil, subaccountuin=nil, sitepairid=nil, protectgroupid=nil, drillgroupid=nil, drillgroupname=nil, drillgrouptype=nil, recoverytime=nil, drillvpc=nil, drillsecuritygroup=nil, createtime=nil, modifytime=nil, lifestate=nil, disasterrecoverytype=nil, copytype=nil, peercloudname=nil, localcloudname=nil, sourceregion=nil, sourcezone=nil, sourcevpc=nil, drillregion=nil, drillzone=nil, datadirection=nil, binddrilledresourcecount=nil, drilledresourcestatusset=nil)
          @Id = id
          @AppId = appid
          @AccountUin = accountuin
          @SubAccountUin = subaccountuin
          @SitePairId = sitepairid
          @ProtectGroupId = protectgroupid
          @DrillGroupId = drillgroupid
          @DrillGroupName = drillgroupname
          @DrillGroupType = drillgrouptype
          @RecoveryTime = recoverytime
          @DrillVpc = drillvpc
          @DrillSecurityGroup = drillsecuritygroup
          @CreateTime = createtime
          @ModifyTime = modifytime
          @LifeState = lifestate
          @DisasterRecoveryType = disasterrecoverytype
          @CopyType = copytype
          @PeerCloudName = peercloudname
          @LocalCloudName = localcloudname
          @SourceRegion = sourceregion
          @SourceZone = sourcezone
          @SourceVpc = sourcevpc
          @DrillRegion = drillregion
          @DrillZone = drillzone
          @DataDirection = datadirection
          @BindDrilledResourceCount = binddrilledresourcecount
          @DrilledResourceStatusSet = drilledresourcestatusset
        end

        def deserialize(params)
          @Id = params['Id']
          @AppId = params['AppId']
          @AccountUin = params['AccountUin']
          @SubAccountUin = params['SubAccountUin']
          @SitePairId = params['SitePairId']
          @ProtectGroupId = params['ProtectGroupId']
          @DrillGroupId = params['DrillGroupId']
          @DrillGroupName = params['DrillGroupName']
          @DrillGroupType = params['DrillGroupType']
          @RecoveryTime = params['RecoveryTime']
          @DrillVpc = params['DrillVpc']
          @DrillSecurityGroup = params['DrillSecurityGroup']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @LifeState = params['LifeState']
          @DisasterRecoveryType = params['DisasterRecoveryType']
          @CopyType = params['CopyType']
          @PeerCloudName = params['PeerCloudName']
          @LocalCloudName = params['LocalCloudName']
          @SourceRegion = params['SourceRegion']
          @SourceZone = params['SourceZone']
          @SourceVpc = params['SourceVpc']
          @DrillRegion = params['DrillRegion']
          @DrillZone = params['DrillZone']
          @DataDirection = params['DataDirection']
          @BindDrilledResourceCount = params['BindDrilledResourceCount']
          unless params['DrilledResourceStatusSet'].nil?
            @DrilledResourceStatusSet = []
            params['DrilledResourceStatusSet'].each do |i|
              drilledresourcestatus_tmp = DrilledResourceStatus.new
              drilledresourcestatus_tmp.deserialize(i)
              @DrilledResourceStatusSet << drilledresourcestatus_tmp
            end
          end
        end
      end

      # 容灾总览数据
      class DisasterRecoveryOverview < TencentCloud::Common::AbstractModel
        # @param Region: 地域 ID
        # @type Region: String
        # @param SitePairCount: 站点对总数
        # @type SitePairCount: Integer
        # @param SitePairCrossRegionCount: 跨地域站点对数
        # @type SitePairCrossRegionCount: Integer
        # @param SitePairCrossZoneCount: 跨可用区站点对数
        # @type SitePairCrossZoneCount: Integer
        # @param SitePairCrossCloudCount: 跨云站点对数
        # @type SitePairCrossCloudCount: Integer
        # @param ProtectGroupCount: 保护组总数
        # @type ProtectGroupCount: Integer
        # @param ProtectGroupCrossRegionCount: 跨地域保护组数
        # @type ProtectGroupCrossRegionCount: Integer
        # @param ProtectGroupCrossZoneCount: 跨可用区保护组数
        # @type ProtectGroupCrossZoneCount: Integer
        # @param ProtectGroupCrossCloudCount: 跨云保护组数
        # @type ProtectGroupCrossCloudCount: Integer
        # @param CopyPairCount: 复制对总数
        # @type CopyPairCount: Integer
        # @param CopyPairSuccessRPOCount: RPO 正常的复制对数
        # @type CopyPairSuccessRPOCount: Integer
        # @param CopyPairErrorRPOCount: RPO 异常的复制对数
        # @type CopyPairErrorRPOCount: Integer
        # @param DrillPairCount: 演练对总数
        # @type DrillPairCount: Integer
        # @param DrillPairDrillingCount: 演练中
        # @type DrillPairDrillingCount: Integer
        # @param DrillPairFailedCount: 演练失败
        # @type DrillPairFailedCount: Integer
        # @param DrillPairSuccessCount: 演练成功
        # @type DrillPairSuccessCount: Integer
        # @param ProtectedResourceCount: 受保护资源总数
        # @type ProtectedResourceCount: Integer
        # @param ProtectedResourceCopyingCount: 受保护资源-复制中
        # @type ProtectedResourceCopyingCount: Integer
        # @param ProtectedResourceStoppedCount: 受保护资源-已停止/初始化
        # @type ProtectedResourceStoppedCount: Integer
        # @param FailoverFailedCount: 切换失败
        # @type FailoverFailedCount: Integer

        attr_accessor :Region, :SitePairCount, :SitePairCrossRegionCount, :SitePairCrossZoneCount, :SitePairCrossCloudCount, :ProtectGroupCount, :ProtectGroupCrossRegionCount, :ProtectGroupCrossZoneCount, :ProtectGroupCrossCloudCount, :CopyPairCount, :CopyPairSuccessRPOCount, :CopyPairErrorRPOCount, :DrillPairCount, :DrillPairDrillingCount, :DrillPairFailedCount, :DrillPairSuccessCount, :ProtectedResourceCount, :ProtectedResourceCopyingCount, :ProtectedResourceStoppedCount, :FailoverFailedCount

        def initialize(region=nil, sitepaircount=nil, sitepaircrossregioncount=nil, sitepaircrosszonecount=nil, sitepaircrosscloudcount=nil, protectgroupcount=nil, protectgroupcrossregioncount=nil, protectgroupcrosszonecount=nil, protectgroupcrosscloudcount=nil, copypaircount=nil, copypairsuccessrpocount=nil, copypairerrorrpocount=nil, drillpaircount=nil, drillpairdrillingcount=nil, drillpairfailedcount=nil, drillpairsuccesscount=nil, protectedresourcecount=nil, protectedresourcecopyingcount=nil, protectedresourcestoppedcount=nil, failoverfailedcount=nil)
          @Region = region
          @SitePairCount = sitepaircount
          @SitePairCrossRegionCount = sitepaircrossregioncount
          @SitePairCrossZoneCount = sitepaircrosszonecount
          @SitePairCrossCloudCount = sitepaircrosscloudcount
          @ProtectGroupCount = protectgroupcount
          @ProtectGroupCrossRegionCount = protectgroupcrossregioncount
          @ProtectGroupCrossZoneCount = protectgroupcrosszonecount
          @ProtectGroupCrossCloudCount = protectgroupcrosscloudcount
          @CopyPairCount = copypaircount
          @CopyPairSuccessRPOCount = copypairsuccessrpocount
          @CopyPairErrorRPOCount = copypairerrorrpocount
          @DrillPairCount = drillpaircount
          @DrillPairDrillingCount = drillpairdrillingcount
          @DrillPairFailedCount = drillpairfailedcount
          @DrillPairSuccessCount = drillpairsuccesscount
          @ProtectedResourceCount = protectedresourcecount
          @ProtectedResourceCopyingCount = protectedresourcecopyingcount
          @ProtectedResourceStoppedCount = protectedresourcestoppedcount
          @FailoverFailedCount = failoverfailedcount
        end

        def deserialize(params)
          @Region = params['Region']
          @SitePairCount = params['SitePairCount']
          @SitePairCrossRegionCount = params['SitePairCrossRegionCount']
          @SitePairCrossZoneCount = params['SitePairCrossZoneCount']
          @SitePairCrossCloudCount = params['SitePairCrossCloudCount']
          @ProtectGroupCount = params['ProtectGroupCount']
          @ProtectGroupCrossRegionCount = params['ProtectGroupCrossRegionCount']
          @ProtectGroupCrossZoneCount = params['ProtectGroupCrossZoneCount']
          @ProtectGroupCrossCloudCount = params['ProtectGroupCrossCloudCount']
          @CopyPairCount = params['CopyPairCount']
          @CopyPairSuccessRPOCount = params['CopyPairSuccessRPOCount']
          @CopyPairErrorRPOCount = params['CopyPairErrorRPOCount']
          @DrillPairCount = params['DrillPairCount']
          @DrillPairDrillingCount = params['DrillPairDrillingCount']
          @DrillPairFailedCount = params['DrillPairFailedCount']
          @DrillPairSuccessCount = params['DrillPairSuccessCount']
          @ProtectedResourceCount = params['ProtectedResourceCount']
          @ProtectedResourceCopyingCount = params['ProtectedResourceCopyingCount']
          @ProtectedResourceStoppedCount = params['ProtectedResourceStoppedCount']
          @FailoverFailedCount = params['FailoverFailedCount']
        end
      end

      # cvm的盘复制对信息
      class DiskCopyPairForCvm < TencentCloud::Common::AbstractModel
        # @param CopyPairId: 云硬盘复制对ID
        # @type CopyPairId: String
        # @param CopyPairName: 云硬盘复制对名称
        # @type CopyPairName: String
        # @param SourceResourceId: 生产端云硬盘ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceResourceId: String
        # @param TargetResourceId: 容灾端云硬盘ID（延迟创建模式且 CVM 未真实创建时被脱敏为空字符串）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetResourceId: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :CopyPairId, :CopyPairName, :SourceResourceId, :TargetResourceId, :CreateTime

        def initialize(copypairid=nil, copypairname=nil, sourceresourceid=nil, targetresourceid=nil, createtime=nil)
          @CopyPairId = copypairid
          @CopyPairName = copypairname
          @SourceResourceId = sourceresourceid
          @TargetResourceId = targetresourceid
          @CreateTime = createtime
        end

        def deserialize(params)
          @CopyPairId = params['CopyPairId']
          @CopyPairName = params['CopyPairName']
          @SourceResourceId = params['SourceResourceId']
          @TargetResourceId = params['TargetResourceId']
          @CreateTime = params['CreateTime']
        end
      end

      # 描述容灾云硬盘的详情，如云硬盘的镜像格式。
      class DiskInfo < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID
        # @type DiskId: String
        # @param ImageFormat: 云盘的镜像格式。QCOW2:  qcow2格式，这种格式的云盘不能用于容灾；RAW：raw格式，可以用于容灾。
        # @type ImageFormat: String

        attr_accessor :DiskId, :ImageFormat

        def initialize(diskid=nil, imageformat=nil)
          @DiskId = diskid
          @ImageFormat = imageformat
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @ImageFormat = params['ImageFormat']
        end
      end

      # 云盘信息
      class DiskModel < TencentCloud::Common::AbstractModel
        # @param DiskType: 云盘类型
        # @type DiskType: String
        # @param DiskSize: 云盘大小（单位GB，范围 (0, 32000]）
        # @type DiskSize: Integer
        # @param DeleteWithInstance: 是否随实例删除（仅 DataDisks 元素能传）
        # @type DeleteWithInstance: Boolean

        attr_accessor :DiskType, :DiskSize, :DeleteWithInstance

        def initialize(disktype=nil, disksize=nil, deletewithinstance=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DeleteWithInstance = deletewithinstance
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DeleteWithInstance = params['DeleteWithInstance']
        end
      end

      # 演练对
      class DrillPair < TencentCloud::Common::AbstractModel
        # @param AppId: 用户ID
        # @type AppId: Integer
        # @param DrillPairId: 演练对ID
        # @type DrillPairId: String
        # @param DrillPairName: 演练对名称
        # @type DrillPairName: String
        # @param DrillPairState: 演练对状态。枚举值：RUNNING / SUCCESS / FAILED 等。
        # @type DrillPairState: String
        # @param SitePairId: 容灾站点对ID
        # @type SitePairId: String
        # @param CopyPairId: 云硬盘复制对ID
        # @type CopyPairId: String
        # @param SourceRegion: 生产地域
        # @type SourceRegion: String
        # @param SourceZone: 生产可用区
        # @type SourceZone: String
        # @param TargetRegion: 容灾地域
        # @type TargetRegion: String
        # @param TargetZone: 容灾可用区
        # @type TargetZone: String
        # @param SourceResourceId: 生产站点盘ID
        # @type SourceResourceId: String
        # @param TargetResourceId: 演练资源ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetResourceId: String
        # @param DrillPairType: 演练对的类型。枚举值：DISK / INSTANCE / CFS。
        # @type DrillPairType: String
        # @param Size: 演练资源容量（GB）。
        # @type Size: Integer
        # @param RecoveryTime: 演练的容灾点
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecoveryTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param EndTime: 演练结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Rollbacking: 是否正在回滚。0 - 未回滚，1 - 回滚中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rollbacking: Integer
        # @param RollbackPercent: 回滚进度百分比（0-100）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RollbackPercent: Integer
        # @param AccountUin: 创建定期备份策略的账户uin ID信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountUin: String
        # @param SubAccountUin: 创建定期备份策略的子账户uin ID信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param ProtectGroupId: 保护组ID
        # @type ProtectGroupId: String
        # @param DrillGroupId: 演练组ID
        # @type DrillGroupId: String
        # @param CopyPairName: 复制对名称。
        # @type CopyPairName: String
        # @param DrillGroupName: 演练组名称。
        # @type DrillGroupName: String

        attr_accessor :AppId, :DrillPairId, :DrillPairName, :DrillPairState, :SitePairId, :CopyPairId, :SourceRegion, :SourceZone, :TargetRegion, :TargetZone, :SourceResourceId, :TargetResourceId, :DrillPairType, :Size, :RecoveryTime, :CreateTime, :EndTime, :Rollbacking, :RollbackPercent, :AccountUin, :SubAccountUin, :ProtectGroupId, :DrillGroupId, :CopyPairName, :DrillGroupName

        def initialize(appid=nil, drillpairid=nil, drillpairname=nil, drillpairstate=nil, sitepairid=nil, copypairid=nil, sourceregion=nil, sourcezone=nil, targetregion=nil, targetzone=nil, sourceresourceid=nil, targetresourceid=nil, drillpairtype=nil, size=nil, recoverytime=nil, createtime=nil, endtime=nil, rollbacking=nil, rollbackpercent=nil, accountuin=nil, subaccountuin=nil, protectgroupid=nil, drillgroupid=nil, copypairname=nil, drillgroupname=nil)
          @AppId = appid
          @DrillPairId = drillpairid
          @DrillPairName = drillpairname
          @DrillPairState = drillpairstate
          @SitePairId = sitepairid
          @CopyPairId = copypairid
          @SourceRegion = sourceregion
          @SourceZone = sourcezone
          @TargetRegion = targetregion
          @TargetZone = targetzone
          @SourceResourceId = sourceresourceid
          @TargetResourceId = targetresourceid
          @DrillPairType = drillpairtype
          @Size = size
          @RecoveryTime = recoverytime
          @CreateTime = createtime
          @EndTime = endtime
          @Rollbacking = rollbacking
          @RollbackPercent = rollbackpercent
          @AccountUin = accountuin
          @SubAccountUin = subaccountuin
          @ProtectGroupId = protectgroupid
          @DrillGroupId = drillgroupid
          @CopyPairName = copypairname
          @DrillGroupName = drillgroupname
        end

        def deserialize(params)
          @AppId = params['AppId']
          @DrillPairId = params['DrillPairId']
          @DrillPairName = params['DrillPairName']
          @DrillPairState = params['DrillPairState']
          @SitePairId = params['SitePairId']
          @CopyPairId = params['CopyPairId']
          @SourceRegion = params['SourceRegion']
          @SourceZone = params['SourceZone']
          @TargetRegion = params['TargetRegion']
          @TargetZone = params['TargetZone']
          @SourceResourceId = params['SourceResourceId']
          @TargetResourceId = params['TargetResourceId']
          @DrillPairType = params['DrillPairType']
          @Size = params['Size']
          @RecoveryTime = params['RecoveryTime']
          @CreateTime = params['CreateTime']
          @EndTime = params['EndTime']
          @Rollbacking = params['Rollbacking']
          @RollbackPercent = params['RollbackPercent']
          @AccountUin = params['AccountUin']
          @SubAccountUin = params['SubAccountUin']
          @ProtectGroupId = params['ProtectGroupId']
          @DrillGroupId = params['DrillGroupId']
          @CopyPairName = params['CopyPairName']
          @DrillGroupName = params['DrillGroupName']
        end
      end

      # 演练对操作掩码
      class DrillPairDeniedAction < TencentCloud::Common::AbstractModel
        # @param DrillPairId: 演练对ID
        # @type DrillPairId: String
        # @param DeniedActions: 被禁止的操作列表（Action名称数组）
        # @type DeniedActions: Array

        attr_accessor :DrillPairId, :DeniedActions

        def initialize(drillpairid=nil, deniedactions=nil)
          @DrillPairId = drillpairid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @DrillPairId = params['DrillPairId']
          unless params['DeniedActions'].nil?
            @DeniedActions = []
            params['DeniedActions'].each do |i|
              deniedaction_tmp = DeniedAction.new
              deniedaction_tmp.deserialize(i)
              @DeniedActions << deniedaction_tmp
            end
          end
        end
      end

      # 演练组关联的演练资源的状态数量统计
      class DrilledResourceStatus < TencentCloud::Common::AbstractModel
        # @param ResourceStatus: 演练组关联的演练资源的状态
        # @type ResourceStatus: String
        # @param ResourceCount: 演练组关联演练资源处于某个状态的数量
        # @type ResourceCount: Integer

        attr_accessor :ResourceStatus, :ResourceCount

        def initialize(resourcestatus=nil, resourcecount=nil)
          @ResourceStatus = resourcestatus
          @ResourceCount = resourcecount
        end

        def deserialize(params)
          @ResourceStatus = params['ResourceStatus']
          @ResourceCount = params['ResourceCount']
        end
      end

      # 描述了实例的增强服务启用情况与其设置，如云安全，云监控等实例 Agent
      class EnhancedService < TencentCloud::Common::AbstractModel
        # @param SecurityService: 开启云安全服务。若不指定该参数，则默认开启云安全服务。
        # @type SecurityService: :class:`Tencentcloud::Bdrc.v20260330.models.RunSecurityServiceEnabled`
        # @param MonitorService: 开启云监控服务。若不指定该参数，则默认开启云监控服务。
        # @type MonitorService: :class:`Tencentcloud::Bdrc.v20260330.models.RunSecurityServiceEnabled`
        # @param AutomationService: 安装 tat-agent。若不指定该参数，则默认逻辑与 CVM 控制台一致：境外地域不安装、境内非 GPU 机型默认安装、境内 GPU 机型默认不安装。
        # @type AutomationService: :class:`Tencentcloud::Bdrc.v20260330.models.AutomationServiceEnabled`
        # @param BasicService: 开启基础服务。
        # @type BasicService: :class:`Tencentcloud::Bdrc.v20260330.models.BasicServicesSettings`

        attr_accessor :SecurityService, :MonitorService, :AutomationService, :BasicService

        def initialize(securityservice=nil, monitorservice=nil, automationservice=nil, basicservice=nil)
          @SecurityService = securityservice
          @MonitorService = monitorservice
          @AutomationService = automationservice
          @BasicService = basicservice
        end

        def deserialize(params)
          unless params['SecurityService'].nil?
            @SecurityService = RunSecurityServiceEnabled.new
            @SecurityService.deserialize(params['SecurityService'])
          end
          unless params['MonitorService'].nil?
            @MonitorService = RunSecurityServiceEnabled.new
            @MonitorService.deserialize(params['MonitorService'])
          end
          unless params['AutomationService'].nil?
            @AutomationService = AutomationServiceEnabled.new
            @AutomationService.deserialize(params['AutomationService'])
          end
          unless params['BasicService'].nil?
            @BasicService = BasicServicesSettings.new
            @BasicService.deserialize(params['BasicService'])
          end
        end
      end

      # 文件备份概览数据
      class FileBackupOverview < TencentCloud::Common::AbstractModel
        # @param BackupCount: 整机备份点总数
        # @type BackupCount: Integer
        # @param CreatingBackupCount: 创建中数量
        # @type CreatingBackupCount: Integer
        # @param FailedBackupCount: 失败数量
        # @type FailedBackupCount: Integer
        # @param SuccessBackupCount: 已完成数量
        # @type SuccessBackupCount: Integer
        # @param RestoringBackupCount: 恢复中的总数量
        # @type RestoringBackupCount: Integer
        # @param BackupSizeMb: 整机备份总容量
        # @type BackupSizeMb: Integer
        # @param BackupResourceCount: 受保护 CVM 资源数
        # @type BackupResourceCount: Integer

        attr_accessor :BackupCount, :CreatingBackupCount, :FailedBackupCount, :SuccessBackupCount, :RestoringBackupCount, :BackupSizeMb, :BackupResourceCount

        def initialize(backupcount=nil, creatingbackupcount=nil, failedbackupcount=nil, successbackupcount=nil, restoringbackupcount=nil, backupsizemb=nil, backupresourcecount=nil)
          @BackupCount = backupcount
          @CreatingBackupCount = creatingbackupcount
          @FailedBackupCount = failedbackupcount
          @SuccessBackupCount = successbackupcount
          @RestoringBackupCount = restoringbackupcount
          @BackupSizeMb = backupsizemb
          @BackupResourceCount = backupresourcecount
        end

        def deserialize(params)
          @BackupCount = params['BackupCount']
          @CreatingBackupCount = params['CreatingBackupCount']
          @FailedBackupCount = params['FailedBackupCount']
          @SuccessBackupCount = params['SuccessBackupCount']
          @RestoringBackupCount = params['RestoringBackupCount']
          @BackupSizeMb = params['BackupSizeMb']
          @BackupResourceCount = params['BackupResourceCount']
        end
      end

      # 过滤条件
      class FilterModel < TencentCloud::Common::AbstractModel
        # @param Name: 过滤器名
        # @type Name: String
        # @param Values: 过滤器值
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

      # FinishFailoverCopyPairs请求参数结构体
      class FinishFailoverCopyPairsRequest < TencentCloud::Common::AbstractModel
        # @param CopyPairIds: <p>复制对ID列表。长度范围 [1, 50]。当 CopyPairType=INSTANCE 时传 CVM 复制对ID，否则传云盘/CFS 复制对ID。</p>
        # @type CopyPairIds: Array
        # @param CopyPairType: <p>要完成切换的复制对类型。枚举值：DISK / INSTANCE / CFS。</p>
        # @type CopyPairType: String

        attr_accessor :CopyPairIds, :CopyPairType

        def initialize(copypairids=nil, copypairtype=nil)
          @CopyPairIds = copypairids
          @CopyPairType = copypairtype
        end

        def deserialize(params)
          @CopyPairIds = params['CopyPairIds']
          @CopyPairType = params['CopyPairType']
        end
      end

      # FinishFailoverCopyPairs返回参数结构体
      class FinishFailoverCopyPairsResponse < TencentCloud::Common::AbstractModel
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

      # 流控规则
      class FlowControlRule < TencentCloud::Common::AbstractModel
        # @param StartTime: 流控开始时间
        # @type StartTime: String
        # @param EndTime: 流控结束时间
        # @type EndTime: String
        # @param MaxBandwidthMBps: 流控规则最大带宽，单位MB/s
        # @type MaxBandwidthMBps: Integer

        attr_accessor :StartTime, :EndTime, :MaxBandwidthMBps

        def initialize(starttime=nil, endtime=nil, maxbandwidthmbps=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MaxBandwidthMBps = maxbandwidthmbps
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MaxBandwidthMBps = params['MaxBandwidthMBps']
        end
      end

      # 整机备份（CVM 备份组）概览数据
      class InstanceBackupOverview < TencentCloud::Common::AbstractModel
        # @param BackupCount: 整机备份点总数
        # @type BackupCount: Integer
        # @param CreatingBackupCount: 创建中数量
        # @type CreatingBackupCount: Integer
        # @param FailedBackupCount: 失败数量
        # @type FailedBackupCount: Integer
        # @param SuccessBackupCount: 已完成数量
        # @type SuccessBackupCount: Integer
        # @param RestoringBackupCount: 恢复中的总数量
        # @type RestoringBackupCount: Integer
        # @param BackupSizeMb: 整机备份总容量
        # @type BackupSizeMb: Integer
        # @param BackupResourceCount: 受保护 CVM 资源数
        # @type BackupResourceCount: Integer

        attr_accessor :BackupCount, :CreatingBackupCount, :FailedBackupCount, :SuccessBackupCount, :RestoringBackupCount, :BackupSizeMb, :BackupResourceCount

        def initialize(backupcount=nil, creatingbackupcount=nil, failedbackupcount=nil, successbackupcount=nil, restoringbackupcount=nil, backupsizemb=nil, backupresourcecount=nil)
          @BackupCount = backupcount
          @CreatingBackupCount = creatingbackupcount
          @FailedBackupCount = failedbackupcount
          @SuccessBackupCount = successbackupcount
          @RestoringBackupCount = restoringbackupcount
          @BackupSizeMb = backupsizemb
          @BackupResourceCount = backupresourcecount
        end

        def deserialize(params)
          @BackupCount = params['BackupCount']
          @CreatingBackupCount = params['CreatingBackupCount']
          @FailedBackupCount = params['FailedBackupCount']
          @SuccessBackupCount = params['SuccessBackupCount']
          @RestoringBackupCount = params['RestoringBackupCount']
          @BackupSizeMb = params['BackupSizeMb']
          @BackupResourceCount = params['BackupResourceCount']
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：NOTIFY_AND_AUTO_RENEW（通知过期且自动续费）、NOTIFY_AND_MANUAL_RENEW（通知过期不自动续费）、DISABLE_NOTIFY_AND_MANUAL_RENEW（不通知过期不自动续费）。
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

      # 描述了实例的公网可访问性，声明了实例的公网使用计费模式，最大带宽等
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费类型。取值范围：BANDWIDTH_PREPAID（预付费按带宽结算）、TRAFFIC_POSTPAID_BY_HOUR（流量按小时后付费）、BANDWIDTH_POSTPAID_BY_HOUR（带宽按小时后付费）、BANDWIDTH_PACKAGE（带宽包用户）。默认取值：非带宽包用户默认与子机付费类型保持一致。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。默认值：0Mbps。不同机型带宽上限范围不一致，具体限制详见购买网络带宽。
        # @type InternetMaxBandwidthOut: Integer
        # @param PublicIpAssigned: 是否分配公网IP。取值范围：true（表示分配公网IP）/false（表示不分配公网IP）。当公网带宽大于0Mbps时，可自由选择开通与否，默认开通公网IP；当公网带宽为0，则不允许分配公网IP。该参数仅在 RunInstances 接口中作为入参使用。
        # @type PublicIpAssigned: Boolean
        # @param InternetServiceProvider: 网络模式：移动:"CMCC"、电信:"CTCC"、联通:"CUCC"。
        # @type InternetServiceProvider: String

        attr_accessor :InternetChargeType, :InternetMaxBandwidthOut, :PublicIpAssigned, :InternetServiceProvider

        def initialize(internetchargetype=nil, internetmaxbandwidthout=nil, publicipassigned=nil, internetserviceprovider=nil)
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @PublicIpAssigned = publicipassigned
          @InternetServiceProvider = internetserviceprovider
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @PublicIpAssigned = params['PublicIpAssigned']
          @InternetServiceProvider = params['InternetServiceProvider']
        end
      end

      # 描述了实例登录相关配置与信息。
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：Linux 实例密码必须 8-30 位，推荐使用 12 位以上密码，不能以"/"开头，至少包含以下字符中的三种不同字符，字符种类：小写字母 a-z、大写字母 A-Z、数字 0-9、特殊字符 ()`~!@#$%^&*-+=_|{}[]:;'<>,.?/。Windows 实例密码必须 12-30 位，不能以"/"开头且不包括用户名，至少包含以下字符中的三种不同字符，字符种类：小写字母 a-z、大写字母 A-Z、数字 0-9、特殊字符 ()`~!@#$%^&*-+=_|{}[]:;' <>,.?/。若不指定该参数，则由系统随机生成密码，并通过站内信方式通知到用户。
        # @type Password: String
        # @param KeyIds: 密钥ID列表。关联密钥后，就可以通过对应的私钥来访问实例；KeyId可通过接口 [DescribeKeyPairs](https://cloud.tencent.com/document/api/213/15699) 获取，密钥与密码不能同时指定，同时Windows操作系统不支持指定密钥。当前仅支持购买的时候指定一个密钥。
        # @type KeyIds: Array
        # @param KeepImageLogin: 保持镜像的原始设置。该参数与 Password 或 KeyIds.N 不能同时指定。只有使用自定义镜像、共享镜像或外部导入镜像创建实例时才能指定该参数为 TRUE。取值范围：TRUE（表示保持镜像的登录设置）/FALSE（表示不保持镜像的登录设置）。默认取值：FALSE。
        # @type KeepImageLogin: String

        attr_accessor :Password, :KeyIds, :KeepImageLogin

        def initialize(password=nil, keyids=nil, keepimagelogin=nil)
          @Password = password
          @KeyIds = keyids
          @KeepImageLogin = keepimagelogin
        end

        def deserialize(params)
          @Password = params['Password']
          @KeyIds = params['KeyIds']
          @KeepImageLogin = params['KeepImageLogin']
        end
      end

      # ModifyAutoBackupPolicyAttribute请求参数结构体
      class ModifyAutoBackupPolicyAttributeRequest < TencentCloud::Common::AbstractModel
        # @param AutoBackupPolicyId: 备份策略id
        # @type AutoBackupPolicyId: String
        # @param Policy: 定期备份的执行策略。
        # @type Policy: Array
        # @param IsPermanent: 通过该定期备份策略创建的备份是否永久保留。false表示非永久保留，true表示永久保留，默认为false。
        # @type IsPermanent: Boolean
        # @param AutoBackupPolicyName: 定期备份策略的名称。
        # @type AutoBackupPolicyName: String
        # @param IsActivated: 是否激活定期备份策略。
        # @type IsActivated: Boolean
        # @param RetentionDays: 通过定期备份策略创建出的备份保留时间。
        # @type RetentionDays: Integer
        # @param RetentionMonths: 该定期备份策略创建的备份可以保留的月数，该参数不可与IsPermanent/RetentionDays参数冲突。
        # @type RetentionMonths: Integer
        # @param RetentionAmount: 通过该定期备份策略最多保留的备份个数，超过该个数限制后自动删除最先创建的备份，该参数不可与IsPermanent参数冲突。
        # @type RetentionAmount: Integer
        # @param StorageType: 备份存储类型。SNAPSHOT表示走快照（不需要备份库），VAULT表示走备份库（必须关联一个备份库）。默认为SNAPSHOT
        # @type StorageType: String
        # @param VaultId: 备份库ID，创建agent备份策略时必须指定。当StorageType为VAULT时必传。
        # @type VaultId: String
        # @param AdvancedRetentionPolicy: 定期备份高级保留策略，该参数不可与IsPermanent参数冲突。
        # @type AdvancedRetentionPolicy: :class:`Tencentcloud::Bdrc.v20260330.models.AdvancedRetentionPolicy`

        attr_accessor :AutoBackupPolicyId, :Policy, :IsPermanent, :AutoBackupPolicyName, :IsActivated, :RetentionDays, :RetentionMonths, :RetentionAmount, :StorageType, :VaultId, :AdvancedRetentionPolicy

        def initialize(autobackuppolicyid=nil, policy=nil, ispermanent=nil, autobackuppolicyname=nil, isactivated=nil, retentiondays=nil, retentionmonths=nil, retentionamount=nil, storagetype=nil, vaultid=nil, advancedretentionpolicy=nil)
          @AutoBackupPolicyId = autobackuppolicyid
          @Policy = policy
          @IsPermanent = ispermanent
          @AutoBackupPolicyName = autobackuppolicyname
          @IsActivated = isactivated
          @RetentionDays = retentiondays
          @RetentionMonths = retentionmonths
          @RetentionAmount = retentionamount
          @StorageType = storagetype
          @VaultId = vaultid
          @AdvancedRetentionPolicy = advancedretentionpolicy
        end

        def deserialize(params)
          @AutoBackupPolicyId = params['AutoBackupPolicyId']
          unless params['Policy'].nil?
            @Policy = []
            params['Policy'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @Policy << policy_tmp
            end
          end
          @IsPermanent = params['IsPermanent']
          @AutoBackupPolicyName = params['AutoBackupPolicyName']
          @IsActivated = params['IsActivated']
          @RetentionDays = params['RetentionDays']
          @RetentionMonths = params['RetentionMonths']
          @RetentionAmount = params['RetentionAmount']
          @StorageType = params['StorageType']
          @VaultId = params['VaultId']
          unless params['AdvancedRetentionPolicy'].nil?
            @AdvancedRetentionPolicy = AdvancedRetentionPolicy.new
            @AdvancedRetentionPolicy.deserialize(params['AdvancedRetentionPolicy'])
          end
        end
      end

      # ModifyAutoBackupPolicyAttribute返回参数结构体
      class ModifyAutoBackupPolicyAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupAttribute请求参数结构体
      class ModifyBackupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份ID。该字段的取值取决于ResourceType：当ResourceType=CVM（默认）时，需传入备份组ID（BackupGroupId），可通过DescribeBackupGroups（查询备份组列表）查询
        # @type BackupId: String
        # @param BackupName: 备份的名称。
        # @type BackupName: String
        # @param IsPermanent: 是否为永久保留的备份。
        # @type IsPermanent: Boolean
        # @param Deadline: 备份到期时间。
        # @type Deadline: String

        attr_accessor :BackupId, :BackupName, :IsPermanent, :Deadline

        def initialize(backupid=nil, backupname=nil, ispermanent=nil, deadline=nil)
          @BackupId = backupid
          @BackupName = backupname
          @IsPermanent = ispermanent
          @Deadline = deadline
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          @BackupName = params['BackupName']
          @IsPermanent = params['IsPermanent']
          @Deadline = params['Deadline']
        end
      end

      # ModifyBackupAttribute返回参数结构体
      class ModifyBackupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupVaultAttribute请求参数结构体
      class ModifyBackupVaultAttributeRequest < TencentCloud::Common::AbstractModel
        # @param VaultId: 备份库ID
        # @type VaultId: String
        # @param VaultName: 备份库名称
        # @type VaultName: String
        # @param Description: 备份库描述
        # @type Description: String

        attr_accessor :VaultId, :VaultName, :Description

        def initialize(vaultid=nil, vaultname=nil, description=nil)
          @VaultId = vaultid
          @VaultName = vaultname
          @Description = description
        end

        def deserialize(params)
          @VaultId = params['VaultId']
          @VaultName = params['VaultName']
          @Description = params['Description']
        end
      end

      # ModifyBackupVaultAttribute返回参数结构体
      class ModifyBackupVaultAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCopyPairAttribute请求参数结构体
      class ModifyCopyPairAttributeRequest < TencentCloud::Common::AbstractModel
        # @param CopyPairId: 要修改属性的复制对id
        # @type CopyPairId: String
        # @param CopyPairType: 要修改的复制对类型，可选值：DISK、INSTANCE、CFS，默认 INSTANCE
        # @type CopyPairType: String
        # @param CopyPairName: 修改复制对名称（长度最大支持 64 个字符）
        # @type CopyPairName: String

        attr_accessor :CopyPairId, :CopyPairType, :CopyPairName

        def initialize(copypairid=nil, copypairtype=nil, copypairname=nil)
          @CopyPairId = copypairid
          @CopyPairType = copypairtype
          @CopyPairName = copypairname
        end

        def deserialize(params)
          @CopyPairId = params['CopyPairId']
          @CopyPairType = params['CopyPairType']
          @CopyPairName = params['CopyPairName']
        end
      end

      # ModifyCopyPairAttribute返回参数结构体
      class ModifyCopyPairAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDrillGroupAttribute请求参数结构体
      class ModifyDrillGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DrillGroupId: 要修改属性的容灾演练组id。
        # @type DrillGroupId: String
        # @param DrillGroupName: 修改容灾演练组名称（长度最大支持 64 个字符）
        # @type DrillGroupName: String

        attr_accessor :DrillGroupId, :DrillGroupName

        def initialize(drillgroupid=nil, drillgroupname=nil)
          @DrillGroupId = drillgroupid
          @DrillGroupName = drillgroupname
        end

        def deserialize(params)
          @DrillGroupId = params['DrillGroupId']
          @DrillGroupName = params['DrillGroupName']
        end
      end

      # ModifyDrillGroupAttribute返回参数结构体
      class ModifyDrillGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDrillPairAttribute请求参数结构体
      class ModifyDrillPairAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DrillPairId: 要修改属性的容灾演练对id
        # @type DrillPairId: String
        # @param DrillPairName: 修改容灾演练对名称（长度最大支持 64 个字符）
        # @type DrillPairName: String

        attr_accessor :DrillPairId, :DrillPairName

        def initialize(drillpairid=nil, drillpairname=nil)
          @DrillPairId = drillpairid
          @DrillPairName = drillpairname
        end

        def deserialize(params)
          @DrillPairId = params['DrillPairId']
          @DrillPairName = params['DrillPairName']
        end
      end

      # ModifyDrillPairAttribute返回参数结构体
      class ModifyDrillPairAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFileBackupAttribute请求参数结构体
      class ModifyFileBackupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param BackupId: 备份ID
        # @type BackupId: String
        # @param BackupName: 备份的名称。
        # @type BackupName: String
        # @param IsPermanent: 是否为永久保留的备份。
        # @type IsPermanent: Boolean
        # @param Deadline: 备份到期时间。
        # @type Deadline: String

        attr_accessor :BackupId, :BackupName, :IsPermanent, :Deadline

        def initialize(backupid=nil, backupname=nil, ispermanent=nil, deadline=nil)
          @BackupId = backupid
          @BackupName = backupname
          @IsPermanent = ispermanent
          @Deadline = deadline
        end

        def deserialize(params)
          @BackupId = params['BackupId']
          @BackupName = params['BackupName']
          @IsPermanent = params['IsPermanent']
          @Deadline = params['Deadline']
        end
      end

      # ModifyFileBackupAttribute返回参数结构体
      class ModifyFileBackupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFileBackupPlan请求参数结构体
      class ModifyFileBackupPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 备份计划ID
        # @type PlanId: String
        # @param PolicyId: 备份策略ID
        # @type PolicyId: String
        # @param PlanName: 计划名称
        # @type PlanName: String
        # @param BackupPaths: 备份路径列表，1~20 个
        # @type BackupPaths: Array
        # @param IncludeFileTypes: 包含文件类型，0~20 个
        # @type IncludeFileTypes: Array
        # @param ExcludePatterns: 排除文件路径列表，0~20 个
        # @type ExcludePatterns: Array
        # @param ExcludeSystemDirectories: 是否排除系统目录
        # @type ExcludeSystemDirectories: Boolean
        # @param BackupStorageId: 备份库ID
        # @type BackupStorageId: String
        # @param Status: 计划状态，可选值：normal（正常）、paused（暂停）
        # @type Status: String

        attr_accessor :PlanId, :PolicyId, :PlanName, :BackupPaths, :IncludeFileTypes, :ExcludePatterns, :ExcludeSystemDirectories, :BackupStorageId, :Status
        extend Gem::Deprecate
        deprecate :PolicyId, :none, 2026, 8
        deprecate :PolicyId=, :none, 2026, 8
        deprecate :BackupStorageId, :none, 2026, 8
        deprecate :BackupStorageId=, :none, 2026, 8

        def initialize(planid=nil, policyid=nil, planname=nil, backuppaths=nil, includefiletypes=nil, excludepatterns=nil, excludesystemdirectories=nil, backupstorageid=nil, status=nil)
          @PlanId = planid
          @PolicyId = policyid
          @PlanName = planname
          @BackupPaths = backuppaths
          @IncludeFileTypes = includefiletypes
          @ExcludePatterns = excludepatterns
          @ExcludeSystemDirectories = excludesystemdirectories
          @BackupStorageId = backupstorageid
          @Status = status
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PolicyId = params['PolicyId']
          @PlanName = params['PlanName']
          @BackupPaths = params['BackupPaths']
          @IncludeFileTypes = params['IncludeFileTypes']
          @ExcludePatterns = params['ExcludePatterns']
          @ExcludeSystemDirectories = params['ExcludeSystemDirectories']
          @BackupStorageId = params['BackupStorageId']
          @Status = params['Status']
        end
      end

      # ModifyFileBackupPlan返回参数结构体
      class ModifyFileBackupPlanResponse < TencentCloud::Common::AbstractModel
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

      # ModifyProtectGroupAttribute请求参数结构体
      class ModifyProtectGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ProtectGroupId: 要修改属性的保护组id
        # @type ProtectGroupId: String
        # @param ProtectGroupName: 保护组名称
        # @type ProtectGroupName: String

        attr_accessor :ProtectGroupId, :ProtectGroupName

        def initialize(protectgroupid=nil, protectgroupname=nil)
          @ProtectGroupId = protectgroupid
          @ProtectGroupName = protectgroupname
        end

        def deserialize(params)
          @ProtectGroupId = params['ProtectGroupId']
          @ProtectGroupName = params['ProtectGroupName']
        end
      end

      # ModifyProtectGroupAttribute返回参数结构体
      class ModifyProtectGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySitePairAttribute请求参数结构体
      class ModifySitePairAttributeRequest < TencentCloud::Common::AbstractModel
        # @param SitePairId: 要修改属性的容灾站点id
        # @type SitePairId: String
        # @param SitePairName: 容灾站点名称
        # @type SitePairName: String

        attr_accessor :SitePairId, :SitePairName

        def initialize(sitepairid=nil, sitepairname=nil)
          @SitePairId = sitepairid
          @SitePairName = sitepairname
        end

        def deserialize(params)
          @SitePairId = params['SitePairId']
          @SitePairName = params['SitePairName']
        end
      end

      # ModifySitePairAttribute返回参数结构体
      class ModifySitePairAttributeResponse < TencentCloud::Common::AbstractModel
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

      # 描述了实例的抽象位置，包括其所在的可用区，所属的项目，宿主机等（仅CDH产品可用）
      class Placement < TencentCloud::Common::AbstractModel
        # @param Zone: 实例所属的可用区 ID。该参数也可以通过调用 [DescribeZones]的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param ProjectId: 实例所属项目ID。
        # @type ProjectId: Integer
        # @param HostId: 实例所属的专用宿主机ID列表。如果您有购买专用宿主机并且指定了该参数，则您购买的实例就会随机的部署在这些专用宿主机上。仅用于出参，当前暂不支持。
        # @type HostId: String
        # @param HostIds: 实例所属的专用宿主机ID列表，仅用于入参。如果您有购买专用宿主机并且指定了该参数，则您购买的实例就会随机的部署在这些专用宿主机上。
        # @type HostIds: Array
        # @param ProjectName: 实例所属项目名。
        # @type ProjectName: String

        attr_accessor :Zone, :ProjectId, :HostId, :HostIds, :ProjectName

        def initialize(zone=nil, projectid=nil, hostid=nil, hostids=nil, projectname=nil)
          @Zone = zone
          @ProjectId = projectid
          @HostId = hostid
          @HostIds = hostids
          @ProjectName = projectname
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ProjectId = params['ProjectId']
          @HostId = params['HostId']
          @HostIds = params['HostIds']
          @ProjectName = params['ProjectName']
        end
      end

      # 备份计划详情
      class PlanInfo < TencentCloud::Common::AbstractModel
        # @param PlanId: 备份计划ID
        # @type PlanId: String
        # @param ResourceIds: 计划关联的实例ID
        # @type ResourceIds: Array
        # @param PlanName: 计划名称
        # @type PlanName: String
        # @param BackupPaths: 备份路径列表，1~20 个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BackupPaths: Array
        # @param IncludeFileTypes: 包含文件类型，0~20 个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IncludeFileTypes: Array
        # @param ExcludePatterns: 排除文件路径列表，0~20 个
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludePatterns: Array
        # @param ExcludeSystemDirectories: 是否排除系统目录
        # @type ExcludeSystemDirectories: Boolean
        # @param VaultId: 备份库ID
        # @type VaultId: String
        # @param Status: 备份计划状态
        # @type Status: String
        # @param AspId: 策略ID
        # @type AspId: String
        # @param AspName: 策略名称
        # @type AspName: String
        # @param AspPolicy: 策略详情
        # @type AspPolicy: :class:`Tencentcloud::Bdrc.v20260330.models.AspInfo`
        # @param LastExecuteTime: 最近一次执行时间
        # @type LastExecuteTime: String
        # @param NextTriggerTime: 下次触发时间
        # @type NextTriggerTime: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param LastTriggerError: 最近一次执行错误信息
        # @type LastTriggerError: String
        # @param BackupCount: 备份数量
        # @type BackupCount: Integer
        # @param FlowControlSettings: 流控信息
        # @type FlowControlSettings: Array

        attr_accessor :PlanId, :ResourceIds, :PlanName, :BackupPaths, :IncludeFileTypes, :ExcludePatterns, :ExcludeSystemDirectories, :VaultId, :Status, :AspId, :AspName, :AspPolicy, :LastExecuteTime, :NextTriggerTime, :CreatedTime, :LastTriggerError, :BackupCount, :FlowControlSettings

        def initialize(planid=nil, resourceids=nil, planname=nil, backuppaths=nil, includefiletypes=nil, excludepatterns=nil, excludesystemdirectories=nil, vaultid=nil, status=nil, aspid=nil, aspname=nil, asppolicy=nil, lastexecutetime=nil, nexttriggertime=nil, createdtime=nil, lasttriggererror=nil, backupcount=nil, flowcontrolsettings=nil)
          @PlanId = planid
          @ResourceIds = resourceids
          @PlanName = planname
          @BackupPaths = backuppaths
          @IncludeFileTypes = includefiletypes
          @ExcludePatterns = excludepatterns
          @ExcludeSystemDirectories = excludesystemdirectories
          @VaultId = vaultid
          @Status = status
          @AspId = aspid
          @AspName = aspname
          @AspPolicy = asppolicy
          @LastExecuteTime = lastexecutetime
          @NextTriggerTime = nexttriggertime
          @CreatedTime = createdtime
          @LastTriggerError = lasttriggererror
          @BackupCount = backupcount
          @FlowControlSettings = flowcontrolsettings
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @ResourceIds = params['ResourceIds']
          @PlanName = params['PlanName']
          @BackupPaths = params['BackupPaths']
          @IncludeFileTypes = params['IncludeFileTypes']
          @ExcludePatterns = params['ExcludePatterns']
          @ExcludeSystemDirectories = params['ExcludeSystemDirectories']
          @VaultId = params['VaultId']
          @Status = params['Status']
          @AspId = params['AspId']
          @AspName = params['AspName']
          unless params['AspPolicy'].nil?
            @AspPolicy = AspInfo.new
            @AspPolicy.deserialize(params['AspPolicy'])
          end
          @LastExecuteTime = params['LastExecuteTime']
          @NextTriggerTime = params['NextTriggerTime']
          @CreatedTime = params['CreatedTime']
          @LastTriggerError = params['LastTriggerError']
          @BackupCount = params['BackupCount']
          unless params['FlowControlSettings'].nil?
            @FlowControlSettings = []
            params['FlowControlSettings'].each do |i|
              flowcontrolrule_tmp = FlowControlRule.new
              flowcontrolrule_tmp.deserialize(i)
              @FlowControlSettings << flowcontrolrule_tmp
            end
          end
        end
      end

      # 备份的执行策略详情
      class Policy < TencentCloud::Common::AbstractModel
        # @param DayOfWeek: 选定周一到周日中需要创建备份的日期，取值范围：[0, 6]。0表示周日触发，1表示周一触发，依次类推。
        # @type DayOfWeek: Array
        # @param Hour: 指定定期备份策略的触发时间。单位为小时，取值范围：[0, 23]。00:00 ~ 23:00 共 24 个时间点可选，1表示 01:00，依此类推。
        # @type Hour: Array
        # @param DayOfMonth: 指定每月从月初到月底需要触发定期备份的日期,取值范围：[1, 31]，1-31分别表示每月的具体日期，比如5表示每月的5号。注：若设置29、30、31等部分月份不存在的日期，则对应不存在日期的月份会跳过不打定期备份。
        # @type DayOfMonth: Array
        # @param IntervalDays: 指定创建定期备份的间隔天数，取值范围：[1, 365]，例如设置为5，则间隔5天即触发定期备份创建。注：当选择按天备份时，理论上第一次备份的时间为备份策略创建当天。如果当天备份策略创建的时间已经晚于设置的备份时间，那么将会等到第二个备份周期再进行第一次备份。
        # @type IntervalDays: Integer

        attr_accessor :DayOfWeek, :Hour, :DayOfMonth, :IntervalDays

        def initialize(dayofweek=nil, hour=nil, dayofmonth=nil, intervaldays=nil)
          @DayOfWeek = dayofweek
          @Hour = hour
          @DayOfMonth = dayofmonth
          @IntervalDays = intervaldays
        end

        def deserialize(params)
          @DayOfWeek = params['DayOfWeek']
          @Hour = params['Hour']
          @DayOfMonth = params['DayOfMonth']
          @IntervalDays = params['IntervalDays']
        end
      end

      # 容灾保护组信息
      class ProtectGroup < TencentCloud::Common::AbstractModel
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param ProtectGroupId: 保护组ID
        # @type ProtectGroupId: String
        # @param ProtectGroupName: 保护组名称
        # @type ProtectGroupName: String
        # @param ProtectGroupType: 保护组类型（产品类型，如 DISK/CFS/INSTANCE）
        # @type ProtectGroupType: String
        # @param SitePairId: 所属容灾策略ID
        # @type SitePairId: String
        # @param SitePairName: 所属容灾策略名称
        # @type SitePairName: String
        # @param RecoveryPointObjective: RPO时间（单位秒）
        # @type RecoveryPointObjective: Integer
        # @param SourceRegion: 生产地域（当 DataDirection=REVERSE 时会与 TargetRegion 自动轮转，保持用户视角一致）
        # @type SourceRegion: String
        # @param SourceZone: 生产可用区（REVERSE 时与 TargetZone 自动轮转）
        # @type SourceZone: String
        # @param SourceVpc: 生产端VPC（REVERSE 时与 TargetVpc 自动轮转）
        # @type SourceVpc: String
        # @param TargetRegion: 容灾地域（REVERSE 时与 SourceRegion 自动轮转）
        # @type TargetRegion: String
        # @param TargetZone: 容灾可用区
        # @type TargetZone: String
        # @param TargetVpc: 容灾端VPC
        # @type TargetVpc: String
        # @param CopyType: 复制技术（SYN 同步 / ASY 异步）
        # @type CopyType: String
        # @param DisasterRecoveryType: 容灾类型（CROSS_ZONE 跨可用区 / CROSS_REGION 跨地域 / CROSS_CLOUD 跨云）
        # @type DisasterRecoveryType: String
        # @param DataDirection: 数据复制方向（POSITIVE 正向 / REVERSE 反向）
        # @type DataDirection: String
        # @param PeerCloudName: 跨云场景对端云名称（仅 DisasterRecoveryType=CROSS_CLOUD 时返回）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerCloudName: String
        # @param CreateFrom: 创建来源（LOCAL 本端创建 / PEER 对端创建）
        # @type CreateFrom: String
        # @param LifeState: 生命周期状态
        # @type LifeState: String
        # @param AccountUin: 创建保护组的账户主账号 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountUin: String
        # @param SubAccountUin: 创建保护组的子账号 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ModifyTime: 修改时间
        # @type ModifyTime: String
        # @param BindProtectedResourceCount: 绑定的已保护资源数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindProtectedResourceCount: Integer
        # @param ErrorRecoveryPointObjectiveCount: RPO 异常（超过 15 分钟未同步）的复制对数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorRecoveryPointObjectiveCount: Integer
        # @param ProtectedResourceStatusSet: 已保护资源状态统计，key 为复制对状态，value 为该状态下的资源数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectedResourceStatusSet: Array

        attr_accessor :AppId, :ProtectGroupId, :ProtectGroupName, :ProtectGroupType, :SitePairId, :SitePairName, :RecoveryPointObjective, :SourceRegion, :SourceZone, :SourceVpc, :TargetRegion, :TargetZone, :TargetVpc, :CopyType, :DisasterRecoveryType, :DataDirection, :PeerCloudName, :CreateFrom, :LifeState, :AccountUin, :SubAccountUin, :CreateTime, :ModifyTime, :BindProtectedResourceCount, :ErrorRecoveryPointObjectiveCount, :ProtectedResourceStatusSet

        def initialize(appid=nil, protectgroupid=nil, protectgroupname=nil, protectgrouptype=nil, sitepairid=nil, sitepairname=nil, recoverypointobjective=nil, sourceregion=nil, sourcezone=nil, sourcevpc=nil, targetregion=nil, targetzone=nil, targetvpc=nil, copytype=nil, disasterrecoverytype=nil, datadirection=nil, peercloudname=nil, createfrom=nil, lifestate=nil, accountuin=nil, subaccountuin=nil, createtime=nil, modifytime=nil, bindprotectedresourcecount=nil, errorrecoverypointobjectivecount=nil, protectedresourcestatusset=nil)
          @AppId = appid
          @ProtectGroupId = protectgroupid
          @ProtectGroupName = protectgroupname
          @ProtectGroupType = protectgrouptype
          @SitePairId = sitepairid
          @SitePairName = sitepairname
          @RecoveryPointObjective = recoverypointobjective
          @SourceRegion = sourceregion
          @SourceZone = sourcezone
          @SourceVpc = sourcevpc
          @TargetRegion = targetregion
          @TargetZone = targetzone
          @TargetVpc = targetvpc
          @CopyType = copytype
          @DisasterRecoveryType = disasterrecoverytype
          @DataDirection = datadirection
          @PeerCloudName = peercloudname
          @CreateFrom = createfrom
          @LifeState = lifestate
          @AccountUin = accountuin
          @SubAccountUin = subaccountuin
          @CreateTime = createtime
          @ModifyTime = modifytime
          @BindProtectedResourceCount = bindprotectedresourcecount
          @ErrorRecoveryPointObjectiveCount = errorrecoverypointobjectivecount
          @ProtectedResourceStatusSet = protectedresourcestatusset
        end

        def deserialize(params)
          @AppId = params['AppId']
          @ProtectGroupId = params['ProtectGroupId']
          @ProtectGroupName = params['ProtectGroupName']
          @ProtectGroupType = params['ProtectGroupType']
          @SitePairId = params['SitePairId']
          @SitePairName = params['SitePairName']
          @RecoveryPointObjective = params['RecoveryPointObjective']
          @SourceRegion = params['SourceRegion']
          @SourceZone = params['SourceZone']
          @SourceVpc = params['SourceVpc']
          @TargetRegion = params['TargetRegion']
          @TargetZone = params['TargetZone']
          @TargetVpc = params['TargetVpc']
          @CopyType = params['CopyType']
          @DisasterRecoveryType = params['DisasterRecoveryType']
          @DataDirection = params['DataDirection']
          @PeerCloudName = params['PeerCloudName']
          @CreateFrom = params['CreateFrom']
          @LifeState = params['LifeState']
          @AccountUin = params['AccountUin']
          @SubAccountUin = params['SubAccountUin']
          @CreateTime = params['CreateTime']
          @ModifyTime = params['ModifyTime']
          @BindProtectedResourceCount = params['BindProtectedResourceCount']
          @ErrorRecoveryPointObjectiveCount = params['ErrorRecoveryPointObjectiveCount']
          unless params['ProtectedResourceStatusSet'].nil?
            @ProtectedResourceStatusSet = []
            params['ProtectedResourceStatusSet'].each do |i|
              protectedresourcestatus_tmp = ProtectedResourceStatus.new
              protectedresourcestatus_tmp.deserialize(i)
              @ProtectedResourceStatusSet << protectedresourcestatus_tmp
            end
          end
        end
      end

      # 保护组操作掩码
      class ProtectGroupDeniedAction < TencentCloud::Common::AbstractModel
        # @param ProtectGroupId: 保护组ID
        # @type ProtectGroupId: String
        # @param DeniedActions: 被禁止的操作列表（Action名称数组）
        # @type DeniedActions: Array

        attr_accessor :ProtectGroupId, :DeniedActions

        def initialize(protectgroupid=nil, deniedactions=nil)
          @ProtectGroupId = protectgroupid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @ProtectGroupId = params['ProtectGroupId']
          unless params['DeniedActions'].nil?
            @DeniedActions = []
            params['DeniedActions'].each do |i|
              deniedaction_tmp = DeniedAction.new
              deniedaction_tmp.deserialize(i)
              @DeniedActions << deniedaction_tmp
            end
          end
        end
      end

      # 受保护实例信息
      class ProtectInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AgentId: 客户端ID
        # @type AgentId: String
        # @param AgentVersion: 客户端版本
        # @type AgentVersion: String
        # @param AgentStatus: 客户端状态
        # @type AgentStatus: String
        # @param LastHeartbeatTime: 最后心跳时间
        # @type LastHeartbeatTime: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param ExtraInfo: 最新备份点中记录的 CVM 基础信息
        # @type ExtraInfo: String
        # @param BackupCount: 该实例可用备份点数量
        # @type BackupCount: Integer
        # @param InstanceName: 实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param LatestBackupTime: 最近一次备份时间
        # @type LatestBackupTime: String
        # @param OfflineReason: 离线原因
        # @type OfflineReason: String

        attr_accessor :InstanceId, :AgentId, :AgentVersion, :AgentStatus, :LastHeartbeatTime, :CreatedTime, :ExtraInfo, :BackupCount, :InstanceName, :LatestBackupTime, :OfflineReason

        def initialize(instanceid=nil, agentid=nil, agentversion=nil, agentstatus=nil, lastheartbeattime=nil, createdtime=nil, extrainfo=nil, backupcount=nil, instancename=nil, latestbackuptime=nil, offlinereason=nil)
          @InstanceId = instanceid
          @AgentId = agentid
          @AgentVersion = agentversion
          @AgentStatus = agentstatus
          @LastHeartbeatTime = lastheartbeattime
          @CreatedTime = createdtime
          @ExtraInfo = extrainfo
          @BackupCount = backupcount
          @InstanceName = instancename
          @LatestBackupTime = latestbackuptime
          @OfflineReason = offlinereason
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AgentId = params['AgentId']
          @AgentVersion = params['AgentVersion']
          @AgentStatus = params['AgentStatus']
          @LastHeartbeatTime = params['LastHeartbeatTime']
          @CreatedTime = params['CreatedTime']
          @ExtraInfo = params['ExtraInfo']
          @BackupCount = params['BackupCount']
          @InstanceName = params['InstanceName']
          @LatestBackupTime = params['LatestBackupTime']
          @OfflineReason = params['OfflineReason']
        end
      end

      # 受保护资源信息
      class ProtectedResource < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型（与请求 SitePairType 一致，如 DISK/CFS/INSTANCE）
        # @type ResourceType: String
        # @param ResourceIdSet: 该类型下被保护的源端资源ID列表（DISK:disk-xxx / CFS:cfs-xxx / INSTANCE:ins-xxx）
        # @type ResourceIdSet: Array

        attr_accessor :ResourceType, :ResourceIdSet

        def initialize(resourcetype=nil, resourceidset=nil)
          @ResourceType = resourcetype
          @ResourceIdSet = resourceidset
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceIdSet = params['ResourceIdSet']
        end
      end

      # 受保护资源概览
      class ProtectedResourceOverview < TencentCloud::Common::AbstractModel
        # @param TotalProtectedCount: 受保护资源总数
        # @type TotalProtectedCount: Integer
        # @param TotalResourceCount: 总资源数
        # @type TotalResourceCount: Integer
        # @param Cvm: CVM 受保护统计
        # @type Cvm: :class:`Tencentcloud::Bdrc.v20260330.models.ResourceProtectStat`
        # @param CFS: CFS 受保护统计
        # @type CFS: :class:`Tencentcloud::Bdrc.v20260330.models.ResourceProtectStat`

        attr_accessor :TotalProtectedCount, :TotalResourceCount, :Cvm, :CFS

        def initialize(totalprotectedcount=nil, totalresourcecount=nil, cvm=nil, cfs=nil)
          @TotalProtectedCount = totalprotectedcount
          @TotalResourceCount = totalresourcecount
          @Cvm = cvm
          @CFS = cfs
        end

        def deserialize(params)
          @TotalProtectedCount = params['TotalProtectedCount']
          @TotalResourceCount = params['TotalResourceCount']
          unless params['Cvm'].nil?
            @Cvm = ResourceProtectStat.new
            @Cvm.deserialize(params['Cvm'])
          end
          unless params['CFS'].nil?
            @CFS = ResourceProtectStat.new
            @CFS.deserialize(params['CFS'])
          end
        end
      end

      # 保护资源类型个数统计
      class ProtectedResourceStatus < TencentCloud::Common::AbstractModel
        # @param Status: 状态
        # @type Status: String
        # @param Count: 数量
        # @type Count: Integer

        attr_accessor :Status, :Count

        def initialize(status=nil, count=nil)
          @Status = status
          @Count = count
        end

        def deserialize(params)
          @Status = params['Status']
          @Count = params['Count']
        end
      end

      # ReportAgentMetrics请求参数结构体
      class ReportAgentMetricsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ReportAgentMetrics返回参数结构体
      class ReportAgentMetricsResponse < TencentCloud::Common::AbstractModel
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

      # ReportGatewayHeartbeat请求参数结构体
      class ReportGatewayHeartbeatRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ReportGatewayHeartbeat返回参数结构体
      class ReportGatewayHeartbeatResponse < TencentCloud::Common::AbstractModel
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

      # ReportJobProgress请求参数结构体
      class ReportJobProgressRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # ReportJobProgress返回参数结构体
      class ReportJobProgressResponse < TencentCloud::Common::AbstractModel
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

      # 实例Id与备份计划映射信息
      class ResourcePlan < TencentCloud::Common::AbstractModel
        # @param ResourceId: 云服务器实例 ID
        # @type ResourceId: String
        # @param BackupPaths: 备份路径，[0,20]
        # @type BackupPaths: Array
        # @param IncludeFileTypes: 包含文件类型，[0,20]
        # @type IncludeFileTypes: Array
        # @param ExcludePatterns: 排除路径，[0,20]
        # @type ExcludePatterns: Array
        # @param ExcludeSystemDirectories: 是否排除系统目录
        # @type ExcludeSystemDirectories: Boolean
        # @param ExecuteImmediately: 是否立即触发全量备份
        # @type ExecuteImmediately: Boolean

        attr_accessor :ResourceId, :BackupPaths, :IncludeFileTypes, :ExcludePatterns, :ExcludeSystemDirectories, :ExecuteImmediately

        def initialize(resourceid=nil, backuppaths=nil, includefiletypes=nil, excludepatterns=nil, excludesystemdirectories=nil, executeimmediately=nil)
          @ResourceId = resourceid
          @BackupPaths = backuppaths
          @IncludeFileTypes = includefiletypes
          @ExcludePatterns = excludepatterns
          @ExcludeSystemDirectories = excludesystemdirectories
          @ExecuteImmediately = executeimmediately
        end

        def deserialize(params)
          @ResourceId = params['ResourceId']
          @BackupPaths = params['BackupPaths']
          @IncludeFileTypes = params['IncludeFileTypes']
          @ExcludePatterns = params['ExcludePatterns']
          @ExcludeSystemDirectories = params['ExcludeSystemDirectories']
          @ExecuteImmediately = params['ExecuteImmediately']
        end
      end

      # 产品受保护统计信息
      class ResourceProtectStat < TencentCloud::Common::AbstractModel
        # @param ProtectedCount: 受保护资源数
        # @type ProtectedCount: Integer
        # @param TotalCount: 资源总数
        # @type TotalCount: Integer

        attr_accessor :ProtectedCount, :TotalCount

        def initialize(protectedcount=nil, totalcount=nil)
          @ProtectedCount = protectedcount
          @TotalCount = totalcount
        end

        def deserialize(params)
          @ProtectedCount = params['ProtectedCount']
          @TotalCount = params['TotalCount']
        end
      end

      # 恢复任务信息
      class RestoreTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 恢复任务 ID
        # @type TaskId: String
        # @param BackupId: 关联备份点 ID
        # @type BackupId: String
        # @param ResourceId: 源实例 ID
        # @type ResourceId: String
        # @param TargetResourceId: 目标实例 ID
        # @type TargetResourceId: String
        # @param RestorePaths: 恢复路径列表
        # @type RestorePaths: Array
        # @param TargetLocation: 目标恢复位置
        # @type TargetLocation: String
        # @param Status: 任务状态
        # @type Status: String
        # @param TotalFileCount: 需恢复文件总数
        # @type TotalFileCount: Integer
        # @param TotalSize: 需恢复数据总量（字节）
        # @type TotalSize: Integer
        # @param TotalSizeFormatted: 需恢复数据总量（格式化，如 "1.5 GB"）
        # @type TotalSizeFormatted: String
        # @param RestoreFileCount: 已恢复文件数
        # @type RestoreFileCount: Integer
        # @param RestoreSize: 已恢复数据量（字节）
        # @type RestoreSize: Integer
        # @param RestoreSizeFormatted: 已恢复数据量（格式化）
        # @type RestoreSizeFormatted: String
        # @param Progress: 恢复进度（0-100）
        # @type Progress: Float
        # @param JobId: 关联 Job ID
        # @type JobId: String
        # @param StartTime: 任务开始时间（ISO 格式）
        # @type StartTime: String
        # @param EndTime: 任务结束时间
        # @type EndTime: String
        # @param CreatedTime: 任务创建时间
        # @type CreatedTime: String
        # @param FailReason: 恢复任务失败原因
        # @type FailReason: String
        # @param ConflictStrategy: 冲突处理策略：skip-跳过/overwrite-覆盖/newer-保留最新版本/if_changed-内容变化时覆盖
        # @type ConflictStrategy: String

        attr_accessor :TaskId, :BackupId, :ResourceId, :TargetResourceId, :RestorePaths, :TargetLocation, :Status, :TotalFileCount, :TotalSize, :TotalSizeFormatted, :RestoreFileCount, :RestoreSize, :RestoreSizeFormatted, :Progress, :JobId, :StartTime, :EndTime, :CreatedTime, :FailReason, :ConflictStrategy

        def initialize(taskid=nil, backupid=nil, resourceid=nil, targetresourceid=nil, restorepaths=nil, targetlocation=nil, status=nil, totalfilecount=nil, totalsize=nil, totalsizeformatted=nil, restorefilecount=nil, restoresize=nil, restoresizeformatted=nil, progress=nil, jobid=nil, starttime=nil, endtime=nil, createdtime=nil, failreason=nil, conflictstrategy=nil)
          @TaskId = taskid
          @BackupId = backupid
          @ResourceId = resourceid
          @TargetResourceId = targetresourceid
          @RestorePaths = restorepaths
          @TargetLocation = targetlocation
          @Status = status
          @TotalFileCount = totalfilecount
          @TotalSize = totalsize
          @TotalSizeFormatted = totalsizeformatted
          @RestoreFileCount = restorefilecount
          @RestoreSize = restoresize
          @RestoreSizeFormatted = restoresizeformatted
          @Progress = progress
          @JobId = jobid
          @StartTime = starttime
          @EndTime = endtime
          @CreatedTime = createdtime
          @FailReason = failreason
          @ConflictStrategy = conflictstrategy
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @BackupId = params['BackupId']
          @ResourceId = params['ResourceId']
          @TargetResourceId = params['TargetResourceId']
          @RestorePaths = params['RestorePaths']
          @TargetLocation = params['TargetLocation']
          @Status = params['Status']
          @TotalFileCount = params['TotalFileCount']
          @TotalSize = params['TotalSize']
          @TotalSizeFormatted = params['TotalSizeFormatted']
          @RestoreFileCount = params['RestoreFileCount']
          @RestoreSize = params['RestoreSize']
          @RestoreSizeFormatted = params['RestoreSizeFormatted']
          @Progress = params['Progress']
          @JobId = params['JobId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @CreatedTime = params['CreatedTime']
          @FailReason = params['FailReason']
          @ConflictStrategy = params['ConflictStrategy']
        end
      end

      # RunCopyPairTasks请求参数结构体
      class RunCopyPairTasksRequest < TencentCloud::Common::AbstractModel
        # @param CopyPairIds: 复制对ID列表
        # @type CopyPairIds: Array
        # @param CopyPairType: 要启动复制对的类型（DISK/INSTANCE/CFS）
        # @type CopyPairType: String

        attr_accessor :CopyPairIds, :CopyPairType

        def initialize(copypairids=nil, copypairtype=nil)
          @CopyPairIds = copypairids
          @CopyPairType = copypairtype
        end

        def deserialize(params)
          @CopyPairIds = params['CopyPairIds']
          @CopyPairType = params['CopyPairType']
        end
      end

      # RunCopyPairTasks返回参数结构体
      class RunCopyPairTasksResponse < TencentCloud::Common::AbstractModel
        # @param CopyPairIds: 已启动复制任务的复制对ID列表
        # @type CopyPairIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CopyPairIds, :RequestId

        def initialize(copypairids=nil, requestid=nil)
          @CopyPairIds = copypairids
          @RequestId = requestid
        end

        def deserialize(params)
          @CopyPairIds = params['CopyPairIds']
          @RequestId = params['RequestId']
        end
      end

      # RunFailoverCopyPairs请求参数结构体
      class RunFailoverCopyPairsRequest < TencentCloud::Common::AbstractModel
        # @param CopyPairIds: 复制对ID列表
        # @type CopyPairIds: Array
        # @param CopyPairType: 复制对类型，枚举值：DISK / INSTANCE / CFS。
        # @type CopyPairType: String
        # @param FailoverType: 切换类型，支持WAIT和NOW
        # @type FailoverType: String

        attr_accessor :CopyPairIds, :CopyPairType, :FailoverType

        def initialize(copypairids=nil, copypairtype=nil, failovertype=nil)
          @CopyPairIds = copypairids
          @CopyPairType = copypairtype
          @FailoverType = failovertype
        end

        def deserialize(params)
          @CopyPairIds = params['CopyPairIds']
          @CopyPairType = params['CopyPairType']
          @FailoverType = params['FailoverType']
        end
      end

      # RunFailoverCopyPairs返回参数结构体
      class RunFailoverCopyPairsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 故障切换任务ID
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # RunInstancesWithBackupGroup请求参数结构体
      class RunInstancesWithBackupGroupRequest < TencentCloud::Common::AbstractModel
        # @param BackupGroupId: 备份组ID
        # @type BackupGroupId: String

        attr_accessor :BackupGroupId

        def initialize(backupgroupid=nil)
          @BackupGroupId = backupgroupid
        end

        def deserialize(params)
          @BackupGroupId = params['BackupGroupId']
        end
      end

      # RunInstancesWithBackupGroup返回参数结构体
      class RunInstancesWithBackupGroupResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 创建的实例ID
        # @type InstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceIdSet, :RequestId

        def initialize(instanceidset=nil, requestid=nil)
          @InstanceIdSet = instanceidset
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 描述了 “云安全” 服务相关的信息
      class RunSecurityServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启该服务。取值范围：TRUE（开启）/FALSE（不开启）。默认取值：TRUE。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # 安全组映射详情
      class SecurityGroupMapping < TencentCloud::Common::AbstractModel
        # @param SecurityGroupMappingId: 安全组映射ID
        # @type SecurityGroupMappingId: String
        # @param SitePairId: 安全组映射所属的站点对ID
        # @type SitePairId: String
        # @param SourceSecurityGroupId: 生产端安全组ID
        # @type SourceSecurityGroupId: String
        # @param TargetSecurityGroupId: 容灾端安全组ID
        # @type TargetSecurityGroupId: String
        # @param LifeState: 安全组映射的生命状态；NORMAL:正常。
        # @type LifeState: String

        attr_accessor :SecurityGroupMappingId, :SitePairId, :SourceSecurityGroupId, :TargetSecurityGroupId, :LifeState

        def initialize(securitygroupmappingid=nil, sitepairid=nil, sourcesecuritygroupid=nil, targetsecuritygroupid=nil, lifestate=nil)
          @SecurityGroupMappingId = securitygroupmappingid
          @SitePairId = sitepairid
          @SourceSecurityGroupId = sourcesecuritygroupid
          @TargetSecurityGroupId = targetsecuritygroupid
          @LifeState = lifestate
        end

        def deserialize(params)
          @SecurityGroupMappingId = params['SecurityGroupMappingId']
          @SitePairId = params['SitePairId']
          @SourceSecurityGroupId = params['SourceSecurityGroupId']
          @TargetSecurityGroupId = params['TargetSecurityGroupId']
          @LifeState = params['LifeState']
        end
      end

      # 站点对信息
      class SitePair < TencentCloud::Common::AbstractModel
        # @param AppId: 用户AppId
        # @type AppId: Integer
        # @param SitePairId: 容灾策略ID
        # @type SitePairId: String
        # @param SitePairName: 容灾策略名称
        # @type SitePairName: String
        # @param SitePairType: 容灾策略类型（产品类型，如 DISK/CFS/INSTANCE 等）
        # @type SitePairType: String
        # @param SitePairState: 容灾策略状态
        # @type SitePairState: String
        # @param SourceRegion: 生产地域
        # @type SourceRegion: String
        # @param SourceZone: 生产可用区
        # @type SourceZone: String
        # @param TargetRegion: 容灾地域
        # @type TargetRegion: String
        # @param TargetZone: 容灾可用区
        # @type TargetZone: String
        # @param SourceVpc: 生产端VPC
        # @type SourceVpc: String
        # @param TargetVpc: 容灾端VPC
        # @type TargetVpc: String
        # @param CopyType: 复制技术（SYN 同步 / ASY 异步）
        # @type CopyType: String
        # @param DisasterRecoveryType: 容灾类型（CROSS_ZONE 跨可用区 / CROSS_REGION 跨地域 / CROSS_CLOUD 跨云）
        # @type DisasterRecoveryType: String
        # @param CreateFrom: 创建来源（LOCAL 本端创建 / PEER 对端创建）
        # @type CreateFrom: String
        # @param AccountUin: 创建容灾策略的账户主账号 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountUin: String
        # @param SubAccountUin: 创建容灾策略的子账户 Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param BindProtectGroupCount: 已绑定的保护组数量
        # @type BindProtectGroupCount: Integer
        # @param ErrorRecoveryPointObjectiveCopyPairSet: RPO 异常的复制对ID列表（最近一次保护点距今超过15分钟的复制对）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorRecoveryPointObjectiveCopyPairSet: Array
        # @param ProtectedResourceSet: 已保护的资源列表（按资源类型分组）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectedResourceSet: Array
        # @param ProtectedResourceStatusSet: 已保护资源的状态统计，key 为复制对状态，value 为该状态下的资源数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectedResourceStatusSet: Array
        # @param CrossCloudDetails: 跨云场景下的额外信息（仅 IsCrossCloud=true 时返回，非跨云为 null）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrossCloudDetails: :class:`Tencentcloud::Bdrc.v20260330.models.CrossCloudDetails`

        attr_accessor :AppId, :SitePairId, :SitePairName, :SitePairType, :SitePairState, :SourceRegion, :SourceZone, :TargetRegion, :TargetZone, :SourceVpc, :TargetVpc, :CopyType, :DisasterRecoveryType, :CreateFrom, :AccountUin, :SubAccountUin, :CreateTime, :BindProtectGroupCount, :ErrorRecoveryPointObjectiveCopyPairSet, :ProtectedResourceSet, :ProtectedResourceStatusSet, :CrossCloudDetails

        def initialize(appid=nil, sitepairid=nil, sitepairname=nil, sitepairtype=nil, sitepairstate=nil, sourceregion=nil, sourcezone=nil, targetregion=nil, targetzone=nil, sourcevpc=nil, targetvpc=nil, copytype=nil, disasterrecoverytype=nil, createfrom=nil, accountuin=nil, subaccountuin=nil, createtime=nil, bindprotectgroupcount=nil, errorrecoverypointobjectivecopypairset=nil, protectedresourceset=nil, protectedresourcestatusset=nil, crossclouddetails=nil)
          @AppId = appid
          @SitePairId = sitepairid
          @SitePairName = sitepairname
          @SitePairType = sitepairtype
          @SitePairState = sitepairstate
          @SourceRegion = sourceregion
          @SourceZone = sourcezone
          @TargetRegion = targetregion
          @TargetZone = targetzone
          @SourceVpc = sourcevpc
          @TargetVpc = targetvpc
          @CopyType = copytype
          @DisasterRecoveryType = disasterrecoverytype
          @CreateFrom = createfrom
          @AccountUin = accountuin
          @SubAccountUin = subaccountuin
          @CreateTime = createtime
          @BindProtectGroupCount = bindprotectgroupcount
          @ErrorRecoveryPointObjectiveCopyPairSet = errorrecoverypointobjectivecopypairset
          @ProtectedResourceSet = protectedresourceset
          @ProtectedResourceStatusSet = protectedresourcestatusset
          @CrossCloudDetails = crossclouddetails
        end

        def deserialize(params)
          @AppId = params['AppId']
          @SitePairId = params['SitePairId']
          @SitePairName = params['SitePairName']
          @SitePairType = params['SitePairType']
          @SitePairState = params['SitePairState']
          @SourceRegion = params['SourceRegion']
          @SourceZone = params['SourceZone']
          @TargetRegion = params['TargetRegion']
          @TargetZone = params['TargetZone']
          @SourceVpc = params['SourceVpc']
          @TargetVpc = params['TargetVpc']
          @CopyType = params['CopyType']
          @DisasterRecoveryType = params['DisasterRecoveryType']
          @CreateFrom = params['CreateFrom']
          @AccountUin = params['AccountUin']
          @SubAccountUin = params['SubAccountUin']
          @CreateTime = params['CreateTime']
          @BindProtectGroupCount = params['BindProtectGroupCount']
          @ErrorRecoveryPointObjectiveCopyPairSet = params['ErrorRecoveryPointObjectiveCopyPairSet']
          unless params['ProtectedResourceSet'].nil?
            @ProtectedResourceSet = []
            params['ProtectedResourceSet'].each do |i|
              protectedresource_tmp = ProtectedResource.new
              protectedresource_tmp.deserialize(i)
              @ProtectedResourceSet << protectedresource_tmp
            end
          end
          unless params['ProtectedResourceStatusSet'].nil?
            @ProtectedResourceStatusSet = []
            params['ProtectedResourceStatusSet'].each do |i|
              protectedresourcestatus_tmp = ProtectedResourceStatus.new
              protectedresourcestatus_tmp.deserialize(i)
              @ProtectedResourceStatusSet << protectedresourcestatus_tmp
            end
          end
          unless params['CrossCloudDetails'].nil?
            @CrossCloudDetails = CrossCloudDetails.new
            @CrossCloudDetails.deserialize(params['CrossCloudDetails'])
          end
        end
      end

      # 单个容灾策略的禁止操作集合
      class SitePairDeniedAction < TencentCloud::Common::AbstractModel
        # @param SitePairId: 容灾策略ID
        # @type SitePairId: String
        # @param DeniedActions: 该容灾策略当前被禁止执行的操作列表
        # @type DeniedActions: Array

        attr_accessor :SitePairId, :DeniedActions

        def initialize(sitepairid=nil, deniedactions=nil)
          @SitePairId = sitepairid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @SitePairId = params['SitePairId']
          unless params['DeniedActions'].nil?
            @DeniedActions = []
            params['DeniedActions'].each do |i|
              deniedaction_tmp = DeniedAction.new
              deniedaction_tmp.deserialize(i)
              @DeniedActions << deniedaction_tmp
            end
          end
        end
      end

      # StopCopyPairTasks请求参数结构体
      class StopCopyPairTasksRequest < TencentCloud::Common::AbstractModel
        # @param CopyPairIds: 复制对ID列表
        # @type CopyPairIds: Array
        # @param CopyPairType: 复制对类型（DISK/INSTANCE/CFS）
        # @type CopyPairType: String

        attr_accessor :CopyPairIds, :CopyPairType

        def initialize(copypairids=nil, copypairtype=nil)
          @CopyPairIds = copypairids
          @CopyPairType = copypairtype
        end

        def deserialize(params)
          @CopyPairIds = params['CopyPairIds']
          @CopyPairType = params['CopyPairType']
        end
      end

      # StopCopyPairTasks返回参数结构体
      class StopCopyPairTasksResponse < TencentCloud::Common::AbstractModel
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

      # 支持的生产地域配置详情，包含支持类型与可用区粒度规则。
      class SupportRegionInfo < TencentCloud::Common::AbstractModel
        # @param SourceRegion: 生产地域。
        # @type SourceRegion: String
        # @param SupportType: 支持类型：REGION（地域级，整个生产地域均支持容灾）；ZONE（可用区级，按 SupportZoneRules 控制粒度）。
        # @type SupportType: String
        # @param Status: 配置状态：valid（生效）/ invalid（停用）。
        # @type Status: String
        # @param SupportZoneRules: 可用区级容灾规则列表。仅当 SupportType=ZONE 时有效；REGION 类型时该字段返回空数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportZoneRules: Array

        attr_accessor :SourceRegion, :SupportType, :Status, :SupportZoneRules

        def initialize(sourceregion=nil, supporttype=nil, status=nil, supportzonerules=nil)
          @SourceRegion = sourceregion
          @SupportType = supporttype
          @Status = status
          @SupportZoneRules = supportzonerules
        end

        def deserialize(params)
          @SourceRegion = params['SourceRegion']
          @SupportType = params['SupportType']
          @Status = params['Status']
          unless params['SupportZoneRules'].nil?
            @SupportZoneRules = []
            params['SupportZoneRules'].each do |i|
              supportzonerule_tmp = SupportZoneRule.new
              supportzonerule_tmp.deserialize(i)
              @SupportZoneRules << supportzonerule_tmp
            end
          end
        end
      end

      # 可用区级容灾规则，描述某个生产可用区可容灾到的目标可用区集合。
      class SupportZoneRule < TencentCloud::Common::AbstractModel
        # @param SourceZone: 生产可用区。
        # @type SourceZone: String
        # @param IsAllZoneSupport: 是否支持容灾到生产地域内的全部可用区。true 时 TargetZones 可忽略。
        # @type IsAllZoneSupport: Boolean
        # @param TargetZones: 目标可用区列表。当 IsAllZoneSupport=false 时枚举具体可容灾到的可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetZones: Array

        attr_accessor :SourceZone, :IsAllZoneSupport, :TargetZones

        def initialize(sourcezone=nil, isallzonesupport=nil, targetzones=nil)
          @SourceZone = sourcezone
          @IsAllZoneSupport = isallzonesupport
          @TargetZones = targetzones
        end

        def deserialize(params)
          @SourceZone = params['SourceZone']
          @IsAllZoneSupport = params['IsAllZoneSupport']
          @TargetZones = params['TargetZones']
        end
      end

      # 备份库类型统计
      class TypeCount < TencentCloud::Common::AbstractModel
        # @param Type: 备份库类型
        # @type Type: String
        # @param Count: 备份库数量
        # @type Count: Integer

        attr_accessor :Type, :Count

        def initialize(type=nil, count=nil)
          @Type = type
          @Count = count
        end

        def deserialize(params)
          @Type = params['Type']
          @Count = params['Count']
        end
      end

      # UnbindAutoBackupPolicy请求参数结构体
      class UnbindAutoBackupPolicyRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # UnbindAutoBackupPolicy返回参数结构体
      class UnbindAutoBackupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # 备份库操作掩码
      class VaultDeniedAction < TencentCloud::Common::AbstractModel
        # @param VaultId: 备份库实例ID
        # @type VaultId: String
        # @param DeniedActions: 被禁止的操作列表
        # @type DeniedActions: Array

        attr_accessor :VaultId, :DeniedActions

        def initialize(vaultid=nil, deniedactions=nil)
          @VaultId = vaultid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @VaultId = params['VaultId']
          unless params['DeniedActions'].nil?
            @DeniedActions = []
            params['DeniedActions'].each do |i|
              deniedaction_tmp = DeniedAction.new
              deniedaction_tmp.deserialize(i)
              @DeniedActions << deniedaction_tmp
            end
          end
        end
      end

      # 描述了VPC相关信息，包括子网，IP信息等
      class VirtualPrivateCloud < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID，形如 vpc-xxxxxxxx。私有网络ID可通过登录控制台查询，也可通过调用接口 [DescribeVpcEx]的返回值中的unVpcId字段获取。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如 subnet-xxxxxxxx。私有网络子网ID可通过登录控制台查询，也可通过调用接口 [DescribeSubnets](https://cloud.tencent.com/document/api/215/15784) 的返回值中的 unSubnetId 字段获取。
        # @type SubnetId: String
        # @param SubnetName: 私有网络子网名称。
        # @type SubnetName: String
        # @param AsVpcGateway: 是否用作公网网关。公网网关只有在实例拥有公网IP以及处于私有网络下时才能正常使用。取值范围：true（用作公网网关）/false（不作为公网网关），默认取值：false。
        # @type AsVpcGateway: Boolean
        # @param PrivateIpAddresses: 私有网络子网 IP 数组，在创建实例、修改实例 vpc 属性操作中可使用此参数。当前仅批量创建多台实例时支持传入相同子网的多个 IP。
        # @type PrivateIpAddresses: Array
        # @param VpcName: 私有网络名称，仅做展示用。
        # @type VpcName: String
        # @param Ipv6AddressCount: 为弹性网卡指定随机生成的 IPv6 地址数量。
        # @type Ipv6AddressCount: Integer

        attr_accessor :VpcId, :SubnetId, :SubnetName, :AsVpcGateway, :PrivateIpAddresses, :VpcName, :Ipv6AddressCount

        def initialize(vpcid=nil, subnetid=nil, subnetname=nil, asvpcgateway=nil, privateipaddresses=nil, vpcname=nil, ipv6addresscount=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @SubnetName = subnetname
          @AsVpcGateway = asvpcgateway
          @PrivateIpAddresses = privateipaddresses
          @VpcName = vpcname
          @Ipv6AddressCount = ipv6addresscount
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @AsVpcGateway = params['AsVpcGateway']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @VpcName = params['VpcName']
          @Ipv6AddressCount = params['Ipv6AddressCount']
        end
      end

      # 站点对vpc映射信息
      class VpcMapping < TencentCloud::Common::AbstractModel
        # @param Id: 映射规则主键ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param SitePairId: 所属容灾策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SitePairId: String
        # @param SourceVpc: 源端VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceVpc: String
        # @param SourceSubnet: 源端子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceSubnet: String
        # @param TargetVpc: 目标端VPC ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetVpc: String
        # @param TargetSubnet: 目标端子网ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetSubnet: String
        # @param Status: 映射状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param LifeState: 生命周期状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LifeState: String

        attr_accessor :Id, :SitePairId, :SourceVpc, :SourceSubnet, :TargetVpc, :TargetSubnet, :Status, :LifeState

        def initialize(id=nil, sitepairid=nil, sourcevpc=nil, sourcesubnet=nil, targetvpc=nil, targetsubnet=nil, status=nil, lifestate=nil)
          @Id = id
          @SitePairId = sitepairid
          @SourceVpc = sourcevpc
          @SourceSubnet = sourcesubnet
          @TargetVpc = targetvpc
          @TargetSubnet = targetsubnet
          @Status = status
          @LifeState = lifestate
        end

        def deserialize(params)
          @Id = params['Id']
          @SitePairId = params['SitePairId']
          @SourceVpc = params['SourceVpc']
          @SourceSubnet = params['SourceSubnet']
          @TargetVpc = params['TargetVpc']
          @TargetSubnet = params['TargetSubnet']
          @Status = params['Status']
          @LifeState = params['LifeState']
        end
      end

    end
  end
end

