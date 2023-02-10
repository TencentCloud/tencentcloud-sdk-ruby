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
  module Cbs
    module V20170312
      # ApplyDiskBackup请求参数结构体
      class ApplyDiskBackupRequest < TencentCloud::Common::AbstractModel
        # @param DiskBackupId: 云硬盘备份点ID，可通过 DescribeDiskBackups 查询。
        # @type DiskBackupId: String
        # @param DiskId: 云硬盘备份点原云硬盘ID，可通过DescribeDisks接口查询。
        # @type DiskId: String

        attr_accessor :DiskBackupId, :DiskId
        
        def initialize(diskbackupid=nil, diskid=nil)
          @DiskBackupId = diskbackupid
          @DiskId = diskid
        end

        def deserialize(params)
          @DiskBackupId = params['DiskBackupId']
          @DiskId = params['DiskId']
        end
      end

      # ApplyDiskBackup返回参数结构体
      class ApplyDiskBackupResponse < TencentCloud::Common::AbstractModel
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

      # ApplySnapshot请求参数结构体
      class ApplySnapshotRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照ID, 可通过[DescribeSnapshots](/document/product/362/15647)查询。
        # @type SnapshotId: String
        # @param DiskId: 快照原云硬盘ID，可通过[DescribeDisks](/document/product/362/16315)接口查询。
        # @type DiskId: String
        # @param AutoStopInstance: 回滚前是否执行自动关机
        # @type AutoStopInstance: Boolean
        # @param AutoStartInstance: 回滚完成后是否自动开机
        # @type AutoStartInstance: Boolean

        attr_accessor :SnapshotId, :DiskId, :AutoStopInstance, :AutoStartInstance
        
        def initialize(snapshotid=nil, diskid=nil, autostopinstance=nil, autostartinstance=nil)
          @SnapshotId = snapshotid
          @DiskId = diskid
          @AutoStopInstance = autostopinstance
          @AutoStartInstance = autostartinstance
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @DiskId = params['DiskId']
          @AutoStopInstance = params['AutoStopInstance']
          @AutoStartInstance = params['AutoStartInstance']
        end
      end

      # ApplySnapshot返回参数结构体
      class ApplySnapshotResponse < TencentCloud::Common::AbstractModel
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

      # 描述一个实例已挂载和可挂载数据盘的数量。
      class AttachDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param AttachedDiskCount: 实例已挂载数据盘的数量。
        # @type AttachedDiskCount: Integer
        # @param MaxAttachCount: 实例最大可挂载数据盘的数量。
        # @type MaxAttachCount: Integer

        attr_accessor :InstanceId, :AttachedDiskCount, :MaxAttachCount
        
        def initialize(instanceid=nil, attacheddiskcount=nil, maxattachcount=nil)
          @InstanceId = instanceid
          @AttachedDiskCount = attacheddiskcount
          @MaxAttachCount = maxattachcount
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @AttachedDiskCount = params['AttachedDiskCount']
          @MaxAttachCount = params['MaxAttachCount']
        end
      end

      # AttachDisks请求参数结构体
      class AttachDisksRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 云服务器实例ID。云盘将被挂载到此云服务器上，通过[DescribeInstances](/document/product/213/15728)接口查询。
        # @type InstanceId: String
        # @param DiskIds: 将要被挂载的弹性云盘ID。通过[DescribeDisks](/document/product/362/16315)接口查询。单次最多可挂载10块弹性云盘。
        # @type DiskIds: Array
        # @param DeleteWithInstance: 可选参数，不传该参数则仅执行挂载操作。传入`True`时，会在挂载成功后将云硬盘设置为随云主机销毁模式，仅对按量计费云硬盘有效。
        # @type DeleteWithInstance: Boolean
        # @param AttachMode: 可选参数，用于控制云盘挂载时使用的挂载模式，目前仅对黑石裸金属机型有效。取值范围：<br><li>PF<br><li>VF
        # @type AttachMode: String

        attr_accessor :InstanceId, :DiskIds, :DeleteWithInstance, :AttachMode
        
        def initialize(instanceid=nil, diskids=nil, deletewithinstance=nil, attachmode=nil)
          @InstanceId = instanceid
          @DiskIds = diskids
          @DeleteWithInstance = deletewithinstance
          @AttachMode = attachmode
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DiskIds = params['DiskIds']
          @DeleteWithInstance = params['DeleteWithInstance']
          @AttachMode = params['AttachMode']
        end
      end

      # AttachDisks返回参数结构体
      class AttachDisksResponse < TencentCloud::Common::AbstractModel
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

      # 描述了新购云硬盘时自动将云硬盘初始化并挂载至云服务器内部的配置。
      class AutoMountConfiguration < TencentCloud::Common::AbstractModel
        # @param InstanceId: 要挂载到的实例ID。
        # @type InstanceId: Array
        # @param MountPoint: 子机内的挂载点。
        # @type MountPoint: Array
        # @param FileSystemType: 文件系统类型，支持的有 ext4、xfs。
        # @type FileSystemType: String

        attr_accessor :InstanceId, :MountPoint, :FileSystemType
        
        def initialize(instanceid=nil, mountpoint=nil, filesystemtype=nil)
          @InstanceId = instanceid
          @MountPoint = mountpoint
          @FileSystemType = filesystemtype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @MountPoint = params['MountPoint']
          @FileSystemType = params['FileSystemType']
        end
      end

      # 描述了定期快照策略的详细信息
      class AutoSnapshotPolicy < TencentCloud::Common::AbstractModel
        # @param DiskIdSet: 已绑定当前定期快照策略的云盘ID列表。
        # @type DiskIdSet: Array
        # @param IsActivated: 定期快照策略是否激活。
        # @type IsActivated: Boolean
        # @param AutoSnapshotPolicyState: 定期快照策略的状态。取值范围：<br><li>NORMAL：正常<br><li>ISOLATED：已隔离。
        # @type AutoSnapshotPolicyState: String
        # @param IsCopyToRemote: 是否是跨账号复制快照快照, 1：是, 0: 不是
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsCopyToRemote: Integer
        # @param IsPermanent: 使用该定期快照策略创建出来的快照是否永久保留。
        # @type IsPermanent: Boolean
        # @param NextTriggerTime: 定期快照下次触发的时间。
        # @type NextTriggerTime: String
        # @param AutoSnapshotPolicyName: 定期快照策略名称。
        # @type AutoSnapshotPolicyName: String
        # @param AutoSnapshotPolicyId: 定期快照策略ID。
        # @type AutoSnapshotPolicyId: String
        # @param Policy: 定期快照的执行策略。
        # @type Policy: Array
        # @param CreateTime: 定期快照策略的创建时间。
        # @type CreateTime: String
        # @param RetentionDays: 使用该定期快照策略创建出来的快照保留天数。
        # @type RetentionDays: Integer
        # @param CopyToAccountUin: 复制的目标账户ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CopyToAccountUin: String
        # @param InstanceIdSet: 已绑定当前定期快照策略的实例ID列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIdSet: Array

        attr_accessor :DiskIdSet, :IsActivated, :AutoSnapshotPolicyState, :IsCopyToRemote, :IsPermanent, :NextTriggerTime, :AutoSnapshotPolicyName, :AutoSnapshotPolicyId, :Policy, :CreateTime, :RetentionDays, :CopyToAccountUin, :InstanceIdSet
        
        def initialize(diskidset=nil, isactivated=nil, autosnapshotpolicystate=nil, iscopytoremote=nil, ispermanent=nil, nexttriggertime=nil, autosnapshotpolicyname=nil, autosnapshotpolicyid=nil, policy=nil, createtime=nil, retentiondays=nil, copytoaccountuin=nil, instanceidset=nil)
          @DiskIdSet = diskidset
          @IsActivated = isactivated
          @AutoSnapshotPolicyState = autosnapshotpolicystate
          @IsCopyToRemote = iscopytoremote
          @IsPermanent = ispermanent
          @NextTriggerTime = nexttriggertime
          @AutoSnapshotPolicyName = autosnapshotpolicyname
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @Policy = policy
          @CreateTime = createtime
          @RetentionDays = retentiondays
          @CopyToAccountUin = copytoaccountuin
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @DiskIdSet = params['DiskIdSet']
          @IsActivated = params['IsActivated']
          @AutoSnapshotPolicyState = params['AutoSnapshotPolicyState']
          @IsCopyToRemote = params['IsCopyToRemote']
          @IsPermanent = params['IsPermanent']
          @NextTriggerTime = params['NextTriggerTime']
          @AutoSnapshotPolicyName = params['AutoSnapshotPolicyName']
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          unless params['Policy'].nil?
            @Policy = []
            params['Policy'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @Policy << policy_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @RetentionDays = params['RetentionDays']
          @CopyToAccountUin = params['CopyToAccountUin']
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # BindAutoSnapshotPolicy请求参数结构体
      class BindAutoSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 要绑定的定期快照策略ID。
        # @type AutoSnapshotPolicyId: String
        # @param DiskIds: 要绑定的云硬盘ID列表，一次请求最多绑定80块云盘。
        # @type DiskIds: Array

        attr_accessor :AutoSnapshotPolicyId, :DiskIds
        
        def initialize(autosnapshotpolicyid=nil, diskids=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @DiskIds = diskids
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @DiskIds = params['DiskIds']
        end
      end

      # BindAutoSnapshotPolicy返回参数结构体
      class BindAutoSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
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

      # 描述独享集群的详细信息。
      class Cdc < TencentCloud::Common::AbstractModel
        # @param CageId: 独享集群围笼ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CageId: String
        # @param CdcState: 独享集群状态。取值范围：<br><li>NORMAL：正常；<br><li>CLOSED：关闭，此时将不可使用该独享集群创建新的云硬盘；<br><li>FAULT：独享集群状态异常，此时独享集群将不可操作，腾讯云运维团队将会及时修复该集群；<br><li>ISOLATED：因未及时续费导致独享集群被隔离，此时将不可使用该独享集群创建新的云硬盘，对应的云硬盘也将不可操作。
        # @type CdcState: String
        # @param Zone: 独享集群所属的[可用区](/document/product/213/15753#ZoneInfo)ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param CdcName: 独享集群实例名称。
        # @type CdcName: String
        # @param CdcResource: 独享集群的资源容量大小。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcResource: :class:`Tencentcloud::Cbs.v20170312.models.CdcSize`
        # @param CdcId: 独享集群实例id。
        # @type CdcId: String
        # @param DiskType: 独享集群类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘集群<br><li>CLOUD_PREMIUM：表示高性能云硬盘集群<br><li>CLOUD_SSD：SSD表示SSD云硬盘集群。
        # @type DiskType: String
        # @param ExpiredTime: 独享集群到期时间。
        # @type ExpiredTime: String

        attr_accessor :CageId, :CdcState, :Zone, :CdcName, :CdcResource, :CdcId, :DiskType, :ExpiredTime
        
        def initialize(cageid=nil, cdcstate=nil, zone=nil, cdcname=nil, cdcresource=nil, cdcid=nil, disktype=nil, expiredtime=nil)
          @CageId = cageid
          @CdcState = cdcstate
          @Zone = zone
          @CdcName = cdcname
          @CdcResource = cdcresource
          @CdcId = cdcid
          @DiskType = disktype
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          @CageId = params['CageId']
          @CdcState = params['CdcState']
          @Zone = params['Zone']
          @CdcName = params['CdcName']
          unless params['CdcResource'].nil?
            @CdcResource = CdcSize.new
            @CdcResource.deserialize(params['CdcResource'])
          end
          @CdcId = params['CdcId']
          @DiskType = params['DiskType']
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # 显示独享集群的大小
      class CdcSize < TencentCloud::Common::AbstractModel
        # @param DiskAavilable: 独享集群的可用容量大小，单位GiB
        # @type DiskAavilable: Integer
        # @param DiskTotal: 独享集群的总容量大小，单位GiB
        # @type DiskTotal: Integer

        attr_accessor :DiskAavilable, :DiskTotal
        
        def initialize(diskaavilable=nil, disktotal=nil)
          @DiskAavilable = diskaavilable
          @DiskTotal = disktotal
        end

        def deserialize(params)
          @DiskAavilable = params['DiskAavilable']
          @DiskTotal = params['DiskTotal']
        end
      end

      # CopySnapshotCrossRegions请求参数结构体
      class CopySnapshotCrossRegionsRequest < TencentCloud::Common::AbstractModel
        # @param DestinationRegions: 快照需要复制到的目标地域，各地域的标准取值可通过接口[DescribeRegions](https://cloud.tencent.com/document/product/213/9456)查询，且只能传入支持快照的地域。
        # @type DestinationRegions: Array
        # @param SnapshotId: 需要跨地域复制的源快照ID，可通过[DescribeSnapshots](/document/product/362/15647)查询。
        # @type SnapshotId: String
        # @param SnapshotName: 新复制快照的名称，如果不传，则默认取值为“Copied 源快照ID from 地域名”。
        # @type SnapshotName: String

        attr_accessor :DestinationRegions, :SnapshotId, :SnapshotName
        
        def initialize(destinationregions=nil, snapshotid=nil, snapshotname=nil)
          @DestinationRegions = destinationregions
          @SnapshotId = snapshotid
          @SnapshotName = snapshotname
        end

        def deserialize(params)
          @DestinationRegions = params['DestinationRegions']
          @SnapshotId = params['SnapshotId']
          @SnapshotName = params['SnapshotName']
        end
      end

      # CopySnapshotCrossRegions返回参数结构体
      class CopySnapshotCrossRegionsResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotCopyResultSet: 快照跨地域复制的结果，如果请求下发成功，则返回相应地地域的新快照ID，否则返回Error。
        # @type SnapshotCopyResultSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SnapshotCopyResultSet, :RequestId
        
        def initialize(snapshotcopyresultset=nil, requestid=nil)
          @SnapshotCopyResultSet = snapshotcopyresultset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SnapshotCopyResultSet'].nil?
            @SnapshotCopyResultSet = []
            params['SnapshotCopyResultSet'].each do |i|
              snapshotcopyresult_tmp = SnapshotCopyResult.new
              snapshotcopyresult_tmp.deserialize(i)
              @SnapshotCopyResultSet << snapshotcopyresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAutoSnapshotPolicy请求参数结构体
      class CreateAutoSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param Policy: 定期快照的执行策略。
        # @type Policy: Array
        # @param DryRun: 是否创建定期快照的执行策略。TRUE表示只需获取首次开始备份的时间，不实际创建定期快照策略，FALSE表示创建，默认为FALSE。
        # @type DryRun: Boolean
        # @param IsActivated: 是否激活定期快照策略，FALSE表示未激活，TRUE表示激活，默认为TRUE。
        # @type IsActivated: Boolean
        # @param AutoSnapshotPolicyName: 要创建的定期快照策略名。不传则默认为“未命名”。最大长度不能超60个字节。
        # @type AutoSnapshotPolicyName: String
        # @param IsPermanent: 通过该定期快照策略创建的快照是否永久保留。FALSE表示非永久保留，TRUE表示永久保留，默认为FALSE。
        # @type IsPermanent: Boolean
        # @param RetentionDays: 通过该定期快照策略创建的快照保留天数，默认保留7天。如果指定本参数，则IsPermanent入参不可指定为TRUE，否则会产生冲突。
        # @type RetentionDays: Integer

        attr_accessor :Policy, :DryRun, :IsActivated, :AutoSnapshotPolicyName, :IsPermanent, :RetentionDays
        
        def initialize(policy=nil, dryrun=nil, isactivated=nil, autosnapshotpolicyname=nil, ispermanent=nil, retentiondays=nil)
          @Policy = policy
          @DryRun = dryrun
          @IsActivated = isactivated
          @AutoSnapshotPolicyName = autosnapshotpolicyname
          @IsPermanent = ispermanent
          @RetentionDays = retentiondays
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
          @DryRun = params['DryRun']
          @IsActivated = params['IsActivated']
          @AutoSnapshotPolicyName = params['AutoSnapshotPolicyName']
          @IsPermanent = params['IsPermanent']
          @RetentionDays = params['RetentionDays']
        end
      end

      # CreateAutoSnapshotPolicy返回参数结构体
      class CreateAutoSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 新创建的定期快照策略ID。
        # @type AutoSnapshotPolicyId: String
        # @param NextTriggerTime: 首次开始备份的时间。
        # @type NextTriggerTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AutoSnapshotPolicyId, :NextTriggerTime, :RequestId
        
        def initialize(autosnapshotpolicyid=nil, nexttriggertime=nil, requestid=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @NextTriggerTime = nexttriggertime
          @RequestId = requestid
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @NextTriggerTime = params['NextTriggerTime']
          @RequestId = params['RequestId']
        end
      end

      # CreateDiskBackup请求参数结构体
      class CreateDiskBackupRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 要创建备份点的云硬盘名称。
        # @type DiskId: String
        # @param DiskBackupName: 云硬盘备份点名称。长度不能超过100个字符。
        # @type DiskBackupName: String

        attr_accessor :DiskId, :DiskBackupName
        
        def initialize(diskid=nil, diskbackupname=nil)
          @DiskId = diskid
          @DiskBackupName = diskbackupname
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @DiskBackupName = params['DiskBackupName']
        end
      end

      # CreateDiskBackup返回参数结构体
      class CreateDiskBackupResponse < TencentCloud::Common::AbstractModel
        # @param DiskBackupId: 云硬盘备份点的ID。
        # @type DiskBackupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskBackupId, :RequestId
        
        def initialize(diskbackupid=nil, requestid=nil)
          @DiskBackupId = diskbackupid
          @RequestId = requestid
        end

        def deserialize(params)
          @DiskBackupId = params['DiskBackupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDisks请求参数结构体
      class CreateDisksRequest < TencentCloud::Common::AbstractModel
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目。若不指定项目，将在默认项目下进行创建。
        # @type Placement: :class:`Tencentcloud::Cbs.v20170312.models.Placement`
        # @param DiskChargeType: 云硬盘计费类型。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>CDCPAID：独享集群付费<br>各类型价格请参考云硬盘[价格总览](/document/product/362/2413)。
        # @type DiskChargeType: String
        # @param DiskType: 硬盘介质类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_BSSD：表示通用型SSD云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘<br><li>CLOUD_HSSD：表示增强型SSD云硬盘<br><li>CLOUD_TSSD：表示极速型SSD云硬盘。
        # @type DiskType: String
        # @param DiskName: 云盘显示名称。不传则默认为“未命名”。最大长度不能超60个字节。
        # @type DiskName: String
        # @param Tags: 云盘绑定的标签。
        # @type Tags: Array
        # @param SnapshotId: 快照ID，如果传入则根据此快照创建云硬盘，快照类型必须为数据盘快照，可通过[DescribeSnapshots](/document/product/362/15647)接口查询快照，见输出参数DiskUsage解释。
        # @type SnapshotId: String
        # @param DiskCount: 创建云硬盘数量，不传则默认为1。单次请求最多可创建的云盘数有限制，具体参见[云硬盘使用限制](https://cloud.tencent.com/doc/product/362/5145)。
        # @type DiskCount: Integer
        # @param ThroughputPerformance: 可选参数。使用此参数可给云硬盘购买额外的性能。<br>当前仅支持极速型云盘（CLOUD_TSSD）和增强型SSD云硬盘（CLOUD_HSSD）
        # @type ThroughputPerformance: Integer
        # @param DiskSize: 云硬盘大小，单位为GB。<br><li>如果传入`SnapshotId`则可不传`DiskSize`，此时新建云盘的大小为快照大小<br><li>如果传入`SnapshotId`同时传入`DiskSize`，则云盘大小必须大于或等于快照大小<br><li>云盘大小取值范围参见云硬盘[产品分类](/document/product/362/2353)的说明。
        # @type DiskSize: Integer
        # @param Shareable: 可选参数，默认为False。传入True时，云盘将创建为共享型云盘。
        # @type Shareable: Boolean
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param Encrypt: 传入该参数用于创建加密云盘，取值固定为ENCRYPT。
        # @type Encrypt: String
        # @param DiskChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数指定包年包月云盘的购买时长、是否设置自动续费等属性。<br>创建预付费云盘该参数必传，创建按小时后付费云盘无需传该参数。
        # @type DiskChargePrepaid: :class:`Tencentcloud::Cbs.v20170312.models.DiskChargePrepaid`
        # @param DeleteSnapshot: 销毁云盘时删除关联的非永久保留快照。0 表示非永久快照不随云盘销毁而销毁，1表示非永久快照随云盘销毁而销毁，默认取0。快照是否永久保留可以通过DescribeSnapshots接口返回的快照详情的IsPermanent字段来判断，true表示永久快照，false表示非永久快照。
        # @type DeleteSnapshot: Integer
        # @param AutoMountConfiguration: 创建云盘时指定自动挂载并初始化该数据盘。
        # @type AutoMountConfiguration: :class:`Tencentcloud::Cbs.v20170312.models.AutoMountConfiguration`
        # @param DiskBackupQuota: 指定云硬盘备份点配额。
        # @type DiskBackupQuota: Integer

        attr_accessor :Placement, :DiskChargeType, :DiskType, :DiskName, :Tags, :SnapshotId, :DiskCount, :ThroughputPerformance, :DiskSize, :Shareable, :ClientToken, :Encrypt, :DiskChargePrepaid, :DeleteSnapshot, :AutoMountConfiguration, :DiskBackupQuota
        
        def initialize(placement=nil, diskchargetype=nil, disktype=nil, diskname=nil, tags=nil, snapshotid=nil, diskcount=nil, throughputperformance=nil, disksize=nil, shareable=nil, clienttoken=nil, encrypt=nil, diskchargeprepaid=nil, deletesnapshot=nil, automountconfiguration=nil, diskbackupquota=nil)
          @Placement = placement
          @DiskChargeType = diskchargetype
          @DiskType = disktype
          @DiskName = diskname
          @Tags = tags
          @SnapshotId = snapshotid
          @DiskCount = diskcount
          @ThroughputPerformance = throughputperformance
          @DiskSize = disksize
          @Shareable = shareable
          @ClientToken = clienttoken
          @Encrypt = encrypt
          @DiskChargePrepaid = diskchargeprepaid
          @DeleteSnapshot = deletesnapshot
          @AutoMountConfiguration = automountconfiguration
          @DiskBackupQuota = diskbackupquota
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @DiskChargeType = params['DiskChargeType']
          @DiskType = params['DiskType']
          @DiskName = params['DiskName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @SnapshotId = params['SnapshotId']
          @DiskCount = params['DiskCount']
          @ThroughputPerformance = params['ThroughputPerformance']
          @DiskSize = params['DiskSize']
          @Shareable = params['Shareable']
          @ClientToken = params['ClientToken']
          @Encrypt = params['Encrypt']
          unless params['DiskChargePrepaid'].nil?
            @DiskChargePrepaid = DiskChargePrepaid.new
            @DiskChargePrepaid.deserialize(params['DiskChargePrepaid'])
          end
          @DeleteSnapshot = params['DeleteSnapshot']
          unless params['AutoMountConfiguration'].nil?
            @AutoMountConfiguration = AutoMountConfiguration.new
            @AutoMountConfiguration.deserialize(params['AutoMountConfiguration'])
          end
          @DiskBackupQuota = params['DiskBackupQuota']
        end
      end

      # CreateDisks返回参数结构体
      class CreateDisksResponse < TencentCloud::Common::AbstractModel
        # @param DiskIdSet: 创建的云硬盘ID列表。
        # @type DiskIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskIdSet, :RequestId
        
        def initialize(diskidset=nil, requestid=nil)
          @DiskIdSet = diskidset
          @RequestId = requestid
        end

        def deserialize(params)
          @DiskIdSet = params['DiskIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateSnapshot请求参数结构体
      class CreateSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 需要创建快照的云硬盘ID，可通过[DescribeDisks](/document/product/362/16315)接口查询。
        # @type DiskId: String
        # @param SnapshotName: 快照名称，不传则新快照名称默认为“未命名”。
        # @type SnapshotName: String
        # @param Deadline: 快照的到期时间，到期后该快照将会自动删除,需要传入UTC时间下的ISO-8601标准时间格式,例如:2022-01-08T09:47:55+00:00
        # @type Deadline: String
        # @param DiskBackupId: 云硬盘备份点ID。传入此参数时，将通过备份点创建快照。
        # @type DiskBackupId: String
        # @param Tags: 快照绑定的标签。
        # @type Tags: Array

        attr_accessor :DiskId, :SnapshotName, :Deadline, :DiskBackupId, :Tags
        
        def initialize(diskid=nil, snapshotname=nil, deadline=nil, diskbackupid=nil, tags=nil)
          @DiskId = diskid
          @SnapshotName = snapshotname
          @Deadline = deadline
          @DiskBackupId = diskbackupid
          @Tags = tags
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @SnapshotName = params['SnapshotName']
          @Deadline = params['Deadline']
          @DiskBackupId = params['DiskBackupId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateSnapshot返回参数结构体
      class CreateSnapshotResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 新创建的快照ID。
        # @type SnapshotId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SnapshotId, :RequestId
        
        def initialize(snapshotid=nil, requestid=nil)
          @SnapshotId = snapshotid
          @RequestId = requestid
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAutoSnapshotPolicies请求参数结构体
      class DeleteAutoSnapshotPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyIds: 要删除的定期快照策略ID列表。
        # @type AutoSnapshotPolicyIds: Array

        attr_accessor :AutoSnapshotPolicyIds
        
        def initialize(autosnapshotpolicyids=nil)
          @AutoSnapshotPolicyIds = autosnapshotpolicyids
        end

        def deserialize(params)
          @AutoSnapshotPolicyIds = params['AutoSnapshotPolicyIds']
        end
      end

      # DeleteAutoSnapshotPolicies返回参数结构体
      class DeleteAutoSnapshotPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDiskBackups请求参数结构体
      class DeleteDiskBackupsRequest < TencentCloud::Common::AbstractModel
        # @param DiskBackupIds: 待删除的云硬盘备份点ID。
        # @type DiskBackupIds: Array

        attr_accessor :DiskBackupIds
        
        def initialize(diskbackupids=nil)
          @DiskBackupIds = diskbackupids
        end

        def deserialize(params)
          @DiskBackupIds = params['DiskBackupIds']
        end
      end

      # DeleteDiskBackups返回参数结构体
      class DeleteDiskBackupsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSnapshots请求参数结构体
      class DeleteSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotIds: 要删除的快照ID列表，可通过[DescribeSnapshots](/document/product/362/15647)查询。
        # @type SnapshotIds: Array
        # @param DeleteBindImages: 是否强制删除快照关联的镜像
        # @type DeleteBindImages: Boolean

        attr_accessor :SnapshotIds, :DeleteBindImages
        
        def initialize(snapshotids=nil, deletebindimages=nil)
          @SnapshotIds = snapshotids
          @DeleteBindImages = deletebindimages
        end

        def deserialize(params)
          @SnapshotIds = params['SnapshotIds']
          @DeleteBindImages = params['DeleteBindImages']
        end
      end

      # DeleteSnapshots返回参数结构体
      class DeleteSnapshotsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAutoSnapshotPolicies请求参数结构体
      class DescribeAutoSnapshotPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyIds: 要查询的定期快照策略ID列表。参数不支持同时指定`AutoSnapshotPolicyIds`和`Filters`。
        # @type AutoSnapshotPolicyIds: Array
        # @param Filters: 过滤条件。参数不支持同时指定`AutoSnapshotPolicyIds`和`Filters`。<br><li>auto-snapshot-policy-id - Array of String - 是否必填：否 -（过滤条件）按定期快照策略ID进行过滤。定期快照策略ID形如：`asp-11112222`。<br><li>auto-snapshot-policy-state - Array of String - 是否必填：否 -（过滤条件）按定期快照策略的状态进行过滤。定期快照策略ID形如：`asp-11112222`。(NORMAL：正常 | ISOLATED：已隔离。)<br><li>auto-snapshot-policy-name - Array of String - 是否必填：否 -（过滤条件）按定期快照策略名称进行过滤。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        # @type Offset: Integer
        # @param Order: 输出定期快照列表的排列顺序。取值范围：<br><li>ASC：升序排列<br><li>DESC：降序排列。
        # @type Order: String
        # @param OrderField: 定期快照列表排序的依据字段。取值范围：<br><li>CREATETIME：依据定期快照的创建时间排序<br>默认按创建时间排序。
        # @type OrderField: String

        attr_accessor :AutoSnapshotPolicyIds, :Filters, :Limit, :Offset, :Order, :OrderField
        
        def initialize(autosnapshotpolicyids=nil, filters=nil, limit=nil, offset=nil, order=nil, orderfield=nil)
          @AutoSnapshotPolicyIds = autosnapshotpolicyids
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @AutoSnapshotPolicyIds = params['AutoSnapshotPolicyIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeAutoSnapshotPolicies返回参数结构体
      class DescribeAutoSnapshotPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 有效的定期快照策略数量。
        # @type TotalCount: Integer
        # @param AutoSnapshotPolicySet: 定期快照策略列表。
        # @type AutoSnapshotPolicySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AutoSnapshotPolicySet, :RequestId
        
        def initialize(totalcount=nil, autosnapshotpolicyset=nil, requestid=nil)
          @TotalCount = totalcount
          @AutoSnapshotPolicySet = autosnapshotpolicyset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AutoSnapshotPolicySet'].nil?
            @AutoSnapshotPolicySet = []
            params['AutoSnapshotPolicySet'].each do |i|
              autosnapshotpolicy_tmp = AutoSnapshotPolicy.new
              autosnapshotpolicy_tmp.deserialize(i)
              @AutoSnapshotPolicySet << autosnapshotpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiskAssociatedAutoSnapshotPolicy请求参数结构体
      class DescribeDiskAssociatedAutoSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 要查询的云硬盘ID。
        # @type DiskId: String

        attr_accessor :DiskId
        
        def initialize(diskid=nil)
          @DiskId = diskid
        end

        def deserialize(params)
          @DiskId = params['DiskId']
        end
      end

      # DescribeDiskAssociatedAutoSnapshotPolicy返回参数结构体
      class DescribeDiskAssociatedAutoSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 云盘绑定的定期快照数量。
        # @type TotalCount: Integer
        # @param AutoSnapshotPolicySet: 云盘绑定的定期快照列表。
        # @type AutoSnapshotPolicySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AutoSnapshotPolicySet, :RequestId
        
        def initialize(totalcount=nil, autosnapshotpolicyset=nil, requestid=nil)
          @TotalCount = totalcount
          @AutoSnapshotPolicySet = autosnapshotpolicyset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AutoSnapshotPolicySet'].nil?
            @AutoSnapshotPolicySet = []
            params['AutoSnapshotPolicySet'].each do |i|
              autosnapshotpolicy_tmp = AutoSnapshotPolicy.new
              autosnapshotpolicy_tmp.deserialize(i)
              @AutoSnapshotPolicySet << autosnapshotpolicy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiskBackups请求参数结构体
      class DescribeDiskBackupsRequest < TencentCloud::Common::AbstractModel
        # @param DiskBackupIds: 要查询备份点的ID列表。参数不支持同时指定 DiskBackupIds 和 Filters。
        # @type DiskBackupIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定 DiskBackupIds 和 Filters。过滤条件：<br><li>disk-backup-id - Array of String - 是否必填：否 -（过滤条件）按照备份点的ID过滤。备份点ID形如：dbp-11112222。
        # <br><li>disk-id - Array of String - 是否必填：否 -（过滤条件）按照创建备份点的云硬盘ID过滤。
        # <br><li>disk-usage - Array of String - 是否必填：否 -（过滤条件）按创建备份点的云硬盘类型过滤。 (SYSTEM_DISK：代表系统盘 | DATA_DISK：代表数据盘。)
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        # @type Limit: Integer
        # @param Order: 输出云硬盘备份点列表的排列顺序。取值范围：<br><li>ASC：升序排列<br><li>DESC：降序排列。
        # @type Order: String
        # @param OrderField: 云硬盘备份点列表排序的依据字段。取值范围：<br><li>CREATE_TIME：依据云硬盘备份点的创建时间排序<br>默认按创建时间排序。
        # @type OrderField: String

        attr_accessor :DiskBackupIds, :Filters, :Offset, :Limit, :Order, :OrderField
        
        def initialize(diskbackupids=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @DiskBackupIds = diskbackupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @DiskBackupIds = params['DiskBackupIds']
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
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeDiskBackups返回参数结构体
      class DescribeDiskBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的云硬盘备份点数量。
        # @type TotalCount: Integer
        # @param DiskBackupSet: 云硬盘备份点的详细信息列表。
        # @type DiskBackupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DiskBackupSet, :RequestId
        
        def initialize(totalcount=nil, diskbackupset=nil, requestid=nil)
          @TotalCount = totalcount
          @DiskBackupSet = diskbackupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DiskBackupSet'].nil?
            @DiskBackupSet = []
            params['DiskBackupSet'].each do |i|
              diskbackup_tmp = DiskBackup.new
              diskbackup_tmp.deserialize(i)
              @DiskBackupSet << diskbackup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiskConfigQuota请求参数结构体
      class DescribeDiskConfigQuotaRequest < TencentCloud::Common::AbstractModel
        # @param InquiryType: 查询类别，取值范围。<br><li>INQUIRY_CBS_CONFIG：查询云盘配置列表<br><li>INQUIRY_CVM_CONFIG：查询云盘与实例搭配的配置列表。
        # @type InquiryType: String
        # @param DiskChargeType: 付费模式。取值范围：<br><li>PREPAID：预付费<br><li>POSTPAID_BY_HOUR：后付费。
        # @type DiskChargeType: String
        # @param InstanceFamilies: 按照实例机型系列过滤。实例机型系列形如：S1、I1、M1等。详见[实例类型](https://cloud.tencent.com/document/product/213/11518)
        # @type InstanceFamilies: Array
        # @param DiskTypes: 硬盘介质类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘<br><li>CLOUD_HSSD：表示增强型SSD云硬盘。
        # @type DiskTypes: Array
        # @param Zones: 查询一个或多个[可用区](/document/product/213/15753#ZoneInfo)下的配置。
        # @type Zones: Array
        # @param Memory: 实例内存大小。
        # @type Memory: Integer
        # @param DiskUsage: 系统盘或数据盘。取值范围：<br><li>SYSTEM_DISK：表示系统盘<br><li>DATA_DISK：表示数据盘。
        # @type DiskUsage: String
        # @param CPU: 实例CPU核数。
        # @type CPU: Integer

        attr_accessor :InquiryType, :DiskChargeType, :InstanceFamilies, :DiskTypes, :Zones, :Memory, :DiskUsage, :CPU
        
        def initialize(inquirytype=nil, diskchargetype=nil, instancefamilies=nil, disktypes=nil, zones=nil, memory=nil, diskusage=nil, cpu=nil)
          @InquiryType = inquirytype
          @DiskChargeType = diskchargetype
          @InstanceFamilies = instancefamilies
          @DiskTypes = disktypes
          @Zones = zones
          @Memory = memory
          @DiskUsage = diskusage
          @CPU = cpu
        end

        def deserialize(params)
          @InquiryType = params['InquiryType']
          @DiskChargeType = params['DiskChargeType']
          @InstanceFamilies = params['InstanceFamilies']
          @DiskTypes = params['DiskTypes']
          @Zones = params['Zones']
          @Memory = params['Memory']
          @DiskUsage = params['DiskUsage']
          @CPU = params['CPU']
        end
      end

      # DescribeDiskConfigQuota返回参数结构体
      class DescribeDiskConfigQuotaResponse < TencentCloud::Common::AbstractModel
        # @param DiskConfigSet: 云盘配置列表。
        # @type DiskConfigSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskConfigSet, :RequestId
        
        def initialize(diskconfigset=nil, requestid=nil)
          @DiskConfigSet = diskconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskConfigSet'].nil?
            @DiskConfigSet = []
            params['DiskConfigSet'].each do |i|
              diskconfig_tmp = DiskConfig.new
              diskconfig_tmp.deserialize(i)
              @DiskConfigSet << diskconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiskOperationLogs请求参数结构体
      class DescribeDiskOperationLogsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。支持以下条件：
        # <li>disk-id - Array of String - 是否必填：是 - 按云盘ID过滤，每个请求最多可指定10个云盘ID。
        # @type Filters: Array
        # @param EndTime: 要查询的操作日志的截止时间，例如：“2019-11-22 23:59:59"
        # @type EndTime: String
        # @param BeginTime: 要查询的操作日志的起始时间，例如：“2019-11-22 00:00:00"
        # @type BeginTime: String

        attr_accessor :Filters, :EndTime, :BeginTime
        
        def initialize(filters=nil, endtime=nil, begintime=nil)
          @Filters = filters
          @EndTime = endtime
          @BeginTime = begintime
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @EndTime = params['EndTime']
          @BeginTime = params['BeginTime']
        end
      end

      # DescribeDiskOperationLogs返回参数结构体
      class DescribeDiskOperationLogsResponse < TencentCloud::Common::AbstractModel
        # @param DiskOperationLogSet: 云盘的操作日志列表。
        # @type DiskOperationLogSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskOperationLogSet, :RequestId
        
        def initialize(diskoperationlogset=nil, requestid=nil)
          @DiskOperationLogSet = diskoperationlogset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskOperationLogSet'].nil?
            @DiskOperationLogSet = []
            params['DiskOperationLogSet'].each do |i|
              diskoperationlog_tmp = DiskOperationLog.new
              diskoperationlog_tmp.deserialize(i)
              @DiskOperationLogSet << diskoperationlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiskStoragePool请求参数结构体
      class DescribeDiskStoragePoolRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        # @type Limit: Integer
        # @param CdcIds: 指定需要查询的独享集群ID列表，该入参不能与Filters一起使用。
        # @type CdcIds: Array
        # @param Filters: 过滤条件。参数不支持同时指定`CdcIds`和`Filters`。<br><li>cdc-id - Array of String - 是否必填：否 -（过滤条件）按独享集群ID过滤。<br><li>zone - Array of String - 是否必填：否 -（过滤条件）按独享集群所在[可用区](/document/product/213/15753#ZoneInfo)过滤。<br><li>cage-id - Array of String - 是否必填：否 -（过滤条件）按独享集群所在围笼的ID过滤。<br><li>disk-type - Array of String - 是否必填：否 -（过滤条件）按照云盘介质类型过滤。(CLOUD_BASIC：表示普通云硬盘 | CLOUD_PREMIUM：表示高性能云硬盘。| CLOUD_SSD：SSD表示SSD云硬盘。)
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        # @type Offset: Integer

        attr_accessor :Limit, :CdcIds, :Filters, :Offset
        
        def initialize(limit=nil, cdcids=nil, filters=nil, offset=nil)
          @Limit = limit
          @CdcIds = cdcids
          @Filters = filters
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @CdcIds = params['CdcIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
        end
      end

      # DescribeDiskStoragePool返回参数结构体
      class DescribeDiskStoragePoolResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的独享集群的数量
        # @type TotalCount: Integer
        # @param DiskStoragePoolSet: 独享集群的详细信息列表
        # @type DiskStoragePoolSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DiskStoragePoolSet, :RequestId
        
        def initialize(totalcount=nil, diskstoragepoolset=nil, requestid=nil)
          @TotalCount = totalcount
          @DiskStoragePoolSet = diskstoragepoolset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DiskStoragePoolSet'].nil?
            @DiskStoragePoolSet = []
            params['DiskStoragePoolSet'].each do |i|
              cdc_tmp = Cdc.new
              cdc_tmp.deserialize(i)
              @DiskStoragePoolSet << cdc_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisks请求参数结构体
      class DescribeDisksRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。参数不支持同时指定`DiskIds`和`Filters`。<br><li>disk-usage - Array of String - 是否必填：否 -（过滤条件）按云盘类型过滤。 (SYSTEM_DISK：表示系统盘 | DATA_DISK：表示数据盘)<br><li>disk-charge-type - Array of String - 是否必填：否 -（过滤条件）按照云硬盘计费模式过滤。 (PREPAID：表示预付费，即包年包月 | POSTPAID_BY_HOUR：表示后付费，即按量计费。)<br><li>portable - Array of String - 是否必填：否 -（过滤条件）按是否为弹性云盘过滤。 (TRUE：表示弹性云盘 | FALSE：表示非弹性云盘。)<br><li>project-id - Array of Integer - 是否必填：否 -（过滤条件）按云硬盘所属项目ID过滤。<br><li>disk-id - Array of String - 是否必填：否 -（过滤条件）按照云硬盘ID过滤。云盘ID形如：`disk-11112222`。<br><li>disk-name - Array of String - 是否必填：否 -（过滤条件）按照云盘名称过滤。<br><li>disk-type - Array of String - 是否必填：否 -（过滤条件）按照云盘介质类型过滤。(CLOUD_BASIC：表示普通云硬盘 | CLOUD_PREMIUM：表示高性能云硬盘。| CLOUD_SSD：表示SSD云硬盘 | CLOUD_HSSD：表示增强型SSD云硬盘。| CLOUD_TSSD：表示极速型云硬盘。)<br><li>disk-state - Array of String - 是否必填：否 -（过滤条件）按照云盘状态过滤。(UNATTACHED：未挂载 | ATTACHING：挂载中 | ATTACHED：已挂载 | DETACHING：解挂中 | EXPANDING：扩容中 | ROLLBACKING：回滚中 | TORECYCLE：待回收。)<br><li>instance-id - Array of String - 是否必填：否 -（过滤条件）按照云盘挂载的云主机实例ID过滤。可根据此参数查询挂载在指定云主机下的云硬盘。<br><li>zone - Array of String - 是否必填：否 -（过滤条件）按照[可用区](/document/product/213/15753#ZoneInfo)过滤。<br><li>instance-ip-address - Array of String - 是否必填：否 -（过滤条件）按云盘所挂载云主机的内网或外网IP过滤。<br><li>instance-name - Array of String - 是否必填：否 -（过滤条件）按云盘所挂载的实例名称过滤。<br><li>tag-key - Array of String - 是否必填：否 -（过滤条件）按照标签键进行过滤。<br><li>tag-value - Array of String - 是否必填：否 -（过滤条件）照标签值进行过滤。<br><li>tag:tag-key - Array of String - 是否必填：否 -（过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        # @type Limit: Integer
        # @param OrderField: 云盘列表排序的依据字段。取值范围：<br><li>CREATE_TIME：依据云盘的创建时间排序<br><li>DEADLINE：依据云盘的到期时间排序<br>默认按云盘创建时间排序。
        # @type OrderField: String
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        # @type Offset: Integer
        # @param ReturnBindAutoSnapshotPolicy: 云盘详情中是否需要返回云盘绑定的定期快照策略ID，TRUE表示需要返回，FALSE表示不返回。
        # @type ReturnBindAutoSnapshotPolicy: Boolean
        # @param DiskIds: 按照一个或者多个云硬盘ID查询。云硬盘ID形如：`disk-11112222`，此参数的具体格式可参考API[简介](/document/product/362/15633)的ids.N一节）。参数不支持同时指定`DiskIds`和`Filters`。
        # @type DiskIds: Array
        # @param Order: 输出云盘列表的排列顺序。取值范围：<br><li>ASC：升序排列<br><li>DESC：降序排列。
        # @type Order: String

        attr_accessor :Filters, :Limit, :OrderField, :Offset, :ReturnBindAutoSnapshotPolicy, :DiskIds, :Order
        
        def initialize(filters=nil, limit=nil, orderfield=nil, offset=nil, returnbindautosnapshotpolicy=nil, diskids=nil, order=nil)
          @Filters = filters
          @Limit = limit
          @OrderField = orderfield
          @Offset = offset
          @ReturnBindAutoSnapshotPolicy = returnbindautosnapshotpolicy
          @DiskIds = diskids
          @Order = order
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Offset = params['Offset']
          @ReturnBindAutoSnapshotPolicy = params['ReturnBindAutoSnapshotPolicy']
          @DiskIds = params['DiskIds']
          @Order = params['Order']
        end
      end

      # DescribeDisks返回参数结构体
      class DescribeDisksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的云硬盘数量。
        # @type TotalCount: Integer
        # @param DiskSet: 云硬盘的详细信息列表。
        # @type DiskSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DiskSet, :RequestId
        
        def initialize(totalcount=nil, diskset=nil, requestid=nil)
          @TotalCount = totalcount
          @DiskSet = diskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DiskSet'].nil?
            @DiskSet = []
            params['DiskSet'].each do |i|
              disk_tmp = Disk.new
              disk_tmp.deserialize(i)
              @DiskSet << disk_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesDiskNum请求参数结构体
      class DescribeInstancesDiskNumRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 云服务器实例ID，通过[DescribeInstances](/document/product/213/15728)接口查询。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds
        
        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstancesDiskNum返回参数结构体
      class DescribeInstancesDiskNumResponse < TencentCloud::Common::AbstractModel
        # @param AttachDetail: 各个云服务器已挂载和可挂载弹性云盘的数量。
        # @type AttachDetail: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttachDetail, :RequestId
        
        def initialize(attachdetail=nil, requestid=nil)
          @AttachDetail = attachdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AttachDetail'].nil?
            @AttachDetail = []
            params['AttachDetail'].each do |i|
              attachdetail_tmp = AttachDetail.new
              attachdetail_tmp.deserialize(i)
              @AttachDetail << attachdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshotOperationLogs请求参数结构体
      class DescribeSnapshotOperationLogsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。支持以下条件：
        # <li>snapshot-id - Array of String - 是否必填：是 - 按快照ID过滤，每个请求最多可指定10个快照ID。
        # @type Filters: Array
        # @param EndTime: 要查询的操作日志的截止时间，例如：“2019-11-22 23:59:59"
        # @type EndTime: String
        # @param BeginTime: 要查询的操作日志的起始时间，例如：“2019-11-22 00:00:00"
        # @type BeginTime: String

        attr_accessor :Filters, :EndTime, :BeginTime
        
        def initialize(filters=nil, endtime=nil, begintime=nil)
          @Filters = filters
          @EndTime = endtime
          @BeginTime = begintime
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @EndTime = params['EndTime']
          @BeginTime = params['BeginTime']
        end
      end

      # DescribeSnapshotOperationLogs返回参数结构体
      class DescribeSnapshotOperationLogsResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotOperationLogSet: 快照操作日志列表。
        # @type SnapshotOperationLogSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SnapshotOperationLogSet, :RequestId
        
        def initialize(snapshotoperationlogset=nil, requestid=nil)
          @SnapshotOperationLogSet = snapshotoperationlogset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SnapshotOperationLogSet'].nil?
            @SnapshotOperationLogSet = []
            params['SnapshotOperationLogSet'].each do |i|
              snapshotoperationlog_tmp = SnapshotOperationLog.new
              snapshotoperationlog_tmp.deserialize(i)
              @SnapshotOperationLogSet << snapshotoperationlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshotSharePermission请求参数结构体
      class DescribeSnapshotSharePermissionRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 要查询快照的ID。可通过[DescribeSnapshots](https://cloud.tencent.com/document/api/362/15647)查询获取。
        # @type SnapshotId: String

        attr_accessor :SnapshotId
        
        def initialize(snapshotid=nil)
          @SnapshotId = snapshotid
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
        end
      end

      # DescribeSnapshotSharePermission返回参数结构体
      class DescribeSnapshotSharePermissionResponse < TencentCloud::Common::AbstractModel
        # @param SharePermissionSet: 快照的分享信息的集合
        # @type SharePermissionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SharePermissionSet, :RequestId
        
        def initialize(sharepermissionset=nil, requestid=nil)
          @SharePermissionSet = sharepermissionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SharePermissionSet'].nil?
            @SharePermissionSet = []
            params['SharePermissionSet'].each do |i|
              sharepermission_tmp = SharePermission.new
              sharepermission_tmp.deserialize(i)
              @SharePermissionSet << sharepermission_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshots请求参数结构体
      class DescribeSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotIds: 要查询快照的ID列表。参数不支持同时指定`SnapshotIds`和`Filters`。
        # @type SnapshotIds: Array
        # @param Filters: 过滤条件。参数不支持同时指定`SnapshotIds`和`Filters`。<br><li>snapshot-id - Array of String - 是否必填：否 -（过滤条件）按照快照的ID过滤。快照ID形如：`snap-11112222`。<br><li>snapshot-name - Array of String - 是否必填：否 -（过滤条件）按照快照名称过滤。<br><li>snapshot-state - Array of String - 是否必填：否 -（过滤条件）按照快照状态过滤。 (NORMAL：正常 | CREATING：创建中 | ROLLBACKING：回滚中。)<br><li>disk-usage - Array of String - 是否必填：否 -（过滤条件）按创建快照的云盘类型过滤。 (SYSTEM_DISK：代表系统盘 | DATA_DISK：代表数据盘。)<br><li>project-id  - Array of String - 是否必填：否 -（过滤条件）按云硬盘所属项目ID过滤。<br><li>disk-id  - Array of String - 是否必填：否 -（过滤条件）按照创建快照的云硬盘ID过滤。<br><li>zone - Array of String - 是否必填：否 -（过滤条件）按照[可用区](/document/product/213/15753#ZoneInfo)过滤。<br><li>encrypt - Array of String - 是否必填：否 -（过滤条件）按是否加密盘快照过滤。 (TRUE：表示加密盘快照 | FALSE：表示非加密盘快照。)
        # <li>snapshot-type- Array of String - 是否必填：否 -（过滤条件）根据snapshot-type指定的快照类型查询对应的快照。
        # (SHARED_SNAPSHOT：表示共享过来的快照 | PRIVATE_SNAPSHOT：表示自己私有快照。)
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        # @type Limit: Integer
        # @param Order: 输出云盘列表的排列顺序。取值范围：<br><li>ASC：升序排列<br><li>DESC：降序排列。
        # @type Order: String
        # @param OrderField: 快照列表排序的依据字段。取值范围：<br><li>CREATE_TIME：依据快照的创建时间排序<br>默认按创建时间排序。
        # @type OrderField: String

        attr_accessor :SnapshotIds, :Filters, :Offset, :Limit, :Order, :OrderField
        
        def initialize(snapshotids=nil, filters=nil, offset=nil, limit=nil, order=nil, orderfield=nil)
          @SnapshotIds = snapshotids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @Order = order
          @OrderField = orderfield
        end

        def deserialize(params)
          @SnapshotIds = params['SnapshotIds']
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
          @Order = params['Order']
          @OrderField = params['OrderField']
        end
      end

      # DescribeSnapshots返回参数结构体
      class DescribeSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 快照的数量。
        # @type TotalCount: Integer
        # @param SnapshotSet: 快照的详情列表。
        # @type SnapshotSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SnapshotSet, :RequestId
        
        def initialize(totalcount=nil, snapshotset=nil, requestid=nil)
          @TotalCount = totalcount
          @SnapshotSet = snapshotset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SnapshotSet'].nil?
            @SnapshotSet = []
            params['SnapshotSet'].each do |i|
              snapshot_tmp = Snapshot.new
              snapshot_tmp.deserialize(i)
              @SnapshotSet << snapshot_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachDisks请求参数结构体
      class DetachDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 将要卸载的云硬盘ID， 通过[DescribeDisks](/document/product/362/16315)接口查询，单次请求最多可卸载10块弹性云盘。
        # @type DiskIds: Array
        # @param InstanceId: 对于非共享型云盘，会忽略该参数；对于共享型云盘，该参数表示要从哪个CVM实例上卸载云盘。
        # @type InstanceId: String

        attr_accessor :DiskIds, :InstanceId
        
        def initialize(diskids=nil, instanceid=nil)
          @DiskIds = diskids
          @InstanceId = instanceid
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @InstanceId = params['InstanceId']
        end
      end

      # DetachDisks返回参数结构体
      class DetachDisksResponse < TencentCloud::Common::AbstractModel
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

      # 描述了云硬盘的详细信息
      class Disk < TencentCloud::Common::AbstractModel
        # @param DeleteWithInstance: 云盘是否与挂载的实例一起销毁。<br><li>true:销毁实例时会同时销毁云盘，只支持按小时后付费云盘。<br><li>false：销毁实例时不销毁云盘。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteWithInstance: Boolean
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费<br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费<br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: String
        # @param DiskType: 硬盘介质类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_BSSD：表示通用型SSD云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘<br><li>CLOUD_HSSD：表示增强型SSD云硬盘<br><li>CLOUD_TSSD：表示极速型SSD云硬盘。
        # @type DiskType: String
        # @param DiskState: 云盘状态。取值范围：<br><li>UNATTACHED：未挂载<br><li>ATTACHING：挂载中<br><li>ATTACHED：已挂载<br><li>DETACHING：解挂中<br><li>EXPANDING：扩容中<br><li>ROLLBACKING：回滚中<br><li>TORECYCLE：待回收<br><li>DUMPING：拷贝硬盘中。
        # @type DiskState: String
        # @param SnapshotCount: 云盘拥有的快照总数。
        # @type SnapshotCount: Integer
        # @param AutoRenewFlagError: 云盘已挂载到子机，且子机与云盘都是包年包月。<br><li>true：子机设置了自动续费标识，但云盘未设置<br><li>false：云盘自动续费标识正常。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlagError: Boolean
        # @param Rollbacking: 云盘是否处于快照回滚状态。取值范围：<br><li>false:表示不处于快照回滚状态<br><li>true:表示处于快照回滚状态。
        # @type Rollbacking: Boolean
        # @param InstanceIdList: 对于非共享型云盘，该参数为空数组。对于共享型云盘，则表示该云盘当前被挂载到的CVM实例InstanceId
        # @type InstanceIdList: Array
        # @param Encrypt: 云盘是否为加密盘。取值范围：<br><li>false:表示非加密盘<br><li>true:表示加密盘。
        # @type Encrypt: Boolean
        # @param DiskName: 云硬盘名称。
        # @type DiskName: String
        # @param BackupDisk: 云硬盘因欠费销毁或者到期销毁时， 是否使用快照备份数据的标识。true表示销毁时创建快照进行数据备份。false表示直接销毁，不进行数据备份。
        # @type BackupDisk: Boolean
        # @param Tags: 与云盘绑定的标签，云盘未绑定标签则取值为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param InstanceId: 云硬盘挂载的云主机ID。
        # @type InstanceId: String
        # @param AttachMode: 云盘的挂载类型。取值范围：<br><li>PF: PF挂载<br><li>VF: VF挂载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachMode: String
        # @param AutoSnapshotPolicyIds: 云盘关联的定期快照ID。只有在调用DescribeDisks接口时，入参ReturnBindAutoSnapshotPolicy取值为TRUE才会返回该参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoSnapshotPolicyIds: Array
        # @param ThroughputPerformance: 云硬盘额外性能值，单位MB/s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThroughputPerformance: Integer
        # @param Migrating: 云盘是否处于类型变更中。取值范围：<br><li>false:表示云盘不处于类型变更中<br><li>true:表示云盘已发起类型变更，正处于迁移中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Migrating: Boolean
        # @param DiskId: 云硬盘ID。
        # @type DiskId: String
        # @param SnapshotSize: 云盘拥有的快照总容量，单位为MB。
        # @type SnapshotSize: Integer
        # @param Placement: 云硬盘所在的位置。
        # @type Placement: :class:`Tencentcloud::Cbs.v20170312.models.Placement`
        # @param IsReturnable: 判断预付费的云盘是否支持主动退还。<br><li>true:支持主动退还<br><li>false:不支持主动退还。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsReturnable: Boolean
        # @param DeadlineTime: 云硬盘的到期时间。
        # @type DeadlineTime: String
        # @param Attached: 云盘是否挂载到云主机上。取值范围：<br><li>false:表示未挂载<br><li>true:表示已挂载。
        # @type Attached: Boolean
        # @param DiskSize: 云硬盘大小，单位GB。
        # @type DiskSize: Integer
        # @param MigratePercent: 云盘类型变更的迁移进度，取值0到100。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MigratePercent: Integer
        # @param DiskUsage: 云硬盘类型。取值范围：<br><li>SYSTEM_DISK：系统盘<br><li>DATA_DISK：数据盘。
        # @type DiskUsage: String
        # @param DiskChargeType: 付费模式。取值范围：<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：后付费，即按量计费。
        # @type DiskChargeType: String
        # @param Portable: 是否为弹性云盘，false表示非弹性云盘，true表示弹性云盘。
        # @type Portable: Boolean
        # @param SnapshotAbility: 云盘是否具备创建快照的能力。取值范围：<br><li>false表示不具备<br><li>true表示具备。
        # @type SnapshotAbility: Boolean
        # @param DeadlineError: 在云盘已挂载到实例，且实例与云盘都是包年包月的条件下，此字段才有意义。<br><li>true:云盘到期时间早于实例。<br><li>false：云盘到期时间晚于实例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeadlineError: Boolean
        # @param RollbackPercent: 云盘快照回滚的进度。
        # @type RollbackPercent: Integer
        # @param DifferDaysOfDeadline: 当前时间距离盘到期的天数（仅对预付费盘有意义）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DifferDaysOfDeadline: Integer
        # @param ReturnFailCode: 预付费云盘在不支持主动退还的情况下，该参数表明不支持主动退还的具体原因。取值范围：<br><li>1：云硬盘已经退还<br><li>2：云硬盘已过期<br><li>3：云盘不支持退还<br><li>8：超过可退还数量的限制。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReturnFailCode: Integer
        # @param Shareable: 云盘是否为共享型云盘。
        # @type Shareable: Boolean
        # @param CreateTime: 云硬盘的创建时间。
        # @type CreateTime: String
        # @param DeleteSnapshot: 销毁云盘时删除关联的非永久保留快照。0 表示非永久快照不随云盘销毁而销毁，1表示非永久快照随云盘销毁而销毁，默认取0。快照是否永久保留可以通过DescribeSnapshots接口返回的快照详情的IsPermanent字段来判断，true表示永久快照，false表示非永久快照。
        # @type DeleteSnapshot: Integer
        # @param DiskBackupQuota: 云硬盘备份点配额。表示最大可以保留的备份点数量。
        # @type DiskBackupQuota: Integer
        # @param DiskBackupCount: 云硬盘备份点已使用的数量。
        # @type DiskBackupCount: Integer
        # @param InstanceType: 云硬盘挂载实例的类型。取值范围：<br><li>CVM<br><li>EKS
        # @type InstanceType: String

        attr_accessor :DeleteWithInstance, :RenewFlag, :DiskType, :DiskState, :SnapshotCount, :AutoRenewFlagError, :Rollbacking, :InstanceIdList, :Encrypt, :DiskName, :BackupDisk, :Tags, :InstanceId, :AttachMode, :AutoSnapshotPolicyIds, :ThroughputPerformance, :Migrating, :DiskId, :SnapshotSize, :Placement, :IsReturnable, :DeadlineTime, :Attached, :DiskSize, :MigratePercent, :DiskUsage, :DiskChargeType, :Portable, :SnapshotAbility, :DeadlineError, :RollbackPercent, :DifferDaysOfDeadline, :ReturnFailCode, :Shareable, :CreateTime, :DeleteSnapshot, :DiskBackupQuota, :DiskBackupCount, :InstanceType
        
        def initialize(deletewithinstance=nil, renewflag=nil, disktype=nil, diskstate=nil, snapshotcount=nil, autorenewflagerror=nil, rollbacking=nil, instanceidlist=nil, encrypt=nil, diskname=nil, backupdisk=nil, tags=nil, instanceid=nil, attachmode=nil, autosnapshotpolicyids=nil, throughputperformance=nil, migrating=nil, diskid=nil, snapshotsize=nil, placement=nil, isreturnable=nil, deadlinetime=nil, attached=nil, disksize=nil, migratepercent=nil, diskusage=nil, diskchargetype=nil, portable=nil, snapshotability=nil, deadlineerror=nil, rollbackpercent=nil, differdaysofdeadline=nil, returnfailcode=nil, shareable=nil, createtime=nil, deletesnapshot=nil, diskbackupquota=nil, diskbackupcount=nil, instancetype=nil)
          @DeleteWithInstance = deletewithinstance
          @RenewFlag = renewflag
          @DiskType = disktype
          @DiskState = diskstate
          @SnapshotCount = snapshotcount
          @AutoRenewFlagError = autorenewflagerror
          @Rollbacking = rollbacking
          @InstanceIdList = instanceidlist
          @Encrypt = encrypt
          @DiskName = diskname
          @BackupDisk = backupdisk
          @Tags = tags
          @InstanceId = instanceid
          @AttachMode = attachmode
          @AutoSnapshotPolicyIds = autosnapshotpolicyids
          @ThroughputPerformance = throughputperformance
          @Migrating = migrating
          @DiskId = diskid
          @SnapshotSize = snapshotsize
          @Placement = placement
          @IsReturnable = isreturnable
          @DeadlineTime = deadlinetime
          @Attached = attached
          @DiskSize = disksize
          @MigratePercent = migratepercent
          @DiskUsage = diskusage
          @DiskChargeType = diskchargetype
          @Portable = portable
          @SnapshotAbility = snapshotability
          @DeadlineError = deadlineerror
          @RollbackPercent = rollbackpercent
          @DifferDaysOfDeadline = differdaysofdeadline
          @ReturnFailCode = returnfailcode
          @Shareable = shareable
          @CreateTime = createtime
          @DeleteSnapshot = deletesnapshot
          @DiskBackupQuota = diskbackupquota
          @DiskBackupCount = diskbackupcount
          @InstanceType = instancetype
        end

        def deserialize(params)
          @DeleteWithInstance = params['DeleteWithInstance']
          @RenewFlag = params['RenewFlag']
          @DiskType = params['DiskType']
          @DiskState = params['DiskState']
          @SnapshotCount = params['SnapshotCount']
          @AutoRenewFlagError = params['AutoRenewFlagError']
          @Rollbacking = params['Rollbacking']
          @InstanceIdList = params['InstanceIdList']
          @Encrypt = params['Encrypt']
          @DiskName = params['DiskName']
          @BackupDisk = params['BackupDisk']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @AttachMode = params['AttachMode']
          @AutoSnapshotPolicyIds = params['AutoSnapshotPolicyIds']
          @ThroughputPerformance = params['ThroughputPerformance']
          @Migrating = params['Migrating']
          @DiskId = params['DiskId']
          @SnapshotSize = params['SnapshotSize']
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @IsReturnable = params['IsReturnable']
          @DeadlineTime = params['DeadlineTime']
          @Attached = params['Attached']
          @DiskSize = params['DiskSize']
          @MigratePercent = params['MigratePercent']
          @DiskUsage = params['DiskUsage']
          @DiskChargeType = params['DiskChargeType']
          @Portable = params['Portable']
          @SnapshotAbility = params['SnapshotAbility']
          @DeadlineError = params['DeadlineError']
          @RollbackPercent = params['RollbackPercent']
          @DifferDaysOfDeadline = params['DifferDaysOfDeadline']
          @ReturnFailCode = params['ReturnFailCode']
          @Shareable = params['Shareable']
          @CreateTime = params['CreateTime']
          @DeleteSnapshot = params['DeleteSnapshot']
          @DiskBackupQuota = params['DiskBackupQuota']
          @DiskBackupCount = params['DiskBackupCount']
          @InstanceType = params['InstanceType']
        end
      end

      # 云硬盘备份点。
      class DiskBackup < TencentCloud::Common::AbstractModel
        # @param DiskBackupId: 云硬盘备份点的ID。
        # @type DiskBackupId: String
        # @param DiskId: 云硬盘备份点关联的云硬盘ID。
        # @type DiskId: String
        # @param DiskSize: 云硬盘大小，单位GB。
        # @type DiskSize: Integer
        # @param DiskUsage: 云硬盘类型。取值范围：<br><li>SYSTEM_DISK：系统盘<br><li>DATA_DISK：数据盘。
        # @type DiskUsage: String
        # @param DiskBackupName: 备份点名称。
        # @type DiskBackupName: String
        # @param DiskBackupState: 云硬盘备份点状态。取值范围：<br><li>NORMAL：正常<br><li>CREATING：创建中<br><li>ROLLBACKING：回滚中
        # @type DiskBackupState: String
        # @param Percent: 云硬盘创建进度百分比。
        # @type Percent: Integer
        # @param CreateTime: 云硬盘备份点的创建时间。
        # @type CreateTime: String
        # @param Encrypt: 云盘是否为加密盘。取值范围：<br><li>false:表示非加密盘<br><li>true:表示加密盘。
        # @type Encrypt: Boolean

        attr_accessor :DiskBackupId, :DiskId, :DiskSize, :DiskUsage, :DiskBackupName, :DiskBackupState, :Percent, :CreateTime, :Encrypt
        
        def initialize(diskbackupid=nil, diskid=nil, disksize=nil, diskusage=nil, diskbackupname=nil, diskbackupstate=nil, percent=nil, createtime=nil, encrypt=nil)
          @DiskBackupId = diskbackupid
          @DiskId = diskid
          @DiskSize = disksize
          @DiskUsage = diskusage
          @DiskBackupName = diskbackupname
          @DiskBackupState = diskbackupstate
          @Percent = percent
          @CreateTime = createtime
          @Encrypt = encrypt
        end

        def deserialize(params)
          @DiskBackupId = params['DiskBackupId']
          @DiskId = params['DiskId']
          @DiskSize = params['DiskSize']
          @DiskUsage = params['DiskUsage']
          @DiskBackupName = params['DiskBackupName']
          @DiskBackupState = params['DiskBackupState']
          @Percent = params['Percent']
          @CreateTime = params['CreateTime']
          @Encrypt = params['Encrypt']
        end
      end

      # 描述了实例的计费模式
      class DiskChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买云盘的时长，默认单位为月，取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费<br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费<br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费<br><br>默认取值：NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费。
        # @type RenewFlag: String
        # @param CurInstanceDeadline: 需要将云盘的到期时间与挂载的子机对齐时，可传入该参数。该参数表示子机当前的到期时间，此时Period如果传入，则表示子机需要续费的时长，云盘会自动按对齐到子机续费后的到期时间续费，示例取值：2018-03-30 20:15:03。
        # @type CurInstanceDeadline: String

        attr_accessor :Period, :RenewFlag, :CurInstanceDeadline
        
        def initialize(period=nil, renewflag=nil, curinstancedeadline=nil)
          @Period = period
          @RenewFlag = renewflag
          @CurInstanceDeadline = curinstancedeadline
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
          @CurInstanceDeadline = params['CurInstanceDeadline']
        end
      end

      # 云盘配置。
      class DiskConfig < TencentCloud::Common::AbstractModel
        # @param Available: 配置是否可用。
        # @type Available: Boolean
        # @param DiskChargeType: 付费模式。取值范围：<br><li>PREPAID：表示预付费，即包年包月<br><li>POSTPAID_BY_HOUR：表示后付费，即按量计费。
        # @type DiskChargeType: String
        # @param Zone: 云硬盘所属的[可用区](/document/product/213/15753#ZoneInfo)。
        # @type Zone: String
        # @param InstanceFamily: 实例机型系列。详见[实例类型](https://cloud.tencent.com/document/product/213/11518)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceFamily: String
        # @param DiskType: 云盘介质类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_SSD：SSD表示SSD云硬盘。
        # @type DiskType: String
        # @param StepSize: 云盘大小变化的最小步长，单位GB。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StepSize: Integer
        # @param ExtraPerformanceRange: 额外的性能区间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraPerformanceRange: Array
        # @param DeviceClass: 实例机型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeviceClass: String
        # @param DiskUsage: 云盘类型。取值范围：<br><li>SYSTEM_DISK：表示系统盘<br><li>DATA_DISK：表示数据盘。
        # @type DiskUsage: String
        # @param MinDiskSize: 最小可配置云盘大小，单位GB。
        # @type MinDiskSize: Integer
        # @param MaxDiskSize: 最大可配置云盘大小，单位GB。
        # @type MaxDiskSize: Integer

        attr_accessor :Available, :DiskChargeType, :Zone, :InstanceFamily, :DiskType, :StepSize, :ExtraPerformanceRange, :DeviceClass, :DiskUsage, :MinDiskSize, :MaxDiskSize
        
        def initialize(available=nil, diskchargetype=nil, zone=nil, instancefamily=nil, disktype=nil, stepsize=nil, extraperformancerange=nil, deviceclass=nil, diskusage=nil, mindisksize=nil, maxdisksize=nil)
          @Available = available
          @DiskChargeType = diskchargetype
          @Zone = zone
          @InstanceFamily = instancefamily
          @DiskType = disktype
          @StepSize = stepsize
          @ExtraPerformanceRange = extraperformancerange
          @DeviceClass = deviceclass
          @DiskUsage = diskusage
          @MinDiskSize = mindisksize
          @MaxDiskSize = maxdisksize
        end

        def deserialize(params)
          @Available = params['Available']
          @DiskChargeType = params['DiskChargeType']
          @Zone = params['Zone']
          @InstanceFamily = params['InstanceFamily']
          @DiskType = params['DiskType']
          @StepSize = params['StepSize']
          @ExtraPerformanceRange = params['ExtraPerformanceRange']
          @DeviceClass = params['DeviceClass']
          @DiskUsage = params['DiskUsage']
          @MinDiskSize = params['MinDiskSize']
          @MaxDiskSize = params['MaxDiskSize']
        end
      end

      # 云盘操作日志。
      class DiskOperationLog < TencentCloud::Common::AbstractModel
        # @param OperationState: 操作的状态。取值范围：
        # SUCCESS :表示操作成功
        # FAILED :表示操作失败
        # PROCESSING :表示操作中。
        # @type OperationState: String
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param Operator: 操作者的UIN。
        # @type Operator: String
        # @param Operation: 操作类型。取值范围：
        # CBS_OPERATION_ATTACH：挂载云硬盘
        # CBS_OPERATION_DETACH：解挂云硬盘
        # CBS_OPERATION_RENEW：续费
        # CBS_OPERATION_EXPAND：扩容
        # CBS_OPERATION_CREATE：创建
        # CBS_OPERATION_ISOLATE：隔离
        # CBS_OPERATION_MODIFY：修改云硬盘属性
        # ASP_OPERATION_BIND：关联定期快照策略
        # ASP_OPERATION_UNBIND：取消关联定期快照策略
        # @type Operation: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param DiskId: 操作的云盘ID。
        # @type DiskId: String

        attr_accessor :OperationState, :StartTime, :Operator, :Operation, :EndTime, :DiskId
        
        def initialize(operationstate=nil, starttime=nil, operator=nil, operation=nil, endtime=nil, diskid=nil)
          @OperationState = operationstate
          @StartTime = starttime
          @Operator = operator
          @Operation = operation
          @EndTime = endtime
          @DiskId = diskid
        end

        def deserialize(params)
          @OperationState = params['OperationState']
          @StartTime = params['StartTime']
          @Operator = params['Operator']
          @Operation = params['Operation']
          @EndTime = params['EndTime']
          @DiskId = params['DiskId']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Values: 一个或者多个过滤值。
        # @type Values: Array
        # @param Name: 过滤键的名称。
        # @type Name: String

        attr_accessor :Values, :Name
        
        def initialize(values=nil, name=nil)
          @Values = values
          @Name = name
        end

        def deserialize(params)
          @Values = params['Values']
          @Name = params['Name']
        end
      end

      # GetSnapOverview请求参数结构体
      class GetSnapOverviewRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetSnapOverview返回参数结构体
      class GetSnapOverviewResponse < TencentCloud::Common::AbstractModel
        # @param TotalSize: 用户快照总大小
        # @type TotalSize: Float
        # @param RealTradeSize: 用户快照总大小（用于计费）
        # @type RealTradeSize: Float
        # @param FreeQuota: 快照免费额度
        # @type FreeQuota: Float
        # @param TotalNums: 快照总个数
        # @type TotalNums: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalSize, :RealTradeSize, :FreeQuota, :TotalNums, :RequestId
        
        def initialize(totalsize=nil, realtradesize=nil, freequota=nil, totalnums=nil, requestid=nil)
          @TotalSize = totalsize
          @RealTradeSize = realtradesize
          @FreeQuota = freequota
          @TotalNums = totalnums
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalSize = params['TotalSize']
          @RealTradeSize = params['RealTradeSize']
          @FreeQuota = params['FreeQuota']
          @TotalNums = params['TotalNums']
          @RequestId = params['RequestId']
        end
      end

      # 镜像。
      class Image < TencentCloud::Common::AbstractModel
        # @param ImageName: 镜像名称。
        # @type ImageName: String
        # @param ImageId: 镜像实例ID。
        # @type ImageId: String

        attr_accessor :ImageName, :ImageId
        
        def initialize(imagename=nil, imageid=nil)
          @ImageName = imagename
          @ImageId = imageid
        end

        def deserialize(params)
          @ImageName = params['ImageName']
          @ImageId = params['ImageId']
        end
      end

      # InitializeDisks请求参数结构体
      class InitializeDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 待重新初始化的云硬盘ID列表， 单次初始化限制20块以内
        # @type DiskIds: Array

        attr_accessor :DiskIds
        
        def initialize(diskids=nil)
          @DiskIds = diskids
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
        end
      end

      # InitializeDisks返回参数结构体
      class InitializeDisksResponse < TencentCloud::Common::AbstractModel
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

      # InquirePriceModifyDiskBackupQuota请求参数结构体
      class InquirePriceModifyDiskBackupQuotaRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID， 通过DescribeDisks（查询云硬盘信息）接口查询。
        # @type DiskId: String
        # @param DiskBackupQuota: 修改后的云硬盘备份点配额，即云盘可以拥有的备份点数量，单位为个。
        # @type DiskBackupQuota: Integer

        attr_accessor :DiskId, :DiskBackupQuota
        
        def initialize(diskid=nil, diskbackupquota=nil)
          @DiskId = diskid
          @DiskBackupQuota = diskbackupquota
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @DiskBackupQuota = params['DiskBackupQuota']
        end
      end

      # InquirePriceModifyDiskBackupQuota返回参数结构体
      class InquirePriceModifyDiskBackupQuotaResponse < TencentCloud::Common::AbstractModel
        # @param DiskPrice: 描述了修改云硬盘备份点之后的云盘价格。
        # @type DiskPrice: :class:`Tencentcloud::Cbs.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskPrice, :RequestId
        
        def initialize(diskprice=nil, requestid=nil)
          @DiskPrice = diskprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskPrice'].nil?
            @DiskPrice = Price.new
            @DiskPrice.deserialize(params['DiskPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceModifyDiskExtraPerformance请求参数结构体
      class InquirePriceModifyDiskExtraPerformanceRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID， 通过[DescribeDisks](/document/product/362/16315)接口查询。
        # @type DiskId: String
        # @param ThroughputPerformance: 额外购买的云硬盘性能值，单位MB/s。
        # @type ThroughputPerformance: Integer

        attr_accessor :DiskId, :ThroughputPerformance
        
        def initialize(diskid=nil, throughputperformance=nil)
          @DiskId = diskid
          @ThroughputPerformance = throughputperformance
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @ThroughputPerformance = params['ThroughputPerformance']
        end
      end

      # InquirePriceModifyDiskExtraPerformance返回参数结构体
      class InquirePriceModifyDiskExtraPerformanceResponse < TencentCloud::Common::AbstractModel
        # @param DiskPrice: 描述了调整云盘额外性能时对应的价格。
        # @type DiskPrice: :class:`Tencentcloud::Cbs.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskPrice, :RequestId
        
        def initialize(diskprice=nil, requestid=nil)
          @DiskPrice = diskprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskPrice'].nil?
            @DiskPrice = Price.new
            @DiskPrice.deserialize(params['DiskPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceCreateDisks请求参数结构体
      class InquiryPriceCreateDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskChargeType: 云硬盘计费类型。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费
        # @type DiskChargeType: String
        # @param DiskType: 硬盘介质类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘<br><li>CLOUD_HSSD：表示增强型SSD云硬盘<br><li>CLOUD_TSSD：表示极速型SSD云硬盘。
        # @type DiskType: String
        # @param DiskSize: 云硬盘大小，单位为GB。云盘大小取值范围参见云硬盘[产品分类](/document/product/362/2353)的说明。
        # @type DiskSize: Integer
        # @param ProjectId: 云盘所属项目ID。
        # @type ProjectId: Integer
        # @param DiskCount: 购买云盘的数量。不填则默认为1。
        # @type DiskCount: Integer
        # @param ThroughputPerformance: 额外购买的云硬盘性能值，单位MB/s。<br>目前仅支持增强型SSD云硬盘（CLOUD_HSSD）和极速型SSD云硬盘（CLOUD_TSSD）
        # @type ThroughputPerformance: Integer
        # @param DiskChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数指定包年包月云盘的购买时长、是否设置自动续费等属性。<br>创建预付费云盘该参数必传，创建按小时后付费云盘无需传该参数。
        # @type DiskChargePrepaid: :class:`Tencentcloud::Cbs.v20170312.models.DiskChargePrepaid`
        # @param DiskBackupQuota: 指定云硬盘备份点配额。
        # @type DiskBackupQuota: Integer

        attr_accessor :DiskChargeType, :DiskType, :DiskSize, :ProjectId, :DiskCount, :ThroughputPerformance, :DiskChargePrepaid, :DiskBackupQuota
        
        def initialize(diskchargetype=nil, disktype=nil, disksize=nil, projectid=nil, diskcount=nil, throughputperformance=nil, diskchargeprepaid=nil, diskbackupquota=nil)
          @DiskChargeType = diskchargetype
          @DiskType = disktype
          @DiskSize = disksize
          @ProjectId = projectid
          @DiskCount = diskcount
          @ThroughputPerformance = throughputperformance
          @DiskChargePrepaid = diskchargeprepaid
          @DiskBackupQuota = diskbackupquota
        end

        def deserialize(params)
          @DiskChargeType = params['DiskChargeType']
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @ProjectId = params['ProjectId']
          @DiskCount = params['DiskCount']
          @ThroughputPerformance = params['ThroughputPerformance']
          unless params['DiskChargePrepaid'].nil?
            @DiskChargePrepaid = DiskChargePrepaid.new
            @DiskChargePrepaid.deserialize(params['DiskChargePrepaid'])
          end
          @DiskBackupQuota = params['DiskBackupQuota']
        end
      end

      # InquiryPriceCreateDisks返回参数结构体
      class InquiryPriceCreateDisksResponse < TencentCloud::Common::AbstractModel
        # @param DiskPrice: 描述了新购云盘的价格。
        # @type DiskPrice: :class:`Tencentcloud::Cbs.v20170312.models.Price`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskPrice, :RequestId
        
        def initialize(diskprice=nil, requestid=nil)
          @DiskPrice = diskprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskPrice'].nil?
            @DiskPrice = Price.new
            @DiskPrice.deserialize(params['DiskPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewDisks请求参数结构体
      class InquiryPriceRenewDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID， 通过[DescribeDisks](/document/product/362/16315)接口查询。
        # @type DiskIds: Array
        # @param DiskChargePrepaids: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月云盘的购买时长。如果在该参数中指定CurInstanceDeadline，则会按对齐到子机到期时间来续费。如果是批量续费询价，该参数与Disks参数一一对应，元素数量需保持一致。
        # @type DiskChargePrepaids: Array
        # @param NewDeadline: 指定云盘新的到期时间，形式如：2017-12-17 00:00:00。参数`NewDeadline`和`DiskChargePrepaids`是两种指定询价时长的方式，两者必传一个。
        # @type NewDeadline: String
        # @param ProjectId: 云盘所属项目ID。 如传入则仅用于鉴权。
        # @type ProjectId: Integer

        attr_accessor :DiskIds, :DiskChargePrepaids, :NewDeadline, :ProjectId
        
        def initialize(diskids=nil, diskchargeprepaids=nil, newdeadline=nil, projectid=nil)
          @DiskIds = diskids
          @DiskChargePrepaids = diskchargeprepaids
          @NewDeadline = newdeadline
          @ProjectId = projectid
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          unless params['DiskChargePrepaids'].nil?
            @DiskChargePrepaids = []
            params['DiskChargePrepaids'].each do |i|
              diskchargeprepaid_tmp = DiskChargePrepaid.new
              diskchargeprepaid_tmp.deserialize(i)
              @DiskChargePrepaids << diskchargeprepaid_tmp
            end
          end
          @NewDeadline = params['NewDeadline']
          @ProjectId = params['ProjectId']
        end
      end

      # InquiryPriceRenewDisks返回参数结构体
      class InquiryPriceRenewDisksResponse < TencentCloud::Common::AbstractModel
        # @param DiskPrice: 描述了续费云盘的价格。
        # @type DiskPrice: :class:`Tencentcloud::Cbs.v20170312.models.PrepayPrice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskPrice, :RequestId
        
        def initialize(diskprice=nil, requestid=nil)
          @DiskPrice = diskprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskPrice'].nil?
            @DiskPrice = PrepayPrice.new
            @DiskPrice.deserialize(params['DiskPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceResizeDisk请求参数结构体
      class InquiryPriceResizeDiskRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID， 通过[DescribeDisks](/document/product/362/16315)接口查询。
        # @type DiskId: String
        # @param DiskSize: 云硬盘扩容后的大小，单位为GB，不得小于当前云硬盘大小。云盘大小取值范围参见云硬盘[产品分类](/document/product/362/2353)的说明。
        # @type DiskSize: Integer
        # @param ProjectId: 云盘所属项目ID。 如传入则仅用于鉴权。
        # @type ProjectId: Integer

        attr_accessor :DiskId, :DiskSize, :ProjectId
        
        def initialize(diskid=nil, disksize=nil, projectid=nil)
          @DiskId = diskid
          @DiskSize = disksize
          @ProjectId = projectid
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @DiskSize = params['DiskSize']
          @ProjectId = params['ProjectId']
        end
      end

      # InquiryPriceResizeDisk返回参数结构体
      class InquiryPriceResizeDiskResponse < TencentCloud::Common::AbstractModel
        # @param DiskPrice: 描述了扩容云盘的价格。
        # @type DiskPrice: :class:`Tencentcloud::Cbs.v20170312.models.PrepayPrice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskPrice, :RequestId
        
        def initialize(diskprice=nil, requestid=nil)
          @DiskPrice = diskprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskPrice'].nil?
            @DiskPrice = PrepayPrice.new
            @DiskPrice.deserialize(params['DiskPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyAutoSnapshotPolicyAttribute请求参数结构体
      class ModifyAutoSnapshotPolicyAttributeRequest < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 定期快照策略ID。
        # @type AutoSnapshotPolicyId: String
        # @param IsActivated: 是否激活定期快照策略，FALSE表示未激活，TRUE表示激活，默认为TRUE。
        # @type IsActivated: Boolean
        # @param IsPermanent: 通过该定期快照策略创建的快照是否永久保留。FALSE表示非永久保留，TRUE表示永久保留，默认为FALSE。
        # @type IsPermanent: Boolean
        # @param AutoSnapshotPolicyName: 要创建的定期快照策略名。不传则默认为“未命名”。最大长度不能超60个字节。
        # @type AutoSnapshotPolicyName: String
        # @param Policy: 定期快照的执行策略。
        # @type Policy: Array
        # @param RetentionDays: 通过该定期快照策略创建的快照保留天数。如果指定本参数，则IsPermanent入参不可指定为TRUE，否则会产生冲突。
        # @type RetentionDays: Integer

        attr_accessor :AutoSnapshotPolicyId, :IsActivated, :IsPermanent, :AutoSnapshotPolicyName, :Policy, :RetentionDays
        
        def initialize(autosnapshotpolicyid=nil, isactivated=nil, ispermanent=nil, autosnapshotpolicyname=nil, policy=nil, retentiondays=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @IsActivated = isactivated
          @IsPermanent = ispermanent
          @AutoSnapshotPolicyName = autosnapshotpolicyname
          @Policy = policy
          @RetentionDays = retentiondays
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @IsActivated = params['IsActivated']
          @IsPermanent = params['IsPermanent']
          @AutoSnapshotPolicyName = params['AutoSnapshotPolicyName']
          unless params['Policy'].nil?
            @Policy = []
            params['Policy'].each do |i|
              policy_tmp = Policy.new
              policy_tmp.deserialize(i)
              @Policy << policy_tmp
            end
          end
          @RetentionDays = params['RetentionDays']
        end
      end

      # ModifyAutoSnapshotPolicyAttribute返回参数结构体
      class ModifyAutoSnapshotPolicyAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDiskAttributes请求参数结构体
      class ModifyDiskAttributesRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 一个或多个待操作的云硬盘ID。如果传入多个云盘ID，仅支持所有云盘修改为同一属性。
        # @type DiskIds: Array
        # @param DiskName: 新的云硬盘名称。
        # @type DiskName: String
        # @param Portable: 是否为弹性云盘，FALSE表示非弹性云盘，TRUE表示弹性云盘。仅支持非弹性云盘修改为弹性云盘。
        # @type Portable: Boolean
        # @param ProjectId: 新的云硬盘项目ID，只支持修改弹性云盘的项目ID。通过[DescribeProject](/document/api/378/4400)接口查询可用项目及其ID。
        # @type ProjectId: Integer
        # @param DeleteWithInstance: 成功挂载到云主机后该云硬盘是否随云主机销毁，TRUE表示随云主机销毁，FALSE表示不随云主机销毁。仅支持按量计费云硬盘数据盘。
        # @type DeleteWithInstance: Boolean
        # @param DiskType: 变更云盘类型时，可传入该参数，表示变更的目标类型，取值范围：<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘。<br>当前不支持批量变更类型，即传入DiskType时，DiskIds仅支持传入一块云盘；<br>变更云盘类型时不支持同时变更其他属性。
        # @type DiskType: String

        attr_accessor :DiskIds, :DiskName, :Portable, :ProjectId, :DeleteWithInstance, :DiskType
        
        def initialize(diskids=nil, diskname=nil, portable=nil, projectid=nil, deletewithinstance=nil, disktype=nil)
          @DiskIds = diskids
          @DiskName = diskname
          @Portable = portable
          @ProjectId = projectid
          @DeleteWithInstance = deletewithinstance
          @DiskType = disktype
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @DiskName = params['DiskName']
          @Portable = params['Portable']
          @ProjectId = params['ProjectId']
          @DeleteWithInstance = params['DeleteWithInstance']
          @DiskType = params['DiskType']
        end
      end

      # ModifyDiskAttributes返回参数结构体
      class ModifyDiskAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDiskBackupQuota请求参数结构体
      class ModifyDiskBackupQuotaRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID。
        # @type DiskId: String
        # @param DiskBackupQuota: 调整之后的云硬盘备份点配额。
        # @type DiskBackupQuota: Integer

        attr_accessor :DiskId, :DiskBackupQuota
        
        def initialize(diskid=nil, diskbackupquota=nil)
          @DiskId = diskid
          @DiskBackupQuota = diskbackupquota
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @DiskBackupQuota = params['DiskBackupQuota']
        end
      end

      # ModifyDiskBackupQuota返回参数结构体
      class ModifyDiskBackupQuotaResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDiskExtraPerformance请求参数结构体
      class ModifyDiskExtraPerformanceRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 需要创建快照的云硬盘ID，可通过[DescribeDisks](/document/product/362/16315)接口查询。
        # @type DiskId: String
        # @param ThroughputPerformance: 额外购买的云硬盘性能值，单位MB/s。
        # @type ThroughputPerformance: Integer

        attr_accessor :DiskId, :ThroughputPerformance
        
        def initialize(diskid=nil, throughputperformance=nil)
          @DiskId = diskid
          @ThroughputPerformance = throughputperformance
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @ThroughputPerformance = params['ThroughputPerformance']
        end
      end

      # ModifyDiskExtraPerformance返回参数结构体
      class ModifyDiskExtraPerformanceResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDisksChargeType请求参数结构体
      class ModifyDisksChargeTypeRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 一个或多个待操作的云硬盘ID。每次请求批量云盘上限为100。
        # @type DiskIds: Array
        # @param DiskChargePrepaid: 设置为预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。
        # @type DiskChargePrepaid: :class:`Tencentcloud::Cbs.v20170312.models.DiskChargePrepaid`
        # @param DiskChargePostpaid: 设置为后付费模式
        # @type DiskChargePostpaid: Boolean

        attr_accessor :DiskIds, :DiskChargePrepaid, :DiskChargePostpaid
        
        def initialize(diskids=nil, diskchargeprepaid=nil, diskchargepostpaid=nil)
          @DiskIds = diskids
          @DiskChargePrepaid = diskchargeprepaid
          @DiskChargePostpaid = diskchargepostpaid
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          unless params['DiskChargePrepaid'].nil?
            @DiskChargePrepaid = DiskChargePrepaid.new
            @DiskChargePrepaid.deserialize(params['DiskChargePrepaid'])
          end
          @DiskChargePostpaid = params['DiskChargePostpaid']
        end
      end

      # ModifyDisksChargeType返回参数结构体
      class ModifyDisksChargeTypeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDisksRenewFlag请求参数结构体
      class ModifyDisksRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 一个或多个待操作的云硬盘ID。
        # @type DiskIds: Array
        # @param RenewFlag: 云盘的续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费<br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费<br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费。
        # @type RenewFlag: String

        attr_accessor :DiskIds, :RenewFlag
        
        def initialize(diskids=nil, renewflag=nil)
          @DiskIds = diskids
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @RenewFlag = params['RenewFlag']
        end
      end

      # ModifyDisksRenewFlag返回参数结构体
      class ModifyDisksRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifySnapshotAttribute请求参数结构体
      class ModifySnapshotAttributeRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照ID, 可通过[DescribeSnapshots](/document/product/362/15647)查询。
        # @type SnapshotId: String
        # @param IsPermanent: 快照的保留方式，FALSE表示非永久保留，TRUE表示永久保留。
        # @type IsPermanent: Boolean
        # @param SnapshotName: 新的快照名称。最长为60个字符。
        # @type SnapshotName: String
        # @param Deadline: 快照的到期时间；设置好快照将会被同时设置为非永久保留方式；超过到期时间后快照将会被自动删除。
        # @type Deadline: String

        attr_accessor :SnapshotId, :IsPermanent, :SnapshotName, :Deadline
        
        def initialize(snapshotid=nil, ispermanent=nil, snapshotname=nil, deadline=nil)
          @SnapshotId = snapshotid
          @IsPermanent = ispermanent
          @SnapshotName = snapshotname
          @Deadline = deadline
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @IsPermanent = params['IsPermanent']
          @SnapshotName = params['SnapshotName']
          @Deadline = params['Deadline']
        end
      end

      # ModifySnapshotAttribute返回参数结构体
      class ModifySnapshotAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySnapshotsSharePermission请求参数结构体
      class ModifySnapshotsSharePermissionRequest < TencentCloud::Common::AbstractModel
        # @param AccountIds: 接收分享快照的账号Id列表，array型参数的格式可以参考[API简介](https://cloud.tencent.com/document/api/213/568)。帐号ID不同于QQ号，查询用户帐号ID请查看[帐号信息](https://console.cloud.tencent.com/developer)中的帐号ID栏。
        # @type AccountIds: Array
        # @param Permission: 操作，包括 SHARE，CANCEL。其中SHARE代表分享操作，CANCEL代表取消分享操作。
        # @type Permission: String
        # @param SnapshotIds: 快照ID, 可通过[DescribeSnapshots](https://cloud.tencent.com/document/api/362/15647)查询获取。
        # @type SnapshotIds: Array

        attr_accessor :AccountIds, :Permission, :SnapshotIds
        
        def initialize(accountids=nil, permission=nil, snapshotids=nil)
          @AccountIds = accountids
          @Permission = permission
          @SnapshotIds = snapshotids
        end

        def deserialize(params)
          @AccountIds = params['AccountIds']
          @Permission = params['Permission']
          @SnapshotIds = params['SnapshotIds']
        end
      end

      # ModifySnapshotsSharePermission返回参数结构体
      class ModifySnapshotsSharePermissionResponse < TencentCloud::Common::AbstractModel
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

      # 描述了实例的抽象位置，包括其所在的可用区，所属的项目，以及所属的独享集群的ID和名字。
      class Placement < TencentCloud::Common::AbstractModel
        # @param Zone: 云硬盘所属的[可用区](/document/product/213/15753#ZoneInfo)。该参数也可以通过调用  [DescribeZones](/document/product/213/15707) 的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param CageId: 围笼Id。作为入参时，表示对指定的CageId的资源进行操作，可为空。 作为出参时，表示资源所属围笼ID，可为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CageId: String
        # @param ProjectId: 实例所属项目ID。该参数可以通过调用 [DescribeProject](/document/api/378/4400) 的返回值中的 projectId 字段来获取。不填为默认项目。
        # @type ProjectId: Integer
        # @param CdcName: 独享集群名字。作为入参时，忽略。作为出参时，表示云硬盘所属的独享集群名，可为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcName: String
        # @param CdcId: 实例所属的独享集群ID。作为入参时，表示对指定的CdcId独享集群的资源进行操作，可为空。 作为出参时，表示资源所属的独享集群的ID，可为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CdcId: String
        # @param DedicatedClusterId: 独享集群id。
        # @type DedicatedClusterId: String

        attr_accessor :Zone, :CageId, :ProjectId, :CdcName, :CdcId, :DedicatedClusterId
        
        def initialize(zone=nil, cageid=nil, projectid=nil, cdcname=nil, cdcid=nil, dedicatedclusterid=nil)
          @Zone = zone
          @CageId = cageid
          @ProjectId = projectid
          @CdcName = cdcname
          @CdcId = cdcid
          @DedicatedClusterId = dedicatedclusterid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @CageId = params['CageId']
          @ProjectId = params['ProjectId']
          @CdcName = params['CdcName']
          @CdcId = params['CdcId']
          @DedicatedClusterId = params['DedicatedClusterId']
        end
      end

      # 描述了定期快照的执行策略。可理解为在DayOfWeek/DayOfMonth指定的几天中，或者是IntervalDays设定的间隔的几天，在Hour指定的小时执行该条定期快照策略。注：DayOfWeek/DayOfMonth/IntervalDays为互斥规则，仅可设置其中一条策略规则。
      class Policy < TencentCloud::Common::AbstractModel
        # @param Hour: 指定定期快照策略的触发时间。单位为小时，取值范围：[0, 23]。00:00 ~ 23:00 共 24 个时间点可选，1表示 01:00，依此类推。
        # @type Hour: Array
        # @param DayOfWeek: 指定每周从周一到周日需要触发定期快照的日期，取值范围：[0, 6]。0表示周日触发，1-6分别表示周一至周六。
        # @type DayOfWeek: Array

        attr_accessor :Hour, :DayOfWeek
        
        def initialize(hour=nil, dayofweek=nil)
          @Hour = hour
          @DayOfWeek = dayofweek
        end

        def deserialize(params)
          @Hour = params['Hour']
          @DayOfWeek = params['DayOfWeek']
        end
      end

      # 预付费订单的费用。
      class PrepayPrice < TencentCloud::Common::AbstractModel
        # @param DiscountPrice: 预付费云盘或快照预支费用的折扣价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPrice: Float
        # @param ChargeUnit: 后付费云盘的计价单元，取值范围：<br><li>HOUR：表示后付费云盘的计价单元是按小时计算。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeUnit: String
        # @param UnitPriceHigh: 高精度后付费云盘原单价, 单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceHigh: String
        # @param OriginalPriceHigh: 高精度预付费云盘或快照预支费用的原价，单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPriceHigh: String
        # @param OriginalPrice: 预付费云盘或快照预支费用的原价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPrice: Float
        # @param UnitPriceDiscount: 后付费云盘折扣单价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Float
        # @param UnitPriceDiscountHigh: 高精度后付费云盘折扣单价, 单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscountHigh: String
        # @param DiscountPriceHigh: 高精度预付费云盘或快照预支费用的折扣价，单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPriceHigh: String
        # @param UnitPrice: 后付费云盘原单价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float

        attr_accessor :DiscountPrice, :ChargeUnit, :UnitPriceHigh, :OriginalPriceHigh, :OriginalPrice, :UnitPriceDiscount, :UnitPriceDiscountHigh, :DiscountPriceHigh, :UnitPrice
        
        def initialize(discountprice=nil, chargeunit=nil, unitpricehigh=nil, originalpricehigh=nil, originalprice=nil, unitpricediscount=nil, unitpricediscounthigh=nil, discountpricehigh=nil, unitprice=nil)
          @DiscountPrice = discountprice
          @ChargeUnit = chargeunit
          @UnitPriceHigh = unitpricehigh
          @OriginalPriceHigh = originalpricehigh
          @OriginalPrice = originalprice
          @UnitPriceDiscount = unitpricediscount
          @UnitPriceDiscountHigh = unitpricediscounthigh
          @DiscountPriceHigh = discountpricehigh
          @UnitPrice = unitprice
        end

        def deserialize(params)
          @DiscountPrice = params['DiscountPrice']
          @ChargeUnit = params['ChargeUnit']
          @UnitPriceHigh = params['UnitPriceHigh']
          @OriginalPriceHigh = params['OriginalPriceHigh']
          @OriginalPrice = params['OriginalPrice']
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @UnitPriceDiscountHigh = params['UnitPriceDiscountHigh']
          @DiscountPriceHigh = params['DiscountPriceHigh']
          @UnitPrice = params['UnitPrice']
        end
      end

      # 描述预付费或后付费云盘的价格。
      class Price < TencentCloud::Common::AbstractModel
        # @param UnitPriceDiscount: 后付费云盘折扣单价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscount: Float
        # @param DiscountPrice: 预付费云盘预支费用的折扣价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPrice: Float
        # @param UnitPrice: 后付费云盘原单价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPrice: Float
        # @param UnitPriceHigh: 高精度后付费云盘原单价, 单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceHigh: String
        # @param OriginalPriceHigh: 高精度预付费云盘预支费用的原价, 单位：元	。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPriceHigh: String
        # @param OriginalPrice: 预付费云盘预支费用的原价，单位：元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPrice: Float
        # @param DiscountPriceHigh: 高精度预付费云盘预支费用的折扣价, 单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPriceHigh: String
        # @param UnitPriceDiscountHigh: 高精度后付费云盘折扣单价, 单位：元
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnitPriceDiscountHigh: String
        # @param ChargeUnit: 后付费云盘的计价单元，取值范围：<br><li>HOUR：表示后付费云盘的计价单元是按小时计算。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChargeUnit: String

        attr_accessor :UnitPriceDiscount, :DiscountPrice, :UnitPrice, :UnitPriceHigh, :OriginalPriceHigh, :OriginalPrice, :DiscountPriceHigh, :UnitPriceDiscountHigh, :ChargeUnit
        
        def initialize(unitpricediscount=nil, discountprice=nil, unitprice=nil, unitpricehigh=nil, originalpricehigh=nil, originalprice=nil, discountpricehigh=nil, unitpricediscounthigh=nil, chargeunit=nil)
          @UnitPriceDiscount = unitpricediscount
          @DiscountPrice = discountprice
          @UnitPrice = unitprice
          @UnitPriceHigh = unitpricehigh
          @OriginalPriceHigh = originalpricehigh
          @OriginalPrice = originalprice
          @DiscountPriceHigh = discountpricehigh
          @UnitPriceDiscountHigh = unitpricediscounthigh
          @ChargeUnit = chargeunit
        end

        def deserialize(params)
          @UnitPriceDiscount = params['UnitPriceDiscount']
          @DiscountPrice = params['DiscountPrice']
          @UnitPrice = params['UnitPrice']
          @UnitPriceHigh = params['UnitPriceHigh']
          @OriginalPriceHigh = params['OriginalPriceHigh']
          @OriginalPrice = params['OriginalPrice']
          @DiscountPriceHigh = params['DiscountPriceHigh']
          @UnitPriceDiscountHigh = params['UnitPriceDiscountHigh']
          @ChargeUnit = params['ChargeUnit']
        end
      end

      # RenewDisk请求参数结构体
      class RenewDiskRequest < TencentCloud::Common::AbstractModel
        # @param DiskChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月云盘的续费时长。<br>在云盘与挂载的实例一起续费的场景下，可以指定参数CurInstanceDeadline，此时云盘会按对齐到实例续费后的到期时间来续费。
        # @type DiskChargePrepaid: :class:`Tencentcloud::Cbs.v20170312.models.DiskChargePrepaid`
        # @param DiskId: 云硬盘ID， 通过[DescribeDisks](/document/product/362/16315)接口查询。
        # @type DiskId: String

        attr_accessor :DiskChargePrepaid, :DiskId
        
        def initialize(diskchargeprepaid=nil, diskid=nil)
          @DiskChargePrepaid = diskchargeprepaid
          @DiskId = diskid
        end

        def deserialize(params)
          unless params['DiskChargePrepaid'].nil?
            @DiskChargePrepaid = DiskChargePrepaid.new
            @DiskChargePrepaid.deserialize(params['DiskChargePrepaid'])
          end
          @DiskId = params['DiskId']
        end
      end

      # RenewDisk返回参数结构体
      class RenewDiskResponse < TencentCloud::Common::AbstractModel
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

      # ResizeDisk请求参数结构体
      class ResizeDiskRequest < TencentCloud::Common::AbstractModel
        # @param DiskSize: 云硬盘扩容后的大小，单位为GB，必须大于当前云硬盘大小。云盘大小取值范围参见云硬盘[产品分类](/document/product/362/2353)的说明。
        # @type DiskSize: Integer
        # @param DiskId: 云硬盘ID， 通过[DescribeDisks](/document/product/362/16315)接口查询。
        # @type DiskId: String

        attr_accessor :DiskSize, :DiskId
        
        def initialize(disksize=nil, diskid=nil)
          @DiskSize = disksize
          @DiskId = diskid
        end

        def deserialize(params)
          @DiskSize = params['DiskSize']
          @DiskId = params['DiskId']
        end
      end

      # ResizeDisk返回参数结构体
      class ResizeDiskResponse < TencentCloud::Common::AbstractModel
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

      # 快照分享信息集合
      class SharePermission < TencentCloud::Common::AbstractModel
        # @param CreatedTime: 快照分享的时间
        # @type CreatedTime: String
        # @param AccountId: 分享的账号Id
        # @type AccountId: String

        attr_accessor :CreatedTime, :AccountId
        
        def initialize(createdtime=nil, accountid=nil)
          @CreatedTime = createdtime
          @AccountId = accountid
        end

        def deserialize(params)
          @CreatedTime = params['CreatedTime']
          @AccountId = params['AccountId']
        end
      end

      # 描述了快照的详细信息
      class Snapshot < TencentCloud::Common::AbstractModel
        # @param Placement: 快照所在的位置。
        # @type Placement: :class:`Tencentcloud::Cbs.v20170312.models.Placement`
        # @param CopyFromRemote: 是否为跨地域复制的快照。取值范围：<br><li>true：表示为跨地域复制的快照。<br><li>false:本地域的快照。
        # @type CopyFromRemote: Boolean
        # @param SnapshotState: 快照的状态。取值范围：<br><li>NORMAL：正常<br><li>CREATING：创建中<br><li>ROLLBACKING：回滚中<br><li>COPYING_FROM_REMOTE：跨地域复制中<br><li>CHECKING_COPIED：复制校验中<br><li>TORECYCLE：待回收。
        # @type SnapshotState: String
        # @param IsPermanent: 是否为永久快照。取值范围：<br><li>true：永久快照<br><li>false：非永久快照。
        # @type IsPermanent: Boolean
        # @param SnapshotName: 快照名称，用户自定义的快照别名。调用[ModifySnapshotAttribute](/document/product/362/15650)可修改此字段。
        # @type SnapshotName: String
        # @param DeadlineTime: 快照到期时间。如果快照为永久保留，此字段为空。
        # @type DeadlineTime: String
        # @param Percent: 快照创建进度百分比，快照创建成功后此字段恒为100。
        # @type Percent: Integer
        # @param Images: 快照关联的镜像列表。
        # @type Images: Array
        # @param ShareReference: 快照当前被共享数。
        # @type ShareReference: Integer
        # @param SnapshotType: 快照类型，目前该项取值可以为PRIVATE_SNAPSHOT或者SHARED_SNAPSHOT
        # @type SnapshotType: String
        # @param DiskSize: 创建此快照的云硬盘大小，单位GB。
        # @type DiskSize: Integer
        # @param DiskId: 创建此快照的云硬盘ID。
        # @type DiskId: String
        # @param CopyingToRegions: 快照正在跨地域复制的目的地域，默认取值为[]。
        # @type CopyingToRegions: Array
        # @param Encrypt: 是否为加密盘创建的快照。取值范围：<br><li>true：该快照为加密盘创建的<br><li>false:非加密盘创建的快照。
        # @type Encrypt: Boolean
        # @param CreateTime: 快照的创建时间。
        # @type CreateTime: String
        # @param ImageCount: 快照关联的镜像个数。
        # @type ImageCount: Integer
        # @param DiskUsage: 创建此快照的云硬盘类型。取值范围：<br><li>SYSTEM_DISK：系统盘<br><li>DATA_DISK：数据盘。
        # @type DiskUsage: String
        # @param SnapshotId: 快照ID。
        # @type SnapshotId: String
        # @param TimeStartShare: 快照开始共享的时间。
        # @type TimeStartShare: String
        # @param Tags: 快照绑定的标签列表。
        # @type Tags: Array

        attr_accessor :Placement, :CopyFromRemote, :SnapshotState, :IsPermanent, :SnapshotName, :DeadlineTime, :Percent, :Images, :ShareReference, :SnapshotType, :DiskSize, :DiskId, :CopyingToRegions, :Encrypt, :CreateTime, :ImageCount, :DiskUsage, :SnapshotId, :TimeStartShare, :Tags
        
        def initialize(placement=nil, copyfromremote=nil, snapshotstate=nil, ispermanent=nil, snapshotname=nil, deadlinetime=nil, percent=nil, images=nil, sharereference=nil, snapshottype=nil, disksize=nil, diskid=nil, copyingtoregions=nil, encrypt=nil, createtime=nil, imagecount=nil, diskusage=nil, snapshotid=nil, timestartshare=nil, tags=nil)
          @Placement = placement
          @CopyFromRemote = copyfromremote
          @SnapshotState = snapshotstate
          @IsPermanent = ispermanent
          @SnapshotName = snapshotname
          @DeadlineTime = deadlinetime
          @Percent = percent
          @Images = images
          @ShareReference = sharereference
          @SnapshotType = snapshottype
          @DiskSize = disksize
          @DiskId = diskid
          @CopyingToRegions = copyingtoregions
          @Encrypt = encrypt
          @CreateTime = createtime
          @ImageCount = imagecount
          @DiskUsage = diskusage
          @SnapshotId = snapshotid
          @TimeStartShare = timestartshare
          @Tags = tags
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @CopyFromRemote = params['CopyFromRemote']
          @SnapshotState = params['SnapshotState']
          @IsPermanent = params['IsPermanent']
          @SnapshotName = params['SnapshotName']
          @DeadlineTime = params['DeadlineTime']
          @Percent = params['Percent']
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              image_tmp = Image.new
              image_tmp.deserialize(i)
              @Images << image_tmp
            end
          end
          @ShareReference = params['ShareReference']
          @SnapshotType = params['SnapshotType']
          @DiskSize = params['DiskSize']
          @DiskId = params['DiskId']
          @CopyingToRegions = params['CopyingToRegions']
          @Encrypt = params['Encrypt']
          @CreateTime = params['CreateTime']
          @ImageCount = params['ImageCount']
          @DiskUsage = params['DiskUsage']
          @SnapshotId = params['SnapshotId']
          @TimeStartShare = params['TimeStartShare']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # 描述快照跨地域复制的结果。
      class SnapshotCopyResult < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 复制到目标地域的新快照ID。
        # @type SnapshotId: String
        # @param Message: 指示具体错误信息，成功时为空字符串。
        # @type Message: String
        # @param Code: 错误码，成功时取值为“Success”。
        # @type Code: String
        # @param DestinationRegion: 跨地复制的目标地域。
        # @type DestinationRegion: String

        attr_accessor :SnapshotId, :Message, :Code, :DestinationRegion
        
        def initialize(snapshotid=nil, message=nil, code=nil, destinationregion=nil)
          @SnapshotId = snapshotid
          @Message = message
          @Code = code
          @DestinationRegion = destinationregion
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @Message = params['Message']
          @Code = params['Code']
          @DestinationRegion = params['DestinationRegion']
        end
      end

      # 快照操作日志，已废弃。
      class SnapshotOperationLog < TencentCloud::Common::AbstractModel
        # @param OperationState: 操作的状态。取值范围：
        # SUCCESS :表示操作成功
        # FAILED :表示操作失败
        # PROCESSING :表示操作中。
        # @type OperationState: String
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param Operator: 操作者的UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Operator: String
        # @param SnapshotId: 操作的快照ID。
        # @type SnapshotId: String
        # @param Operation: 操作类型。取值范围：
        # SNAP_OPERATION_DELETE：删除快照
        # SNAP_OPERATION_ROLLBACK：回滚快照
        # SNAP_OPERATION_MODIFY：修改快照属性
        # SNAP_OPERATION_CREATE：创建快照
        # SNAP_OPERATION_COPY：跨地域复制快照
        # ASP_OPERATION_CREATE_SNAP：由定期快照策略创建快照
        # ASP_OPERATION_DELETE_SNAP：由定期快照策略删除快照
        # @type Operation: String
        # @param EndTime: 结束时间。
        # @type EndTime: String

        attr_accessor :OperationState, :StartTime, :Operator, :SnapshotId, :Operation, :EndTime
        
        def initialize(operationstate=nil, starttime=nil, operator=nil, snapshotid=nil, operation=nil, endtime=nil)
          @OperationState = operationstate
          @StartTime = starttime
          @Operator = operator
          @SnapshotId = snapshotid
          @Operation = operation
          @EndTime = endtime
        end

        def deserialize(params)
          @OperationState = params['OperationState']
          @StartTime = params['StartTime']
          @Operator = params['Operator']
          @SnapshotId = params['SnapshotId']
          @Operation = params['Operation']
          @EndTime = params['EndTime']
        end
      end

      # 标签。
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签健。
        # @type Key: String
        # @param Value: 标签值。
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

      # TerminateDisks请求参数结构体
      class TerminateDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 需退还的云盘ID列表。
        # @type DiskIds: Array
        # @param DeleteSnapshot: 销毁云盘时删除关联的非永久保留快照。0 表示非永久快照不随云盘销毁而销毁，1表示非永久快照随云盘销毁而销毁，默认取0。快照是否永久保留可以通过DescribeSnapshots接口返回的快照详情的IsPermanent字段来判断，true表示永久快照，false表示非永久快照。
        # @type DeleteSnapshot: Integer

        attr_accessor :DiskIds, :DeleteSnapshot
        
        def initialize(diskids=nil, deletesnapshot=nil)
          @DiskIds = diskids
          @DeleteSnapshot = deletesnapshot
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @DeleteSnapshot = params['DeleteSnapshot']
        end
      end

      # TerminateDisks返回参数结构体
      class TerminateDisksResponse < TencentCloud::Common::AbstractModel
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

      # UnbindAutoSnapshotPolicy请求参数结构体
      class UnbindAutoSnapshotPolicyRequest < TencentCloud::Common::AbstractModel
        # @param AutoSnapshotPolicyId: 要解绑的定期快照策略ID。
        # @type AutoSnapshotPolicyId: String
        # @param DiskIds: 要解绑定期快照策略的云盘ID列表。
        # @type DiskIds: Array

        attr_accessor :AutoSnapshotPolicyId, :DiskIds
        
        def initialize(autosnapshotpolicyid=nil, diskids=nil)
          @AutoSnapshotPolicyId = autosnapshotpolicyid
          @DiskIds = diskids
        end

        def deserialize(params)
          @AutoSnapshotPolicyId = params['AutoSnapshotPolicyId']
          @DiskIds = params['DiskIds']
        end
      end

      # UnbindAutoSnapshotPolicy返回参数结构体
      class UnbindAutoSnapshotPolicyResponse < TencentCloud::Common::AbstractModel
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

