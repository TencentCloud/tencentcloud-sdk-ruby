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
      # ApplyInstanceSnapshot请求参数结构体
      class ApplyInstanceSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param SnapshotId: 快照 ID。
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

      # AssociateInstancesKeyPairs请求参数结构体
      class AssociateInstancesKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥对 ID 列表。每次请求批量密钥对的上限为 100。
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

      # AttachCcn请求参数结构体
      class AttachCcnRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: 云联网实例ID。
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

      # 描述了镜像信息。
      class Blueprint < TencentCloud::Common::AbstractModel
        # @param BlueprintId: 镜像 ID  ，是 Blueprint 的唯一标识。
        # @type BlueprintId: String
        # @param DisplayTitle: 镜像对外展示标题。
        # @type DisplayTitle: String
        # @param DisplayVersion: 镜像对外展示版本。
        # @type DisplayVersion: String
        # @param Description: 镜像描述信息。
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

        attr_accessor :BlueprintId, :DisplayTitle, :DisplayVersion, :Description, :OsName, :Platform, :PlatformType, :BlueprintType, :ImageUrl, :RequiredSystemDiskSize, :BlueprintState, :CreatedTime, :BlueprintName, :SupportAutomationTools, :RequiredMemorySize, :ImageId
        
        def initialize(blueprintid=nil, displaytitle=nil, displayversion=nil, description=nil, osname=nil, platform=nil, platformtype=nil, blueprinttype=nil, imageurl=nil, requiredsystemdisksize=nil, blueprintstate=nil, createdtime=nil, blueprintname=nil, supportautomationtools=nil, requiredmemorysize=nil, imageid=nil)
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
        # @type Discount: Integer
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
        # <li> LOCAL_BASIC：本地硬盘</li><li> LOCAL_SSD：本地 SSD 硬盘</li><li> CLOUD_BASIC：普通云硬盘</li><li> CLOUD_SSD：SSD 云硬盘</li><li> CLOUD_PREMIUM：高性能云硬盘</li>
        # @type SystemDiskType: String
        # @param SystemDiskSize: 系统盘大小。
        # @type SystemDiskSize: Integer
        # @param MonthlyTraffic: 每月网络流量，单位 Gb。
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
        # <li> GENERAL_BUNDLE：通用型</li><li> STORAGE_BUNDLE：存储型 </li>
        # @type BundleType: String
        # @param BundleDisplayLabel: 套餐展示标签.
        # 取值范围:
        # "ACTIVITY": 活动套餐,
        # "NORMAL": 普通套餐
        # "CAREFREE": 无忧套餐
        # @type BundleDisplayLabel: String

        attr_accessor :BundleId, :Memory, :SystemDiskType, :SystemDiskSize, :MonthlyTraffic, :SupportLinuxUnixPlatform, :SupportWindowsPlatform, :Price, :CPU, :InternetMaxBandwidthOut, :InternetChargeType, :BundleSalesState, :BundleType, :BundleDisplayLabel
        
        def initialize(bundleid=nil, memory=nil, systemdisktype=nil, systemdisksize=nil, monthlytraffic=nil, supportlinuxunixplatform=nil, supportwindowsplatform=nil, price=nil, cpu=nil, internetmaxbandwidthout=nil, internetchargetype=nil, bundlesalesstate=nil, bundletype=nil, bundledisplaylabel=nil)
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
          @BundleDisplayLabel = params['BundleDisplayLabel']
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

      # CreateBlueprint请求参数结构体
      class CreateBlueprintRequest < TencentCloud::Common::AbstractModel
        # @param BlueprintName: 镜像名称。最大长度60。
        # @type BlueprintName: String
        # @param Description: 镜像描述。最大长度60。
        # @type Description: String
        # @param InstanceId: 需要制作镜像的实例ID。
        # @type InstanceId: String

        attr_accessor :BlueprintName, :Description, :InstanceId
        
        def initialize(blueprintname=nil, description=nil, instanceid=nil)
          @BlueprintName = blueprintname
          @Description = description
          @InstanceId = instanceid
        end

        def deserialize(params)
          @BlueprintName = params['BlueprintName']
          @Description = params['Description']
          @InstanceId = params['InstanceId']
        end
      end

      # CreateBlueprint返回参数结构体
      class CreateBlueprintResponse < TencentCloud::Common::AbstractModel
        # @param BlueprintId: 自定义镜像ID。
        # @type BlueprintId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateFirewallRules请求参数结构体
      class CreateFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
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

      # CreateInstanceSnapshot请求参数结构体
      class CreateInstanceSnapshotRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 需要创建快照的实例 ID。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DeleteFirewallRules请求参数结构体
      class DeleteFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
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

      # DeleteKeyPairs请求参数结构体
      class DeleteKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥对 ID 列表，每次请求批量密钥对的上限为 10。
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
        # @param SnapshotIds: 要删除的快照 ID 列表，可通过 DescribeSnapshots 查询。
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

      # DescribeBlueprintInstances请求参数结构体
      class DescribeBlueprintInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表，当前最多支持 1 个。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # 取值：APP_OS（预置应用的系统 ）；PURE_OS（纯净的 OS 系统）；PRIVATE（自定义镜像）。
        # 类型：String
        # 必选：否
        # <li>platform-type</li>按照【镜像平台类型】进行过滤。
        # 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）。
        # 类型：String
        # 必选：否
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 BlueprintIds 和 Filters 。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param BundleId: 套餐 ID。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param BundleIds: 套餐 ID 列表。
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
        # 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeFirewallRules请求参数结构体
      class DescribeFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeGeneralResourceQuotas请求参数结构体
      class DescribeGeneralResourceQuotasRequest < TencentCloud::Common::AbstractModel
        # @param ResourceNames: 资源名列表，取值为：USER_KEY_PAIR、INSTANCE、SNAPSHOT。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。
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
        # 每次请求的 Filters 的上限为 10，Filter.Values 的上限为 5。参数不支持同时指定 InstanceIds 和 Filters。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Limit: Integer

        attr_accessor :InstanceIds, :Filters, :Offset, :Limit
        
        def initialize(instanceids=nil, filters=nil, offset=nil, limit=nil)
          @InstanceIds = instanceids
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param InstanceSet: 实例详细信息列表。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param KeyIds: 密钥对 ID 列表。
        # @type KeyIds: Array
        # @param Offset: 偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。
        # @type Limit: Integer
        # @param Filters: 过滤条件，每次请求的 Filters 的上限为10， Filters.Values 的上限为5。参数不可以同时指定 KeyIds 和 Filters 。详细的过滤条件如下： key-id - String - 是否必填： 否 - （过滤条件）按照KeyID进行过滤; key-name - String - 是否必填： 否 - （过滤条件）按照KeyName进行过滤。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Filters: 过滤器列表。
        # <li>bundle-id</li>按照【套餐 ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>support-platform-type</li>按照【系统类型】进行过滤。
        # 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Offset: 偏移量，默认为 0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为 20，最大值为 100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/product/1207/47578)中的相关小节。
        # @type Limit: Integer
        # @param Filters: 过滤器列表。
        # <li>blueprint-id</li>按照【镜像 ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>blueprint-type</li>按照【镜像类型】进行过滤。
        # 取值： APP_OS（预置应用的系统 ）；PURE_OS（纯净的 OS 系统）；PRIVATE（自定义镜像）。
        # 类型：String
        # 必选：否
        # <li>platform-type</li>按照【镜像平台类型】进行过滤。
        # 取值： LINUX_UNIX（Linux/Unix系统）；WINDOWS（Windows 系统）。
        # 类型：String
        # 必选：否
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeSnapshotsDeniedActions请求参数结构体
      class DescribeSnapshotsDeniedActionsRequest < TencentCloud::Common::AbstractModel
        # @param SnapshotIds: 快照 ID 列表, 可通过 DescribeSnapshots 查询。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param SnapshotIds: 要查询快照的 ID 列表。
        # 参数不支持同时指定 SnapshotIds 和 Filters。
        # @type SnapshotIds: Array
        # @param Filters: 过滤器列表。
        # <li>snapshot-id</li>按照【快照 ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>disk-id</li>按照【磁盘 ID】进行过滤。
        # 类型：String
        # 必选：否
        # <li>snapshot-name</li>按照【快照名称】进行过滤。
        # 类型：String
        # 必选：否
        # <li>instance-id</li>按照【实例 ID 】进行过滤。
        # 类型：String
        # 必选：否
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

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可用区数量
        # @type TotalCount: Integer
        # @param ZoneInfoSet: 可用区详细信息列表
        # @type ZoneInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param CcnId: 云联网实例ID。
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

      # DisassociateInstancesKeyPairs请求参数结构体
      class DisassociateInstancesKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 密钥对 ID 列表。每次请求批量密钥对的上限为 100。
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
        # @type Discount: Integer
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
        # @param CidrBlock: 网段或 IP (互斥)。默认为 0.0.0.0/0，表示所有来源。
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
        # @param CidrBlock: 网段或 IP (互斥)。默认为 0.0.0.0/0，表示所有来源。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # InquirePriceCreateInstances请求参数结构体
      class InquirePriceCreateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param BundleId: 实例的套餐 ID。
        # @type BundleId: String
        # @param InstanceCount: 创建数量，默认为 1。
        # @type InstanceCount: Integer
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.InstanceChargePrepaid`
        # @param BlueprintId: 应用镜像 ID，使用收费应用镜像时必填。可通过[DescribeBlueprints](https://cloud.tencent.com/document/product/1207/47689)接口返回值中的BlueprintId获取。
        # @type BlueprintId: String

        attr_accessor :BundleId, :InstanceCount, :InstanceChargePrepaid, :BlueprintId
        
        def initialize(bundleid=nil, instancecount=nil, instancechargeprepaid=nil, blueprintid=nil)
          @BundleId = bundleid
          @InstanceCount = instancecount
          @InstanceChargePrepaid = instancechargeprepaid
          @BlueprintId = blueprintid
        end

        def deserialize(params)
          @BundleId = params['BundleId']
          @InstanceCount = params['InstanceCount']
          unless params['InstanceChargePrepaid'].nil?
            @InstanceChargePrepaid = InstanceChargePrepaid.new
            @InstanceChargePrepaid.deserialize(params['InstanceChargePrepaid'])
          end
          @BlueprintId = params['BlueprintId']
        end
      end

      # InquirePriceCreateInstances返回参数结构体
      class InquirePriceCreateInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 询价信息。
        # @type Price: :class:`Tencentcloud::Lighthouse.v20200324.models.Price`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # InquirePriceRenewInstances请求参数结构体
      class InquirePriceRenewInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 待续费的实例。
        # @type InstanceIds: Array
        # @param InstanceChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月实例的购买时长、是否设置自动续费等属性。若指定实例的付费模式为预付费则该参数必传。
        # @type InstanceChargePrepaid: :class:`Tencentcloud::Lighthouse.v20200324.models.InstanceChargePrepaid`

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

      # InquirePriceRenewInstances返回参数结构体
      class InquirePriceRenewInstancesResponse < TencentCloud::Common::AbstractModel
        # @param Price: 询价信息。
        # @type Price: :class:`Tencentcloud::Lighthouse.v20200324.models.Price`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # NOTIFY_AND_AUTO_RENEW：表示通知即将过期，而且自动续费 。
        # @type RenewFlag: String
        # @param LoginSettings: 实例登录设置。
        # @type LoginSettings: :class:`Tencentcloud::Lighthouse.v20200324.models.LoginSettings`
        # @param InstanceState: 实例状态。取值范围：
        # <li>PENDING：表示创建中</li><li>LAUNCH_FAILED：表示创建失败</li><li>RUNNING：表示运行中</li><li>STOPPED：表示关机</li><li>STARTING：表示开机中</li><li>STOPPING：表示关机中</li><li>REBOOTING：表示重启中</li><li>SHUTDOWN：表示停止待销毁</li><li>TERMINATING：表示销毁中</li>
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

        attr_accessor :InstanceId, :BundleId, :BlueprintId, :CPU, :Memory, :InstanceName, :InstanceChargeType, :SystemDisk, :PrivateAddresses, :PublicAddresses, :InternetAccessible, :RenewFlag, :LoginSettings, :InstanceState, :Uuid, :LatestOperation, :LatestOperationState, :LatestOperationRequestId, :IsolatedTime, :CreatedTime, :ExpiredTime, :PlatformType, :Platform, :OsName, :Zone
        
        def initialize(instanceid=nil, bundleid=nil, blueprintid=nil, cpu=nil, memory=nil, instancename=nil, instancechargetype=nil, systemdisk=nil, privateaddresses=nil, publicaddresses=nil, internetaccessible=nil, renewflag=nil, loginsettings=nil, instancestate=nil, uuid=nil, latestoperation=nil, latestoperationstate=nil, latestoperationrequestid=nil, isolatedtime=nil, createdtime=nil, expiredtime=nil, platformtype=nil, platform=nil, osname=nil, zone=nil)
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
          @IsolatedTime = isolatedtime
          @CreatedTime = createdtime
          @ExpiredTime = expiredtime
          @PlatformType = platformtype
          @Platform = platform
          @OsName = osname
          @Zone = zone
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
          @IsolatedTime = params['IsolatedTime']
          @CreatedTime = params['CreatedTime']
          @ExpiredTime = params['ExpiredTime']
          @PlatformType = params['PlatformType']
          @Platform = params['Platform']
          @OsName = params['OsName']
          @Zone = params['Zone']
        end
      end

      # 描述了实例的计费模式
      class InstanceChargePrepaid < TencentCloud::Common::AbstractModel
        # @param Period: 购买实例的时长，单位：月。取值范围：1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 24, 36, 48, 60。
        # @type Period: Integer
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费<br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费，用户需要手动续费<br><li>DISABLE_NOTIFY_AND_AUTO_RENEW：不自动续费，且不通知<br><br>默认取值：NOTIFY_AND_MANUAL_RENEW。若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
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

      # 关于Lighthouse Instance实例的价格信息
      class InstancePrice < TencentCloud::Common::AbstractModel
        # @param OriginalBundlePrice: 套餐单价原价。
        # @type OriginalBundlePrice: Float
        # @param OriginalPrice: 原价。
        # @type OriginalPrice: Float
        # @param Discount: 折扣。
        # @type Discount: Integer
        # @param DiscountPrice: 折后价。
        # @type DiscountPrice: Float

        attr_accessor :OriginalBundlePrice, :OriginalPrice, :Discount, :DiscountPrice
        
        def initialize(originalbundleprice=nil, originalprice=nil, discount=nil, discountprice=nil)
          @OriginalBundlePrice = originalbundleprice
          @OriginalPrice = originalprice
          @Discount = discount
          @DiscountPrice = discountprice
        end

        def deserialize(params)
          @OriginalBundlePrice = params['OriginalBundlePrice']
          @OriginalPrice = params['OriginalPrice']
          @Discount = params['Discount']
          @DiscountPrice = params['DiscountPrice']
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

        attr_accessor :ModifyPrice, :ModifyBundleState, :Bundle
        
        def initialize(modifyprice=nil, modifybundlestate=nil, bundle=nil)
          @ModifyPrice = modifyprice
          @ModifyBundleState = modifybundlestate
          @Bundle = bundle
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
        end
      end

      # ModifyFirewallRuleDescription请求参数结构体
      class ModifyFirewallRuleDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
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

      # ModifyFirewallRules请求参数结构体
      class ModifyFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
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

      # ModifyFirewallRules返回参数结构体
      class ModifyFirewallRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyInstancesRenewFlag请求参数结构体
      class ModifyInstancesRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。可通过[DescribeInstances](https://cloud.tencent.com/document/api/1207/47573)接口返回值中的InstanceId获取。
        # @type InstanceIds: Array
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费<br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费<br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费<br><br>若该参数指定为NOTIFY_AND_AUTO_RENEW，在账户余额充足的情况下，实例到期后将按月自动续费。
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
        # @param SnapshotId: 快照 ID, 可通过 DescribeSnapshots 查询。
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

      # 折扣详情信息。
      class PolicyDetail < TencentCloud::Common::AbstractModel
        # @param UserDiscount: 用户折扣。
        # @type UserDiscount: Integer
        # @param CommonDiscount: 公共折扣。
        # @type CommonDiscount: Integer
        # @param FinalDiscount: 最终折扣。
        # @type FinalDiscount: Integer

        attr_accessor :UserDiscount, :CommonDiscount, :FinalDiscount
        
        def initialize(userdiscount=nil, commondiscount=nil, finaldiscount=nil)
          @UserDiscount = userdiscount
          @CommonDiscount = commondiscount
          @FinalDiscount = finaldiscount
        end

        def deserialize(params)
          @UserDiscount = params['UserDiscount']
          @CommonDiscount = params['CommonDiscount']
          @FinalDiscount = params['FinalDiscount']
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

      # ResetAttachCcn请求参数结构体
      class ResetAttachCcnRequest < TencentCloud::Common::AbstractModel
        # @param CcnId: 云联网实例ID。
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

        attr_accessor :InstanceId, :BlueprintId
        
        def initialize(instanceid=nil, blueprintid=nil)
          @InstanceId = instanceid
          @BlueprintId = blueprintid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BlueprintId = params['BlueprintId']
        end
      end

      # ResetInstance返回参数结构体
      class ResetInstanceResponse < TencentCloud::Common::AbstractModel
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

      # ResetInstancesPassword请求参数结构体
      class ResetInstancesPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 实例 ID 列表。每次请求批量实例的上限为 100。
        # @type InstanceIds: Array
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：
        # `LINUX_UNIX` 实例密码必须 8-30 位，推荐使用 12 位以上密码，不能以“/”开头，至少包含以下字符中的三种不同字符，字符种类：<br><li>小写字母：[a-z]<br><li>大写字母：[A-Z]<br><li>数字：0-9<br><li>特殊字符： ()\`~!@#$%^&\*-+=\_|{}[]:;'<>,.?/
        # `WINDOWS` 实例密码必须 12-30 位，不能以“/”开头且不包括用户名，至少包含以下字符中的三种不同字符<br><li>小写字母：[a-z]<br><li>大写字母：[A-Z]<br><li>数字： 0-9<br><li>特殊字符：()\`~!@#$%^&\*-+=\_|{}[]:;' <>,.?/<br><li>如果实例即包含 `LINUX_UNIX` 实例又包含 `WINDOWS` 实例，则密码复杂度限制按照 `WINDOWS` 实例的限制。
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
        # @param Key: 详情唯一键。
        # @type Key: String
        # @param Title: 详情标题。
        # @type Title: String
        # @param Value: 详情值。
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

