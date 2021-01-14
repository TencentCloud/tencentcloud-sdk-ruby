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
      # 描述了镜像信息。
      class Blueprint < TencentCloud::Common::AbstractModel
        # @param BlueprintId: 镜像 ID  ，是 blueprint 的唯一标识。
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
        # @param BlueprintType: 镜像类型，如 APP_OS、PURE_OS。
        # @type BlueprintType: String
        # @param ImageUrl: 镜像图片 URL。
        # @type ImageUrl: String
        # @param RequiredSystemDiskSize: 镜像所需系统盘大小。
        # @type RequiredSystemDiskSize: Integer
        # @param BlueprintState: 镜像状态。
        # @type BlueprintState: String

        attr_accessor :BlueprintId, :DisplayTitle, :DisplayVersion, :Description, :OsName, :Platform, :PlatformType, :BlueprintType, :ImageUrl, :RequiredSystemDiskSize, :BlueprintState
        
        def initialize(blueprintid=nil, displaytitle=nil, displayversion=nil, description=nil, osname=nil, platform=nil, platformtype=nil, blueprinttype=nil, imageurl=nil, requiredsystemdisksize=nil, blueprintstate=nil)
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
            @Price = Price.new.deserialize(params[Price])
          end
          @CPU = params['CPU']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @InternetChargeType = params['InternetChargeType']
          @BundleSalesState = params['BundleSalesState']
          @BundleType = params['BundleType']
          @BundleDisplayLabel = params['BundleDisplayLabel']
        end
      end

      # CreateFirewallRules请求参数结构体
      class CreateFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param FirewallRules: 防火墙规则列表。
        # @type FirewallRules: Array

        attr_accessor :InstanceId, :FirewallRules
        
        def initialize(instanceid=nil, firewallrules=nil)
          @InstanceId = instanceid
          @FirewallRules = firewallrules
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FirewallRules = params['FirewallRules']
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

      # DeleteFirewallRules请求参数结构体
      class DeleteFirewallRulesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param FirewallRules: 防火墙规则列表。
        # @type FirewallRules: Array

        attr_accessor :InstanceId, :FirewallRules
        
        def initialize(instanceid=nil, firewallrules=nil)
          @InstanceId = instanceid
          @FirewallRules = firewallrules
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @FirewallRules = params['FirewallRules']
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
        # 取值： APP_OS（预置应用的系统 ）；PURE_OS（纯净的 OS 系统）。
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
          @Filters = params['Filters']
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
          @BlueprintSet = params['BlueprintSet']
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

        attr_accessor :BundleIds, :Offset, :Limit, :Filters
        
        def initialize(bundleids=nil, offset=nil, limit=nil, filters=nil)
          @BundleIds = bundleids
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @BundleIds = params['BundleIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Filters = params['Filters']
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
          @BundleSet = params['BundleSet']
          @TotalCount = params['TotalCount']
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
          @FirewallRuleSet = params['FirewallRuleSet']
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
          @Filters = params['Filters']
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
          @InstanceSet = params['InstanceSet']
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
          @InstanceTrafficPackageSet = params['InstanceTrafficPackageSet']
          @RequestId = params['RequestId']
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
        # @param Protocol: 协议，取值：TCP，UDP，ALL。
        # @type Protocol: String
        # @param Port: 端口，取值：ALL，单独的端口，逗号分隔的离散端口，减号分隔的端口范围。
        # @type Port: String

        attr_accessor :Protocol, :Port
        
        def initialize(protocol=nil, port=nil)
          @Protocol = protocol
          @Port = port
        end

        def deserialize(params)
          @Protocol = params['Protocol']
          @Port = params['Port']
        end
      end

      # 描述防火墙规则详细信息。
      class FirewallRuleInfo < TencentCloud::Common::AbstractModel
        # @param AppType: 应用类型，取值：自定义，HTTP(80)，HTTPS(443)，Linux登录(22)，Windows登录(3389)，MySQL(3306)，SQL Server(1433)，全部TCP，全部UDP，ALL。
        # @type AppType: String
        # @param Protocol: 协议，取值：TCP，UDP，ALL。
        # @type Protocol: String
        # @param Port: 端口，取值：ALL，单独的端口，逗号分隔的离散端口，减号分隔的端口范围。
        # @type Port: String

        attr_accessor :AppType, :Protocol, :Port
        
        def initialize(apptype=nil, protocol=nil, port=nil)
          @AppType = apptype
          @Protocol = protocol
          @Port = port
        end

        def deserialize(params)
          @AppType = params['AppType']
          @Protocol = params['Protocol']
          @Port = params['Port']
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

        attr_accessor :InstanceId, :BundleId, :BlueprintId, :CPU, :Memory, :InstanceName, :InstanceChargeType, :SystemDisk, :PrivateAddresses, :PublicAddresses, :InternetAccessible, :RenewFlag, :LoginSettings, :InstanceState, :Uuid, :LatestOperation, :LatestOperationState, :LatestOperationRequestId, :IsolatedTime, :CreatedTime, :ExpiredTime, :PlatformType, :Platform, :OsName
        
        def initialize(instanceid=nil, bundleid=nil, blueprintid=nil, cpu=nil, memory=nil, instancename=nil, instancechargetype=nil, systemdisk=nil, privateaddresses=nil, publicaddresses=nil, internetaccessible=nil, renewflag=nil, loginsettings=nil, instancestate=nil, uuid=nil, latestoperation=nil, latestoperationstate=nil, latestoperationrequestid=nil, isolatedtime=nil, createdtime=nil, expiredtime=nil, platformtype=nil, platform=nil, osname=nil)
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
            @SystemDisk = SystemDisk.new.deserialize(params[SystemDisk])
          end
          @PrivateAddresses = params['PrivateAddresses']
          @PublicAddresses = params['PublicAddresses']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = InternetAccessible.new.deserialize(params[InternetAccessible])
          end
          @RenewFlag = params['RenewFlag']
          unless params['LoginSettings'].nil?
            @LoginSettings = LoginSettings.new.deserialize(params[LoginSettings])
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
          @TrafficPackageSet = params['TrafficPackageSet']
        end
      end

      # 描述了启动配置创建实例的公网可访问性，声明了实例的公网使用计费模式，最大带宽等。
      class InternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetChargeType: 网络计费类型。
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
            @InstancePrice = InstancePrice.new.deserialize(params[InstancePrice])
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

    end
  end
end

