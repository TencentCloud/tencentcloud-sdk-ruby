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
  module Ecm
    module V20190719
      # 描述 EIP 信息
      class Address < TencentCloud::Common::AbstractModel
        # @param AddressId: EIP的ID，是EIP的唯一标识。
        # @type AddressId: String
        # @param AddressName: EIP名称。
        # @type AddressName: String
        # @param AddressStatus: EIP状态，包含'CREATING'(创建中),'BINDING'(绑定中),'BIND'(已绑定),'UNBINDING'(解绑中),'UNBIND'(已解绑),'OFFLINING'(释放中),'BIND_ENI'(绑定悬空弹性网卡)
        # @type AddressStatus: String
        # @param AddressIp: 外网IP地址
        # @type AddressIp: String
        # @param InstanceId: 绑定的资源实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param CreatedTime: 创建时间。ISO 8601 格式：YYYY-MM-DDTHH:mm:ss.sssZ
        # @type CreatedTime: String
        # @param NetworkInterfaceId: 绑定的弹性网卡ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkInterfaceId: String
        # @param PrivateAddressIp: 绑定的资源内网ip
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateAddressIp: String
        # @param IsArrears: 资源隔离状态。true表示eip处于隔离状态，false表示资源处于未隔离状态
        # @type IsArrears: Boolean
        # @param IsBlocked: 资源封堵状态。true表示eip处于封堵状态，false表示eip处于未封堵状态
        # @type IsBlocked: Boolean
        # @param IsEipDirectConnection: eip是否支持直通模式。true表示eip支持直通模式，false表示资源不支持直通模式
        # @type IsEipDirectConnection: Boolean
        # @param AddressType: eip资源类型，包括"CalcIP","WanIP","EIP","AnycastEIP"。其中"CalcIP"表示设备ip，“WanIP”表示普通公网ip，“EIP”表示弹性公网ip，“AnycastEip”表示加速EIP
        # @type AddressType: String
        # @param CascadeRelease: eip是否在解绑后自动释放。true表示eip将会在解绑后自动释放，false表示eip在解绑后不会自动释放
        # @type CascadeRelease: Boolean
        # @param InternetServiceProvider: 运营商，CTCC电信，CUCC联通，CMCC移动
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InternetServiceProvider: String
        # @param Bandwidth: 带宽上限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bandwidth: Integer
        # @param PayMode: 计费模式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: String

        attr_accessor :AddressId, :AddressName, :AddressStatus, :AddressIp, :InstanceId, :CreatedTime, :NetworkInterfaceId, :PrivateAddressIp, :IsArrears, :IsBlocked, :IsEipDirectConnection, :AddressType, :CascadeRelease, :InternetServiceProvider, :Bandwidth, :PayMode

        def initialize(addressid=nil, addressname=nil, addressstatus=nil, addressip=nil, instanceid=nil, createdtime=nil, networkinterfaceid=nil, privateaddressip=nil, isarrears=nil, isblocked=nil, iseipdirectconnection=nil, addresstype=nil, cascaderelease=nil, internetserviceprovider=nil, bandwidth=nil, paymode=nil)
          @AddressId = addressid
          @AddressName = addressname
          @AddressStatus = addressstatus
          @AddressIp = addressip
          @InstanceId = instanceid
          @CreatedTime = createdtime
          @NetworkInterfaceId = networkinterfaceid
          @PrivateAddressIp = privateaddressip
          @IsArrears = isarrears
          @IsBlocked = isblocked
          @IsEipDirectConnection = iseipdirectconnection
          @AddressType = addresstype
          @CascadeRelease = cascaderelease
          @InternetServiceProvider = internetserviceprovider
          @Bandwidth = bandwidth
          @PayMode = paymode
        end

        def deserialize(params)
          @AddressId = params['AddressId']
          @AddressName = params['AddressName']
          @AddressStatus = params['AddressStatus']
          @AddressIp = params['AddressIp']
          @InstanceId = params['InstanceId']
          @CreatedTime = params['CreatedTime']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @PrivateAddressIp = params['PrivateAddressIp']
          @IsArrears = params['IsArrears']
          @IsBlocked = params['IsBlocked']
          @IsEipDirectConnection = params['IsEipDirectConnection']
          @AddressType = params['AddressType']
          @CascadeRelease = params['CascadeRelease']
          @InternetServiceProvider = params['InternetServiceProvider']
          @Bandwidth = params['Bandwidth']
          @PayMode = params['PayMode']
        end
      end

      # ip地址相关信息结构体。
      class AddressInfo < TencentCloud::Common::AbstractModel
        # @param PublicIPAddressInfo: 实例的外网ip相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIPAddressInfo: :class:`Tencentcloud::Ecm.v20190719.models.PublicIPAddressInfo`
        # @param PrivateIPAddressInfo: 实例的内网ip相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIPAddressInfo: :class:`Tencentcloud::Ecm.v20190719.models.PrivateIPAddressInfo`
        # @param PublicIPv6AddressInfo: 实例的外网ipv6相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIPv6AddressInfo: :class:`Tencentcloud::Ecm.v20190719.models.PublicIPAddressInfo`

        attr_accessor :PublicIPAddressInfo, :PrivateIPAddressInfo, :PublicIPv6AddressInfo

        def initialize(publicipaddressinfo=nil, privateipaddressinfo=nil, publicipv6addressinfo=nil)
          @PublicIPAddressInfo = publicipaddressinfo
          @PrivateIPAddressInfo = privateipaddressinfo
          @PublicIPv6AddressInfo = publicipv6addressinfo
        end

        def deserialize(params)
          unless params['PublicIPAddressInfo'].nil?
            @PublicIPAddressInfo = PublicIPAddressInfo.new
            @PublicIPAddressInfo.deserialize(params['PublicIPAddressInfo'])
          end
          unless params['PrivateIPAddressInfo'].nil?
            @PrivateIPAddressInfo = PrivateIPAddressInfo.new
            @PrivateIPAddressInfo.deserialize(params['PrivateIPAddressInfo'])
          end
          unless params['PublicIPv6AddressInfo'].nil?
            @PublicIPv6AddressInfo = PublicIPAddressInfo.new
            @PublicIPv6AddressInfo.deserialize(params['PublicIPv6AddressInfo'])
          end
        end
      end

      # IP地址模板
      class AddressTemplateSpecification < TencentCloud::Common::AbstractModel
        # @param AddressId: IP地址ID，例如：eipm-2uw6ujo6。
        # @type AddressId: String
        # @param AddressGroupId: IP地址组ID，例如：eipmg-2uw6ujo6。
        # @type AddressGroupId: String

        attr_accessor :AddressId, :AddressGroupId

        def initialize(addressid=nil, addressgroupid=nil)
          @AddressId = addressid
          @AddressGroupId = addressgroupid
        end

        def deserialize(params)
          @AddressId = params['AddressId']
          @AddressGroupId = params['AddressGroupId']
        end
      end

      # AllocateAddresses请求参数结构体
      class AllocateAddressesRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param AddressCount: EIP数量。默认值：1。
        # @type AddressCount: Integer
        # @param InternetServiceProvider: CMCC：中国移动
        # CTCC：中国电信
        # CUCC：中国联通
        # @type InternetServiceProvider: String
        # @param InternetMaxBandwidthOut: 1 Mbps 至 5000 Mbps，默认值：1 Mbps。
        # @type InternetMaxBandwidthOut: Integer
        # @param Tags: 需要关联的标签列表。
        # @type Tags: Array
        # @param InstanceId: 要绑定的实例 ID。
        # @type InstanceId: String
        # @param NetworkInterfaceId: 要绑定的弹性网卡 ID。 弹性网卡 ID 形如：eni-11112222。NetworkInterfaceId 与 InstanceId 不可同时指定。弹性网卡 ID 可通过DescribeNetworkInterfaces接口返回值中的networkInterfaceId获取。
        # @type NetworkInterfaceId: String
        # @param PrivateIpAddress: 要绑定的内网 IP。如果指定了 NetworkInterfaceId 则也必须指定 PrivateIpAddress ，表示将 EIP 绑定到指定弹性网卡的指定内网 IP 上。同时要确保指定的 PrivateIpAddress 是指定的 NetworkInterfaceId 上的一个内网 IP。指定弹性网卡的内网 IP 可通过DescribeNetworkInterfaces接口返回值中的privateIpAddress获取。
        # @type PrivateIpAddress: String

        attr_accessor :EcmRegion, :AddressCount, :InternetServiceProvider, :InternetMaxBandwidthOut, :Tags, :InstanceId, :NetworkInterfaceId, :PrivateIpAddress

        def initialize(ecmregion=nil, addresscount=nil, internetserviceprovider=nil, internetmaxbandwidthout=nil, tags=nil, instanceid=nil, networkinterfaceid=nil, privateipaddress=nil)
          @EcmRegion = ecmregion
          @AddressCount = addresscount
          @InternetServiceProvider = internetserviceprovider
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @Tags = tags
          @InstanceId = instanceid
          @NetworkInterfaceId = networkinterfaceid
          @PrivateIpAddress = privateipaddress
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @AddressCount = params['AddressCount']
          @InternetServiceProvider = params['InternetServiceProvider']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @InstanceId = params['InstanceId']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @PrivateIpAddress = params['PrivateIpAddress']
        end
      end

      # AllocateAddresses返回参数结构体
      class AllocateAddressesResponse < TencentCloud::Common::AbstractModel
        # @param AddressSet: 申请到的 EIP 的唯一 ID 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressSet: Array
        # @param TaskId: 异步任务TaskId。可以使用DescribeTaskResult接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressSet, :TaskId, :RequestId

        def initialize(addressset=nil, taskid=nil, requestid=nil)
          @AddressSet = addressset
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @AddressSet = params['AddressSet']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # AllocateIpv6AddressesBandwidth请求参数结构体
      class AllocateIpv6AddressesBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域。
        # @type EcmRegion: String
        # @param Ipv6Addresses: 需要开通公网访问能力的IPV6地址。
        # @type Ipv6Addresses: Array
        # @param InternetMaxBandwidthOut: 带宽，单位Mbps，默认是1Mbps。
        # @type InternetMaxBandwidthOut: Integer
        # @param InternetChargeType: 网络计费模式，当前支持 BANDWIDTH_PACKAGE。
        # @type InternetChargeType: String

        attr_accessor :EcmRegion, :Ipv6Addresses, :InternetMaxBandwidthOut, :InternetChargeType

        def initialize(ecmregion=nil, ipv6addresses=nil, internetmaxbandwidthout=nil, internetchargetype=nil)
          @EcmRegion = ecmregion
          @Ipv6Addresses = ipv6addresses
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @InternetChargeType = internetchargetype
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @Ipv6Addresses = params['Ipv6Addresses']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @InternetChargeType = params['InternetChargeType']
        end
      end

      # AllocateIpv6AddressesBandwidth返回参数结构体
      class AllocateIpv6AddressesBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param AddressSet: 弹性公网 IPV6 的唯一 ID 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressSet: Array
        # @param TaskId: 异步任务TaskId。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AddressSet, :TaskId, :RequestId

        def initialize(addressset=nil, taskid=nil, requestid=nil)
          @AddressSet = addressset
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @AddressSet = params['AddressSet']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 区域信息
      class Area < TencentCloud::Common::AbstractModel
        # @param AreaId: 区域ID
        # @type AreaId: String
        # @param AreaName: 区域名称
        # @type AreaName: String

        attr_accessor :AreaId, :AreaName

        def initialize(areaid=nil, areaname=nil)
          @AreaId = areaid
          @AreaName = areaname
        end

        def deserialize(params)
          @AreaId = params['AreaId']
          @AreaName = params['AreaName']
        end
      end

      # AssignIpv6Addresses请求参数结构体
      class AssignIpv6AddressesRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param NetworkInterfaceId: 弹性网卡实例ID，形如：eni-1snva0vd。目前只支持主网卡上分配。
        # @type NetworkInterfaceId: String
        # @param Ipv6Addresses: 指定的IPv6地址列表，单次最多指定10个。与入参Ipv6AddressCount合并计算配额。与Ipv6AddressCount必填一个。
        # @type Ipv6Addresses: Array
        # @param Ipv6AddressCount: 自动分配IPv6地址个数，内网IP地址个数总和不能超过配数。与入参Ipv6Addresses合并计算配额。与Ipv6Addresses必填一个。
        # @type Ipv6AddressCount: Integer
        # @param ISPType: ipv6运营商如下：
        # CTCC：中国电信
        # CUCC：中国联通
        # CMCC：中国移动
        # @type ISPType: String
        # @param SkipCheckIPv6Address: 是否跳过校验一个网卡只能分配一个IPv6 CIDR。该字段通常为true（用于兼容存量子机只有一个地址的情形）。
        # @type SkipCheckIPv6Address: Boolean
        # @param SkipAllocateBandwidth: 是否跳过自动开通公网带宽。通常为true(根据运营系统的用户配置来决定是否自动开通，以支持当前子机购买时的行为）。
        # @type SkipAllocateBandwidth: Boolean
        # @param Ipv6ISP: 该字段没有使用（已过期）。
        # @type Ipv6ISP: String

        attr_accessor :EcmRegion, :NetworkInterfaceId, :Ipv6Addresses, :Ipv6AddressCount, :ISPType, :SkipCheckIPv6Address, :SkipAllocateBandwidth, :Ipv6ISP
        extend Gem::Deprecate
        deprecate :Ipv6ISP, :none, 2023, 11
        deprecate :Ipv6ISP=, :none, 2023, 11

        def initialize(ecmregion=nil, networkinterfaceid=nil, ipv6addresses=nil, ipv6addresscount=nil, isptype=nil, skipcheckipv6address=nil, skipallocatebandwidth=nil, ipv6isp=nil)
          @EcmRegion = ecmregion
          @NetworkInterfaceId = networkinterfaceid
          @Ipv6Addresses = ipv6addresses
          @Ipv6AddressCount = ipv6addresscount
          @ISPType = isptype
          @SkipCheckIPv6Address = skipcheckipv6address
          @SkipAllocateBandwidth = skipallocatebandwidth
          @Ipv6ISP = ipv6isp
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['Ipv6Addresses'].nil?
            @Ipv6Addresses = []
            params['Ipv6Addresses'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6Addresses << ipv6address_tmp
            end
          end
          @Ipv6AddressCount = params['Ipv6AddressCount']
          @ISPType = params['ISPType']
          @SkipCheckIPv6Address = params['SkipCheckIPv6Address']
          @SkipAllocateBandwidth = params['SkipAllocateBandwidth']
          @Ipv6ISP = params['Ipv6ISP']
        end
      end

      # AssignIpv6Addresses返回参数结构体
      class AssignIpv6AddressesResponse < TencentCloud::Common::AbstractModel
        # @param Ipv6AddressSet: 分配给弹性网卡的IPv6地址列表。
        # @type Ipv6AddressSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ipv6AddressSet, :RequestId

        def initialize(ipv6addressset=nil, requestid=nil)
          @Ipv6AddressSet = ipv6addressset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ipv6AddressSet'].nil?
            @Ipv6AddressSet = []
            params['Ipv6AddressSet'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6AddressSet << ipv6address_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AssignIpv6CidrBlock请求参数结构体
      class AssignIpv6CidrBlockRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        # @type VpcId: String
        # @param ISPType: 网络运营商类型 'CMCC'-中国移动, 'CTCC'-中国电信, 'CUCC'-中国联调
        # @type ISPType: String
        # @param EcmRegion: ECM地域。
        # @type EcmRegion: String

        attr_accessor :VpcId, :ISPType, :EcmRegion

        def initialize(vpcid=nil, isptype=nil, ecmregion=nil)
          @VpcId = vpcid
          @ISPType = isptype
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @ISPType = params['ISPType']
          @EcmRegion = params['EcmRegion']
        end
      end

      # AssignIpv6CidrBlock返回参数结构体
      class AssignIpv6CidrBlockResponse < TencentCloud::Common::AbstractModel
        # @param Ipv6CidrBlock: 分配的 `IPv6` 网段。形如：`3402:4e00:20:1000::/56`。
        # @type Ipv6CidrBlock: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ipv6CidrBlock, :RequestId

        def initialize(ipv6cidrblock=nil, requestid=nil)
          @Ipv6CidrBlock = ipv6cidrblock
          @RequestId = requestid
        end

        def deserialize(params)
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
          @RequestId = params['RequestId']
        end
      end

      # AssignIpv6CidrBlocks请求参数结构体
      class AssignIpv6CidrBlocksRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: `VPC`实例`ID`，形如：`vpc-f49l6u0z`。
        # @type VpcId: String
        # @param ISPTypes: 网络运营商类型 取值范围:'CMCC'-中国移动, 'CTCC'-中国电信, 'CUCC'-中国联调
        # @type ISPTypes: Array
        # @param EcmRegion: ECM地域。
        # @type EcmRegion: String

        attr_accessor :VpcId, :ISPTypes, :EcmRegion

        def initialize(vpcid=nil, isptypes=nil, ecmregion=nil)
          @VpcId = vpcid
          @ISPTypes = isptypes
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          unless params['ISPTypes'].nil?
            @ISPTypes = []
            params['ISPTypes'].each do |i|
              isptypeitem_tmp = ISPTypeItem.new
              isptypeitem_tmp.deserialize(i)
              @ISPTypes << isptypeitem_tmp
            end
          end
          @EcmRegion = params['EcmRegion']
        end
      end

      # AssignIpv6CidrBlocks返回参数结构体
      class AssignIpv6CidrBlocksResponse < TencentCloud::Common::AbstractModel
        # @param IPv6CidrBlockSet: IPv6网段和所属运营商。
        # @type IPv6CidrBlockSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IPv6CidrBlockSet, :RequestId

        def initialize(ipv6cidrblockset=nil, requestid=nil)
          @IPv6CidrBlockSet = ipv6cidrblockset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IPv6CidrBlockSet'].nil?
            @IPv6CidrBlockSet = []
            params['IPv6CidrBlockSet'].each do |i|
              ispipv6cidrblock_tmp = ISPIPv6CidrBlock.new
              ispipv6cidrblock_tmp.deserialize(i)
              @IPv6CidrBlockSet << ispipv6cidrblock_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AssignIpv6SubnetCidrBlock请求参数结构体
      class AssignIpv6SubnetCidrBlockRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 子网所在私有网络`ID`。形如：`vpc-f49l6u0z`。
        # @type VpcId: String
        # @param Ipv6SubnetCidrBlocks: 分配 `IPv6` 子网段列表。
        # @type Ipv6SubnetCidrBlocks: Array
        # @param EcmRegion: ECM地域。
        # @type EcmRegion: String

        attr_accessor :VpcId, :Ipv6SubnetCidrBlocks, :EcmRegion

        def initialize(vpcid=nil, ipv6subnetcidrblocks=nil, ecmregion=nil)
          @VpcId = vpcid
          @Ipv6SubnetCidrBlocks = ipv6subnetcidrblocks
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          unless params['Ipv6SubnetCidrBlocks'].nil?
            @Ipv6SubnetCidrBlocks = []
            params['Ipv6SubnetCidrBlocks'].each do |i|
              ipv6subnetcidrblock_tmp = Ipv6SubnetCidrBlock.new
              ipv6subnetcidrblock_tmp.deserialize(i)
              @Ipv6SubnetCidrBlocks << ipv6subnetcidrblock_tmp
            end
          end
          @EcmRegion = params['EcmRegion']
        end
      end

      # AssignIpv6SubnetCidrBlock返回参数结构体
      class AssignIpv6SubnetCidrBlockResponse < TencentCloud::Common::AbstractModel
        # @param Ipv6SubnetCidrBlockSet: 分配 `IPv6` 子网段列表。
        # @type Ipv6SubnetCidrBlockSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ipv6SubnetCidrBlockSet, :RequestId

        def initialize(ipv6subnetcidrblockset=nil, requestid=nil)
          @Ipv6SubnetCidrBlockSet = ipv6subnetcidrblockset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ipv6SubnetCidrBlockSet'].nil?
            @Ipv6SubnetCidrBlockSet = []
            params['Ipv6SubnetCidrBlockSet'].each do |i|
              ipv6subnetcidrblock_tmp = Ipv6SubnetCidrBlock.new
              ipv6subnetcidrblock_tmp.deserialize(i)
              @Ipv6SubnetCidrBlockSet << ipv6subnetcidrblock_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # AssignPrivateIpAddresses请求参数结构体
      class AssignPrivateIpAddressesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param EcmRegion: ECM 地域，形如ap-xian-ecm。
        # @type EcmRegion: String
        # @param PrivateIpAddresses: 指定的内网IP信息，单次最多指定10个。与SecondaryPrivateIpAddressCount至少提供一个。
        # @type PrivateIpAddresses: Array
        # @param SecondaryPrivateIpAddressCount: 新申请的内网IP地址个数，与PrivateIpAddresses至少提供一个。内网IP地址个数总和不能超过配额数
        # @type SecondaryPrivateIpAddressCount: Integer

        attr_accessor :NetworkInterfaceId, :EcmRegion, :PrivateIpAddresses, :SecondaryPrivateIpAddressCount

        def initialize(networkinterfaceid=nil, ecmregion=nil, privateipaddresses=nil, secondaryprivateipaddresscount=nil)
          @NetworkInterfaceId = networkinterfaceid
          @EcmRegion = ecmregion
          @PrivateIpAddresses = privateipaddresses
          @SecondaryPrivateIpAddressCount = secondaryprivateipaddresscount
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @EcmRegion = params['EcmRegion']
          unless params['PrivateIpAddresses'].nil?
            @PrivateIpAddresses = []
            params['PrivateIpAddresses'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddresses << privateipaddressspecification_tmp
            end
          end
          @SecondaryPrivateIpAddressCount = params['SecondaryPrivateIpAddressCount']
        end
      end

      # AssignPrivateIpAddresses返回参数结构体
      class AssignPrivateIpAddressesResponse < TencentCloud::Common::AbstractModel
        # @param PrivateIpAddressSet: 内网IP详细信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIpAddressSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PrivateIpAddressSet, :RequestId

        def initialize(privateipaddressset=nil, requestid=nil)
          @PrivateIpAddressSet = privateipaddressset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PrivateIpAddressSet'].nil?
            @PrivateIpAddressSet = []
            params['PrivateIpAddressSet'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddressSet << privateipaddressspecification_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # VPC辅助CIDR信息。
      class AssistantCidr < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。形如：vpc-6v2ht8q5
        # @type VpcId: String
        # @param CidrBlock: 辅助CIDR。形如：172.16.0.0/16
        # @type CidrBlock: String
        # @param AssistantType: 辅助CIDR类型（0：普通辅助CIDR，1：容器辅助CIDR），默认都是0。
        # @type AssistantType: Integer
        # @param SubnetSet: 辅助CIDR拆分的子网。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetSet: Array

        attr_accessor :VpcId, :CidrBlock, :AssistantType, :SubnetSet

        def initialize(vpcid=nil, cidrblock=nil, assistanttype=nil, subnetset=nil)
          @VpcId = vpcid
          @CidrBlock = cidrblock
          @AssistantType = assistanttype
          @SubnetSet = subnetset
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @CidrBlock = params['CidrBlock']
          @AssistantType = params['AssistantType']
          unless params['SubnetSet'].nil?
            @SubnetSet = []
            params['SubnetSet'].each do |i|
              subnet_tmp = Subnet.new
              subnet_tmp.deserialize(i)
              @SubnetSet << subnet_tmp
            end
          end
        end
      end

      # AssociateAddress请求参数结构体
      class AssociateAddressRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param AddressId: 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：eip-11112222。
        # @type AddressId: String
        # @param InstanceId: 要绑定的实例 ID。
        # @type InstanceId: String
        # @param NetworkInterfaceId: 要绑定的弹性网卡 ID。 弹性网卡 ID 形如：eni-11112222。NetworkInterfaceId 与 InstanceId 不可同时指定。弹性网卡 ID 可通过DescribeNetworkInterfaces接口返回值中的networkInterfaceId获取。
        # @type NetworkInterfaceId: String
        # @param PrivateIpAddress: 要绑定的内网 IP。如果指定了 NetworkInterfaceId 则也必须指定 PrivateIpAddress ，表示将 EIP 绑定到指定弹性网卡的指定内网 IP 上。同时要确保指定的 PrivateIpAddress 是指定的 NetworkInterfaceId 上的一个内网 IP。指定弹性网卡的内网 IP 可通过DescribeNetworkInterfaces接口返回值中的privateIpAddress获取。
        # @type PrivateIpAddress: String

        attr_accessor :EcmRegion, :AddressId, :InstanceId, :NetworkInterfaceId, :PrivateIpAddress

        def initialize(ecmregion=nil, addressid=nil, instanceid=nil, networkinterfaceid=nil, privateipaddress=nil)
          @EcmRegion = ecmregion
          @AddressId = addressid
          @InstanceId = instanceid
          @NetworkInterfaceId = networkinterfaceid
          @PrivateIpAddress = privateipaddress
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @AddressId = params['AddressId']
          @InstanceId = params['InstanceId']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @PrivateIpAddress = params['PrivateIpAddress']
        end
      end

      # AssociateAddress返回参数结构体
      class AssociateAddressResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。可以使用DescribeTaskResult接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # AssociateSecurityGroups请求参数结构体
      class AssociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 要绑定的安全组ID，类似esg-efil73jd，只支持绑定单个安全组。
        # @type SecurityGroupIds: Array
        # @param InstanceIds: 被绑定的实例ID，类似ein-lesecurk，支持指定多个实例，每次请求批量实例的上限为100。
        # @type InstanceIds: Array

        attr_accessor :SecurityGroupIds, :InstanceIds

        def initialize(securitygroupids=nil, instanceids=nil)
          @SecurityGroupIds = securitygroupids
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
          @InstanceIds = params['InstanceIds']
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

      # AttachNetworkInterface请求参数结构体
      class AttachNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param InstanceId: 实例ID。形如：ein-r8hr2upy。
        # @type InstanceId: String
        # @param EcmRegion: ECM 地域，形如ap-xian-ecm。
        # @type EcmRegion: String

        attr_accessor :NetworkInterfaceId, :InstanceId, :EcmRegion

        def initialize(networkinterfaceid=nil, instanceid=nil, ecmregion=nil)
          @NetworkInterfaceId = networkinterfaceid
          @InstanceId = instanceid
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @InstanceId = params['InstanceId']
          @EcmRegion = params['EcmRegion']
        end
      end

      # AttachNetworkInterface返回参数结构体
      class AttachNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
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

      # 负责均衡后端信息
      class Backend < TencentCloud::Common::AbstractModel
        # @param InstanceId: 后端服务的唯一 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param Port: 后端服务的监听端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Weight: 后端服务的转发权重，取值范围：[0, 100]，默认为 10。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param PrivateIpAddresses: 后端服务的内网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIpAddresses: Array
        # @param RegisteredTime: 后端服务被绑定的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegisteredTime: String
        # @param EniId: 弹性网卡唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EniId: String
        # @param PublicIpAddresses: 后端服务的外网 IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIpAddresses: Array
        # @param InstanceName: 后端服务的实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String

        attr_accessor :InstanceId, :Port, :Weight, :PrivateIpAddresses, :RegisteredTime, :EniId, :PublicIpAddresses, :InstanceName

        def initialize(instanceid=nil, port=nil, weight=nil, privateipaddresses=nil, registeredtime=nil, eniid=nil, publicipaddresses=nil, instancename=nil)
          @InstanceId = instanceid
          @Port = port
          @Weight = weight
          @PrivateIpAddresses = privateipaddresses
          @RegisteredTime = registeredtime
          @EniId = eniid
          @PublicIpAddresses = publicipaddresses
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Port = params['Port']
          @Weight = params['Weight']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @RegisteredTime = params['RegisteredTime']
          @EniId = params['EniId']
          @PublicIpAddresses = params['PublicIpAddresses']
          @InstanceName = params['InstanceName']
        end
      end

      # BatchDeregisterTargets请求参数结构体
      class BatchDeregisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID
        # @type LoadBalancerId: String
        # @param Targets: 解绑目标
        # @type Targets: Array

        attr_accessor :LoadBalancerId, :Targets

        def initialize(loadbalancerid=nil, targets=nil)
          @LoadBalancerId = loadbalancerid
          @Targets = targets
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              batchtarget_tmp = BatchTarget.new
              batchtarget_tmp.deserialize(i)
              @Targets << batchtarget_tmp
            end
          end
        end
      end

      # BatchDeregisterTargets返回参数结构体
      class BatchDeregisterTargetsResponse < TencentCloud::Common::AbstractModel
        # @param FailListenerIdSet: 解绑失败的监听器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailListenerIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailListenerIdSet, :RequestId

        def initialize(faillisteneridset=nil, requestid=nil)
          @FailListenerIdSet = faillisteneridset
          @RequestId = requestid
        end

        def deserialize(params)
          @FailListenerIdSet = params['FailListenerIdSet']
          @RequestId = params['RequestId']
        end
      end

      # BatchModifyTargetWeight请求参数结构体
      class BatchModifyTargetWeightRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param ModifyList: 要批量修改权重的列表
        # @type ModifyList: Array

        attr_accessor :LoadBalancerId, :ModifyList

        def initialize(loadbalancerid=nil, modifylist=nil)
          @LoadBalancerId = loadbalancerid
          @ModifyList = modifylist
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['ModifyList'].nil?
            @ModifyList = []
            params['ModifyList'].each do |i|
              targetsweightrule_tmp = TargetsWeightRule.new
              targetsweightrule_tmp.deserialize(i)
              @ModifyList << targetsweightrule_tmp
            end
          end
        end
      end

      # BatchModifyTargetWeight返回参数结构体
      class BatchModifyTargetWeightResponse < TencentCloud::Common::AbstractModel
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

      # BatchRegisterTargets请求参数结构体
      class BatchRegisterTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡ID
        # @type LoadBalancerId: String
        # @param Targets: 绑定目标
        # @type Targets: Array

        attr_accessor :LoadBalancerId, :Targets

        def initialize(loadbalancerid=nil, targets=nil)
          @LoadBalancerId = loadbalancerid
          @Targets = targets
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              batchtarget_tmp = BatchTarget.new
              batchtarget_tmp.deserialize(i)
              @Targets << batchtarget_tmp
            end
          end
        end
      end

      # BatchRegisterTargets返回参数结构体
      class BatchRegisterTargetsResponse < TencentCloud::Common::AbstractModel
        # @param FailListenerIdSet: 绑定失败的监听器ID，如为空表示全部绑定成功。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailListenerIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FailListenerIdSet, :RequestId

        def initialize(faillisteneridset=nil, requestid=nil)
          @FailListenerIdSet = faillisteneridset
          @RequestId = requestid
        end

        def deserialize(params)
          @FailListenerIdSet = params['FailListenerIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 负责均衡批量目标项
      class BatchTarget < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param Port: 绑定端口
        # @type Port: Integer
        # @param InstanceId: 子机ID
        # @type InstanceId: String
        # @param EniIp: 弹性网卡ip
        # @type EniIp: String
        # @param Weight: 子机权重，范围[0, 100]。绑定时如果不存在，则默认为10。
        # @type Weight: Integer

        attr_accessor :ListenerId, :Port, :InstanceId, :EniIp, :Weight

        def initialize(listenerid=nil, port=nil, instanceid=nil, eniip=nil, weight=nil)
          @ListenerId = listenerid
          @Port = port
          @InstanceId = instanceid
          @EniIp = eniip
          @Weight = weight
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Port = params['Port']
          @InstanceId = params['InstanceId']
          @EniIp = params['EniIp']
          @Weight = params['Weight']
        end
      end

      # 城市信息
      class City < TencentCloud::Common::AbstractModel
        # @param CityId: 城市ID
        # @type CityId: String
        # @param CityName: 城市名称
        # @type CityName: String

        attr_accessor :CityId, :CityName

        def initialize(cityid=nil, cityname=nil)
          @CityId = cityid
          @CityName = cityname
        end

        def deserialize(params)
          @CityId = params['CityId']
          @CityName = params['CityName']
        end
      end

      # 国家信息
      class Country < TencentCloud::Common::AbstractModel
        # @param CountryId: 国家ID
        # @type CountryId: String
        # @param CountryName: 国家名称
        # @type CountryName: String

        attr_accessor :CountryId, :CountryName

        def initialize(countryid=nil, countryname=nil)
          @CountryId = countryid
          @CountryName = countryname
        end

        def deserialize(params)
          @CountryId = params['CountryId']
          @CountryName = params['CountryName']
        end
      end

      # CreateDisks请求参数结构体
      class CreateDisksRequest < TencentCloud::Common::AbstractModel
        # @param Placement: 实例所在的位置。通过该参数可以指定实例所属可用区，所属项目。若不指定项目，将在默认项目下进行创建。
        # @type Placement: :class:`Tencentcloud::Ecm.v20190719.models.Placement`
        # @param DiskChargeType: 云硬盘计费类型。<br><li>PREPAID：预付费，即包年包月<br><li>POSTPAID_BY_HOUR：按小时后付费<br><li>CDCPAID：独享集群付费<br>各类型价格请参考云硬盘[价格总览](/document/product/362/2413)。
        # @type DiskChargeType: String
        # @param DiskType: 硬盘介质类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘<br><li>CLOUD_HSSD：表示增强型SSD云硬盘<br><li>CLOUD_TSSD：表示极速型SSD云硬盘。
        # @type DiskType: String
        # @param DiskName: 云盘显示名称。不传则默认为“未命名”。最大长度不能超60个字节。
        # @type DiskName: String
        # @param Tags: 云盘绑定的标签。
        # @type Tags: Array
        # @param DiskChargePrepaid: 预付费模式，即包年包月相关参数设置。通过该参数指定包年包月云盘的购买时长、是否设置自动续费等属性。<br>创建预付费云盘该参数必传，创建按小时后付费云盘无需传该参数。
        # @type DiskChargePrepaid: :class:`Tencentcloud::Ecm.v20190719.models.DiskChargePrepaid`
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
        # @param SnapshotId: 快照ID，如果传入则根据此快照创建云硬盘，快照类型必须为数据盘快照，可通过[DescribeSnapshots](/document/product/362/15647)接口查询快照，见输出参数DiskUsage解释。
        # @type SnapshotId: String

        attr_accessor :Placement, :DiskChargeType, :DiskType, :DiskName, :Tags, :DiskChargePrepaid, :DiskCount, :ThroughputPerformance, :DiskSize, :Shareable, :ClientToken, :Encrypt, :SnapshotId

        def initialize(placement=nil, diskchargetype=nil, disktype=nil, diskname=nil, tags=nil, diskchargeprepaid=nil, diskcount=nil, throughputperformance=nil, disksize=nil, shareable=nil, clienttoken=nil, encrypt=nil, snapshotid=nil)
          @Placement = placement
          @DiskChargeType = diskchargetype
          @DiskType = disktype
          @DiskName = diskname
          @Tags = tags
          @DiskChargePrepaid = diskchargeprepaid
          @DiskCount = diskcount
          @ThroughputPerformance = throughputperformance
          @DiskSize = disksize
          @Shareable = shareable
          @ClientToken = clienttoken
          @Encrypt = encrypt
          @SnapshotId = snapshotid
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
          unless params['DiskChargePrepaid'].nil?
            @DiskChargePrepaid = DiskChargePrepaid.new
            @DiskChargePrepaid.deserialize(params['DiskChargePrepaid'])
          end
          @DiskCount = params['DiskCount']
          @ThroughputPerformance = params['ThroughputPerformance']
          @DiskSize = params['DiskSize']
          @Shareable = params['Shareable']
          @ClientToken = params['ClientToken']
          @Encrypt = params['Encrypt']
          @SnapshotId = params['SnapshotId']
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

      # CreateHaVip请求参数结构体
      class CreateHaVipRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: HAVIP所在私有网络ID。
        # @type VpcId: String
        # @param SubnetId: HAVIP所在子网ID。
        # @type SubnetId: String
        # @param HaVipName: HAVIP名称。
        # @type HaVipName: String
        # @param Vip: 指定虚拟IP地址，必须在VPC网段内且未被占用。不指定则自动分配。
        # @type Vip: String

        attr_accessor :VpcId, :SubnetId, :HaVipName, :Vip

        def initialize(vpcid=nil, subnetid=nil, havipname=nil, vip=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @HaVipName = havipname
          @Vip = vip
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @HaVipName = params['HaVipName']
          @Vip = params['Vip']
        end
      end

      # CreateHaVip返回参数结构体
      class CreateHaVipResponse < TencentCloud::Common::AbstractModel
        # @param HaVip: HAVIP对象。
        # @type HaVip: :class:`Tencentcloud::Ecm.v20190719.models.HaVip`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :HaVip, :RequestId

        def initialize(havip=nil, requestid=nil)
          @HaVip = havip
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['HaVip'].nil?
            @HaVip = HaVip.new
            @HaVip.deserialize(params['HaVip'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateImage请求参数结构体
      class CreateImageRequest < TencentCloud::Common::AbstractModel
        # @param ImageName: 镜像名称。
        # @type ImageName: String
        # @param InstanceId: 需要制作镜像的实例ID。
        # @type InstanceId: String
        # @param ImageDescription: 镜像描述。
        # @type ImageDescription: String
        # @param ForcePoweroff: 是否执行强制关机以制作镜像。取值范围：
        # TRUE：表示自动关机后制作镜像
        # FALSE：表示开机状态制作，目前不支持，需要先手动关机
        # 默认取值：FALSE。
        # @type ForcePoweroff: String

        attr_accessor :ImageName, :InstanceId, :ImageDescription, :ForcePoweroff

        def initialize(imagename=nil, instanceid=nil, imagedescription=nil, forcepoweroff=nil)
          @ImageName = imagename
          @InstanceId = instanceid
          @ImageDescription = imagedescription
          @ForcePoweroff = forcepoweroff
        end

        def deserialize(params)
          @ImageName = params['ImageName']
          @InstanceId = params['InstanceId']
          @ImageDescription = params['ImageDescription']
          @ForcePoweroff = params['ForcePoweroff']
        end
      end

      # CreateImage返回参数结构体
      class CreateImageResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateKeyPair请求参数结构体
      class CreateKeyPairRequest < TencentCloud::Common::AbstractModel
        # @param KeyName: 密钥对名称，可由数字，字母和下划线组成，长度不超过25个字符。
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
        # @type KeyPair: :class:`Tencentcloud::Ecm.v20190719.models.KeyPair`
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

      # CreateListener请求参数结构体
      class CreateListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param Ports: 要将监听器创建到哪些端口，每个端口对应一个新的监听器
        # @type Ports: Array
        # @param Protocol: 监听器协议： TCP | UDP
        # @type Protocol: String
        # @param ListenerNames: 要创建的监听器名称列表，名称与Ports数组按序一一对应，如不需立即命名，则无需提供此参数
        # @type ListenerNames: Array
        # @param HealthCheck: 健康检查相关参数
        # @type HealthCheck: :class:`Tencentcloud::Ecm.v20190719.models.HealthCheck`
        # @param SessionExpireTime: 会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。此参数仅适用于TCP/UDP监听器。
        # @type SessionExpireTime: Integer
        # @param Scheduler: 监听器转发的方式。可选值：WRR、LEAST_CONN
        # 分别表示按权重轮询、最小连接数， 默认为 WRR。
        # @type Scheduler: String
        # @param SessionType: 会话保持类型。不传或传NORMAL表示默认会话保持类型。QUIC_CID 表示根据Quic Connection ID做会话保持。QUIC_CID只支持UDP协议。
        # @type SessionType: String
        # @param EndPorts: 批量端口段的结束端口，必须和Ports长度一样。
        # @type EndPorts: Array

        attr_accessor :LoadBalancerId, :Ports, :Protocol, :ListenerNames, :HealthCheck, :SessionExpireTime, :Scheduler, :SessionType, :EndPorts

        def initialize(loadbalancerid=nil, ports=nil, protocol=nil, listenernames=nil, healthcheck=nil, sessionexpiretime=nil, scheduler=nil, sessiontype=nil, endports=nil)
          @LoadBalancerId = loadbalancerid
          @Ports = ports
          @Protocol = protocol
          @ListenerNames = listenernames
          @HealthCheck = healthcheck
          @SessionExpireTime = sessionexpiretime
          @Scheduler = scheduler
          @SessionType = sessiontype
          @EndPorts = endports
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @Ports = params['Ports']
          @Protocol = params['Protocol']
          @ListenerNames = params['ListenerNames']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @SessionExpireTime = params['SessionExpireTime']
          @Scheduler = params['Scheduler']
          @SessionType = params['SessionType']
          @EndPorts = params['EndPorts']
        end
      end

      # CreateListener返回参数结构体
      class CreateListenerResponse < TencentCloud::Common::AbstractModel
        # @param ListenerIds: 创建的监听器的唯一标识数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerIds, :RequestId

        def initialize(listenerids=nil, requestid=nil)
          @ListenerIds = listenerids
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerIds = params['ListenerIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadBalancer请求参数结构体
      class CreateLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM区域，形如ap-xian-ecm。
        # @type EcmRegion: String
        # @param LoadBalancerType: 负载均衡实例的网络类型。目前只支持传入OPEN，表示公网属性。
        # @type LoadBalancerType: String
        # @param VipIsp: CMCC | CTCC | CUCC，分别对应 移动 | 电信 | 联通。
        # @type VipIsp: String
        # @param LoadBalancerName: 负载均衡实例的名称，只在创建一个实例的时候才会生效。规则：1-50 个英文、汉字、数字、连接线“-”或下划线“_”。
        # 注意：如果名称与系统中已有负载均衡实例的名称相同，则系统将会自动生成此次创建的负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param VpcId: 负载均衡后端目标设备所属的网络 ID，如vpc-12345678。
        # @type VpcId: String
        # @param Number: 创建负载均衡的个数，默认值 1。
        # @type Number: Integer
        # @param InternetAccessible: 负载均衡的带宽限制等信息。
        # @type InternetAccessible: :class:`Tencentcloud::Ecm.v20190719.models.LoadBalancerInternetAccessible`
        # @param Tags: 标签。
        # @type Tags: Array
        # @param SecurityGroups: 安全组。
        # @type SecurityGroups: Array
        # @param AddressIPVersion: 仅适用于公网负载均衡。IP版本，可取值：IPV4、IPv6FullChain，默认值 IPV4。说明：取值为IPv6FullChain，表示为IPv6版本。
        # @type AddressIPVersion: String
        # @param SubnetId: 在购买IPV6负载均衡实例的情况下，必须指定子网 ID, 此参数必填。
        # @type SubnetId: String

        attr_accessor :EcmRegion, :LoadBalancerType, :VipIsp, :LoadBalancerName, :VpcId, :Number, :InternetAccessible, :Tags, :SecurityGroups, :AddressIPVersion, :SubnetId

        def initialize(ecmregion=nil, loadbalancertype=nil, vipisp=nil, loadbalancername=nil, vpcid=nil, number=nil, internetaccessible=nil, tags=nil, securitygroups=nil, addressipversion=nil, subnetid=nil)
          @EcmRegion = ecmregion
          @LoadBalancerType = loadbalancertype
          @VipIsp = vipisp
          @LoadBalancerName = loadbalancername
          @VpcId = vpcid
          @Number = number
          @InternetAccessible = internetaccessible
          @Tags = tags
          @SecurityGroups = securitygroups
          @AddressIPVersion = addressipversion
          @SubnetId = subnetid
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @LoadBalancerType = params['LoadBalancerType']
          @VipIsp = params['VipIsp']
          @LoadBalancerName = params['LoadBalancerName']
          @VpcId = params['VpcId']
          @Number = params['Number']
          unless params['InternetAccessible'].nil?
            @InternetAccessible = LoadBalancerInternetAccessible.new
            @InternetAccessible.deserialize(params['InternetAccessible'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @SecurityGroups = params['SecurityGroups']
          @AddressIPVersion = params['AddressIPVersion']
          @SubnetId = params['SubnetId']
        end
      end

      # CreateLoadBalancer返回参数结构体
      class CreateLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 由负载均衡实例ID组成的数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancerIds, :RequestId

        def initialize(loadbalancerids=nil, requestid=nil)
          @LoadBalancerIds = loadbalancerids
          @RequestId = requestid
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateModule请求参数结构体
      class CreateModuleRequest < TencentCloud::Common::AbstractModel
        # @param ModuleName: 模块名称，如视频直播模块。限制：模块名称不得以空格开头，长度不得超过60个字符。
        # @type ModuleName: String
        # @param DefaultBandWidth: 默认带宽，单位：Mbps。范围不得超过带宽上下限，详看[DescribeConfig](https://cloud.tencent.com/document/product/1108/42572)。
        # @type DefaultBandWidth: Integer
        # @param DefaultImageId: 默认镜像。
        # @type DefaultImageId: String
        # @param InstanceType: 机型ID。
        # @type InstanceType: String
        # @param DefaultSystemDiskSize: 默认系统盘大小，单位：GB，默认大小为50GB。范围不得超过系统盘上下限制，详看[DescribeConfig](https://cloud.tencent.com/document/product/1108/42572)。
        # @type DefaultSystemDiskSize: Integer
        # @param DefaultDataDiskSize: 默认数据盘大小，单位：GB。范围不得超过数据盘范围大小，详看[DescribeConfig](https://cloud.tencent.com/document/product/1108/42572)。
        # @type DefaultDataDiskSize: Integer
        # @param CloseIpDirect: 是否关闭IP直通。取值范围：
        # true：表示关闭IP直通
        # false：表示开通IP直通
        # @type CloseIpDirect: Boolean
        # @param TagSpecification: 标签列表。
        # @type TagSpecification: Array
        # @param SecurityGroups: 模块默认安全组列表
        # @type SecurityGroups: Array
        # @param DefaultBandWidthIn: 默认入带宽，单位：Mbps。范围不得超过带宽上下限，详看[DescribeConfig](https://cloud.tencent.com/document/product/1108/42572)。
        # @type DefaultBandWidthIn: Integer
        # @param DisableWanIp: 是否禁止分配外网IP
        # @type DisableWanIp: Boolean
        # @param SystemDisk: 系统盘信息。
        # @type SystemDisk: :class:`Tencentcloud::Ecm.v20190719.models.SystemDisk`
        # @param DataDisks: 数据盘信息。
        # @type DataDisks: Array

        attr_accessor :ModuleName, :DefaultBandWidth, :DefaultImageId, :InstanceType, :DefaultSystemDiskSize, :DefaultDataDiskSize, :CloseIpDirect, :TagSpecification, :SecurityGroups, :DefaultBandWidthIn, :DisableWanIp, :SystemDisk, :DataDisks

        def initialize(modulename=nil, defaultbandwidth=nil, defaultimageid=nil, instancetype=nil, defaultsystemdisksize=nil, defaultdatadisksize=nil, closeipdirect=nil, tagspecification=nil, securitygroups=nil, defaultbandwidthin=nil, disablewanip=nil, systemdisk=nil, datadisks=nil)
          @ModuleName = modulename
          @DefaultBandWidth = defaultbandwidth
          @DefaultImageId = defaultimageid
          @InstanceType = instancetype
          @DefaultSystemDiskSize = defaultsystemdisksize
          @DefaultDataDiskSize = defaultdatadisksize
          @CloseIpDirect = closeipdirect
          @TagSpecification = tagspecification
          @SecurityGroups = securitygroups
          @DefaultBandWidthIn = defaultbandwidthin
          @DisableWanIp = disablewanip
          @SystemDisk = systemdisk
          @DataDisks = datadisks
        end

        def deserialize(params)
          @ModuleName = params['ModuleName']
          @DefaultBandWidth = params['DefaultBandWidth']
          @DefaultImageId = params['DefaultImageId']
          @InstanceType = params['InstanceType']
          @DefaultSystemDiskSize = params['DefaultSystemDiskSize']
          @DefaultDataDiskSize = params['DefaultDataDiskSize']
          @CloseIpDirect = params['CloseIpDirect']
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          @SecurityGroups = params['SecurityGroups']
          @DefaultBandWidthIn = params['DefaultBandWidthIn']
          @DisableWanIp = params['DisableWanIp']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
        end
      end

      # CreateModule返回参数结构体
      class CreateModuleResponse < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块ID，创建模块成功后分配给该模块的ID。
        # @type ModuleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModuleId, :RequestId

        def initialize(moduleid=nil, requestid=nil)
          @ModuleId = moduleid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateNetworkInterface请求参数结构体
      class CreateNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param NetworkInterfaceName: 弹性网卡名称，最大长度不能超过60个字节。
        # @type NetworkInterfaceName: String
        # @param SubnetId: 弹性网卡所在的子网实例ID，例如：subnet-0ap8nwca。
        # @type SubnetId: String
        # @param EcmRegion: ECM 地域，形如ap-xian-ecm。
        # @type EcmRegion: String
        # @param NetworkInterfaceDescription: 弹性网卡描述，可任意命名，但不得超过60个字符。
        # @type NetworkInterfaceDescription: String
        # @param SecondaryPrivateIpAddressCount: 新申请的内网IP地址个数，内网IP地址个数总和不能超过配额数。
        # @type SecondaryPrivateIpAddressCount: Integer
        # @param SecurityGroupIds: 指定绑定的安全组，例如：['sg-1dd51d']。
        # @type SecurityGroupIds: Array
        # @param PrivateIpAddresses: 指定的内网IP信息，单次最多指定10个。
        # @type PrivateIpAddresses: Array
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array

        attr_accessor :VpcId, :NetworkInterfaceName, :SubnetId, :EcmRegion, :NetworkInterfaceDescription, :SecondaryPrivateIpAddressCount, :SecurityGroupIds, :PrivateIpAddresses, :Tags

        def initialize(vpcid=nil, networkinterfacename=nil, subnetid=nil, ecmregion=nil, networkinterfacedescription=nil, secondaryprivateipaddresscount=nil, securitygroupids=nil, privateipaddresses=nil, tags=nil)
          @VpcId = vpcid
          @NetworkInterfaceName = networkinterfacename
          @SubnetId = subnetid
          @EcmRegion = ecmregion
          @NetworkInterfaceDescription = networkinterfacedescription
          @SecondaryPrivateIpAddressCount = secondaryprivateipaddresscount
          @SecurityGroupIds = securitygroupids
          @PrivateIpAddresses = privateipaddresses
          @Tags = tags
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @NetworkInterfaceName = params['NetworkInterfaceName']
          @SubnetId = params['SubnetId']
          @EcmRegion = params['EcmRegion']
          @NetworkInterfaceDescription = params['NetworkInterfaceDescription']
          @SecondaryPrivateIpAddressCount = params['SecondaryPrivateIpAddressCount']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['PrivateIpAddresses'].nil?
            @PrivateIpAddresses = []
            params['PrivateIpAddresses'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddresses << privateipaddressspecification_tmp
            end
          end
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

      # CreateNetworkInterface返回参数结构体
      class CreateNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
        # @param NetworkInterface: 弹性网卡实例。
        # @type NetworkInterface: :class:`Tencentcloud::Ecm.v20190719.models.NetworkInterface`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkInterface, :RequestId

        def initialize(networkinterface=nil, requestid=nil)
          @NetworkInterface = networkinterface
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetworkInterface'].nil?
            @NetworkInterface = NetworkInterface.new
            @NetworkInterface.deserialize(params['NetworkInterface'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRouteTable请求参数结构体
      class CreateRouteTableRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 待操作的VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param RouteTableName: 路由表名称，最大长度不能超过60个字节。
        # @type RouteTableName: String
        # @param EcmRegion: ecm地域
        # @type EcmRegion: String

        attr_accessor :VpcId, :RouteTableName, :EcmRegion

        def initialize(vpcid=nil, routetablename=nil, ecmregion=nil)
          @VpcId = vpcid
          @RouteTableName = routetablename
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @RouteTableName = params['RouteTableName']
          @EcmRegion = params['EcmRegion']
        end
      end

      # CreateRouteTable返回参数结构体
      class CreateRouteTableResponse < TencentCloud::Common::AbstractModel
        # @param RouteTable: 路由表对象
        # @type RouteTable: :class:`Tencentcloud::Ecm.v20190719.models.RouteTable`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RouteTable, :RequestId

        def initialize(routetable=nil, requestid=nil)
          @RouteTable = routetable
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RouteTable'].nil?
            @RouteTable = RouteTable.new
            @RouteTable.deserialize(params['RouteTable'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRoutes请求参数结构体
      class CreateRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID。
        # @type RouteTableId: String
        # @param Routes: 要创建的路由策略对象。
        # @type Routes: Array

        attr_accessor :RouteTableId, :Routes

        def initialize(routetableid=nil, routes=nil)
          @RouteTableId = routetableid
          @Routes = routes
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @Routes << route_tmp
            end
          end
        end
      end

      # CreateRoutes返回参数结构体
      class CreateRoutesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 新增的实例个数。
        # @type TotalCount: Integer
        # @param RouteTableSet: 路由表对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RouteTableSet, :RequestId

        def initialize(totalcount=nil, routetableset=nil, requestid=nil)
          @TotalCount = totalcount
          @RouteTableSet = routetableset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RouteTableSet'].nil?
            @RouteTableSet = []
            params['RouteTableSet'].each do |i|
              routetable_tmp = RouteTable.new
              routetable_tmp.deserialize(i)
              @RouteTableSet << routetable_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityGroupPolicies请求参数结构体
      class CreateSecurityGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param SecurityGroupPolicySet: 安全组规则集合。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Ecm.v20190719.models.SecurityGroupPolicySet`

        attr_accessor :SecurityGroupId, :SecurityGroupPolicySet

        def initialize(securitygroupid=nil, securitygrouppolicyset=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupPolicySet = securitygrouppolicyset
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
        end
      end

      # CreateSecurityGroupPolicies返回参数结构体
      class CreateSecurityGroupPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # CreateSecurityGroup请求参数结构体
      class CreateSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 安全组名称，可任意命名，但不得超过60个字符。
        # @type GroupName: String
        # @param GroupDescription: 安全组备注，最多100个字符。
        # @type GroupDescription: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array

        attr_accessor :GroupName, :GroupDescription, :Tags

        def initialize(groupname=nil, groupdescription=nil, tags=nil)
          @GroupName = groupname
          @GroupDescription = groupdescription
          @Tags = tags
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupDescription = params['GroupDescription']
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

      # CreateSecurityGroup返回参数结构体
      class CreateSecurityGroupResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroup: 安全组对象。
        # @type SecurityGroup: :class:`Tencentcloud::Ecm.v20190719.models.SecurityGroup`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroup, :RequestId

        def initialize(securitygroup=nil, requestid=nil)
          @SecurityGroup = securitygroup
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroup'].nil?
            @SecurityGroup = SecurityGroup.new
            @SecurityGroup.deserialize(params['SecurityGroup'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateSubnet请求参数结构体
      class CreateSubnetRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 待操作的VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param SubnetName: 子网名称，最大长度不能超过60个字节。
        # @type SubnetName: String
        # @param CidrBlock: 子网网段，子网网段必须在VPC网段内，相同VPC内子网网段不能重叠。
        # @type CidrBlock: String
        # @param Zone: 子网所在的可用区ID，不同子网选择不同可用区可以做跨可用区灾备。
        # @type Zone: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param IPv6CidrBlock: IPv6 CIDR
        # @type IPv6CidrBlock: String

        attr_accessor :VpcId, :SubnetName, :CidrBlock, :Zone, :EcmRegion, :Tags, :IPv6CidrBlock

        def initialize(vpcid=nil, subnetname=nil, cidrblock=nil, zone=nil, ecmregion=nil, tags=nil, ipv6cidrblock=nil)
          @VpcId = vpcid
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @Zone = zone
          @EcmRegion = ecmregion
          @Tags = tags
          @IPv6CidrBlock = ipv6cidrblock
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @Zone = params['Zone']
          @EcmRegion = params['EcmRegion']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @IPv6CidrBlock = params['IPv6CidrBlock']
        end
      end

      # CreateSubnet返回参数结构体
      class CreateSubnetResponse < TencentCloud::Common::AbstractModel
        # @param Subnet: 子网对象。
        # @type Subnet: :class:`Tencentcloud::Ecm.v20190719.models.Subnet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Subnet, :RequestId

        def initialize(subnet=nil, requestid=nil)
          @Subnet = subnet
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Subnet'].nil?
            @Subnet = Subnet.new
            @Subnet.deserialize(params['Subnet'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateVpc请求参数结构体
      class CreateVpcRequest < TencentCloud::Common::AbstractModel
        # @param VpcName: vpc名称，最大长度不能超过60个字节。
        # @type VpcName: String
        # @param CidrBlock: vpc的cidr，只能为10.*.0.0/16，172.[16-31].0.0/16，192.168.0.0/16这三个内网网段内。
        # @type CidrBlock: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param EnableMulticast: 是否开启组播。true: 开启, false: 不开启。暂不支持
        # @type EnableMulticast: String
        # @param DnsServers: DNS地址，最多支持4个，暂不支持
        # @type DnsServers: Array
        # @param DomainName: 域名，暂不支持
        # @type DomainName: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array
        # @param Description: 描述信息
        # @type Description: String
        # @param ISPTypes: 网络运营商类型 取值范围:'CMCC'-中国移动, 'CTCC'-中国电信, 'CUCC'-中国联调
        # @type ISPTypes: Array

        attr_accessor :VpcName, :CidrBlock, :EcmRegion, :EnableMulticast, :DnsServers, :DomainName, :Tags, :Description, :ISPTypes

        def initialize(vpcname=nil, cidrblock=nil, ecmregion=nil, enablemulticast=nil, dnsservers=nil, domainname=nil, tags=nil, description=nil, isptypes=nil)
          @VpcName = vpcname
          @CidrBlock = cidrblock
          @EcmRegion = ecmregion
          @EnableMulticast = enablemulticast
          @DnsServers = dnsservers
          @DomainName = domainname
          @Tags = tags
          @Description = description
          @ISPTypes = isptypes
        end

        def deserialize(params)
          @VpcName = params['VpcName']
          @CidrBlock = params['CidrBlock']
          @EcmRegion = params['EcmRegion']
          @EnableMulticast = params['EnableMulticast']
          @DnsServers = params['DnsServers']
          @DomainName = params['DomainName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Description = params['Description']
          unless params['ISPTypes'].nil?
            @ISPTypes = []
            params['ISPTypes'].each do |i|
              isptypeitem_tmp = ISPTypeItem.new
              isptypeitem_tmp.deserialize(i)
              @ISPTypes << isptypeitem_tmp
            end
          end
        end
      end

      # CreateVpc返回参数结构体
      class CreateVpcResponse < TencentCloud::Common::AbstractModel
        # @param Vpc: Vpc对象。
        # @type Vpc: :class:`Tencentcloud::Ecm.v20190719.models.VpcInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Vpc, :RequestId

        def initialize(vpc=nil, requestid=nil)
          @Vpc = vpc
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Vpc'].nil?
            @Vpc = VpcInfo.new
            @Vpc.deserialize(params['Vpc'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 描述了数据盘的信息
      class DataDisk < TencentCloud::Common::AbstractModel
        # @param DiskSize: 数据盘大小。单位GB。
        # @type DiskSize: Integer
        # @param DiskType: 数据盘类型，取值范围：
        # - LOCAL_BASIC：本地硬盘
        # - CLOUD_PREMIUM：高性能云硬盘

        # 默认取值： LOCAL_BASIC。
        # @type DiskType: String

        attr_accessor :DiskSize, :DiskType

        def initialize(disksize=nil, disktype=nil)
          @DiskSize = disksize
          @DiskType = disktype
        end

        def deserialize(params)
          @DiskSize = params['DiskSize']
          @DiskType = params['DiskType']
        end
      end

      # DeleteHaVip请求参数结构体
      class DeleteHaVipRequest < TencentCloud::Common::AbstractModel
        # @param HaVipId: HAVIP唯一ID，形如：havip-9o233uri。
        # @type HaVipId: String

        attr_accessor :HaVipId

        def initialize(havipid=nil)
          @HaVipId = havipid
        end

        def deserialize(params)
          @HaVipId = params['HaVipId']
        end
      end

      # DeleteHaVip返回参数结构体
      class DeleteHaVipResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImage请求参数结构体
      class DeleteImageRequest < TencentCloud::Common::AbstractModel
        # @param ImageIDSet: 镜像ID列表。
        # @type ImageIDSet: Array

        attr_accessor :ImageIDSet

        def initialize(imageidset=nil)
          @ImageIDSet = imageidset
        end

        def deserialize(params)
          @ImageIDSet = params['ImageIDSet']
        end
      end

      # DeleteImage返回参数结构体
      class DeleteImageResponse < TencentCloud::Common::AbstractModel
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

      # DeleteListener请求参数结构体
      class DeleteListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param ListenerId: 要删除的监听器 ID
        # @type ListenerId: String

        attr_accessor :LoadBalancerId, :ListenerId

        def initialize(loadbalancerid=nil, listenerid=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
        end
      end

      # DeleteListener返回参数结构体
      class DeleteListenerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancerListeners请求参数结构体
      class DeleteLoadBalancerListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param ListenerIds: 指定删除的监听器ID数组，若不填则删除负载均衡的所有监听器
        # @type ListenerIds: Array

        attr_accessor :LoadBalancerId, :ListenerIds

        def initialize(loadbalancerid=nil, listenerids=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
        end
      end

      # DeleteLoadBalancerListeners返回参数结构体
      class DeleteLoadBalancerListenersResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancer请求参数结构体
      class DeleteLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 要删除的负载均衡实例 ID数组，数组大小最大支持20
        # @type LoadBalancerIds: Array

        attr_accessor :LoadBalancerIds

        def initialize(loadbalancerids=nil)
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # DeleteLoadBalancer返回参数结构体
      class DeleteLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteModule请求参数结构体
      class DeleteModuleRequest < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块ID。如：em-qn46snq8
        # @type ModuleId: String

        attr_accessor :ModuleId

        def initialize(moduleid=nil)
          @ModuleId = moduleid
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
        end
      end

      # DeleteModule返回参数结构体
      class DeleteModuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteNetworkInterface请求参数结构体
      class DeleteNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param EcmRegion: ECM 地域，形如ap-xian-ecm。
        # @type EcmRegion: String

        attr_accessor :NetworkInterfaceId, :EcmRegion

        def initialize(networkinterfaceid=nil, ecmregion=nil)
          @NetworkInterfaceId = networkinterfaceid
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @EcmRegion = params['EcmRegion']
        end
      end

      # DeleteNetworkInterface返回参数结构体
      class DeleteNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRouteTable请求参数结构体
      class DeleteRouteTableRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c
        # @type RouteTableId: String

        attr_accessor :RouteTableId

        def initialize(routetableid=nil)
          @RouteTableId = routetableid
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
        end
      end

      # DeleteRouteTable返回参数结构体
      class DeleteRouteTableResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRoutes请求参数结构体
      class DeleteRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表唯一ID。
        # @type RouteTableId: String
        # @param Routes: 路由策略对象。
        # @type Routes: Array

        attr_accessor :RouteTableId, :Routes

        def initialize(routetableid=nil, routes=nil)
          @RouteTableId = routetableid
          @Routes = routes
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @Routes << route_tmp
            end
          end
        end
      end

      # DeleteRoutes返回参数结构体
      class DeleteRoutesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityGroupPolicies请求参数结构体
      class DeleteSecurityGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param SecurityGroupPolicySet: 安全组规则集合。一个请求中只能删除单个方向的一条或多条规则。支持指定索引（PolicyIndex） 匹配删除和安全组规则匹配删除两种方式，一个请求中只能使用一种匹配方式。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Ecm.v20190719.models.SecurityGroupPolicySet`

        attr_accessor :SecurityGroupId, :SecurityGroupPolicySet

        def initialize(securitygroupid=nil, securitygrouppolicyset=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupPolicySet = securitygrouppolicyset
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
        end
      end

      # DeleteSecurityGroupPolicies返回参数结构体
      class DeleteSecurityGroupPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityGroup请求参数结构体
      class DeleteSecurityGroupRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String

        attr_accessor :SecurityGroupId

        def initialize(securitygroupid=nil)
          @SecurityGroupId = securitygroupid
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
        end
      end

      # DeleteSecurityGroup返回参数结构体
      class DeleteSecurityGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSubnet请求参数结构体
      class DeleteSubnetRequest < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例ID。可通过DescribeSubnets接口返回值中的SubnetId获取。
        # @type SubnetId: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String

        attr_accessor :SubnetId, :EcmRegion

        def initialize(subnetid=nil, ecmregion=nil)
          @SubnetId = subnetid
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @EcmRegion = params['EcmRegion']
        end
      end

      # DeleteSubnet返回参数结构体
      class DeleteSubnetResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVpc请求参数结构体
      class DeleteVpcRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String

        attr_accessor :VpcId, :EcmRegion

        def initialize(vpcid=nil, ecmregion=nil)
          @VpcId = vpcid
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @EcmRegion = params['EcmRegion']
        end
      end

      # DeleteVpc返回参数结构体
      class DeleteVpcResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAddressQuota请求参数结构体
      class DescribeAddressQuotaRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String

        attr_accessor :EcmRegion

        def initialize(ecmregion=nil)
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
        end
      end

      # DescribeAddressQuota返回参数结构体
      class DescribeAddressQuotaResponse < TencentCloud::Common::AbstractModel
        # @param QuotaSet: 账户 EIP 配额信息。
        # @type QuotaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QuotaSet, :RequestId

        def initialize(quotaset=nil, requestid=nil)
          @QuotaSet = quotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['QuotaSet'].nil?
            @QuotaSet = []
            params['QuotaSet'].each do |i|
              eipquota_tmp = EipQuota.new
              eipquota_tmp.deserialize(i)
              @QuotaSet << eipquota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAddresses请求参数结构体
      class DescribeAddressesRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param AddressIds: 标识 EIP 的唯一 ID 列表。EIP 唯一 ID 形如：eip-11112222。参数不支持同时指定AddressIds和Filters。
        # @type AddressIds: Array
        # @param Filters: 每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定AddressIds和Filters。详细的过滤条件如下：
        # address-id - String - 是否必填：否 - （过滤条件）按照 EIP 的唯一 ID 过滤。EIP 唯一 ID 形如：eip-11112222。
        # address-name - String - 是否必填：否 - （过滤条件）按照 EIP 名称过滤。不支持模糊过滤。
        # address-ip - String - 是否必填：否 - （过滤条件）按照 EIP 的 IP 地址过滤。
        # address-status - String - 是否必填：否 - （过滤条件）按照 EIP 的状态过滤。取值范围：详见EIP状态列表。
        # instance-id - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的实例 ID 过滤。实例 ID 形如：ins-11112222。
        # private-ip-address - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的内网 IP 过滤。
        # network-interface-id - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的弹性网卡 ID 过滤。弹性网卡 ID 形如：eni-11112222。
        # is-arrears - String - 是否必填：否 - （过滤条件）按照 EIP 是否欠费进行过滤。（TRUE：EIP 处于欠费状态|FALSE：EIP 费用状态正常）
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :EcmRegion, :AddressIds, :Filters, :Offset, :Limit

        def initialize(ecmregion=nil, addressids=nil, filters=nil, offset=nil, limit=nil)
          @EcmRegion = ecmregion
          @AddressIds = addressids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @AddressIds = params['AddressIds']
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

      # DescribeAddresses返回参数结构体
      class DescribeAddressesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的 EIP 数量。
        # @type TotalCount: Integer
        # @param AddressSet: EIP 详细信息列表。
        # @type AddressSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AddressSet, :RequestId

        def initialize(totalcount=nil, addressset=nil, requestid=nil)
          @TotalCount = totalcount
          @AddressSet = addressset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AddressSet'].nil?
            @AddressSet = []
            params['AddressSet'].each do |i|
              address_tmp = Address.new
              address_tmp.deserialize(i)
              @AddressSet << address_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBaseOverview请求参数结构体
      class DescribeBaseOverviewRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBaseOverview返回参数结构体
      class DescribeBaseOverviewResponse < TencentCloud::Common::AbstractModel
        # @param ModuleNum: 模块数量，单位：个
        # @type ModuleNum: Integer
        # @param NodeNum: 节点数量，单位：个
        # @type NodeNum: Integer
        # @param VcpuNum: cpu核数，单位：个
        # @type VcpuNum: Integer
        # @param MemoryNum: 内存大小，单位：G
        # @type MemoryNum: Integer
        # @param StorageNum: 硬盘大小，单位：G
        # @type StorageNum: Integer
        # @param NetworkNum: 昨日网络峰值,单位：M
        # @type NetworkNum: Integer
        # @param InstanceNum: 实例数量，单位：台
        # @type InstanceNum: Integer
        # @param RunningNum: 运行中数量，单位：台
        # @type RunningNum: Integer
        # @param IsolationNum: 安全隔离数量，单位：台
        # @type IsolationNum: Integer
        # @param ExpiredNum: 过期实例数量，单位：台
        # @type ExpiredNum: Integer
        # @param WillExpireNum: 即将过期实例数量，单位：台
        # @type WillExpireNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModuleNum, :NodeNum, :VcpuNum, :MemoryNum, :StorageNum, :NetworkNum, :InstanceNum, :RunningNum, :IsolationNum, :ExpiredNum, :WillExpireNum, :RequestId

        def initialize(modulenum=nil, nodenum=nil, vcpunum=nil, memorynum=nil, storagenum=nil, networknum=nil, instancenum=nil, runningnum=nil, isolationnum=nil, expirednum=nil, willexpirenum=nil, requestid=nil)
          @ModuleNum = modulenum
          @NodeNum = nodenum
          @VcpuNum = vcpunum
          @MemoryNum = memorynum
          @StorageNum = storagenum
          @NetworkNum = networknum
          @InstanceNum = instancenum
          @RunningNum = runningnum
          @IsolationNum = isolationnum
          @ExpiredNum = expirednum
          @WillExpireNum = willexpirenum
          @RequestId = requestid
        end

        def deserialize(params)
          @ModuleNum = params['ModuleNum']
          @NodeNum = params['NodeNum']
          @VcpuNum = params['VcpuNum']
          @MemoryNum = params['MemoryNum']
          @StorageNum = params['StorageNum']
          @NetworkNum = params['NetworkNum']
          @InstanceNum = params['InstanceNum']
          @RunningNum = params['RunningNum']
          @IsolationNum = params['IsolationNum']
          @ExpiredNum = params['ExpiredNum']
          @WillExpireNum = params['WillExpireNum']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfig请求参数结构体
      class DescribeConfigRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeConfig返回参数结构体
      class DescribeConfigResponse < TencentCloud::Common::AbstractModel
        # @param NetworkStorageRange: 网络带宽硬盘大小的范围信息。
        # @type NetworkStorageRange: :class:`Tencentcloud::Ecm.v20190719.models.NetworkStorageRange`
        # @param ImageWhiteSet: 镜像操作系统白名单。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageWhiteSet: Array
        # @param InstanceNetworkLimitConfigs: 网络限额信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNetworkLimitConfigs: Array
        # @param ImageLimits: 镜像限额信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageLimits: :class:`Tencentcloud::Ecm.v20190719.models.ImageLimitConfig`
        # @param DefaultIPDirect: 默认是否IP直通，用于模块创建，虚机购买等具有直通参数场景时的默认参数。
        # @type DefaultIPDirect: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkStorageRange, :ImageWhiteSet, :InstanceNetworkLimitConfigs, :ImageLimits, :DefaultIPDirect, :RequestId

        def initialize(networkstoragerange=nil, imagewhiteset=nil, instancenetworklimitconfigs=nil, imagelimits=nil, defaultipdirect=nil, requestid=nil)
          @NetworkStorageRange = networkstoragerange
          @ImageWhiteSet = imagewhiteset
          @InstanceNetworkLimitConfigs = instancenetworklimitconfigs
          @ImageLimits = imagelimits
          @DefaultIPDirect = defaultipdirect
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetworkStorageRange'].nil?
            @NetworkStorageRange = NetworkStorageRange.new
            @NetworkStorageRange.deserialize(params['NetworkStorageRange'])
          end
          @ImageWhiteSet = params['ImageWhiteSet']
          unless params['InstanceNetworkLimitConfigs'].nil?
            @InstanceNetworkLimitConfigs = []
            params['InstanceNetworkLimitConfigs'].each do |i|
              instancenetworklimitconfig_tmp = InstanceNetworkLimitConfig.new
              instancenetworklimitconfig_tmp.deserialize(i)
              @InstanceNetworkLimitConfigs << instancenetworklimitconfig_tmp
            end
          end
          unless params['ImageLimits'].nil?
            @ImageLimits = ImageLimitConfig.new
            @ImageLimits.deserialize(params['ImageLimits'])
          end
          @DefaultIPDirect = params['DefaultIPDirect']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomImageTask请求参数结构体
      class DescribeCustomImageTaskRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 支持key,value查询
        # task-id: 异步任务ID
        # image-id: 镜像ID
        # image-name: 镜像名称
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

      # DescribeCustomImageTask返回参数结构体
      class DescribeCustomImageTaskResponse < TencentCloud::Common::AbstractModel
        # @param ImageTaskSet: 导入任务详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageTaskSet: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageTaskSet, :TotalCount, :RequestId

        def initialize(imagetaskset=nil, totalcount=nil, requestid=nil)
          @ImageTaskSet = imagetaskset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImageTaskSet'].nil?
            @ImageTaskSet = []
            params['ImageTaskSet'].each do |i|
              imagetask_tmp = ImageTask.new
              imagetask_tmp.deserialize(i)
              @ImageTaskSet << imagetask_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDefaultSubnet请求参数结构体
      class DescribeDefaultSubnetRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM地域
        # @type EcmRegion: String
        # @param Zone: ECM可用区
        # @type Zone: String

        attr_accessor :EcmRegion, :Zone

        def initialize(ecmregion=nil, zone=nil)
          @EcmRegion = ecmregion
          @Zone = zone
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @Zone = params['Zone']
        end
      end

      # DescribeDefaultSubnet返回参数结构体
      class DescribeDefaultSubnetResponse < TencentCloud::Common::AbstractModel
        # @param Subnet: 默认子网信息，若无子网，则为空数据。
        # @type Subnet: :class:`Tencentcloud::Ecm.v20190719.models.Subnet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Subnet, :RequestId

        def initialize(subnet=nil, requestid=nil)
          @Subnet = subnet
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Subnet'].nil?
            @Subnet = Subnet.new
            @Subnet.deserialize(params['Subnet'])
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

      # DescribeHaVips请求参数结构体
      class DescribeHaVipsRequest < TencentCloud::Common::AbstractModel
        # @param HaVipIds: HAVIP数组，HAVIP唯一ID，形如：havip-9o233uri。
        # @type HaVipIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定HaVipIds和Filters。
        # havip-id - String - HAVIP唯一ID，形如：havip-9o233uri。
        # havip-name - String - HAVIP名称。
        # vpc-id - String - HAVIP所在私有网络ID。
        # subnet-id - String - HAVIP所在子网ID。
        # @type Filters: Array
        # @param Offset: 偏移量，默认值是0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值是20，最大是100。
        # @type Limit: Integer
        # @param EcmRegion: Ecm 区域，不填代表全部区域。
        # @type EcmRegion: String

        attr_accessor :HaVipIds, :Filters, :Offset, :Limit, :EcmRegion

        def initialize(havipids=nil, filters=nil, offset=nil, limit=nil, ecmregion=nil)
          @HaVipIds = havipids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @HaVipIds = params['HaVipIds']
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
          @EcmRegion = params['EcmRegion']
        end
      end

      # DescribeHaVips返回参数结构体
      class DescribeHaVipsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param HaVipSet: HAVIP对象数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HaVipSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :HaVipSet, :RequestId

        def initialize(totalcount=nil, havipset=nil, requestid=nil)
          @TotalCount = totalcount
          @HaVipSet = havipset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['HaVipSet'].nil?
            @HaVipSet = []
            params['HaVipSet'].each do |i|
              havip_tmp = HaVip.new
              havip_tmp.deserialize(i)
              @HaVipSet << havip_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImage请求参数结构体
      class DescribeImageRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，每次请求的Filters的上限为10，详细的过滤条件如下：
        # image-id - String - 是否必填： 否 - （过滤条件）按照镜像ID进行过滤
        # image-type - String - 是否必填： 否 - （过滤条件）按照镜像类型进行过滤。取值范围：
        # PRIVATE_IMAGE: 私有镜像 (本账户创建的镜像)
        # PUBLIC_IMAGE: 公共镜像 (腾讯云官方镜像)
        # instance-type -String - 是否必填: 否 - (过滤条件) 按机型过滤支持的镜像
        # image-name - String - 是否必填：否 - (过滤条件) 按镜像的名称模糊匹配，只能提供一个值
        # image-os - String - 是否必填：否 - (过滤条件) 按镜像系统的名称模糊匹配，只能提供一个值
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit

        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeImage返回参数结构体
      class DescribeImageResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 镜像总数
        # @type TotalCount: Integer
        # @param ImageSet: 镜像数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ImageSet, :RequestId

        def initialize(totalcount=nil, imageset=nil, requestid=nil)
          @TotalCount = totalcount
          @ImageSet = imageset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ImageSet'].nil?
            @ImageSet = []
            params['ImageSet'].each do |i|
              image_tmp = Image.new
              image_tmp.deserialize(i)
              @ImageSet << image_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImportImageOs请求参数结构体
      class DescribeImportImageOsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeImportImageOs返回参数结构体
      class DescribeImportImageOsResponse < TencentCloud::Common::AbstractModel
        # @param ImportImageOsListSupported: 支持的导入镜像的操作系统类型
        # @type ImportImageOsListSupported: :class:`Tencentcloud::Ecm.v20190719.models.ImageOsList`
        # @param ImportImageOsVersionSet: 支持的导入镜像的操作系统版本
        # @type ImportImageOsVersionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImportImageOsListSupported, :ImportImageOsVersionSet, :RequestId

        def initialize(importimageoslistsupported=nil, importimageosversionset=nil, requestid=nil)
          @ImportImageOsListSupported = importimageoslistsupported
          @ImportImageOsVersionSet = importimageosversionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ImportImageOsListSupported'].nil?
            @ImportImageOsListSupported = ImageOsList.new
            @ImportImageOsListSupported.deserialize(params['ImportImageOsListSupported'])
          end
          unless params['ImportImageOsVersionSet'].nil?
            @ImportImageOsVersionSet = []
            params['ImportImageOsVersionSet'].each do |i|
              osversion_tmp = OsVersion.new
              osversion_tmp.deserialize(i)
              @ImportImageOsVersionSet << osversion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceTypeConfig请求参数结构体
      class DescribeInstanceTypeConfigRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeInstanceTypeConfig返回参数结构体
      class DescribeInstanceTypeConfigResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param InstanceTypeConfigSet: 机型配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeConfigSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceTypeConfigSet, :RequestId

        def initialize(totalcount=nil, instancetypeconfigset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceTypeConfigSet = instancetypeconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceTypeConfigSet'].nil?
            @InstanceTypeConfigSet = []
            params['InstanceTypeConfigSet'].each do |i|
              instancetypeconfig_tmp = InstanceTypeConfig.new
              instancetypeconfig_tmp.deserialize(i)
              @InstanceTypeConfigSet << instancetypeconfig_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstanceVncUrl请求参数结构体
      class DescribeInstanceVncUrlRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 一个操作的实例ID。可通过DescribeInstances API返回值中的InstanceId获取。
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
        # @param InstanceIdSet: 无
        # @type InstanceIdSet: Array

        attr_accessor :InstanceIdSet

        def initialize(instanceidset=nil)
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # DescribeInstancesDeniedActions返回参数结构体
      class DescribeInstancesDeniedActionsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceOperatorSet: 实例对应的禁止操作
        # @type InstanceOperatorSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceOperatorSet, :RequestId

        def initialize(instanceoperatorset=nil, requestid=nil)
          @InstanceOperatorSet = instanceoperatorset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceOperatorSet'].nil?
            @InstanceOperatorSet = []
            params['InstanceOperatorSet'].each do |i|
              instanceoperator_tmp = InstanceOperator.new
              instanceoperator_tmp.deserialize(i)
              @InstanceOperatorSet << instanceoperator_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeInstances请求参数结构体
      class DescribeInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # zone      String      是否必填：否     （过滤条件）按照可用区英文标识符过滤。
        # zone-name      String      是否必填：否     （过滤条件）按照可用区中文名过滤,支持模糊匹配。
        # module-id      String      是否必填：否     （过滤条件）按照模块ID过滤。
        # instance-id      String      是否必填：否      （过滤条件）按照实例ID过滤。
        # instance-name      String      是否必填：否      （过滤条件）按照实例名称过滤,支持模糊匹配。
        # ip-address      String      是否必填：否      （过滤条件）按照实例的内网/公网IP过滤。
        # instance-uuid   string 是否必填：否 （过滤条件）按照uuid过滤实例列表。
        # instance-state  string  是否必填：否 （过滤条件）按照实例状态更新实例列表。
        # internet-service-provider      String      是否必填：否      （过滤条件）按照实例公网IP所属的运营商进行过滤。
        # tag-key      String      是否必填：否      （过滤条件）按照标签键进行过滤。
        # tag:tag-key      String      是否必填：否      （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。
        # instance-family      String      是否必填：否      （过滤条件）按照机型family过滤。
        # module-name      String      是否必填：否      （过滤条件）按照模块名称过滤,支持模糊匹配。
        # image-id      String      是否必填：否      （过滤条件）按照实例的镜像ID过滤。
        # vpc-id String      是否必填：否      （过滤条件）按照实例的vpc id过滤。
        # subnet-id String      是否必填：否      （过滤条件）按照实例的subnet id过滤。

        # 若不传Filters参数则表示查询所有相关的实例信息。
        # 单次请求的Filter.Values的上限为5。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20(如果查询结果数目大于等于20)，最大值为100。
        # @type Limit: Integer
        # @param OrderByField: 指定排序字段。目前支持的可选值如下
        # timestamp 按实例创建时间排序。
        # 注意：目前仅支持按创建时间排序，后续可能会有扩展。
        # 如果不传，默认按实例创建时间排序
        # @type OrderByField: String
        # @param OrderDirection: 指定排序是降序还是升序。0表示降序； 1表示升序。如果不传默认为降序
        # @type OrderDirection: Integer

        attr_accessor :Filters, :Offset, :Limit, :OrderByField, :OrderDirection

        def initialize(filters=nil, offset=nil, limit=nil, orderbyfield=nil, orderdirection=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderByField = orderbyfield
          @OrderDirection = orderdirection
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
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderByField = params['OrderByField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeInstances返回参数结构体
      class DescribeInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的实例相关信息列表的长度。
        # @type TotalCount: Integer
        # @param InstanceSet: 返回的实例相关信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeListeners请求参数结构体
      class DescribeListenersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param ListenerIds: 要查询的负载均衡监听器 ID数组
        # @type ListenerIds: Array
        # @param Protocol: 要查询的监听器协议类型，取值 TCP | UDP
        # @type Protocol: String
        # @param Port: 要查询的监听器的端口
        # @type Port: Integer

        attr_accessor :LoadBalancerId, :ListenerIds, :Protocol, :Port

        def initialize(loadbalancerid=nil, listenerids=nil, protocol=nil, port=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
          @Protocol = protocol
          @Port = port
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
          @Protocol = params['Protocol']
          @Port = params['Port']
        end
      end

      # DescribeListeners返回参数结构体
      class DescribeListenersResponse < TencentCloud::Common::AbstractModel
        # @param Listeners: 监听器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listeners: Array
        # @param TotalCount: 总的监听器个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listeners, :TotalCount, :RequestId

        def initialize(listeners=nil, totalcount=nil, requestid=nil)
          @Listeners = listeners
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listener_tmp = Listener.new
              listener_tmp.deserialize(i)
              @Listeners << listener_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalanceTaskStatus请求参数结构体
      class DescribeLoadBalanceTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 请求ID，即接口返回的 RequestId 参数
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeLoadBalanceTaskStatus返回参数结构体
      class DescribeLoadBalanceTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务的当前状态。 0：成功，1：失败，2：进行中。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # DescribeLoadBalancers请求参数结构体
      class DescribeLoadBalancersRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: 区域。如果不传则默认查询所有区域。
        # @type EcmRegion: String
        # @param LoadBalancerIds: 负载均衡实例 ID。
        # @type LoadBalancerIds: Array
        # @param LoadBalancerName: 负载均衡实例的名称。
        # @type LoadBalancerName: String
        # @param LoadBalancerVips: 负载均衡实例的 VIP 地址，支持多个。
        # @type LoadBalancerVips: Array
        # @param BackendPrivateIps: 负载均衡绑定的后端服务的内网 IP。
        # @type BackendPrivateIps: Array
        # @param Offset: 数据偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 返回负载均衡实例的数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param WithBackend: 负载均衡是否绑定后端服务，0：没有绑定后端服务，1：绑定后端服务，-1：查询全部。
        # 如果不传则默认查询全部。
        # @type WithBackend: Integer
        # @param VpcId: 负载均衡实例所属私有网络唯一ID，如 vpc-bhqkbhdx。
        # @type VpcId: String
        # @param Filters: 每次请求的`Filters`的上限为10，`Filter.Values`的上限为100。详细的过滤条件如下：
        # tag-key - String - 是否必填：否 - （过滤条件）按照标签的键过滤。
        # @type Filters: Array
        # @param SecurityGroup: 安全组。
        # @type SecurityGroup: String

        attr_accessor :EcmRegion, :LoadBalancerIds, :LoadBalancerName, :LoadBalancerVips, :BackendPrivateIps, :Offset, :Limit, :WithBackend, :VpcId, :Filters, :SecurityGroup

        def initialize(ecmregion=nil, loadbalancerids=nil, loadbalancername=nil, loadbalancervips=nil, backendprivateips=nil, offset=nil, limit=nil, withbackend=nil, vpcid=nil, filters=nil, securitygroup=nil)
          @EcmRegion = ecmregion
          @LoadBalancerIds = loadbalancerids
          @LoadBalancerName = loadbalancername
          @LoadBalancerVips = loadbalancervips
          @BackendPrivateIps = backendprivateips
          @Offset = offset
          @Limit = limit
          @WithBackend = withbackend
          @VpcId = vpcid
          @Filters = filters
          @SecurityGroup = securitygroup
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @LoadBalancerIds = params['LoadBalancerIds']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerVips = params['LoadBalancerVips']
          @BackendPrivateIps = params['BackendPrivateIps']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @WithBackend = params['WithBackend']
          @VpcId = params['VpcId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SecurityGroup = params['SecurityGroup']
        end
      end

      # DescribeLoadBalancers返回参数结构体
      class DescribeLoadBalancersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足过滤条件的负载均衡实例总数。此数值与入参中的Limit无关。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param LoadBalancerSet: 返回的负载均衡实例数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoadBalancerSet, :RequestId

        def initialize(totalcount=nil, loadbalancerset=nil, requestid=nil)
          @TotalCount = totalcount
          @LoadBalancerSet = loadbalancerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoadBalancerSet'].nil?
            @LoadBalancerSet = []
            params['LoadBalancerSet'].each do |i|
              loadbalancer_tmp = LoadBalancer.new
              loadbalancer_tmp.deserialize(i)
              @LoadBalancerSet << loadbalancer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModuleDetail请求参数结构体
      class DescribeModuleDetailRequest < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块ID，如em-qn46snq8。
        # @type ModuleId: String

        attr_accessor :ModuleId

        def initialize(moduleid=nil)
          @ModuleId = moduleid
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
        end
      end

      # DescribeModuleDetail返回参数结构体
      class DescribeModuleDetailResponse < TencentCloud::Common::AbstractModel
        # @param Module: 模块的详细信息，详细见数据结构中的ModuleInfo。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Module: :class:`Tencentcloud::Ecm.v20190719.models.Module`
        # @param ModuleCounter: 模块的统计信息，详细见数据结构中的ModuleCounterInfo。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleCounter: :class:`Tencentcloud::Ecm.v20190719.models.ModuleCounter`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Module, :ModuleCounter, :RequestId

        def initialize(_module=nil, modulecounter=nil, requestid=nil)
          @Module = _module
          @ModuleCounter = modulecounter
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Module'].nil?
            @Module = Module.new
            @Module.deserialize(params['Module'])
          end
          unless params['ModuleCounter'].nil?
            @ModuleCounter = ModuleCounter.new
            @ModuleCounter.deserialize(params['ModuleCounter'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeModule请求参数结构体
      class DescribeModuleRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件。
        # module-name - string - 是否必填：否 - （过滤条件）按照模块名称过滤。
        # module-id - string - 是否必填：否 - （过滤条件）按照模块ID过滤。
        # image-id      String      是否必填：否      （过滤条件）按照镜像ID过滤。
        # instance-family      String      是否必填：否      （过滤条件）按照机型family过滤。
        # security-group-id - string 是否必填：否 - （过滤条件）按照模块绑定的安全组id过滤。
        # 每次请求的Filters的上限为10，Filter.Values的上限为5。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer
        # @param OrderByField: 指定排序字段。目前支持的可选值如下
        # instance-num 按实例数量排序。
        # node-num 按节点数量排序。
        # timestamp 按实例创建时间排序。
        # 如果不传，默认按实例创建时间排序
        # @type OrderByField: String
        # @param OrderDirection: 指定排序是降序还是升序。0表示降序； 1表示升序。如果不传默认为降序
        # @type OrderDirection: Integer

        attr_accessor :Filters, :Offset, :Limit, :OrderByField, :OrderDirection

        def initialize(filters=nil, offset=nil, limit=nil, orderbyfield=nil, orderdirection=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderByField = orderbyfield
          @OrderDirection = orderdirection
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
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderByField = params['OrderByField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeModule返回参数结构体
      class DescribeModuleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的模块数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param ModuleItemSet: 模块详情信息的列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModuleItemSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ModuleItemSet, :RequestId

        def initialize(totalcount=nil, moduleitemset=nil, requestid=nil)
          @TotalCount = totalcount
          @ModuleItemSet = moduleitemset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ModuleItemSet'].nil?
            @ModuleItemSet = []
            params['ModuleItemSet'].each do |i|
              moduleitem_tmp = ModuleItem.new
              moduleitem_tmp.deserialize(i)
              @ModuleItemSet << moduleitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMonthPeakNetwork请求参数结构体
      class DescribeMonthPeakNetworkRequest < TencentCloud::Common::AbstractModel
        # @param Month: 月份时间(xxxx-xx) 如2021-03,默认取当前时间的上一个月份
        # @type Month: String
        # @param Filters: 过滤条件
        # @type Filters: Array

        attr_accessor :Month, :Filters

        def initialize(month=nil, filters=nil)
          @Month = month
          @Filters = filters
        end

        def deserialize(params)
          @Month = params['Month']
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

      # DescribeMonthPeakNetwork返回参数结构体
      class DescribeMonthPeakNetworkResponse < TencentCloud::Common::AbstractModel
        # @param MonthNetWorkData: 无
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MonthNetWorkData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MonthNetWorkData, :RequestId

        def initialize(monthnetworkdata=nil, requestid=nil)
          @MonthNetWorkData = monthnetworkdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MonthNetWorkData'].nil?
            @MonthNetWorkData = []
            params['MonthNetWorkData'].each do |i|
              monthnetwork_tmp = MonthNetwork.new
              monthnetwork_tmp.deserialize(i)
              @MonthNetWorkData << monthnetwork_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetworkInterfaces请求参数结构体
      class DescribeNetworkInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceIds: 弹性网卡实例ID查询。形如：eni-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定NetworkInterfaceIds和Filters。
        # @type NetworkInterfaceIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定NetworkInterfaceIds和Filters。
        # vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        # subnet-id - String - （过滤条件）所属子网实例ID，形如：subnet-f49l6u0z。
        # network-interface-id - String - （过滤条件）弹性网卡实例ID，形如：eni-5k56k7k7。
        # attachment.instance-id - String - （过滤条件）绑定的云服务器实例ID，形如：ein-3nqpdn3i。
        # groups.security-group-id - String - （过滤条件）绑定的安全组实例ID，例如：sg-f9ekbxeq。
        # network-interface-name - String - （过滤条件）网卡实例名称。
        # network-interface-description - String - （过滤条件）网卡实例描述。
        # address-ip - String - （过滤条件）内网IPv4地址。
        # tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。使用请参考示例2
        # tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例3。
        # is-primary - Boolean - 是否必填：否 - （过滤条件）按照是否主网卡进行过滤。值为true时，仅过滤主网卡；值为false时，仅过滤辅助网卡；次过滤参数为提供时，同时过滤主网卡和辅助网卡。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param EcmRegion: ECM 地域，形如ap-xian-ecm。
        # @type EcmRegion: String

        attr_accessor :NetworkInterfaceIds, :Filters, :Offset, :Limit, :EcmRegion

        def initialize(networkinterfaceids=nil, filters=nil, offset=nil, limit=nil, ecmregion=nil)
          @NetworkInterfaceIds = networkinterfaceids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @NetworkInterfaceIds = params['NetworkInterfaceIds']
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
          @EcmRegion = params['EcmRegion']
        end
      end

      # DescribeNetworkInterfaces返回参数结构体
      class DescribeNetworkInterfacesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param NetworkInterfaceSet: 实例详细信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkInterfaceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :NetworkInterfaceSet, :RequestId

        def initialize(totalcount=nil, networkinterfaceset=nil, requestid=nil)
          @TotalCount = totalcount
          @NetworkInterfaceSet = networkinterfaceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['NetworkInterfaceSet'].nil?
            @NetworkInterfaceSet = []
            params['NetworkInterfaceSet'].each do |i|
              networkinterface_tmp = NetworkInterface.new
              networkinterface_tmp.deserialize(i)
              @NetworkInterfaceSet << networkinterface_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNode请求参数结构体
      class DescribeNodeRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，name取值为： InstanceFamily-实例系列
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

      # DescribeNode返回参数结构体
      class DescribeNodeResponse < TencentCloud::Common::AbstractModel
        # @param NodeSet: 节点详细信息的列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NodeSet: Array
        # @param TotalCount: 所有的节点数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NodeSet, :TotalCount, :RequestId

        def initialize(nodeset=nil, totalcount=nil, requestid=nil)
          @NodeSet = nodeset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NodeSet'].nil?
            @NodeSet = []
            params['NodeSet'].each do |i|
              node_tmp = Node.new
              node_tmp.deserialize(i)
              @NodeSet << node_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePackingQuotaGroup请求参数结构体
      class DescribePackingQuotaGroupRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，name取值为：Zone-可用区， InstanceType-实例类型，DataDiskSize - 数据盘大小
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

      # DescribePackingQuotaGroup返回参数结构体
      class DescribePackingQuotaGroupResponse < TencentCloud::Common::AbstractModel
        # @param PackingQuotaSet: 装箱配额组
        # @type PackingQuotaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PackingQuotaSet, :RequestId

        def initialize(packingquotaset=nil, requestid=nil)
          @PackingQuotaSet = packingquotaset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PackingQuotaSet'].nil?
            @PackingQuotaSet = []
            params['PackingQuotaSet'].each do |i|
              packingquotagroup_tmp = PackingQuotaGroup.new
              packingquotagroup_tmp.deserialize(i)
              @PackingQuotaSet << packingquotagroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePeakBaseOverview请求参数结构体
      class DescribePeakBaseOverviewRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间（xxxx-xx-xx）如2019-08-14，默认为一周之前的日期，不应与当前日期间隔超过90天。
        # @type StartTime: String
        # @param EndTime: 结束时间（xxxx-xx-xx）如2019-08-14，默认为昨天，不应与当前日期间隔超过90天。当开始与结束间隔不超过30天时返回1小时粒度的数据，否则返回3小时粒度的数据。
        # @type EndTime: String

        attr_accessor :StartTime, :EndTime

        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribePeakBaseOverview返回参数结构体
      class DescribePeakBaseOverviewResponse < TencentCloud::Common::AbstractModel
        # @param PeakFamilyInfoSet: 基础峰值列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeakFamilyInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PeakFamilyInfoSet, :RequestId

        def initialize(peakfamilyinfoset=nil, requestid=nil)
          @PeakFamilyInfoSet = peakfamilyinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PeakFamilyInfoSet'].nil?
            @PeakFamilyInfoSet = []
            params['PeakFamilyInfoSet'].each do |i|
              peakfamilyinfo_tmp = PeakFamilyInfo.new
              peakfamilyinfo_tmp.deserialize(i)
              @PeakFamilyInfoSet << peakfamilyinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePeakNetworkOverview请求参数结构体
      class DescribePeakNetworkOverviewRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间（xxxx-xx-xx）如2019-08-14，默认为一周之前的日期，不应与当前日期间隔超过30天。
        # @type StartTime: String
        # @param EndTime: 结束时间（xxxx-xx-xx）如2019-08-14，默认为昨天，不应与当前日期间隔超过30天。当开始与结束间隔不超过1天时会返回1分钟粒度的数据，不超过7天时返回5分钟粒度的数据，否则返回1小时粒度的数据。
        # @type EndTime: String
        # @param Filters: 过滤条件。

        # region    String      是否必填：否     （过滤条件）按照region过滤，不支持模糊匹配。注意 region 填上需要查询ecm region才能返回数据。
        # area       String      是否必填：否     （过滤条件）按照大区过滤，不支持模糊匹配。大区包括：china-central、china-east等等，可以通过DescribeNode获得所有大区；也可使用ALL_REGION表示所有地区。
        # isp         String      是否必填：否     （过滤条件）按照运营商过滤大区流量，运营商包括CTCC、CUCC和CMCC。只和area同时使用，且一次只能指定一种运营商。

        # region和area只应填写一个。
        # @type Filters: Array
        # @param Period: 统计周期，单位秒。取值60/300。
        # @type Period: Integer

        attr_accessor :StartTime, :EndTime, :Filters, :Period

        def initialize(starttime=nil, endtime=nil, filters=nil, period=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
          @Period = period
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Period = params['Period']
        end
      end

      # DescribePeakNetworkOverview返回参数结构体
      class DescribePeakNetworkOverviewResponse < TencentCloud::Common::AbstractModel
        # @param PeakNetworkRegionSet: 网络峰值数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeakNetworkRegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PeakNetworkRegionSet, :RequestId

        def initialize(peaknetworkregionset=nil, requestid=nil)
          @PeakNetworkRegionSet = peaknetworkregionset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PeakNetworkRegionSet'].nil?
            @PeakNetworkRegionSet = []
            params['PeakNetworkRegionSet'].each do |i|
              peaknetworkregioninfo_tmp = PeakNetworkRegionInfo.new
              peaknetworkregioninfo_tmp.deserialize(i)
              @PeakNetworkRegionSet << peaknetworkregioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePriceRunInstance请求参数结构体
      class DescribePriceRunInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例的机型信息
        # @type InstanceType: String
        # @param SystemDisk: 系统盘信息
        # @type SystemDisk: :class:`Tencentcloud::Ecm.v20190719.models.SystemDisk`
        # @param InstanceCount: 实例个数
        # @type InstanceCount: Integer
        # @param DataDisk: 数据盘信息
        # @type DataDisk: Array
        # @param InstanceChargeType: 实例计费类型。其中：
        # 0，按资源维度后付费，计算当日用量峰值，例如CPU，内存，硬盘等，仅适用于非GNR系列机型；
        # 1，按小时后付费，单价：xx元/实例/小时，仅适用于GNR机型，如需开通该计费方式请提工单申请；
        # 2，按月后付费，单价：xx元/实例/月，仅适用于GNR机型；
        # 该字段不填时，非GNR机型会默认选择0；GNR机型默认选择2。
        # @type InstanceChargeType: Integer

        attr_accessor :InstanceType, :SystemDisk, :InstanceCount, :DataDisk, :InstanceChargeType

        def initialize(instancetype=nil, systemdisk=nil, instancecount=nil, datadisk=nil, instancechargetype=nil)
          @InstanceType = instancetype
          @SystemDisk = systemdisk
          @InstanceCount = instancecount
          @DataDisk = datadisk
          @InstanceChargeType = instancechargetype
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          @InstanceCount = params['InstanceCount']
          unless params['DataDisk'].nil?
            @DataDisk = []
            params['DataDisk'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisk << datadisk_tmp
            end
          end
          @InstanceChargeType = params['InstanceChargeType']
        end
      end

      # DescribePriceRunInstance返回参数结构体
      class DescribePriceRunInstanceResponse < TencentCloud::Common::AbstractModel
        # @param InstancePrice: 实例价格信息
        # @type InstancePrice: :class:`Tencentcloud::Ecm.v20190719.models.InstancesPrice`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstancePrice, :RequestId

        def initialize(instanceprice=nil, requestid=nil)
          @InstancePrice = instanceprice
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstancePrice'].nil?
            @InstancePrice = InstancesPrice.new
            @InstancePrice.deserialize(params['InstancePrice'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegionIpv6Addresses请求参数结构体
      class DescribeRegionIpv6AddressesRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域，为空时返回所有地域的IPv6地址。
        # @type EcmRegion: String
        # @param Filters: 详细的过滤条件如下：
        # address-id - String - 是否必填：否 - （过滤条件）按照 EIP 的 ID 过滤。
        # address-ip - String - 是否必填：否 - （过滤条件）按照 EIP 的 IP 地址过滤。
        # network-interface-id - String - 是否必填：否 - （过滤条件）按照弹性网卡的唯一ID过滤。
        # instance-id - String - 是否必填：否 - （过滤条件）按照 EIP 所绑定的实例 ID 过滤。
        # vpc-id - String - 是否必填：否 - （过滤条件）按照 EIP 所在 VPC 的 ID 进行过滤。
        # address-isp - String - 是否必填：否 - （过滤条件）按照 EIP 的运营商进行过滤。
        # address-status  - String - 是否必填：否 - （过滤条件）按照 EIP  的状态信息进行过滤。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。关于Limit的更进一步介绍请参考 API 简介中的相关小节。
        # @type Limit: Integer

        attr_accessor :EcmRegion, :Filters, :Offset, :Limit

        def initialize(ecmregion=nil, filters=nil, offset=nil, limit=nil)
          @EcmRegion = ecmregion
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
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

      # DescribeRegionIpv6Addresses返回参数结构体
      class DescribeRegionIpv6AddressesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的 IPV6 数量。
        # @type TotalCount: Integer
        # @param AddressSet: IPV6 详细信息列表。
        # @type AddressSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AddressSet, :RequestId

        def initialize(totalcount=nil, addressset=nil, requestid=nil)
          @TotalCount = totalcount
          @AddressSet = addressset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AddressSet'].nil?
            @AddressSet = []
            params['AddressSet'].each do |i|
              address_tmp = Address.new
              address_tmp.deserialize(i)
              @AddressSet << address_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRouteConflicts请求参数结构体
      class DescribeRouteConflictsRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param DestinationCidrBlocks: 要检查的与之冲突的目的端列表
        # @type DestinationCidrBlocks: Array

        attr_accessor :RouteTableId, :DestinationCidrBlocks

        def initialize(routetableid=nil, destinationcidrblocks=nil)
          @RouteTableId = routetableid
          @DestinationCidrBlocks = destinationcidrblocks
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @DestinationCidrBlocks = params['DestinationCidrBlocks']
        end
      end

      # DescribeRouteConflicts返回参数结构体
      class DescribeRouteConflictsResponse < TencentCloud::Common::AbstractModel
        # @param RouteConflictSet: 路由策略冲突列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteConflictSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RouteConflictSet, :RequestId

        def initialize(routeconflictset=nil, requestid=nil)
          @RouteConflictSet = routeconflictset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RouteConflictSet'].nil?
            @RouteConflictSet = []
            params['RouteConflictSet'].each do |i|
              routeconflict_tmp = RouteConflict.new
              routeconflict_tmp.deserialize(i)
              @RouteConflictSet << routeconflict_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRouteTables请求参数结构体
      class DescribeRouteTablesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableIds: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定RouteTableIds和Filters。
        # route-table-id - String - （过滤条件）路由表实例ID。
        # route-table-name - String - （过滤条件）路由表名称。
        # vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        # association.main - String - （过滤条件）是否主路由表。
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 限数
        # @type Limit: Integer
        # @param EcmRegion: ECM 地域，传空或不传表示所有区域
        # @type EcmRegion: String

        attr_accessor :RouteTableIds, :Filters, :Offset, :Limit, :EcmRegion

        def initialize(routetableids=nil, filters=nil, offset=nil, limit=nil, ecmregion=nil)
          @RouteTableIds = routetableids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @RouteTableIds = params['RouteTableIds']
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
          @EcmRegion = params['EcmRegion']
        end
      end

      # DescribeRouteTables返回参数结构体
      class DescribeRouteTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量
        # @type TotalCount: Integer
        # @param RouteTableSet: 路由表列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteTableSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RouteTableSet, :RequestId

        def initialize(totalcount=nil, routetableset=nil, requestid=nil)
          @TotalCount = totalcount
          @RouteTableSet = routetableset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RouteTableSet'].nil?
            @RouteTableSet = []
            params['RouteTableSet'].each do |i|
              routetable_tmp = RouteTable.new
              routetable_tmp.deserialize(i)
              @RouteTableSet << routetable_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupAssociationStatistics请求参数结构体
      class DescribeSecurityGroupAssociationStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 安全实例ID，例如esg-33ocnj9n，可通过[DescribeSecurityGroups](https://cloud.tencent.com/document/product/1108/47697)获取。
        # @type SecurityGroupIds: Array

        attr_accessor :SecurityGroupIds

        def initialize(securitygroupids=nil)
          @SecurityGroupIds = securitygroupids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
        end
      end

      # DescribeSecurityGroupAssociationStatistics返回参数结构体
      class DescribeSecurityGroupAssociationStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroupAssociationStatisticsSet: 安全组关联实例统计。
        # @type SecurityGroupAssociationStatisticsSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroupAssociationStatisticsSet, :RequestId

        def initialize(securitygroupassociationstatisticsset=nil, requestid=nil)
          @SecurityGroupAssociationStatisticsSet = securitygroupassociationstatisticsset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroupAssociationStatisticsSet'].nil?
            @SecurityGroupAssociationStatisticsSet = []
            params['SecurityGroupAssociationStatisticsSet'].each do |i|
              securitygroupassociationstatistics_tmp = SecurityGroupAssociationStatistics.new
              securitygroupassociationstatistics_tmp.deserialize(i)
              @SecurityGroupAssociationStatisticsSet << securitygroupassociationstatistics_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupLimits请求参数结构体
      class DescribeSecurityGroupLimitsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSecurityGroupLimits返回参数结构体
      class DescribeSecurityGroupLimitsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroupLimitSet: 用户安全组配额限制。
        # @type SecurityGroupLimitSet: :class:`Tencentcloud::Ecm.v20190719.models.SecurityGroupLimitSet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroupLimitSet, :RequestId

        def initialize(securitygrouplimitset=nil, requestid=nil)
          @SecurityGroupLimitSet = securitygrouplimitset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroupLimitSet'].nil?
            @SecurityGroupLimitSet = SecurityGroupLimitSet.new
            @SecurityGroupLimitSet.deserialize(params['SecurityGroupLimitSet'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroupPolicies请求参数结构体
      class DescribeSecurityGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如：esg-33ocnj9n，可通过[DescribeSecurityGroups](https://cloud.tencent.com/document/product/1108/47697)获取。
        # @type SecurityGroupId: String

        attr_accessor :SecurityGroupId

        def initialize(securitygroupid=nil)
          @SecurityGroupId = securitygroupid
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
        end
      end

      # DescribeSecurityGroupPolicies返回参数结构体
      class DescribeSecurityGroupPoliciesResponse < TencentCloud::Common::AbstractModel
        # @param SecurityGroupPolicySet: 安全组规则集合。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Ecm.v20190719.models.SecurityGroupPolicySet`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityGroupPolicySet, :RequestId

        def initialize(securitygrouppolicyset=nil, requestid=nil)
          @SecurityGroupPolicySet = securitygrouppolicyset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityGroups请求参数结构体
      class DescribeSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 安全组实例ID，例如：esg-33ocnj9n，可通过[DescribeSecurityGroups](https://cloud.tencent.com/document/product/1108/47697)获取。每次请求的实例的上限为100。参数不支持同时指定SecurityGroupIds和Filters。
        # @type SecurityGroupIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定SecurityGroupIds和Filters。
        # security-group-id - String - （过滤条件）安全组ID。
        # security-group-name - String - （过滤条件）安全组名称。
        # tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。
        # tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer

        attr_accessor :SecurityGroupIds, :Filters, :Offset, :Limit

        def initialize(securitygroupids=nil, filters=nil, offset=nil, limit=nil)
          @SecurityGroupIds = securitygroupids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
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

      # DescribeSecurityGroups返回参数结构体
      class DescribeSecurityGroupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param SecurityGroupSet: 安全组对象。
        # @type SecurityGroupSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SecurityGroupSet, :RequestId

        def initialize(totalcount=nil, securitygroupset=nil, requestid=nil)
          @TotalCount = totalcount
          @SecurityGroupSet = securitygroupset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SecurityGroupSet'].nil?
            @SecurityGroupSet = []
            params['SecurityGroupSet'].each do |i|
              securitygroup_tmp = SecurityGroup.new
              securitygroup_tmp.deserialize(i)
              @SecurityGroupSet << securitygroup_tmp
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
        # @param Limit: 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](/document/product/362/15633)中的相关小节。
        # @type Limit: Integer
        # @param OrderField: 快照列表排序的依据字段。取值范围：<br><li>CREATE_TIME：依据快照的创建时间排序<br>默认按创建时间排序。
        # @type OrderField: String
        # @param Offset: 偏移量，默认为0。关于`Offset`的更进一步介绍请参考API[简介](/document/product/362/15633)中的相关小节。
        # @type Offset: Integer
        # @param Order: 输出云盘列表的排列顺序。取值范围：<br><li>ASC：升序排列<br><li>DESC：降序排列。
        # @type Order: String

        attr_accessor :SnapshotIds, :Filters, :Limit, :OrderField, :Offset, :Order

        def initialize(snapshotids=nil, filters=nil, limit=nil, orderfield=nil, offset=nil, order=nil)
          @SnapshotIds = snapshotids
          @Filters = filters
          @Limit = limit
          @OrderField = orderfield
          @Offset = offset
          @Order = order
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
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @Offset = params['Offset']
          @Order = params['Order']
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

      # DescribeSubnets请求参数结构体
      class DescribeSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param SubnetIds: 子网实例ID查询。形如：subnet-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定SubnetIds和Filters。
        # @type SubnetIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定SubnetIds和Filters。
        # subnet-id - String - Subnet实例名称。
        # subnet-name - String - 子网名称。只支持单值的模糊查询。
        # cidr-block - String - 子网网段，形如: 192.168.1.0 。只支持单值的模糊查询。
        # vpc-id - String - VPC实例ID，形如：vpc-f49l6u0z。
        # vpc-cidr-block  - String - vpc网段，形如: 192.168.1.0 。只支持单值的模糊查询。
        # region - String - ECM地域
        # zone - String - 可用区。
        # tag-key - String -是否必填：否- 按照标签键进行过滤。
        # ipv6-cidr-block- String - 是否必填：否 - 按照IPv6 CIDR进行过滤。
        # isp-type - String - 是否必填：否 - 按照运营商类型( 如CMCC，CUCC， CTCC)进行过滤。
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: String
        # @param Limit: 返回数量
        # @type Limit: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param Sort: 排序方式：time时间倒序, default按照网络规划排序
        # @type Sort: String

        attr_accessor :SubnetIds, :Filters, :Offset, :Limit, :EcmRegion, :Sort

        def initialize(subnetids=nil, filters=nil, offset=nil, limit=nil, ecmregion=nil, sort=nil)
          @SubnetIds = subnetids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @EcmRegion = ecmregion
          @Sort = sort
        end

        def deserialize(params)
          @SubnetIds = params['SubnetIds']
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
          @EcmRegion = params['EcmRegion']
          @Sort = params['Sort']
        end
      end

      # DescribeSubnets返回参数结构体
      class DescribeSubnetsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param SubnetSet: 子网对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SubnetSet, :RequestId

        def initialize(totalcount=nil, subnetset=nil, requestid=nil)
          @TotalCount = totalcount
          @SubnetSet = subnetset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SubnetSet'].nil?
            @SubnetSet = []
            params['SubnetSet'].each do |i|
              subnet_tmp = Subnet.new
              subnet_tmp.deserialize(i)
              @SubnetSet << subnet_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargetHealth请求参数结构体
      class DescribeTargetHealthRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 要查询的负载均衡实例 ID列表
        # @type LoadBalancerIds: Array

        attr_accessor :LoadBalancerIds

        def initialize(loadbalancerids=nil)
          @LoadBalancerIds = loadbalancerids
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
        end
      end

      # DescribeTargetHealth返回参数结构体
      class DescribeTargetHealthResponse < TencentCloud::Common::AbstractModel
        # @param LoadBalancers: 负载均衡实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancers: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LoadBalancers, :RequestId

        def initialize(loadbalancers=nil, requestid=nil)
          @LoadBalancers = loadbalancers
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['LoadBalancers'].nil?
            @LoadBalancers = []
            params['LoadBalancers'].each do |i|
              loadbalancerhealth_tmp = LoadBalancerHealth.new
              loadbalancerhealth_tmp.deserialize(i)
              @LoadBalancers << loadbalancerhealth_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTargets请求参数结构体
      class DescribeTargetsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param ListenerIds: 监听器 ID列表
        # @type ListenerIds: Array
        # @param Protocol: 监听器协议类型
        # @type Protocol: Integer
        # @param Port: 监听器端口
        # @type Port: Integer

        attr_accessor :LoadBalancerId, :ListenerIds, :Protocol, :Port

        def initialize(loadbalancerid=nil, listenerids=nil, protocol=nil, port=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerIds = listenerids
          @Protocol = protocol
          @Port = port
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerIds = params['ListenerIds']
          @Protocol = params['Protocol']
          @Port = params['Port']
        end
      end

      # DescribeTargets返回参数结构体
      class DescribeTargetsResponse < TencentCloud::Common::AbstractModel
        # @param Listeners: 监听器后端绑定的机器信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listeners: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Listeners, :RequestId

        def initialize(listeners=nil, requestid=nil)
          @Listeners = listeners
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listenerbackend_tmp = ListenerBackend.new
              listenerbackend_tmp.deserialize(i)
              @Listeners << listenerbackend_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskResult请求参数结构体
      class DescribeTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param TaskId: 异步任务ID。
        # @type TaskId: String

        attr_accessor :EcmRegion, :TaskId

        def initialize(ecmregion=nil, taskid=nil)
          @EcmRegion = ecmregion
          @TaskId = taskid
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskResult返回参数结构体
      class DescribeTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
        # @type TaskId: String
        # @param Result: 执行结果，包括"SUCCESS", "FAILED", "RUNNING"
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Result, :RequestId

        def initialize(taskid=nil, result=nil, requestid=nil)
          @TaskId = taskid
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务描述
        # @type TaskSet: Array

        attr_accessor :TaskSet

        def initialize(taskset=nil)
          @TaskSet = taskset
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              taskinput_tmp = TaskInput.new
              taskinput_tmp.deserialize(i)
              @TaskSet << taskinput_tmp
            end
          end
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务描述
        # @type TaskSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :RequestId

        def initialize(taskset=nil, requestid=nil)
          @TaskSet = taskset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskSet'].nil?
            @TaskSet = []
            params['TaskSet'].each do |i|
              taskoutput_tmp = TaskOutput.new
              taskoutput_tmp.deserialize(i)
              @TaskSet << taskoutput_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcs请求参数结构体
      class DescribeVpcsRequest < TencentCloud::Common::AbstractModel
        # @param VpcIds: VPC实例ID。形如：vpc-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpcIds和Filters。
        # @type VpcIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定VpcIds和Filters。
        # vpc-name - String - VPC实例名称，只支持单值的模糊查询。
        # vpc-id - String - VPC实例ID形如：vpc-f49l6u0z。
        # cidr-block - String - vpc的cidr，只支持单值的模糊查询。
        # region - String - vpc的region。
        # tag-key - String -是否必填：否- 按照标签键进行过滤。
        # tag:tag-key - String - 是否必填：否 - 按照标签键值对进行过滤。
        # ipv6-cidr-block - String - 是否必填：否 - 按照IPv6 CIDR block进行过滤。
        # isp-type - String - 是否必填：否 - 按照运营商（如CMCC, CUCC, CTCC）进行过滤。
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param EcmRegion: 地域
        # @type EcmRegion: String
        # @param Sort: 排序方式：time时间倒序, default按照网络规划排序
        # @type Sort: String

        attr_accessor :VpcIds, :Filters, :Offset, :Limit, :EcmRegion, :Sort

        def initialize(vpcids=nil, filters=nil, offset=nil, limit=nil, ecmregion=nil, sort=nil)
          @VpcIds = vpcids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @EcmRegion = ecmregion
          @Sort = sort
        end

        def deserialize(params)
          @VpcIds = params['VpcIds']
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
          @EcmRegion = params['EcmRegion']
          @Sort = params['Sort']
        end
      end

      # DescribeVpcs返回参数结构体
      class DescribeVpcsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的对象数。
        # @type TotalCount: Integer
        # @param VpcSet: 私有网络对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpcSet, :RequestId

        def initialize(totalcount=nil, vpcset=nil, requestid=nil)
          @TotalCount = totalcount
          @VpcSet = vpcset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['VpcSet'].nil?
            @VpcSet = []
            params['VpcSet'].each do |i|
              vpcinfo_tmp = VpcInfo.new
              vpcinfo_tmp.deserialize(i)
              @VpcSet << vpcinfo_tmp
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

      # DetachNetworkInterface请求参数结构体
      class DetachNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param InstanceId: 实例ID。形如：ein-hcs7jkg4
        # @type InstanceId: String
        # @param EcmRegion: ECM 地域，形如ap-xian-ecm。
        # @type EcmRegion: String

        attr_accessor :NetworkInterfaceId, :InstanceId, :EcmRegion

        def initialize(networkinterfaceid=nil, instanceid=nil, ecmregion=nil)
          @NetworkInterfaceId = networkinterfaceid
          @InstanceId = instanceid
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @InstanceId = params['InstanceId']
          @EcmRegion = params['EcmRegion']
        end
      end

      # DetachNetworkInterface返回参数结构体
      class DetachNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
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

      # DisableRoutes请求参数结构体
      class DisableRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表唯一ID。
        # @type RouteTableId: String
        # @param RouteIds: 路由策略ID。
        # @type RouteIds: Array

        attr_accessor :RouteTableId, :RouteIds

        def initialize(routetableid=nil, routeids=nil)
          @RouteTableId = routetableid
          @RouteIds = routeids
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteIds = params['RouteIds']
        end
      end

      # DisableRoutes返回参数结构体
      class DisableRoutesResponse < TencentCloud::Common::AbstractModel
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

      # DisassociateAddress请求参数结构体
      class DisassociateAddressRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param AddressId: 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：eip-11112222。
        # @type AddressId: String
        # @param ReallocateNormalPublicIp: 表示解绑 EIP 之后是否分配普通公网 IP。取值范围：
        # TRUE：表示解绑 EIP 之后分配普通公网 IP。
        # FALSE：表示解绑 EIP 之后不分配普通公网 IP。
        # 默认取值：FALSE。

        # 只有满足以下条件时才能指定该参数：
        # 只有在解绑主网卡的主内网 IP 上的 EIP 时才能指定该参数。
        # 解绑 EIP 后重新分配普通公网 IP 操作一个账号每天最多操作 10 次；详情可通过 DescribeAddressQuota 接口获取。
        # @type ReallocateNormalPublicIp: Boolean

        attr_accessor :EcmRegion, :AddressId, :ReallocateNormalPublicIp

        def initialize(ecmregion=nil, addressid=nil, reallocatenormalpublicip=nil)
          @EcmRegion = ecmregion
          @AddressId = addressid
          @ReallocateNormalPublicIp = reallocatenormalpublicip
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @AddressId = params['AddressId']
          @ReallocateNormalPublicIp = params['ReallocateNormalPublicIp']
        end
      end

      # DisassociateAddress返回参数结构体
      class DisassociateAddressResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。可以使用DescribeTaskResult接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # DisassociateInstancesKeyPairs请求参数结构体
      class DisassociateInstancesKeyPairsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 可以通过以下方式获取可用的实例ID：
        # 通过登录控制台查询实例ID。
        # 通过调用接口 DescribeInstances ，取返回信息中的 InstanceId 获取实例ID。
        # @type InstanceIds: Array
        # @param KeyIds: 密钥对ID列表，每次请求批量密钥对的上限为100。密钥对ID形如：skey-11112222。

        # 可以通过以下方式获取可用的密钥ID：
        # 通过登录控制台查询密钥ID。
        # 通过调用接口 DescribeKeyPairs ，取返回信息中的 KeyId 获取密钥对ID。
        # @type KeyIds: Array
        # @param ForceStop: 是否对运行中的实例选择强制关机。建议对运行中的实例先手动关机，然后再解绑密钥。取值范围：
        # TRUE：表示在正常关机失败后进行强制关机。
        # FALSE：表示在正常关机失败后不进行强制关机。

        # 默认取值：FALSE。
        # @type ForceStop: Boolean

        attr_accessor :InstanceIds, :KeyIds, :ForceStop

        def initialize(instanceids=nil, keyids=nil, forcestop=nil)
          @InstanceIds = instanceids
          @KeyIds = keyids
          @ForceStop = forcestop
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @KeyIds = params['KeyIds']
          @ForceStop = params['ForceStop']
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

      # DisassociateSecurityGroups请求参数结构体
      class DisassociateSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIds: 要解绑的安全组ID，类似esg-efil73jd，只支持解绑单个安全组。
        # @type SecurityGroupIds: Array
        # @param InstanceIds: 被解绑的实例ID，类似ein-lesecurk，支持指定多个实例 。
        # @type InstanceIds: Array

        attr_accessor :SecurityGroupIds, :InstanceIds

        def initialize(securitygroupids=nil, instanceids=nil)
          @SecurityGroupIds = securitygroupids
          @InstanceIds = instanceids
        end

        def deserialize(params)
          @SecurityGroupIds = params['SecurityGroupIds']
          @InstanceIds = params['InstanceIds']
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

      # 描述了云硬盘的详细信息
      class Disk < TencentCloud::Common::AbstractModel
        # @param DeleteWithInstance: 云盘是否与挂载的实例一起销毁。<br><li>true:销毁实例时会同时销毁云盘，只支持按小时后付费云盘。<br><li>false：销毁实例时不销毁云盘。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteWithInstance: Boolean
        # @param RenewFlag: 自动续费标识。取值范围：<br><li>NOTIFY_AND_AUTO_RENEW：通知过期且自动续费<br><li>NOTIFY_AND_MANUAL_RENEW：通知过期不自动续费<br><li>DISABLE_NOTIFY_AND_MANUAL_RENEW：不通知过期不自动续费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: String
        # @param DiskType: 硬盘介质类型。取值范围：<br><li>CLOUD_BASIC：表示普通云硬盘<br><li>CLOUD_PREMIUM：表示高性能云硬盘<br><li>CLOUD_SSD：表示SSD云硬盘<br><li>CLOUD_HSSD：表示增强型SSD云硬盘<br><li>CLOUD_TSSD：表示极速型SSD云硬盘。
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
        # @type Placement: :class:`Tencentcloud::Ecm.v20190719.models.Placement`
        # @param IsReturnable: 判断预付费的云盘是否支持主动退还。<br><li>true:支持主动退还<br><li>false:不支持主动退还。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsReturnable: Boolean
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
        # @param DeadlineTime: 云硬盘的到期时间。
        # @type DeadlineTime: String
        # @param AttachMode: 云盘的挂载类型。取值范围：<br><li>PF: PF挂载<br><li>VF: VF挂载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttachMode: String

        attr_accessor :DeleteWithInstance, :RenewFlag, :DiskType, :DiskState, :SnapshotCount, :AutoRenewFlagError, :Rollbacking, :InstanceIdList, :Encrypt, :DiskName, :BackupDisk, :Tags, :InstanceId, :AutoSnapshotPolicyIds, :ThroughputPerformance, :Migrating, :DiskId, :SnapshotSize, :Placement, :IsReturnable, :Attached, :DiskSize, :MigratePercent, :DiskUsage, :DiskChargeType, :Portable, :SnapshotAbility, :DeadlineError, :RollbackPercent, :DifferDaysOfDeadline, :ReturnFailCode, :Shareable, :CreateTime, :DeadlineTime, :AttachMode

        def initialize(deletewithinstance=nil, renewflag=nil, disktype=nil, diskstate=nil, snapshotcount=nil, autorenewflagerror=nil, rollbacking=nil, instanceidlist=nil, encrypt=nil, diskname=nil, backupdisk=nil, tags=nil, instanceid=nil, autosnapshotpolicyids=nil, throughputperformance=nil, migrating=nil, diskid=nil, snapshotsize=nil, placement=nil, isreturnable=nil, attached=nil, disksize=nil, migratepercent=nil, diskusage=nil, diskchargetype=nil, portable=nil, snapshotability=nil, deadlineerror=nil, rollbackpercent=nil, differdaysofdeadline=nil, returnfailcode=nil, shareable=nil, createtime=nil, deadlinetime=nil, attachmode=nil)
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
          @AutoSnapshotPolicyIds = autosnapshotpolicyids
          @ThroughputPerformance = throughputperformance
          @Migrating = migrating
          @DiskId = diskid
          @SnapshotSize = snapshotsize
          @Placement = placement
          @IsReturnable = isreturnable
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
          @DeadlineTime = deadlinetime
          @AttachMode = attachmode
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
          @DeadlineTime = params['DeadlineTime']
          @AttachMode = params['AttachMode']
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

      # 磁盘信息
      class DiskInfo < TencentCloud::Common::AbstractModel
        # @param DiskType: 磁盘类型：LOCAL_BASIC
        # @type DiskType: String
        # @param DiskId: 磁盘ID
        # @type DiskId: String
        # @param DiskSize: 磁盘大小（GB）
        # @type DiskSize: Integer
        # @param DeleteWithInstance: 是否随实例删除。
        # @type DeleteWithInstance: Boolean
        # @param SnapshotId: 快照ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotId: String

        attr_accessor :DiskType, :DiskId, :DiskSize, :DeleteWithInstance, :SnapshotId

        def initialize(disktype=nil, diskid=nil, disksize=nil, deletewithinstance=nil, snapshotid=nil)
          @DiskType = disktype
          @DiskId = diskid
          @DiskSize = disksize
          @DeleteWithInstance = deletewithinstance
          @SnapshotId = snapshotid
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskId = params['DiskId']
          @DiskSize = params['DiskSize']
          @DeleteWithInstance = params['DeleteWithInstance']
          @SnapshotId = params['SnapshotId']
        end
      end

      # 描述EIP配额信息
      class EipQuota < TencentCloud::Common::AbstractModel
        # @param QuotaId: 配额名称，取值范围：
        # TOTAL_EIP_QUOTA：用户当前地域下EIP的配额数；
        # DAILY_EIP_APPLY：用户当前地域下今日申购次数；
        # DAILY_PUBLIC_IP_ASSIGN：用户当前地域下，重新分配公网 IP次数。
        # @type QuotaId: String
        # @param QuotaCurrent: 当前数量
        # @type QuotaCurrent: Integer
        # @param QuotaLimit: 配额数量
        # @type QuotaLimit: Integer

        attr_accessor :QuotaId, :QuotaCurrent, :QuotaLimit

        def initialize(quotaid=nil, quotacurrent=nil, quotalimit=nil)
          @QuotaId = quotaid
          @QuotaCurrent = quotacurrent
          @QuotaLimit = quotalimit
        end

        def deserialize(params)
          @QuotaId = params['QuotaId']
          @QuotaCurrent = params['QuotaCurrent']
          @QuotaLimit = params['QuotaLimit']
        end
      end

      # EnableRoutes请求参数结构体
      class EnableRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表唯一ID。
        # @type RouteTableId: String
        # @param RouteIds: 路由策略ID。
        # @type RouteIds: Array

        attr_accessor :RouteTableId, :RouteIds

        def initialize(routetableid=nil, routeids=nil)
          @RouteTableId = routetableid
          @RouteIds = routeids
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteIds = params['RouteIds']
        end
      end

      # EnableRoutes返回参数结构体
      class EnableRoutesResponse < TencentCloud::Common::AbstractModel
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

      # 增强服务
      class EnhancedService < TencentCloud::Common::AbstractModel
        # @param SecurityService: 是否开启云镜服务。
        # @type SecurityService: :class:`Tencentcloud::Ecm.v20190719.models.RunSecurityServiceEnabled`
        # @param MonitorService: 是否开启云监控服务。
        # @type MonitorService: :class:`Tencentcloud::Ecm.v20190719.models.RunMonitorServiceEnabled`
        # @param EIPDirectService: 是否开通IP直通。若不指定该参数，则Linux镜像默认开通，windows镜像暂不支持IP直通。
        # @type EIPDirectService: :class:`Tencentcloud::Ecm.v20190719.models.RunEIPDirectServiceEnabled`

        attr_accessor :SecurityService, :MonitorService, :EIPDirectService

        def initialize(securityservice=nil, monitorservice=nil, eipdirectservice=nil)
          @SecurityService = securityservice
          @MonitorService = monitorservice
          @EIPDirectService = eipdirectservice
        end

        def deserialize(params)
          unless params['SecurityService'].nil?
            @SecurityService = RunSecurityServiceEnabled.new
            @SecurityService.deserialize(params['SecurityService'])
          end
          unless params['MonitorService'].nil?
            @MonitorService = RunMonitorServiceEnabled.new
            @MonitorService.deserialize(params['MonitorService'])
          end
          unless params['EIPDirectService'].nil?
            @EIPDirectService = RunEIPDirectServiceEnabled.new
            @EIPDirectService.deserialize(params['EIPDirectService'])
          end
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

      # HAVIP对象。
      class HaVip < TencentCloud::Common::AbstractModel
        # @param HaVipId: HAVIP的ID，是HAVIP的唯一标识。
        # @type HaVipId: String
        # @param HaVipName: HAVIP名称。
        # @type HaVipName: String
        # @param Vip: 虚拟IP地址。
        # @type Vip: String
        # @param VpcId: HAVIP所在私有网络ID。
        # @type VpcId: String
        # @param SubnetId: HAVIP所在子网ID。
        # @type SubnetId: String
        # @param NetworkInterfaceId: HAVIP关联弹性网卡ID。
        # @type NetworkInterfaceId: String
        # @param InstanceId: 被绑定的实例ID。
        # @type InstanceId: String
        # @param AddressIp: 绑定EIP。
        # @type AddressIp: String
        # @param State: 状态：
        # AVAILABLE：运行中。
        # UNBIND：未绑定。
        # @type State: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param Business: 使用havip的业务标识。
        # @type Business: String

        attr_accessor :HaVipId, :HaVipName, :Vip, :VpcId, :SubnetId, :NetworkInterfaceId, :InstanceId, :AddressIp, :State, :CreatedTime, :Business

        def initialize(havipid=nil, havipname=nil, vip=nil, vpcid=nil, subnetid=nil, networkinterfaceid=nil, instanceid=nil, addressip=nil, state=nil, createdtime=nil, business=nil)
          @HaVipId = havipid
          @HaVipName = havipname
          @Vip = vip
          @VpcId = vpcid
          @SubnetId = subnetid
          @NetworkInterfaceId = networkinterfaceid
          @InstanceId = instanceid
          @AddressIp = addressip
          @State = state
          @CreatedTime = createdtime
          @Business = business
        end

        def deserialize(params)
          @HaVipId = params['HaVipId']
          @HaVipName = params['HaVipName']
          @Vip = params['Vip']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @InstanceId = params['InstanceId']
          @AddressIp = params['AddressIp']
          @State = params['State']
          @CreatedTime = params['CreatedTime']
          @Business = params['Business']
        end
      end

      # 负载均衡健康检查
      class HealthCheck < TencentCloud::Common::AbstractModel
        # @param HealthSwitch: 是否开启健康检查：1（开启）、0（关闭）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthSwitch: Integer
        # @param TimeOut: 健康检查的响应超时时间，可选值：2~60，默认值：2，单位：秒。响应超时时间要小于检查间隔时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeOut: Integer
        # @param IntervalTime: 健康检查探测间隔时间，默认值：5，可选值：5~300，单位：秒。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntervalTime: Integer
        # @param HealthNum: 健康阈值，默认值：3，表示当连续探测三次健康则表示该转发正常，可选值：2~10，单位：次。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthNum: Integer
        # @param UnHealthyNum: 不健康阈值，默认值：3，表示当连续探测三次不健康则表示该转发异常，可选值：2~10，单位：次。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnHealthyNum: Integer
        # @param CheckPort: 自定义探测相关参数。健康检查端口，默认为后端服务的端口，除非您希望指定特定端口，否则建议留空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckPort: Integer
        # @param ContextType: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查的输入格式，可取值：HEX或TEXT；取值为HEX时，SendContext和RecvContext的字符只能在0123456789ABCDEF中选取且长度必须是偶数位。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContextType: String
        # @param SendContext: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查发送的请求内容，只允许ASCII可见字符，最大长度限制500。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SendContext: String
        # @param RecvContext: 自定义探测相关参数。健康检查协议CheckType的值取CUSTOM时，必填此字段，代表健康检查返回的结果，只允许ASCII可见字符，最大长度限制500。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecvContext: String
        # @param CheckType: 自定义探测相关参数。健康检查使用的协议：TCP | CUSTOM（UDP监听器只支持CUSTOM；如果使用自定义健康检查功能，则必传）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CheckType: String

        attr_accessor :HealthSwitch, :TimeOut, :IntervalTime, :HealthNum, :UnHealthyNum, :CheckPort, :ContextType, :SendContext, :RecvContext, :CheckType

        def initialize(healthswitch=nil, timeout=nil, intervaltime=nil, healthnum=nil, unhealthynum=nil, checkport=nil, contexttype=nil, sendcontext=nil, recvcontext=nil, checktype=nil)
          @HealthSwitch = healthswitch
          @TimeOut = timeout
          @IntervalTime = intervaltime
          @HealthNum = healthnum
          @UnHealthyNum = unhealthynum
          @CheckPort = checkport
          @ContextType = contexttype
          @SendContext = sendcontext
          @RecvContext = recvcontext
          @CheckType = checktype
        end

        def deserialize(params)
          @HealthSwitch = params['HealthSwitch']
          @TimeOut = params['TimeOut']
          @IntervalTime = params['IntervalTime']
          @HealthNum = params['HealthNum']
          @UnHealthyNum = params['UnHealthyNum']
          @CheckPort = params['CheckPort']
          @ContextType = params['ContextType']
          @SendContext = params['SendContext']
          @RecvContext = params['RecvContext']
          @CheckType = params['CheckType']
        end
      end

      # 运营商信息
      class ISP < TencentCloud::Common::AbstractModel
        # @param ISPId: 运营商ID
        # @type ISPId: String
        # @param ISPName: 运营商名称
        # @type ISPName: String

        attr_accessor :ISPId, :ISPName

        def initialize(ispid=nil, ispname=nil)
          @ISPId = ispid
          @ISPName = ispname
        end

        def deserialize(params)
          @ISPId = params['ISPId']
          @ISPName = params['ISPName']
        end
      end

      # 运行商统计信息
      class ISPCounter < TencentCloud::Common::AbstractModel
        # @param ProviderName: 运营商名称
        # @type ProviderName: String
        # @param ProviderNodeNum: 节点数量
        # @type ProviderNodeNum: Integer
        # @param ProvederInstanceNum: 实例数量
        # @type ProvederInstanceNum: Integer
        # @param ZoneInstanceInfoSet: Zone实例信息结构体数组
        # @type ZoneInstanceInfoSet: Array
        # @param ProviderInstanceNum: 实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProviderInstanceNum: Integer

        attr_accessor :ProviderName, :ProviderNodeNum, :ProvederInstanceNum, :ZoneInstanceInfoSet, :ProviderInstanceNum
        extend Gem::Deprecate
        deprecate :ProvederInstanceNum, :none, 2023, 11
        deprecate :ProvederInstanceNum=, :none, 2023, 11

        def initialize(providername=nil, providernodenum=nil, provederinstancenum=nil, zoneinstanceinfoset=nil, providerinstancenum=nil)
          @ProviderName = providername
          @ProviderNodeNum = providernodenum
          @ProvederInstanceNum = provederinstancenum
          @ZoneInstanceInfoSet = zoneinstanceinfoset
          @ProviderInstanceNum = providerinstancenum
        end

        def deserialize(params)
          @ProviderName = params['ProviderName']
          @ProviderNodeNum = params['ProviderNodeNum']
          @ProvederInstanceNum = params['ProvederInstanceNum']
          unless params['ZoneInstanceInfoSet'].nil?
            @ZoneInstanceInfoSet = []
            params['ZoneInstanceInfoSet'].each do |i|
              zoneinstanceinfo_tmp = ZoneInstanceInfo.new
              zoneinstanceinfo_tmp.deserialize(i)
              @ZoneInstanceInfoSet << zoneinstanceinfo_tmp
            end
          end
          @ProviderInstanceNum = params['ProviderInstanceNum']
        end
      end

      # 多运营商IPv6 Cidr Block
      class ISPIPv6CidrBlock < TencentCloud::Common::AbstractModel
        # @param IPv6CidrBlock: IPv6 CIdr Block。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6CidrBlock: String
        # @param ISPType: 网络运营商类型 取值范围:'CMCC'-中国移动, 'CTCC'-中国电信, 'CUCC'-中国联调
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ISPType: String

        attr_accessor :IPv6CidrBlock, :ISPType

        def initialize(ipv6cidrblock=nil, isptype=nil)
          @IPv6CidrBlock = ipv6cidrblock
          @ISPType = isptype
        end

        def deserialize(params)
          @IPv6CidrBlock = params['IPv6CidrBlock']
          @ISPType = params['ISPType']
        end
      end

      # 申请ipv6 cidr block的信息
      class ISPTypeItem < TencentCloud::Common::AbstractModel
        # @param ISPType: IPv6 Cidr所属运营商类型，支持的类型有 'CMCC'-中国移动, 'CTCC'-中国电信, 'CUCC'-中国联调。作为入参数时为必选。
        # @type ISPType: String
        # @param Count: 申请IPv6 Cidr Block的个数。作为入参数时为必选。
        # @type Count: Integer

        attr_accessor :ISPType, :Count

        def initialize(isptype=nil, count=nil)
          @ISPType = isptype
          @Count = count
        end

        def deserialize(params)
          @ISPType = params['ISPType']
          @Count = params['Count']
        end
      end

      # 镜像信息
      class Image < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param ImageState: 镜像状态
        # @type ImageState: String
        # @param ImageType: 镜像类型
        # @type ImageType: String
        # @param ImageOsName: 操作系统名称
        # @type ImageOsName: String
        # @param ImageDescription: 镜像描述
        # @type ImageDescription: String
        # @param ImageCreateTime: 镜像导入时间
        # @type ImageCreateTime: String
        # @param Architecture: 操作系统位数
        # @type Architecture: String
        # @param OsType: 操作系统类型
        # @type OsType: String
        # @param OsVersion: 操作系统版本
        # @type OsVersion: String
        # @param Platform: 操作系统平台
        # @type Platform: String
        # @param ImageOwner: 镜像所有者
        # @type ImageOwner: Integer
        # @param ImageSize: 镜像大小。单位：GB
        # @type ImageSize: Integer
        # @param SrcImage: 镜像来源信息
        # @type SrcImage: :class:`Tencentcloud::Ecm.v20190719.models.SrcImage`
        # @param ImageSource: 镜像来源类型
        # @type ImageSource: String
        # @param TaskId: 中间态和失败时候的任务ID
        # @type TaskId: String
        # @param IsSupportCloudInit: 是否支持CloudInit
        # @type IsSupportCloudInit: Boolean

        attr_accessor :ImageId, :ImageName, :ImageState, :ImageType, :ImageOsName, :ImageDescription, :ImageCreateTime, :Architecture, :OsType, :OsVersion, :Platform, :ImageOwner, :ImageSize, :SrcImage, :ImageSource, :TaskId, :IsSupportCloudInit

        def initialize(imageid=nil, imagename=nil, imagestate=nil, imagetype=nil, imageosname=nil, imagedescription=nil, imagecreatetime=nil, architecture=nil, ostype=nil, osversion=nil, platform=nil, imageowner=nil, imagesize=nil, srcimage=nil, imagesource=nil, taskid=nil, issupportcloudinit=nil)
          @ImageId = imageid
          @ImageName = imagename
          @ImageState = imagestate
          @ImageType = imagetype
          @ImageOsName = imageosname
          @ImageDescription = imagedescription
          @ImageCreateTime = imagecreatetime
          @Architecture = architecture
          @OsType = ostype
          @OsVersion = osversion
          @Platform = platform
          @ImageOwner = imageowner
          @ImageSize = imagesize
          @SrcImage = srcimage
          @ImageSource = imagesource
          @TaskId = taskid
          @IsSupportCloudInit = issupportcloudinit
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @ImageState = params['ImageState']
          @ImageType = params['ImageType']
          @ImageOsName = params['ImageOsName']
          @ImageDescription = params['ImageDescription']
          @ImageCreateTime = params['ImageCreateTime']
          @Architecture = params['Architecture']
          @OsType = params['OsType']
          @OsVersion = params['OsVersion']
          @Platform = params['Platform']
          @ImageOwner = params['ImageOwner']
          @ImageSize = params['ImageSize']
          unless params['SrcImage'].nil?
            @SrcImage = SrcImage.new
            @SrcImage.deserialize(params['SrcImage'])
          end
          @ImageSource = params['ImageSource']
          @TaskId = params['TaskId']
          @IsSupportCloudInit = params['IsSupportCloudInit']
        end
      end

      # 镜像限制配置
      class ImageLimitConfig < TencentCloud::Common::AbstractModel
        # @param MaxImageSize: 支持的最大镜像大小，包括可导入的自定义镜像大小，中心云镜像大小，单位为GB。
        # @type MaxImageSize: Integer

        attr_accessor :MaxImageSize

        def initialize(maximagesize=nil)
          @MaxImageSize = maximagesize
        end

        def deserialize(params)
          @MaxImageSize = params['MaxImageSize']
        end
      end

      # 支持的操作系统类型，根据windows和Linux分类。
      class ImageOsList < TencentCloud::Common::AbstractModel
        # @param Windows: 支持的windows操作系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Windows: Array
        # @param Linux: 支持的linux操作系统
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Linux: Array

        attr_accessor :Windows, :Linux

        def initialize(windows=nil, linux=nil)
          @Windows = windows
          @Linux = linux
        end

        def deserialize(params)
          @Windows = params['Windows']
          @Linux = params['Linux']
        end
      end

      # 镜像任务
      class ImageTask < TencentCloud::Common::AbstractModel
        # @param State: 镜像导入状态， PENDING, PROCESSING, SUCCESS, FAILED
        # @type State: String
        # @param Message: 导入失败(FAILED)时， 说明失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :State, :Message, :ImageName, :CreateTime

        def initialize(state=nil, message=nil, imagename=nil, createtime=nil)
          @State = state
          @Message = message
          @ImageName = imagename
          @CreateTime = createtime
        end

        def deserialize(params)
          @State = params['State']
          @Message = params['Message']
          @ImageName = params['ImageName']
          @CreateTime = params['CreateTime']
        end
      end

      # 镜像文件信息
      class ImageUrl < TencentCloud::Common::AbstractModel
        # @param ImageFile: 镜像文件COS链接，如设置私有读写，需授权腾讯云ECM运营账号访问权限。
        # @type ImageFile: String

        attr_accessor :ImageFile

        def initialize(imagefile=nil)
          @ImageFile = imagefile
        end

        def deserialize(params)
          @ImageFile = params['ImageFile']
        end
      end

      # ImportCustomImage请求参数结构体
      class ImportCustomImageRequest < TencentCloud::Common::AbstractModel
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param Architecture: 导入镜像的操作系统架构，x86_64 或 i386
        # @type Architecture: String
        # @param OsType: 导入镜像的操作系统类型，通过DescribeImportImageOs获取
        # @type OsType: String
        # @param OsVersion: 导入镜像的操作系统版本，通过DescribeImportImageOs获取
        # @type OsVersion: String
        # @param ImageDescription: 镜像描述
        # @type ImageDescription: String
        # @param InitFlag: 镜像启动方式，cloudinit或nbd， 默认cloudinit
        # @type InitFlag: String
        # @param ImageUrls: 镜像文件描述，多层镜像按顺序传入
        # @type ImageUrls: Array

        attr_accessor :ImageName, :Architecture, :OsType, :OsVersion, :ImageDescription, :InitFlag, :ImageUrls

        def initialize(imagename=nil, architecture=nil, ostype=nil, osversion=nil, imagedescription=nil, initflag=nil, imageurls=nil)
          @ImageName = imagename
          @Architecture = architecture
          @OsType = ostype
          @OsVersion = osversion
          @ImageDescription = imagedescription
          @InitFlag = initflag
          @ImageUrls = imageurls
        end

        def deserialize(params)
          @ImageName = params['ImageName']
          @Architecture = params['Architecture']
          @OsType = params['OsType']
          @OsVersion = params['OsVersion']
          @ImageDescription = params['ImageDescription']
          @InitFlag = params['InitFlag']
          unless params['ImageUrls'].nil?
            @ImageUrls = []
            params['ImageUrls'].each do |i|
              imageurl_tmp = ImageUrl.new
              imageurl_tmp.deserialize(i)
              @ImageUrls << imageurl_tmp
            end
          end
        end
      end

      # ImportCustomImage返回参数结构体
      class ImportCustomImageResponse < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID
        # @type ImageId: String
        # @param TaskId: 异步任务ID，可根据DescribeCustomImageTask查询任务信息
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageId, :TaskId, :RequestId

        def initialize(imageid=nil, taskid=nil, requestid=nil)
          @ImageId = imageid
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ImportImage请求参数结构体
      class ImportImageRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像的Id。
        # @type ImageId: String
        # @param ImageDescription: 镜像的描述。
        # @type ImageDescription: String
        # @param SourceRegion: 源地域
        # @type SourceRegion: String

        attr_accessor :ImageId, :ImageDescription, :SourceRegion

        def initialize(imageid=nil, imagedescription=nil, sourceregion=nil)
          @ImageId = imageid
          @ImageDescription = imagedescription
          @SourceRegion = sourceregion
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageDescription = params['ImageDescription']
          @SourceRegion = params['SourceRegion']
        end
      end

      # ImportImage返回参数结构体
      class ImportImageResponse < TencentCloud::Common::AbstractModel
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

      # 用于描述实例相关的信息。
      class Instance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param InstanceName: 实例名称，如ens-34241f3s。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param InstanceState: 实例状态。取值范围：
        # PENDING：表示创建中
        # LAUNCH_FAILED：表示创建失败
        # RUNNING：表示运行中
        # STOPPED：表示关机
        # STARTING：表示开机中
        # STOPPING：表示关机中
        # REBOOTING：表示重启中
        # SHUTDOWN：表示停止待销毁
        # TERMINATING：表示销毁中。
        # @type InstanceState: String
        # @param Image: 实例当前使用的镜像的信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Image: :class:`Tencentcloud::Ecm.v20190719.models.Image`
        # @param SimpleModule: 实例当前所属的模块简要信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SimpleModule: :class:`Tencentcloud::Ecm.v20190719.models.SimpleModule`
        # @param Position: 实例所在的位置相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: :class:`Tencentcloud::Ecm.v20190719.models.Position`
        # @param Internet: 实例的网络相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Internet: :class:`Tencentcloud::Ecm.v20190719.models.Internet`
        # @param InstanceTypeConfig: 实例的配置相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceTypeConfig: :class:`Tencentcloud::Ecm.v20190719.models.InstanceTypeConfig`
        # @param CreateTime: 实例的创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param TagSet: 实例的标签信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param LatestOperation: 实例最后一次操作。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperation: String
        # @param LatestOperationState: 实例最后一次操作结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LatestOperationState: String
        # @param RestrictState: 实例业务状态。取值范围：
        # NORMAL：表示正常状态的实例
        # EXPIRED：表示过期的实例
        # PROTECTIVELY_ISOLATED：表示被安全隔离的实例。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RestrictState: String
        # @param SystemDiskSize: 系统盘大小，单位GB。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemDiskSize: Integer
        # @param DataDiskSize: 数据盘大小，单位GB。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDiskSize: Integer
        # @param UUID: 实例UUID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UUID: String
        # @param PayMode: 付费方式。
        #     0为后付费。
        #     1为预付费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PayMode: Integer
        # @param ExpireTime: 过期时间。格式为yyyy-mm-dd HH:mm:ss。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param IsolatedTime: 隔离时间。格式为yyyy-mm-dd HH:mm:ss。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolatedTime: String
        # @param RenewFlag: 是否自动续费。
        #       0为不自动续费。
        #       1为自动续费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewFlag: Integer
        # @param ExpireState: 过期状态。
        #     NORMAL 表示机器运行正常。
        #     WILL_EXPIRE 表示即将过期。
        #     EXPIRED 表示已过期。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireState: String
        # @param SystemDisk: 系统盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SystemDisk: :class:`Tencentcloud::Ecm.v20190719.models.DiskInfo`
        # @param DataDisks: 数据盘信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DataDisks: Array
        # @param NewFlag: 新实例标志
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewFlag: Integer
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 DescribeSecurityGroups 的返回值中的sgId字段来获取。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityGroupIds: Array
        # @param VirtualPrivateCloud: VPC属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VirtualPrivateCloud: :class:`Tencentcloud::Ecm.v20190719.models.VirtualPrivateCloud`
        # @param ISP: 实例运营商字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ISP: String
        # @param PhysicalPosition: 物理位置信息。注意该字段目前为保留字段，均为空值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhysicalPosition: :class:`Tencentcloud::Ecm.v20190719.models.PhysicalPosition`

        attr_accessor :InstanceId, :InstanceName, :InstanceState, :Image, :SimpleModule, :Position, :Internet, :InstanceTypeConfig, :CreateTime, :TagSet, :LatestOperation, :LatestOperationState, :RestrictState, :SystemDiskSize, :DataDiskSize, :UUID, :PayMode, :ExpireTime, :IsolatedTime, :RenewFlag, :ExpireState, :SystemDisk, :DataDisks, :NewFlag, :SecurityGroupIds, :VirtualPrivateCloud, :ISP, :PhysicalPosition

        def initialize(instanceid=nil, instancename=nil, instancestate=nil, image=nil, simplemodule=nil, position=nil, internet=nil, instancetypeconfig=nil, createtime=nil, tagset=nil, latestoperation=nil, latestoperationstate=nil, restrictstate=nil, systemdisksize=nil, datadisksize=nil, uuid=nil, paymode=nil, expiretime=nil, isolatedtime=nil, renewflag=nil, expirestate=nil, systemdisk=nil, datadisks=nil, newflag=nil, securitygroupids=nil, virtualprivatecloud=nil, isp=nil, physicalposition=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @InstanceState = instancestate
          @Image = image
          @SimpleModule = simplemodule
          @Position = position
          @Internet = internet
          @InstanceTypeConfig = instancetypeconfig
          @CreateTime = createtime
          @TagSet = tagset
          @LatestOperation = latestoperation
          @LatestOperationState = latestoperationstate
          @RestrictState = restrictstate
          @SystemDiskSize = systemdisksize
          @DataDiskSize = datadisksize
          @UUID = uuid
          @PayMode = paymode
          @ExpireTime = expiretime
          @IsolatedTime = isolatedtime
          @RenewFlag = renewflag
          @ExpireState = expirestate
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @NewFlag = newflag
          @SecurityGroupIds = securitygroupids
          @VirtualPrivateCloud = virtualprivatecloud
          @ISP = isp
          @PhysicalPosition = physicalposition
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceState = params['InstanceState']
          unless params['Image'].nil?
            @Image = Image.new
            @Image.deserialize(params['Image'])
          end
          unless params['SimpleModule'].nil?
            @SimpleModule = SimpleModule.new
            @SimpleModule.deserialize(params['SimpleModule'])
          end
          unless params['Position'].nil?
            @Position = Position.new
            @Position.deserialize(params['Position'])
          end
          unless params['Internet'].nil?
            @Internet = Internet.new
            @Internet.deserialize(params['Internet'])
          end
          unless params['InstanceTypeConfig'].nil?
            @InstanceTypeConfig = InstanceTypeConfig.new
            @InstanceTypeConfig.deserialize(params['InstanceTypeConfig'])
          end
          @CreateTime = params['CreateTime']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @LatestOperation = params['LatestOperation']
          @LatestOperationState = params['LatestOperationState']
          @RestrictState = params['RestrictState']
          @SystemDiskSize = params['SystemDiskSize']
          @DataDiskSize = params['DataDiskSize']
          @UUID = params['UUID']
          @PayMode = params['PayMode']
          @ExpireTime = params['ExpireTime']
          @IsolatedTime = params['IsolatedTime']
          @RenewFlag = params['RenewFlag']
          @ExpireState = params['ExpireState']
          unless params['SystemDisk'].nil?
            @SystemDisk = DiskInfo.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              diskinfo_tmp = DiskInfo.new
              diskinfo_tmp.deserialize(i)
              @DataDisks << diskinfo_tmp
            end
          end
          @NewFlag = params['NewFlag']
          @SecurityGroupIds = params['SecurityGroupIds']
          unless params['VirtualPrivateCloud'].nil?
            @VirtualPrivateCloud = VirtualPrivateCloud.new
            @VirtualPrivateCloud.deserialize(params['VirtualPrivateCloud'])
          end
          @ISP = params['ISP']
          unless params['PhysicalPosition'].nil?
            @PhysicalPosition = PhysicalPosition.new
            @PhysicalPosition.deserialize(params['PhysicalPosition'])
          end
        end
      end

      # 机型族配置
      class InstanceFamilyConfig < TencentCloud::Common::AbstractModel
        # @param InstanceFamilyName: 机型名称
        # @type InstanceFamilyName: String
        # @param InstanceFamily: 机型ID
        # @type InstanceFamily: String

        attr_accessor :InstanceFamilyName, :InstanceFamily

        def initialize(instancefamilyname=nil, instancefamily=nil)
          @InstanceFamilyName = instancefamilyname
          @InstanceFamily = instancefamily
        end

        def deserialize(params)
          @InstanceFamilyName = params['InstanceFamilyName']
          @InstanceFamily = params['InstanceFamily']
        end
      end

      # 实例系列类型配置
      class InstanceFamilyTypeConfig < TencentCloud::Common::AbstractModel
        # @param InstanceFamilyType: 实例机型系列类型Id
        # @type InstanceFamilyType: String
        # @param InstanceFamilyTypeName: 实例机型系列类型名称
        # @type InstanceFamilyTypeName: String

        attr_accessor :InstanceFamilyType, :InstanceFamilyTypeName

        def initialize(instancefamilytype=nil, instancefamilytypename=nil)
          @InstanceFamilyType = instancefamilytype
          @InstanceFamilyTypeName = instancefamilytypename
        end

        def deserialize(params)
          @InstanceFamilyType = params['InstanceFamilyType']
          @InstanceFamilyTypeName = params['InstanceFamilyTypeName']
        end
      end

      # 实例网卡ip网络信息数组
      class InstanceNetworkInfo < TencentCloud::Common::AbstractModel
        # @param AddressInfoSet: 实例内外网ip相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressInfoSet: Array
        # @param NetworkInterfaceId: 网卡ID。
        # @type NetworkInterfaceId: String
        # @param NetworkInterfaceName: 网卡名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkInterfaceName: String
        # @param Primary: 主网卡属性。true为主网卡，false为辅助网卡。
        # @type Primary: Boolean

        attr_accessor :AddressInfoSet, :NetworkInterfaceId, :NetworkInterfaceName, :Primary

        def initialize(addressinfoset=nil, networkinterfaceid=nil, networkinterfacename=nil, primary=nil)
          @AddressInfoSet = addressinfoset
          @NetworkInterfaceId = networkinterfaceid
          @NetworkInterfaceName = networkinterfacename
          @Primary = primary
        end

        def deserialize(params)
          unless params['AddressInfoSet'].nil?
            @AddressInfoSet = []
            params['AddressInfoSet'].each do |i|
              addressinfo_tmp = AddressInfo.new
              addressinfo_tmp.deserialize(i)
              @AddressInfoSet << addressinfo_tmp
            end
          end
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @NetworkInterfaceName = params['NetworkInterfaceName']
          @Primary = params['Primary']
        end
      end

      # 机器网络资源限制
      class InstanceNetworkLimitConfig < TencentCloud::Common::AbstractModel
        # @param CpuNum: cpu核数
        # @type CpuNum: Integer
        # @param NetworkInterfaceLimit: 网卡数量限制
        # @type NetworkInterfaceLimit: Integer
        # @param InnerIpPerNetworkInterface: 每张网卡内网ip数量限制
        # @type InnerIpPerNetworkInterface: Integer
        # @param PublicIpPerInstance: 每个实例的外网ip限制
        # @type PublicIpPerInstance: Integer

        attr_accessor :CpuNum, :NetworkInterfaceLimit, :InnerIpPerNetworkInterface, :PublicIpPerInstance

        def initialize(cpunum=nil, networkinterfacelimit=nil, innerippernetworkinterface=nil, publicipperinstance=nil)
          @CpuNum = cpunum
          @NetworkInterfaceLimit = networkinterfacelimit
          @InnerIpPerNetworkInterface = innerippernetworkinterface
          @PublicIpPerInstance = publicipperinstance
        end

        def deserialize(params)
          @CpuNum = params['CpuNum']
          @NetworkInterfaceLimit = params['NetworkInterfaceLimit']
          @InnerIpPerNetworkInterface = params['InnerIpPerNetworkInterface']
          @PublicIpPerInstance = params['PublicIpPerInstance']
        end
      end

      # 实例可执行操作
      class InstanceOperator < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例id
        # @type InstanceId: String
        # @param DeniedActions: 实例禁止的操作
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              operatoraction_tmp = OperatorAction.new
              operatoraction_tmp.deserialize(i)
              @DeniedActions << operatoraction_tmp
            end
          end
        end
      end

      # 描述实例的价格相关
      class InstancePricesPartDetail < TencentCloud::Common::AbstractModel
        # @param CpuPrice: cpu的价格信息
        # @type CpuPrice: :class:`Tencentcloud::Ecm.v20190719.models.PriceDetail`
        # @param MemPrice: 内存价格信息
        # @type MemPrice: :class:`Tencentcloud::Ecm.v20190719.models.PriceDetail`
        # @param DisksPrice: 磁盘价格信息
        # @type DisksPrice: :class:`Tencentcloud::Ecm.v20190719.models.PriceDetail`

        attr_accessor :CpuPrice, :MemPrice, :DisksPrice

        def initialize(cpuprice=nil, memprice=nil, disksprice=nil)
          @CpuPrice = cpuprice
          @MemPrice = memprice
          @DisksPrice = disksprice
        end

        def deserialize(params)
          unless params['CpuPrice'].nil?
            @CpuPrice = PriceDetail.new
            @CpuPrice.deserialize(params['CpuPrice'])
          end
          unless params['MemPrice'].nil?
            @MemPrice = PriceDetail.new
            @MemPrice.deserialize(params['MemPrice'])
          end
          unless params['DisksPrice'].nil?
            @DisksPrice = PriceDetail.new
            @DisksPrice.deserialize(params['DisksPrice'])
          end
        end
      end

      # 用于描述实例的统计信息
      class InstanceStatistic < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例的类型
        # @type InstanceType: String
        # @param InstanceCount: 实例的个数
        # @type InstanceCount: Integer

        attr_accessor :InstanceType, :InstanceCount

        def initialize(instancetype=nil, instancecount=nil)
          @InstanceType = instancetype
          @InstanceCount = instancecount
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @InstanceCount = params['InstanceCount']
        end
      end

      # 机型配置
      class InstanceTypeConfig < TencentCloud::Common::AbstractModel
        # @param InstanceFamilyConfig: 机型族配置信息
        # @type InstanceFamilyConfig: :class:`Tencentcloud::Ecm.v20190719.models.InstanceFamilyConfig`
        # @param InstanceType: 机型
        # @type InstanceType: String
        # @param Vcpu: CPU核数
        # @type Vcpu: Integer
        # @param Memory: 内存大小
        # @type Memory: Integer
        # @param Frequency: 主频
        # @type Frequency: String
        # @param CpuModelName: 处理器型号
        # @type CpuModelName: String
        # @param InstanceFamilyTypeConfig: 机型族类别配置信息
        # @type InstanceFamilyTypeConfig: :class:`Tencentcloud::Ecm.v20190719.models.InstanceFamilyTypeConfig`
        # @param ExtInfo: 机型额外信息 是一个json字符串，如果存在则表示特殊机型，格式如下：{"dataDiskSize":3200,"systemDiskSize":60, "systemDiskSizeShow":"系统盘默认60G","dataDiskSizeShow":"本地NVMe SSD 硬盘3200 GB"}
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtInfo: String
        # @param Vgpu: GPU卡数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Vgpu: Float
        # @param GpuModelName: GPU型号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GpuModelName: String

        attr_accessor :InstanceFamilyConfig, :InstanceType, :Vcpu, :Memory, :Frequency, :CpuModelName, :InstanceFamilyTypeConfig, :ExtInfo, :Vgpu, :GpuModelName

        def initialize(instancefamilyconfig=nil, instancetype=nil, vcpu=nil, memory=nil, frequency=nil, cpumodelname=nil, instancefamilytypeconfig=nil, extinfo=nil, vgpu=nil, gpumodelname=nil)
          @InstanceFamilyConfig = instancefamilyconfig
          @InstanceType = instancetype
          @Vcpu = vcpu
          @Memory = memory
          @Frequency = frequency
          @CpuModelName = cpumodelname
          @InstanceFamilyTypeConfig = instancefamilytypeconfig
          @ExtInfo = extinfo
          @Vgpu = vgpu
          @GpuModelName = gpumodelname
        end

        def deserialize(params)
          unless params['InstanceFamilyConfig'].nil?
            @InstanceFamilyConfig = InstanceFamilyConfig.new
            @InstanceFamilyConfig.deserialize(params['InstanceFamilyConfig'])
          end
          @InstanceType = params['InstanceType']
          @Vcpu = params['Vcpu']
          @Memory = params['Memory']
          @Frequency = params['Frequency']
          @CpuModelName = params['CpuModelName']
          unless params['InstanceFamilyTypeConfig'].nil?
            @InstanceFamilyTypeConfig = InstanceFamilyTypeConfig.new
            @InstanceFamilyTypeConfig.deserialize(params['InstanceFamilyTypeConfig'])
          end
          @ExtInfo = params['ExtInfo']
          @Vgpu = params['Vgpu']
          @GpuModelName = params['GpuModelName']
        end
      end

      # 实例价格信息
      class InstancesPrice < TencentCloud::Common::AbstractModel
        # @param InstancePricesPartDetail: 分部描述实例子维度的价格
        # @type InstancePricesPartDetail: :class:`Tencentcloud::Ecm.v20190719.models.InstancePricesPartDetail`
        # @param Discount: 实例总价折扣
        # @type Discount: Integer
        # @param DiscountPrice: 折扣后价格
        # @type DiscountPrice: Integer
        # @param OriginalPrice: 折扣前价格，原始总价
        # @type OriginalPrice: Integer

        attr_accessor :InstancePricesPartDetail, :Discount, :DiscountPrice, :OriginalPrice

        def initialize(instancepricespartdetail=nil, discount=nil, discountprice=nil, originalprice=nil)
          @InstancePricesPartDetail = instancepricespartdetail
          @Discount = discount
          @DiscountPrice = discountprice
          @OriginalPrice = originalprice
        end

        def deserialize(params)
          unless params['InstancePricesPartDetail'].nil?
            @InstancePricesPartDetail = InstancePricesPartDetail.new
            @InstancePricesPartDetail.deserialize(params['InstancePricesPartDetail'])
          end
          @Discount = params['Discount']
          @DiscountPrice = params['DiscountPrice']
          @OriginalPrice = params['OriginalPrice']
        end
      end

      # 实例的网络相关信息。
      class Internet < TencentCloud::Common::AbstractModel
        # @param PrivateIPAddressSet: 实例的内网相关信息列表。顺序为主网卡在前，辅助网卡按绑定先后顺序排列。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIPAddressSet: Array
        # @param PublicIPAddressSet: 实例的公网相关信息列表。顺序为主网卡在前，辅助网卡按绑定先后顺序排列。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIPAddressSet: Array
        # @param InstanceNetworkInfoSet: 实例网络相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceNetworkInfoSet: Array

        attr_accessor :PrivateIPAddressSet, :PublicIPAddressSet, :InstanceNetworkInfoSet

        def initialize(privateipaddressset=nil, publicipaddressset=nil, instancenetworkinfoset=nil)
          @PrivateIPAddressSet = privateipaddressset
          @PublicIPAddressSet = publicipaddressset
          @InstanceNetworkInfoSet = instancenetworkinfoset
        end

        def deserialize(params)
          unless params['PrivateIPAddressSet'].nil?
            @PrivateIPAddressSet = []
            params['PrivateIPAddressSet'].each do |i|
              privateipaddressinfo_tmp = PrivateIPAddressInfo.new
              privateipaddressinfo_tmp.deserialize(i)
              @PrivateIPAddressSet << privateipaddressinfo_tmp
            end
          end
          unless params['PublicIPAddressSet'].nil?
            @PublicIPAddressSet = []
            params['PublicIPAddressSet'].each do |i|
              publicipaddressinfo_tmp = PublicIPAddressInfo.new
              publicipaddressinfo_tmp.deserialize(i)
              @PublicIPAddressSet << publicipaddressinfo_tmp
            end
          end
          unless params['InstanceNetworkInfoSet'].nil?
            @InstanceNetworkInfoSet = []
            params['InstanceNetworkInfoSet'].each do |i|
              instancenetworkinfo_tmp = InstanceNetworkInfo.new
              instancenetworkinfo_tmp.deserialize(i)
              @InstanceNetworkInfoSet << instancenetworkinfo_tmp
            end
          end
        end
      end

      # IPv6地址信息。
      class Ipv6Address < TencentCloud::Common::AbstractModel
        # @param Address: IPv6地址，形如：3402:4e00:20:100:0:8cd9:2a67:71f3
        # @type Address: String
        # @param Primary: 是否是主IP。
        # @type Primary: Boolean
        # @param AddressId: EIP实例ID，形如：eip-hxlqja90。
        # @type AddressId: String
        # @param Description: 描述信息。
        # @type Description: String
        # @param IsWanIpBlocked: 公网IP是否被封堵。
        # @type IsWanIpBlocked: Boolean
        # @param State: IPv6地址状态：
        # PENDING：生产中
        # MIGRATING：迁移中
        # DELETING：删除中
        # AVAILABLE：可用的
        # @type State: String

        attr_accessor :Address, :Primary, :AddressId, :Description, :IsWanIpBlocked, :State

        def initialize(address=nil, primary=nil, addressid=nil, description=nil, iswanipblocked=nil, state=nil)
          @Address = address
          @Primary = primary
          @AddressId = addressid
          @Description = description
          @IsWanIpBlocked = iswanipblocked
          @State = state
        end

        def deserialize(params)
          @Address = params['Address']
          @Primary = params['Primary']
          @AddressId = params['AddressId']
          @Description = params['Description']
          @IsWanIpBlocked = params['IsWanIpBlocked']
          @State = params['State']
        end
      end

      # IPv6子网段对象。
      class Ipv6SubnetCidrBlock < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例`ID`。形如：`subnet-pxir56ns`。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubnetId: String
        # @param Ipv6CidrBlock: `IPv6`子网段。形如：`3402:4e00:20:1001::/64`
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6CidrBlock: String

        attr_accessor :SubnetId, :Ipv6CidrBlock

        def initialize(subnetid=nil, ipv6cidrblock=nil)
          @SubnetId = subnetid
          @Ipv6CidrBlock = ipv6cidrblock
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
        end
      end

      # 描述密钥对信息
      class KeyPair < TencentCloud::Common::AbstractModel
        # @param KeyId: 密钥对的ID，是密钥对的唯一标识。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyId: String
        # @param KeyName: 密钥对名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyName: String
        # @param ProjectId: 密钥对所属的项目ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: Integer
        # @param Description: 密钥对描述信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param PublicKey: 密钥对的纯文本公钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicKey: String
        # @param PrivateKey: 钥对的纯文本私钥。腾讯云不会保管私钥，请用户自行妥善保存。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateKey: String
        # @param AssociatedInstanceIds: 钥关联的实例ID列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociatedInstanceIds: Array
        # @param CreatedTime: 创建时间。按照ISO8601标准表示，并且使用UTC时间。格式为：YYYY-MM-DDThh:mm:ssZ。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatedTime: String

        attr_accessor :KeyId, :KeyName, :ProjectId, :Description, :PublicKey, :PrivateKey, :AssociatedInstanceIds, :CreatedTime

        def initialize(keyid=nil, keyname=nil, projectid=nil, description=nil, publickey=nil, privatekey=nil, associatedinstanceids=nil, createdtime=nil)
          @KeyId = keyid
          @KeyName = keyname
          @ProjectId = projectid
          @Description = description
          @PublicKey = publickey
          @PrivateKey = privatekey
          @AssociatedInstanceIds = associatedinstanceids
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeyName = params['KeyName']
          @ProjectId = params['ProjectId']
          @Description = params['Description']
          @PublicKey = params['PublicKey']
          @PrivateKey = params['PrivateKey']
          @AssociatedInstanceIds = params['AssociatedInstanceIds']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 负载均衡监听器
      class Listener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 负载均衡监听器 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param Protocol: 监听器协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 监听器端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param HealthCheck: 监听器的健康检查信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthCheck: :class:`Tencentcloud::Ecm.v20190719.models.HealthCheck`
        # @param Scheduler: 请求的调度方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Scheduler: String
        # @param SessionExpireTime: 会话保持时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionExpireTime: Integer
        # @param ListenerName: 监听器的名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerName: String
        # @param CreateTime: 监听器的创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param SessionType: 监听器的会话类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionType: String
        # @param EndPort: 端口段结束端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndPort: Integer

        attr_accessor :ListenerId, :Protocol, :Port, :HealthCheck, :Scheduler, :SessionExpireTime, :ListenerName, :CreateTime, :SessionType, :EndPort

        def initialize(listenerid=nil, protocol=nil, port=nil, healthcheck=nil, scheduler=nil, sessionexpiretime=nil, listenername=nil, createtime=nil, sessiontype=nil, endport=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @HealthCheck = healthcheck
          @Scheduler = scheduler
          @SessionExpireTime = sessionexpiretime
          @ListenerName = listenername
          @CreateTime = createtime
          @SessionType = sessiontype
          @EndPort = endport
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @Scheduler = params['Scheduler']
          @SessionExpireTime = params['SessionExpireTime']
          @ListenerName = params['ListenerName']
          @CreateTime = params['CreateTime']
          @SessionType = params['SessionType']
          @EndPort = params['EndPort']
        end
      end

      # 监听器后端
      class ListenerBackend < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param Protocol: 监听器的协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 监听器的端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Targets: 监听器上绑定的后端服务列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array

        attr_accessor :ListenerId, :Protocol, :Port, :Targets

        def initialize(listenerid=nil, protocol=nil, port=nil, targets=nil)
          @ListenerId = listenerid
          @Protocol = protocol
          @Port = port
          @Targets = targets
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              backend_tmp = Backend.new
              backend_tmp.deserialize(i)
              @Targets << backend_tmp
            end
          end
        end
      end

      # 监听器健康状态
      class ListenerHealth < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerName: String
        # @param Protocol: 监听器的协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Port: 监听器的端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Rules: 监听器的转发规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array

        attr_accessor :ListenerId, :ListenerName, :Protocol, :Port, :Rules

        def initialize(listenerid=nil, listenername=nil, protocol=nil, port=nil, rules=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @Port = port
          @Rules = rules
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rulehealth_tmp = RuleHealth.new
              rulehealth_tmp.deserialize(i)
              @Rules << rulehealth_tmp
            end
          end
        end
      end

      # 负载均衡实例信息
      class LoadBalancer < TencentCloud::Common::AbstractModel
        # @param Region: 区域。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Position: 位置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Position: :class:`Tencentcloud::Ecm.v20190719.models.Position`
        # @param LoadBalancerId: 负载均衡实例 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例的名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerName: String
        # @param LoadBalancerType: 负载均衡实例的网络类型：OPEN：公网属性
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerType: String
        # @param LoadBalancerVips: 负载均衡实例的 VIP 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerVips: Array
        # @param Status: 负载均衡实例的状态，包括
        #  0：创建中，1：正常运行。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CreateTime: 负载均衡实例的创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param StatusTime: 负载均衡实例的上次状态转换时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusTime: String
        # @param VpcId: 私有网络的 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcId: String
        # @param Tags: 负载均衡实例的标签信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param VipIsp: 负载均衡IP地址所属的ISP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VipIsp: String
        # @param NetworkAttributes: 负载均衡实例的网络属性。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NetworkAttributes: :class:`Tencentcloud::Ecm.v20190719.models.LoadBalancerInternetAccessible`
        # @param SecureGroups: 安全组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecureGroups: Array
        # @param LoadBalancerPassToTarget: 后端机器是否放通来自ELB的流量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerPassToTarget: Boolean
        # @param AddressIPv6: 负载均衡实例的IPv6地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AddressIPv6: String

        attr_accessor :Region, :Position, :LoadBalancerId, :LoadBalancerName, :LoadBalancerType, :LoadBalancerVips, :Status, :CreateTime, :StatusTime, :VpcId, :Tags, :VipIsp, :NetworkAttributes, :SecureGroups, :LoadBalancerPassToTarget, :AddressIPv6

        def initialize(region=nil, position=nil, loadbalancerid=nil, loadbalancername=nil, loadbalancertype=nil, loadbalancervips=nil, status=nil, createtime=nil, statustime=nil, vpcid=nil, tags=nil, vipisp=nil, networkattributes=nil, securegroups=nil, loadbalancerpasstotarget=nil, addressipv6=nil)
          @Region = region
          @Position = position
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @LoadBalancerType = loadbalancertype
          @LoadBalancerVips = loadbalancervips
          @Status = status
          @CreateTime = createtime
          @StatusTime = statustime
          @VpcId = vpcid
          @Tags = tags
          @VipIsp = vipisp
          @NetworkAttributes = networkattributes
          @SecureGroups = securegroups
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
          @AddressIPv6 = addressipv6
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['Position'].nil?
            @Position = Position.new
            @Position.deserialize(params['Position'])
          end
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerType = params['LoadBalancerType']
          @LoadBalancerVips = params['LoadBalancerVips']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @StatusTime = params['StatusTime']
          @VpcId = params['VpcId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              taginfo_tmp = TagInfo.new
              taginfo_tmp.deserialize(i)
              @Tags << taginfo_tmp
            end
          end
          @VipIsp = params['VipIsp']
          unless params['NetworkAttributes'].nil?
            @NetworkAttributes = LoadBalancerInternetAccessible.new
            @NetworkAttributes.deserialize(params['NetworkAttributes'])
          end
          @SecureGroups = params['SecureGroups']
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
          @AddressIPv6 = params['AddressIPv6']
        end
      end

      # 负载均衡器健康状态
      class LoadBalancerHealth < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancerName: String
        # @param Listeners: 监听器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listeners: Array

        attr_accessor :LoadBalancerId, :LoadBalancerName, :Listeners

        def initialize(loadbalancerid=nil, loadbalancername=nil, listeners=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Listeners = listeners
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              listenerhealth_tmp = ListenerHealth.new
              listenerhealth_tmp.deserialize(i)
              @Listeners << listenerhealth_tmp
            end
          end
        end
      end

      # 负载均衡的带宽限制等信息。
      class LoadBalancerInternetAccessible < TencentCloud::Common::AbstractModel
        # @param InternetMaxBandwidthOut: 最大出带宽，单位Mbps。默认值10
        # @type InternetMaxBandwidthOut: Integer

        attr_accessor :InternetMaxBandwidthOut

        def initialize(internetmaxbandwidthout=nil)
          @InternetMaxBandwidthOut = internetmaxbandwidthout
        end

        def deserialize(params)
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
        end
      end

      # MigrateNetworkInterface请求参数结构体
      class MigrateNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域，形如ap-xian-ecm。
        # @type EcmRegion: String
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param SourceInstanceId: 弹性网卡当前绑定的ECM实例ID。形如：ein-r8hr2upy。
        # @type SourceInstanceId: String
        # @param DestinationInstanceId: 待迁移的目的ECM实例ID。
        # @type DestinationInstanceId: String

        attr_accessor :EcmRegion, :NetworkInterfaceId, :SourceInstanceId, :DestinationInstanceId

        def initialize(ecmregion=nil, networkinterfaceid=nil, sourceinstanceid=nil, destinationinstanceid=nil)
          @EcmRegion = ecmregion
          @NetworkInterfaceId = networkinterfaceid
          @SourceInstanceId = sourceinstanceid
          @DestinationInstanceId = destinationinstanceid
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @SourceInstanceId = params['SourceInstanceId']
          @DestinationInstanceId = params['DestinationInstanceId']
        end
      end

      # MigrateNetworkInterface返回参数结构体
      class MigrateNetworkInterfaceResponse < TencentCloud::Common::AbstractModel
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

      # MigratePrivateIpAddress请求参数结构体
      class MigratePrivateIpAddressRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域，形如ap-xian-ecm。
        # @type EcmRegion: String
        # @param SourceNetworkInterfaceId: 当前内网IP绑定的弹性网卡实例ID，例如：eni-11112222。
        # @type SourceNetworkInterfaceId: String
        # @param DestinationNetworkInterfaceId: 待迁移的目的弹性网卡实例ID。
        # @type DestinationNetworkInterfaceId: String
        # @param PrivateIpAddress: 迁移的内网IP地址，例如：10.0.0.6。
        # @type PrivateIpAddress: String

        attr_accessor :EcmRegion, :SourceNetworkInterfaceId, :DestinationNetworkInterfaceId, :PrivateIpAddress

        def initialize(ecmregion=nil, sourcenetworkinterfaceid=nil, destinationnetworkinterfaceid=nil, privateipaddress=nil)
          @EcmRegion = ecmregion
          @SourceNetworkInterfaceId = sourcenetworkinterfaceid
          @DestinationNetworkInterfaceId = destinationnetworkinterfaceid
          @PrivateIpAddress = privateipaddress
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @SourceNetworkInterfaceId = params['SourceNetworkInterfaceId']
          @DestinationNetworkInterfaceId = params['DestinationNetworkInterfaceId']
          @PrivateIpAddress = params['PrivateIpAddress']
        end
      end

      # MigratePrivateIpAddress返回参数结构体
      class MigratePrivateIpAddressResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAddressAttribute请求参数结构体
      class ModifyAddressAttributeRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param AddressId: 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：eip-11112222。
        # @type AddressId: String
        # @param AddressName: 修改后的 EIP 名称。长度上限为20个字符。
        # @type AddressName: String
        # @param EipDirectConnection: 设定EIP是否直通，"TRUE"表示直通，"FALSE"表示非直通。注意该参数仅对EIP直通功能可见的用户可以设定。
        # @type EipDirectConnection: String

        attr_accessor :EcmRegion, :AddressId, :AddressName, :EipDirectConnection

        def initialize(ecmregion=nil, addressid=nil, addressname=nil, eipdirectconnection=nil)
          @EcmRegion = ecmregion
          @AddressId = addressid
          @AddressName = addressname
          @EipDirectConnection = eipdirectconnection
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @AddressId = params['AddressId']
          @AddressName = params['AddressName']
          @EipDirectConnection = params['EipDirectConnection']
        end
      end

      # ModifyAddressAttribute返回参数结构体
      class ModifyAddressAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAddressesBandwidth请求参数结构体
      class ModifyAddressesBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param AddressIds: EIP唯一标识ID，形如'eip-xxxxxxx'
        # @type AddressIds: Array
        # @param InternetMaxBandwidthOut: 调整带宽目标值
        # @type InternetMaxBandwidthOut: Integer

        attr_accessor :EcmRegion, :AddressIds, :InternetMaxBandwidthOut

        def initialize(ecmregion=nil, addressids=nil, internetmaxbandwidthout=nil)
          @EcmRegion = ecmregion
          @AddressIds = addressids
          @InternetMaxBandwidthOut = internetmaxbandwidthout
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @AddressIds = params['AddressIds']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
        end
      end

      # ModifyAddressesBandwidth返回参数结构体
      class ModifyAddressesBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyDefaultSubnet请求参数结构体
      class ModifyDefaultSubnetRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM地域
        # @type EcmRegion: String
        # @param Zone: ECM可用区
        # @type Zone: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String

        attr_accessor :EcmRegion, :Zone, :VpcId, :SubnetId

        def initialize(ecmregion=nil, zone=nil, vpcid=nil, subnetid=nil)
          @EcmRegion = ecmregion
          @Zone = zone
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @Zone = params['Zone']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # ModifyDefaultSubnet返回参数结构体
      class ModifyDefaultSubnetResponse < TencentCloud::Common::AbstractModel
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

      # ModifyHaVipAttribute请求参数结构体
      class ModifyHaVipAttributeRequest < TencentCloud::Common::AbstractModel
        # @param HaVipId: HAVIP唯一ID，形如：havip-9o233uri。
        # @type HaVipId: String
        # @param HaVipName: HAVIP名称，可任意命名，但不得超过60个字符。
        # @type HaVipName: String

        attr_accessor :HaVipId, :HaVipName

        def initialize(havipid=nil, havipname=nil)
          @HaVipId = havipid
          @HaVipName = havipname
        end

        def deserialize(params)
          @HaVipId = params['HaVipId']
          @HaVipName = params['HaVipName']
        end
      end

      # ModifyHaVipAttribute返回参数结构体
      class ModifyHaVipAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyImageAttribute请求参数结构体
      class ModifyImageAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像ID，形如img-gvbnzy6f
        # @type ImageId: String
        # @param ImageName: 设置新的镜像名称；必须满足下列限制：
        # 不得超过20个字符。
        # - 镜像名称不能与已有镜像重复。
        # @type ImageName: String
        # @param ImageDescription: 设置新的镜像描述；必须满足下列限制：
        # - 不得超过60个字符。
        # @type ImageDescription: String

        attr_accessor :ImageId, :ImageName, :ImageDescription

        def initialize(imageid=nil, imagename=nil, imagedescription=nil)
          @ImageId = imageid
          @ImageName = imagename
          @ImageDescription = imagedescription
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @ImageDescription = params['ImageDescription']
        end
      end

      # ModifyImageAttribute返回参数结构体
      class ModifyImageAttributeResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceIdSet: 待修改的实例ID列表。在单次请求的过程中，请求实例数上限为100。
        # @type InstanceIdSet: Array
        # @param InstanceName: 修改成功后显示的实例名称，不得超过60个字符，不传则名称显示为空。
        # @type InstanceName: String
        # @param SecurityGroups: 指定实例的安全组Id列表，子机将重新关联指定列表的安全组，原本关联的安全组会被解绑。限制不超过5个。
        # @type SecurityGroups: Array

        attr_accessor :InstanceIdSet, :InstanceName, :SecurityGroups

        def initialize(instanceidset=nil, instancename=nil, securitygroups=nil)
          @InstanceIdSet = instanceidset
          @InstanceName = instancename
          @SecurityGroups = securitygroups
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @InstanceName = params['InstanceName']
          @SecurityGroups = params['SecurityGroups']
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

      # ModifyIpv6AddressesAttribute请求参数结构体
      class ModifyIpv6AddressesAttributeRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param NetworkInterfaceId: 弹性网卡实例ID，形如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param Ipv6Addresses: 指定的IPv6地址信息。
        # @type Ipv6Addresses: Array

        attr_accessor :EcmRegion, :NetworkInterfaceId, :Ipv6Addresses

        def initialize(ecmregion=nil, networkinterfaceid=nil, ipv6addresses=nil)
          @EcmRegion = ecmregion
          @NetworkInterfaceId = networkinterfaceid
          @Ipv6Addresses = ipv6addresses
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['Ipv6Addresses'].nil?
            @Ipv6Addresses = []
            params['Ipv6Addresses'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6Addresses << ipv6address_tmp
            end
          end
        end
      end

      # ModifyIpv6AddressesAttribute返回参数结构体
      class ModifyIpv6AddressesAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyIpv6AddressesBandwidth请求参数结构体
      class ModifyIpv6AddressesBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param InternetMaxBandwidthOut: 修改的目标带宽，单位Mbps
        # @type InternetMaxBandwidthOut: Integer
        # @param Ipv6Addresses: IPV6地址。Ipv6Addresses和Ipv6AddressId必须且只能传一个
        # @type Ipv6Addresses: Array
        # @param Ipv6AddressIds: IPV6地址对应的唯一ID，形如eip-xxxxxxxx。Ipv6Addresses和Ipv6AddressId必须且只能传一个
        # @type Ipv6AddressIds: Array

        attr_accessor :EcmRegion, :InternetMaxBandwidthOut, :Ipv6Addresses, :Ipv6AddressIds

        def initialize(ecmregion=nil, internetmaxbandwidthout=nil, ipv6addresses=nil, ipv6addressids=nil)
          @EcmRegion = ecmregion
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @Ipv6Addresses = ipv6addresses
          @Ipv6AddressIds = ipv6addressids
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          unless params['Ipv6Addresses'].nil?
            @Ipv6Addresses = []
            params['Ipv6Addresses'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6Addresses << ipv6address_tmp
            end
          end
          @Ipv6AddressIds = params['Ipv6AddressIds']
        end
      end

      # ModifyIpv6AddressesBandwidth返回参数结构体
      class ModifyIpv6AddressesBandwidthResponse < TencentCloud::Common::AbstractModel
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

      # ModifyListener请求参数结构体
      class ModifyListenerRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID
        # @type ListenerId: String
        # @param ListenerName: 新的监听器名称
        # @type ListenerName: String
        # @param SessionExpireTime: 会话保持时间，单位：秒。可选值：30~3600，默认 0，表示不开启。此参数仅适用于TCP/UDP监听器。
        # @type SessionExpireTime: Integer
        # @param HealthCheck: 健康检查相关参数
        # @type HealthCheck: :class:`Tencentcloud::Ecm.v20190719.models.HealthCheck`
        # @param Scheduler: 监听器转发的方式。可选值：WRR、LEAST_CONN
        # 分别表示按权重轮询、最小连接数， 默认为 WRR。
        # @type Scheduler: String

        attr_accessor :LoadBalancerId, :ListenerId, :ListenerName, :SessionExpireTime, :HealthCheck, :Scheduler

        def initialize(loadbalancerid=nil, listenerid=nil, listenername=nil, sessionexpiretime=nil, healthcheck=nil, scheduler=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @ListenerName = listenername
          @SessionExpireTime = sessionexpiretime
          @HealthCheck = healthcheck
          @Scheduler = scheduler
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @SessionExpireTime = params['SessionExpireTime']
          unless params['HealthCheck'].nil?
            @HealthCheck = HealthCheck.new
            @HealthCheck.deserialize(params['HealthCheck'])
          end
          @Scheduler = params['Scheduler']
        end
      end

      # ModifyListener返回参数结构体
      class ModifyListenerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancerAttributes请求参数结构体
      class ModifyLoadBalancerAttributesRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡的唯一ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例名称
        # @type LoadBalancerName: String
        # @param InternetChargeInfo: 网络计费及带宽相关参数
        # @type InternetChargeInfo: :class:`Tencentcloud::Ecm.v20190719.models.LoadBalancerInternetAccessible`
        # @param LoadBalancerPassToTarget: Target是否放通来自ELB的流量。开启放通（true）：只验证ELB上的安全组；不开启放通（false）：需同时验证ELB和后端实例上的安全组。
        # @type LoadBalancerPassToTarget: Boolean

        attr_accessor :LoadBalancerId, :LoadBalancerName, :InternetChargeInfo, :LoadBalancerPassToTarget

        def initialize(loadbalancerid=nil, loadbalancername=nil, internetchargeinfo=nil, loadbalancerpasstotarget=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @InternetChargeInfo = internetchargeinfo
          @LoadBalancerPassToTarget = loadbalancerpasstotarget
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['InternetChargeInfo'].nil?
            @InternetChargeInfo = LoadBalancerInternetAccessible.new
            @InternetChargeInfo.deserialize(params['InternetChargeInfo'])
          end
          @LoadBalancerPassToTarget = params['LoadBalancerPassToTarget']
        end
      end

      # ModifyLoadBalancerAttributes返回参数结构体
      class ModifyLoadBalancerAttributesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModuleConfig请求参数结构体
      class ModifyModuleConfigRequest < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块ID。
        # @type ModuleId: String
        # @param InstanceType: 机型ID。
        # @type InstanceType: String
        # @param DefaultDataDiskSize: 默认数据盘大小，单位：G。范围不得超过数据盘范围大小，详看DescribeConfig。
        # @type DefaultDataDiskSize: Integer
        # @param DefaultSystemDiskSize: 默认系统盘大小，单位：G。范围不得超过数据盘范围大小，详看DescribeConfig。
        # @type DefaultSystemDiskSize: Integer
        # @param SystemDisk: 系统盘
        # @type SystemDisk: :class:`Tencentcloud::Ecm.v20190719.models.SystemDisk`
        # @param DataDisks: 数据盘
        # @type DataDisks: Array

        attr_accessor :ModuleId, :InstanceType, :DefaultDataDiskSize, :DefaultSystemDiskSize, :SystemDisk, :DataDisks

        def initialize(moduleid=nil, instancetype=nil, defaultdatadisksize=nil, defaultsystemdisksize=nil, systemdisk=nil, datadisks=nil)
          @ModuleId = moduleid
          @InstanceType = instancetype
          @DefaultDataDiskSize = defaultdatadisksize
          @DefaultSystemDiskSize = defaultsystemdisksize
          @SystemDisk = systemdisk
          @DataDisks = datadisks
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @InstanceType = params['InstanceType']
          @DefaultDataDiskSize = params['DefaultDataDiskSize']
          @DefaultSystemDiskSize = params['DefaultSystemDiskSize']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
        end
      end

      # ModifyModuleConfig返回参数结构体
      class ModifyModuleConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModuleDisableWanIp请求参数结构体
      class ModifyModuleDisableWanIpRequest < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块ID
        # @type ModuleId: String
        # @param DisableWanIp: 是否禁止分配外网ip,true：统一分配外网ip，false：禁止分配外网ip.
        # @type DisableWanIp: Boolean

        attr_accessor :ModuleId, :DisableWanIp

        def initialize(moduleid=nil, disablewanip=nil)
          @ModuleId = moduleid
          @DisableWanIp = disablewanip
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @DisableWanIp = params['DisableWanIp']
        end
      end

      # ModifyModuleDisableWanIp返回参数结构体
      class ModifyModuleDisableWanIpResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModuleImage请求参数结构体
      class ModifyModuleImageRequest < TencentCloud::Common::AbstractModel
        # @param DefaultImageId: 默认镜像ID
        # @type DefaultImageId: String
        # @param ModuleId: 模块ID
        # @type ModuleId: String

        attr_accessor :DefaultImageId, :ModuleId

        def initialize(defaultimageid=nil, moduleid=nil)
          @DefaultImageId = defaultimageid
          @ModuleId = moduleid
        end

        def deserialize(params)
          @DefaultImageId = params['DefaultImageId']
          @ModuleId = params['ModuleId']
        end
      end

      # ModifyModuleImage返回参数结构体
      class ModifyModuleImageResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModuleIpDirect请求参数结构体
      class ModifyModuleIpDirectRequest < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块ID。
        # @type ModuleId: String
        # @param CloseIpDirect: 是否关闭IP直通。取值范围：
        # true：表示关闭IP直通
        # false：表示开通IP直通
        # @type CloseIpDirect: Boolean

        attr_accessor :ModuleId, :CloseIpDirect

        def initialize(moduleid=nil, closeipdirect=nil)
          @ModuleId = moduleid
          @CloseIpDirect = closeipdirect
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @CloseIpDirect = params['CloseIpDirect']
        end
      end

      # ModifyModuleIpDirect返回参数结构体
      class ModifyModuleIpDirectResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModuleName请求参数结构体
      class ModifyModuleNameRequest < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块ID。
        # @type ModuleId: String
        # @param ModuleName: 模块名称。
        # @type ModuleName: String

        attr_accessor :ModuleId, :ModuleName

        def initialize(moduleid=nil, modulename=nil)
          @ModuleId = moduleid
          @ModuleName = modulename
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @ModuleName = params['ModuleName']
        end
      end

      # ModifyModuleName返回参数结构体
      class ModifyModuleNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModuleNetwork请求参数结构体
      class ModifyModuleNetworkRequest < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块Id
        # @type ModuleId: String
        # @param DefaultBandwidth: 默认出带宽上限
        # @type DefaultBandwidth: Integer
        # @param DefaultBandwidthIn: 默认入带宽上限
        # @type DefaultBandwidthIn: Integer

        attr_accessor :ModuleId, :DefaultBandwidth, :DefaultBandwidthIn

        def initialize(moduleid=nil, defaultbandwidth=nil, defaultbandwidthin=nil)
          @ModuleId = moduleid
          @DefaultBandwidth = defaultbandwidth
          @DefaultBandwidthIn = defaultbandwidthin
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @DefaultBandwidth = params['DefaultBandwidth']
          @DefaultBandwidthIn = params['DefaultBandwidthIn']
        end
      end

      # ModifyModuleNetwork返回参数结构体
      class ModifyModuleNetworkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyModuleSecurityGroups请求参数结构体
      class ModifyModuleSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupIdSet: 安全组列表。不超过5个。
        # @type SecurityGroupIdSet: Array
        # @param ModuleId: 模块id。
        # @type ModuleId: String

        attr_accessor :SecurityGroupIdSet, :ModuleId

        def initialize(securitygroupidset=nil, moduleid=nil)
          @SecurityGroupIdSet = securitygroupidset
          @ModuleId = moduleid
        end

        def deserialize(params)
          @SecurityGroupIdSet = params['SecurityGroupIdSet']
          @ModuleId = params['ModuleId']
        end
      end

      # ModifyModuleSecurityGroups返回参数结构体
      class ModifyModuleSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPrivateIpAddressesAttribute请求参数结构体
      class ModifyPrivateIpAddressesAttributeRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param PrivateIpAddresses: 指定的内网IP信息。
        # @type PrivateIpAddresses: Array
        # @param EcmRegion: ECM 节点Region信息，形如ap-xian-ecm。
        # @type EcmRegion: String

        attr_accessor :NetworkInterfaceId, :PrivateIpAddresses, :EcmRegion

        def initialize(networkinterfaceid=nil, privateipaddresses=nil, ecmregion=nil)
          @NetworkInterfaceId = networkinterfaceid
          @PrivateIpAddresses = privateipaddresses
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['PrivateIpAddresses'].nil?
            @PrivateIpAddresses = []
            params['PrivateIpAddresses'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddresses << privateipaddressspecification_tmp
            end
          end
          @EcmRegion = params['EcmRegion']
        end
      end

      # ModifyPrivateIpAddressesAttribute返回参数结构体
      class ModifyPrivateIpAddressesAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRouteTableAttribute请求参数结构体
      class ModifyRouteTableAttributeRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c
        # @type RouteTableId: String
        # @param RouteTableName: 路由表名称
        # @type RouteTableName: String

        attr_accessor :RouteTableId, :RouteTableName

        def initialize(routetableid=nil, routetablename=nil)
          @RouteTableId = routetableid
          @RouteTableName = routetablename
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteTableName = params['RouteTableName']
        end
      end

      # ModifyRouteTableAttribute返回参数结构体
      class ModifyRouteTableAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityGroupAttribute请求参数结构体
      class ModifySecurityGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param GroupName: 安全组名称，可任意命名，但不得超过60个字符。
        # @type GroupName: String
        # @param GroupDescription: 安全组备注，最多100个字符。
        # @type GroupDescription: String

        attr_accessor :SecurityGroupId, :GroupName, :GroupDescription

        def initialize(securitygroupid=nil, groupname=nil, groupdescription=nil)
          @SecurityGroupId = securitygroupid
          @GroupName = groupname
          @GroupDescription = groupdescription
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @GroupName = params['GroupName']
          @GroupDescription = params['GroupDescription']
        end
      end

      # ModifySecurityGroupAttribute返回参数结构体
      class ModifySecurityGroupAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityGroupPolicies请求参数结构体
      class ModifySecurityGroupPoliciesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取。
        # @type SecurityGroupId: String
        # @param SecurityGroupPolicySet: 安全组规则集合。 SecurityGroupPolicySet对象必须同时指定新的出（Egress）入（Ingress）站规则。 SecurityGroupPolicy对象不支持自定义索引（PolicyIndex）。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Ecm.v20190719.models.SecurityGroupPolicySet`
        # @param SortPolicys: 排序安全组标识。值为True时，支持安全组排序；SortPolicys不存在或SortPolicys为False时，为修改安全组规则。
        # @type SortPolicys: Boolean

        attr_accessor :SecurityGroupId, :SecurityGroupPolicySet, :SortPolicys

        def initialize(securitygroupid=nil, securitygrouppolicyset=nil, sortpolicys=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupPolicySet = securitygrouppolicyset
          @SortPolicys = sortpolicys
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
          @SortPolicys = params['SortPolicys']
        end
      end

      # ModifySecurityGroupPolicies返回参数结构体
      class ModifySecurityGroupPoliciesResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubnetAttribute请求参数结构体
      class ModifySubnetAttributeRequest < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例ID。形如：subnet-pxir56ns。
        # @type SubnetId: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param SubnetName: 子网名称，最大长度不能超过60个字节。
        # @type SubnetName: String
        # @param EnableBroadcast: 子网是否开启广播。
        # @type EnableBroadcast: String
        # @param Tags: 子网的标签键值
        # @type Tags: Array

        attr_accessor :SubnetId, :EcmRegion, :SubnetName, :EnableBroadcast, :Tags

        def initialize(subnetid=nil, ecmregion=nil, subnetname=nil, enablebroadcast=nil, tags=nil)
          @SubnetId = subnetid
          @EcmRegion = ecmregion
          @SubnetName = subnetname
          @EnableBroadcast = enablebroadcast
          @Tags = tags
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @EcmRegion = params['EcmRegion']
          @SubnetName = params['SubnetName']
          @EnableBroadcast = params['EnableBroadcast']
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

      # ModifySubnetAttribute返回参数结构体
      class ModifySubnetAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetPort请求参数结构体
      class ModifyTargetPortRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID
        # @type ListenerId: String
        # @param Targets: 要修改端口的后端服务列表
        # @type Targets: Array
        # @param NewPort: 后端服务绑定到监听器或转发规则的新端口
        # @type NewPort: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :Targets, :NewPort

        def initialize(loadbalancerid=nil, listenerid=nil, targets=nil, newport=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Targets = targets
          @NewPort = newport
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @NewPort = params['NewPort']
        end
      end

      # ModifyTargetPort返回参数结构体
      class ModifyTargetPortResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTargetWeight请求参数结构体
      class ModifyTargetWeightRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param ListenerId: 负载均衡监听器 ID
        # @type ListenerId: String
        # @param Targets: 要修改权重的后端服务列表
        # @type Targets: Array
        # @param Weight: 后端服务新的转发权重，取值范围：0~100，默认值10。如果设置了 Targets.Weight 参数，则此参数不生效。
        # @type Weight: Integer

        attr_accessor :LoadBalancerId, :ListenerId, :Targets, :Weight

        def initialize(loadbalancerid=nil, listenerid=nil, targets=nil, weight=nil)
          @LoadBalancerId = loadbalancerid
          @ListenerId = listenerid
          @Targets = targets
          @Weight = weight
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @Weight = params['Weight']
        end
      end

      # ModifyTargetWeight返回参数结构体
      class ModifyTargetWeightResponse < TencentCloud::Common::AbstractModel
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

      # ModifyVpcAttribute请求参数结构体
      class ModifyVpcAttributeRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。形如：vpc-f49l6u0z。
        # @type VpcId: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param VpcName: 私有网络名称，可任意命名，但不得超过60个字符。
        # @type VpcName: String
        # @param Tags: 标签
        # @type Tags: Array
        # @param Description: 私有网络描述
        # @type Description: String

        attr_accessor :VpcId, :EcmRegion, :VpcName, :Tags, :Description

        def initialize(vpcid=nil, ecmregion=nil, vpcname=nil, tags=nil, description=nil)
          @VpcId = vpcid
          @EcmRegion = ecmregion
          @VpcName = vpcname
          @Tags = tags
          @Description = description
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @EcmRegion = params['EcmRegion']
          @VpcName = params['VpcName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Description = params['Description']
        end
      end

      # ModifyVpcAttribute返回参数结构体
      class ModifyVpcAttributeResponse < TencentCloud::Common::AbstractModel
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

      # 模块信息
      class Module < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块Id。
        # @type ModuleId: String
        # @param ModuleName: 模块名称。
        # @type ModuleName: String
        # @param ModuleState: 模块状态：
        # NORMAL：正常。
        # DELETING：删除中
        # DELETEFAILED：删除失败。
        # @type ModuleState: String
        # @param DefaultSystemDiskSize: 默认系统盘大小。
        # @type DefaultSystemDiskSize: Integer
        # @param DefaultDataDiskSize: 默认数据盘大小。
        # @type DefaultDataDiskSize: Integer
        # @param InstanceTypeConfig: 默认机型。
        # @type InstanceTypeConfig: :class:`Tencentcloud::Ecm.v20190719.models.InstanceTypeConfig`
        # @param DefaultImage: 默认镜像。
        # @type DefaultImage: :class:`Tencentcloud::Ecm.v20190719.models.Image`
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param DefaultBandwidth: 默认出带宽。
        # @type DefaultBandwidth: Integer
        # @param TagSet: 标签集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param CloseIpDirect: 是否关闭IP直通。
        # @type CloseIpDirect: Integer
        # @param SecurityGroupIds: 默认安全组id列表。
        # @type SecurityGroupIds: Array
        # @param DefaultBandwidthIn: 默认入带宽。
        # @type DefaultBandwidthIn: Integer
        # @param UserData: 自定义脚本数据
        # @type UserData: String
        # @param SystemDisk: 系统盘信息。
        # @type SystemDisk: :class:`Tencentcloud::Ecm.v20190719.models.SystemDisk`
        # @param DataDisks: 数据盘信息。
        # @type DataDisks: Array
        # @param DisableWanIp: 是否禁止外网ip
        # @type DisableWanIp: Integer

        attr_accessor :ModuleId, :ModuleName, :ModuleState, :DefaultSystemDiskSize, :DefaultDataDiskSize, :InstanceTypeConfig, :DefaultImage, :CreateTime, :DefaultBandwidth, :TagSet, :CloseIpDirect, :SecurityGroupIds, :DefaultBandwidthIn, :UserData, :SystemDisk, :DataDisks, :DisableWanIp

        def initialize(moduleid=nil, modulename=nil, modulestate=nil, defaultsystemdisksize=nil, defaultdatadisksize=nil, instancetypeconfig=nil, defaultimage=nil, createtime=nil, defaultbandwidth=nil, tagset=nil, closeipdirect=nil, securitygroupids=nil, defaultbandwidthin=nil, userdata=nil, systemdisk=nil, datadisks=nil, disablewanip=nil)
          @ModuleId = moduleid
          @ModuleName = modulename
          @ModuleState = modulestate
          @DefaultSystemDiskSize = defaultsystemdisksize
          @DefaultDataDiskSize = defaultdatadisksize
          @InstanceTypeConfig = instancetypeconfig
          @DefaultImage = defaultimage
          @CreateTime = createtime
          @DefaultBandwidth = defaultbandwidth
          @TagSet = tagset
          @CloseIpDirect = closeipdirect
          @SecurityGroupIds = securitygroupids
          @DefaultBandwidthIn = defaultbandwidthin
          @UserData = userdata
          @SystemDisk = systemdisk
          @DataDisks = datadisks
          @DisableWanIp = disablewanip
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @ModuleName = params['ModuleName']
          @ModuleState = params['ModuleState']
          @DefaultSystemDiskSize = params['DefaultSystemDiskSize']
          @DefaultDataDiskSize = params['DefaultDataDiskSize']
          unless params['InstanceTypeConfig'].nil?
            @InstanceTypeConfig = InstanceTypeConfig.new
            @InstanceTypeConfig.deserialize(params['InstanceTypeConfig'])
          end
          unless params['DefaultImage'].nil?
            @DefaultImage = Image.new
            @DefaultImage.deserialize(params['DefaultImage'])
          end
          @CreateTime = params['CreateTime']
          @DefaultBandwidth = params['DefaultBandwidth']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @CloseIpDirect = params['CloseIpDirect']
          @SecurityGroupIds = params['SecurityGroupIds']
          @DefaultBandwidthIn = params['DefaultBandwidthIn']
          @UserData = params['UserData']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
          @DisableWanIp = params['DisableWanIp']
        end
      end

      # 节点统计数据
      class ModuleCounter < TencentCloud::Common::AbstractModel
        # @param ISPCounterSet: 运营商统计信息列表
        # @type ISPCounterSet: Array
        # @param ProvinceNum: 省份数量
        # @type ProvinceNum: Integer
        # @param CityNum: 城市数量
        # @type CityNum: Integer
        # @param NodeNum: 节点数量
        # @type NodeNum: Integer
        # @param InstanceNum: 实例数量
        # @type InstanceNum: Integer

        attr_accessor :ISPCounterSet, :ProvinceNum, :CityNum, :NodeNum, :InstanceNum

        def initialize(ispcounterset=nil, provincenum=nil, citynum=nil, nodenum=nil, instancenum=nil)
          @ISPCounterSet = ispcounterset
          @ProvinceNum = provincenum
          @CityNum = citynum
          @NodeNum = nodenum
          @InstanceNum = instancenum
        end

        def deserialize(params)
          unless params['ISPCounterSet'].nil?
            @ISPCounterSet = []
            params['ISPCounterSet'].each do |i|
              ispcounter_tmp = ISPCounter.new
              ispcounter_tmp.deserialize(i)
              @ISPCounterSet << ispcounter_tmp
            end
          end
          @ProvinceNum = params['ProvinceNum']
          @CityNum = params['CityNum']
          @NodeNum = params['NodeNum']
          @InstanceNum = params['InstanceNum']
        end
      end

      # 模块列表Item信息
      class ModuleItem < TencentCloud::Common::AbstractModel
        # @param NodeInstanceNum: 节点实例统计信息
        # @type NodeInstanceNum: :class:`Tencentcloud::Ecm.v20190719.models.NodeInstanceNum`
        # @param Module: 模块信息
        # @type Module: :class:`Tencentcloud::Ecm.v20190719.models.Module`

        attr_accessor :NodeInstanceNum, :Module

        def initialize(nodeinstancenum=nil, _module=nil)
          @NodeInstanceNum = nodeinstancenum
          @Module = _module
        end

        def deserialize(params)
          unless params['NodeInstanceNum'].nil?
            @NodeInstanceNum = NodeInstanceNum.new
            @NodeInstanceNum.deserialize(params['NodeInstanceNum'])
          end
          unless params['Module'].nil?
            @Module = Module.new
            @Module.deserialize(params['Module'])
          end
        end
      end

      # 客户对应月份的带宽信息
      class MonthNetwork < TencentCloud::Common::AbstractModel
        # @param ZoneInfo: 节点zone信息
        # @type ZoneInfo: :class:`Tencentcloud::Ecm.v20190719.models.ZoneInfo`
        # @param Month: 带宽月份 示例"202103"
        # @type Month: String
        # @param BandwidthPkgId: 带宽包id 格式如"bwp-xxxxxxxx"
        # @type BandwidthPkgId: String
        # @param Isp: 运营商简称 取值范围"CUCC;CTCC;CMCC"
        # @type Isp: String
        # @param TrafficMaxIn: 入网带宽包峰值,取值范围0.0-xxx.xxx
        # @type TrafficMaxIn: Float
        # @param TrafficMaxOut: 出网带宽包峰值,取值范围0.0-xxx.xxx
        # @type TrafficMaxOut: Float
        # @param FeeTraffic: 计费带宽,取值范围0.0-xxx.xxx
        # @type FeeTraffic: Float
        # @param StartTime: 月计费带宽起始时间 格式"yyyy-mm-dd HH:mm:ss"
        # @type StartTime: String
        # @param EndTime: 月计费带宽结束时间 格式"yyyy-mm-dd HH:mm:ss"
        # @type EndTime: String
        # @param EffectiveDays: 月计费带宽实际有效天数 整形必须大于等于0
        # @type EffectiveDays: Integer
        # @param MonthDays: 指定月份的实际天数 实例 30
        # @type MonthDays: Integer
        # @param EffectiveDaysRate: 有效天占比 保留小数点后四位0.2134
        # @type EffectiveDaysRate: Float
        # @param BandwidthPkgType: 计费带宽包类型 实例"Address","LoadBalance","AddressIpv6"
        # @type BandwidthPkgType: String

        attr_accessor :ZoneInfo, :Month, :BandwidthPkgId, :Isp, :TrafficMaxIn, :TrafficMaxOut, :FeeTraffic, :StartTime, :EndTime, :EffectiveDays, :MonthDays, :EffectiveDaysRate, :BandwidthPkgType

        def initialize(zoneinfo=nil, month=nil, bandwidthpkgid=nil, isp=nil, trafficmaxin=nil, trafficmaxout=nil, feetraffic=nil, starttime=nil, endtime=nil, effectivedays=nil, monthdays=nil, effectivedaysrate=nil, bandwidthpkgtype=nil)
          @ZoneInfo = zoneinfo
          @Month = month
          @BandwidthPkgId = bandwidthpkgid
          @Isp = isp
          @TrafficMaxIn = trafficmaxin
          @TrafficMaxOut = trafficmaxout
          @FeeTraffic = feetraffic
          @StartTime = starttime
          @EndTime = endtime
          @EffectiveDays = effectivedays
          @MonthDays = monthdays
          @EffectiveDaysRate = effectivedaysrate
          @BandwidthPkgType = bandwidthpkgtype
        end

        def deserialize(params)
          unless params['ZoneInfo'].nil?
            @ZoneInfo = ZoneInfo.new
            @ZoneInfo.deserialize(params['ZoneInfo'])
          end
          @Month = params['Month']
          @BandwidthPkgId = params['BandwidthPkgId']
          @Isp = params['Isp']
          @TrafficMaxIn = params['TrafficMaxIn']
          @TrafficMaxOut = params['TrafficMaxOut']
          @FeeTraffic = params['FeeTraffic']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @EffectiveDays = params['EffectiveDays']
          @MonthDays = params['MonthDays']
          @EffectiveDaysRate = params['EffectiveDaysRate']
          @BandwidthPkgType = params['BandwidthPkgType']
        end
      end

      # 弹性网卡
      class NetworkInterface < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-f1xjkw1b。
        # @type NetworkInterfaceId: String
        # @param NetworkInterfaceName: 弹性网卡名称。
        # @type NetworkInterfaceName: String
        # @param NetworkInterfaceDescription: 弹性网卡描述。
        # @type NetworkInterfaceDescription: String
        # @param SubnetId: 子网实例ID。
        # @type SubnetId: String
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param GroupSet: 绑定的安全组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupSet: Array
        # @param Primary: 是否是主网卡。
        # @type Primary: Boolean
        # @param MacAddress: MAC地址。
        # @type MacAddress: String
        # @param State: 弹性网卡状态：
        # PENDING：创建中
        # AVAILABLE：可用的
        # ATTACHING：绑定中
        # DETACHING：解绑中
        # DELETING：删除中
        # @type State: String
        # @param PrivateIpAddressSet: 内网IP信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIpAddressSet: Array
        # @param Attachment: 绑定的云服务器对象。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Attachment: :class:`Tencentcloud::Ecm.v20190719.models.NetworkInterfaceAttachment`
        # @param Zone: 可用区。
        # @type Zone: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param Ipv6AddressSet: IPv6地址列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6AddressSet: Array
        # @param TagSet: 标签键值对。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param EniType: 网卡类型。0 - 弹性网卡；1 - evm弹性网卡。
        # @type EniType: Integer
        # @param EcmRegion: EcmRegion ecm区域
        # @type EcmRegion: String
        # @param Business: 网卡绑定的子机类型：cvm，eks。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Business: String

        attr_accessor :NetworkInterfaceId, :NetworkInterfaceName, :NetworkInterfaceDescription, :SubnetId, :VpcId, :GroupSet, :Primary, :MacAddress, :State, :PrivateIpAddressSet, :Attachment, :Zone, :CreatedTime, :Ipv6AddressSet, :TagSet, :EniType, :EcmRegion, :Business

        def initialize(networkinterfaceid=nil, networkinterfacename=nil, networkinterfacedescription=nil, subnetid=nil, vpcid=nil, groupset=nil, primary=nil, macaddress=nil, state=nil, privateipaddressset=nil, attachment=nil, zone=nil, createdtime=nil, ipv6addressset=nil, tagset=nil, enitype=nil, ecmregion=nil, business=nil)
          @NetworkInterfaceId = networkinterfaceid
          @NetworkInterfaceName = networkinterfacename
          @NetworkInterfaceDescription = networkinterfacedescription
          @SubnetId = subnetid
          @VpcId = vpcid
          @GroupSet = groupset
          @Primary = primary
          @MacAddress = macaddress
          @State = state
          @PrivateIpAddressSet = privateipaddressset
          @Attachment = attachment
          @Zone = zone
          @CreatedTime = createdtime
          @Ipv6AddressSet = ipv6addressset
          @TagSet = tagset
          @EniType = enitype
          @EcmRegion = ecmregion
          @Business = business
        end

        def deserialize(params)
          @NetworkInterfaceId = params['NetworkInterfaceId']
          @NetworkInterfaceName = params['NetworkInterfaceName']
          @NetworkInterfaceDescription = params['NetworkInterfaceDescription']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @GroupSet = params['GroupSet']
          @Primary = params['Primary']
          @MacAddress = params['MacAddress']
          @State = params['State']
          unless params['PrivateIpAddressSet'].nil?
            @PrivateIpAddressSet = []
            params['PrivateIpAddressSet'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddressSet << privateipaddressspecification_tmp
            end
          end
          unless params['Attachment'].nil?
            @Attachment = NetworkInterfaceAttachment.new
            @Attachment.deserialize(params['Attachment'])
          end
          @Zone = params['Zone']
          @CreatedTime = params['CreatedTime']
          unless params['Ipv6AddressSet'].nil?
            @Ipv6AddressSet = []
            params['Ipv6AddressSet'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6AddressSet << ipv6address_tmp
            end
          end
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @EniType = params['EniType']
          @EcmRegion = params['EcmRegion']
          @Business = params['Business']
        end
      end

      # 弹性网卡绑定关系
      class NetworkInterfaceAttachment < TencentCloud::Common::AbstractModel
        # @param InstanceId: 云主机实例ID。
        # @type InstanceId: String
        # @param DeviceIndex: 网卡在云主机实例内的序号。
        # @type DeviceIndex: Integer
        # @param InstanceAccountId: 云主机所有者账户信息。
        # @type InstanceAccountId: String
        # @param AttachTime: 绑定时间。
        # @type AttachTime: String

        attr_accessor :InstanceId, :DeviceIndex, :InstanceAccountId, :AttachTime

        def initialize(instanceid=nil, deviceindex=nil, instanceaccountid=nil, attachtime=nil)
          @InstanceId = instanceid
          @DeviceIndex = deviceindex
          @InstanceAccountId = instanceaccountid
          @AttachTime = attachtime
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DeviceIndex = params['DeviceIndex']
          @InstanceAccountId = params['InstanceAccountId']
          @AttachTime = params['AttachTime']
        end
      end

      # 网络硬盘上下限数据
      class NetworkStorageRange < TencentCloud::Common::AbstractModel
        # @param MaxBandwidth: 网络带宽上限
        # @type MaxBandwidth: Integer
        # @param MaxSystemDiskSize: 数据盘上限
        # @type MaxSystemDiskSize: Integer
        # @param MinBandwidth: 网络带宽下限
        # @type MinBandwidth: Integer
        # @param MinSystemDiskSize: 数据盘下限
        # @type MinSystemDiskSize: Integer
        # @param MaxDataDiskSize: 最大数据盘大小
        # @type MaxDataDiskSize: Integer
        # @param MinDataDiskSize: 最小数据盘大小
        # @type MinDataDiskSize: Integer
        # @param SuggestBandwidth: 建议带宽
        # @type SuggestBandwidth: Integer
        # @param SuggestDataDiskSize: 建议硬盘大小
        # @type SuggestDataDiskSize: Integer
        # @param SuggestSystemDiskSize: 建议系统盘大小
        # @type SuggestSystemDiskSize: Integer
        # @param MaxVcpu: Cpu核数峰值
        # @type MaxVcpu: Integer
        # @param MinVcpu: Cpu核最小值
        # @type MinVcpu: Integer
        # @param MaxVcpuPerReq: 单次请求最大cpu核数
        # @type MaxVcpuPerReq: Integer
        # @param PerBandwidth: 带宽步长
        # @type PerBandwidth: Integer
        # @param PerDataDisk: 数据盘步长
        # @type PerDataDisk: Integer
        # @param MaxModuleNum: 总模块数量
        # @type MaxModuleNum: Integer

        attr_accessor :MaxBandwidth, :MaxSystemDiskSize, :MinBandwidth, :MinSystemDiskSize, :MaxDataDiskSize, :MinDataDiskSize, :SuggestBandwidth, :SuggestDataDiskSize, :SuggestSystemDiskSize, :MaxVcpu, :MinVcpu, :MaxVcpuPerReq, :PerBandwidth, :PerDataDisk, :MaxModuleNum

        def initialize(maxbandwidth=nil, maxsystemdisksize=nil, minbandwidth=nil, minsystemdisksize=nil, maxdatadisksize=nil, mindatadisksize=nil, suggestbandwidth=nil, suggestdatadisksize=nil, suggestsystemdisksize=nil, maxvcpu=nil, minvcpu=nil, maxvcpuperreq=nil, perbandwidth=nil, perdatadisk=nil, maxmodulenum=nil)
          @MaxBandwidth = maxbandwidth
          @MaxSystemDiskSize = maxsystemdisksize
          @MinBandwidth = minbandwidth
          @MinSystemDiskSize = minsystemdisksize
          @MaxDataDiskSize = maxdatadisksize
          @MinDataDiskSize = mindatadisksize
          @SuggestBandwidth = suggestbandwidth
          @SuggestDataDiskSize = suggestdatadisksize
          @SuggestSystemDiskSize = suggestsystemdisksize
          @MaxVcpu = maxvcpu
          @MinVcpu = minvcpu
          @MaxVcpuPerReq = maxvcpuperreq
          @PerBandwidth = perbandwidth
          @PerDataDisk = perdatadisk
          @MaxModuleNum = maxmodulenum
        end

        def deserialize(params)
          @MaxBandwidth = params['MaxBandwidth']
          @MaxSystemDiskSize = params['MaxSystemDiskSize']
          @MinBandwidth = params['MinBandwidth']
          @MinSystemDiskSize = params['MinSystemDiskSize']
          @MaxDataDiskSize = params['MaxDataDiskSize']
          @MinDataDiskSize = params['MinDataDiskSize']
          @SuggestBandwidth = params['SuggestBandwidth']
          @SuggestDataDiskSize = params['SuggestDataDiskSize']
          @SuggestSystemDiskSize = params['SuggestSystemDiskSize']
          @MaxVcpu = params['MaxVcpu']
          @MinVcpu = params['MinVcpu']
          @MaxVcpuPerReq = params['MaxVcpuPerReq']
          @PerBandwidth = params['PerBandwidth']
          @PerDataDisk = params['PerDataDisk']
          @MaxModuleNum = params['MaxModuleNum']
        end
      end

      # 节点信息
      class Node < TencentCloud::Common::AbstractModel
        # @param ZoneInfo: zone信息。
        # @type ZoneInfo: :class:`Tencentcloud::Ecm.v20190719.models.ZoneInfo`
        # @param Country: 国家信息。
        # @type Country: :class:`Tencentcloud::Ecm.v20190719.models.Country`
        # @param Area: 区域信息。
        # @type Area: :class:`Tencentcloud::Ecm.v20190719.models.Area`
        # @param Province: 省份信息。
        # @type Province: :class:`Tencentcloud::Ecm.v20190719.models.Province`
        # @param City: 城市信息。
        # @type City: :class:`Tencentcloud::Ecm.v20190719.models.City`
        # @param RegionInfo: Region信息。
        # @type RegionInfo: :class:`Tencentcloud::Ecm.v20190719.models.RegionInfo`
        # @param ISPSet: 运营商列表。
        # @type ISPSet: Array
        # @param ISPNum: 运营商数量。
        # @type ISPNum: Integer
        # @param LBSupported: 节点是否支持LB
        # @type LBSupported: Boolean

        attr_accessor :ZoneInfo, :Country, :Area, :Province, :City, :RegionInfo, :ISPSet, :ISPNum, :LBSupported

        def initialize(zoneinfo=nil, country=nil, area=nil, province=nil, city=nil, regioninfo=nil, ispset=nil, ispnum=nil, lbsupported=nil)
          @ZoneInfo = zoneinfo
          @Country = country
          @Area = area
          @Province = province
          @City = city
          @RegionInfo = regioninfo
          @ISPSet = ispset
          @ISPNum = ispnum
          @LBSupported = lbsupported
        end

        def deserialize(params)
          unless params['ZoneInfo'].nil?
            @ZoneInfo = ZoneInfo.new
            @ZoneInfo.deserialize(params['ZoneInfo'])
          end
          unless params['Country'].nil?
            @Country = Country.new
            @Country.deserialize(params['Country'])
          end
          unless params['Area'].nil?
            @Area = Area.new
            @Area.deserialize(params['Area'])
          end
          unless params['Province'].nil?
            @Province = Province.new
            @Province.deserialize(params['Province'])
          end
          unless params['City'].nil?
            @City = City.new
            @City.deserialize(params['City'])
          end
          unless params['RegionInfo'].nil?
            @RegionInfo = RegionInfo.new
            @RegionInfo.deserialize(params['RegionInfo'])
          end
          unless params['ISPSet'].nil?
            @ISPSet = []
            params['ISPSet'].each do |i|
              isp_tmp = ISP.new
              isp_tmp.deserialize(i)
              @ISPSet << isp_tmp
            end
          end
          @ISPNum = params['ISPNum']
          @LBSupported = params['LBSupported']
        end
      end

      # 节点实例数量信息
      class NodeInstanceNum < TencentCloud::Common::AbstractModel
        # @param NodeNum: 节点数量
        # @type NodeNum: Integer
        # @param InstanceNum: 实例数量
        # @type InstanceNum: Integer

        attr_accessor :NodeNum, :InstanceNum

        def initialize(nodenum=nil, instancenum=nil)
          @NodeNum = nodenum
          @InstanceNum = instancenum
        end

        def deserialize(params)
          @NodeNum = params['NodeNum']
          @InstanceNum = params['InstanceNum']
        end
      end

      # 操作Action
      class OperatorAction < TencentCloud::Common::AbstractModel
        # @param Action: 可执行操作
        # @type Action: String
        # @param Code: 编码Code
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Message: 具体信息
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 操作系统支持的类型。
      class OsVersion < TencentCloud::Common::AbstractModel
        # @param OsName: 操作系统类型
        # @type OsName: String
        # @param OsVersions: 支持的操作系统版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OsVersions: Array
        # @param Architecture: 支持的操作系统架构
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Architecture: Array

        attr_accessor :OsName, :OsVersions, :Architecture

        def initialize(osname=nil, osversions=nil, architecture=nil)
          @OsName = osname
          @OsVersions = osversions
          @Architecture = architecture
        end

        def deserialize(params)
          @OsName = params['OsName']
          @OsVersions = params['OsVersions']
          @Architecture = params['Architecture']
        end
      end

      # 一组相互关联的装箱配额，以实例类型的优先级排序，优先级高的在前
      class PackingQuotaGroup < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区
        # @type Zone: String
        # @param ZoneId: 可用区id
        # @type ZoneId: Integer
        # @param ISPId: ISP id
        # @type ISPId: String
        # @param PackingQuotaInfos: 一组相互关联的装箱配额
        # @type PackingQuotaInfos: Array

        attr_accessor :Zone, :ZoneId, :ISPId, :PackingQuotaInfos

        def initialize(zone=nil, zoneid=nil, ispid=nil, packingquotainfos=nil)
          @Zone = zone
          @ZoneId = zoneid
          @ISPId = ispid
          @PackingQuotaInfos = packingquotainfos
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneId = params['ZoneId']
          @ISPId = params['ISPId']
          unless params['PackingQuotaInfos'].nil?
            @PackingQuotaInfos = []
            params['PackingQuotaInfos'].each do |i|
              packingquotainfo_tmp = PackingQuotaInfo.new
              packingquotainfo_tmp.deserialize(i)
              @PackingQuotaInfos << packingquotainfo_tmp
            end
          end
        end
      end

      # 一组相关联的装箱配额信息
      class PackingQuotaInfo < TencentCloud::Common::AbstractModel
        # @param InstanceType: 实例类型
        # @type InstanceType: String
        # @param PackingQuota: 装箱配额
        # @type PackingQuota: Integer

        attr_accessor :InstanceType, :PackingQuota

        def initialize(instancetype=nil, packingquota=nil)
          @InstanceType = instancetype
          @PackingQuota = packingquota
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @PackingQuota = params['PackingQuota']
        end
      end

      # 峰值信息
      class PeakBase < TencentCloud::Common::AbstractModel
        # @param PeakCpuNum: CPU峰值
        # @type PeakCpuNum: Integer
        # @param PeakMemoryNum: 内存峰值
        # @type PeakMemoryNum: Integer
        # @param PeakStorageNum: 硬盘峰值
        # @type PeakStorageNum: Integer
        # @param RecordTime: 记录时间
        # @type RecordTime: String

        attr_accessor :PeakCpuNum, :PeakMemoryNum, :PeakStorageNum, :RecordTime

        def initialize(peakcpunum=nil, peakmemorynum=nil, peakstoragenum=nil, recordtime=nil)
          @PeakCpuNum = peakcpunum
          @PeakMemoryNum = peakmemorynum
          @PeakStorageNum = peakstoragenum
          @RecordTime = recordtime
        end

        def deserialize(params)
          @PeakCpuNum = params['PeakCpuNum']
          @PeakMemoryNum = params['PeakMemoryNum']
          @PeakStorageNum = params['PeakStorageNum']
          @RecordTime = params['RecordTime']
        end
      end

      # PeakFamilyInfo 按机型类别分类的cpu等数据的峰值信息
      class PeakFamilyInfo < TencentCloud::Common::AbstractModel
        # @param InstanceFamily: 机型类别信息。
        # @type InstanceFamily: :class:`Tencentcloud::Ecm.v20190719.models.InstanceFamilyTypeConfig`
        # @param PeakBaseSet: 基础数据峰值信息。
        # @type PeakBaseSet: Array

        attr_accessor :InstanceFamily, :PeakBaseSet

        def initialize(instancefamily=nil, peakbaseset=nil)
          @InstanceFamily = instancefamily
          @PeakBaseSet = peakbaseset
        end

        def deserialize(params)
          unless params['InstanceFamily'].nil?
            @InstanceFamily = InstanceFamilyTypeConfig.new
            @InstanceFamily.deserialize(params['InstanceFamily'])
          end
          unless params['PeakBaseSet'].nil?
            @PeakBaseSet = []
            params['PeakBaseSet'].each do |i|
              peakbase_tmp = PeakBase.new
              peakbase_tmp.deserialize(i)
              @PeakBaseSet << peakbase_tmp
            end
          end
        end
      end

      # 峰值网络数据
      class PeakNetwork < TencentCloud::Common::AbstractModel
        # @param RecordTime: 记录时间。
        # @type RecordTime: String
        # @param PeakInNetwork: 入带宽数据。
        # @type PeakInNetwork: String
        # @param PeakOutNetwork: 出带宽数据。
        # @type PeakOutNetwork: String
        # @param ChargeNetwork: 计费带宽。单位bps
        # @type ChargeNetwork: String

        attr_accessor :RecordTime, :PeakInNetwork, :PeakOutNetwork, :ChargeNetwork

        def initialize(recordtime=nil, peakinnetwork=nil, peakoutnetwork=nil, chargenetwork=nil)
          @RecordTime = recordtime
          @PeakInNetwork = peakinnetwork
          @PeakOutNetwork = peakoutnetwork
          @ChargeNetwork = chargenetwork
        end

        def deserialize(params)
          @RecordTime = params['RecordTime']
          @PeakInNetwork = params['PeakInNetwork']
          @PeakOutNetwork = params['PeakOutNetwork']
          @ChargeNetwork = params['ChargeNetwork']
        end
      end

      # region维度的网络峰值信息
      class PeakNetworkRegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: region信息
        # @type Region: String
        # @param PeakNetworkSet: 网络峰值集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeakNetworkSet: Array

        attr_accessor :Region, :PeakNetworkSet

        def initialize(region=nil, peaknetworkset=nil)
          @Region = region
          @PeakNetworkSet = peaknetworkset
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['PeakNetworkSet'].nil?
            @PeakNetworkSet = []
            params['PeakNetworkSet'].each do |i|
              peaknetwork_tmp = PeakNetwork.new
              peaknetwork_tmp.deserialize(i)
              @PeakNetworkSet << peaknetwork_tmp
            end
          end
        end
      end

      # 物理位置信息
      class PhysicalPosition < TencentCloud::Common::AbstractModel
        # @param PosId: 机位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PosId: String
        # @param RackId: 机架
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RackId: String
        # @param SwitchId: 交换机
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SwitchId: String

        attr_accessor :PosId, :RackId, :SwitchId

        def initialize(posid=nil, rackid=nil, switchid=nil)
          @PosId = posid
          @RackId = rackid
          @SwitchId = switchid
        end

        def deserialize(params)
          @PosId = params['PosId']
          @RackId = params['RackId']
          @SwitchId = params['SwitchId']
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

        attr_accessor :Zone, :CageId, :ProjectId, :CdcName, :CdcId

        def initialize(zone=nil, cageid=nil, projectid=nil, cdcname=nil, cdcid=nil)
          @Zone = zone
          @CageId = cageid
          @ProjectId = projectid
          @CdcName = cdcname
          @CdcId = cdcid
        end

        def deserialize(params)
          @Zone = params['Zone']
          @CageId = params['CageId']
          @ProjectId = params['ProjectId']
          @CdcName = params['CdcName']
          @CdcId = params['CdcId']
        end
      end

      # 描述实例的位置相关信息。
      class Position < TencentCloud::Common::AbstractModel
        # @param ZoneInfo: 实例所在的Zone的信息。
        # @type ZoneInfo: :class:`Tencentcloud::Ecm.v20190719.models.ZoneInfo`
        # @param Country: 实例所在的国家的信息。
        # @type Country: :class:`Tencentcloud::Ecm.v20190719.models.Country`
        # @param Area: 实例所在的Area的信息。
        # @type Area: :class:`Tencentcloud::Ecm.v20190719.models.Area`
        # @param Province: 实例所在的省份的信息。
        # @type Province: :class:`Tencentcloud::Ecm.v20190719.models.Province`
        # @param City: 实例所在的城市的信息。
        # @type City: :class:`Tencentcloud::Ecm.v20190719.models.City`
        # @param RegionInfo: 实例所在的Region的信息。
        # @type RegionInfo: :class:`Tencentcloud::Ecm.v20190719.models.RegionInfo`

        attr_accessor :ZoneInfo, :Country, :Area, :Province, :City, :RegionInfo

        def initialize(zoneinfo=nil, country=nil, area=nil, province=nil, city=nil, regioninfo=nil)
          @ZoneInfo = zoneinfo
          @Country = country
          @Area = area
          @Province = province
          @City = city
          @RegionInfo = regioninfo
        end

        def deserialize(params)
          unless params['ZoneInfo'].nil?
            @ZoneInfo = ZoneInfo.new
            @ZoneInfo.deserialize(params['ZoneInfo'])
          end
          unless params['Country'].nil?
            @Country = Country.new
            @Country.deserialize(params['Country'])
          end
          unless params['Area'].nil?
            @Area = Area.new
            @Area.deserialize(params['Area'])
          end
          unless params['Province'].nil?
            @Province = Province.new
            @Province.deserialize(params['Province'])
          end
          unless params['City'].nil?
            @City = City.new
            @City.deserialize(params['City'])
          end
          unless params['RegionInfo'].nil?
            @RegionInfo = RegionInfo.new
            @RegionInfo.deserialize(params['RegionInfo'])
          end
        end
      end

      # 描述cpu,内存等维度的价格
      class PriceDetail < TencentCloud::Common::AbstractModel
        # @param Discount: 表示折扣，20 表示20%，打2折
        # @type Discount: Integer
        # @param DiscountPrice: 打折后价格，单位分
        # @type DiscountPrice: Integer
        # @param OriginalPrice: 折扣前价格，单位分
        # @type OriginalPrice: Integer

        attr_accessor :Discount, :DiscountPrice, :OriginalPrice

        def initialize(discount=nil, discountprice=nil, originalprice=nil)
          @Discount = discount
          @DiscountPrice = discountprice
          @OriginalPrice = originalprice
        end

        def deserialize(params)
          @Discount = params['Discount']
          @DiscountPrice = params['DiscountPrice']
          @OriginalPrice = params['OriginalPrice']
        end
      end

      # 实例的内网ip相关信息。
      class PrivateIPAddressInfo < TencentCloud::Common::AbstractModel
        # @param PrivateIPAddress: 实例的内网ip。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIPAddress: String

        attr_accessor :PrivateIPAddress

        def initialize(privateipaddress=nil)
          @PrivateIPAddress = privateipaddress
        end

        def deserialize(params)
          @PrivateIPAddress = params['PrivateIPAddress']
        end
      end

      # 内网IP信息
      class PrivateIpAddressSpecification < TencentCloud::Common::AbstractModel
        # @param PrivateIpAddress: 内网IP地址。
        # @type PrivateIpAddress: String
        # @param Primary: 是否是主IP。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Primary: Boolean
        # @param PublicIpAddress: 公网IP地址。
        # @type PublicIpAddress: String
        # @param AddressId: EIP实例ID，例如：eip-11112222。
        # @type AddressId: String
        # @param Description: 内网IP描述信息。
        # @type Description: String
        # @param IsWanIpBlocked: 公网IP是否被封堵。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWanIpBlocked: Boolean
        # @param State: IP状态：
        # PENDING：生产中
        # MIGRATING：迁移中
        # DELETING：删除中
        # AVAILABLE：可用的
        # @type State: String

        attr_accessor :PrivateIpAddress, :Primary, :PublicIpAddress, :AddressId, :Description, :IsWanIpBlocked, :State

        def initialize(privateipaddress=nil, primary=nil, publicipaddress=nil, addressid=nil, description=nil, iswanipblocked=nil, state=nil)
          @PrivateIpAddress = privateipaddress
          @Primary = primary
          @PublicIpAddress = publicipaddress
          @AddressId = addressid
          @Description = description
          @IsWanIpBlocked = iswanipblocked
          @State = state
        end

        def deserialize(params)
          @PrivateIpAddress = params['PrivateIpAddress']
          @Primary = params['Primary']
          @PublicIpAddress = params['PublicIpAddress']
          @AddressId = params['AddressId']
          @Description = params['Description']
          @IsWanIpBlocked = params['IsWanIpBlocked']
          @State = params['State']
        end
      end

      # 省份信息
      class Province < TencentCloud::Common::AbstractModel
        # @param ProvinceId: 省份Id
        # @type ProvinceId: String
        # @param ProvinceName: 省份名称
        # @type ProvinceName: String

        attr_accessor :ProvinceId, :ProvinceName

        def initialize(provinceid=nil, provincename=nil)
          @ProvinceId = provinceid
          @ProvinceName = provincename
        end

        def deserialize(params)
          @ProvinceId = params['ProvinceId']
          @ProvinceName = params['ProvinceName']
        end
      end

      # 实例的公网ip相关信息。
      class PublicIPAddressInfo < TencentCloud::Common::AbstractModel
        # @param ChargeMode: 计费模式。
        # @type ChargeMode: String
        # @param PublicIPAddress: 实例的公网ip。
        # @type PublicIPAddress: String
        # @param ISP: 实例的公网ip所属的运营商。
        # @type ISP: :class:`Tencentcloud::Ecm.v20190719.models.ISP`
        # @param MaxBandwidthOut: 实例的最大出带宽上限，单位为Mbps。
        # @type MaxBandwidthOut: Integer
        # @param MaxBandwidthIn: 实例的最大入带宽上限，单位为Mbps。
        # @type MaxBandwidthIn: Integer

        attr_accessor :ChargeMode, :PublicIPAddress, :ISP, :MaxBandwidthOut, :MaxBandwidthIn

        def initialize(chargemode=nil, publicipaddress=nil, isp=nil, maxbandwidthout=nil, maxbandwidthin=nil)
          @ChargeMode = chargemode
          @PublicIPAddress = publicipaddress
          @ISP = isp
          @MaxBandwidthOut = maxbandwidthout
          @MaxBandwidthIn = maxbandwidthin
        end

        def deserialize(params)
          @ChargeMode = params['ChargeMode']
          @PublicIPAddress = params['PublicIPAddress']
          unless params['ISP'].nil?
            @ISP = ISP.new
            @ISP.deserialize(params['ISP'])
          end
          @MaxBandwidthOut = params['MaxBandwidthOut']
          @MaxBandwidthIn = params['MaxBandwidthIn']
        end
      end

      # QueryVpcTaskResult请求参数结构体
      class QueryVpcTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 无
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # QueryVpcTaskResult返回参数结构体
      class QueryVpcTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 执行结果，包括"SUCCESS", "FAILED", "RUNNING"
        # @type Status: String
        # @param Output: 异步任务执行输出。
        # @type Output: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Output, :RequestId

        def initialize(status=nil, output=nil, requestid=nil)
          @Status = status
          @Output = output
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Output = params['Output']
          @RequestId = params['RequestId']
        end
      end

      # RebootInstances请求参数结构体
      class RebootInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 待重启的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        # @type InstanceIdSet: Array
        # @param ForceReboot: 是否在正常重启失败后选择强制重启实例。取值范围：
        # TRUE：表示在正常重启失败后进行强制重启；
        # FALSE：表示在正常重启失败后不进行强制重启；
        # 默认取值：FALSE。
        # @type ForceReboot: Boolean
        # @param StopType: 关机类型。取值范围：
        # SOFT：表示软关机
        # HARD：表示硬关机
        # SOFT_FIRST：表示优先软关机，失败再执行硬关机

        # 默认取值：SOFT。
        # @type StopType: String

        attr_accessor :InstanceIdSet, :ForceReboot, :StopType

        def initialize(instanceidset=nil, forcereboot=nil, stoptype=nil)
          @InstanceIdSet = instanceidset
          @ForceReboot = forcereboot
          @StopType = stoptype
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @ForceReboot = params['ForceReboot']
          @StopType = params['StopType']
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

      # Region和RegionName
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: Region
        # @type Region: String
        # @param RegionName: Region名称
        # @type RegionName: String
        # @param RegionId: RegionID
        # @type RegionId: Integer

        attr_accessor :Region, :RegionName, :RegionId

        def initialize(region=nil, regionname=nil, regionid=nil)
          @Region = region
          @RegionName = regionname
          @RegionId = regionid
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
        end
      end

      # ReleaseAddresses请求参数结构体
      class ReleaseAddressesRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param AddressIds: 标识 EIP 的唯一 ID 列表。
        # @type AddressIds: Array

        attr_accessor :EcmRegion, :AddressIds

        def initialize(ecmregion=nil, addressids=nil)
          @EcmRegion = ecmregion
          @AddressIds = addressids
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @AddressIds = params['AddressIds']
        end
      end

      # ReleaseAddresses返回参数结构体
      class ReleaseAddressesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。可以使用DescribeTaskResult接口查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ReleaseIpv6AddressesBandwidth请求参数结构体
      class ReleaseIpv6AddressesBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域。
        # @type EcmRegion: String
        # @param Ipv6Addresses: IPV6地址。Ipv6Addresses和Ipv6AddressIds必须且只能传一个。
        # @type Ipv6Addresses: Array
        # @param Ipv6AddressIds: IPV6地址对应的唯一ID，形如eip-xxxxxxxx。Ipv6Addresses和Ipv6AddressIds必须且只能传一个。
        # @type Ipv6AddressIds: Array

        attr_accessor :EcmRegion, :Ipv6Addresses, :Ipv6AddressIds

        def initialize(ecmregion=nil, ipv6addresses=nil, ipv6addressids=nil)
          @EcmRegion = ecmregion
          @Ipv6Addresses = ipv6addresses
          @Ipv6AddressIds = ipv6addressids
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @Ipv6Addresses = params['Ipv6Addresses']
          @Ipv6AddressIds = params['Ipv6AddressIds']
        end
      end

      # ReleaseIpv6AddressesBandwidth返回参数结构体
      class ReleaseIpv6AddressesBandwidthResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务TaskId。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # ReleaseIpv6Addresses请求参数结构体
      class ReleaseIpv6AddressesRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param NetworkInterfaceId: 弹性网卡实例ID，形如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param Ipv6Addresses: 指定的IPv6地址列表，单次最多指定10个。
        # @type Ipv6Addresses: Array

        attr_accessor :EcmRegion, :NetworkInterfaceId, :Ipv6Addresses

        def initialize(ecmregion=nil, networkinterfaceid=nil, ipv6addresses=nil)
          @EcmRegion = ecmregion
          @NetworkInterfaceId = networkinterfaceid
          @Ipv6Addresses = ipv6addresses
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['Ipv6Addresses'].nil?
            @Ipv6Addresses = []
            params['Ipv6Addresses'].each do |i|
              ipv6address_tmp = Ipv6Address.new
              ipv6address_tmp.deserialize(i)
              @Ipv6Addresses << ipv6address_tmp
            end
          end
        end
      end

      # ReleaseIpv6Addresses返回参数结构体
      class ReleaseIpv6AddressesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，可以通过DescribeTaskResult查询任务状态
        # @type TaskId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # RemovePrivateIpAddresses请求参数结构体
      class RemovePrivateIpAddressesRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域，形如ap-xian-ecm。
        # @type EcmRegion: String
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-11112222。
        # @type NetworkInterfaceId: String
        # @param PrivateIpAddresses: 指定的内网IP信息，单次最多指定10个。
        # @type PrivateIpAddresses: Array

        attr_accessor :EcmRegion, :NetworkInterfaceId, :PrivateIpAddresses

        def initialize(ecmregion=nil, networkinterfaceid=nil, privateipaddresses=nil)
          @EcmRegion = ecmregion
          @NetworkInterfaceId = networkinterfaceid
          @PrivateIpAddresses = privateipaddresses
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @NetworkInterfaceId = params['NetworkInterfaceId']
          unless params['PrivateIpAddresses'].nil?
            @PrivateIpAddresses = []
            params['PrivateIpAddresses'].each do |i|
              privateipaddressspecification_tmp = PrivateIpAddressSpecification.new
              privateipaddressspecification_tmp.deserialize(i)
              @PrivateIpAddresses << privateipaddressspecification_tmp
            end
          end
        end
      end

      # RemovePrivateIpAddresses返回参数结构体
      class RemovePrivateIpAddressesResponse < TencentCloud::Common::AbstractModel
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

      # ReplaceRouteTableAssociation请求参数结构体
      class ReplaceRouteTableAssociationRequest < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例ID，例如：subnet-3x5lf5q0。可通过DescribeSubnets接口查询。
        # @type SubnetId: String
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String

        attr_accessor :SubnetId, :RouteTableId, :EcmRegion

        def initialize(subnetid=nil, routetableid=nil, ecmregion=nil)
          @SubnetId = subnetid
          @RouteTableId = routetableid
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @RouteTableId = params['RouteTableId']
          @EcmRegion = params['EcmRegion']
        end
      end

      # ReplaceRouteTableAssociation返回参数结构体
      class ReplaceRouteTableAssociationResponse < TencentCloud::Common::AbstractModel
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

      # ReplaceRoutes请求参数结构体
      class ReplaceRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID。
        # @type RouteTableId: String
        # @param Routes: 路由策略对象。
        # @type Routes: Array

        attr_accessor :RouteTableId, :Routes

        def initialize(routetableid=nil, routes=nil)
          @RouteTableId = routetableid
          @Routes = routes
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @Routes << route_tmp
            end
          end
        end
      end

      # ReplaceRoutes返回参数结构体
      class ReplaceRoutesResponse < TencentCloud::Common::AbstractModel
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

      # ReplaceSecurityGroupPolicy请求参数结构体
      class ReplaceSecurityGroupPolicyRequest < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如esg-33ocnj9n，可通过DescribeSecurityGroups获取
        # @type SecurityGroupId: String
        # @param SecurityGroupPolicySet: 安全组规则集合对象。
        # @type SecurityGroupPolicySet: :class:`Tencentcloud::Ecm.v20190719.models.SecurityGroupPolicySet`

        attr_accessor :SecurityGroupId, :SecurityGroupPolicySet

        def initialize(securitygroupid=nil, securitygrouppolicyset=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupPolicySet = securitygrouppolicyset
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          unless params['SecurityGroupPolicySet'].nil?
            @SecurityGroupPolicySet = SecurityGroupPolicySet.new
            @SecurityGroupPolicySet.deserialize(params['SecurityGroupPolicySet'])
          end
        end
      end

      # ReplaceSecurityGroupPolicy返回参数结构体
      class ReplaceSecurityGroupPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ResetInstancesMaxBandwidth请求参数结构体
      class ResetInstancesMaxBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 待重置带宽上限的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        # @type InstanceIdSet: Array
        # @param MaxBandwidthOut: 修改后的最大出带宽上限。
        # @type MaxBandwidthOut: Integer
        # @param MaxBandwidthIn: 修改后的最大入带宽上限。
        # @type MaxBandwidthIn: Integer

        attr_accessor :InstanceIdSet, :MaxBandwidthOut, :MaxBandwidthIn

        def initialize(instanceidset=nil, maxbandwidthout=nil, maxbandwidthin=nil)
          @InstanceIdSet = instanceidset
          @MaxBandwidthOut = maxbandwidthout
          @MaxBandwidthIn = maxbandwidthin
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @MaxBandwidthOut = params['MaxBandwidthOut']
          @MaxBandwidthIn = params['MaxBandwidthIn']
        end
      end

      # ResetInstancesMaxBandwidth返回参数结构体
      class ResetInstancesMaxBandwidthResponse < TencentCloud::Common::AbstractModel
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
        # @param InstanceIdSet: 待重置密码的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        # @type InstanceIdSet: Array
        # @param Password: 新密码，Linux实例密码必须8到16位，至少包括两项[a-z，A-Z]、[0-9]和[( ) ~ ~ ! @ # $ % ^ & * - + = _ | { } [ ] : ; ' < > , . ? /]中的符号。密码不允许以/符号开头。
        # Windows实例密码必须12到16位，至少包括三项[a-z]，[A-Z]，[0-9]和[( ) ~ ~ ! @ # $ % ^ & * - + = _ | { } [ ] : ; ' < > , . ? /]中的符号。密码不允许以/符号开头。
        # 如果实例即包含Linux实例又包含Windows实例，则密码复杂度限制按照Windows实例的限制。
        # @type Password: String
        # @param ForceStop: 是否强制关机，默认为false。
        # @type ForceStop: Boolean
        # @param UserName: 待重置密码的实例的用户名，不得超过64个字符。若未指定用户名，则对于Linux而言，默认重置root用户的密码，对于Windows而言，默认重置administrator的密码。
        # @type UserName: String

        attr_accessor :InstanceIdSet, :Password, :ForceStop, :UserName

        def initialize(instanceidset=nil, password=nil, forcestop=nil, username=nil)
          @InstanceIdSet = instanceidset
          @Password = password
          @ForceStop = forcestop
          @UserName = username
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @Password = params['Password']
          @ForceStop = params['ForceStop']
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

      # ResetInstances请求参数结构体
      class ResetInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 待重装的实例ID列表。
        # @type InstanceIdSet: Array
        # @param ImageId: 重装使用的镜像ID，若未指定，则使用各个实例当前的镜像进行重装。
        # @type ImageId: String
        # @param Password: 密码设置，若未指定，则后续将以站内信的形式通知密码。
        # @type Password: String
        # @param EnhancedService: 是否开启腾讯云可观测平台和主机安全服务，未指定时默认开启。
        # @type EnhancedService: :class:`Tencentcloud::Ecm.v20190719.models.EnhancedService`
        # @param KeepData: 是否保留数据盘数据，取值"true"/"false"。默认为"true"
        # @type KeepData: String
        # @param KeepImageLogin: 保持镜像的原始设置。该参数与Password或KeyIds.N不能同时指定。只有使用自定义镜像、共享镜像或外部导入镜像创建实例时才能指定该参数为TRUE。取值范围：
        # TRUE：表示保持镜像的登录设置
        # FALSE：表示不保持镜像的登录设置

        # 默认取值：FALSE。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeepImageLogin: String

        attr_accessor :InstanceIdSet, :ImageId, :Password, :EnhancedService, :KeepData, :KeepImageLogin

        def initialize(instanceidset=nil, imageid=nil, password=nil, enhancedservice=nil, keepdata=nil, keepimagelogin=nil)
          @InstanceIdSet = instanceidset
          @ImageId = imageid
          @Password = password
          @EnhancedService = enhancedservice
          @KeepData = keepdata
          @KeepImageLogin = keepimagelogin
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @ImageId = params['ImageId']
          @Password = params['Password']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          @KeepData = params['KeepData']
          @KeepImageLogin = params['KeepImageLogin']
        end
      end

      # ResetInstances返回参数结构体
      class ResetInstancesResponse < TencentCloud::Common::AbstractModel
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

      # ResetRoutes请求参数结构体
      class ResetRoutesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param RouteTableName: 路由表名称，最大长度不能超过60个字节。
        # @type RouteTableName: String
        # @param Routes: 路由策略。
        # @type Routes: Array

        attr_accessor :RouteTableId, :RouteTableName, :Routes

        def initialize(routetableid=nil, routetablename=nil, routes=nil)
          @RouteTableId = routetableid
          @RouteTableName = routetablename
          @Routes = routes
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RouteTableName = params['RouteTableName']
          unless params['Routes'].nil?
            @Routes = []
            params['Routes'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @Routes << route_tmp
            end
          end
        end
      end

      # ResetRoutes返回参数结构体
      class ResetRoutesResponse < TencentCloud::Common::AbstractModel
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

      # 路由策略
      class Route < TencentCloud::Common::AbstractModel
        # @param DestinationCidrBlock: 目的IPv4网段
        # @type DestinationCidrBlock: String
        # @param GatewayType: 下一跳类型
        # NORMAL_CVM：普通云服务器；
        # @type GatewayType: String
        # @param GatewayId: 下一跳地址
        # 这里只需要指定不同下一跳类型的网关ID，系统会自动匹配到下一跳地址
        # 当 GatewayType 为 EIP 时，GatewayId 固定值 '0'
        # @type GatewayId: String
        # @param RouteItemId: 路由策略唯一ID
        # @type RouteItemId: String
        # @param RouteDescription: 路由策略描述
        # @type RouteDescription: String
        # @param Enabled: 是否启用
        # @type Enabled: Boolean
        # @param RouteType: 路由类型，目前我们支持的类型有：
        # USER：用户路由；
        # NETD：网络探测路由，创建网络探测实例时，系统默认下发，不可编辑与删除；
        # CCN：云联网路由，系统默认下发，不可编辑与删除。
        # 用户只能添加和操作 USER 类型的路由。
        # @type RouteType: String
        # @param RouteId: 路由策略ID。IPv4路由策略ID是有意义的值，IPv6路由策略是无意义的值0。后续建议完全使用字符串唯一ID `RouteItemId`操作路由策略
        # @type RouteId: Integer
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String

        attr_accessor :DestinationCidrBlock, :GatewayType, :GatewayId, :RouteItemId, :RouteDescription, :Enabled, :RouteType, :RouteId, :RouteTableId

        def initialize(destinationcidrblock=nil, gatewaytype=nil, gatewayid=nil, routeitemid=nil, routedescription=nil, enabled=nil, routetype=nil, routeid=nil, routetableid=nil)
          @DestinationCidrBlock = destinationcidrblock
          @GatewayType = gatewaytype
          @GatewayId = gatewayid
          @RouteItemId = routeitemid
          @RouteDescription = routedescription
          @Enabled = enabled
          @RouteType = routetype
          @RouteId = routeid
          @RouteTableId = routetableid
        end

        def deserialize(params)
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @GatewayType = params['GatewayType']
          @GatewayId = params['GatewayId']
          @RouteItemId = params['RouteItemId']
          @RouteDescription = params['RouteDescription']
          @Enabled = params['Enabled']
          @RouteType = params['RouteType']
          @RouteId = params['RouteId']
          @RouteTableId = params['RouteTableId']
        end
      end

      # 路由冲突对象
      class RouteConflict < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID
        # @type RouteTableId: String
        # @param DestinationCidrBlock: 要检查的与之冲突的目的端
        # @type DestinationCidrBlock: String
        # @param ConflictSet: 冲突的路由策略列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConflictSet: Array

        attr_accessor :RouteTableId, :DestinationCidrBlock, :ConflictSet

        def initialize(routetableid=nil, destinationcidrblock=nil, conflictset=nil)
          @RouteTableId = routetableid
          @DestinationCidrBlock = destinationcidrblock
          @ConflictSet = conflictset
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @DestinationCidrBlock = params['DestinationCidrBlock']
          unless params['ConflictSet'].nil?
            @ConflictSet = []
            params['ConflictSet'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @ConflictSet << route_tmp
            end
          end
        end
      end

      # 路由表
      class RouteTable < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID
        # @type VpcId: String
        # @param RouteTableId: 路由表实例ID
        # @type RouteTableId: String
        # @param RouteTableName: 路由表名称
        # @type RouteTableName: String
        # @param AssociationSet: 路由表关联关系
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociationSet: Array
        # @param RouteSet: IPv4路由策略集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RouteSet: Array
        # @param Main: 是否默认路由表
        # @type Main: Boolean
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String

        attr_accessor :VpcId, :RouteTableId, :RouteTableName, :AssociationSet, :RouteSet, :Main, :CreatedTime

        def initialize(vpcid=nil, routetableid=nil, routetablename=nil, associationset=nil, routeset=nil, main=nil, createdtime=nil)
          @VpcId = vpcid
          @RouteTableId = routetableid
          @RouteTableName = routetablename
          @AssociationSet = associationset
          @RouteSet = routeset
          @Main = main
          @CreatedTime = createdtime
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @RouteTableId = params['RouteTableId']
          @RouteTableName = params['RouteTableName']
          unless params['AssociationSet'].nil?
            @AssociationSet = []
            params['AssociationSet'].each do |i|
              routetableassociation_tmp = RouteTableAssociation.new
              routetableassociation_tmp.deserialize(i)
              @AssociationSet << routetableassociation_tmp
            end
          end
          unless params['RouteSet'].nil?
            @RouteSet = []
            params['RouteSet'].each do |i|
              route_tmp = Route.new
              route_tmp.deserialize(i)
              @RouteSet << route_tmp
            end
          end
          @Main = params['Main']
          @CreatedTime = params['CreatedTime']
        end
      end

      # 路由表关联关系
      class RouteTableAssociation < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网实例ID
        # @type SubnetId: String
        # @param RouteTableId: 路由表实例ID
        # @type RouteTableId: String

        attr_accessor :SubnetId, :RouteTableId

        def initialize(subnetid=nil, routetableid=nil)
          @SubnetId = subnetid
          @RouteTableId = routetableid
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @RouteTableId = params['RouteTableId']
        end
      end

      # 转发规则及健康状态列表
      class RuleHealth < TencentCloud::Common::AbstractModel
        # @param Targets: 本规则上绑定的后端的健康检查状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Targets: Array

        attr_accessor :Targets

        def initialize(targets=nil)
          @Targets = targets
        end

        def deserialize(params)
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              targethealth_tmp = TargetHealth.new
              targethealth_tmp.deserialize(i)
              @Targets << targethealth_tmp
            end
          end
        end
      end

      # IP直通相关的信息
      class RunEIPDirectServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开通IP直通。取值范围：
        # TRUE：表示开通IP直通
        # FALSE：表示不开通IP直通
        # 默认取值：TRUE。
        # windows镜像目前不支持IP直通。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # RunInstances请求参数结构体
      class RunInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneInstanceCountISPSet: 需要创建实例的可用区及创建数目及运营商的列表。在单次请求的过程中，单个region下的请求创建实例数上限为100
        # @type ZoneInstanceCountISPSet: Array
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：
        # Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) ` ~ ! @ # $ % ^ & - + = | { } [ ] : ; ' , . ? / ]中的特殊符。Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) ` ~ ! @ # $ % ^ & - + = | { } [ ] : ; ' , . ? /]中的特殊符号。
        # @type Password: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。
        # 1.如果未传该参数或者传的值为0，则使用模块下的默认值。
        # 2.如果未传该参数或者传的值为0且未指定模块，则使用InternetMaxBandwidthIn的值
        # @type InternetMaxBandwidthOut: Integer
        # @param ModuleId: 模块ID。如果未传该参数，则必须传ImageId，InstanceType，DataDiskSize，InternetMaxBandwidthOut参数
        # @type ModuleId: String
        # @param ImageId: 镜像ID。如果未传该参数或者传的值为空，则使用模块下的默认值
        # @type ImageId: String
        # @param InstanceName: 实例显示名称。
        # 不指定实例显示名称则默认显示‘未命名’。
        # 购买多台实例，如果指定模式串{R:x}，表示生成数字[x, x+n-1]，其中n表示购买实例的数量，例如server\_{R:3}，购买1台时，实例显示名称为server\_3；购买2台时，实例显示名称分别为server\_3，server\_4。
        # 支持指定多个模式串{R:x}。
        # 购买多台实例，如果不指定模式串，则在实例显示名称添加后缀1、2...n，其中n表示购买实例的数量，例如server_，购买2台时，实例显示名称分别为server\_1，server\_2。
        # 如果购买的实例属于不同的地域或运营商，则上述规则在每个地域和运营商内独立计数。
        # 最多支持60个字符（包含模式串）。
        # @type InstanceName: String
        # @param HostName: 主机名称
        # 点号（.）和短横线（-）不能作为 HostName 的首尾字符，不能连续使用。
        # Windows 实例：名字符长度为[2, 15]，允许字母（不限制大小写）、数字和短横线（-）组成，不支持点号（.），不能全是数字。
        # 其他类型（Linux 等）实例：字符长度为[2, 60]，允许支持多个点号，点之间为一段，每段允许字母（不限制大小写）、数字和短横线（-）组成。
        # @type HostName: String
        # @param ClientToken: 用于保证请求幂等性的字符串。目前为保留参数，请勿使用。
        # @type ClientToken: String
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、腾讯云可观测平台等服务。若不指定该参数，则默认公共镜像开启腾讯云可观测平台、云安全服务
        # @type EnhancedService: :class:`Tencentcloud::Ecm.v20190719.models.EnhancedService`
        # @param TagSpecification: 标签列表
        # @type TagSpecification: Array
        # @param UserData: 提供给实例使用的用户数据，需要以 base64 方式编码，支持的最大数据大小为 16KB
        # @type UserData: String
        # @param InstanceType: 机型。如果未传该参数或者传的值为空，则使用模块下的默认值
        # @type InstanceType: String
        # @param DataDiskSize: 数据盘大小，单位是G。如果未传该参数或者传的值为0，则使用模块下的默认值
        # @type DataDiskSize: Integer
        # @param SecurityGroupIds: 实例所属安全组。该参数可以通过调用 DescribeSecurityGroups 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        # @type SecurityGroupIds: Array
        # @param SystemDiskSize: 系统盘大小，单位是G。如果未传该参数或者传的值为0，则使用模块下的默认值
        # @type SystemDiskSize: Integer
        # @param InternetMaxBandwidthIn: 公网入带宽上限，单位：Mbps。
        # 1.如果未传该参数或者传的值为0，则使用对应模块的默认值。
        # 2.如果未传该参数或者传的值为0且未指定模块，则使用InternetMaxBandwidthOut
        # @type InternetMaxBandwidthIn: Integer
        # @param InstanceChargeType: 实例计费类型。其中：
        # 0，按资源维度后付费，计算当日用量峰值，例如CPU，内存，硬盘等，仅适用于非GNR系列机型；
        # 1，按小时后付费，单价：xx元/实例/小时，仅适用于GNR机型，如需开通该计费方式请提工单申请；
        # 2，按月后付费，单价：xx元/实例/月，仅适用于GNR机型；
        # 该字段不填时，非GNR机型会默认选择0；GNR机型默认选择2。
        # @type InstanceChargeType: Integer
        # @param KeyIds: 密钥对。
        # @type KeyIds: Array
        # @param KeepImageLogin: 保持镜像的原始设置。该参数与Password或KeyIds.N不能同时指定。只有使用自定义镜像、共享镜像或外部导入镜像创建实例时才能指定该参数为TRUE。取值范围：
        # TRUE：表示保持镜像的登录设置
        # FALSE：表示不保持镜像的登录设置

        # 默认取值：FALSE。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeepImageLogin: String
        # @param SystemDisk: 系统盘信息。
        # @type SystemDisk: :class:`Tencentcloud::Ecm.v20190719.models.SystemDisk`
        # @param DataDisks: 数据盘信息。
        # @type DataDisks: Array

        attr_accessor :ZoneInstanceCountISPSet, :Password, :InternetMaxBandwidthOut, :ModuleId, :ImageId, :InstanceName, :HostName, :ClientToken, :EnhancedService, :TagSpecification, :UserData, :InstanceType, :DataDiskSize, :SecurityGroupIds, :SystemDiskSize, :InternetMaxBandwidthIn, :InstanceChargeType, :KeyIds, :KeepImageLogin, :SystemDisk, :DataDisks

        def initialize(zoneinstancecountispset=nil, password=nil, internetmaxbandwidthout=nil, moduleid=nil, imageid=nil, instancename=nil, hostname=nil, clienttoken=nil, enhancedservice=nil, tagspecification=nil, userdata=nil, instancetype=nil, datadisksize=nil, securitygroupids=nil, systemdisksize=nil, internetmaxbandwidthin=nil, instancechargetype=nil, keyids=nil, keepimagelogin=nil, systemdisk=nil, datadisks=nil)
          @ZoneInstanceCountISPSet = zoneinstancecountispset
          @Password = password
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @ModuleId = moduleid
          @ImageId = imageid
          @InstanceName = instancename
          @HostName = hostname
          @ClientToken = clienttoken
          @EnhancedService = enhancedservice
          @TagSpecification = tagspecification
          @UserData = userdata
          @InstanceType = instancetype
          @DataDiskSize = datadisksize
          @SecurityGroupIds = securitygroupids
          @SystemDiskSize = systemdisksize
          @InternetMaxBandwidthIn = internetmaxbandwidthin
          @InstanceChargeType = instancechargetype
          @KeyIds = keyids
          @KeepImageLogin = keepimagelogin
          @SystemDisk = systemdisk
          @DataDisks = datadisks
        end

        def deserialize(params)
          unless params['ZoneInstanceCountISPSet'].nil?
            @ZoneInstanceCountISPSet = []
            params['ZoneInstanceCountISPSet'].each do |i|
              zoneinstancecountisp_tmp = ZoneInstanceCountISP.new
              zoneinstancecountisp_tmp.deserialize(i)
              @ZoneInstanceCountISPSet << zoneinstancecountisp_tmp
            end
          end
          @Password = params['Password']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @ModuleId = params['ModuleId']
          @ImageId = params['ImageId']
          @InstanceName = params['InstanceName']
          @HostName = params['HostName']
          @ClientToken = params['ClientToken']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new
            @EnhancedService.deserialize(params['EnhancedService'])
          end
          unless params['TagSpecification'].nil?
            @TagSpecification = []
            params['TagSpecification'].each do |i|
              tagspecification_tmp = TagSpecification.new
              tagspecification_tmp.deserialize(i)
              @TagSpecification << tagspecification_tmp
            end
          end
          @UserData = params['UserData']
          @InstanceType = params['InstanceType']
          @DataDiskSize = params['DataDiskSize']
          @SecurityGroupIds = params['SecurityGroupIds']
          @SystemDiskSize = params['SystemDiskSize']
          @InternetMaxBandwidthIn = params['InternetMaxBandwidthIn']
          @InstanceChargeType = params['InstanceChargeType']
          @KeyIds = params['KeyIds']
          @KeepImageLogin = params['KeepImageLogin']
          unless params['SystemDisk'].nil?
            @SystemDisk = SystemDisk.new
            @SystemDisk.deserialize(params['SystemDisk'])
          end
          unless params['DataDisks'].nil?
            @DataDisks = []
            params['DataDisks'].each do |i|
              datadisk_tmp = DataDisk.new
              datadisk_tmp.deserialize(i)
              @DataDisks << datadisk_tmp
            end
          end
        end
      end

      # RunInstances返回参数结构体
      class RunInstancesResponse < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 创建中的实例ID列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 云监控服务
      class RunMonitorServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启。
        # @type Enabled: Boolean

        attr_accessor :Enabled

        def initialize(enabled=nil)
          @Enabled = enabled
        end

        def deserialize(params)
          @Enabled = params['Enabled']
        end
      end

      # 云镜服务；
      class RunSecurityServiceEnabled < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启。
        # @type Enabled: Boolean
        # @param Version: 云镜版本：0 基础版，1 专业版。目前仅支持基础版
        # @type Version: Integer

        attr_accessor :Enabled, :Version

        def initialize(enabled=nil, version=nil)
          @Enabled = enabled
          @Version = version
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @Version = params['Version']
        end
      end

      # 安全组对象
      class SecurityGroup < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID，例如：esg-ohuuioma。
        # @type SecurityGroupId: String
        # @param SecurityGroupName: 安全组名称，可任意命名，但不得超过60个字符。
        # @type SecurityGroupName: String
        # @param SecurityGroupDesc: 安全组备注，最多100个字符。
        # @type SecurityGroupDesc: String
        # @param IsDefault: 是否是默认安全组，默认安全组不支持删除。
        # @type IsDefault: Boolean
        # @param CreatedTime: 安全组创建时间。
        # @type CreatedTime: String
        # @param TagSet: 标签键值对。
        # @type TagSet: Array

        attr_accessor :SecurityGroupId, :SecurityGroupName, :SecurityGroupDesc, :IsDefault, :CreatedTime, :TagSet

        def initialize(securitygroupid=nil, securitygroupname=nil, securitygroupdesc=nil, isdefault=nil, createdtime=nil, tagset=nil)
          @SecurityGroupId = securitygroupid
          @SecurityGroupName = securitygroupname
          @SecurityGroupDesc = securitygroupdesc
          @IsDefault = isdefault
          @CreatedTime = createdtime
          @TagSet = tagset
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @SecurityGroupName = params['SecurityGroupName']
          @SecurityGroupDesc = params['SecurityGroupDesc']
          @IsDefault = params['IsDefault']
          @CreatedTime = params['CreatedTime']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
        end
      end

      # 安全组关联的资源统计
      class SecurityGroupAssociationStatistics < TencentCloud::Common::AbstractModel
        # @param SecurityGroupId: 安全组实例ID。
        # @type SecurityGroupId: String
        # @param ECM: ECM实例数。
        # @type ECM: Integer
        # @param Module: ECM模块数。
        # @type Module: Integer
        # @param ENI: 弹性网卡实例数。
        # @type ENI: Integer
        # @param SG: 被安全组引用数。
        # @type SG: Integer
        # @param CLB: 负载均衡实例数。
        # @type CLB: Integer
        # @param InstanceStatistics: 全量实例的绑定统计。
        # @type InstanceStatistics: Array
        # @param TotalCount: 所有资源的总计数（不包含被安全组引用数）。
        # @type TotalCount: Integer

        attr_accessor :SecurityGroupId, :ECM, :Module, :ENI, :SG, :CLB, :InstanceStatistics, :TotalCount

        def initialize(securitygroupid=nil, ecm=nil, _module=nil, eni=nil, sg=nil, clb=nil, instancestatistics=nil, totalcount=nil)
          @SecurityGroupId = securitygroupid
          @ECM = ecm
          @Module = _module
          @ENI = eni
          @SG = sg
          @CLB = clb
          @InstanceStatistics = instancestatistics
          @TotalCount = totalcount
        end

        def deserialize(params)
          @SecurityGroupId = params['SecurityGroupId']
          @ECM = params['ECM']
          @Module = params['Module']
          @ENI = params['ENI']
          @SG = params['SG']
          @CLB = params['CLB']
          unless params['InstanceStatistics'].nil?
            @InstanceStatistics = []
            params['InstanceStatistics'].each do |i|
              instancestatistic_tmp = InstanceStatistic.new
              instancestatistic_tmp.deserialize(i)
              @InstanceStatistics << instancestatistic_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 用户安全组配额限制
      class SecurityGroupLimitSet < TencentCloud::Common::AbstractModel
        # @param SecurityGroupLimit: 可创建安全组总数
        # @type SecurityGroupLimit: Integer
        # @param SecurityGroupPolicyLimit: 安全组下的最大规则数
        # @type SecurityGroupPolicyLimit: Integer
        # @param ReferedSecurityGroupLimit: 安全组下嵌套安全组规则数
        # @type ReferedSecurityGroupLimit: Integer
        # @param SecurityGroupInstanceLimit: 单安全组关联实例数
        # @type SecurityGroupInstanceLimit: Integer
        # @param InstanceSecurityGroupLimit: 实例关联安全组数
        # @type InstanceSecurityGroupLimit: Integer
        # @param SecurityGroupModuleLimit: 单安全组关联的模块数
        # @type SecurityGroupModuleLimit: Integer
        # @param ModuleSecurityGroupLimit: 模块关联的安全组数
        # @type ModuleSecurityGroupLimit: Integer

        attr_accessor :SecurityGroupLimit, :SecurityGroupPolicyLimit, :ReferedSecurityGroupLimit, :SecurityGroupInstanceLimit, :InstanceSecurityGroupLimit, :SecurityGroupModuleLimit, :ModuleSecurityGroupLimit

        def initialize(securitygrouplimit=nil, securitygrouppolicylimit=nil, referedsecuritygrouplimit=nil, securitygroupinstancelimit=nil, instancesecuritygrouplimit=nil, securitygroupmodulelimit=nil, modulesecuritygrouplimit=nil)
          @SecurityGroupLimit = securitygrouplimit
          @SecurityGroupPolicyLimit = securitygrouppolicylimit
          @ReferedSecurityGroupLimit = referedsecuritygrouplimit
          @SecurityGroupInstanceLimit = securitygroupinstancelimit
          @InstanceSecurityGroupLimit = instancesecuritygrouplimit
          @SecurityGroupModuleLimit = securitygroupmodulelimit
          @ModuleSecurityGroupLimit = modulesecuritygrouplimit
        end

        def deserialize(params)
          @SecurityGroupLimit = params['SecurityGroupLimit']
          @SecurityGroupPolicyLimit = params['SecurityGroupPolicyLimit']
          @ReferedSecurityGroupLimit = params['ReferedSecurityGroupLimit']
          @SecurityGroupInstanceLimit = params['SecurityGroupInstanceLimit']
          @InstanceSecurityGroupLimit = params['InstanceSecurityGroupLimit']
          @SecurityGroupModuleLimit = params['SecurityGroupModuleLimit']
          @ModuleSecurityGroupLimit = params['ModuleSecurityGroupLimit']
        end
      end

      # 安全组规则对象
      class SecurityGroupPolicy < TencentCloud::Common::AbstractModel
        # @param PolicyIndex: 安全组规则索引号
        # @type PolicyIndex: Integer
        # @param Protocol: 协议, 取值: TCP,UDP, ICMP。
        # @type Protocol: String
        # @param Port: 端口(all, 离散port, range)。
        # @type Port: String
        # @param ServiceTemplate: 协议端口ID或者协议端口组ID。ServiceTemplate和Protocol+Port互斥。
        # @type ServiceTemplate: :class:`Tencentcloud::Ecm.v20190719.models.ServiceTemplateSpecification`
        # @param CidrBlock: 网段或IP(互斥)。
        # @type CidrBlock: String
        # @param SecurityGroupId: 安全组实例ID，例如：esg-ohuuioma。
        # @type SecurityGroupId: String
        # @param AddressTemplate: IP地址ID或者ID地址组ID。
        # @type AddressTemplate: :class:`Tencentcloud::Ecm.v20190719.models.AddressTemplateSpecification`
        # @param Action: ACCEPT 或 DROP。
        # @type Action: String
        # @param PolicyDescription: 安全组规则描述。
        # @type PolicyDescription: String
        # @param ModifyTime: 修改时间，例如 2020-07-22 19：27：23
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyTime: String
        # @param Ipv6CidrBlock: 网段或IPv6(互斥)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6CidrBlock: String

        attr_accessor :PolicyIndex, :Protocol, :Port, :ServiceTemplate, :CidrBlock, :SecurityGroupId, :AddressTemplate, :Action, :PolicyDescription, :ModifyTime, :Ipv6CidrBlock

        def initialize(policyindex=nil, protocol=nil, port=nil, servicetemplate=nil, cidrblock=nil, securitygroupid=nil, addresstemplate=nil, action=nil, policydescription=nil, modifytime=nil, ipv6cidrblock=nil)
          @PolicyIndex = policyindex
          @Protocol = protocol
          @Port = port
          @ServiceTemplate = servicetemplate
          @CidrBlock = cidrblock
          @SecurityGroupId = securitygroupid
          @AddressTemplate = addresstemplate
          @Action = action
          @PolicyDescription = policydescription
          @ModifyTime = modifytime
          @Ipv6CidrBlock = ipv6cidrblock
        end

        def deserialize(params)
          @PolicyIndex = params['PolicyIndex']
          @Protocol = params['Protocol']
          @Port = params['Port']
          unless params['ServiceTemplate'].nil?
            @ServiceTemplate = ServiceTemplateSpecification.new
            @ServiceTemplate.deserialize(params['ServiceTemplate'])
          end
          @CidrBlock = params['CidrBlock']
          @SecurityGroupId = params['SecurityGroupId']
          unless params['AddressTemplate'].nil?
            @AddressTemplate = AddressTemplateSpecification.new
            @AddressTemplate.deserialize(params['AddressTemplate'])
          end
          @Action = params['Action']
          @PolicyDescription = params['PolicyDescription']
          @ModifyTime = params['ModifyTime']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
        end
      end

      # 安全组规则集合
      class SecurityGroupPolicySet < TencentCloud::Common::AbstractModel
        # @param Version: 安全组规则当前版本。用户每次更新安全规则版本会自动加1，防止更新的路由规则已过期，不填不考虑冲突。
        # @type Version: String
        # @param Egress: 出站规则。其中出站规则和入站规则必须选一个。
        # @type Egress: Array
        # @param Ingress: 入站规则。其中出站规则和入站规则必须选一个。
        # @type Ingress: Array

        attr_accessor :Version, :Egress, :Ingress

        def initialize(version=nil, egress=nil, ingress=nil)
          @Version = version
          @Egress = egress
          @Ingress = ingress
        end

        def deserialize(params)
          @Version = params['Version']
          unless params['Egress'].nil?
            @Egress = []
            params['Egress'].each do |i|
              securitygrouppolicy_tmp = SecurityGroupPolicy.new
              securitygrouppolicy_tmp.deserialize(i)
              @Egress << securitygrouppolicy_tmp
            end
          end
          unless params['Ingress'].nil?
            @Ingress = []
            params['Ingress'].each do |i|
              securitygrouppolicy_tmp = SecurityGroupPolicy.new
              securitygrouppolicy_tmp.deserialize(i)
              @Ingress << securitygrouppolicy_tmp
            end
          end
        end
      end

      # 协议端口模板
      class ServiceTemplateSpecification < TencentCloud::Common::AbstractModel
        # @param ServiceId: 协议端口ID，例如：eppm-f5n1f8da。
        # @type ServiceId: String
        # @param ServiceGroupId: 协议端口组ID，例如：eppmg-f5n1f8da。
        # @type ServiceGroupId: String

        attr_accessor :ServiceId, :ServiceGroupId

        def initialize(serviceid=nil, servicegroupid=nil)
          @ServiceId = serviceid
          @ServiceGroupId = servicegroupid
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceGroupId = params['ServiceGroupId']
        end
      end

      # SetLoadBalancerSecurityGroups请求参数结构体
      class SetLoadBalancerSecurityGroupsRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param SecurityGroups: 安全组ID构成的数组，一个负载均衡实例最多可绑定5个安全组，如果要解绑所有安全组，可不传此参数，或传入空数组
        # @type SecurityGroups: Array

        attr_accessor :LoadBalancerId, :SecurityGroups

        def initialize(loadbalancerid=nil, securitygroups=nil)
          @LoadBalancerId = loadbalancerid
          @SecurityGroups = securitygroups
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @SecurityGroups = params['SecurityGroups']
        end
      end

      # SetLoadBalancerSecurityGroups返回参数结构体
      class SetLoadBalancerSecurityGroupsResponse < TencentCloud::Common::AbstractModel
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

      # SetSecurityGroupForLoadbalancers请求参数结构体
      class SetSecurityGroupForLoadbalancersRequest < TencentCloud::Common::AbstractModel
        # @param LoadBalancerIds: 负载均衡实例ID数组
        # @type LoadBalancerIds: Array
        # @param SecurityGroup: 安全组ID，如 esg-12345678
        # @type SecurityGroup: String
        # @param OperationType: ADD 绑定安全组；
        # DEL 解绑安全组
        # @type OperationType: String

        attr_accessor :LoadBalancerIds, :SecurityGroup, :OperationType

        def initialize(loadbalancerids=nil, securitygroup=nil, operationtype=nil)
          @LoadBalancerIds = loadbalancerids
          @SecurityGroup = securitygroup
          @OperationType = operationtype
        end

        def deserialize(params)
          @LoadBalancerIds = params['LoadBalancerIds']
          @SecurityGroup = params['SecurityGroup']
          @OperationType = params['OperationType']
        end
      end

      # SetSecurityGroupForLoadbalancers返回参数结构体
      class SetSecurityGroupForLoadbalancersResponse < TencentCloud::Common::AbstractModel
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

      # Module的简要信息
      class SimpleModule < TencentCloud::Common::AbstractModel
        # @param ModuleId: 模块ID
        # @type ModuleId: String
        # @param ModuleName: 模块名称
        # @type ModuleName: String

        attr_accessor :ModuleId, :ModuleName

        def initialize(moduleid=nil, modulename=nil)
          @ModuleId = moduleid
          @ModuleName = modulename
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @ModuleName = params['ModuleName']
        end
      end

      # 描述了快照的详细信息
      class Snapshot < TencentCloud::Common::AbstractModel
        # @param Placement: 快照所在的位置。
        # @type Placement: :class:`Tencentcloud::Ecm.v20190719.models.Placement`
        # @param CopyFromRemote: 是否为跨地域复制的快照。取值范围：<br><li>true：表示为跨地域复制的快照。<br><li>false:本地域的快照。
        # @type CopyFromRemote: Boolean
        # @param IsPermanent: 是否为永久快照。取值范围：<br><li>true：永久快照<br><li>false：非永久快照。
        # @type IsPermanent: Boolean
        # @param SnapshotName: 快照名称，用户自定义的快照别名。调用[ModifySnapshotAttribute](/document/product/362/15650)可修改此字段。
        # @type SnapshotName: String
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
        # @param SnapshotId: 快照ID。
        # @type SnapshotId: String
        # @param DiskUsage: 创建此快照的云硬盘类型。取值范围：<br><li>SYSTEM_DISK：系统盘<br><li>DATA_DISK：数据盘。
        # @type DiskUsage: String
        # @param Encrypt: 是否为加密盘创建的快照。取值范围：<br><li>true：该快照为加密盘创建的<br><li>false:非加密盘创建的快照。
        # @type Encrypt: Boolean
        # @param CreateTime: 快照的创建时间。
        # @type CreateTime: String
        # @param ImageCount: 快照关联的镜像个数。
        # @type ImageCount: Integer
        # @param SnapshotState: 快照的状态。取值范围：<br><li>NORMAL：正常<br><li>CREATING：创建中<br><li>ROLLBACKING：回滚中<br><li>COPYING_FROM_REMOTE：跨地域复制中<br><li>CHECKING_COPIED：复制校验中<br><li>TORECYCLE：待回收。
        # @type SnapshotState: String
        # @param DeadlineTime: 快照的到期时间。
        # @type DeadlineTime: String
        # @param TimeStartShare: 快照开始共享的时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TimeStartShare: String

        attr_accessor :Placement, :CopyFromRemote, :IsPermanent, :SnapshotName, :Percent, :Images, :ShareReference, :SnapshotType, :DiskSize, :DiskId, :CopyingToRegions, :SnapshotId, :DiskUsage, :Encrypt, :CreateTime, :ImageCount, :SnapshotState, :DeadlineTime, :TimeStartShare

        def initialize(placement=nil, copyfromremote=nil, ispermanent=nil, snapshotname=nil, percent=nil, images=nil, sharereference=nil, snapshottype=nil, disksize=nil, diskid=nil, copyingtoregions=nil, snapshotid=nil, diskusage=nil, encrypt=nil, createtime=nil, imagecount=nil, snapshotstate=nil, deadlinetime=nil, timestartshare=nil)
          @Placement = placement
          @CopyFromRemote = copyfromremote
          @IsPermanent = ispermanent
          @SnapshotName = snapshotname
          @Percent = percent
          @Images = images
          @ShareReference = sharereference
          @SnapshotType = snapshottype
          @DiskSize = disksize
          @DiskId = diskid
          @CopyingToRegions = copyingtoregions
          @SnapshotId = snapshotid
          @DiskUsage = diskusage
          @Encrypt = encrypt
          @CreateTime = createtime
          @ImageCount = imagecount
          @SnapshotState = snapshotstate
          @DeadlineTime = deadlinetime
          @TimeStartShare = timestartshare
        end

        def deserialize(params)
          unless params['Placement'].nil?
            @Placement = Placement.new
            @Placement.deserialize(params['Placement'])
          end
          @CopyFromRemote = params['CopyFromRemote']
          @IsPermanent = params['IsPermanent']
          @SnapshotName = params['SnapshotName']
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
          @SnapshotId = params['SnapshotId']
          @DiskUsage = params['DiskUsage']
          @Encrypt = params['Encrypt']
          @CreateTime = params['CreateTime']
          @ImageCount = params['ImageCount']
          @SnapshotState = params['SnapshotState']
          @DeadlineTime = params['DeadlineTime']
          @TimeStartShare = params['TimeStartShare']
        end
      end

      # 镜像来源信息
      class SrcImage < TencentCloud::Common::AbstractModel
        # @param ImageId: 镜像id
        # @type ImageId: String
        # @param ImageName: 镜像名称
        # @type ImageName: String
        # @param ImageOsName: 系统名称
        # @type ImageOsName: String
        # @param ImageDescription: 镜像描述
        # @type ImageDescription: String
        # @param Region: 区域
        # @type Region: String
        # @param RegionID: 区域ID
        # @type RegionID: Integer
        # @param RegionName: 区域名称
        # @type RegionName: String
        # @param InstanceName: 来源实例名称
        # @type InstanceName: String
        # @param InstanceId: 来源实例ID
        # @type InstanceId: String
        # @param ImageType: 来源镜像类型
        # @type ImageType: String

        attr_accessor :ImageId, :ImageName, :ImageOsName, :ImageDescription, :Region, :RegionID, :RegionName, :InstanceName, :InstanceId, :ImageType

        def initialize(imageid=nil, imagename=nil, imageosname=nil, imagedescription=nil, region=nil, regionid=nil, regionname=nil, instancename=nil, instanceid=nil, imagetype=nil)
          @ImageId = imageid
          @ImageName = imagename
          @ImageOsName = imageosname
          @ImageDescription = imagedescription
          @Region = region
          @RegionID = regionid
          @RegionName = regionname
          @InstanceName = instancename
          @InstanceId = instanceid
          @ImageType = imagetype
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @ImageOsName = params['ImageOsName']
          @ImageDescription = params['ImageDescription']
          @Region = params['Region']
          @RegionID = params['RegionID']
          @RegionName = params['RegionName']
          @InstanceName = params['InstanceName']
          @InstanceId = params['InstanceId']
          @ImageType = params['ImageType']
        end
      end

      # StartInstances请求参数结构体
      class StartInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 待开启的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        # @type InstanceIdSet: Array

        attr_accessor :InstanceIdSet

        def initialize(instanceidset=nil)
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
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
        # @param InstanceIdSet: 需要关机的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        # @type InstanceIdSet: Array
        # @param ForceStop: 是否在正常关闭失败后选择强制关闭实例，默认为false，即否。
        # @type ForceStop: Boolean
        # @param StopType: 实例的关闭模式。取值范围：
        # SOFT_FIRST：表示在正常关闭失败后进行强制关闭;
        # HARD：直接强制关闭;
        # SOFT：仅软关机；
        # 默认为SOFT。
        # @type StopType: String

        attr_accessor :InstanceIdSet, :ForceStop, :StopType

        def initialize(instanceidset=nil, forcestop=nil, stoptype=nil)
          @InstanceIdSet = instanceidset
          @ForceStop = forcestop
          @StopType = stoptype
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @ForceStop = params['ForceStop']
          @StopType = params['StopType']
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

      # 子网对象
      class Subnet < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param SubnetId: 子网实例ID，例如：subnet-bthucmmy。
        # @type SubnetId: String
        # @param SubnetName: 子网名称。
        # @type SubnetName: String
        # @param CidrBlock: 子网的 IPv4 CIDR。
        # @type CidrBlock: String
        # @param IsDefault: 是否默认子网。
        # @type IsDefault: Boolean
        # @param EnableBroadcast: 是否开启广播。
        # @type EnableBroadcast: Boolean
        # @param RouteTableId: 路由表实例ID，例如：rtb-l2h8d7c2。
        # @type RouteTableId: String
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param AvailableIpAddressCount: 可用IP数。
        # @type AvailableIpAddressCount: Integer
        # @param Ipv6CidrBlock: 子网的 IPv6 CIDR。
        # @type Ipv6CidrBlock: String
        # @param NetworkAclId: 关联ACLID
        # @type NetworkAclId: String
        # @param IsRemoteVpcSnat: 是否为 SNAT 地址池子网。
        # @type IsRemoteVpcSnat: Boolean
        # @param TagSet: 标签键值对。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param Zone: 所在区域
        # @type Zone: String
        # @param ZoneName: 可用区名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneName: String
        # @param InstanceCount: 实例数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceCount: Integer
        # @param VpcCidrBlock: VPC的 IPv4 CIDR。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcCidrBlock: String
        # @param VpcIpv6CidrBlock: VPC的 IPv6 CIDR。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcIpv6CidrBlock: String
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param ISPType: 运营商类型。'CMCC'-中国移动, 'CTCC'-中国电信, 'CUCC'-中国联调
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ISPType: String

        attr_accessor :VpcId, :SubnetId, :SubnetName, :CidrBlock, :IsDefault, :EnableBroadcast, :RouteTableId, :CreatedTime, :AvailableIpAddressCount, :Ipv6CidrBlock, :NetworkAclId, :IsRemoteVpcSnat, :TagSet, :Zone, :ZoneName, :InstanceCount, :VpcCidrBlock, :VpcIpv6CidrBlock, :Region, :ISPType

        def initialize(vpcid=nil, subnetid=nil, subnetname=nil, cidrblock=nil, isdefault=nil, enablebroadcast=nil, routetableid=nil, createdtime=nil, availableipaddresscount=nil, ipv6cidrblock=nil, networkaclid=nil, isremotevpcsnat=nil, tagset=nil, zone=nil, zonename=nil, instancecount=nil, vpccidrblock=nil, vpcipv6cidrblock=nil, region=nil, isptype=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @IsDefault = isdefault
          @EnableBroadcast = enablebroadcast
          @RouteTableId = routetableid
          @CreatedTime = createdtime
          @AvailableIpAddressCount = availableipaddresscount
          @Ipv6CidrBlock = ipv6cidrblock
          @NetworkAclId = networkaclid
          @IsRemoteVpcSnat = isremotevpcsnat
          @TagSet = tagset
          @Zone = zone
          @ZoneName = zonename
          @InstanceCount = instancecount
          @VpcCidrBlock = vpccidrblock
          @VpcIpv6CidrBlock = vpcipv6cidrblock
          @Region = region
          @ISPType = isptype
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @IsDefault = params['IsDefault']
          @EnableBroadcast = params['EnableBroadcast']
          @RouteTableId = params['RouteTableId']
          @CreatedTime = params['CreatedTime']
          @AvailableIpAddressCount = params['AvailableIpAddressCount']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
          @NetworkAclId = params['NetworkAclId']
          @IsRemoteVpcSnat = params['IsRemoteVpcSnat']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @InstanceCount = params['InstanceCount']
          @VpcCidrBlock = params['VpcCidrBlock']
          @VpcIpv6CidrBlock = params['VpcIpv6CidrBlock']
          @Region = params['Region']
          @ISPType = params['ISPType']
        end
      end

      # 用于描述系统盘。
      class SystemDisk < TencentCloud::Common::AbstractModel
        # @param DiskType: 硬盘类型。取值范围：
        # - LOCAL_BASIC：本地硬盘；
        # - CLOUD_PREMIUM：高性能云硬盘；
        # 默认取值：CLOUD_BASIC。
        # @type DiskType: String
        # @param DiskId: 硬盘ID。此参数暂不可用。
        # @type DiskId: String
        # @param DiskSize: 硬盘容量大小。单位GB。
        # @type DiskSize: Integer

        attr_accessor :DiskType, :DiskId, :DiskSize

        def initialize(disktype=nil, diskid=nil, disksize=nil)
          @DiskType = disktype
          @DiskId = diskid
          @DiskSize = disksize
        end

        def deserialize(params)
          @DiskType = params['DiskType']
          @DiskId = params['DiskId']
          @DiskSize = params['DiskSize']
        end
      end

      # 标签信息。
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签健。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签值。
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

      # 标签信息。
      class TagInfo < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签的键。
        # @type TagKey: String
        # @param TagValue: 标签的值。
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

      # 资源类型的Tag
      class TagSpecification < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型，目前仅支持"instance"、"module"
        # @type ResourceType: String
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :ResourceType, :Tags

        def initialize(resourcetype=nil, tags=nil)
          @ResourceType = resourcetype
          @Tags = tags
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
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

      # 负责均衡后端目标
      class Target < TencentCloud::Common::AbstractModel
        # @param Port: 后端服务的监听端口
        # @type Port: Integer
        # @param InstanceId: 子机ID
        # @type InstanceId: String
        # @param Weight: 后端服务的转发权重，取值范围：[0, 100]，默认为 10。
        # @type Weight: Integer
        # @param EniIp: 绑定弹性网卡时需要传入此参数，代表弹性网卡的IP，弹性网卡必须先绑定至子机，然后才能绑定到负载均衡实例。注意：参数 InstanceId 和 EniIp 只能传入一个且必须传入一个。
        # @type EniIp: String

        attr_accessor :Port, :InstanceId, :Weight, :EniIp

        def initialize(port=nil, instanceid=nil, weight=nil, eniip=nil)
          @Port = port
          @InstanceId = instanceid
          @Weight = weight
          @EniIp = eniip
        end

        def deserialize(params)
          @Port = params['Port']
          @InstanceId = params['InstanceId']
          @Weight = params['Weight']
          @EniIp = params['EniIp']
        end
      end

      # 后端的健康检查状态
      class TargetHealth < TencentCloud::Common::AbstractModel
        # @param IP: Target的内网IP
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param Port: Target绑定的端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param HealthStatus: 当前健康状态，true：健康，false：不健康（包括尚未开始探测、探测中、状态异常等几种状态）。只有处于健康状态（且权重大于0），负载均衡才会向其转发流量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthStatus: Boolean
        # @param TargetId: Target的实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetId: String
        # @param HealthStatusDetail: 当前健康状态的详细信息。如：Alive、Dead、Unknown、Close。Alive状态为健康，Dead状态为异常，Unknown状态包括尚未开始探测、探测中、状态未知，Close为未配置健康检查。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HealthStatusDetail: String

        attr_accessor :IP, :Port, :HealthStatus, :TargetId, :HealthStatusDetail

        def initialize(ip=nil, port=nil, healthstatus=nil, targetid=nil, healthstatusdetail=nil)
          @IP = ip
          @Port = port
          @HealthStatus = healthstatus
          @TargetId = targetid
          @HealthStatusDetail = healthstatusdetail
        end

        def deserialize(params)
          @IP = params['IP']
          @Port = params['Port']
          @HealthStatus = params['HealthStatus']
          @TargetId = params['TargetId']
          @HealthStatusDetail = params['HealthStatusDetail']
        end
      end

      # 目标和权重的描述信息
      class TargetsWeightRule < TencentCloud::Common::AbstractModel
        # @param ListenerId: 负载均衡监听器 ID
        # @type ListenerId: String
        # @param Targets: 要修改权重的后端机器列表
        # @type Targets: Array
        # @param Weight: 后端服务新的转发权重，取值范围：0~100。
        # @type Weight: Integer

        attr_accessor :ListenerId, :Targets, :Weight

        def initialize(listenerid=nil, targets=nil, weight=nil)
          @ListenerId = listenerid
          @Targets = targets
          @Weight = weight
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          unless params['Targets'].nil?
            @Targets = []
            params['Targets'].each do |i|
              target_tmp = Target.new
              target_tmp.deserialize(i)
              @Targets << target_tmp
            end
          end
          @Weight = params['Weight']
        end
      end

      # 任务查询
      class TaskInput < TencentCloud::Common::AbstractModel
        # @param Operation: 操作名，即API名称，比如：CreateImage
        # @type Operation: String
        # @param TaskId: 任务id
        # @type TaskId: String

        attr_accessor :Operation, :TaskId

        def initialize(operation=nil, taskid=nil)
          @Operation = operation
          @TaskId = taskid
        end

        def deserialize(params)
          @Operation = params['Operation']
          @TaskId = params['TaskId']
        end
      end

      # 任务查询出参
      class TaskOutput < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String
        # @param Message: 状态描述
        # @type Message: String
        # @param Status: 状态值，SUCCESS/FAILED/OPERATING
        # @type Status: String
        # @param AddTime: 任务提交时间
        # @type AddTime: String
        # @param EndTime: 任务结束时间
        # @type EndTime: String
        # @param Operation: 操作名
        # @type Operation: String

        attr_accessor :TaskId, :Message, :Status, :AddTime, :EndTime, :Operation

        def initialize(taskid=nil, message=nil, status=nil, addtime=nil, endtime=nil, operation=nil)
          @TaskId = taskid
          @Message = message
          @Status = status
          @AddTime = addtime
          @EndTime = endtime
          @Operation = operation
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Message = params['Message']
          @Status = params['Status']
          @AddTime = params['AddTime']
          @EndTime = params['EndTime']
          @Operation = params['Operation']
        end
      end

      # TerminateDisks请求参数结构体
      class TerminateDisksRequest < TencentCloud::Common::AbstractModel
        # @param DiskIds: 需退还的云盘ID列表。
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

      # TerminateInstances请求参数结构体
      class TerminateInstancesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 待销毁的实例ID列表。
        # @type InstanceIdSet: Array
        # @param TerminateDelay: 是否定时销毁，默认为否。
        # @type TerminateDelay: Boolean
        # @param TerminateTime: 定时销毁的时间，格式形如："2019-08-05 12:01:30"，若非定时销毁，则此参数被忽略。
        # @type TerminateTime: String
        # @param AssociatedResourceDestroy: 是否关联删除已绑定的弹性网卡和弹性IP，默认为true。
        # 当为true时，一并删除弹性网卡和弹性IP；
        # 当为false时，只销毁主机，保留弹性网卡和弹性IP。
        # @type AssociatedResourceDestroy: Boolean

        attr_accessor :InstanceIdSet, :TerminateDelay, :TerminateTime, :AssociatedResourceDestroy

        def initialize(instanceidset=nil, terminatedelay=nil, terminatetime=nil, associatedresourcedestroy=nil)
          @InstanceIdSet = instanceidset
          @TerminateDelay = terminatedelay
          @TerminateTime = terminatetime
          @AssociatedResourceDestroy = associatedresourcedestroy
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @TerminateDelay = params['TerminateDelay']
          @TerminateTime = params['TerminateTime']
          @AssociatedResourceDestroy = params['AssociatedResourceDestroy']
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

      # UnassignIpv6SubnetCidrBlock请求参数结构体
      class UnassignIpv6SubnetCidrBlockRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 子网所在私有网络`ID`。形如：`vpc-f49l6u0z`。
        # @type VpcId: String
        # @param Ipv6SubnetCidrBlocks: `IPv6` 子网段列表。
        # @type Ipv6SubnetCidrBlocks: Array
        # @param EcmRegion: ECM地域。
        # @type EcmRegion: String

        attr_accessor :VpcId, :Ipv6SubnetCidrBlocks, :EcmRegion

        def initialize(vpcid=nil, ipv6subnetcidrblocks=nil, ecmregion=nil)
          @VpcId = vpcid
          @Ipv6SubnetCidrBlocks = ipv6subnetcidrblocks
          @EcmRegion = ecmregion
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          unless params['Ipv6SubnetCidrBlocks'].nil?
            @Ipv6SubnetCidrBlocks = []
            params['Ipv6SubnetCidrBlocks'].each do |i|
              ipv6subnetcidrblock_tmp = Ipv6SubnetCidrBlock.new
              ipv6subnetcidrblock_tmp.deserialize(i)
              @Ipv6SubnetCidrBlocks << ipv6subnetcidrblock_tmp
            end
          end
          @EcmRegion = params['EcmRegion']
        end
      end

      # UnassignIpv6SubnetCidrBlock返回参数结构体
      class UnassignIpv6SubnetCidrBlockResponse < TencentCloud::Common::AbstractModel
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

      # 私有网络相关信息配置。
      class VirtualPrivateCloud < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID，形如vpc-xxx。
        # @type VpcId: String
        # @param SubnetId: 私有网络子网ID，形如subnet-xxx。
        # @type SubnetId: String
        # @param AsVpcGateway: 是否用作公网网关。公网网关只有在实例拥有公网IP以及处于私有网络下时才能正常使用。取值范围：
        # TRUE：表示用作公网网关
        # FALSE：表示不用作公网网关

        # 默认取值：FALSE。
        # @type AsVpcGateway: Boolean
        # @param PrivateIpAddresses: 私有网络子网 IP 数组，在创建实例、修改实例vpc属性操作中可使用此参数。
        # @type PrivateIpAddresses: Array
        # @param Ipv6AddressCount: 为弹性网卡指定随机生成的 IPv6 地址数量。
        # @type Ipv6AddressCount: Integer

        attr_accessor :VpcId, :SubnetId, :AsVpcGateway, :PrivateIpAddresses, :Ipv6AddressCount

        def initialize(vpcid=nil, subnetid=nil, asvpcgateway=nil, privateipaddresses=nil, ipv6addresscount=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @AsVpcGateway = asvpcgateway
          @PrivateIpAddresses = privateipaddresses
          @Ipv6AddressCount = ipv6addresscount
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @AsVpcGateway = params['AsVpcGateway']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @Ipv6AddressCount = params['Ipv6AddressCount']
        end
      end

      # 私有网络(VPC) 对象。
      class VpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcName: VPC名称。
        # @type VpcName: String
        # @param VpcId: VPC实例ID，例如：vpc-azd4dt1c。
        # @type VpcId: String
        # @param CidrBlock: VPC的IPv4 CIDR。
        # @type CidrBlock: String
        # @param IsDefault: 是否默认VPC。
        # @type IsDefault: Boolean
        # @param EnableMulticast: 是否开启组播。
        # @type EnableMulticast: Boolean
        # @param CreatedTime: 创建时间。
        # @type CreatedTime: String
        # @param DnsServerSet: DNS列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsServerSet: Array
        # @param DomainName: DHCP域名选项值。
        # @type DomainName: String
        # @param DhcpOptionsId: DHCP选项集ID。
        # @type DhcpOptionsId: String
        # @param EnableDhcp: 是否开启DHCP。
        # @type EnableDhcp: Boolean
        # @param Ipv6CidrBlock: VPC的IPv6 CIDR。
        # @type Ipv6CidrBlock: String
        # @param TagSet: 标签键值对
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param AssistantCidrSet: 辅助CIDR
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssistantCidrSet: Array
        # @param Region: 地域
        # @type Region: String
        # @param Description: 描述
        # @type Description: String
        # @param RegionName: 地域中文名
        # @type RegionName: String
        # @param SubnetCount: 包含子网数量
        # @type SubnetCount: Integer
        # @param InstanceCount: 包含实例数量
        # @type InstanceCount: Integer
        # @param Ipv6ISP: ipv6运营商
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6ISP: String
        # @param Ipv6CidrBlockSet: 多运营商IPv6 Cidr Block。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6CidrBlockSet: Array

        attr_accessor :VpcName, :VpcId, :CidrBlock, :IsDefault, :EnableMulticast, :CreatedTime, :DnsServerSet, :DomainName, :DhcpOptionsId, :EnableDhcp, :Ipv6CidrBlock, :TagSet, :AssistantCidrSet, :Region, :Description, :RegionName, :SubnetCount, :InstanceCount, :Ipv6ISP, :Ipv6CidrBlockSet

        def initialize(vpcname=nil, vpcid=nil, cidrblock=nil, isdefault=nil, enablemulticast=nil, createdtime=nil, dnsserverset=nil, domainname=nil, dhcpoptionsid=nil, enabledhcp=nil, ipv6cidrblock=nil, tagset=nil, assistantcidrset=nil, region=nil, description=nil, regionname=nil, subnetcount=nil, instancecount=nil, ipv6isp=nil, ipv6cidrblockset=nil)
          @VpcName = vpcname
          @VpcId = vpcid
          @CidrBlock = cidrblock
          @IsDefault = isdefault
          @EnableMulticast = enablemulticast
          @CreatedTime = createdtime
          @DnsServerSet = dnsserverset
          @DomainName = domainname
          @DhcpOptionsId = dhcpoptionsid
          @EnableDhcp = enabledhcp
          @Ipv6CidrBlock = ipv6cidrblock
          @TagSet = tagset
          @AssistantCidrSet = assistantcidrset
          @Region = region
          @Description = description
          @RegionName = regionname
          @SubnetCount = subnetcount
          @InstanceCount = instancecount
          @Ipv6ISP = ipv6isp
          @Ipv6CidrBlockSet = ipv6cidrblockset
        end

        def deserialize(params)
          @VpcName = params['VpcName']
          @VpcId = params['VpcId']
          @CidrBlock = params['CidrBlock']
          @IsDefault = params['IsDefault']
          @EnableMulticast = params['EnableMulticast']
          @CreatedTime = params['CreatedTime']
          @DnsServerSet = params['DnsServerSet']
          @DomainName = params['DomainName']
          @DhcpOptionsId = params['DhcpOptionsId']
          @EnableDhcp = params['EnableDhcp']
          @Ipv6CidrBlock = params['Ipv6CidrBlock']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          unless params['AssistantCidrSet'].nil?
            @AssistantCidrSet = []
            params['AssistantCidrSet'].each do |i|
              assistantcidr_tmp = AssistantCidr.new
              assistantcidr_tmp.deserialize(i)
              @AssistantCidrSet << assistantcidr_tmp
            end
          end
          @Region = params['Region']
          @Description = params['Description']
          @RegionName = params['RegionName']
          @SubnetCount = params['SubnetCount']
          @InstanceCount = params['InstanceCount']
          @Ipv6ISP = params['Ipv6ISP']
          unless params['Ipv6CidrBlockSet'].nil?
            @Ipv6CidrBlockSet = []
            params['Ipv6CidrBlockSet'].each do |i|
              ispipv6cidrblock_tmp = ISPIPv6CidrBlock.new
              ispipv6cidrblock_tmp.deserialize(i)
              @Ipv6CidrBlockSet << ispipv6cidrblock_tmp
            end
          end
        end
      end

      # Zone信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: ZoneId
        # @type ZoneId: Integer
        # @param ZoneName: ZoneName
        # @type ZoneName: String
        # @param Zone: Zone
        # @type Zone: String

        attr_accessor :ZoneId, :ZoneName, :Zone

        def initialize(zoneid=nil, zonename=nil, zone=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @Zone = zone
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @Zone = params['Zone']
        end
      end

      # 实例可用区及对应的实例创建数目及运营商的组合；
      class ZoneInstanceCountISP < TencentCloud::Common::AbstractModel
        # @param Zone: 创建实例的可用区。
        # @type Zone: String
        # @param InstanceCount: 在当前可用区创建的实例数目。
        # @type InstanceCount: Integer
        # @param ISP: 运营商如下：
        # CTCC：中国电信
        # CUCC：中国联通
        # CMCC：中国移动
        # CMCC;CUCC;CTCC：三网；三网需要开通白名单，请直接联系腾讯云客服。
        # @type ISP: String
        # @param VpcId: 指定私有网络编号，SubnetId与VpcId必须同时指定或不指定
        # @type VpcId: String
        # @param SubnetId: 指定子网编号，SubnetId与VpcId必须同时指定或不指定
        # @type SubnetId: String
        # @param PrivateIpAddresses: 指定主网卡内网IP。条件：SubnetId与VpcId必须同时指定，并且IP数量与InstanceCount相同，多IP主机副网卡内网IP在相同子网内通过DHCP获取。
        # @type PrivateIpAddresses: Array
        # @param Ipv6AddressCount: 为弹性网卡指定随机生成的IPv6地址数量，单网情况下是1，单网需要ISP 只能为单网运营商，三网情况3
        # @type Ipv6AddressCount: Integer
        # @param Ipv6SubnetIds: 指定创建三网ipv6地址，使用的subnet数组，只创建ipv4不创建ipv6和单网ipv6子网依然使用SubnetId字段；
        # 该数组必须且仅支持传入三个不同的子网，并且这三个子网各自分配了电信、联通、移动三个运营商的其中一个IPV6 CIDR网段
        # @type Ipv6SubnetIds: Array

        attr_accessor :Zone, :InstanceCount, :ISP, :VpcId, :SubnetId, :PrivateIpAddresses, :Ipv6AddressCount, :Ipv6SubnetIds

        def initialize(zone=nil, instancecount=nil, isp=nil, vpcid=nil, subnetid=nil, privateipaddresses=nil, ipv6addresscount=nil, ipv6subnetids=nil)
          @Zone = zone
          @InstanceCount = instancecount
          @ISP = isp
          @VpcId = vpcid
          @SubnetId = subnetid
          @PrivateIpAddresses = privateipaddresses
          @Ipv6AddressCount = ipv6addresscount
          @Ipv6SubnetIds = ipv6subnetids
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceCount = params['InstanceCount']
          @ISP = params['ISP']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @Ipv6AddressCount = params['Ipv6AddressCount']
          @Ipv6SubnetIds = params['Ipv6SubnetIds']
        end
      end

      # Zone的实例信息
      class ZoneInstanceInfo < TencentCloud::Common::AbstractModel
        # @param ZoneName: Zone名称
        # @type ZoneName: String
        # @param InstanceNum: 实例数量
        # @type InstanceNum: Integer

        attr_accessor :ZoneName, :InstanceNum

        def initialize(zonename=nil, instancenum=nil)
          @ZoneName = zonename
          @InstanceNum = instancenum
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
          @InstanceNum = params['InstanceNum']
        end
      end

    end
  end
end

