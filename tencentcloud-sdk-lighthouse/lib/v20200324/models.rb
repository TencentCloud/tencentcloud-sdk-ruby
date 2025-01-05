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
  module Lighthouse
    module V20200324
      # ApplyDiskBackup请求参数结构体
      class ApplyDiskBackupRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID，可通过[DescribeDisks](https://cloud.tencent.com/document/api/1207/66093)接口查询。
        # @type DiskId: String
        # @param DiskBackupId: 云硬盘备份点ID，可通过[DescribeDiskBackups](https://cloud.tencent.com/document/api/1207/84379)接口查询。
        # @type DiskBackupId: String

        attr_accessor :DiskId, :DiskBackupId

        def initialize(diskid=nil, diskbackupid=nil)
          @DiskId = diskid
          @DiskBackupId = diskbackupid
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @DiskBackupId = params['DiskBackupId']
        end
      end

      # ApplyDiskBackup返回参数结构体
      class ApplyDiskBackupResponse < TencentCloud::Common::AbstractModel
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

      # ApplyFirewallTemplate请求参数结构体
      class ApplyFirewallTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。可通过[DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874)接口返回值字段TemplateSet获取。
        # @type TemplateId: String
        # @param ApplyInstances: 应用防火墙模板的实例列表。列表长度最大值是100。
        # @type ApplyInstances: Array

        attr_accessor :TemplateId, :ApplyInstances

        def initialize(templateid=nil, applyinstances=nil)
          @TemplateId = templateid
          @ApplyInstances = applyinstances
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['ApplyInstances'].nil?
            @ApplyInstances = []
            params['ApplyInstances'].each do |i|
              instanceidentifier_tmp = InstanceIdentifier.new
              instanceidentifier_tmp.deserialize(i)
              @ApplyInstances << instanceidentifier_tmp
            end
          end
        end
      end

      # ApplyFirewallTemplate返回参数结构体
      class ApplyFirewallTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
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

      # ApplyInstanceSnapshot请求参数结构体
      class ApplyInstanceSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/product/1207/47573) 接口返回值中的 InstanceId	获取。
        # @type InstanceId: String
        # @param SnapshotId: 快照 ID。可通过 [DescribeSnapshots](https://cloud.tencent.com/document/product/1207/54388) 接口返回值中的 SnapshotId		获取。
        # @type SnapshotId: String

        attr_accessor :InstanceId, :SnapshotId

        def initialize(instanceid=nil, snapshotid=nil)
          @InstanceId = instanceid
          @SnapshotId = snapshotid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SnapshotId = params['SnapshotId']
        end
      end

      # ApplyInstanceSnapshot返回参数结构体
      class ApplyInstanceSnapshotResponse < TencentCloud::Common::AbstractModel
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

      # AssociateInstancesKeyPairs请求参数结构体
      class AssociateInstancesKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥对 ID 列表，每次请求批量密钥对的上限为 100。可通过[DescribeKeyPairs](https://cloud.tencent.com/document/api/1207/55540)接口返回值中的KeyId获取。
        # @type KeyIds: Array
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array

        attr_accessor :KeyIds, :InstanceIds

        def initialize(keyids=nil, instanceids=nil)
          @KeyIds = keyids
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
          @InstanceIds = params['InstanceIds']
        end
      end

      # AssociateInstancesKeyPairs返回参数结构体
      class AssociateInstancesKeyPairsResponse < TencentCloud::Common::AbstractModel
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

      # AttachCcn请求参数结构体
      class AttachCcnRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: 云联网实例ID。可通过[DescribeCcns](https://cloud.tencent.com/document/product/215/19199)接口返回值中的CcnId获取。
        # @type CcnId: String

        attr_accessor :CcnId

        def initialize(ccnid=nil)
          @CcnId = ccnid
        end

        def deserialize(params)
          @CcnId = params['CcnId']
        end
      end

      # AttachCcn返回参数结构体
      class AttachCcnResponse < TencentCloud::Common::AbstractModel
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

      # 挂载信息
      class AttachDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param AttachedDiskCount: 实例已挂载弹性云盘数量
        # @type AttachedDiskCount: Integer
        # @param MaxAttachCount: 可挂载弹性云盘数量
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
        # @param DiskIds: 云硬盘ID列表。每次批量请求云硬盘的上限为 100。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。
        # @type DiskIds: Array
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param RenewFlag: 自动续费标识。取值范围：

        # NOTIFY_AND_AUTO_RENEW：通知过期且自动续费。 NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费，用户需要手动续费。 DISABLE_NOTIFY_AND_MANUAL_RENEW：不自动续费，且不通知。

        # 默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，云盘到期后将按月自动续费。
        # @type RenewFlag: String

        attr_accessor :DiskIds, :InstanceId, :RenewFlag

        def initialize(diskids=nil, instanceid=nil, renewflag=nil)
          @DiskIds = diskids
          @InstanceId = instanceid
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @InstanceId = params['InstanceId']
          @RenewFlag = params['RenewFlag']
        end
      end

      # AttachDisks返回参数结构体
      class AttachDisksResponse < TencentCloud::Common::AbstractModel
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

      # 自动挂载并初始化该数据盘。
      class AutoMountConfiguration < TencentCloud::Common::AbstractModel
        # @param InstanceId: 待挂载的实例ID。指定的实例必须与指定的数据盘处于同一可用区，实例状态必须处于“运行中”状态，且实例必须支持[自动化助手](https://cloud.tencent.com/document/product/1340/50752)。
        # @type InstanceId: String
        # @param MountPoint: 实例内的挂载点。仅Linux操作系统的实例可传入该参数, 不传则默认挂载在“/data/disk”路径下。
        # @type MountPoint: String
        # @param FileSystemType: 文件系统类型。取值: “ext4”、“xfs”。仅Linux操作系统的实例可传入该参数, 不传则默认为“ext4”。
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

      # 描述了镜像信息。
      class Blueprint < TencentCloud::Common::AbstractModel
        # @param BlueprintId: 镜像 ID  ，是 Blueprint 的唯一标识。
        # @type BlueprintId: String
        # @param DisplayTitle: 镜像对外展示标题。
        # @type DisplayTitle: String
        # @param DisplayVersion: 镜像对外展示版本。
        # @type DisplayVersion: String
        # @param Description: 镜像描述信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param OsName: 操作系统名称。
        # @type OsName: String
        # @param Platform: 操作系统平台。
        # @type Platform: String
        # @param PlatformType: 操作系统平台类型，如 LINUX_UNIX、WINDOWS。
        # @type PlatformType: String
        # @param BlueprintType: 镜像类型，如 APP_OS、PURE_OS、PRIVATE。
        # @type BlueprintType: String
        # @param ImageUrl: 镜像图片 URL。
        # @type ImageUrl: String
        # @param RequiredSystemDiskSize: 镜像所需系统盘大小，单位 GB。
        # @type RequiredSystemDiskSize: Integer
        # @param BlueprintState: 镜像状态。
        # @type BlueprintState: String
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param BlueprintName: 镜像名称。
        # @type BlueprintName: String
        # @param SupportAutomationTools: 镜像是否支持自动化助手。
        # @type SupportAutomationTools: Boolean
        # @param RequiredMemorySize: 镜像所需内存大小, 单位: GB
        # @type RequiredMemorySize: Integer
        # @param ImageId: CVM镜像共享到轻量应用服务器轻量应用服务器后的CVM镜像ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageId: String
        # @param CommunityUrl: 官方网站Url。
        # @type CommunityUrl: String
        # @param GuideUrl: 指导文章Url。
        # @type GuideUrl: String
        # @param SceneIdSet: 镜像关联使用场景Id列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SceneIdSet: Array
        # @param DockerVersion: Docker版本号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DockerVersion: String
        # @param BlueprintShared: 镜像是否已共享。
        # @type BlueprintShared: Boolean

        attr_accessor :BlueprintId, :DisplayTitle, :DisplayVersion, :Description, :OsName, :Platform, :PlatformType, :BlueprintType, :ImageUrl, :RequiredSystemDiskSize, :BlueprintState, :CreatedTime, :BlueprintName, :SupportAutomationTools, :RequiredMemorySize, :ImageId, :CommunityUrl, :GuideUrl, :SceneIdSet, :DockerVersion, :BlueprintShared

        def initialize(blueprintid=nil, displaytitle=nil, displayversion=nil, description=nil, osname=nil, platform=nil, platformtype=nil, blueprinttype=nil, imageurl=nil, requiredsystemdisksize=nil, blueprintstate=nil, createdtime=nil, blueprintname=nil, supportautomationtools=nil, requiredmemorysize=nil, imageid=nil, communityurl=nil, guideurl=nil, sceneidset=nil, dockerversion=nil, blueprintshared=nil)
          @BlueprintId = blueprintid
          @DisplayTitle = displaytitle
          @DisplayVersion = displayversion
          @Description = description
          @OsName = osname
          @Platform = platform
          @PlatformType = platformtype
          @BlueprintType = blueprinttype
          @ImageUrl = imageurl
          @RequiredSystemDiskSize = requiredsystemdisksize
          @BlueprintState = blueprintstate
          @CreatedTime = createdtime
          @BlueprintName = blueprintname
          @SupportAutomationTools = supportautomationtools
          @RequiredMemorySize = requiredmemorysize
          @ImageId = imageid
          @CommunityUrl = communityurl
          @GuideUrl = guideurl
          @SceneIdSet = sceneidset
          @DockerVersion = dockerversion
          @BlueprintShared = blueprintshared
        end

        def deserialize(params)
          @BlueprintId = params['BlueprintId']
          @DisplayTitle = params['DisplayTitle']
          @DisplayVersion = params['DisplayVersion']
          @Description = params['Description']
          @OsName = params['OsName']
          @Platform = params['Platform']
          @PlatformType = params['PlatformType']
          @BlueprintType = params['BlueprintType']
          @ImageUrl = params['ImageUrl']
          @RequiredSystemDiskSize = params['RequiredSystemDiskSize']
          @BlueprintState = params['BlueprintState']
          @CreatedTime = params['CreatedTime']
          @BlueprintName = params['BlueprintName']
          @SupportAutomationTools = params['SupportAutomationTools']
          @RequiredMemorySize = params['RequiredMemorySize']
          @ImageId = params['ImageId']
          @CommunityUrl = params['CommunityUrl']
          @GuideUrl = params['GuideUrl']
          @SceneIdSet = params['SceneIdSet']
          @DockerVersion = params['DockerVersion']
          @BlueprintShared = params['BlueprintShared']
        end
      end

      # 描述镜像实例信息。
      class BlueprintInstance < TencentCloud::Common::AbstractModel
        # @param Blueprint: 镜像信息。
        # @type Blueprint: :class:`Tencentcloud::Lighthouse.v20200324.models.Blueprint`
        # @param SoftwareSet: 软件列表。
        # @type SoftwareSet: Array
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String

        attr_accessor :Blueprint, :SoftwareSet, :InstanceId

        def initialize(blueprint=nil, softwareset=nil, instanceid=nil)
          @Blueprint = blueprint
          @SoftwareSet = softwareset
          @InstanceId = instanceid
        end

        def deserialize(params)
          unless params['Blueprint'].nil?
            @Blueprint = Blueprint.new
            @Blueprint.deserialize(params['Blueprint'])
          end
          unless params['SoftwareSet'].nil?
            @SoftwareSet = []
            params['SoftwareSet'].each do |i|
              software_tmp = Software.new
              software_tmp.deserialize(i)
              @SoftwareSet << software_tmp
            end
          end
          @InstanceId = params['InstanceId']
        end
      end

      # BlueprintPrice	自定义镜像的价格参数。
      class BlueprintPrice < TencentCloud::Common::AbstractModel
        # @param OriginalBlueprintPrice: 镜像单价，原价。单位元。
        # @type OriginalBlueprintPrice: Float
        # @param OriginalPrice: 镜像总价，原价。单位元。
        # @type OriginalPrice: Float
        # @param Discount: 折扣。
        # @type Discount: Float
        # @param DiscountPrice: 镜像折扣后总价。单位元。
        # @type DiscountPrice: Float

        attr_accessor :OriginalBlueprintPrice, :OriginalPrice, :Discount, :DiscountPrice

        def initialize(originalblueprintprice=nil, originalprice=nil, discount=nil, discountprice=nil)
          @OriginalBlueprintPrice = originalblueprintprice
          @OriginalPrice = originalprice
          @Discount = discount
          @DiscountPrice = discountprice
        end

        def deserialize(params)
          @OriginalBlueprintPrice = params['OriginalBlueprintPrice']
          @OriginalPrice = params['OriginalPrice']
          @Discount = params['Discount']
          @DiscountPrice = params['DiscountPrice']
        end
      end

      # 套餐信息。
      class Bundle < TencentCloud::Common::AbstractModel
        # @param BundleId: 套餐 ID。
        # @type BundleId: String
        # @param Memory: 内存大小，单位 GB。
        # @type Memory: Integer
        # @param SystemDiskType: 系统盘类型。
        # 取值范围：
        # <li> CLOUD_SSD：SSD 云硬盘</li><li> CLOUD_PREMIUM：高性能云硬盘</li>
        # @type SystemDiskType: String
        # @param SystemDiskSize: 系统盘大小。单位GB。
        # @type SystemDiskSize: Integer
        # @param MonthlyTraffic: 每月网络流量，单位 GB。
        # @type MonthlyTraffic: Integer
        # @param SupportLinuxUnixPlatform: 是否支持 Linux/Unix 平台。
        # @type SupportLinuxUnixPlatform: Boolean
        # @param SupportWindowsPlatform: 是否支持 Windows 平台。
        # @type SupportWindowsPlatform: Boolean
        # @param Price: 套餐当前单位价格信息。
        # @type Price: :class:`Tencentcloud::Lighthouse.v20200324.models.Price`
        # @param CPU: CPU 核数。
        # @type CPU: Integer
        # @param InternetMaxBandwidthOut: 峰值带宽，单位 Mbps。
        # @type InternetMaxBandwidthOut: Integer
        # @param InternetChargeType: 网络计费类型。
        # @type InternetChargeType: String
        # @param BundleSalesState: 套餐售卖状态,取值:‘AVAILABLE’(可用) , ‘SOLD_OUT’(售罄)
        # @type BundleSalesState: String
        # @param BundleType: 套餐类型。
        # 取值范围：
        # <li>STARTER_BUNDLE：入门型</li>
        # <li>GENERAL_BUNDLE：通用型</li>
        # <li>ENTERPRISE_BUNDLE：企业型</li>
        # <li>STORAGE_BUNDLE：存储型</li>
        # <li>EXCLUSIVE_BUNDLE：专属型</li>
        # <li>HK_EXCLUSIVE_BUNDLE：香港专属型 </li>
        # <li>CAREFREE_BUNDLE：无忧型</li>
        # <li>BEFAST_BUNDLE：蜂驰型 </li>
        # @type BundleType: String
        # @param BundleTypeDescription: 套餐类型描述信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BundleTypeDescription: String
        # @param BundleDisplayLabel: 套餐展示标签.
        # 取值范围:
        # "ACTIVITY": 活动套餐,
        # "NORMAL": 普通套餐
        # "CAREFREE": 无忧套餐
        # @type BundleDisplayLabel: String

        attr_accessor :BundleId, :Memory, :SystemDiskType, :SystemDiskSize, :MonthlyTraffic, :SupportLinuxUnixPlatform, :SupportWindowsPlatform, :Price, :CPU, :InternetMaxBandwidthOut, :InternetChargeType, :BundleSalesState, :BundleType, :BundleTypeDescription, :BundleDisplayLabel

        def initialize(bundleid=nil, memory=nil, systemdisktype=nil, systemdisksize=nil, monthlytraffic=nil, supportlinuxunixplatform=nil, supportwindowsplatform=nil, price=nil, cpu=nil, internetmaxbandwidthout=nil, internetchargetype=nil, bundlesalesstate=nil, bundletype=nil, bundletypedescription=nil, bundledisplaylabel=nil)
          @BundleId = bundleid
          @Memory = memory
          @SystemDiskType = systemdisktype
          @SystemDiskSize = systemdisksize
          @MonthlyTraffic = monthlytraffic
          @SupportLinuxUnixPlatform = supportlinuxunixplatform
          @SupportWindowsPlatform = supportwindowsplatform
          @Price = price
          @CPU = cpu
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @InternetChargeType = internetchargetype
          @BundleSalesState = bundlesalesstate
          @BundleType = bundletype
          @BundleTypeDescription = bundletypedescription
          @BundleDisplayLabel = bundledisplaylabel
        end

        def deserialize(params)
          @BundleId = params['BundleId']
          @Memory = params['Memory']
          @SystemDiskType = params['SystemDiskType']
          @SystemDiskSize = params['SystemDiskSize']
          @MonthlyTraffic = params['MonthlyTraffic']
          @SupportLinuxUnixPlatform = params['SupportLinuxUnixPlatform']
          @SupportWindowsPlatform = params['SupportWindowsPlatform']
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @CPU = params['CPU']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @InternetChargeType = params['InternetChargeType']
          @BundleSalesState = params['BundleSalesState']
          @BundleType = params['BundleType']
          @BundleTypeDescription = params['BundleTypeDescription']
          @BundleDisplayLabel = params['BundleDisplayLabel']
        end
      end

      # CancelShareBlueprintAcrossAccounts请求参数结构体
      class CancelShareBlueprintAcrossAccountsRequest < TencentCloud::Common::AbstractModel
        # @param BlueprintId: 镜像ID, 可以通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回的BlueprintId获取。
        # @type BlueprintId: String
        # @param AccountIds: 接收共享镜像的账号ID列表。账号ID不同于QQ号，查询用户账号ID请查看账号信息中的账号ID栏。账号个数取值最大为10。
        # @type AccountIds: Array

        attr_accessor :BlueprintId, :AccountIds

        def initialize(blueprintid=nil, accountids=nil)
          @BlueprintId = blueprintid
          @AccountIds = accountids
        end

        def deserialize(params)
          @BlueprintId = params['BlueprintId']
          @AccountIds = params['AccountIds']
        end
      end

      # CancelShareBlueprintAcrossAccounts返回参数结构体
      class CancelShareBlueprintAcrossAccountsResponse < TencentCloud::Common::AbstractModel
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

      # 云联网关联的实例列表。
      class CcnAttachedInstance < TencentCloud::Common::AbstractModel
        # @param CcnId: 云联网ID。
        # @type CcnId: String
        # @param CidrBlock: 关联实例CIDR。
        # @type CidrBlock: Array
        # @param State: 关联实例状态：

        # •  PENDING：申请中
        # •  ACTIVE：已连接
        # •  EXPIRED：已过期
        # •  REJECTED：已拒绝
        # •  DELETED：已删除
        # •  FAILED：失败的（2小时后将异步强制解关联）
        # •  ATTACHING：关联中
        # •  DETACHING：解关联中
        # •  DETACHFAILED：解关联失败（2小时后将异步强制解关联）
        # @type State: String
        # @param AttachedTime: 关联时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachedTime: String
        # @param Description: 备注
        # @type Description: String

        attr_accessor :CcnId, :CidrBlock, :State, :AttachedTime, :Description

        def initialize(ccnid=nil, cidrblock=nil, state=nil, attachedtime=nil, description=nil)
          @CcnId = ccnid
          @CidrBlock = cidrblock
          @State = state
          @AttachedTime = attachedtime
          @Description = description
        end

        def deserialize(params)
          @CcnId = params['CcnId']
          @CidrBlock = params['CidrBlock']
          @State = params['State']
          @AttachedTime = params['AttachedTime']
          @Description = params['Description']
        end
      end

      # 用户执行TAT命令的数据结构。
      class Command < TencentCloud::Common::AbstractModel
        # @param Content: Base64编码后的命令内容，长度不可超过64KB。
        # @type Content: String
        # @param Timeout: 命令超时时间，默认60秒。取值范围[1, 86400]。
        # @type Timeout: Integer
        # @param WorkingDirectory: 命令执行路径，对于 SHELL 命令默认为 /root，对于 POWERSHELL 命令默认为 C:\Program Files\qcloud\tat_agent\workdir。
        # @type WorkingDirectory: String
        # @param Username: 在 Lighthouse 实例中执行命令的用户名称。
        # 默认情况下，在 Linux 实例中以 root 用户执行命令；在Windows 实例中以 System 用户执行命令。
        # @type Username: String

        attr_accessor :Content, :Timeout, :WorkingDirectory, :Username

        def initialize(content=nil, timeout=nil, workingdirectory=nil, username=nil)
          @Content = content
          @Timeout = timeout
          @WorkingDirectory = workingdirectory
          @Username = username
        end

        def deserialize(params)
          @Content = params['Content']
          @Timeout = params['Timeout']
          @WorkingDirectory = params['WorkingDirectory']
          @Username = params['Username']
        end
      end

      # 容器环境变量
      class ContainerEnv < TencentCloud::Common::AbstractModel
        # @param Key: 环境变量Key
        # @type Key: String
        # @param Value: 环境变量值
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

      # CreateBlueprint请求参数结构体
      class CreateBlueprintRequest < TencentCloud::Common::AbstractModel
        # @param BlueprintName: 镜像名称。最大长度60。
        # @type BlueprintName: String
        # @param Description: 镜像描述。最大长度60。
        # @type Description: String
        # @param InstanceId: 需要制作镜像的实例ID。
        # @type InstanceId: String
        # @param ForcePowerOff: 是否执行强制关机以制作镜像。
        # 取值范围：
        # True：表示关机之后制作镜像
        # False：表示开机状态制作镜像
        # 默认取值：True
        # 开机状态制作镜像，可能导致部分数据未备份，影响数据安全。
        # @type ForcePowerOff: Boolean

        attr_accessor :BlueprintName, :Description, :InstanceId, :ForcePowerOff

        def initialize(blueprintname=nil, description=nil, instanceid=nil, forcepoweroff=nil)
          @BlueprintName = blueprintname
          @Description = description
          @InstanceId = instanceid
          @ForcePowerOff = forcepoweroff
        end

        def deserialize(params)
          @BlueprintName = params['BlueprintName']
          @Description = params['Description']
          @InstanceId = params['InstanceId']
          @ForcePowerOff = params['ForcePowerOff']
        end
      end

      # CreateBlueprint返回参数结构体
      class CreateBlueprintResponse < TencentCloud::Common::AbstractModel
        # @param BlueprintId: 自定义镜像ID。
        # @type BlueprintId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BlueprintId, :RequestId

        def initialize(blueprintid=nil, requestid=nil)
          @BlueprintId = blueprintid
          @RequestId = requestid
        end

        def deserialize(params)
          @BlueprintId = params['BlueprintId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDiskBackup请求参数结构体
      class CreateDiskBackupRequest < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID，可通过 [DescribeDisks](https://cloud.tencent.com/document/api/1207/66093) 接口返回值中的 DiskId 获取。
        # @type DiskId: String
        # @param DiskBackupName: 云硬盘备份点名称，最大长度为 90 。
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
        # @param DiskBackupId: 备份点ID。
        # @type DiskBackupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param Zone: 可用区。可通过[DescribeZones](https://cloud.tencent.com/document/product/1207/57513)返回值中的Zone获取。
        # @type Zone: String
        # @param DiskSize: 云硬盘大小, 单位: GB。
        # @type DiskSize: Integer
        # @param DiskType: 云硬盘介质类型。取值: "CLOUD_PREMIUM"(高性能云盘), "CLOUD_SSD"(SSD云硬盘)。
        # @type DiskType: String
        # @param DiskChargePrepaid: 云硬盘包年包月相关参数设置。
        # @type DiskChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.DiskChargePrepaid`
        # @param DiskName: 云硬盘名称。最大长度60。
        # @type DiskName: String
        # @param DiskCount: 云硬盘个数。取值范围: [1, 30]。默认值: 1。
        # @type DiskCount: Integer
        # @param DiskBackupQuota: 指定云硬盘备份点配额，取值范围: [0, 500]。不传时默认为不带备份点配额。
        # @type DiskBackupQuota: Integer
        # @param AutoVoucher: 是否自动使用代金券。默认不使用。
        # @type AutoVoucher: Boolean
        # @param AutoMountConfiguration: 自动挂载并初始化数据盘。
        # @type AutoMountConfiguration: :class:`Tencentcloud::Lighthouse.v20200324.models.AutoMountConfiguration`

        attr_accessor :Zone, :DiskSize, :DiskType, :DiskChargePrepaid, :DiskName, :DiskCount, :DiskBackupQuota, :AutoVoucher, :AutoMountConfiguration

        def initialize(zone=nil, disksize=nil, disktype=nil, diskchargeprepaid=nil, diskname=nil, diskcount=nil, diskbackupquota=nil, autovoucher=nil, automountconfiguration=nil)
          @Zone = zone
          @DiskSize = disksize
          @DiskType = disktype
          @DiskChargePrepaid = diskchargeprepaid
          @DiskName = diskname
          @DiskCount = diskcount
          @DiskBackupQuota = diskbackupquota
          @AutoVoucher = autovoucher
          @AutoMountConfiguration = automountconfiguration
        end

        def deserialize(params)
          @Zone = params['Zone']
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
          unless params['DiskChargePrepaid'].nil?
            @DiskChargePrepaid = DiskChargePrepaid.new
            @DiskChargePrepaid.deserialize(params['DiskChargePrepaid'])
          end
          @DiskName = params['DiskName']
          @DiskCount = params['DiskCount']
          @DiskBackupQuota = params['DiskBackupQuota']
          @AutoVoucher = params['AutoVoucher']
          unless params['AutoMountConfiguration'].nil?
            @AutoMountConfiguration = AutoMountConfiguration.new
            @AutoMountConfiguration.deserialize(params['AutoMountConfiguration'])
          end
        end
      end

      # CreateDisks返回参数结构体
      class CreateDisksResponse < TencentCloud::Common::AbstractModel
        # @param DiskIdSet: 当通过本接口来创建云硬盘时会返回该参数，表示一个或多个云硬盘ID。返回云硬盘ID列表并不代表云硬盘创建成功。

        # 可根据 [DescribeDisks](https://cloud.tencent.com/document/product/1207/66093) 接口查询返回的DiskSet中对应云硬盘的ID的状态来判断创建是否完成；如果云硬盘状态由“PENDING”变为“UNATTACHED”或“ATTACHED”，则为创建成功。
        # @type DiskIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateFirewallRules请求参数结构体
      class CreateFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/1207/47573) 接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param FirewallRules: 防火墙规则列表。
        # @type FirewallRules: Array
        # @param FirewallVersion: 防火墙当前版本。用户每次更新防火墙规则时版本会自动加1，防止规则已过期，不填不考虑冲突。
        # @type FirewallVersion: Integer

        attr_accessor :InstanceId, :FirewallRules, :FirewallVersion

        def initialize(instanceid=nil, firewallrules=nil, firewallversion=nil)
          @InstanceId = instanceid
          @FirewallRules = firewallrules
          @FirewallVersion = firewallversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['FirewallRules'].nil?
            @FirewallRules = []
            params['FirewallRules'].each do |i|
              firewallrule_tmp = FirewallRule.new
              firewallrule_tmp.deserialize(i)
              @FirewallRules << firewallrule_tmp
            end
          end
          @FirewallVersion = params['FirewallVersion']
        end
      end

      # CreateFirewallRules返回参数结构体
      class CreateFirewallRulesResponse < TencentCloud::Common::AbstractModel
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

      # CreateFirewallTemplate请求参数结构体
      class CreateFirewallTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param TemplateRules: 防火墙规则列表。
        # @type TemplateRules: Array

        attr_accessor :TemplateName, :TemplateRules

        def initialize(templatename=nil, templaterules=nil)
          @TemplateName = templatename
          @TemplateRules = templaterules
        end

        def deserialize(params)
          @TemplateName = params['TemplateName']
          unless params['TemplateRules'].nil?
            @TemplateRules = []
            params['TemplateRules'].each do |i|
              firewallrule_tmp = FirewallRule.new
              firewallrule_tmp.deserialize(i)
              @TemplateRules << firewallrule_tmp
            end
          end
        end
      end

      # CreateFirewallTemplate返回参数结构体
      class CreateFirewallTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。
        # @type TemplateId: String
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

      # CreateFirewallTemplateRules请求参数结构体
      class CreateFirewallTemplateRulesRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。可通过[DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874)接口返回值字段TemplateSet获取。
        # @type TemplateId: String
        # @param TemplateRules: 防火墙模板规则列表。
        # @type TemplateRules: Array

        attr_accessor :TemplateId, :TemplateRules

        def initialize(templateid=nil, templaterules=nil)
          @TemplateId = templateid
          @TemplateRules = templaterules
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['TemplateRules'].nil?
            @TemplateRules = []
            params['TemplateRules'].each do |i|
              firewallrule_tmp = FirewallRule.new
              firewallrule_tmp.deserialize(i)
              @TemplateRules << firewallrule_tmp
            end
          end
        end
      end

      # CreateFirewallTemplateRules返回参数结构体
      class CreateFirewallTemplateRulesResponse < TencentCloud::Common::AbstractModel
        # @param TemplateRuleIdSet: 规则ID列表。
        # @type TemplateRuleIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateRuleIdSet, :RequestId

        def initialize(templateruleidset=nil, requestid=nil)
          @TemplateRuleIdSet = templateruleidset
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateRuleIdSet = params['TemplateRuleIdSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateInstanceSnapshot请求参数结构体
      class CreateInstanceSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要创建快照的实例 ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/product/1207/47573) 接口返回值中的 InstanceId	获取。
        # @type InstanceId: String
        # @param SnapshotName: 快照名称，最长为 60 个字符。
        # @type SnapshotName: String

        attr_accessor :InstanceId, :SnapshotName

        def initialize(instanceid=nil, snapshotname=nil)
          @InstanceId = instanceid
          @SnapshotName = snapshotname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SnapshotName = params['SnapshotName']
        end
      end

      # CreateInstanceSnapshot返回参数结构体
      class CreateInstanceSnapshotResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照 ID。
        # @type SnapshotId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateInstances请求参数结构体
      class CreateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param BundleId: 套餐ID。可以通过调用 [DescribeBundles](https://cloud.tencent.com/document/api/1207/47575) 接口获取。
        # @type BundleId: String
        # @param BlueprintId: 镜像ID。可以通过调用 [DescribeBlueprints](https://cloud.tencent.com/document/api/1207/47689) 接口获取。
        # @type BlueprintId: String
        # @param InstanceChargePrepaid: 当前实例仅支持预付费模式，即包年包月相关参数设置，单位（月）。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.InstanceChargePrepaid`
        # @param InstanceName: 实例显示名称。
        # @type InstanceName: String
        # @param InstanceCount: 购买实例数量。包年包月实例取值范围：[1，30]。默认取值：1。指定购买实例的数量不能超过用户所能购买的剩余配额数量
        # @type InstanceCount: Integer
        # @param Zones: 可用区列表。
        # 不填此参数，表示为随机可用区。
        # @type Zones: Array
        # @param DryRun: 是否只预检此次请求。
        # true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和库存。
        # 如果检查不通过，则返回对应错误码；
        # 如果检查通过，则返回RequestId.
        # false（默认）：发送正常请求，通过检查后直接创建实例
        # @type DryRun: Boolean
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # @type ClientToken: String
        # @param LoginConfiguration: 实例登录密码信息配置。默认缺失情况下代表用户选择实例创建后设置登录密码。
        # @type LoginConfiguration: :class:`Tencentcloud::Lighthouse.v20200324.models.LoginConfiguration`
        # @param Containers: 要创建的容器配置列表。
        # @type Containers: Array
        # @param AutoVoucher: 是否自动使用代金券。默认不使用。
        # @type AutoVoucher: Boolean
        # @param FirewallTemplateId: 防火墙模板ID。若不指定该参数，则使用默认防火墙策略。
        # @type FirewallTemplateId: String
        # @param Tags: 标签键和标签值。
        # 如果指定多个标签，则会为指定资源同时创建并绑定该多个标签。
        # 同一个资源上的同一个标签键只能对应一个标签值。如果您尝试添加已有标签键，则对应的标签值会更新为新值。
        # 如果标签不存在会为您自动创建标签。
        # 数组最多支持10个元素。
        # @type Tags: Array
        # @param InitCommand: 创建实例后自动执行的命令。
        # @type InitCommand: :class:`Tencentcloud::Lighthouse.v20200324.models.Command`

        attr_accessor :BundleId, :BlueprintId, :InstanceChargePrepaid, :InstanceName, :InstanceCount, :Zones, :DryRun, :ClientToken, :LoginConfiguration, :Containers, :AutoVoucher, :FirewallTemplateId, :Tags, :InitCommand

        def initialize(bundleid=nil, blueprintid=nil, instancechargeprepaid=nil, instancename=nil, instancecount=nil, zones=nil, dryrun=nil, clienttoken=nil, loginconfiguration=nil, containers=nil, autovoucher=nil, firewalltemplateid=nil, tags=nil, initcommand=nil)
          @BundleId = bundleid
          @BlueprintId = blueprintid
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceName = instancename
          @InstanceCount = instancecount
          @Zones = zones
          @DryRun = dryrun
          @ClientToken = clienttoken
          @LoginConfiguration = loginconfiguration
          @Containers = containers
          @AutoVoucher = autovoucher
          @FirewallTemplateId = firewalltemplateid
          @Tags = tags
          @InitCommand = initcommand
        end

        def deserialize(params)
          @BundleId = params['BundleId']
          @BlueprintId = params['BlueprintId']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceName = params['InstanceName']
          @InstanceCount = params['InstanceCount']
          @Zones = params['Zones']
          @DryRun = params['DryRun']
          @ClientToken = params['ClientToken']
          unless params['LoginConfiguration'].nil?
            @LoginConfiguration = LoginConfiguration.new
            @LoginConfiguration.deserialize(params['LoginConfiguration'])
          end
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              dockercontainerconfiguration_tmp = DockerContainerConfiguration.new
              dockercontainerconfiguration_tmp.deserialize(i)
              @Containers << dockercontainerconfiguration_tmp
            end
          end
          @AutoVoucher = params['AutoVoucher']
          @FirewallTemplateId = params['FirewallTemplateId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['InitCommand'].nil?
            @InitCommand = Command.new
            @InitCommand.deserialize(params['InitCommand'])
          end
        end
      end

      # CreateInstances返回参数结构体
      class CreateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 当通过本接口来创建实例时会返回该参数，表示一个或多个实例ID。返回实例ID列表并不代表实例创建成功。

        # 可根据 DescribeInstances 接口查询返回的InstancesSet中对应实例的ID的状态来判断创建是否完成；如果实例状态由“启动中”变为“运行中”，则为创建成功。
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

      # CreateKeyPair请求参数结构体
      class CreateKeyPairRequest < TencentCloud::Common::AbstractModel
        # @param KeyName: 密钥对名称，可由数字，字母和下划线组成，长度不超过 25 个字符。
        # @type KeyName: String

        attr_accessor :KeyName

        def initialize(keyname=nil)
          @KeyName = keyname
        end

        def deserialize(params)
          @KeyName = params['KeyName']
        end
      end

      # CreateKeyPair返回参数结构体
      class CreateKeyPairResponse < TencentCloud::Common::AbstractModel
        # @param KeyPair: 密钥对信息。
        # @type KeyPair: :class:`Tencentcloud::Lighthouse.v20200324.models.KeyPair`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyPair, :RequestId

        def initialize(keypair=nil, requestid=nil)
          @KeyPair = keypair
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyPair'].nil?
            @KeyPair = KeyPair.new
            @KeyPair.deserialize(params['KeyPair'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 数据盘价格
      class DataDiskPrice < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID。
        # @type DiskId: String
        # @param OriginalDiskPrice: 云硬盘单价。
        # @type OriginalDiskPrice: Float
        # @param OriginalPrice: 云硬盘总价。
        # @type OriginalPrice: Float
        # @param Discount: 折扣。
        # @type Discount: Float
        # @param DiscountPrice: 折后总价。
        # @type DiscountPrice: Float
        # @param InstanceId: 数据盘挂载的实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String

        attr_accessor :DiskId, :OriginalDiskPrice, :OriginalPrice, :Discount, :DiscountPrice, :InstanceId

        def initialize(diskid=nil, originaldiskprice=nil, originalprice=nil, discount=nil, discountprice=nil, instanceid=nil)
          @DiskId = diskid
          @OriginalDiskPrice = originaldiskprice
          @OriginalPrice = originalprice
          @Discount = discount
          @DiscountPrice = discountprice
          @InstanceId = instanceid
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @OriginalDiskPrice = params['OriginalDiskPrice']
          @OriginalPrice = params['OriginalPrice']
          @Discount = params['Discount']
          @DiscountPrice = params['DiscountPrice']
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteBlueprints请求参数结构体
      class DeleteBlueprintsRequest < TencentCloud::Common::AbstractModel
        # @param BlueprintIds: 镜像ID列表。镜像ID，可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        # @type BlueprintIds: Array

        attr_accessor :BlueprintIds

        def initialize(blueprintids=nil)
          @BlueprintIds = blueprintids
        end

        def deserialize(params)
          @BlueprintIds = params['BlueprintIds']
        end
      end

      # DeleteBlueprints返回参数结构体
      class DeleteBlueprintsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDiskBackups请求参数结构体
      class DeleteDiskBackupsRequest < TencentCloud::Common::AbstractModel
        # @param DiskBackupIds: 云硬盘备份点ID列表，可通过 [DescribeDiskBackups](https://cloud.tencent.com/document/api/1207/84379)接口查询。
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

      # DeleteFirewallRules请求参数结构体
      class DeleteFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/1207/47573) 接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param FirewallRules: 防火墙规则列表。
        # @type FirewallRules: Array
        # @param FirewallVersion: 防火墙当前版本。用户每次更新防火墙规则时版本会自动加1，防止规则已过期，不填不考虑冲突。
        # @type FirewallVersion: Integer

        attr_accessor :InstanceId, :FirewallRules, :FirewallVersion

        def initialize(instanceid=nil, firewallrules=nil, firewallversion=nil)
          @InstanceId = instanceid
          @FirewallRules = firewallrules
          @FirewallVersion = firewallversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['FirewallRules'].nil?
            @FirewallRules = []
            params['FirewallRules'].each do |i|
              firewallrule_tmp = FirewallRule.new
              firewallrule_tmp.deserialize(i)
              @FirewallRules << firewallrule_tmp
            end
          end
          @FirewallVersion = params['FirewallVersion']
        end
      end

      # DeleteFirewallRules返回参数结构体
      class DeleteFirewallRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFirewallTemplate请求参数结构体
      class DeleteFirewallTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。可通过[DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874)接口返回值字段TemplateSet获取。
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteFirewallTemplate返回参数结构体
      class DeleteFirewallTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFirewallTemplateRules请求参数结构体
      class DeleteFirewallTemplateRulesRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。可通过[DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874)接口返回值字段TemplateSet获取。
        # @type TemplateId: String
        # @param TemplateRuleIds: 防火墙模板规则ID列表。可通过[DescribeFirewallTemplateRules](https://cloud.tencent.com/document/product/1207/96875)接口返回值字段TemplateRuleSet获取。
        # @type TemplateRuleIds: Array

        attr_accessor :TemplateId, :TemplateRuleIds

        def initialize(templateid=nil, templateruleids=nil)
          @TemplateId = templateid
          @TemplateRuleIds = templateruleids
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateRuleIds = params['TemplateRuleIds']
        end
      end

      # DeleteFirewallTemplateRules返回参数结构体
      class DeleteFirewallTemplateRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteKeyPairs请求参数结构体
      class DeleteKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥对 ID 列表，每次请求批量密钥对的上限为 10。可通过[DescribeKeyPairs](https://cloud.tencent.com/document/api/1207/55540)接口返回值中的KeyId获取。
        # @type KeyIds: Array

        attr_accessor :KeyIds

        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # DeleteKeyPairs返回参数结构体
      class DeleteKeyPairsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSnapshots请求参数结构体
      class DeleteSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotIds: 要删除的快照 ID 列表，可通过 <a href="https://cloud.tencent.com/document/product/1207/54388" target="_blank">DescribeSnapshots</a>查询。
        # @type SnapshotIds: Array

        attr_accessor :SnapshotIds

        def initialize(snapshotids=nil)
          @SnapshotIds = snapshotids
        end

        def deserialize(params)
          @SnapshotIds = params['SnapshotIds']
        end
      end

      # DeleteSnapshots返回参数结构体
      class DeleteSnapshotsResponse < TencentCloud::Common::AbstractModel
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

      # 限制操作。
      class DeniedAction < TencentCloud::Common::AbstractModel
        # @param Action: 限制操作名。
        # @type Action: String
        # @param Code: 限制操作消息码。
        # @type Code: String
        # @param Message: 限制操作消息。
        # @type Message: String

        attr_accessor :Action, :Code, :Message

        def initialize(action=nil, code=nil, message=nil)
          @Action = action
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Action = params['Action']
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # DescribeAllScenes请求参数结构体
      class DescribeAllScenesRequest < TencentCloud::Common::AbstractModel
        # @param SceneIds: 使用场景ID列表。可通过[DescribeAllScenes](https://cloud.tencent.com/document/product/1207/83513)接口返回值中的SceneId获取。
        # @type SceneIds: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :SceneIds, :Offset, :Limit

        def initialize(sceneids=nil, offset=nil, limit=nil)
          @SceneIds = sceneids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SceneIds = params['SceneIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeAllScenes返回参数结构体
      class DescribeAllScenesResponse < TencentCloud::Common::AbstractModel
        # @param SceneInfoSet: 使用场景详细信息列表。
        # @type SceneInfoSet: Array
        # @param TotalCount: 使用场景详细信息总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SceneInfoSet, :TotalCount, :RequestId

        def initialize(sceneinfoset=nil, totalcount=nil, requestid=nil)
          @SceneInfoSet = sceneinfoset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SceneInfoSet'].nil?
            @SceneInfoSet = []
            params['SceneInfoSet'].each do |i|
              sceneinfo_tmp = SceneInfo.new
              sceneinfo_tmp.deserialize(i)
              @SceneInfoSet << sceneinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlueprintInstances请求参数结构体
      class DescribeBlueprintInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。 当前最多支持1个。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeBlueprintInstances返回参数结构体
      class DescribeBlueprintInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的镜像实例数量。
        # @type TotalCount: Integer
        # @param BlueprintInstanceSet: 镜像实例列表信息。
        # @type BlueprintInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BlueprintInstanceSet, :RequestId

        def initialize(totalcount=nil, blueprintinstanceset=nil, requestid=nil)
          @TotalCount = totalcount
          @BlueprintInstanceSet = blueprintinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BlueprintInstanceSet'].nil?
            @BlueprintInstanceSet = []
            params['BlueprintInstanceSet'].each do |i|
              blueprintinstance_tmp = BlueprintInstance.new
              blueprintinstance_tmp.deserialize(i)
              @BlueprintInstanceSet << blueprintinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBlueprints请求参数结构体
      class DescribeBlueprintsRequest < TencentCloud::Common::AbstractModel
        # @param BlueprintIds: 镜像 ID 列表。
        # @type BlueprintIds: Array
        # @param Offset: 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Limit: Integer
        # @param Filters: 过滤器列表。
        # <li>blueprint-id</li>按照【镜像 ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>blueprint-type</li>按照【镜像类型】进行过滤。
        # 取值：APP_OS（应用镜像 ）；PURE_OS（系统镜像）；DOCKER（Docker容器镜像）；PRIVATE（自定义镜像）；SHARED（共享镜像）。
        # 类型：String
        # 必选：否
        # <li>platform-type</li>按照【镜像平台类型】进行过滤。
        # 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）。
        # 类型：String
        # 必选：否
        # <li>blueprint-name</li>按照【镜像名称】进行过滤。
        # 类型：String
        # 必选：否
        # <li>blueprint-state</li>按照【镜像状态】进行过滤。
        # 类型：String
        # 必选：否
        # <li>scene-id</li>按照【使用场景Id】进行过滤。
        # 类型：String
        # 必选：否

        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 100。参数不支持同时指定 BlueprintIds 和 Filters 。
        # @type Filters: Array

        attr_accessor :BlueprintIds, :Offset, :Limit, :Filters

        def initialize(blueprintids=nil, offset=nil, limit=nil, filters=nil)
          @BlueprintIds = blueprintids
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @BlueprintIds = params['BlueprintIds']
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

      # DescribeBlueprints返回参数结构体
      class DescribeBlueprintsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的镜像数量。
        # @type TotalCount: Integer
        # @param BlueprintSet: 镜像详细信息列表。
        # @type BlueprintSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :BlueprintSet, :RequestId

        def initialize(totalcount=nil, blueprintset=nil, requestid=nil)
          @TotalCount = totalcount
          @BlueprintSet = blueprintset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['BlueprintSet'].nil?
            @BlueprintSet = []
            params['BlueprintSet'].each do |i|
              blueprint_tmp = Blueprint.new
              blueprint_tmp.deserialize(i)
              @BlueprintSet << blueprint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBundleDiscount请求参数结构体
      class DescribeBundleDiscountRequest < TencentCloud::Common::AbstractModel
        # @param BundleId: 套餐 ID。可通过[DescribeBundles](https://cloud.tencent.com/document/product/1207/47575)接口返回值中的BundleId获取。
        # @type BundleId: String

        attr_accessor :BundleId

        def initialize(bundleid=nil)
          @BundleId = bundleid
        end

        def deserialize(params)
          @BundleId = params['BundleId']
        end
      end

      # DescribeBundleDiscount返回参数结构体
      class DescribeBundleDiscountResponse < TencentCloud::Common::AbstractModel
        # @param Currency: 币种：CNY人民币，USD 美元。
        # @type Currency: String
        # @param DiscountDetail: 折扣梯度详情，每个梯度包含的信息有：时长，折扣数，总价，折扣价，折扣详情（用户折扣、官网折扣、最终折扣）。
        # @type DiscountDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Currency, :DiscountDetail, :RequestId

        def initialize(currency=nil, discountdetail=nil, requestid=nil)
          @Currency = currency
          @DiscountDetail = discountdetail
          @RequestId = requestid
        end

        def deserialize(params)
          @Currency = params['Currency']
          unless params['DiscountDetail'].nil?
            @DiscountDetail = []
            params['DiscountDetail'].each do |i|
              discountdetail_tmp = DiscountDetail.new
              discountdetail_tmp.deserialize(i)
              @DiscountDetail << discountdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBundles请求参数结构体
      class DescribeBundlesRequest < TencentCloud::Common::AbstractModel
        # @param BundleIds: 套餐 ID 列表。可通过[DescribeBundles](https://cloud.tencent.com/document/product/1207/47575)接口返回值中的BundleId获取。
        # @type BundleIds: Array
        # @param Offset: 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Limit: Integer
        # @param Filters: 过滤器列表。
        # <li>bundle-id</li>按照【套餐 ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>support-platform-type</li>按照【系统类型】进行过滤。
        # 取值： LINUX_UNIX(Linux/Unix系统) ;WINDOWS(Windows 系统)
        # 类型：String
        # 必选：否
        # <li>bundle-type</li>按照 【套餐类型进行过滤】。
        # 取值：GENERAL_BUNDLE (通用型套餐); STORAGE_BUNDLE(存储型套餐);ENTERPRISE_BUNDLE( 企业型套餐);EXCLUSIVE_BUNDLE(专属型套餐);BEFAST_BUNDLE(蜂驰型套餐);STARTER_BUNDLE(入门型套餐);CAREFREE_BUNDLE(无忧型套餐);
        # 类型：String
        # 必选：否
        # <li>bundle-state</li>按照【套餐状态】进行过滤。
        # 取值: ONLINE(在线); OFFLINE(下线);
        # 类型：String
        # 必选：否
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 BundleIds 和 Filters。
        # @type Filters: Array
        # @param Zones: 可用区列表。默认为全部可用区。
        # @type Zones: Array

        attr_accessor :BundleIds, :Offset, :Limit, :Filters, :Zones

        def initialize(bundleids=nil, offset=nil, limit=nil, filters=nil, zones=nil)
          @BundleIds = bundleids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Zones = zones
        end

        def deserialize(params)
          @BundleIds = params['BundleIds']
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
          @Zones = params['Zones']
        end
      end

      # DescribeBundles返回参数结构体
      class DescribeBundlesResponse < TencentCloud::Common::AbstractModel
        # @param BundleSet: 套餐详细信息列表。
        # @type BundleSet: Array
        # @param TotalCount: 符合要求的套餐总数，用于分页展示。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BundleSet, :TotalCount, :RequestId

        def initialize(bundleset=nil, totalcount=nil, requestid=nil)
          @BundleSet = bundleset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BundleSet'].nil?
            @BundleSet = []
            params['BundleSet'].each do |i|
              bundle_tmp = Bundle.new
              bundle_tmp.deserialize(i)
              @BundleSet << bundle_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCcnAttachedInstances请求参数结构体
      class DescribeCcnAttachedInstancesRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCcnAttachedInstances返回参数结构体
      class DescribeCcnAttachedInstancesResponse < TencentCloud::Common::AbstractModel
        # @param CcnAttachedInstanceSet: 云联网关联的实例列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnAttachedInstanceSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CcnAttachedInstanceSet, :RequestId

        def initialize(ccnattachedinstanceset=nil, requestid=nil)
          @CcnAttachedInstanceSet = ccnattachedinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CcnAttachedInstanceSet'].nil?
            @CcnAttachedInstanceSet = []
            params['CcnAttachedInstanceSet'].each do |i|
              ccnattachedinstance_tmp = CcnAttachedInstance.new
              ccnattachedinstance_tmp.deserialize(i)
              @CcnAttachedInstanceSet << ccnattachedinstance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiskBackupsDeniedActions请求参数结构体
      class DescribeDiskBackupsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param DiskBackupIds: 云硬盘备份点 ID 列表, 可通过<a href="https://cloud.tencent.com/document/product/1207/84379" target="_blank">DescribeDiskBackups</a>接口查询。
        # @type DiskBackupIds: Array

        attr_accessor :DiskBackupIds

        def initialize(diskbackupids=nil)
          @DiskBackupIds = diskbackupids
        end

        def deserialize(params)
          @DiskBackupIds = params['DiskBackupIds']
        end
      end

      # DescribeDiskBackupsDeniedActions返回参数结构体
      class DescribeDiskBackupsDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param DiskBackupDeniedActionSet: 云硬盘备份点操作限制列表详细信息。
        # @type DiskBackupDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskBackupDeniedActionSet, :RequestId

        def initialize(diskbackupdeniedactionset=nil, requestid=nil)
          @DiskBackupDeniedActionSet = diskbackupdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskBackupDeniedActionSet'].nil?
            @DiskBackupDeniedActionSet = []
            params['DiskBackupDeniedActionSet'].each do |i|
              diskbackupdeniedactions_tmp = DiskBackupDeniedActions.new
              diskbackupdeniedactions_tmp.deserialize(i)
              @DiskBackupDeniedActionSet << diskbackupdeniedactions_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDiskBackups请求参数结构体
      class DescribeDiskBackupsRequest < TencentCloud::Common::AbstractModel
        # @param DiskBackupIds: 查询的云硬盘备份点ID列表。最大支持 100 个。参数不支持同时指定 DiskBackupIds 和 Filters。
        # @type DiskBackupIds: Array
        # @param Filters: 过滤器列表。
        # <li>disk-backup-id</li>按照【云硬盘备份点 ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>disk-id</li>按照【云硬盘 ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>disk-backup-state</li>按照【云硬盘备份点状态】进行过滤。
        # 类型：String
        # 必选：否
        # 取值：参考数据结构
        # <a href="https://cloud.tencent.com/document/product/1207/47576#DiskBackup">DescribeSnapshots</a> 下的DiskBackupState取值。
        # <li>disk-usage</li>按照【云硬盘类型】进行过滤。
        # 类型：String
        # 必选：否
        # 取值：SYSTEM_DISK或DATA_DISK
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为5。参数不支持同时指定DiskBackupIds 和 Filters。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Limit: Integer

        attr_accessor :DiskBackupIds, :Filters, :Offset, :Limit

        def initialize(diskbackupids=nil, filters=nil, offset=nil, limit=nil)
          @DiskBackupIds = diskbackupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
        end
      end

      # DescribeDiskBackups返回参数结构体
      class DescribeDiskBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 云硬盘备份点的数量。
        # @type TotalCount: Integer
        # @param DiskBackupSet: 云硬盘备份点信息列表。
        # @type DiskBackupSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDiskConfigs请求参数结构体
      class DescribeDiskConfigsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤器列表。
        # <li>zone</li>按照【可用区】进行过滤。
        # 类型：String
        # 必选：否
        # @type Filters: Array

        attr_accessor :Filters

        def initialize(filters=nil)
          @Filters = filters
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
        end
      end

      # DescribeDiskConfigs返回参数结构体
      class DescribeDiskConfigsResponse < TencentCloud::Common::AbstractModel
        # @param DiskConfigSet: 云硬盘配置列表。
        # @type DiskConfigSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeDiskDiscount请求参数结构体
      class DescribeDiskDiscountRequest < TencentCloud::Common::AbstractModel
        # @param DiskType: 云硬盘类型, 取值范围: CLOUD_PREMIUM: 高性能云硬盘，CLOUD_SSD: SSD云硬盘
        # @type DiskType: String
        # @param DiskSize: 云硬盘大小, 单位: GB。
        # @type DiskSize: Integer
        # @param DiskBackupQuota: 指定云硬盘备份点配额，不传时默认为不带备份点配额。目前只支持不带或设置1个云硬盘备份点配额。
        # @type DiskBackupQuota: Integer

        attr_accessor :DiskType, :DiskSize, :DiskBackupQuota

        def initialize(disktype=nil, disksize=nil, diskbackupquota=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskBackupQuota = diskbackupquota
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskBackupQuota = params['DiskBackupQuota']
        end
      end

      # DescribeDiskDiscount返回参数结构体
      class DescribeDiskDiscountResponse < TencentCloud::Common::AbstractModel
        # @param Currency: 币种：CNY人民币，USD 美元。
        # @type Currency: String
        # @param DiscountDetail: 折扣梯度详情，每个梯度包含的信息有：时长，折扣数，总价，折扣价，折扣详情（用户折扣、官网折扣、最终折扣）。
        # @type DiscountDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Currency, :DiscountDetail, :RequestId

        def initialize(currency=nil, discountdetail=nil, requestid=nil)
          @Currency = currency
          @DiscountDetail = discountdetail
          @RequestId = requestid
        end

        def deserialize(params)
          @Currency = params['Currency']
          unless params['DiscountDetail'].nil?
            @DiscountDetail = []
            params['DiscountDetail'].each do |i|
              discountdetail_tmp = DiscountDetail.new
              discountdetail_tmp.deserialize(i)
              @DiscountDetail << discountdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisksDeniedActions请求参数结构体
      class DescribeDisksDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。每次批量请求云硬盘的上限为 100。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。
        # @type DiskIds: Array

        attr_accessor :DiskIds

        def initialize(diskids=nil)
          @DiskIds = diskids
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
        end
      end

      # DescribeDisksDeniedActions返回参数结构体
      class DescribeDisksDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param DiskDeniedActionSet: 云硬盘操作限制列表详细信息。
        # @type DiskDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskDeniedActionSet, :RequestId

        def initialize(diskdeniedactionset=nil, requestid=nil)
          @DiskDeniedActionSet = diskdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskDeniedActionSet'].nil?
            @DiskDeniedActionSet = []
            params['DiskDeniedActionSet'].each do |i|
              diskdeniedactions_tmp = DiskDeniedActions.new
              diskdeniedactions_tmp.deserialize(i)
              @DiskDeniedActionSet << diskdeniedactions_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisks请求参数结构体
      class DescribeDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。每次批量请求云硬盘的上限为 100。
        # @type DiskIds: Array
        # @param Filters: 过滤器列表。
        # disk-id
        # 按照【云硬盘 ID】进行过滤。
        # 类型：String
        # 必选：否
        # instance-id
        # 按照【实例ID】进行过滤。
        # 类型：String
        # 必选：否
        # disk-name
        # 按照【云硬盘名称】进行过滤。
        # 类型：String
        # 必选：否
        # zone
        # 按照【可用区】进行过滤。
        # 类型：String
        # 必选：否
        # disk-usage
        # 按照【云硬盘类型】进行过滤。
        # 类型：String
        # 必选：否
        # 取值：SYSTEM_DISK或DATA_DISK
        # disk-state
        # 按照【云硬盘状态】进行过滤。
        # 类型：String
        # 必选：否
        # 取值：参考数据结构[Disk](https://cloud.tencent.com/document/api/1207/47576#Disk)中DiskState取值。
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 100。参数不支持同时指定 DiskIds 和 Filters。
        # @type Filters: Array
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param OrderField: 云硬盘列表排序的依据字段。取值范围："CREATED_TIME"：依据云硬盘的创建时间排序。 "EXPIRED_TIME"：依据云硬盘的到期时间排序。"DISK_SIZE"：依据云硬盘的大小排序。默认按云硬盘创建时间排序。
        # @type OrderField: String
        # @param Order: 输出云硬盘列表的排列顺序。取值范围："ASC"：升序排列。 "DESC"：降序排列。默认按降序排列。
        # @type Order: String

        attr_accessor :DiskIds, :Filters, :Limit, :Offset, :OrderField, :Order

        def initialize(diskids=nil, filters=nil, limit=nil, offset=nil, orderfield=nil, order=nil)
          @DiskIds = diskids
          @Filters = filters
          @Limit = limit
          @Offset = offset
          @OrderField = orderfield
          @Order = order
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
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
          @OrderField = params['OrderField']
          @Order = params['Order']
        end
      end

      # DescribeDisks返回参数结构体
      class DescribeDisksResponse < TencentCloud::Common::AbstractModel
        # @param DiskSet: 云硬盘信息列表。
        # @type DiskSet: Array
        # @param TotalCount: 符合条件的云硬盘信息数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskSet, :TotalCount, :RequestId

        def initialize(diskset=nil, totalcount=nil, requestid=nil)
          @DiskSet = diskset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskSet'].nil?
            @DiskSet = []
            params['DiskSet'].each do |i|
              disk_tmp = Disk.new
              disk_tmp.deserialize(i)
              @DiskSet << disk_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDisksReturnable请求参数结构体
      class DescribeDisksReturnableRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。每次批量请求云硬盘的上限为 10。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。
        # @type DiskIds: Array
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer

        attr_accessor :DiskIds, :Limit, :Offset

        def initialize(diskids=nil, limit=nil, offset=nil)
          @DiskIds = diskids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDisksReturnable返回参数结构体
      class DescribeDisksReturnableResponse < TencentCloud::Common::AbstractModel
        # @param DiskReturnableSet: 可退还云硬盘详细信息列表。
        # @type DiskReturnableSet: Array
        # @param TotalCount: 符合条件的云硬盘数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskReturnableSet, :TotalCount, :RequestId

        def initialize(diskreturnableset=nil, totalcount=nil, requestid=nil)
          @DiskReturnableSet = diskreturnableset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskReturnableSet'].nil?
            @DiskReturnableSet = []
            params['DiskReturnableSet'].each do |i|
              diskreturnable_tmp = DiskReturnable.new
              diskreturnable_tmp.deserialize(i)
              @DiskReturnableSet << diskreturnable_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDockerActivities请求参数结构体
      class DescribeDockerActivitiesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ActivityIds: Docker活动ID列表。可通过[DescribeDockerActivities](https://cloud.tencent.com/document/product/1207/95476)接口返回值中的ActivityId获取。
        # @type ActivityIds: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param CreatedTimeBegin: 活动创建时间的起始值，时间戳秒数。
        # @type CreatedTimeBegin: Integer
        # @param CreatedTimeEnd: 活动创建时间的结束值，时间戳秒数。
        # @type CreatedTimeEnd: Integer

        attr_accessor :InstanceId, :ActivityIds, :Offset, :Limit, :CreatedTimeBegin, :CreatedTimeEnd

        def initialize(instanceid=nil, activityids=nil, offset=nil, limit=nil, createdtimebegin=nil, createdtimeend=nil)
          @InstanceId = instanceid
          @ActivityIds = activityids
          @Offset = offset
          @Limit = limit
          @CreatedTimeBegin = createdtimebegin
          @CreatedTimeEnd = createdtimeend
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ActivityIds = params['ActivityIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CreatedTimeBegin = params['CreatedTimeBegin']
          @CreatedTimeEnd = params['CreatedTimeEnd']
        end
      end

      # DescribeDockerActivities返回参数结构体
      class DescribeDockerActivitiesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量。
        # @type TotalCount: Integer
        # @param DockerActivitySet: Docker活动列表。
        # @type DockerActivitySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DockerActivitySet, :RequestId

        def initialize(totalcount=nil, dockeractivityset=nil, requestid=nil)
          @TotalCount = totalcount
          @DockerActivitySet = dockeractivityset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DockerActivitySet'].nil?
            @DockerActivitySet = []
            params['DockerActivitySet'].each do |i|
              dockeractivity_tmp = DockerActivity.new
              dockeractivity_tmp.deserialize(i)
              @DockerActivitySet << dockeractivity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDockerContainerConfiguration请求参数结构体
      class DescribeDockerContainerConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param ContainerId: 容器ID。
        # @type ContainerId: String

        attr_accessor :InstanceId, :ContainerId

        def initialize(instanceid=nil, containerid=nil)
          @InstanceId = instanceid
          @ContainerId = containerid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ContainerId = params['ContainerId']
        end
      end

      # DescribeDockerContainerConfiguration返回参数结构体
      class DescribeDockerContainerConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param ContainerConfiguration: Docker容器配置信息。
        # @type ContainerConfiguration: :class:`Tencentcloud::Lighthouse.v20200324.models.DockerContainerConfiguration`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContainerConfiguration, :RequestId

        def initialize(containerconfiguration=nil, requestid=nil)
          @ContainerConfiguration = containerconfiguration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ContainerConfiguration'].nil?
            @ContainerConfiguration = DockerContainerConfiguration.new
            @ContainerConfiguration.deserialize(params['ContainerConfiguration'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDockerContainerDetail请求参数结构体
      class DescribeDockerContainerDetailRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ContainerId: 容器ID。可通过[DescribeDockerContainers](https://cloud.tencent.com/document/product/1207/95473)接口返回值中的ContainerId获取。
        # @type ContainerId: String

        attr_accessor :InstanceId, :ContainerId

        def initialize(instanceid=nil, containerid=nil)
          @InstanceId = instanceid
          @ContainerId = containerid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ContainerId = params['ContainerId']
        end
      end

      # DescribeDockerContainerDetail返回参数结构体
      class DescribeDockerContainerDetailResponse < TencentCloud::Common::AbstractModel
        # @param ContainerDetail: Docker容器详情，json字符串base64编码。
        # @type ContainerDetail: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContainerDetail, :RequestId

        def initialize(containerdetail=nil, requestid=nil)
          @ContainerDetail = containerdetail
          @RequestId = requestid
        end

        def deserialize(params)
          @ContainerDetail = params['ContainerDetail']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDockerContainers请求参数结构体
      class DescribeDockerContainersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ContainerIds: 容器ID列表。可通过[DescribeDockerContainers](https://cloud.tencent.com/document/product/1207/95473)接口返回值中的ContainerId获取。
        # @type ContainerIds: Array
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Filters: 过滤器列表。
        # <li>container-id</li>按照【容器ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>container-name</li>按照【容器名称】进行过滤。
        # 类型：String
        # 必选：否
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 ContainerIds 和 Filters。
        # @type Filters: Array

        attr_accessor :InstanceId, :ContainerIds, :Limit, :Offset, :Filters

        def initialize(instanceid=nil, containerids=nil, limit=nil, offset=nil, filters=nil)
          @InstanceId = instanceid
          @ContainerIds = containerids
          @Limit = limit
          @Offset = offset
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ContainerIds = params['ContainerIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
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

      # DescribeDockerContainers返回参数结构体
      class DescribeDockerContainersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量。
        # @type TotalCount: Integer
        # @param DockerContainerSet: 容器列表。
        # @type DockerContainerSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DockerContainerSet, :RequestId

        def initialize(totalcount=nil, dockercontainerset=nil, requestid=nil)
          @TotalCount = totalcount
          @DockerContainerSet = dockercontainerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DockerContainerSet'].nil?
            @DockerContainerSet = []
            params['DockerContainerSet'].each do |i|
              dockercontainer_tmp = DockerContainer.new
              dockercontainer_tmp.deserialize(i)
              @DockerContainerSet << dockercontainer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirewallRules请求参数结构体
      class DescribeFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/1207/47573) 接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param Offset: 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
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

      # DescribeFirewallRules返回参数结构体
      class DescribeFirewallRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的防火墙规则数量。
        # @type TotalCount: Integer
        # @param FirewallRuleSet: 防火墙规则详细信息列表。
        # @type FirewallRuleSet: Array
        # @param FirewallVersion: 防火墙版本号。
        # @type FirewallVersion: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :FirewallRuleSet, :FirewallVersion, :RequestId

        def initialize(totalcount=nil, firewallruleset=nil, firewallversion=nil, requestid=nil)
          @TotalCount = totalcount
          @FirewallRuleSet = firewallruleset
          @FirewallVersion = firewallversion
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['FirewallRuleSet'].nil?
            @FirewallRuleSet = []
            params['FirewallRuleSet'].each do |i|
              firewallruleinfo_tmp = FirewallRuleInfo.new
              firewallruleinfo_tmp.deserialize(i)
              @FirewallRuleSet << firewallruleinfo_tmp
            end
          end
          @FirewallVersion = params['FirewallVersion']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirewallRulesTemplate请求参数结构体
      class DescribeFirewallRulesTemplateRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFirewallRulesTemplate返回参数结构体
      class DescribeFirewallRulesTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的防火墙规则数量。
        # @type TotalCount: Integer
        # @param FirewallRuleSet: 防火墙规则详细信息列表。
        # @type FirewallRuleSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :FirewallRuleSet, :RequestId

        def initialize(totalcount=nil, firewallruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @FirewallRuleSet = firewallruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['FirewallRuleSet'].nil?
            @FirewallRuleSet = []
            params['FirewallRuleSet'].each do |i|
              firewallruleinfo_tmp = FirewallRuleInfo.new
              firewallruleinfo_tmp.deserialize(i)
              @FirewallRuleSet << firewallruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirewallTemplateApplyRecords请求参数结构体
      class DescribeFirewallTemplateApplyRecordsRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。可通过[DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874)接口返回值字段TemplateSet获取。
        # @type TemplateId: String
        # @param TaskIds: 应用防火墙模板任务ID列表。可通过[ApplyFirewallTemplate](https://cloud.tencent.com/document/product/1207/96883)接口返回值TaskId字段获取。
        # @type TaskIds: Array

        attr_accessor :TemplateId, :TaskIds

        def initialize(templateid=nil, taskids=nil)
          @TemplateId = templateid
          @TaskIds = taskids
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TaskIds = params['TaskIds']
        end
      end

      # DescribeFirewallTemplateApplyRecords返回参数结构体
      class DescribeFirewallTemplateApplyRecordsResponse < TencentCloud::Common::AbstractModel
        # @param ApplyRecordSet: 防火墙模板应用记录列表。
        # @type ApplyRecordSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplyRecordSet, :RequestId

        def initialize(applyrecordset=nil, requestid=nil)
          @ApplyRecordSet = applyrecordset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplyRecordSet'].nil?
            @ApplyRecordSet = []
            params['ApplyRecordSet'].each do |i|
              firewalltemplateapplyrecord_tmp = FirewallTemplateApplyRecord.new
              firewalltemplateapplyrecord_tmp.deserialize(i)
              @ApplyRecordSet << firewalltemplateapplyrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirewallTemplateQuota请求参数结构体
      class DescribeFirewallTemplateQuotaRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeFirewallTemplateQuota返回参数结构体
      class DescribeFirewallTemplateQuotaResponse < TencentCloud::Common::AbstractModel
        # @param Available: 当前可用配额。
        # @type Available: Integer
        # @param Total: 总配额。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Available, :Total, :RequestId

        def initialize(available=nil, total=nil, requestid=nil)
          @Available = available
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Available = params['Available']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirewallTemplateRuleQuota请求参数结构体
      class DescribeFirewallTemplateRuleQuotaRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。可通过[DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874)接口返回值字段TemplateSet获取。
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeFirewallTemplateRuleQuota返回参数结构体
      class DescribeFirewallTemplateRuleQuotaResponse < TencentCloud::Common::AbstractModel
        # @param Available: 当前可用配额。
        # @type Available: Integer
        # @param Total: 总配额。
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Available, :Total, :RequestId

        def initialize(available=nil, total=nil, requestid=nil)
          @Available = available
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Available = params['Available']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirewallTemplateRules请求参数结构体
      class DescribeFirewallTemplateRulesRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。
        # @type TemplateId: String
        # @param TemplateRuleIds: 防火墙模板规则ID列表。
        # @type TemplateRuleIds: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :TemplateId, :TemplateRuleIds, :Offset, :Limit

        def initialize(templateid=nil, templateruleids=nil, offset=nil, limit=nil)
          @TemplateId = templateid
          @TemplateRuleIds = templateruleids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateRuleIds = params['TemplateRuleIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeFirewallTemplateRules返回参数结构体
      class DescribeFirewallTemplateRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 防火墙模板规则总数量。
        # @type TotalCount: Integer
        # @param TemplateRuleSet: 防火墙模板规则信息列表。
        # @type TemplateRuleSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TemplateRuleSet, :RequestId

        def initialize(totalcount=nil, templateruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @TemplateRuleSet = templateruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TemplateRuleSet'].nil?
            @TemplateRuleSet = []
            params['TemplateRuleSet'].each do |i|
              firewalltemplateruleinfo_tmp = FirewallTemplateRuleInfo.new
              firewalltemplateruleinfo_tmp.deserialize(i)
              @TemplateRuleSet << firewalltemplateruleinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFirewallTemplates请求参数结构体
      class DescribeFirewallTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param TemplateIds: 防火墙模板ID列表。可通过[DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874)接口返回值字段TemplateSet获取。列表长度最大值为100。
        # @type TemplateIds: Array
        # @param Filters: 过滤器列表。
        # <li>template-id</li>按照【防火墙模板所属的ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>template-name</li>按照【防火墙模板所属的名称】进行过滤。
        # 类型：String
        # 必选：否
        # <li>template-type</li>按照【防火墙模板的类型】进行过滤。
        # 类型：String
        # 必选：否
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 100。参数不支持同时指定 TemplateIds 和 Filters。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :TemplateIds, :Filters, :Offset, :Limit

        def initialize(templateids=nil, filters=nil, offset=nil, limit=nil)
          @TemplateIds = templateids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @TemplateIds = params['TemplateIds']
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

      # DescribeFirewallTemplates返回参数结构体
      class DescribeFirewallTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 模板总数量。
        # @type TotalCount: Integer
        # @param TemplateSet: 防火墙模板列表。
        # @type TemplateSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TemplateSet, :RequestId

        def initialize(totalcount=nil, templateset=nil, requestid=nil)
          @TotalCount = totalcount
          @TemplateSet = templateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TemplateSet'].nil?
            @TemplateSet = []
            params['TemplateSet'].each do |i|
              firewalltemplate_tmp = FirewallTemplate.new
              firewalltemplate_tmp.deserialize(i)
              @TemplateSet << firewalltemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeGeneralResourceQuotas请求参数结构体
      class DescribeGeneralResourceQuotasRequest < TencentCloud::Common::AbstractModel
        # @param ResourceNames: 资源名列表，可取值:
        # - GENERAL_BUNDLE_INSTANCE 通用型套餐实例
        # - STORAGE_BUNDLE_INSTANCE 存储型套餐实例
        # - ENTERPRISE_BUNDLE_INSTANCE 企业型套餐实例
        # - EXCLUSIVE_BUNDLE_INSTANCE 专属型套餐实例
        # - BEFAST_BUNDLE_INSTANCE 蜂驰型套餐实例
        # - STARTER_BUNDLE_INSTANCE 入门型套餐实例
        # - HK_EXCLUSIVE_BUNDLE_INSTANCE 中国香港专属型套餐实例
        # - CAREFREE_BUNDLE_INSTANCE 无忧型套餐实例
        # - USER_KEY_PAIR 密钥对
        # - SNAPSHOT 快照
        # - BLUEPRINT 自定义镜像
        # - FREE_BLUEPRINT 免费自定义镜像
        # - DATA_DISK 数据盘
        # - FIREWALL_RULE 防火墙规则
        # @type ResourceNames: Array

        attr_accessor :ResourceNames

        def initialize(resourcenames=nil)
          @ResourceNames = resourcenames
        end

        def deserialize(params)
          @ResourceNames = params['ResourceNames']
        end
      end

      # DescribeGeneralResourceQuotas返回参数结构体
      class DescribeGeneralResourceQuotasResponse < TencentCloud::Common::AbstractModel
        # @param GeneralResourceQuotaSet: 通用资源配额详细信息列表。
        # @type GeneralResourceQuotaSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GeneralResourceQuotaSet, :RequestId

        def initialize(generalresourcequotaset=nil, requestid=nil)
          @GeneralResourceQuotaSet = generalresourcequotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GeneralResourceQuotaSet'].nil?
            @GeneralResourceQuotaSet = []
            params['GeneralResourceQuotaSet'].each do |i|
              generalresourcequota_tmp = GeneralResourceQuota.new
              generalresourcequota_tmp.deserialize(i)
              @GeneralResourceQuotaSet << generalresourcequota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceLoginKeyPairAttribute请求参数结构体
      class DescribeInstanceLoginKeyPairAttributeRequest < TencentCloud::Common::AbstractModel
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

      # DescribeInstanceLoginKeyPairAttribute返回参数结构体
      class DescribeInstanceLoginKeyPairAttributeResponse < TencentCloud::Common::AbstractModel
        # @param PermitLogin: 是否允许使用默认密钥对登录，YES：允许登录 NO：禁止登录。
        # @type PermitLogin: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PermitLogin, :RequestId

        def initialize(permitlogin=nil, requestid=nil)
          @PermitLogin = permitlogin
          @RequestId = requestid
        end

        def deserialize(params)
          @PermitLogin = params['PermitLogin']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceVncUrl请求参数结构体
      class DescribeInstanceVncUrlRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String

        attr_accessor :InstanceId

        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeInstanceVncUrl返回参数结构体
      class DescribeInstanceVncUrlResponse < TencentCloud::Common::AbstractModel
        # @param InstanceVncUrl: 实例的管理终端地址。
        # @type InstanceVncUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceVncUrl, :RequestId

        def initialize(instancevncurl=nil, requestid=nil)
          @InstanceVncUrl = instancevncurl
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceVncUrl = params['InstanceVncUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesDeniedActions请求参数结构体
      class DescribeInstancesDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # DescribeInstancesDeniedActions返回参数结构体
      class DescribeInstancesDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceDeniedActionSet: 实例操作限制列表详细信息。
        # @type InstanceDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceDeniedActionSet, :RequestId

        def initialize(instancedeniedactionset=nil, requestid=nil)
          @InstanceDeniedActionSet = instancedeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceDeniedActionSet'].nil?
            @InstanceDeniedActionSet = []
            params['InstanceDeniedActionSet'].each do |i|
              instancedeniedactions_tmp = InstanceDeniedActions.new
              instancedeniedactions_tmp.deserialize(i)
              @InstanceDeniedActionSet << instancedeniedactions_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesDiskNum请求参数结构体
      class DescribeInstancesDiskNumRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表。每次请求批量实例的上限为 100。
        # 可通过 <a href="https://cloud.tencent.com/document/product/1207/47573">DescribeInstances</a> 接口返回值中的 InstanceId 获取。
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
        # @param AttachDetailSet: 挂载信息列表
        # @type AttachDetailSet: Array
        # @param TotalCount: 挂载信息数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AttachDetailSet, :TotalCount, :RequestId

        def initialize(attachdetailset=nil, totalcount=nil, requestid=nil)
          @AttachDetailSet = attachdetailset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['AttachDetailSet'].nil?
            @AttachDetailSet = []
            params['AttachDetailSet'].each do |i|
              attachdetail_tmp = AttachDetail.new
              attachdetail_tmp.deserialize(i)
              @AttachDetailSet << attachdetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array
        # @param Filters: 过滤器列表。
        # <li>instance-name</li>按照【实例名称】进行过滤。
        # 类型：String
        # 必选：否
        # <li>private-ip-address</li>按照【实例主网卡的内网 IP】进行过滤。
        # 类型：String
        # 必选：否
        # <li>public-ip-address</li>按照【实例主网卡的公网 IP】进行过滤。
        # 类型：String
        # 必选：否
        # <li>zone</li>按照【可用区】进行过滤。
        # 类型：String
        # 必选：否
        # <li>instance-state</li>按照【实例状态】进行过滤。
        # 类型：String
        # 必选：否
        # <li>tag-key</li>按照【标签键】进行过滤。
        # 类型：String
        # 必选：否
        # <li>tag-value</li>按照【标签值】进行过滤。
        # 类型：String
        # 必选：否
        # <li> tag:tag-key</li>按照【标签键值对】进行过滤。 tag-key使用具体的标签键进行替换。
        # 类型：String
        # 必选：否
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 100。参数不支持同时指定 InstanceIds 和 Filters。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Limit: Integer
        # @param OrderField: 指定排序字段 。取值范围： "EXPIRED_TIME"：依据实例的到期时间排序。
        #  不传入此字段时, 优先返回实例状态为“待回收”的实例, 其余实例以“创建时间”倒序返回。
        # @type OrderField: String
        # @param Order: 输出实例列表的排列顺序。取值范围：
        # "ASC"：升序排列。
        # "DESC"：降序排列。
        # 默认按升序排序。当传入该字段时，必须指定OrderField。
        # @type Order: String

        attr_accessor :InstanceIds, :Filters, :Offset, :Limit, :OrderField, :Order

        def initialize(instanceids=nil, filters=nil, offset=nil, limit=nil, orderfield=nil, order=nil)
          @InstanceIds = instanceids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @Order = order
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
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
          @OrderField = params['OrderField']
          @Order = params['Order']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param InstanceSet: 实例详细信息列表。
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
              instance_tmp = Instance.new
              instance_tmp.deserialize(i)
              @InstanceSet << instance_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesReturnable请求参数结构体
      class DescribeInstancesReturnableRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
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

      # DescribeInstancesReturnable返回参数结构体
      class DescribeInstancesReturnableResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param InstanceReturnableSet: 可退还实例详细信息列表。
        # @type InstanceReturnableSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceReturnableSet, :RequestId

        def initialize(totalcount=nil, instancereturnableset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceReturnableSet = instancereturnableset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceReturnableSet'].nil?
            @InstanceReturnableSet = []
            params['InstanceReturnableSet'].each do |i|
              instancereturnable_tmp = InstanceReturnable.new
              instancereturnable_tmp.deserialize(i)
              @InstanceReturnableSet << instancereturnable_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstancesTrafficPackages请求参数结构体
      class DescribeInstancesTrafficPackagesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
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

      # DescribeInstancesTrafficPackages返回参数结构体
      class DescribeInstancesTrafficPackagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例流量包详情数量。
        # @type TotalCount: Integer
        # @param InstanceTrafficPackageSet: 实例流量包详情列表。
        # @type InstanceTrafficPackageSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceTrafficPackageSet, :RequestId

        def initialize(totalcount=nil, instancetrafficpackageset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceTrafficPackageSet = instancetrafficpackageset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceTrafficPackageSet'].nil?
            @InstanceTrafficPackageSet = []
            params['InstanceTrafficPackageSet'].each do |i|
              instancetrafficpackage_tmp = InstanceTrafficPackage.new
              instancetrafficpackage_tmp.deserialize(i)
              @InstanceTrafficPackageSet << instancetrafficpackage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKeyPairs请求参数结构体
      class DescribeKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥对 ID 列表，每次请求批量密钥对的上限为 100。
        # @type KeyIds: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Filters: 过滤器列表。
        # <li>key-id</li>按照【密钥对ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>key-name</li>按照【密钥对名称】进行过滤（支持模糊匹配）。
        # 类型：String
        # 必选：否
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 KeyIds 和 Filters。
        # @type Filters: Array

        attr_accessor :KeyIds, :Offset, :Limit, :Filters

        def initialize(keyids=nil, offset=nil, limit=nil, filters=nil)
          @KeyIds = keyids
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
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

      # DescribeKeyPairs返回参数结构体
      class DescribeKeyPairsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的密钥对数量。
        # @type TotalCount: Integer
        # @param KeyPairSet: 密钥对详细信息列表。
        # @type KeyPairSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KeyPairSet, :RequestId

        def initialize(totalcount=nil, keypairset=nil, requestid=nil)
          @TotalCount = totalcount
          @KeyPairSet = keypairset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['KeyPairSet'].nil?
            @KeyPairSet = []
            params['KeyPairSet'].each do |i|
              keypair_tmp = KeyPair.new
              keypair_tmp.deserialize(i)
              @KeyPairSet << keypair_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModifyInstanceBundles请求参数结构体
      class DescribeModifyInstanceBundlesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。可通过 <a href="https://cloud.tencent.com/document/product/1207/47573">DescribeInstances</a> 接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param Filters: 过滤器列表。
        # <li>bundle-id</li>按照【套餐 ID】进行过滤。
        # 类型：String
        # 必选：否
        # 可通过<a href="https://cloud.tencent.com/document/product/1207/47575"> DescribeBundles </a>接口返回值中的 BundleId 获取。
        # <li>support-platform-type</li>按照【系统类型】进行过滤。
        # 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）
        # 类型：String
        # 必选：否
        # <li>bundle-type</li>按照 【套餐类型进行过滤】。
        # 取值：GENERAL_BUNDLE (通用型套餐); STORAGE_BUNDLE(存储型套餐);ENTERPRISE_BUNDLE( 企业型套餐);EXCLUSIVE_BUNDLE(专属型套餐);BEFAST_BUNDLE(蜂驰型套餐);
        # 类型：String
        # 必选：否
        # <li>bundle-state</li>按照【套餐状态】进行过滤。
        # 取值: ‘ONLINE’(在线); ‘OFFLINE’(下线);
        # 类型：String
        # 必选：否
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Filters, :Offset, :Limit

        def initialize(instanceid=nil, filters=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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

      # DescribeModifyInstanceBundles返回参数结构体
      class DescribeModifyInstanceBundlesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的套餐数量。
        # @type TotalCount: Integer
        # @param ModifyBundleSet: 变更套餐详细信息。
        # @type ModifyBundleSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ModifyBundleSet, :RequestId

        def initialize(totalcount=nil, modifybundleset=nil, requestid=nil)
          @TotalCount = totalcount
          @ModifyBundleSet = modifybundleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ModifyBundleSet'].nil?
            @ModifyBundleSet = []
            params['ModifyBundleSet'].each do |i|
              modifybundle_tmp = ModifyBundle.new
              modifybundle_tmp.deserialize(i)
              @ModifyBundleSet << modifybundle_tmp
            end
          end
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
        # @param TotalCount: 地域数量。
        # @type TotalCount: Integer
        # @param RegionSet: 地域信息列表。
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionSet, :RequestId

        def initialize(totalcount=nil, regionset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RegionSet'].nil?
            @RegionSet = []
            params['RegionSet'].each do |i|
              regioninfo_tmp = RegionInfo.new
              regioninfo_tmp.deserialize(i)
              @RegionSet << regioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeResetInstanceBlueprints请求参数结构体
      class DescribeResetInstanceBlueprintsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过 <a href="https://cloud.tencent.com/document/product/1207/47573">DescribeInstances</a> 接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param Offset: 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Limit: Integer
        # @param Filters: 过滤器列表。
        # <li>blueprint-id</li>按照【镜像 ID】进行过滤。
        # 类型：String
        # 必选：否
        # 可通过 <a href="https://cloud.tencent.com/document/product/1207/47689">DescribeBlueprints</a> 接口返回值中的 BlueprintId 获取。
        # <li>blueprint-type</li>按照【镜像类型】进行过滤。
        # 取值： APP_OS（应用镜像 ）；PURE_OS（ 系统镜像）；PRIVATE（自定义镜像）。
        # 类型：String
        # 必选：否
        # <li>platform-type</li>按照【镜像平台类型】进行过滤。
        # 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）。
        # 类型：String
        # 必选：否
        # <li>blueprint-name</li>按照【镜像名称】进行过滤。
        # 类型：String
        # 必选：否
        # 可通过 <a href="https://cloud.tencent.com/document/product/1207/47689">DescribeBlueprints</a> 接口返回值中的 BlueprintName 获取。
        # <li>blueprint-state</li>按照【镜像状态】进行过滤。
        # 类型：String
        # 必选：否
        # 可通过 <a href="https://cloud.tencent.com/document/product/1207/47689">DescribeBlueprints</a> 接口返回值中的 BlueprintState 获取。

        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 BlueprintIds 和 Filters 。
        # @type Filters: Array

        attr_accessor :InstanceId, :Offset, :Limit, :Filters

        def initialize(instanceid=nil, offset=nil, limit=nil, filters=nil)
          @InstanceId = instanceid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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

      # DescribeResetInstanceBlueprints返回参数结构体
      class DescribeResetInstanceBlueprintsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的镜像数量。
        # @type TotalCount: Integer
        # @param ResetInstanceBlueprintSet: 镜像重置信息列表
        # @type ResetInstanceBlueprintSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResetInstanceBlueprintSet, :RequestId

        def initialize(totalcount=nil, resetinstanceblueprintset=nil, requestid=nil)
          @TotalCount = totalcount
          @ResetInstanceBlueprintSet = resetinstanceblueprintset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ResetInstanceBlueprintSet'].nil?
            @ResetInstanceBlueprintSet = []
            params['ResetInstanceBlueprintSet'].each do |i|
              resetinstanceblueprint_tmp = ResetInstanceBlueprint.new
              resetinstanceblueprint_tmp.deserialize(i)
              @ResetInstanceBlueprintSet << resetinstanceblueprint_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScenes请求参数结构体
      class DescribeScenesRequest < TencentCloud::Common::AbstractModel
        # @param SceneIds: 使用场景ID列表。可通过[DescribeScenes](https://cloud.tencent.com/document/product/1207/83512)接口返回值中的SceneId获取。
        # @type SceneIds: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :SceneIds, :Offset, :Limit

        def initialize(sceneids=nil, offset=nil, limit=nil)
          @SceneIds = sceneids
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SceneIds = params['SceneIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeScenes返回参数结构体
      class DescribeScenesResponse < TencentCloud::Common::AbstractModel
        # @param SceneSet: 使用场景列表。
        # @type SceneSet: Array
        # @param TotalCount: 使用场景总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SceneSet, :TotalCount, :RequestId

        def initialize(sceneset=nil, totalcount=nil, requestid=nil)
          @SceneSet = sceneset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SceneSet'].nil?
            @SceneSet = []
            params['SceneSet'].each do |i|
              scene_tmp = Scene.new
              scene_tmp.deserialize(i)
              @SceneSet << scene_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshotsDeniedActions请求参数结构体
      class DescribeSnapshotsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotIds: 快照 ID 列表, 可通过 <a href="https://cloud.tencent.com/document/product/1207/54388" target="_blank">DescribeSnapshots</a> 查询。
        # @type SnapshotIds: Array

        attr_accessor :SnapshotIds

        def initialize(snapshotids=nil)
          @SnapshotIds = snapshotids
        end

        def deserialize(params)
          @SnapshotIds = params['SnapshotIds']
        end
      end

      # DescribeSnapshotsDeniedActions返回参数结构体
      class DescribeSnapshotsDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param SnapshotDeniedActionSet: 快照操作限制列表详细信息。
        # @type SnapshotDeniedActionSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SnapshotDeniedActionSet, :RequestId

        def initialize(snapshotdeniedactionset=nil, requestid=nil)
          @SnapshotDeniedActionSet = snapshotdeniedactionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SnapshotDeniedActionSet'].nil?
            @SnapshotDeniedActionSet = []
            params['SnapshotDeniedActionSet'].each do |i|
              snapshotdeniedactions_tmp = SnapshotDeniedActions.new
              snapshotdeniedactions_tmp.deserialize(i)
              @SnapshotDeniedActionSet << snapshotdeniedactions_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshots请求参数结构体
      class DescribeSnapshotsRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotIds: 要查询快照的 ID 列表。每次请求批量快照的上限为 100。
        # 可通过 [DescribeSnapshots](https://cloud.tencent.com/document/product/1207/54388) 接口返回值中的 SnapshotId		获取。
        # 参数不支持同时指定 SnapshotIds 和 Filters。
        # @type SnapshotIds: Array
        # @param Filters: 过滤器列表。
        # <li>snapshot-id</li>按照【快照 ID】进行过滤。
        # 类型：String
        # 必选：否
        # 可通过 <a href="https://cloud.tencent.com/document/product/1207/54388">DescribeSnapshots</a> 接口返回值中的 SnapshotId 获取。

        # <li>disk-id</li>按照【磁盘 ID】进行过滤。
        # 类型：String
        # 必选：否
        # 可通过 <a href="https://cloud.tencent.com/document/product/1207/66093">DescribeDisks</a> 接口返回值中的 DiskId 获取。

        # <li>snapshot-name</li>按照【快照名称】进行过滤。
        # 类型：String
        # 必选：否
        # 可通过 <a href="https://cloud.tencent.com/document/product/1207/54388">DescribeSnapshots</a> 接口返回值中的 SnapshotName 获取。
        # <li>instance-id</li>按照【实例 ID 】进行过滤。
        # 类型：String
        # 必选：否
        # 可通过 <a href="https://cloud.tencent.com/document/product/1207/47573">DescribeInstances</a> 接口返回值中的 InstanceId 获取。

        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 SnapshotIds 和 Filters。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :SnapshotIds, :Filters, :Offset, :Limit

        def initialize(snapshotids=nil, filters=nil, offset=nil, limit=nil)
          @SnapshotIds = snapshotids
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
        end
      end

      # DescribeSnapshots返回参数结构体
      class DescribeSnapshotsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 快照的数量。
        # @type TotalCount: Integer
        # @param SnapshotSet: 快照的详情列表。
        # @type SnapshotSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param OrderField: 可用区列表排序的依据字段。取值范围：
        # <li>ZONE：依据可用区排序。</li>
        # <li>INSTANCE_DISPLAY_LABEL：依据可用区展示标签排序，可用区展示标签包括：HIDDEN（隐藏）、NORMAL（普通）、SELECTED（默认选中），默认采用的升序排列为：['HIDDEN', 'NORMAL', 'SELECTED']。
        # 默认按可用区排序。</li>
        # @type OrderField: String
        # @param Order: 输出可用区列表的排列顺序。取值范围：
        # <li>ASC：升序排列。 </li>
        # <li>DESC：降序排列。</li>
        # 默认按升序排列。
        # @type Order: String

        attr_accessor :OrderField, :Order

        def initialize(orderfield=nil, order=nil)
          @OrderField = orderfield
          @Order = order
        end

        def deserialize(params)
          @OrderField = params['OrderField']
          @Order = params['Order']
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可用区数量
        # @type TotalCount: Integer
        # @param ZoneInfoSet: 可用区详细信息列表
        # @type ZoneInfoSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ZoneInfoSet, :RequestId

        def initialize(totalcount=nil, zoneinfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @ZoneInfoSet = zoneinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ZoneInfoSet'].nil?
            @ZoneInfoSet = []
            params['ZoneInfoSet'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZoneInfoSet << zoneinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetachCcn请求参数结构体
      class DetachCcnRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: 云联网实例ID。可通过[DescribeCcnAttachedInstances](https://cloud.tencent.com/document/product/1207/58797)接口返回值中的CcnId获取。
        # @type CcnId: String

        attr_accessor :CcnId

        def initialize(ccnid=nil)
          @CcnId = ccnid
        end

        def deserialize(params)
          @CcnId = params['CcnId']
        end
      end

      # DetachCcn返回参数结构体
      class DetachCcnResponse < TencentCloud::Common::AbstractModel
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

      # DetachDisks请求参数结构体
      class DetachDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。每次批量请求云硬盘的上限为 100。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。
        # @type DiskIds: Array

        attr_accessor :DiskIds

        def initialize(diskids=nil)
          @DiskIds = diskids
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
        end
      end

      # DetachDisks返回参数结构体
      class DetachDisksResponse < TencentCloud::Common::AbstractModel
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

      # 计费项目明细。
      class DetailPrice < TencentCloud::Common::AbstractModel
        # @param PriceName: 描述计费项目名称，目前取值
        # <li>"DiskSpace"代表云硬盘空间收费项。</li>
        # <li>"DiskBackupQuota"代表云硬盘备份点配额收费项。</li>
        # @type PriceName: String
        # @param OriginUnitPrice: 云硬盘计费项维度单价。
        # @type OriginUnitPrice: Float
        # @param OriginalPrice: 云硬盘计费项维度总价。
        # @type OriginalPrice: Float
        # @param Discount: 云硬盘在计费项维度折扣。
        # @type Discount: Float
        # @param DiscountPrice: 云硬盘在计费项维度折后总价。
        # @type DiscountPrice: Float

        attr_accessor :PriceName, :OriginUnitPrice, :OriginalPrice, :Discount, :DiscountPrice

        def initialize(pricename=nil, originunitprice=nil, originalprice=nil, discount=nil, discountprice=nil)
          @PriceName = pricename
          @OriginUnitPrice = originunitprice
          @OriginalPrice = originalprice
          @Discount = discount
          @DiscountPrice = discountprice
        end

        def deserialize(params)
          @PriceName = params['PriceName']
          @OriginUnitPrice = params['OriginUnitPrice']
          @OriginalPrice = params['OriginalPrice']
          @Discount = params['Discount']
          @DiscountPrice = params['DiscountPrice']
        end
      end

      # DisassociateInstancesKeyPairs请求参数结构体
      class DisassociateInstancesKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥对 ID 列表，每次请求批量密钥对的上限为 100。可通过[DescribeKeyPairs](https://cloud.tencent.com/document/api/1207/55540)接口返回值中的KeyId获取。
        # @type KeyIds: Array
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array

        attr_accessor :KeyIds, :InstanceIds

        def initialize(keyids=nil, instanceids=nil)
          @KeyIds = keyids
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
          @InstanceIds = params['InstanceIds']
        end
      end

      # DisassociateInstancesKeyPairs返回参数结构体
      class DisassociateInstancesKeyPairsResponse < TencentCloud::Common::AbstractModel
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

      # 套餐折扣详情（仅用于控制台调用询价相关接口返回）。
      class DiscountDetail < TencentCloud::Common::AbstractModel
        # @param TimeSpan: 计费时长。
        # @type TimeSpan: Integer
        # @param TimeUnit: 计费单元。
        # @type TimeUnit: String
        # @param TotalCost: 总价。
        # @type TotalCost: Float
        # @param RealTotalCost: 折后总价。
        # @type RealTotalCost: Float
        # @param Discount: 折扣。
        # @type Discount: Float
        # @param PolicyDetail: 具体折扣详情。
        # @type PolicyDetail: :class:`Tencentcloud::Lighthouse.v20200324.models.PolicyDetail`

        attr_accessor :TimeSpan, :TimeUnit, :TotalCost, :RealTotalCost, :Discount, :PolicyDetail

        def initialize(timespan=nil, timeunit=nil, totalcost=nil, realtotalcost=nil, discount=nil, policydetail=nil)
          @TimeSpan = timespan
          @TimeUnit = timeunit
          @TotalCost = totalcost
          @RealTotalCost = realtotalcost
          @Discount = discount
          @PolicyDetail = policydetail
        end

        def deserialize(params)
          @TimeSpan = params['TimeSpan']
          @TimeUnit = params['TimeUnit']
          @TotalCost = params['TotalCost']
          @RealTotalCost = params['RealTotalCost']
          @Discount = params['Discount']
          unless params['PolicyDetail'].nil?
            @PolicyDetail = PolicyDetail.new
            @PolicyDetail.deserialize(params['PolicyDetail'])
          end
        end
      end

      # 磁盘信息
      class Disk < TencentCloud::Common::AbstractModel
        # @param DiskId: 磁盘ID
        # @type DiskId: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param DiskName: 磁盘名称
        # @type DiskName: String
        # @param DiskUsage: 磁盘类型
        # @type DiskUsage: String
        # @param DiskType: 磁盘介质类型
        # @type DiskType: String
        # @param DiskChargeType: 磁盘付费类型
        # @type DiskChargeType: String
        # @param DiskSize: 磁盘大小
        # @type DiskSize: Integer
        # @param RenewFlag: 续费标识
        # @type RenewFlag: String
        # @param DiskState: 磁盘状态，取值范围：
        # <li>PENDING：创建中。 </li>
        # <li>UNATTACHED：未挂载。</li>
        # <li>ATTACHING：挂载中。</li>
        # <li>ATTACHED：已挂载。</li>
        # <li>DETACHING：卸载中。 </li>
        # <li> SHUTDOWN：已隔离。</li>
        # <li> CREATED_FAILED：创建失败。</li>
        # <li>TERMINATING：销毁中。</li>
        # <li> DELETING：删除中。</li>
        # <li> FREEZING：冻结中。</li>
        # @type DiskState: String
        # @param Attached: 磁盘挂载状态
        # @type Attached: Boolean
        # @param DeleteWithInstance: 是否随实例释放
        # @type DeleteWithInstance: Boolean
        # @param LatestOperation: 上一次操作
        # @type LatestOperation: String
        # @param LatestOperationState: 上一次操作状态
        # @type LatestOperationState: String
        # @param LatestOperationRequestId: 上一次请求ID
        # @type LatestOperationRequestId: String
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ExpiredTime: 到期时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: String
        # @param IsolatedTime: 隔离时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTime: String
        # @param DiskBackupCount: 云硬盘的已有备份点数量。
        # @type DiskBackupCount: Integer
        # @param DiskBackupQuota: 云硬盘的备份点配额数量。
        # @type DiskBackupQuota: Integer

        attr_accessor :DiskId, :InstanceId, :Zone, :DiskName, :DiskUsage, :DiskType, :DiskChargeType, :DiskSize, :RenewFlag, :DiskState, :Attached, :DeleteWithInstance, :LatestOperation, :LatestOperationState, :LatestOperationRequestId, :CreatedTime, :ExpiredTime, :IsolatedTime, :DiskBackupCount, :DiskBackupQuota

        def initialize(diskid=nil, instanceid=nil, zone=nil, diskname=nil, diskusage=nil, disktype=nil, diskchargetype=nil, disksize=nil, renewflag=nil, diskstate=nil, attached=nil, deletewithinstance=nil, latestoperation=nil, latestoperationstate=nil, latestoperationrequestid=nil, createdtime=nil, expiredtime=nil, isolatedtime=nil, diskbackupcount=nil, diskbackupquota=nil)
          @DiskId = diskid
          @InstanceId = instanceid
          @Zone = zone
          @DiskName = diskname
          @DiskUsage = diskusage
          @DiskType = disktype
          @DiskChargeType = diskchargetype
          @DiskSize = disksize
          @RenewFlag = renewflag
          @DiskState = diskstate
          @Attached = attached
          @DeleteWithInstance = deletewithinstance
          @LatestOperation = latestoperation
          @LatestOperationState = latestoperationstate
          @LatestOperationRequestId = latestoperationrequestid
          @CreatedTime = createdtime
          @ExpiredTime = expiredtime
          @IsolatedTime = isolatedtime
          @DiskBackupCount = diskbackupcount
          @DiskBackupQuota = diskbackupquota
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @InstanceId = params['InstanceId']
          @Zone = params['Zone']
          @DiskName = params['DiskName']
          @DiskUsage = params['DiskUsage']
          @DiskType = params['DiskType']
          @DiskChargeType = params['DiskChargeType']
          @DiskSize = params['DiskSize']
          @RenewFlag = params['RenewFlag']
          @DiskState = params['DiskState']
          @Attached = params['Attached']
          @DeleteWithInstance = params['DeleteWithInstance']
          @LatestOperation = params['LatestOperation']
          @LatestOperationState = params['LatestOperationState']
          @LatestOperationRequestId = params['LatestOperationRequestId']
          @CreatedTime = params['CreatedTime']
          @ExpiredTime = params['ExpiredTime']
          @IsolatedTime = params['IsolatedTime']
          @DiskBackupCount = params['DiskBackupCount']
          @DiskBackupQuota = params['DiskBackupQuota']
        end
      end

      # 描述了云硬盘备份点相关信息。
      class DiskBackup < TencentCloud::Common::AbstractModel
        # @param DiskBackupId: 云硬盘备份点ID。
        # @type DiskBackupId: String
        # @param DiskUsage: 创建此云硬盘备份点的云硬盘类型。取值：<li>DATA_DISK：数据盘</li>
        # @type DiskUsage: String
        # @param DiskId: 创建此云硬盘备份点的云硬盘 ID。
        # @type DiskId: String
        # @param DiskSize: 创建此云硬盘备份点的云硬盘大小，单位 GB。
        # @type DiskSize: Integer
        # @param DiskBackupName: 云硬盘备份点名称，用户自定义的云硬盘备份点别名。
        # @type DiskBackupName: String
        # @param DiskBackupState: 云硬盘备份点的状态。取值范围：
        # <li>NORMAL：正常。 </li>
        # <li>CREATING：创建中。</li>
        # <li>ROLLBACKING：回滚中。</li>
        # <li>DELETING：删除中。</li>
        # @type DiskBackupState: String
        # @param Percent: 创建或回滚云硬盘备份点进度百分比，成功后此字段取值为 100。
        # @type Percent: Integer
        # @param LatestOperation: 上一次操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperation: String
        # @param LatestOperationState: 上一次操作状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationState: String
        # @param LatestOperationRequestId: 上一次请求ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationRequestId: String
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # @type CreatedTime: String

        attr_accessor :DiskBackupId, :DiskUsage, :DiskId, :DiskSize, :DiskBackupName, :DiskBackupState, :Percent, :LatestOperation, :LatestOperationState, :LatestOperationRequestId, :CreatedTime

        def initialize(diskbackupid=nil, diskusage=nil, diskid=nil, disksize=nil, diskbackupname=nil, diskbackupstate=nil, percent=nil, latestoperation=nil, latestoperationstate=nil, latestoperationrequestid=nil, createdtime=nil)
          @DiskBackupId = diskbackupid
          @DiskUsage = diskusage
          @DiskId = diskid
          @DiskSize = disksize
          @DiskBackupName = diskbackupname
          @DiskBackupState = diskbackupstate
          @Percent = percent
          @LatestOperation = latestoperation
          @LatestOperationState = latestoperationstate
          @LatestOperationRequestId = latestoperationrequestid
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @DiskBackupId = params['DiskBackupId']
          @DiskUsage = params['DiskUsage']
          @DiskId = params['DiskId']
          @DiskSize = params['DiskSize']
          @DiskBackupName = params['DiskBackupName']
          @DiskBackupState = params['DiskBackupState']
          @Percent = params['Percent']
          @LatestOperation = params['LatestOperation']
          @LatestOperationState = params['LatestOperationState']
          @LatestOperationRequestId = params['LatestOperationRequestId']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 云硬盘备份点操作限制列表。
      class DiskBackupDeniedActions < TencentCloud::Common::AbstractModel
        # @param DiskBackupId: 云硬盘备份点ID。
        # @type DiskBackupId: String
        # @param DeniedActions: 操作限制列表。
        # @type DeniedActions: Array

        attr_accessor :DiskBackupId, :DeniedActions

        def initialize(diskbackupid=nil, deniedactions=nil)
          @DiskBackupId = diskbackupid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @DiskBackupId = params['DiskBackupId']
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

      # 云硬盘包年包月相关参数设置
      class DiskChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 新购周期。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费<br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费，用户需要手动续费<br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不自动续费，且不通知<br><br>默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，云硬盘到期后将按月自动续费。
        # @type RenewFlag: String
        # @param TimeUnit: 新购单位. 默认值: "m"。
        # @type TimeUnit: String

        attr_accessor :Period, :RenewFlag, :TimeUnit

        def initialize(period=nil, renewflag=nil, timeunit=nil)
          @Period = period
          @RenewFlag = renewflag
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
          @TimeUnit = params['TimeUnit']
        end
      end

      # 云硬盘配置
      class DiskConfig < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区。
        # @type Zone: String
        # @param DiskType: 云硬盘类型。
        # @type DiskType: String
        # @param DiskSalesState: 云硬盘可售卖状态。
        # @type DiskSalesState: String
        # @param MaxDiskSize: 最大云硬盘大小。
        # @type MaxDiskSize: Integer
        # @param MinDiskSize: 最小云硬盘大小。
        # @type MinDiskSize: Integer
        # @param DiskStepSize: 云硬盘步长。
        # @type DiskStepSize: Integer

        attr_accessor :Zone, :DiskType, :DiskSalesState, :MaxDiskSize, :MinDiskSize, :DiskStepSize

        def initialize(zone=nil, disktype=nil, disksalesstate=nil, maxdisksize=nil, mindisksize=nil, diskstepsize=nil)
          @Zone = zone
          @DiskType = disktype
          @DiskSalesState = disksalesstate
          @MaxDiskSize = maxdisksize
          @MinDiskSize = mindisksize
          @DiskStepSize = diskstepsize
        end

        def deserialize(params)
          @Zone = params['Zone']
          @DiskType = params['DiskType']
          @DiskSalesState = params['DiskSalesState']
          @MaxDiskSize = params['MaxDiskSize']
          @MinDiskSize = params['MinDiskSize']
          @DiskStepSize = params['DiskStepSize']
        end
      end

      # 磁盘操作限制列表详细信息
      class DiskDeniedActions < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID。
        # @type DiskId: String
        # @param DeniedActions: 操作限制列表。
        # @type DeniedActions: Array

        attr_accessor :DiskId, :DeniedActions

        def initialize(diskid=nil, deniedactions=nil)
          @DiskId = diskid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @DiskId = params['DiskId']
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

      # 云硬盘价格
      class DiskPrice < TencentCloud::Common::AbstractModel
        # @param OriginalDiskPrice: 云硬盘单价。
        # @type OriginalDiskPrice: Float
        # @param OriginalPrice: 云硬盘总价。
        # @type OriginalPrice: Float
        # @param Discount: 折扣。
        # @type Discount: Float
        # @param DiscountPrice: 折后总价。
        # @type DiscountPrice: Float
        # @param DetailPrices: 计费项目明细列表。
        # @type DetailPrices: Array

        attr_accessor :OriginalDiskPrice, :OriginalPrice, :Discount, :DiscountPrice, :DetailPrices

        def initialize(originaldiskprice=nil, originalprice=nil, discount=nil, discountprice=nil, detailprices=nil)
          @OriginalDiskPrice = originaldiskprice
          @OriginalPrice = originalprice
          @Discount = discount
          @DiscountPrice = discountprice
          @DetailPrices = detailprices
        end

        def deserialize(params)
          @OriginalDiskPrice = params['OriginalDiskPrice']
          @OriginalPrice = params['OriginalPrice']
          @Discount = params['Discount']
          @DiscountPrice = params['DiscountPrice']
          unless params['DetailPrices'].nil?
            @DetailPrices = []
            params['DetailPrices'].each do |i|
              detailprice_tmp = DetailPrice.new
              detailprice_tmp.deserialize(i)
              @DetailPrices << detailprice_tmp
            end
          end
        end
      end

      # 可退还云硬盘详细信息
      class DiskReturnable < TencentCloud::Common::AbstractModel
        # @param DiskId: 云硬盘ID。
        # @type DiskId: String
        # @param IsReturnable: 云硬盘是否可退还。
        # @type IsReturnable: Boolean
        # @param ReturnFailCode: 云硬盘退还失败错误码。
        # @type ReturnFailCode: Integer
        # @param ReturnFailMessage: 云硬盘退还失败错误信息。
        # @type ReturnFailMessage: String

        attr_accessor :DiskId, :IsReturnable, :ReturnFailCode, :ReturnFailMessage

        def initialize(diskid=nil, isreturnable=nil, returnfailcode=nil, returnfailmessage=nil)
          @DiskId = diskid
          @IsReturnable = isreturnable
          @ReturnFailCode = returnfailcode
          @ReturnFailMessage = returnfailmessage
        end

        def deserialize(params)
          @DiskId = params['DiskId']
          @IsReturnable = params['IsReturnable']
          @ReturnFailCode = params['ReturnFailCode']
          @ReturnFailMessage = params['ReturnFailMessage']
        end
      end

      # Docker活动信息
      class DockerActivity < TencentCloud::Common::AbstractModel
        # @param ActivityId: 活动ID。
        # @type ActivityId: String
        # @param ActivityName: 活动名称。
        # @type ActivityName: String
        # @param ActivityState: 活动状态。取值范围：
        # <li>INIT：表示初始化，活动尚未执行</li>
        # <li>OPERATING：表示活动执行中</li>
        # <li>SUCCESS：表示活动执行成功</li>
        # <li>FAILED：表示活动执行失败</li>
        # @type ActivityState: String
        # @param ActivityCommandOutput: 活动执行的命令输出，以base64编码。
        # @type ActivityCommandOutput: String
        # @param ContainerIds: 容器ID列表。
        # @type ContainerIds: Array
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # @type CreatedTime: String
        # @param EndTime: 结束时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String

        attr_accessor :ActivityId, :ActivityName, :ActivityState, :ActivityCommandOutput, :ContainerIds, :CreatedTime, :EndTime

        def initialize(activityid=nil, activityname=nil, activitystate=nil, activitycommandoutput=nil, containerids=nil, createdtime=nil, endtime=nil)
          @ActivityId = activityid
          @ActivityName = activityname
          @ActivityState = activitystate
          @ActivityCommandOutput = activitycommandoutput
          @ContainerIds = containerids
          @CreatedTime = createdtime
          @EndTime = endtime
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @ActivityName = params['ActivityName']
          @ActivityState = params['ActivityState']
          @ActivityCommandOutput = params['ActivityCommandOutput']
          @ContainerIds = params['ContainerIds']
          @CreatedTime = params['CreatedTime']
          @EndTime = params['EndTime']
        end
      end

      # Docker容器信息
      class DockerContainer < TencentCloud::Common::AbstractModel
        # @param ContainerId: 容器ID
        # @type ContainerId: String
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param ContainerImage: 容器镜像地址
        # @type ContainerImage: String
        # @param Command: 容器Command
        # @type Command: String
        # @param Status: 容器状态描述
        # @type Status: String
        # @param State: 容器状态，和docker的容器状态保持一致，当前取值有：created, restarting, running, removing, paused, exited, or dead
        # @type State: String
        # @param PublishPortSet: 容器端口主机端口映射列表
        # @type PublishPortSet: Array
        # @param VolumeSet: 容器挂载本地卷列表
        # @type VolumeSet: Array
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # @type CreatedTime: String

        attr_accessor :ContainerId, :ContainerName, :ContainerImage, :Command, :Status, :State, :PublishPortSet, :VolumeSet, :CreatedTime

        def initialize(containerid=nil, containername=nil, containerimage=nil, command=nil, status=nil, state=nil, publishportset=nil, volumeset=nil, createdtime=nil)
          @ContainerId = containerid
          @ContainerName = containername
          @ContainerImage = containerimage
          @Command = command
          @Status = status
          @State = state
          @PublishPortSet = publishportset
          @VolumeSet = volumeset
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @ContainerId = params['ContainerId']
          @ContainerName = params['ContainerName']
          @ContainerImage = params['ContainerImage']
          @Command = params['Command']
          @Status = params['Status']
          @State = params['State']
          unless params['PublishPortSet'].nil?
            @PublishPortSet = []
            params['PublishPortSet'].each do |i|
              dockercontainerpublishport_tmp = DockerContainerPublishPort.new
              dockercontainerpublishport_tmp.deserialize(i)
              @PublishPortSet << dockercontainerpublishport_tmp
            end
          end
          unless params['VolumeSet'].nil?
            @VolumeSet = []
            params['VolumeSet'].each do |i|
              dockercontainervolume_tmp = DockerContainerVolume.new
              dockercontainervolume_tmp.deserialize(i)
              @VolumeSet << dockercontainervolume_tmp
            end
          end
          @CreatedTime = params['CreatedTime']
        end
      end

      # Docker容器创建时的配置
      class DockerContainerConfiguration < TencentCloud::Common::AbstractModel
        # @param ContainerImage: 容器镜像地址
        # @type ContainerImage: String
        # @param ContainerName: 容器名称
        # @type ContainerName: String
        # @param Envs: 环境变量列表
        # @type Envs: Array
        # @param PublishPorts: 容器端口主机端口映射列表
        # @type PublishPorts: Array
        # @param Volumes: 容器加载本地卷列表
        # @type Volumes: Array
        # @param Command: 运行的命令
        # @type Command: String
        # @param RestartPolicy: 容器重启策略
        # @type RestartPolicy: String

        attr_accessor :ContainerImage, :ContainerName, :Envs, :PublishPorts, :Volumes, :Command, :RestartPolicy

        def initialize(containerimage=nil, containername=nil, envs=nil, publishports=nil, volumes=nil, command=nil, restartpolicy=nil)
          @ContainerImage = containerimage
          @ContainerName = containername
          @Envs = envs
          @PublishPorts = publishports
          @Volumes = volumes
          @Command = command
          @RestartPolicy = restartpolicy
        end

        def deserialize(params)
          @ContainerImage = params['ContainerImage']
          @ContainerName = params['ContainerName']
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              containerenv_tmp = ContainerEnv.new
              containerenv_tmp.deserialize(i)
              @Envs << containerenv_tmp
            end
          end
          unless params['PublishPorts'].nil?
            @PublishPorts = []
            params['PublishPorts'].each do |i|
              dockercontainerpublishport_tmp = DockerContainerPublishPort.new
              dockercontainerpublishport_tmp.deserialize(i)
              @PublishPorts << dockercontainerpublishport_tmp
            end
          end
          unless params['Volumes'].nil?
            @Volumes = []
            params['Volumes'].each do |i|
              dockercontainervolume_tmp = DockerContainerVolume.new
              dockercontainervolume_tmp.deserialize(i)
              @Volumes << dockercontainervolume_tmp
            end
          end
          @Command = params['Command']
          @RestartPolicy = params['RestartPolicy']
        end
      end

      # Docker容器映射的端口
      class DockerContainerPublishPort < TencentCloud::Common::AbstractModel
        # @param HostPort: 主机端口
        # @type HostPort: Integer
        # @param ContainerPort: 容器端口
        # @type ContainerPort: Integer
        # @param Ip: 对外绑定IP，默认0.0.0.0
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ip: String
        # @param Protocol: 协议，默认tcp，支持tcp/udp/sctp
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String

        attr_accessor :HostPort, :ContainerPort, :Ip, :Protocol

        def initialize(hostport=nil, containerport=nil, ip=nil, protocol=nil)
          @HostPort = hostport
          @ContainerPort = containerport
          @Ip = ip
          @Protocol = protocol
        end

        def deserialize(params)
          @HostPort = params['HostPort']
          @ContainerPort = params['ContainerPort']
          @Ip = params['Ip']
          @Protocol = params['Protocol']
        end
      end

      # Docker容器挂载卷
      class DockerContainerVolume < TencentCloud::Common::AbstractModel
        # @param ContainerPath: 容器路径
        # @type ContainerPath: String
        # @param HostPath: 主机路径
        # @type HostPath: String

        attr_accessor :ContainerPath, :HostPath

        def initialize(containerpath=nil, hostpath=nil)
          @ContainerPath = containerpath
          @HostPath = hostpath
        end

        def deserialize(params)
          @ContainerPath = params['ContainerPath']
          @HostPath = params['HostPath']
        end
      end

      # >描述键值对过滤器，用于条件过滤查询。例如过滤名称等
      # > * 若存在多个`Filter`时，`Filter`间的关系为逻辑与（`AND`）关系。
      # > * 若同一个`Filter`存在多个`Values`，同一`Filter`下`Values`间的关系为逻辑或（`OR`）关系。
      # >
      # > 以DescribeInstances接口的`Filter`为例。若我们需要查询实例名称（`instance-name`）为test ***并且*** 实例内网IP（`private-ip-address`）为10.10.10.10的实例时，可如下实现：
      # ```
      # Filters.0.Name=instance-name
      # &Filters.0.Values.0=test
      # &Filters.1.Name=private-ip-address
      # &Filters.1.Values.0=10.10.10.10
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

      # 描述防火墙规则信息。
      class FirewallRule < TencentCloud::Common::AbstractModel
        # @param Protocol: 协议，取值：TCP，UDP，ICMP，ALL。
        # @type Protocol: String
        # @param Port: 端口，取值：ALL，单独的端口，逗号分隔的离散端口，减号分隔的端口范围。
        # @type Port: String
        # @param CidrBlock: IPv4网段或 IPv4地址(互斥)。
        # 示例值：0.0.0.0/0。

        # 和Ipv6CidrBlock互斥，两者都不指定时，如果Protocol不是ICMPv6，则取默认值0.0.0.0/0。
        # @type CidrBlock: String
        # @param Action: 取值：ACCEPT，DROP。默认为 ACCEPT。
        # @type Action: String
        # @param FirewallRuleDescription: 防火墙规则描述。
        # @type FirewallRuleDescription: String

        attr_accessor :Protocol, :Port, :CidrBlock, :Action, :FirewallRuleDescription

        def initialize(protocol=nil, port=nil, cidrblock=nil, action=nil, firewallruledescription=nil)
          @Protocol = protocol
          @Port = port
          @CidrBlock = cidrblock
          @Action = action
          @FirewallRuleDescription = firewallruledescription
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Port = params['Port']
          @CidrBlock = params['CidrBlock']
          @Action = params['Action']
          @FirewallRuleDescription = params['FirewallRuleDescription']
        end
      end

      # 描述防火墙规则详细信息。
      class FirewallRuleInfo < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型，取值：自定义，HTTP(80)，HTTPS(443)，Linux登录(22)，Windows登录(3389)，MySQL(3306)，SQL Server(1433)，全部TCP，全部UDP，Ping-ICMP，ALL。
        # @type AppType: String
        # @param Protocol: 协议，取值：TCP，UDP，ICMP，ALL。
        # @type Protocol: String
        # @param Port: 端口，取值：ALL，单独的端口，逗号分隔的离散端口，减号分隔的端口范围。
        # @type Port: String
        # @param CidrBlock: IPv4网段或 IPv4地址(互斥)。
        # 示例值：0.0.0.0/0。

        # 和Ipv6CidrBlock互斥，两者都不指定时，如果Protocol不是ICMPv6，则取默认值0.0.0.0/0。
        # @type CidrBlock: String
        # @param Action: 取值：ACCEPT，DROP。默认为 ACCEPT。
        # @type Action: String
        # @param FirewallRuleDescription: 防火墙规则描述。
        # @type FirewallRuleDescription: String

        attr_accessor :AppType, :Protocol, :Port, :CidrBlock, :Action, :FirewallRuleDescription

        def initialize(apptype=nil, protocol=nil, port=nil, cidrblock=nil, action=nil, firewallruledescription=nil)
          @AppType = apptype
          @Protocol = protocol
          @Port = port
          @CidrBlock = cidrblock
          @Action = action
          @FirewallRuleDescription = firewallruledescription
        end

        def deserialize(params)
          @AppType = params['AppType']
          @Protocol = params['Protocol']
          @Port = params['Port']
          @CidrBlock = params['CidrBlock']
          @Action = params['Action']
          @FirewallRuleDescription = params['FirewallRuleDescription']
        end
      end

      # 防火墙模板信息。
      class FirewallTemplate < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板Id。
        # @type TemplateId: String
        # @param TemplateName: 模板名称。
        # @type TemplateName: String
        # @param TemplateType: 模板类型。
        # @type TemplateType: String
        # @param TemplateState: 模板状态。
        # @type TemplateState: String
        # @param CreatedTime: 模板创建时间。
        # @type CreatedTime: String

        attr_accessor :TemplateId, :TemplateName, :TemplateType, :TemplateState, :CreatedTime

        def initialize(templateid=nil, templatename=nil, templatetype=nil, templatestate=nil, createdtime=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @TemplateType = templatetype
          @TemplateState = templatestate
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @TemplateType = params['TemplateType']
          @TemplateState = params['TemplateState']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 防火墙模板应用记录。
      class FirewallTemplateApplyRecord < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: String
        # @param ApplyTime: 应用模板的时间。
        # @type ApplyTime: String
        # @param TemplateRuleSet: 模板规则列表。
        # @type TemplateRuleSet: Array
        # @param ApplyState: 应用模板的执行状态。

        # - SUCCESS：成功
        # - FAILED：失败
        # @type ApplyState: String
        # @param SuccessCount: 应用成功的实例数量。
        # @type SuccessCount: Integer
        # @param FailedCount: 应用失败的实例数量。
        # @type FailedCount: Integer
        # @param RunningCount: 正在应用中的实例数量。
        # @type RunningCount: Integer
        # @param ApplyDetailSet: 应用模板的执行细节。
        # @type ApplyDetailSet: Array

        attr_accessor :TaskId, :ApplyTime, :TemplateRuleSet, :ApplyState, :SuccessCount, :FailedCount, :RunningCount, :ApplyDetailSet

        def initialize(taskid=nil, applytime=nil, templateruleset=nil, applystate=nil, successcount=nil, failedcount=nil, runningcount=nil, applydetailset=nil)
          @TaskId = taskid
          @ApplyTime = applytime
          @TemplateRuleSet = templateruleset
          @ApplyState = applystate
          @SuccessCount = successcount
          @FailedCount = failedcount
          @RunningCount = runningcount
          @ApplyDetailSet = applydetailset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ApplyTime = params['ApplyTime']
          unless params['TemplateRuleSet'].nil?
            @TemplateRuleSet = []
            params['TemplateRuleSet'].each do |i|
              firewalltemplaterule_tmp = FirewallTemplateRule.new
              firewalltemplaterule_tmp.deserialize(i)
              @TemplateRuleSet << firewalltemplaterule_tmp
            end
          end
          @ApplyState = params['ApplyState']
          @SuccessCount = params['SuccessCount']
          @FailedCount = params['FailedCount']
          @RunningCount = params['RunningCount']
          unless params['ApplyDetailSet'].nil?
            @ApplyDetailSet = []
            params['ApplyDetailSet'].each do |i|
              firewalltemplateapplyrecorddetail_tmp = FirewallTemplateApplyRecordDetail.new
              firewalltemplateapplyrecorddetail_tmp.deserialize(i)
              @ApplyDetailSet << firewalltemplateapplyrecorddetail_tmp
            end
          end
        end
      end

      # 防火墙模板应用记录详情。
      class FirewallTemplateApplyRecordDetail < TencentCloud::Common::AbstractModel
        # @param Instance: 实例标识信息。
        # @type Instance: :class:`Tencentcloud::Lighthouse.v20200324.models.InstanceIdentifier`
        # @param ApplyState: 防火墙模板应用状态。

        # - SUCCESS：成功
        # - FAILED：失败
        # @type ApplyState: String
        # @param ErrorMessage: 防火墙模板应用错误信息。
        # @type ErrorMessage: String

        attr_accessor :Instance, :ApplyState, :ErrorMessage

        def initialize(instance=nil, applystate=nil, errormessage=nil)
          @Instance = instance
          @ApplyState = applystate
          @ErrorMessage = errormessage
        end

        def deserialize(params)
          unless params['Instance'].nil?
            @Instance = InstanceIdentifier.new
            @Instance.deserialize(params['Instance'])
          end
          @ApplyState = params['ApplyState']
          @ErrorMessage = params['ErrorMessage']
        end
      end

      # 防火墙模板规则信息
      class FirewallTemplateRule < TencentCloud::Common::AbstractModel
        # @param TemplateRuleId: 防火墙模板规则ID。
        # @type TemplateRuleId: String
        # @param FirewallRule: 防火墙规则。
        # @type FirewallRule: :class:`Tencentcloud::Lighthouse.v20200324.models.FirewallRule`

        attr_accessor :TemplateRuleId, :FirewallRule

        def initialize(templateruleid=nil, firewallrule=nil)
          @TemplateRuleId = templateruleid
          @FirewallRule = firewallrule
        end

        def deserialize(params)
          @TemplateRuleId = params['TemplateRuleId']
          unless params['FirewallRule'].nil?
            @FirewallRule = FirewallRule.new
            @FirewallRule.deserialize(params['FirewallRule'])
          end
        end
      end

      # 防火墙模板规则信息
      class FirewallTemplateRuleInfo < TencentCloud::Common::AbstractModel
        # @param TemplateRuleId: 防火墙模板规则ID。
        # @type TemplateRuleId: String
        # @param FirewallRuleInfo: 防火墙规则信息。
        # @type FirewallRuleInfo: :class:`Tencentcloud::Lighthouse.v20200324.models.FirewallRuleInfo`

        attr_accessor :TemplateRuleId, :FirewallRuleInfo

        def initialize(templateruleid=nil, firewallruleinfo=nil)
          @TemplateRuleId = templateruleid
          @FirewallRuleInfo = firewallruleinfo
        end

        def deserialize(params)
          @TemplateRuleId = params['TemplateRuleId']
          unless params['FirewallRuleInfo'].nil?
            @FirewallRuleInfo = FirewallRuleInfo.new
            @FirewallRuleInfo.deserialize(params['FirewallRuleInfo'])
          end
        end
      end

      # 描述通用资源配额信息。
      class GeneralResourceQuota < TencentCloud::Common::AbstractModel
        # @param ResourceName: 资源名称。
        # @type ResourceName: String
        # @param ResourceQuotaAvailable: 资源当前可用数量。
        # @type ResourceQuotaAvailable: Integer
        # @param ResourceQuotaTotal: 资源总数量。
        # @type ResourceQuotaTotal: Integer

        attr_accessor :ResourceName, :ResourceQuotaAvailable, :ResourceQuotaTotal

        def initialize(resourcename=nil, resourcequotaavailable=nil, resourcequotatotal=nil)
          @ResourceName = resourcename
          @ResourceQuotaAvailable = resourcequotaavailable
          @ResourceQuotaTotal = resourcequotatotal
        end

        def deserialize(params)
          @ResourceName = params['ResourceName']
          @ResourceQuotaAvailable = params['ResourceQuotaAvailable']
          @ResourceQuotaTotal = params['ResourceQuotaTotal']
        end
      end

      # ImportKeyPair请求参数结构体
      class ImportKeyPairRequest < TencentCloud::Common::AbstractModel
        # @param KeyName: 密钥对名称，可由数字，字母和下划线组成，长度不超过 25 个字符。
        # @type KeyName: String
        # @param PublicKey: 密钥对的公钥内容， OpenSSH RSA 格式。
        # @type PublicKey: String

        attr_accessor :KeyName, :PublicKey

        def initialize(keyname=nil, publickey=nil)
          @KeyName = keyname
          @PublicKey = publickey
        end

        def deserialize(params)
          @KeyName = params['KeyName']
          @PublicKey = params['PublicKey']
        end
      end

      # ImportKeyPair返回参数结构体
      class ImportKeyPairResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: 密钥对 ID。
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :RequestId

        def initialize(keyid=nil, requestid=nil)
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceCreateBlueprint请求参数结构体
      class InquirePriceCreateBlueprintRequest < TencentCloud::Common::AbstractModel
        # @param BlueprintCount: 自定义镜像的个数。默认值为1。
        # @type BlueprintCount: Integer

        attr_accessor :BlueprintCount

        def initialize(blueprintcount=nil)
          @BlueprintCount = blueprintcount
        end

        def deserialize(params)
          @BlueprintCount = params['BlueprintCount']
        end
      end

      # InquirePriceCreateBlueprint返回参数结构体
      class InquirePriceCreateBlueprintResponse < TencentCloud::Common::AbstractModel
        # @param BlueprintPrice: 自定义镜像的价格参数。
        # @type BlueprintPrice: :class:`Tencentcloud::Lighthouse.v20200324.models.BlueprintPrice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :BlueprintPrice, :RequestId

        def initialize(blueprintprice=nil, requestid=nil)
          @BlueprintPrice = blueprintprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['BlueprintPrice'].nil?
            @BlueprintPrice = BlueprintPrice.new
            @BlueprintPrice.deserialize(params['BlueprintPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceCreateDisks请求参数结构体
      class InquirePriceCreateDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskSize: 云硬盘大小, 单位: GB。
        # @type DiskSize: Integer
        # @param DiskType: 云硬盘介质类型。取值: "CLOUD_PREMIUM"(高性能云盘), "CLOUD_SSD"(SSD云硬盘)。
        # @type DiskType: String
        # @param DiskChargePrepaid: 新购云硬盘包年包月相关参数设置。
        # @type DiskChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.DiskChargePrepaid`
        # @param DiskCount: 云硬盘个数, 默认值: 1。
        # @type DiskCount: Integer
        # @param DiskBackupQuota: 指定云硬盘备份点配额，不传时默认为不带备份点配额。目前只支持不带或设置1个云硬盘备份点配额。
        # @type DiskBackupQuota: Integer

        attr_accessor :DiskSize, :DiskType, :DiskChargePrepaid, :DiskCount, :DiskBackupQuota

        def initialize(disksize=nil, disktype=nil, diskchargeprepaid=nil, diskcount=nil, diskbackupquota=nil)
          @DiskSize = disksize
          @DiskType = disktype
          @DiskChargePrepaid = diskchargeprepaid
          @DiskCount = diskcount
          @DiskBackupQuota = diskbackupquota
        end

        def deserialize(params)
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
          unless params['DiskChargePrepaid'].nil?
            @DiskChargePrepaid = DiskChargePrepaid.new
            @DiskChargePrepaid.deserialize(params['DiskChargePrepaid'])
          end
          @DiskCount = params['DiskCount']
          @DiskBackupQuota = params['DiskBackupQuota']
        end
      end

      # InquirePriceCreateDisks返回参数结构体
      class InquirePriceCreateDisksResponse < TencentCloud::Common::AbstractModel
        # @param DiskPrice: 云硬盘价格。
        # @type DiskPrice: :class:`Tencentcloud::Lighthouse.v20200324.models.DiskPrice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskPrice, :RequestId

        def initialize(diskprice=nil, requestid=nil)
          @DiskPrice = diskprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskPrice'].nil?
            @DiskPrice = DiskPrice.new
            @DiskPrice.deserialize(params['DiskPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceCreateInstances请求参数结构体
      class InquirePriceCreateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param BundleId: 实例的套餐 ID。可以通过调用[DescribeBundles](https://cloud.tencent.com/document/api/1207/47575)接口获取。
        # @type BundleId: String
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.InstanceChargePrepaid`
        # @param InstanceCount: 创建数量，默认为 1。
        # @type InstanceCount: Integer
        # @param BlueprintId: 应用镜像 ID，使用收费应用镜像时必填。可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        # @type BlueprintId: String

        attr_accessor :BundleId, :InstanceChargePrepaid, :InstanceCount, :BlueprintId

        def initialize(bundleid=nil, instancechargeprepaid=nil, instancecount=nil, blueprintid=nil)
          @BundleId = bundleid
          @InstanceChargePrepaid = instancechargeprepaid
          @InstanceCount = instancecount
          @BlueprintId = blueprintid
        end

        def deserialize(params)
          @BundleId = params['BundleId']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @InstanceCount = params['InstanceCount']
          @BlueprintId = params['BlueprintId']
        end
      end

      # InquirePriceCreateInstances返回参数结构体
      class InquirePriceCreateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 询价信息。
        # @type Price: :class:`Tencentcloud::Lighthouse.v20200324.models.Price`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :RequestId

        def initialize(price=nil, requestid=nil)
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceRenewDisks请求参数结构体
      class InquirePriceRenewDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。每次批量请求云硬盘的上限为 1。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。
        # @type DiskIds: Array
        # @param RenewDiskChargePrepaid: 续费云硬盘包年包月相关参数设置。
        # @type RenewDiskChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.RenewDiskChargePrepaid`

        attr_accessor :DiskIds, :RenewDiskChargePrepaid

        def initialize(diskids=nil, renewdiskchargeprepaid=nil)
          @DiskIds = diskids
          @RenewDiskChargePrepaid = renewdiskchargeprepaid
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          unless params['RenewDiskChargePrepaid'].nil?
            @RenewDiskChargePrepaid = RenewDiskChargePrepaid.new
            @RenewDiskChargePrepaid.deserialize(params['RenewDiskChargePrepaid'])
          end
        end
      end

      # InquirePriceRenewDisks返回参数结构体
      class InquirePriceRenewDisksResponse < TencentCloud::Common::AbstractModel
        # @param DiskPrice: 云硬盘价格。
        # @type DiskPrice: :class:`Tencentcloud::Lighthouse.v20200324.models.DiskPrice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DiskPrice, :RequestId

        def initialize(diskprice=nil, requestid=nil)
          @DiskPrice = diskprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DiskPrice'].nil?
            @DiskPrice = DiskPrice.new
            @DiskPrice.deserialize(params['DiskPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # InquirePriceRenewInstances请求参数结构体
      class InquirePriceRenewInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待续费的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573 )接口返回值中的InstanceId获取。每次请求批量实例的上限为50。
        # @type InstanceIds: Array
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.InstanceChargePrepaid`
        # @param RenewDataDisk: 是否续费数据盘。默认值: false, 即不续费。
        # @type RenewDataDisk: Boolean
        # @param AlignInstanceExpiredTime: 数据盘是否对齐实例到期时间。默认值: false, 即不对齐。
        # @type AlignInstanceExpiredTime: Boolean

        attr_accessor :InstanceIds, :InstanceChargePrepaid, :RenewDataDisk, :AlignInstanceExpiredTime

        def initialize(instanceids=nil, instancechargeprepaid=nil, renewdatadisk=nil, aligninstanceexpiredtime=nil)
          @InstanceIds = instanceids
          @InstanceChargePrepaid = instancechargeprepaid
          @RenewDataDisk = renewdatadisk
          @AlignInstanceExpiredTime = aligninstanceexpiredtime
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @RenewDataDisk = params['RenewDataDisk']
          @AlignInstanceExpiredTime = params['AlignInstanceExpiredTime']
        end
      end

      # InquirePriceRenewInstances返回参数结构体
      class InquirePriceRenewInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 询价信息。默认为列表中第一个实例的价格信息。
        # @type Price: :class:`Tencentcloud::Lighthouse.v20200324.models.Price`
        # @param DataDiskPriceSet: 数据盘价格信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDiskPriceSet: Array
        # @param InstancePriceDetailSet: 待续费实例价格列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancePriceDetailSet: Array
        # @param TotalPrice: 总计价格。
        # @type TotalPrice: :class:`Tencentcloud::Lighthouse.v20200324.models.TotalPrice`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Price, :DataDiskPriceSet, :InstancePriceDetailSet, :TotalPrice, :RequestId

        def initialize(price=nil, datadiskpriceset=nil, instancepricedetailset=nil, totalprice=nil, requestid=nil)
          @Price = price
          @DataDiskPriceSet = datadiskpriceset
          @InstancePriceDetailSet = instancepricedetailset
          @TotalPrice = totalprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Price'].nil?
            @Price = Price.new
            @Price.deserialize(params['Price'])
          end
          unless params['DataDiskPriceSet'].nil?
            @DataDiskPriceSet = []
            params['DataDiskPriceSet'].each do |i|
              datadiskprice_tmp = DataDiskPrice.new
              datadiskprice_tmp.deserialize(i)
              @DataDiskPriceSet << datadiskprice_tmp
            end
          end
          unless params['InstancePriceDetailSet'].nil?
            @InstancePriceDetailSet = []
            params['InstancePriceDetailSet'].each do |i|
              instancepricedetail_tmp = InstancePriceDetail.new
              instancepricedetail_tmp.deserialize(i)
              @InstancePriceDetailSet << instancepricedetail_tmp
            end
          end
          unless params['TotalPrice'].nil?
            @TotalPrice = TotalPrice.new
            @TotalPrice.deserialize(params['TotalPrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述了实例信息。
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param BundleId: 套餐 ID。
        # @type BundleId: String
        # @param BlueprintId: 镜像 ID。
        # @type BlueprintId: String
        # @param CPU: 实例的 CPU 核数，单位：核。
        # @type CPU: Integer
        # @param Memory: 实例内存容量，单位：GB 。
        # @type Memory: Integer
        # @param InstanceName: 实例名称。
        # @type InstanceName: String
        # @param InstanceChargeType: 实例计费模式。取值范围：
        # PREPAID：表示预付费，即包年包月。
        # @type InstanceChargeType: String
        # @param SystemDisk: 实例系统盘信息。
        # @type SystemDisk: :class:`Tencentcloud::Lighthouse.v20200324.models.SystemDisk`
        # @param PrivateAddresses: 实例主网卡的内网 IP。
        # 注意：此字段可能返回 空，表示取不到有效值。
        # @type PrivateAddresses: Array
        # @param PublicAddresses: 实例主网卡的公网 IP。
        # 注意：此字段可能返回 空，表示取不到有效值。
        # @type PublicAddresses: Array
        # @param InternetAccessible: 实例带宽信息。
        # @type InternetAccessible: :class:`Tencentcloud::Lighthouse.v20200324.models.InternetAccessible`
        # @param RenewFlag: 自动续费标识。取值范围：
        # NOTIFY_AND_MANUAL_RENEW：表示通知即将过期，但不自动续费
        # NOTIFY_AND_AUTO_RENEW：表示通知即将过期，而且自动续费 DISABLE_NOTIFY_AND_MANUAL_RENEW：不自动续费，且不通知。
        # @type RenewFlag: String
        # @param LoginSettings: 实例登录设置。
        # @type LoginSettings: :class:`Tencentcloud::Lighthouse.v20200324.models.LoginSettings`
        # @param InstanceState: 实例状态。取值范围：
        # <li>PENDING：表示创建中</li><li>LAUNCH_FAILED：表示创建失败</li><li>RUNNING：表示运行中</li><li>STOPPED：表示关机</li><li>STARTING：表示开机中</li><li>STOPPING：表示关机中</li><li>REBOOTING：表示重启中</li><li>SHUTDOWN：表示停止待销毁</li><li>TERMINATING：表示销毁中</li><li>DELETING：表示删除中</li><li>FREEZING：表示冻结中</li><li>ENTER_RESCUE_MODE：表示进入救援模式中</li><li>RESCUE_MODE：表示救援模式</li><li>EXIT_RESCUE_MODE：表示退出救援模式中</li>
        # @type InstanceState: String
        # @param Uuid: 实例全局唯一 ID。
        # @type Uuid: String
        # @param LatestOperation: 实例的最新操作。例：StopInstances、ResetInstance。注意：此字段可能返回 空值，表示取不到有效值。
        # @type LatestOperation: String
        # @param LatestOperationState: 实例的最新操作状态。取值范围：
        # SUCCESS：表示操作成功
        # OPERATING：表示操作执行中
        # FAILED：表示操作失败
        # 注意：此字段可能返回 空值，表示取不到有效值。
        # @type LatestOperationState: String
        # @param LatestOperationRequestId: 实例最新操作的唯一请求 ID。
        # 注意：此字段可能返回 空值，表示取不到有效值。
        # @type LatestOperationRequestId: String
        # @param LatestOperationStartedTime: 实例最新操作的开始时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationStartedTime: String
        # @param IsolatedTime: 隔离时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTime: String
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param ExpiredTime: 到期时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpiredTime: String
        # @param PlatformType: 操作系统平台类型，如 LINUX_UNIX、WINDOWS。
        # @type PlatformType: String
        # @param Platform: 操作系统平台。
        # @type Platform: String
        # @param OsName: 操作系统名称。
        # @type OsName: String
        # @param Zone: 可用区。
        # @type Zone: String
        # @param Tags: 实例绑定的标签列表。
        # @type Tags: Array
        # @param InstanceRestrictState: 实例封禁状态。取值范围：
        # <li>NORMAL实例正常。</li><li>NETWORK_RESTRICT：网络封禁。</li>
        # @type InstanceRestrictState: String
        # @param InitInvocationId: 创建实例后自动执行TAT命令的调用ID。
        # @type InitInvocationId: String
        # @param InstanceViolationDetail: 实例违规详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceViolationDetail: :class:`Tencentcloud::Lighthouse.v20200324.models.InstanceViolationDetail`

        attr_accessor :InstanceId, :BundleId, :BlueprintId, :CPU, :Memory, :InstanceName, :InstanceChargeType, :SystemDisk, :PrivateAddresses, :PublicAddresses, :InternetAccessible, :RenewFlag, :LoginSettings, :InstanceState, :Uuid, :LatestOperation, :LatestOperationState, :LatestOperationRequestId, :LatestOperationStartedTime, :IsolatedTime, :CreatedTime, :ExpiredTime, :PlatformType, :Platform, :OsName, :Zone, :Tags, :InstanceRestrictState, :InitInvocationId, :InstanceViolationDetail

        def initialize(instanceid=nil, bundleid=nil, blueprintid=nil, cpu=nil, memory=nil, instancename=nil, instancechargetype=nil, systemdisk=nil, privateaddresses=nil, publicaddresses=nil, internetaccessible=nil, renewflag=nil, loginsettings=nil, instancestate=nil, uuid=nil, latestoperation=nil, latestoperationstate=nil, latestoperationrequestid=nil, latestoperationstartedtime=nil, isolatedtime=nil, createdtime=nil, expiredtime=nil, platformtype=nil, platform=nil, osname=nil, zone=nil, tags=nil, instancerestrictstate=nil, initinvocationid=nil, instanceviolationdetail=nil)
          @InstanceId = instanceid
          @BundleId = bundleid
          @BlueprintId = blueprintid
          @CPU = cpu
          @Memory = memory
          @InstanceName = instancename
          @InstanceChargeType = instancechargetype
          @SystemDisk = systemdisk
          @PrivateAddresses = privateaddresses
          @PublicAddresses = publicaddresses
          @InternetAccessible = internetaccessible
          @RenewFlag = renewflag
          @LoginSettings = loginsettings
          @InstanceState = instancestate
          @Uuid = uuid
          @LatestOperation = latestoperation
          @LatestOperationState = latestoperationstate
          @LatestOperationRequestId = latestoperationrequestid
          @LatestOperationStartedTime = latestoperationstartedtime
          @IsolatedTime = isolatedtime
          @CreatedTime = createdtime
          @ExpiredTime = expiredtime
          @PlatformType = platformtype
          @Platform = platform
          @OsName = osname
          @Zone = zone
          @Tags = tags
          @InstanceRestrictState = instancerestrictstate
          @InitInvocationId = initinvocationid
          @InstanceViolationDetail = instanceviolationdetail
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BundleId = params['BundleId']
          @BlueprintId = params['BlueprintId']
          @CPU = params['CPU']
          @Memory = params['Memory']
          @InstanceName = params['InstanceName']
          @InstanceChargeType = params['InstanceChargeType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @PrivateAddresses = params['PrivateAddresses']
          @PublicAddresses = params['PublicAddresses']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          @RenewFlag = params['RenewFlag']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new
            @LoginSettings.deserialize(params['LoginSettings'])
          end
          @InstanceState = params['InstanceState']
          @Uuid = params['Uuid']
          @LatestOperation = params['LatestOperation']
          @LatestOperationState = params['LatestOperationState']
          @LatestOperationRequestId = params['LatestOperationRequestId']
          @LatestOperationStartedTime = params['LatestOperationStartedTime']
          @IsolatedTime = params['IsolatedTime']
          @CreatedTime = params['CreatedTime']
          @ExpiredTime = params['ExpiredTime']
          @PlatformType = params['PlatformType']
          @Platform = params['Platform']
          @OsName = params['OsName']
          @Zone = params['Zone']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceRestrictState = params['InstanceRestrictState']
          @InitInvocationId = params['InitInvocationId']
          unless params['InstanceViolationDetail'].nil?
            @InstanceViolationDetail = InstanceViolationDetail.new
            @InstanceViolationDetail.deserialize(params['InstanceViolationDetail'])
          end
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36, 48, 60。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费</li><br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费，用户需要手动续费</li><br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不自动续费，且不通知</li><br><br>默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
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

      # 实例操作限制列表。
      class InstanceDeniedActions < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param DeniedActions: 操作限制列表。
        # @type DeniedActions: Array

        attr_accessor :InstanceId, :DeniedActions

        def initialize(instanceid=nil, deniedactions=nil)
          @InstanceId = instanceid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
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

      # 实例标识信息。
      class InstanceIdentifier < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Region: 实例地域。
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

      # 关于Lighthouse Instance实例的价格信息
      class InstancePrice < TencentCloud::Common::AbstractModel
        # @param OriginalBundlePrice: 套餐单价原价。
        # @type OriginalBundlePrice: Float
        # @param OriginalPrice: 原价。
        # @type OriginalPrice: Float
        # @param Discount: 折扣。
        # @type Discount: Float
        # @param DiscountPrice: 折后价。
        # @type DiscountPrice: Float
        # @param Currency: 价格货币单位。取值范围CNY:人民币。USD:美元。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Currency: String

        attr_accessor :OriginalBundlePrice, :OriginalPrice, :Discount, :DiscountPrice, :Currency

        def initialize(originalbundleprice=nil, originalprice=nil, discount=nil, discountprice=nil, currency=nil)
          @OriginalBundlePrice = originalbundleprice
          @OriginalPrice = originalprice
          @Discount = discount
          @DiscountPrice = discountprice
          @Currency = currency
        end

        def deserialize(params)
          @OriginalBundlePrice = params['OriginalBundlePrice']
          @OriginalPrice = params['OriginalPrice']
          @Discount = params['Discount']
          @DiscountPrice = params['DiscountPrice']
          @Currency = params['Currency']
        end
      end

      # 实例价格详细信息
      class InstancePriceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstancePrice: 询价信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstancePrice: :class:`Tencentcloud::Lighthouse.v20200324.models.InstancePrice`
        # @param DiscountDetail: 折扣梯度详情，每个梯度包含的信息有：时长，折扣数，总价，折扣价，折扣详情（用户折扣、官网折扣、最终折扣）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountDetail: Array

        attr_accessor :InstanceId, :InstancePrice, :DiscountDetail

        def initialize(instanceid=nil, instanceprice=nil, discountdetail=nil)
          @InstanceId = instanceid
          @InstancePrice = instanceprice
          @DiscountDetail = discountdetail
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['InstancePrice'].nil?
            @InstancePrice = InstancePrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          unless params['DiscountDetail'].nil?
            @DiscountDetail = []
            params['DiscountDetail'].each do |i|
              discountdetail_tmp = DiscountDetail.new
              discountdetail_tmp.deserialize(i)
              @DiscountDetail << discountdetail_tmp
            end
          end
        end
      end

      # 实例可退还信息。
      class InstanceReturnable < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param IsReturnable: 实例是否可退还。
        # @type IsReturnable: Boolean
        # @param ReturnFailCode: 实例退还失败错误码。
        # @type ReturnFailCode: Integer
        # @param ReturnFailMessage: 实例退还失败错误信息。
        # @type ReturnFailMessage: String

        attr_accessor :InstanceId, :IsReturnable, :ReturnFailCode, :ReturnFailMessage

        def initialize(instanceid=nil, isreturnable=nil, returnfailcode=nil, returnfailmessage=nil)
          @InstanceId = instanceid
          @IsReturnable = isreturnable
          @ReturnFailCode = returnfailcode
          @ReturnFailMessage = returnfailmessage
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @IsReturnable = params['IsReturnable']
          @ReturnFailCode = params['ReturnFailCode']
          @ReturnFailMessage = params['ReturnFailMessage']
        end
      end

      # 实例流量包详情
      class InstanceTrafficPackage < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param TrafficPackageSet: 流量包详情列表。
        # @type TrafficPackageSet: Array

        attr_accessor :InstanceId, :TrafficPackageSet

        def initialize(instanceid=nil, trafficpackageset=nil)
          @InstanceId = instanceid
          @TrafficPackageSet = trafficpackageset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['TrafficPackageSet'].nil?
            @TrafficPackageSet = []
            params['TrafficPackageSet'].each do |i|
              trafficpackage_tmp = TrafficPackage.new
              trafficpackage_tmp.deserialize(i)
              @TrafficPackageSet << trafficpackage_tmp
            end
          end
        end
      end

      # 实例违规详情。
      class InstanceViolationDetail < TencentCloud::Common::AbstractModel
        # @param Source:  来源：RESTRICT：封禁、FREEZW：冻结
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param State: 是否允许自助解封：1是，2否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String
        # @param Reason: 违规类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param Content: 违规内容（URL、关联域名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :Source, :State, :Reason, :Content

        def initialize(source=nil, state=nil, reason=nil, content=nil)
          @Source = source
          @State = state
          @Reason = reason
          @Content = content
        end

        def deserialize(params)
          @Source = params['Source']
          @State = params['State']
          @Reason = params['Reason']
          @Content = params['Content']
        end
      end

      # 描述了启动配置创建实例的公网可访问性，声明了实例的公网使用计费模式，最大带宽等。
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费类型，取值范围：
        # <li>按流量包付费：TRAFFIC_POSTPAID_BY_HOUR</li>
        # <li>按带宽付费： BANDWIDTH_POSTPAID_BY_HOUR</li>
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。
        # @type InternetMaxBandwidthOut: Integer
        # @param PublicIpAssigned: 是否分配公网 IP。
        # @type PublicIpAssigned: Boolean

        attr_accessor :InternetChargeType, :InternetMaxBandwidthOut, :PublicIpAssigned

        def initialize(internetchargetype=nil, internetmaxbandwidthout=nil, publicipassigned=nil)
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @PublicIpAssigned = publicipassigned
        end

        def deserialize(params)
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @PublicIpAssigned = params['PublicIpAssigned']
        end
      end

      # IsolateDisks请求参数结构体
      class IsolateDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。一个或多个待操作的云硬盘ID。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。每次请求退还数据盘数量总计上限为20。
        # @type DiskIds: Array

        attr_accessor :DiskIds

        def initialize(diskids=nil)
          @DiskIds = diskids
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
        end
      end

      # IsolateDisks返回参数结构体
      class IsolateDisksResponse < TencentCloud::Common::AbstractModel
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

      # IsolateInstances请求参数结构体
      class IsolateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表。一个或多个待操作的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。每次请求退还实例和数据盘数量总计上限为20。
        # @type InstanceIds: Array
        # @param IsolateDataDisk: 是否退还挂载的数据盘。取值范围：
        # TRUE：表示退还实例同时退还其挂载的数据盘。
        # FALSE：表示退还实例同时不再退还其挂载的数据盘。
        # 默认取值：TRUE。
        # @type IsolateDataDisk: Boolean

        attr_accessor :InstanceIds, :IsolateDataDisk

        def initialize(instanceids=nil, isolatedatadisk=nil)
          @InstanceIds = instanceids
          @IsolateDataDisk = isolatedatadisk
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @IsolateDataDisk = params['IsolateDataDisk']
        end
      end

      # IsolateInstances返回参数结构体
      class IsolateInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 描述密钥对信息。
      class KeyPair < TencentCloud::Common::AbstractModel
        # @param KeyId: 密钥对 ID ，是密钥对的唯一标识。
        # @type KeyId: String
        # @param KeyName: 密钥对名称。
        # @type KeyName: String
        # @param PublicKey: 密钥对的纯文本公钥。
        # @type PublicKey: String
        # @param AssociatedInstanceIds: 密钥对关联的实例 ID 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedInstanceIds: Array
        # @param CreatedTime: 创建时间。按照 ISO8601 标准表示，并且使用 UTC 时间。格式为：YYYY-MM-DDThh:mm:ssZ
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String
        # @param PrivateKey: 密钥对私钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateKey: String

        attr_accessor :KeyId, :KeyName, :PublicKey, :AssociatedInstanceIds, :CreatedTime, :PrivateKey

        def initialize(keyid=nil, keyname=nil, publickey=nil, associatedinstanceids=nil, createdtime=nil, privatekey=nil)
          @KeyId = keyid
          @KeyName = keyname
          @PublicKey = publickey
          @AssociatedInstanceIds = associatedinstanceids
          @CreatedTime = createdtime
          @PrivateKey = privatekey
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeyName = params['KeyName']
          @PublicKey = params['PublicKey']
          @AssociatedInstanceIds = params['AssociatedInstanceIds']
          @CreatedTime = params['CreatedTime']
          @PrivateKey = params['PrivateKey']
        end
      end

      # 实例密码登录配置信息。
      class LoginConfiguration < TencentCloud::Common::AbstractModel
        # @param AutoGeneratePassword: <li>"YES"代表选择自动生成密码，这时不指定Password字段。</li>
        # <li>"NO"代表选择自定义密码，这时要指定Password字段。</li>
        # @type AutoGeneratePassword: String
        # @param Password: 实例登录密码。具体按照操作系统的复杂度要求。

        # `LINUX_UNIX` 实例密码必须 8-30 位，推荐使用 12 位以上密码，不能包含空格，不能以“/”开头，至少包含以下字符中的三种不同字符，字符种类：<br>
        # <li>小写字母：[a-z]</li>
        # <li>大写字母：[A-Z]</li>
        # <li>数字：0-9</li>
        # <li>特殊字符： ()\`\~!@#$%^&\*-+=\_|{}[]:;' <>,.?/</li>

        # `WINDOWS` 实例密码必须 12-30 位，不能包含空格，不能以“/”开头且不包括用户名，至少包含以下字符中的三种不同字符：<br>
        # <li>小写字母：[a-z]</li>
        # <li>大写字母：[A-Z]</li>
        # <li>数字：0-9</li>
        # <li>特殊字符：()\`~!@#$%^&\*-+=\_|{}[]:;' <>,.?/</li>
        # @type Password: String
        # @param KeyIds: 密钥ID列表，最多同时指定5个密钥。关联密钥后，就可以通过对应的私钥来访问实例。密钥与密码不能同时指定，同时WINDOWS操作系统不支持指定密钥。密钥ID列表可以通过[DescribeKeyPairs](https://cloud.tencent.com/document/product/1207/55540)接口获取。
        # @type KeyIds: Array

        attr_accessor :AutoGeneratePassword, :Password, :KeyIds

        def initialize(autogeneratepassword=nil, password=nil, keyids=nil)
          @AutoGeneratePassword = autogeneratepassword
          @Password = password
          @KeyIds = keyids
        end

        def deserialize(params)
          @AutoGeneratePassword = params['AutoGeneratePassword']
          @Password = params['Password']
          @KeyIds = params['KeyIds']
        end
      end

      # 描述了实例登录相关配置与信息。
      class LoginSettings < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥 ID 列表。关联密钥后，就可以通过对应的私钥来访问实例。注意：此字段可能返回 []，表示取不到有效值。
        # @type KeyIds: Array

        attr_accessor :KeyIds

        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # ModifyBlueprintAttribute请求参数结构体
      class ModifyBlueprintAttributeRequest < TencentCloud::Common::AbstractModel
        # @param BlueprintId: 镜像 ID。可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        # @type BlueprintId: String
        # @param BlueprintName: 设置新的镜像名称。最大长度60。
        # @type BlueprintName: String
        # @param Description: 设置新的镜像描述。最大长度60。
        # @type Description: String

        attr_accessor :BlueprintId, :BlueprintName, :Description

        def initialize(blueprintid=nil, blueprintname=nil, description=nil)
          @BlueprintId = blueprintid
          @BlueprintName = blueprintname
          @Description = description
        end

        def deserialize(params)
          @BlueprintId = params['BlueprintId']
          @BlueprintName = params['BlueprintName']
          @Description = params['Description']
        end
      end

      # ModifyBlueprintAttribute返回参数结构体
      class ModifyBlueprintAttributeResponse < TencentCloud::Common::AbstractModel
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

      # 描述了实例可变更的套餐。
      class ModifyBundle < TencentCloud::Common::AbstractModel
        # @param ModifyPrice: 更改实例套餐后需要补的差价。
        # @type ModifyPrice: :class:`Tencentcloud::Lighthouse.v20200324.models.Price`
        # @param ModifyBundleState: 变更套餐状态。取值：
        # <li>SOLD_OUT：套餐售罄</li>
        # <li>AVAILABLE：支持套餐变更</li>
        # <li>UNAVAILABLE：暂不支持套餐变更</li>
        # @type ModifyBundleState: String
        # @param Bundle: 套餐信息。
        # @type Bundle: :class:`Tencentcloud::Lighthouse.v20200324.models.Bundle`
        # @param NotSupportModifyMessage: 不支持套餐变更原因信息。变更套餐状态为"AVAILABLE"时, 该信息为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NotSupportModifyMessage: String

        attr_accessor :ModifyPrice, :ModifyBundleState, :Bundle, :NotSupportModifyMessage

        def initialize(modifyprice=nil, modifybundlestate=nil, bundle=nil, notsupportmodifymessage=nil)
          @ModifyPrice = modifyprice
          @ModifyBundleState = modifybundlestate
          @Bundle = bundle
          @NotSupportModifyMessage = notsupportmodifymessage
        end

        def deserialize(params)
          unless params['ModifyPrice'].nil?
            @ModifyPrice = Price.new
            @ModifyPrice.deserialize(params['ModifyPrice'])
          end
          @ModifyBundleState = params['ModifyBundleState']
          unless params['Bundle'].nil?
            @Bundle = Bundle.new
            @Bundle.deserialize(params['Bundle'])
          end
          @NotSupportModifyMessage = params['NotSupportModifyMessage']
        end
      end

      # ModifyDiskBackupsAttribute请求参数结构体
      class ModifyDiskBackupsAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DiskBackupIds: 云硬盘备份点ID，可通过 [DescribeDiskBackups](https://cloud.tencent.com/document/api/1207/84379) 接口返回值中的 DiskBackupId 获取。
        # @type DiskBackupIds: Array
        # @param DiskBackupName: 云硬盘备份点名称，最大长度 90 。
        # @type DiskBackupName: String

        attr_accessor :DiskBackupIds, :DiskBackupName

        def initialize(diskbackupids=nil, diskbackupname=nil)
          @DiskBackupIds = diskbackupids
          @DiskBackupName = diskbackupname
        end

        def deserialize(params)
          @DiskBackupIds = params['DiskBackupIds']
          @DiskBackupName = params['DiskBackupName']
        end
      end

      # ModifyDiskBackupsAttribute返回参数结构体
      class ModifyDiskBackupsAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDisksAttribute请求参数结构体
      class ModifyDisksAttributeRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。每次批量请求云硬盘的上限为 100。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。
        # @type DiskIds: Array
        # @param DiskName: 云硬盘名称。
        # @type DiskName: String

        attr_accessor :DiskIds, :DiskName

        def initialize(diskids=nil, diskname=nil)
          @DiskIds = diskids
          @DiskName = diskname
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @DiskName = params['DiskName']
        end
      end

      # ModifyDisksAttribute返回参数结构体
      class ModifyDisksAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDisksBackupQuota请求参数结构体
      class ModifyDisksBackupQuotaRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表，可通过[DescribeDisks](https://cloud.tencent.com/document/api/1207/66093)接口查询。列表最大长度为15。
        # @type DiskIds: Array
        # @param DiskBackupQuota: 云硬盘备份点配额。取值范围: [0, 500]。调整后的配额必须不小于已存在的备份点数量。
        # @type DiskBackupQuota: Integer

        attr_accessor :DiskIds, :DiskBackupQuota

        def initialize(diskids=nil, diskbackupquota=nil)
          @DiskIds = diskids
          @DiskBackupQuota = diskbackupquota
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @DiskBackupQuota = params['DiskBackupQuota']
        end
      end

      # ModifyDisksBackupQuota返回参数结构体
      class ModifyDisksBackupQuotaResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDisksRenewFlag请求参数结构体
      class ModifyDisksRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。每次批量请求云硬盘的上限为 100。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。
        # @type DiskIds: Array
        # @param RenewFlag: 自动续费标识。取值范围：

        # - NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        # - NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        # - DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费

        # 若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
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

      # ModifyDockerContainer请求参数结构体
      class ModifyDockerContainerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ContainerId: 容器ID。可通过[DescribeDockerContainers](https://cloud.tencent.com/document/product/1207/95473)接口返回值中的ContainerId获取。
        # @type ContainerId: String
        # @param Envs: 环境变量列表
        # @type Envs: Array
        # @param PublishPorts: 容器端口主机端口映射列表
        # @type PublishPorts: Array
        # @param Volumes: 容器加载本地卷列表
        # @type Volumes: Array
        # @param Command: 运行的命令
        # @type Command: String
        # @param RestartPolicy: 容器重启策略，对应docker "--restart"参数。

        # 枚举值:
        # no: 不自动重启。默认策略。
        # on-failure[:max-retries]: 当容器退出码非0时重启容器。使用max-retries限制重启次数，比如on-failure:10，限制最多重启10次。
        # always: 只要容器退出就重启。
        # unless-stopped: 始终重新启动容器，包括在守护进程启动时，除非容器在 Docker 守护进程停止之前进入停止状态。
        # @type RestartPolicy: String

        attr_accessor :InstanceId, :ContainerId, :Envs, :PublishPorts, :Volumes, :Command, :RestartPolicy

        def initialize(instanceid=nil, containerid=nil, envs=nil, publishports=nil, volumes=nil, command=nil, restartpolicy=nil)
          @InstanceId = instanceid
          @ContainerId = containerid
          @Envs = envs
          @PublishPorts = publishports
          @Volumes = volumes
          @Command = command
          @RestartPolicy = restartpolicy
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ContainerId = params['ContainerId']
          unless params['Envs'].nil?
            @Envs = []
            params['Envs'].each do |i|
              containerenv_tmp = ContainerEnv.new
              containerenv_tmp.deserialize(i)
              @Envs << containerenv_tmp
            end
          end
          unless params['PublishPorts'].nil?
            @PublishPorts = []
            params['PublishPorts'].each do |i|
              dockercontainerpublishport_tmp = DockerContainerPublishPort.new
              dockercontainerpublishport_tmp.deserialize(i)
              @PublishPorts << dockercontainerpublishport_tmp
            end
          end
          unless params['Volumes'].nil?
            @Volumes = []
            params['Volumes'].each do |i|
              dockercontainervolume_tmp = DockerContainerVolume.new
              dockercontainervolume_tmp.deserialize(i)
              @Volumes << dockercontainervolume_tmp
            end
          end
          @Command = params['Command']
          @RestartPolicy = params['RestartPolicy']
        end
      end

      # ModifyDockerContainer返回参数结构体
      class ModifyDockerContainerResponse < TencentCloud::Common::AbstractModel
        # @param DockerActivityId: Docker活动ID。
        # @type DockerActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DockerActivityId, :RequestId

        def initialize(dockeractivityid=nil, requestid=nil)
          @DockerActivityId = dockeractivityid
          @RequestId = requestid
        end

        def deserialize(params)
          @DockerActivityId = params['DockerActivityId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyFirewallRuleDescription请求参数结构体
      class ModifyFirewallRuleDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过 [DescribeInstances](https://cloud.tencent.com/document/api/1207/47573) 接口返回值中的 InstanceId 获取。
        # @type InstanceId: String
        # @param FirewallRule: 防火墙规则。
        # @type FirewallRule: :class:`Tencentcloud::Lighthouse.v20200324.models.FirewallRule`
        # @param FirewallVersion: 防火墙当前版本。用户每次更新防火墙规则时版本会自动加1，防止规则已过期，不填不考虑冲突。
        # @type FirewallVersion: Integer

        attr_accessor :InstanceId, :FirewallRule, :FirewallVersion

        def initialize(instanceid=nil, firewallrule=nil, firewallversion=nil)
          @InstanceId = instanceid
          @FirewallRule = firewallrule
          @FirewallVersion = firewallversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['FirewallRule'].nil?
            @FirewallRule = FirewallRule.new
            @FirewallRule.deserialize(params['FirewallRule'])
          end
          @FirewallVersion = params['FirewallVersion']
        end
      end

      # ModifyFirewallRuleDescription返回参数结构体
      class ModifyFirewallRuleDescriptionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFirewallRules请求参数结构体
      class ModifyFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。实例的ID可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param FirewallRules: 防火墙规则列表。列表长度最大值是100。
        # @type FirewallRules: Array
        # @param FirewallVersion: 防火墙当前版本。用户每次更新防火墙规则时版本会自动加1，防止规则已过期，不填不考虑冲突。
        # @type FirewallVersion: Integer

        attr_accessor :InstanceId, :FirewallRules, :FirewallVersion

        def initialize(instanceid=nil, firewallrules=nil, firewallversion=nil)
          @InstanceId = instanceid
          @FirewallRules = firewallrules
          @FirewallVersion = firewallversion
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['FirewallRules'].nil?
            @FirewallRules = []
            params['FirewallRules'].each do |i|
              firewallrule_tmp = FirewallRule.new
              firewallrule_tmp.deserialize(i)
              @FirewallRules << firewallrule_tmp
            end
          end
          @FirewallVersion = params['FirewallVersion']
        end
      end

      # ModifyFirewallRules返回参数结构体
      class ModifyFirewallRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFirewallTemplate请求参数结构体
      class ModifyFirewallTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。可通过[DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874)接口返回值字段TemplateSet获取。
        # @type TemplateId: String
        # @param TemplateName: 防火墙模板名称。可通过[DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874)接口返回值字段TemplateSet获取。
        # @type TemplateName: String

        attr_accessor :TemplateId, :TemplateName

        def initialize(templateid=nil, templatename=nil)
          @TemplateId = templateid
          @TemplateName = templatename
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
        end
      end

      # ModifyFirewallTemplate返回参数结构体
      class ModifyFirewallTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesAttribute请求参数结构体
      class ModifyInstancesAttributeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array
        # @param InstanceName: 实例名称。可任意命名，但不得超过 60 个字符。
        # @type InstanceName: String

        attr_accessor :InstanceIds, :InstanceName

        def initialize(instanceids=nil, instancename=nil)
          @InstanceIds = instanceids
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyInstancesAttribute返回参数结构体
      class ModifyInstancesAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesBundle请求参数结构体
      class ModifyInstancesBundleRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表。一个或多个待操作的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。每次请求批量实例的上限为15。
        # @type InstanceIds: Array
        # @param BundleId: 待变更的套餐Id。可通过[DescribeBundles](https://cloud.tencent.com/document/api/1207/47575)接口返回值中的BundleId获取。
        # @type BundleId: String
        # @param AutoVoucher: 是否自动抵扣代金券。取值范围：
        # true：表示自动抵扣代金券
        # false：表示不自动抵扣代金券
        # 默认取值：false。
        # @type AutoVoucher: Boolean

        attr_accessor :InstanceIds, :BundleId, :AutoVoucher

        def initialize(instanceids=nil, bundleid=nil, autovoucher=nil)
          @InstanceIds = instanceids
          @BundleId = bundleid
          @AutoVoucher = autovoucher
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @BundleId = params['BundleId']
          @AutoVoucher = params['AutoVoucher']
        end
      end

      # ModifyInstancesBundle返回参数结构体
      class ModifyInstancesBundleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesLoginKeyPairAttribute请求参数结构体
      class ModifyInstancesLoginKeyPairAttributeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。
        # @type InstanceIds: Array
        # @param PermitLogin: 是否允许使用默认密钥对登录，YES：允许登录；NO：禁止登录
        # @type PermitLogin: String

        attr_accessor :InstanceIds, :PermitLogin

        def initialize(instanceids=nil, permitlogin=nil)
          @InstanceIds = instanceids
          @PermitLogin = permitlogin
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @PermitLogin = params['PermitLogin']
        end
      end

      # ModifyInstancesLoginKeyPairAttribute返回参数结构体
      class ModifyInstancesLoginKeyPairAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesRenewFlag请求参数结构体
      class ModifyInstancesRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array
        # @param RenewFlag: 自动续费标识。取值范围：

        # - NOTIFY_AND_AUTO_RENEW：通知过期且自动续费
        # - NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费
        # - DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费

        # 若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
        # @type RenewFlag: String

        attr_accessor :InstanceIds, :RenewFlag

        def initialize(instanceids=nil, renewflag=nil)
          @InstanceIds = instanceids
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @RenewFlag = params['RenewFlag']
        end
      end

      # ModifyInstancesRenewFlag返回参数结构体
      class ModifyInstancesRenewFlagResponse < TencentCloud::Common::AbstractModel
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

      # ModifySnapshotAttribute请求参数结构体
      class ModifySnapshotAttributeRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照 ID, 可通过 <a href="https://cloud.tencent.com/document/product/1207/54388">DescribeSnapshots</a> 查询。
        # @type SnapshotId: String
        # @param SnapshotName: 新的快照名称，最长为 60 个字符。
        # @type SnapshotName: String

        attr_accessor :SnapshotId, :SnapshotName

        def initialize(snapshotid=nil, snapshotname=nil)
          @SnapshotId = snapshotid
          @SnapshotName = snapshotname
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @SnapshotName = params['SnapshotName']
        end
      end

      # ModifySnapshotAttribute返回参数结构体
      class ModifySnapshotAttributeResponse < TencentCloud::Common::AbstractModel
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

      # 折扣详情信息。
      class PolicyDetail < TencentCloud::Common::AbstractModel
        # @param UserDiscount: 用户折扣。
        # @type UserDiscount: Float
        # @param CommonDiscount: 公共折扣。
        # @type CommonDiscount: Float
        # @param FinalDiscount: 最终折扣。
        # @type FinalDiscount: Float
        # @param ActivityDiscount: 活动折扣。取值为null，表示无有效值，即没有折扣。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActivityDiscount: Float
        # @param DiscountType: 折扣类型。
        # user：用户折扣; common：官网折扣; activity：活动折扣。 取值为null，表示无有效值，即没有折扣。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountType: String

        attr_accessor :UserDiscount, :CommonDiscount, :FinalDiscount, :ActivityDiscount, :DiscountType

        def initialize(userdiscount=nil, commondiscount=nil, finaldiscount=nil, activitydiscount=nil, discounttype=nil)
          @UserDiscount = userdiscount
          @CommonDiscount = commondiscount
          @FinalDiscount = finaldiscount
          @ActivityDiscount = activitydiscount
          @DiscountType = discounttype
        end

        def deserialize(params)
          @UserDiscount = params['UserDiscount']
          @CommonDiscount = params['CommonDiscount']
          @FinalDiscount = params['FinalDiscount']
          @ActivityDiscount = params['ActivityDiscount']
          @DiscountType = params['DiscountType']
        end
      end

      # 价格信息
      class Price < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 实例价格。
        # @type InstancePrice: :class:`Tencentcloud::Lighthouse.v20200324.models.InstancePrice`

        attr_accessor :InstancePrice

        def initialize(instanceprice=nil)
          @InstancePrice = instanceprice
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = InstancePrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
        end
      end

      # RebootInstances请求参数结构体
      class RebootInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # RebootInstances返回参数结构体
      class RebootInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 描述地域信息。
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域名称，例如，ap-guangzhou。
        # @type Region: String
        # @param RegionName: 地域描述，例如，华南地区(广州)。
        # @type RegionName: String
        # @param RegionState: 地域是否可用状态，取值仅为AVAILABLE。
        # @type RegionState: String
        # @param IsChinaMainland: 是否中国大陆地域
        # @type IsChinaMainland: Boolean

        attr_accessor :Region, :RegionName, :RegionState, :IsChinaMainland

        def initialize(region=nil, regionname=nil, regionstate=nil, ischinamainland=nil)
          @Region = region
          @RegionName = regionname
          @RegionState = regionstate
          @IsChinaMainland = ischinamainland
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionState = params['RegionState']
          @IsChinaMainland = params['IsChinaMainland']
        end
      end

      # RemoveDockerContainers请求参数结构体
      class RemoveDockerContainersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ContainerIds: 容器ID列表。可通过[DescribeDockerContainers](https://cloud.tencent.com/document/product/1207/95473)接口返回值中的ContainerId获取。
        # @type ContainerIds: Array

        attr_accessor :InstanceId, :ContainerIds

        def initialize(instanceid=nil, containerids=nil)
          @InstanceId = instanceid
          @ContainerIds = containerids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ContainerIds = params['ContainerIds']
        end
      end

      # RemoveDockerContainers返回参数结构体
      class RemoveDockerContainersResponse < TencentCloud::Common::AbstractModel
        # @param DockerActivityId: Docker活动ID。
        # @type DockerActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DockerActivityId, :RequestId

        def initialize(dockeractivityid=nil, requestid=nil)
          @DockerActivityId = dockeractivityid
          @RequestId = requestid
        end

        def deserialize(params)
          @DockerActivityId = params['DockerActivityId']
          @RequestId = params['RequestId']
        end
      end

      # RenameDockerContainer请求参数结构体
      class RenameDockerContainerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ContainerId: 容器ID。可通过[DescribeDockerContainers](https://cloud.tencent.com/document/product/1207/95473)接口返回值中的ContainerId获取。
        # @type ContainerId: String
        # @param ContainerName: 容器新的名称。
        # @type ContainerName: String

        attr_accessor :InstanceId, :ContainerId, :ContainerName

        def initialize(instanceid=nil, containerid=nil, containername=nil)
          @InstanceId = instanceid
          @ContainerId = containerid
          @ContainerName = containername
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ContainerId = params['ContainerId']
          @ContainerName = params['ContainerName']
        end
      end

      # RenameDockerContainer返回参数结构体
      class RenameDockerContainerResponse < TencentCloud::Common::AbstractModel
        # @param DockerActivityId: Docker活动ID。
        # @type DockerActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DockerActivityId, :RequestId

        def initialize(dockeractivityid=nil, requestid=nil)
          @DockerActivityId = dockeractivityid
          @RequestId = requestid
        end

        def deserialize(params)
          @DockerActivityId = params['DockerActivityId']
          @RequestId = params['RequestId']
        end
      end

      # 续费云硬盘包年包月相关参数设置
      class RenewDiskChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 续费周期。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费<br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费，用户需要手动续费<br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不自动续费，且不通知<br><br>默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，云硬盘到期后将按月自动续费。
        # @type RenewFlag: String
        # @param TimeUnit: 周期单位。取值范围：“m”(月)。默认值: "m"。
        # @type TimeUnit: String
        # @param CurInstanceDeadline: 当前实例到期时间。如“2018-01-01 00:00:00”。指定该参数即可对齐云硬盘所挂载的实例到期时间。该参数与Period必须指定其一，且不支持同时指定。
        # @type CurInstanceDeadline: String

        attr_accessor :Period, :RenewFlag, :TimeUnit, :CurInstanceDeadline

        def initialize(period=nil, renewflag=nil, timeunit=nil, curinstancedeadline=nil)
          @Period = period
          @RenewFlag = renewflag
          @TimeUnit = timeunit
          @CurInstanceDeadline = curinstancedeadline
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
          @TimeUnit = params['TimeUnit']
          @CurInstanceDeadline = params['CurInstanceDeadline']
        end
      end

      # RenewDisks请求参数结构体
      class RenewDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。一个或多个待操作的云硬盘ID。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。每次请求续费数据盘数量总计上限为50。
        # @type DiskIds: Array
        # @param RenewDiskChargePrepaid: 续费云硬盘包年包月相关参数设置。
        # @type RenewDiskChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.RenewDiskChargePrepaid`
        # @param AutoVoucher: 是否自动使用代金券。默认不使用。
        # @type AutoVoucher: Boolean

        attr_accessor :DiskIds, :RenewDiskChargePrepaid, :AutoVoucher

        def initialize(diskids=nil, renewdiskchargeprepaid=nil, autovoucher=nil)
          @DiskIds = diskids
          @RenewDiskChargePrepaid = renewdiskchargeprepaid
          @AutoVoucher = autovoucher
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          unless params['RenewDiskChargePrepaid'].nil?
            @RenewDiskChargePrepaid = RenewDiskChargePrepaid.new
            @RenewDiskChargePrepaid.deserialize(params['RenewDiskChargePrepaid'])
          end
          @AutoVoucher = params['AutoVoucher']
        end
      end

      # RenewDisks返回参数结构体
      class RenewDisksResponse < TencentCloud::Common::AbstractModel
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

      # RenewInstances请求参数结构体
      class RenewInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表。一个或多个待操作的实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。每次请求批量实例的上限为100。
        # @type InstanceIds: Array
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.InstanceChargePrepaid`
        # @param RenewDataDisk: 是否续费弹性数据盘。取值范围：
        # TRUE：表示续费实例同时续费其挂载的数据盘
        # FALSE：表示续费实例同时不再续费其挂载的数据盘
        # 默认取值：TRUE。
        # @type RenewDataDisk: Boolean
        # @param AutoVoucher: 是否自动抵扣代金券。取值范围：
        # TRUE：表示自动抵扣代金券
        # FALSE：表示不自动抵扣代金券
        # 默认取值：FALSE。
        # @type AutoVoucher: Boolean

        attr_accessor :InstanceIds, :InstanceChargePrepaid, :RenewDataDisk, :AutoVoucher

        def initialize(instanceids=nil, instancechargeprepaid=nil, renewdatadisk=nil, autovoucher=nil)
          @InstanceIds = instanceids
          @InstanceChargePrepaid = instancechargeprepaid
          @RenewDataDisk = renewdatadisk
          @AutoVoucher = autovoucher
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @RenewDataDisk = params['RenewDataDisk']
          @AutoVoucher = params['AutoVoucher']
        end
      end

      # RenewInstances返回参数结构体
      class RenewInstancesResponse < TencentCloud::Common::AbstractModel
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

      # ReplaceFirewallTemplateRule请求参数结构体
      class ReplaceFirewallTemplateRuleRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。可通过 [DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874) 接口返回值中的 TemplateId 获取。
        # @type TemplateId: String
        # @param TemplateRuleId: 防火墙模板规则ID。可通过 [DescribeFirewallTemplateRules](https://cloud.tencent.com/document/product/1207/96875) 接口返回值中的 TemplateRuleId 获取。
        # @type TemplateRuleId: String
        # @param TemplateRule: 替换后的防火墙模板规则。
        # @type TemplateRule: :class:`Tencentcloud::Lighthouse.v20200324.models.FirewallRule`

        attr_accessor :TemplateId, :TemplateRuleId, :TemplateRule

        def initialize(templateid=nil, templateruleid=nil, templaterule=nil)
          @TemplateId = templateid
          @TemplateRuleId = templateruleid
          @TemplateRule = templaterule
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateRuleId = params['TemplateRuleId']
          unless params['TemplateRule'].nil?
            @TemplateRule = FirewallRule.new
            @TemplateRule.deserialize(params['TemplateRule'])
          end
        end
      end

      # ReplaceFirewallTemplateRule返回参数结构体
      class ReplaceFirewallTemplateRuleResponse < TencentCloud::Common::AbstractModel
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

      # RerunDockerContainer请求参数结构体
      class RerunDockerContainerRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ContainerConfiguration: 重新创建的容器配置。
        # @type ContainerConfiguration: :class:`Tencentcloud::Lighthouse.v20200324.models.DockerContainerConfiguration`
        # @param ContainerId: 容器ID。可通过[DescribeDockerContainers](https://cloud.tencent.com/document/product/1207/95473)接口返回值中的ContainerId获取。
        # @type ContainerId: String

        attr_accessor :InstanceId, :ContainerConfiguration, :ContainerId

        def initialize(instanceid=nil, containerconfiguration=nil, containerid=nil)
          @InstanceId = instanceid
          @ContainerConfiguration = containerconfiguration
          @ContainerId = containerid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['ContainerConfiguration'].nil?
            @ContainerConfiguration = DockerContainerConfiguration.new
            @ContainerConfiguration.deserialize(params['ContainerConfiguration'])
          end
          @ContainerId = params['ContainerId']
        end
      end

      # RerunDockerContainer返回参数结构体
      class RerunDockerContainerResponse < TencentCloud::Common::AbstractModel
        # @param DockerActivityId: Docker活动ID。
        # @type DockerActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DockerActivityId, :RequestId

        def initialize(dockeractivityid=nil, requestid=nil)
          @DockerActivityId = dockeractivityid
          @RequestId = requestid
        end

        def deserialize(params)
          @DockerActivityId = params['DockerActivityId']
          @RequestId = params['RequestId']
        end
      end

      # ResetAttachCcn请求参数结构体
      class ResetAttachCcnRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: 云联网实例ID。可通过[DescribeCcns](https://cloud.tencent.com/document/product/215/19199)接口返回值中的CcnId获取。
        # @type CcnId: String

        attr_accessor :CcnId

        def initialize(ccnid=nil)
          @CcnId = ccnid
        end

        def deserialize(params)
          @CcnId = params['CcnId']
        end
      end

      # ResetAttachCcn返回参数结构体
      class ResetAttachCcnResponse < TencentCloud::Common::AbstractModel
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

      # ResetFirewallTemplateRules请求参数结构体
      class ResetFirewallTemplateRulesRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 防火墙模板ID。可通过 [DescribeFirewallTemplates](https://cloud.tencent.com/document/product/1207/96874) 接口返回值中的 TemplateId	获取。
        # @type TemplateId: String
        # @param TemplateRules: 重置后的防火墙模板规则列表。每次请求批量防火墙规则的上限为 100。
        # @type TemplateRules: Array

        attr_accessor :TemplateId, :TemplateRules

        def initialize(templateid=nil, templaterules=nil)
          @TemplateId = templateid
          @TemplateRules = templaterules
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['TemplateRules'].nil?
            @TemplateRules = []
            params['TemplateRules'].each do |i|
              firewallrule_tmp = FirewallRule.new
              firewallrule_tmp.deserialize(i)
              @TemplateRules << firewallrule_tmp
            end
          end
        end
      end

      # ResetFirewallTemplateRules返回参数结构体
      class ResetFirewallTemplateRulesResponse < TencentCloud::Common::AbstractModel
        # @param TemplateRuleIdSet: 重置后的规则ID列表。
        # @type TemplateRuleIdSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateRuleIdSet, :RequestId

        def initialize(templateruleidset=nil, requestid=nil)
          @TemplateRuleIdSet = templateruleidset
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateRuleIdSet = params['TemplateRuleIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 描述了镜像重置信息
      class ResetInstanceBlueprint < TencentCloud::Common::AbstractModel
        # @param BlueprintInfo: 镜像详细信息
        # @type BlueprintInfo: :class:`Tencentcloud::Lighthouse.v20200324.models.Blueprint`
        # @param IsResettable: 实例镜像是否可重置为目标镜像
        # @type IsResettable: Boolean
        # @param NonResettableMessage: 不可重置信息.当镜像可重置时为""
        # @type NonResettableMessage: String

        attr_accessor :BlueprintInfo, :IsResettable, :NonResettableMessage

        def initialize(blueprintinfo=nil, isresettable=nil, nonresettablemessage=nil)
          @BlueprintInfo = blueprintinfo
          @IsResettable = isresettable
          @NonResettableMessage = nonresettablemessage
        end

        def deserialize(params)
          unless params['BlueprintInfo'].nil?
            @BlueprintInfo = Blueprint.new
            @BlueprintInfo.deserialize(params['BlueprintInfo'])
          end
          @IsResettable = params['IsResettable']
          @NonResettableMessage = params['NonResettableMessage']
        end
      end

      # ResetInstance请求参数结构体
      class ResetInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param BlueprintId: 镜像 ID。可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        # @type BlueprintId: String
        # @param Containers: 要创建的容器配置列表。
        # @type Containers: Array
        # @param LoginConfiguration: 实例登录信息配置。默认缺失情况下代表用户选择实例创建后设置登录密码或绑定密钥。
        # @type LoginConfiguration: :class:`Tencentcloud::Lighthouse.v20200324.models.LoginConfiguration`

        attr_accessor :InstanceId, :BlueprintId, :Containers, :LoginConfiguration

        def initialize(instanceid=nil, blueprintid=nil, containers=nil, loginconfiguration=nil)
          @InstanceId = instanceid
          @BlueprintId = blueprintid
          @Containers = containers
          @LoginConfiguration = loginconfiguration
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BlueprintId = params['BlueprintId']
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              dockercontainerconfiguration_tmp = DockerContainerConfiguration.new
              dockercontainerconfiguration_tmp.deserialize(i)
              @Containers << dockercontainerconfiguration_tmp
            end
          end
          unless params['LoginConfiguration'].nil?
            @LoginConfiguration = LoginConfiguration.new
            @LoginConfiguration.deserialize(params['LoginConfiguration'])
          end
        end
      end

      # ResetInstance返回参数结构体
      class ResetInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ResetInstancesPassword请求参数结构体
      class ResetInstancesPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过 <a href="https://cloud.tencent.com/document/product/1207/47573">DescribeInstances</a> 接口返回值中的 InstanceId 获取。
        # @type InstanceIds: Array
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：</br> `LINUX_UNIX` 实例密码必须 8-30 位，推荐使用 12 位以上密码，不能以“/”开头，至少包含以下字符中的三种不同字符，字符种类：</br> <li>小写字母：[a-z]</br></li> <li>大写字母：[A-Z]</br></li> <li>数字：0-9</br></li> <li>特殊字符： ()\`\~!@#$%^&\*-+=\_|{}[]:;' <>,.?/</li></br> `WINDOWS` 实例密码必须 12-30 位，不能以“/”开头且不包括用户名，至少包含以下字符中的三种不同字符</br> <li>小写字母：[a-z]</br></li> <li>大写字母：[A-Z]</br></li> <li>数字： 0-9</br></li> <li>特殊字符：()\`~!@#$%^&\*-+=\_|{}[]:;' <>,.?/</br></li> <li>如果实例即包含 `LINUX_UNIX` 实例又包含 `WINDOWS` 实例，则密码复杂度限制按照 `WINDOWS` 实例的限制。</li>
        # @type Password: String
        # @param UserName: 待重置密码的实例操作系统用户名。不得超过 64 个字符。
        # @type UserName: String

        attr_accessor :InstanceIds, :Password, :UserName

        def initialize(instanceids=nil, password=nil, username=nil)
          @InstanceIds = instanceids
          @Password = password
          @UserName = username
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Password = params['Password']
          @UserName = params['UserName']
        end
      end

      # ResetInstancesPassword返回参数结构体
      class ResetInstancesPasswordResponse < TencentCloud::Common::AbstractModel
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

      # ResizeDisks请求参数结构体
      class ResizeDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表，可通过[DescribeDisks](https://cloud.tencent.com/document/api/1207/66093)接口查询。列表最大长度为15。
        # @type DiskIds: Array
        # @param DiskSize: 扩容后的云硬盘大小。单位: GB。高性能云硬盘大小取值范围：[10, 4000] ,SSD云硬盘大小取值范围：[20, 4000]。扩容后的云硬盘大小必须大于当前云硬盘大小。
        # @type DiskSize: Integer

        attr_accessor :DiskIds, :DiskSize

        def initialize(diskids=nil, disksize=nil)
          @DiskIds = diskids
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
          @DiskSize = params['DiskSize']
        end
      end

      # ResizeDisks返回参数结构体
      class ResizeDisksResponse < TencentCloud::Common::AbstractModel
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

      # RestartDockerContainers请求参数结构体
      class RestartDockerContainersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ContainerIds: 容器ID列表。可通过[DescribeDockerContainers](https://cloud.tencent.com/document/product/1207/95473)接口返回值中的ContainerId获取。
        # @type ContainerIds: Array

        attr_accessor :InstanceId, :ContainerIds

        def initialize(instanceid=nil, containerids=nil)
          @InstanceId = instanceid
          @ContainerIds = containerids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ContainerIds = params['ContainerIds']
        end
      end

      # RestartDockerContainers返回参数结构体
      class RestartDockerContainersResponse < TencentCloud::Common::AbstractModel
        # @param DockerActivityId: Docker活动ID。
        # @type DockerActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DockerActivityId, :RequestId

        def initialize(dockeractivityid=nil, requestid=nil)
          @DockerActivityId = dockeractivityid
          @RequestId = requestid
        end

        def deserialize(params)
          @DockerActivityId = params['DockerActivityId']
          @RequestId = params['RequestId']
        end
      end

      # RunDockerContainers请求参数结构体
      class RunDockerContainersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param Containers: 要创建的容器列表。
        # @type Containers: Array

        attr_accessor :InstanceId, :Containers

        def initialize(instanceid=nil, containers=nil)
          @InstanceId = instanceid
          @Containers = containers
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          unless params['Containers'].nil?
            @Containers = []
            params['Containers'].each do |i|
              dockercontainerconfiguration_tmp = DockerContainerConfiguration.new
              dockercontainerconfiguration_tmp.deserialize(i)
              @Containers << dockercontainerconfiguration_tmp
            end
          end
        end
      end

      # RunDockerContainers返回参数结构体
      class RunDockerContainersResponse < TencentCloud::Common::AbstractModel
        # @param DockerActivitySet: Docker活动ID列表。
        # @type DockerActivitySet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DockerActivitySet, :RequestId

        def initialize(dockeractivityset=nil, requestid=nil)
          @DockerActivitySet = dockeractivityset
          @RequestId = requestid
        end

        def deserialize(params)
          @DockerActivitySet = params['DockerActivitySet']
          @RequestId = params['RequestId']
        end
      end

      # 使用场景信息
      class Scene < TencentCloud::Common::AbstractModel
        # @param SceneId: 使用场景Id
        # @type SceneId: String
        # @param DisplayName: 使用场景展示名称
        # @type DisplayName: String
        # @param Description: 使用场景描述
        # @type Description: String

        attr_accessor :SceneId, :DisplayName, :Description

        def initialize(sceneid=nil, displayname=nil, description=nil)
          @SceneId = sceneid
          @DisplayName = displayname
          @Description = description
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
        end
      end

      # 使用场景详细信息
      class SceneInfo < TencentCloud::Common::AbstractModel
        # @param SceneId: 使用场景Id。
        # @type SceneId: String
        # @param DisplayName: 使用场景展示名称。
        # @type DisplayName: String
        # @param Description: 使用场景描述信息。
        # @type Description: String

        attr_accessor :SceneId, :DisplayName, :Description

        def initialize(sceneid=nil, displayname=nil, description=nil)
          @SceneId = sceneid
          @DisplayName = displayname
          @Description = description
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @DisplayName = params['DisplayName']
          @Description = params['Description']
        end
      end

      # ShareBlueprintAcrossAccounts请求参数结构体
      class ShareBlueprintAcrossAccountsRequest < TencentCloud::Common::AbstractModel
        # @param BlueprintId: 镜像ID, 可以通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回的BlueprintId获取。
        # @type BlueprintId: String
        # @param AccountIds: 接收共享镜像的账号Id列表。账号ID不同于QQ号，查询用户账号ID请查看账号信息中的账号ID栏。账号个数取值最大为10。
        # @type AccountIds: Array

        attr_accessor :BlueprintId, :AccountIds

        def initialize(blueprintid=nil, accountids=nil)
          @BlueprintId = blueprintid
          @AccountIds = accountids
        end

        def deserialize(params)
          @BlueprintId = params['BlueprintId']
          @AccountIds = params['AccountIds']
        end
      end

      # ShareBlueprintAcrossAccounts返回参数结构体
      class ShareBlueprintAcrossAccountsResponse < TencentCloud::Common::AbstractModel
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

      # 描述了快照相关信息。
      class Snapshot < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照 ID。
        # @type SnapshotId: String
        # @param DiskUsage: 创建此快照的磁盘类型。取值：<li>SYSTEM_DISK：系统盘</li>
        # @type DiskUsage: String
        # @param DiskId: 创建此快照的磁盘 ID。
        # @type DiskId: String
        # @param DiskSize: 创建此快照的磁盘大小，单位 GB。
        # @type DiskSize: Integer
        # @param SnapshotName: 快照名称，用户自定义的快照别名。
        # @type SnapshotName: String
        # @param SnapshotState: 快照的状态。取值范围：
        # <li>NORMAL：正常 </li>
        # <li>CREATING：创建中</li>
        # <li>ROLLBACKING：回滚中。</li>
        # @type SnapshotState: String
        # @param Percent: 创建或回滚快照进度百分比，成功后此字段取值为 100。
        # @type Percent: Integer
        # @param LatestOperation: 快照的最新操作，只有创建、回滚快照时记录。
        # 取值如 CreateInstanceSnapshot，RollbackInstanceSnapshot。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperation: String
        # @param LatestOperationState: 快照的最新操作状态，只有创建、回滚快照时记录。
        # 取值范围：
        # <li>SUCCESS：表示操作成功</li>
        # <li>OPERATING：表示操作执行中</li>
        # <li>FAILED：表示操作失败</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationState: String
        # @param LatestOperationRequestId: 快照最新操作的唯一请求 ID，只有创建、回滚快照时记录。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationRequestId: String
        # @param CreatedTime: 快照的创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String

        attr_accessor :SnapshotId, :DiskUsage, :DiskId, :DiskSize, :SnapshotName, :SnapshotState, :Percent, :LatestOperation, :LatestOperationState, :LatestOperationRequestId, :CreatedTime

        def initialize(snapshotid=nil, diskusage=nil, diskid=nil, disksize=nil, snapshotname=nil, snapshotstate=nil, percent=nil, latestoperation=nil, latestoperationstate=nil, latestoperationrequestid=nil, createdtime=nil)
          @SnapshotId = snapshotid
          @DiskUsage = diskusage
          @DiskId = diskid
          @DiskSize = disksize
          @SnapshotName = snapshotname
          @SnapshotState = snapshotstate
          @Percent = percent
          @LatestOperation = latestoperation
          @LatestOperationState = latestoperationstate
          @LatestOperationRequestId = latestoperationrequestid
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
          @DiskUsage = params['DiskUsage']
          @DiskId = params['DiskId']
          @DiskSize = params['DiskSize']
          @SnapshotName = params['SnapshotName']
          @SnapshotState = params['SnapshotState']
          @Percent = params['Percent']
          @LatestOperation = params['LatestOperation']
          @LatestOperationState = params['LatestOperationState']
          @LatestOperationRequestId = params['LatestOperationRequestId']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 快照操作限制列表。
      class SnapshotDeniedActions < TencentCloud::Common::AbstractModel
        # @param SnapshotId: 快照 ID。
        # @type SnapshotId: String
        # @param DeniedActions: 操作限制列表。
        # @type DeniedActions: Array

        attr_accessor :SnapshotId, :DeniedActions

        def initialize(snapshotid=nil, deniedactions=nil)
          @SnapshotId = snapshotid
          @DeniedActions = deniedactions
        end

        def deserialize(params)
          @SnapshotId = params['SnapshotId']
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

      # 描述镜像软件信息。
      class Software < TencentCloud::Common::AbstractModel
        # @param Name: 软件名称。
        # @type Name: String
        # @param Version: 软件版本。
        # @type Version: String
        # @param ImageUrl: 软件图片 URL。
        # @type ImageUrl: String
        # @param InstallDir: 软件安装目录。
        # @type InstallDir: String
        # @param DetailSet: 软件详情列表。
        # @type DetailSet: Array

        attr_accessor :Name, :Version, :ImageUrl, :InstallDir, :DetailSet

        def initialize(name=nil, version=nil, imageurl=nil, installdir=nil, detailset=nil)
          @Name = name
          @Version = version
          @ImageUrl = imageurl
          @InstallDir = installdir
          @DetailSet = detailset
        end

        def deserialize(params)
          @Name = params['Name']
          @Version = params['Version']
          @ImageUrl = params['ImageUrl']
          @InstallDir = params['InstallDir']
          unless params['DetailSet'].nil?
            @DetailSet = []
            params['DetailSet'].each do |i|
              softwaredetail_tmp = SoftwareDetail.new
              softwaredetail_tmp.deserialize(i)
              @DetailSet << softwaredetail_tmp
            end
          end
        end
      end

      # 描述镜像软件详细信息。
      class SoftwareDetail < TencentCloud::Common::AbstractModel
        # @param Key: 软件的属性标识
        # @type Key: String
        # @param Title: 软件的属性标识描述
        # @type Title: String
        # @param Value: 软件的属性值
        # @type Value: String

        attr_accessor :Key, :Title, :Value

        def initialize(key=nil, title=nil, value=nil)
          @Key = key
          @Title = title
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Title = params['Title']
          @Value = params['Value']
        end
      end

      # StartDockerContainers请求参数结构体
      class StartDockerContainersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ContainerIds: 容器ID列表。可通过[DescribeDockerContainers](https://cloud.tencent.com/document/product/1207/95473)接口返回值中的ContainerId获取。
        # @type ContainerIds: Array

        attr_accessor :InstanceId, :ContainerIds

        def initialize(instanceid=nil, containerids=nil)
          @InstanceId = instanceid
          @ContainerIds = containerids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ContainerIds = params['ContainerIds']
        end
      end

      # StartDockerContainers返回参数结构体
      class StartDockerContainersResponse < TencentCloud::Common::AbstractModel
        # @param DockerActivityId: Docker活动ID。
        # @type DockerActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DockerActivityId, :RequestId

        def initialize(dockeractivityid=nil, requestid=nil)
          @DockerActivityId = dockeractivityid
          @RequestId = requestid
        end

        def deserialize(params)
          @DockerActivityId = params['DockerActivityId']
          @RequestId = params['RequestId']
        end
      end

      # StartInstances请求参数结构体
      class StartInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # StartInstances返回参数结构体
      class StartInstancesResponse < TencentCloud::Common::AbstractModel
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

      # StopDockerContainers请求参数结构体
      class StopDockerContainersRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。可通过[DescribeInstances](https://cloud.tencent.com/document/product/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceId: String
        # @param ContainerIds: 容器ID列表。可通过[DescribeDockerContainers](https://cloud.tencent.com/document/product/1207/95473)接口返回值中的ContainerId获取。
        # @type ContainerIds: Array

        attr_accessor :InstanceId, :ContainerIds

        def initialize(instanceid=nil, containerids=nil)
          @InstanceId = instanceid
          @ContainerIds = containerids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @ContainerIds = params['ContainerIds']
        end
      end

      # StopDockerContainers返回参数结构体
      class StopDockerContainersResponse < TencentCloud::Common::AbstractModel
        # @param DockerActivityId: Docker活动ID。
        # @type DockerActivityId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DockerActivityId, :RequestId

        def initialize(dockeractivityid=nil, requestid=nil)
          @DockerActivityId = dockeractivityid
          @RequestId = requestid
        end

        def deserialize(params)
          @DockerActivityId = params['DockerActivityId']
          @RequestId = params['RequestId']
        end
      end

      # StopInstances请求参数结构体
      class StopInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # StopInstances返回参数结构体
      class StopInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 描述了操作系统所在块设备即系统盘的信息。
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 系统盘类型。
        # 取值范围：
        # <li> LOCAL_BASIC：本地硬盘</li><li> LOCAL_SSD：本地 SSD 硬盘</li><li> CLOUD_BASIC：普通云硬盘</li><li> CLOUD_SSD：SSD 云硬盘</li><li> CLOUD_PREMIUM：高性能云硬盘</li>
        # @type DiskType: String
        # @param DiskSize: 系统盘大小，单位：GB。
        # @type DiskSize: Integer
        # @param DiskId: 系统盘ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiskId: String

        attr_accessor :DiskType, :DiskSize, :DiskId

        def initialize(disktype=nil, disksize=nil, diskid=nil)
          @DiskType = disktype
          @DiskSize = disksize
          @DiskId = diskid
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskSize = params['DiskSize']
          @DiskId = params['DiskId']
        end
      end

      # 标签
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

      # TerminateDisks请求参数结构体
      class TerminateDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 云硬盘ID列表。可通过[DescribeDisks](https://cloud.tencent.com/document/product/1207/66093)接口返回值中的DiskId获取。
        # @type DiskIds: Array

        attr_accessor :DiskIds

        def initialize(diskids=nil)
          @DiskIds = diskids
        end

        def deserialize(params)
          @DiskIds = params['DiskIds']
        end
      end

      # TerminateDisks返回参数结构体
      class TerminateDisksResponse < TencentCloud::Common::AbstractModel
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

      # TerminateInstances请求参数结构体
      class TerminateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例ID列表。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array

        attr_accessor :InstanceIds

        def initialize(instanceids=nil)
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
        end
      end

      # TerminateInstances返回参数结构体
      class TerminateInstancesResponse < TencentCloud::Common::AbstractModel
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

      # 总计价格信息
      class TotalPrice < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 原始总计价格。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginalPrice: Float
        # @param DiscountPrice: 折扣总计价格。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountPrice: Float

        attr_accessor :OriginalPrice, :DiscountPrice

        def initialize(originalprice=nil, discountprice=nil)
          @OriginalPrice = originalprice
          @DiscountPrice = discountprice
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @DiscountPrice = params['DiscountPrice']
        end
      end

      # 流量包详情
      class TrafficPackage < TencentCloud::Common::AbstractModel
        # @param TrafficPackageId: 流量包ID。
        # @type TrafficPackageId: String
        # @param TrafficUsed: 流量包生效周期内已使用流量，单位字节。
        # @type TrafficUsed: Integer
        # @param TrafficPackageTotal: 流量包生效周期内的总流量，单位字节。
        # @type TrafficPackageTotal: Integer
        # @param TrafficPackageRemaining: 流量包生效周期内的剩余流量，单位字节。
        # @type TrafficPackageRemaining: Integer
        # @param TrafficOverflow: 流量包生效周期内超出流量包额度的流量，单位字节。
        # @type TrafficOverflow: Integer
        # @param StartTime: 流量包生效周期开始时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartTime: String
        # @param EndTime: 流量包生效周期结束时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: String
        # @param Deadline: 流量包到期时间。按照 ISO8601 标准表示，并且使用 UTC 时间。
        # 格式为： YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deadline: String
        # @param Status: 流量包状态：
        # <li>NETWORK_NORMAL：正常</li>
        # <li>OVERDUE_NETWORK_DISABLED：欠费断网</li>
        # @type Status: String

        attr_accessor :TrafficPackageId, :TrafficUsed, :TrafficPackageTotal, :TrafficPackageRemaining, :TrafficOverflow, :StartTime, :EndTime, :Deadline, :Status

        def initialize(trafficpackageid=nil, trafficused=nil, trafficpackagetotal=nil, trafficpackageremaining=nil, trafficoverflow=nil, starttime=nil, endtime=nil, deadline=nil, status=nil)
          @TrafficPackageId = trafficpackageid
          @TrafficUsed = trafficused
          @TrafficPackageTotal = trafficpackagetotal
          @TrafficPackageRemaining = trafficpackageremaining
          @TrafficOverflow = trafficoverflow
          @StartTime = starttime
          @EndTime = endtime
          @Deadline = deadline
          @Status = status
        end

        def deserialize(params)
          @TrafficPackageId = params['TrafficPackageId']
          @TrafficUsed = params['TrafficUsed']
          @TrafficPackageTotal = params['TrafficPackageTotal']
          @TrafficPackageRemaining = params['TrafficPackageRemaining']
          @TrafficOverflow = params['TrafficOverflow']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Deadline = params['Deadline']
          @Status = params['Status']
        end
      end

      # 可用区详细信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param ZoneName: 可用区中文名称
        # @type ZoneName: String
        # @param InstanceDisplayLabel: 实例购买页可用区展示标签
        # @type InstanceDisplayLabel: String

        attr_accessor :Zone, :ZoneName, :InstanceDisplayLabel

        def initialize(zone=nil, zonename=nil, instancedisplaylabel=nil)
          @Zone = zone
          @ZoneName = zonename
          @InstanceDisplayLabel = instancedisplaylabel
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @InstanceDisplayLabel = params['InstanceDisplayLabel']
        end
      end

    end
  end
end

