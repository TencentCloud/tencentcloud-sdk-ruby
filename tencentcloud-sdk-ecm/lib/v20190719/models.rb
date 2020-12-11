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

        attr_accessor :AddressId, :AddressName, :AddressStatus, :AddressIp, :InstanceId, :CreatedTime, :NetworkInterfaceId, :PrivateAddressIp, :IsArrears, :IsBlocked, :IsEipDirectConnection, :AddressType, :CascadeRelease, :InternetServiceProvider
        
        def initialize(addressid=nil, addressname=nil, addressstatus=nil, addressip=nil, instanceid=nil, createdtime=nil, networkinterfaceid=nil, privateaddressip=nil, isarrears=nil, isblocked=nil, iseipdirectconnection=nil, addresstype=nil, cascaderelease=nil, internetserviceprovider=nil)
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

        attr_accessor :EcmRegion, :AddressCount, :InternetServiceProvider, :InternetMaxBandwidthOut, :Tags
        
        def initialize(ecmregion=nil, addresscount=nil, internetserviceprovider=nil, internetmaxbandwidthout=nil, tags=nil)
          @EcmRegion = ecmregion
          @AddressCount = addresscount
          @InternetServiceProvider = internetserviceprovider
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @Tags = tags
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @AddressCount = params['AddressCount']
          @InternetServiceProvider = params['InternetServiceProvider']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @Tags = params['Tags']
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

      # AssignPrivateIpAddresses请求参数结构体
      class AssignPrivateIpAddressesRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param EcmRegion: ECM 地域
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
          @PrivateIpAddresses = params['PrivateIpAddresses']
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
          @PrivateIpAddressSet = params['PrivateIpAddressSet']
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
          @SubnetSet = params['SubnetSet']
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

      # AttachNetworkInterface请求参数结构体
      class AttachNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param InstanceId: 实例ID。形如：ein-r8hr2upy。
        # @type InstanceId: String
        # @param EcmRegion: ECM 地域
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

      # CreateModule请求参数结构体
      class CreateModuleRequest < TencentCloud::Common::AbstractModel
        # @param ModuleName: 模块名称，如视频直播模块。限制：模块名称不得以空格开头，长度不得超过60个字符。
        # @type ModuleName: String
        # @param DefaultBandWidth: 默认带宽，单位：M。范围不得超过带宽上下限，详看DescribeConfig。
        # @type DefaultBandWidth: Integer
        # @param DefaultImageId: 默认镜像，如img-qsdf3ff2。
        # @type DefaultImageId: String
        # @param InstanceType: 机型ID。
        # @type InstanceType: String
        # @param DefaultSystemDiskSize: 默认系统盘大小，单位：G，默认大小为50G。范围不得超过系统盘上下限制，详看DescribeConfig。
        # @type DefaultSystemDiskSize: Integer
        # @param DefaultDataDiskSize: 默认数据盘大小，单位：G。范围不得超过数据盘范围大小，详看DescribeConfig。
        # @type DefaultDataDiskSize: Integer

        attr_accessor :ModuleName, :DefaultBandWidth, :DefaultImageId, :InstanceType, :DefaultSystemDiskSize, :DefaultDataDiskSize
        
        def initialize(modulename=nil, defaultbandwidth=nil, defaultimageid=nil, instancetype=nil, defaultsystemdisksize=nil, defaultdatadisksize=nil)
          @ModuleName = modulename
          @DefaultBandWidth = defaultbandwidth
          @DefaultImageId = defaultimageid
          @InstanceType = instancetype
          @DefaultSystemDiskSize = defaultsystemdisksize
          @DefaultDataDiskSize = defaultdatadisksize
        end

        def deserialize(params)
          @ModuleName = params['ModuleName']
          @DefaultBandWidth = params['DefaultBandWidth']
          @DefaultImageId = params['DefaultImageId']
          @InstanceType = params['InstanceType']
          @DefaultSystemDiskSize = params['DefaultSystemDiskSize']
          @DefaultDataDiskSize = params['DefaultDataDiskSize']
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
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param NetworkInterfaceDescription: 弹性网卡描述，可任意命名，但不得超过60个字符。
        # @type NetworkInterfaceDescription: String
        # @param SecondaryPrivateIpAddressCount: 新申请的内网IP地址个数，内网IP地址个数总和不能超过配数。
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
          @PrivateIpAddresses = params['PrivateIpAddresses']
          @Tags = params['Tags']
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
            @NetworkInterface = NetworkInterface.new.deserialize(params[NetworkInterface])
          end
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
          @Tags = params['Tags']
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
            @SecurityGroup = SecurityGroup.new.deserialize(params[SecurityGroup])
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

        attr_accessor :VpcId, :SubnetName, :CidrBlock, :Zone, :EcmRegion, :Tags
        
        def initialize(vpcid=nil, subnetname=nil, cidrblock=nil, zone=nil, ecmregion=nil, tags=nil)
          @VpcId = vpcid
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @Zone = zone
          @EcmRegion = ecmregion
          @Tags = tags
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @Zone = params['Zone']
          @EcmRegion = params['EcmRegion']
          @Tags = params['Tags']
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
            @Subnet = Subnet.new.deserialize(params[Subnet])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateVpc请求参数结构体
      class CreateVpcRequest < TencentCloud::Common::AbstractModel
        # @param VpcName: vpc名称，最大长度不能超过60个字节。
        # @type VpcName: String
        # @param CidrBlock: vpc的cidr，只能为10.0.0.0/16，172.16.0.0/16，192.168.0.0/16这三个内网网段内。
        # @type CidrBlock: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param EnableMulticast: 是否开启组播。true: 开启, false: 不开启。
        # @type EnableMulticast: String
        # @param DnsServers: DNS地址，最多支持4个
        # @type DnsServers: Array
        # @param DomainName: 域名
        # @type DomainName: String
        # @param Tags: 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        # @type Tags: Array

        attr_accessor :VpcName, :CidrBlock, :EcmRegion, :EnableMulticast, :DnsServers, :DomainName, :Tags
        
        def initialize(vpcname=nil, cidrblock=nil, ecmregion=nil, enablemulticast=nil, dnsservers=nil, domainname=nil, tags=nil)
          @VpcName = vpcname
          @CidrBlock = cidrblock
          @EcmRegion = ecmregion
          @EnableMulticast = enablemulticast
          @DnsServers = dnsservers
          @DomainName = domainname
          @Tags = tags
        end

        def deserialize(params)
          @VpcName = params['VpcName']
          @CidrBlock = params['CidrBlock']
          @EcmRegion = params['EcmRegion']
          @EnableMulticast = params['EnableMulticast']
          @DnsServers = params['DnsServers']
          @DomainName = params['DomainName']
          @Tags = params['Tags']
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
            @Vpc = VpcInfo.new.deserialize(params[Vpc])
          end
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
        # @param EcmRegion: ECM 地域
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
          @QuotaSet = params['QuotaSet']
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
          @Filters = params['Filters']
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
          @AddressSet = params['AddressSet']
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
        # @param ImageWhiteSet: 镜像操作系统白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageWhiteSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NetworkStorageRange, :ImageWhiteSet, :RequestId
        
        def initialize(networkstoragerange=nil, imagewhiteset=nil, requestid=nil)
          @NetworkStorageRange = networkstoragerange
          @ImageWhiteSet = imagewhiteset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NetworkStorageRange'].nil?
            @NetworkStorageRange = NetworkStorageRange.new.deserialize(params[NetworkStorageRange])
          end
          @ImageWhiteSet = params['ImageWhiteSet']
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
          @Filters = params['Filters']
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
          @ImageTaskSet = params['ImageTaskSet']
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
            @Subnet = Subnet.new.deserialize(params[Subnet])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImage请求参数结构体
      class DescribeImageRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，每次请求的Filters的上限为10，详细的过滤条件如下：
        # image-id - String - 是否必填： 否 - （过滤条件）按照镜像ID进行过滤
        # image-type - String - 是否必填： 否 - （过滤条件）按照镜像类型进行过滤。取值范围：
        # PRIVATE_IMAGE: 私有镜像 (本帐户创建的镜像)
        # PUBLIC_IMAGE: 公共镜像 (腾讯云官方镜像)
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
          @Filters = params['Filters']
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
          @ImageSet = params['ImageSet']
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
            @ImportImageOsListSupported = ImageOsList.new.deserialize(params[ImportImageOsListSupported])
          end
          @ImportImageOsVersionSet = params['ImportImageOsVersionSet']
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
          @InstanceTypeConfigSet = params['InstanceTypeConfigSet']
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
          @InstanceOperatorSet = params['InstanceOperatorSet']
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
          @Filters = params['Filters']
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
          @InstanceSet = params['InstanceSet']
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
        
        def initialize(module=nil, modulecounter=nil, requestid=nil)
          @Module = module
          @ModuleCounter = modulecounter
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Module'].nil?
            @Module = Module.new.deserialize(params[Module])
          end
          unless params['ModuleCounter'].nil?
            @ModuleCounter = ModuleCounter.new.deserialize(params[ModuleCounter])
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
          @Filters = params['Filters']
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
          @ModuleItemSet = params['ModuleItemSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNetworkInterfaces请求参数结构体
      class DescribeNetworkInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param NetworkInterfaceIds: 弹性网卡实例ID查询。形如：eni-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定NetworkInterfaceIds和Filters。
        # @type NetworkInterfaceIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定NetworkInterfaceIds和Filters。
        # vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        # subnet-id - String - （过滤条件）所属子网实例ID，形如：subnet-f49l6u0z。
        # network-interface-id - String - （过滤条件）弹性网卡实例ID，形如：eni-5k56k7k7。
        # attachment.instance-id - String - （过滤条件）绑定的云服务器实例ID，形如：ins-3nqpdn3i。
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

        attr_accessor :EcmRegion, :NetworkInterfaceIds, :Filters, :Offset, :Limit
        
        def initialize(ecmregion=nil, networkinterfaceids=nil, filters=nil, offset=nil, limit=nil)
          @EcmRegion = ecmregion
          @NetworkInterfaceIds = networkinterfaceids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @NetworkInterfaceIds = params['NetworkInterfaceIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
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
          @NetworkInterfaceSet = params['NetworkInterfaceSet']
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
          @Filters = params['Filters']
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
          @NodeSet = params['NodeSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePeakBaseOverview请求参数结构体
      class DescribePeakBaseOverviewRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间（xxxx-xx-xx）如2019-08-14，默认为一周之前的日期。
        # @type StartTime: String
        # @param EndTime: 结束时间（xxxx-xx-xx）如2019-08-14，默认为昨天。
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
          @PeakFamilyInfoSet = params['PeakFamilyInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribePeakNetworkOverview请求参数结构体
      class DescribePeakNetworkOverviewRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间（xxxx-xx-xx）如2019-08-14，默认为一周之前的日期。
        # @type StartTime: String
        # @param EndTime: 结束时间（xxxx-xx-xx）如2019-08-14，默认为昨天。
        # @type EndTime: String
        # @param Filters: 过滤条件。
        # region    String      是否必填：否     （过滤条件）按照region过滤,不支持模糊匹配。
        # @type Filters: Array

        attr_accessor :StartTime, :EndTime, :Filters
        
        def initialize(starttime=nil, endtime=nil, filters=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Filters = filters
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Filters = params['Filters']
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
          @PeakNetworkRegionSet = params['PeakNetworkRegionSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubnets请求参数结构体
      class DescribeSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param SubnetIds: 子网实例ID查询。形如：subnet-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定SubnetIds和Filters。
        # @type SubnetIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定SubnetIds和Filters。
        # subnet-id - String - （过滤条件）Subnet实例名称。
        # vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        # cidr-block - String - （过滤条件）子网网段，形如: 192.168.1.0 。
        # is-default - Boolean - （过滤条件）是否是默认子网。
        # is-remote-vpc-snat - Boolean - （过滤条件）是否为VPC SNAT地址池子网。
        # subnet-name - String - （过滤条件）子网名称。
        # zone - String - （过滤条件）可用区。
        # tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。
        # tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: String
        # @param Limit: 返回数量
        # @type Limit: String

        attr_accessor :EcmRegion, :SubnetIds, :Filters, :Offset, :Limit
        
        def initialize(ecmregion=nil, subnetids=nil, filters=nil, offset=nil, limit=nil)
          @EcmRegion = ecmregion
          @SubnetIds = subnetids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @SubnetIds = params['SubnetIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
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
          @SubnetSet = params['SubnetSet']
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

      # DescribeVpcs请求参数结构体
      class DescribeVpcsRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: 地域
        # @type EcmRegion: String
        # @param VpcIds: VPC实例ID。形如：vpc-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpcIds和Filters。
        # @type VpcIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定VpcIds和Filters。
        # vpc-name - String - （过滤条件）VPC实例名称。
        # is-default - String - （过滤条件）是否默认VPC。
        # vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。
        # cidr-block - String - （过滤条件）vpc的cidr。
        # tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。
        # tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer

        attr_accessor :EcmRegion, :VpcIds, :Filters, :Offset, :Limit
        
        def initialize(ecmregion=nil, vpcids=nil, filters=nil, offset=nil, limit=nil)
          @EcmRegion = ecmregion
          @VpcIds = vpcids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @EcmRegion = params['EcmRegion']
          @VpcIds = params['VpcIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
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
          @VpcSet = params['VpcSet']
          @RequestId = params['RequestId']
        end
      end

      # DetachNetworkInterface请求参数结构体
      class DetachNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param NetworkInterfaceId: 弹性网卡实例ID，例如：eni-m6dyj72l。
        # @type NetworkInterfaceId: String
        # @param InstanceId: 实例ID。形如：ein-hcs7jkg4
        # @type InstanceId: String
        # @param EcmRegion: ECM 地域
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

      # 磁盘信息
      class DiskInfo < TencentCloud::Common::AbstractModel
        # @param DiskType: 磁盘类型：LOCAL_BASIC
        # @type DiskType: String
        # @param DiskId: 磁盘ID
        # @type DiskId: String
        # @param DiskSize: 磁盘大小（GB）
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

      # 增强服务
      class EnhancedService < TencentCloud::Common::AbstractModel
        # @param SecurityService: 是否开启云镜服务。
        # @type SecurityService: :class:`Tencentcloud::Ecm.v20190719.models.RunSecurityServiceEnabled`
        # @param MonitorService: 是否开启云监控服务。
        # @type MonitorService: :class:`Tencentcloud::Ecm.v20190719.models.RunMonitorServiceEnabled`

        attr_accessor :SecurityService, :MonitorService
        
        def initialize(securityservice=nil, monitorservice=nil)
          @SecurityService = securityservice
          @MonitorService = monitorservice
        end

        def deserialize(params)
          unless params['SecurityService'].nil?
            @SecurityService = RunSecurityServiceEnabled.new.deserialize(params[SecurityService])
          end
          unless params['MonitorService'].nil?
            @MonitorService = RunMonitorServiceEnabled.new.deserialize(params[MonitorService])
          end
        end
      end

      # 过滤器Filter;由Name和ValueSet组成，是string的key和字符串数组的value
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤字段名称
        # @type Name: String
        # @param Values: 过滤字段内容数组
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

        attr_accessor :ProviderName, :ProviderNodeNum, :ProvederInstanceNum, :ZoneInstanceInfoSet
        
        def initialize(providername=nil, providernodenum=nil, provederinstancenum=nil, zoneinstanceinfoset=nil)
          @ProviderName = providername
          @ProviderNodeNum = providernodenum
          @ProvederInstanceNum = provederinstancenum
          @ZoneInstanceInfoSet = zoneinstanceinfoset
        end

        def deserialize(params)
          @ProviderName = params['ProviderName']
          @ProviderNodeNum = params['ProviderNodeNum']
          @ProvederInstanceNum = params['ProvederInstanceNum']
          @ZoneInstanceInfoSet = params['ZoneInstanceInfoSet']
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

        attr_accessor :ImageId, :ImageName, :ImageState, :ImageType, :ImageOsName, :ImageDescription, :ImageCreateTime, :Architecture, :OsType, :OsVersion, :Platform, :ImageOwner, :ImageSize, :SrcImage
        
        def initialize(imageid=nil, imagename=nil, imagestate=nil, imagetype=nil, imageosname=nil, imagedescription=nil, imagecreatetime=nil, architecture=nil, ostype=nil, osversion=nil, platform=nil, imageowner=nil, imagesize=nil, srcimage=nil)
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
            @SrcImage = SrcImage.new.deserialize(params[SrcImage])
          end
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
        # @param ImageUrls: 镜像描述，多层镜像按顺序传入
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
          @ImageUrls = params['ImageUrls']
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

        attr_accessor :InstanceId, :InstanceName, :InstanceState, :Image, :SimpleModule, :Position, :Internet, :InstanceTypeConfig, :CreateTime, :TagSet, :LatestOperation, :LatestOperationState, :RestrictState, :SystemDiskSize, :DataDiskSize, :UUID, :PayMode, :ExpireTime, :IsolatedTime, :RenewFlag, :ExpireState, :SystemDisk, :DataDisks, :NewFlag, :SecurityGroupIds
        
        def initialize(instanceid=nil, instancename=nil, instancestate=nil, image=nil, simplemodule=nil, position=nil, internet=nil, instancetypeconfig=nil, createtime=nil, tagset=nil, latestoperation=nil, latestoperationstate=nil, restrictstate=nil, systemdisksize=nil, datadisksize=nil, uuid=nil, paymode=nil, expiretime=nil, isolatedtime=nil, renewflag=nil, expirestate=nil, systemdisk=nil, datadisks=nil, newflag=nil, securitygroupids=nil)
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
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @InstanceState = params['InstanceState']
          unless params['Image'].nil?
            @Image = Image.new.deserialize(params[Image])
          end
          unless params['SimpleModule'].nil?
            @SimpleModule = SimpleModule.new.deserialize(params[SimpleModule])
          end
          unless params['Position'].nil?
            @Position = Position.new.deserialize(params[Position])
          end
          unless params['Internet'].nil?
            @Internet = Internet.new.deserialize(params[Internet])
          end
          unless params['InstanceTypeConfig'].nil?
            @InstanceTypeConfig = InstanceTypeConfig.new.deserialize(params[InstanceTypeConfig])
          end
          @CreateTime = params['CreateTime']
          @TagSet = params['TagSet']
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
            @SystemDisk = DiskInfo.new.deserialize(params[SystemDisk])
          end
          @DataDisks = params['DataDisks']
          @NewFlag = params['NewFlag']
          @SecurityGroupIds = params['SecurityGroupIds']
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
          @DeniedActions = params['DeniedActions']
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
        # @param ExtInfo: 机型额外信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtInfo: String

        attr_accessor :InstanceFamilyConfig, :InstanceType, :Vcpu, :Memory, :Frequency, :CpuModelName, :InstanceFamilyTypeConfig, :ExtInfo
        
        def initialize(instancefamilyconfig=nil, instancetype=nil, vcpu=nil, memory=nil, frequency=nil, cpumodelname=nil, instancefamilytypeconfig=nil, extinfo=nil)
          @InstanceFamilyConfig = instancefamilyconfig
          @InstanceType = instancetype
          @Vcpu = vcpu
          @Memory = memory
          @Frequency = frequency
          @CpuModelName = cpumodelname
          @InstanceFamilyTypeConfig = instancefamilytypeconfig
          @ExtInfo = extinfo
        end

        def deserialize(params)
          unless params['InstanceFamilyConfig'].nil?
            @InstanceFamilyConfig = InstanceFamilyConfig.new.deserialize(params[InstanceFamilyConfig])
          end
          @InstanceType = params['InstanceType']
          @Vcpu = params['Vcpu']
          @Memory = params['Memory']
          @Frequency = params['Frequency']
          @CpuModelName = params['CpuModelName']
          unless params['InstanceFamilyTypeConfig'].nil?
            @InstanceFamilyTypeConfig = InstanceFamilyTypeConfig.new.deserialize(params[InstanceFamilyTypeConfig])
          end
          @ExtInfo = params['ExtInfo']
        end
      end

      # 实例的网络相关信息。
      class Internet < TencentCloud::Common::AbstractModel
        # @param PrivateIPAddressSet: 实例的内网相关信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateIPAddressSet: Array
        # @param PublicIPAddressSet: 实例的公网相关信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicIPAddressSet: Array

        attr_accessor :PrivateIPAddressSet, :PublicIPAddressSet
        
        def initialize(privateipaddressset=nil, publicipaddressset=nil)
          @PrivateIPAddressSet = privateipaddressset
          @PublicIPAddressSet = publicipaddressset
        end

        def deserialize(params)
          @PrivateIPAddressSet = params['PrivateIPAddressSet']
          @PublicIPAddressSet = params['PublicIPAddressSet']
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

      # MigrateNetworkInterface请求参数结构体
      class MigrateNetworkInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域
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
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param SourceNetworkInterfaceId: 当内网IP绑定的弹性网卡实例ID，例如：eni-11112222。
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

      # ModifyInstancesAttribute请求参数结构体
      class ModifyInstancesAttributeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 待修改的实例ID列表。在单次请求的过程中，请求实例数上限为100。
        # @type InstanceIdSet: Array
        # @param InstanceName: 修改成功后显示的实例名称，不得超过60个字符，不传则名称显示为空。
        # @type InstanceName: String

        attr_accessor :InstanceIdSet, :InstanceName
        
        def initialize(instanceidset=nil, instancename=nil)
          @InstanceIdSet = instanceidset
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
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
        # @param DefaultBandwidth: 默认带宽上限
        # @type DefaultBandwidth: Integer

        attr_accessor :ModuleId, :DefaultBandwidth
        
        def initialize(moduleid=nil, defaultbandwidth=nil)
          @ModuleId = moduleid
          @DefaultBandwidth = defaultbandwidth
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @DefaultBandwidth = params['DefaultBandwidth']
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

        attr_accessor :SubnetId, :EcmRegion, :SubnetName, :EnableBroadcast
        
        def initialize(subnetid=nil, ecmregion=nil, subnetname=nil, enablebroadcast=nil)
          @SubnetId = subnetid
          @EcmRegion = ecmregion
          @SubnetName = subnetname
          @EnableBroadcast = enablebroadcast
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @EcmRegion = params['EcmRegion']
          @SubnetName = params['SubnetName']
          @EnableBroadcast = params['EnableBroadcast']
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

      # ModifyVpcAttribute请求参数结构体
      class ModifyVpcAttributeRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。形如：vpc-f49l6u0z。
        # @type VpcId: String
        # @param EcmRegion: ECM 地域
        # @type EcmRegion: String
        # @param VpcName: 私有网络名称，可任意命名，但不得超过60个字符。
        # @type VpcName: String

        attr_accessor :VpcId, :EcmRegion, :VpcName
        
        def initialize(vpcid=nil, ecmregion=nil, vpcname=nil)
          @VpcId = vpcid
          @EcmRegion = ecmregion
          @VpcName = vpcname
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @EcmRegion = params['EcmRegion']
          @VpcName = params['VpcName']
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
        # @param ModuleId: 模块Id
        # @type ModuleId: String
        # @param ModuleName: 模块名称
        # @type ModuleName: String
        # @param ModuleState: 模块状态：
        # NORMAL：正常
        # DELETING：删除中
        # DELETEFAILED：删除失败
        # @type ModuleState: String
        # @param DefaultSystemDiskSize: 默认系统盘大小
        # @type DefaultSystemDiskSize: Integer
        # @param DefaultDataDiskSize: 默认数据盘大小
        # @type DefaultDataDiskSize: Integer
        # @param InstanceTypeConfig: 默认机型
        # @type InstanceTypeConfig: :class:`Tencentcloud::Ecm.v20190719.models.InstanceTypeConfig`
        # @param DefaultImage: 默认镜像
        # @type DefaultImage: :class:`Tencentcloud::Ecm.v20190719.models.Image`
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param DefaultBandwidth: 默认带宽
        # @type DefaultBandwidth: Integer

        attr_accessor :ModuleId, :ModuleName, :ModuleState, :DefaultSystemDiskSize, :DefaultDataDiskSize, :InstanceTypeConfig, :DefaultImage, :CreateTime, :DefaultBandwidth
        
        def initialize(moduleid=nil, modulename=nil, modulestate=nil, defaultsystemdisksize=nil, defaultdatadisksize=nil, instancetypeconfig=nil, defaultimage=nil, createtime=nil, defaultbandwidth=nil)
          @ModuleId = moduleid
          @ModuleName = modulename
          @ModuleState = modulestate
          @DefaultSystemDiskSize = defaultsystemdisksize
          @DefaultDataDiskSize = defaultdatadisksize
          @InstanceTypeConfig = instancetypeconfig
          @DefaultImage = defaultimage
          @CreateTime = createtime
          @DefaultBandwidth = defaultbandwidth
        end

        def deserialize(params)
          @ModuleId = params['ModuleId']
          @ModuleName = params['ModuleName']
          @ModuleState = params['ModuleState']
          @DefaultSystemDiskSize = params['DefaultSystemDiskSize']
          @DefaultDataDiskSize = params['DefaultDataDiskSize']
          unless params['InstanceTypeConfig'].nil?
            @InstanceTypeConfig = InstanceTypeConfig.new.deserialize(params[InstanceTypeConfig])
          end
          unless params['DefaultImage'].nil?
            @DefaultImage = Image.new.deserialize(params[DefaultImage])
          end
          @CreateTime = params['CreateTime']
          @DefaultBandwidth = params['DefaultBandwidth']
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
          @ISPCounterSet = params['ISPCounterSet']
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
        
        def initialize(nodeinstancenum=nil, module=nil)
          @NodeInstanceNum = nodeinstancenum
          @Module = module
        end

        def deserialize(params)
          unless params['NodeInstanceNum'].nil?
            @NodeInstanceNum = NodeInstanceNum.new.deserialize(params[NodeInstanceNum])
          end
          unless params['Module'].nil?
            @Module = Module.new.deserialize(params[Module])
          end
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

        attr_accessor :NetworkInterfaceId, :NetworkInterfaceName, :NetworkInterfaceDescription, :SubnetId, :VpcId, :GroupSet, :Primary, :MacAddress, :State, :PrivateIpAddressSet, :Attachment, :Zone, :CreatedTime, :Ipv6AddressSet, :TagSet, :EniType
        
        def initialize(networkinterfaceid=nil, networkinterfacename=nil, networkinterfacedescription=nil, subnetid=nil, vpcid=nil, groupset=nil, primary=nil, macaddress=nil, state=nil, privateipaddressset=nil, attachment=nil, zone=nil, createdtime=nil, ipv6addressset=nil, tagset=nil, enitype=nil)
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
          @PrivateIpAddressSet = params['PrivateIpAddressSet']
          unless params['Attachment'].nil?
            @Attachment = NetworkInterfaceAttachment.new.deserialize(params[Attachment])
          end
          @Zone = params['Zone']
          @CreatedTime = params['CreatedTime']
          @Ipv6AddressSet = params['Ipv6AddressSet']
          @TagSet = params['TagSet']
          @EniType = params['EniType']
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
        # @param ZoneInfo: zone信息
        # @type ZoneInfo: :class:`Tencentcloud::Ecm.v20190719.models.ZoneInfo`
        # @param Country: 国家信息
        # @type Country: :class:`Tencentcloud::Ecm.v20190719.models.Country`
        # @param Area: 区域信息
        # @type Area: :class:`Tencentcloud::Ecm.v20190719.models.Area`
        # @param Province: 省份信息
        # @type Province: :class:`Tencentcloud::Ecm.v20190719.models.Province`
        # @param City: 城市信息
        # @type City: :class:`Tencentcloud::Ecm.v20190719.models.City`
        # @param RegionInfo: Region信息
        # @type RegionInfo: :class:`Tencentcloud::Ecm.v20190719.models.RegionInfo`
        # @param ISPSet: 运营商列表
        # @type ISPSet: Array
        # @param ISPNum: 运营商数量
        # @type ISPNum: Integer

        attr_accessor :ZoneInfo, :Country, :Area, :Province, :City, :RegionInfo, :ISPSet, :ISPNum
        
        def initialize(zoneinfo=nil, country=nil, area=nil, province=nil, city=nil, regioninfo=nil, ispset=nil, ispnum=nil)
          @ZoneInfo = zoneinfo
          @Country = country
          @Area = area
          @Province = province
          @City = city
          @RegionInfo = regioninfo
          @ISPSet = ispset
          @ISPNum = ispnum
        end

        def deserialize(params)
          unless params['ZoneInfo'].nil?
            @ZoneInfo = ZoneInfo.new.deserialize(params[ZoneInfo])
          end
          unless params['Country'].nil?
            @Country = Country.new.deserialize(params[Country])
          end
          unless params['Area'].nil?
            @Area = Area.new.deserialize(params[Area])
          end
          unless params['Province'].nil?
            @Province = Province.new.deserialize(params[Province])
          end
          unless params['City'].nil?
            @City = City.new.deserialize(params[City])
          end
          unless params['RegionInfo'].nil?
            @RegionInfo = RegionInfo.new.deserialize(params[RegionInfo])
          end
          @ISPSet = params['ISPSet']
          @ISPNum = params['ISPNum']
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
            @InstanceFamily = InstanceFamilyTypeConfig.new.deserialize(params[InstanceFamily])
          end
          @PeakBaseSet = params['PeakBaseSet']
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

        attr_accessor :RecordTime, :PeakInNetwork, :PeakOutNetwork
        
        def initialize(recordtime=nil, peakinnetwork=nil, peakoutnetwork=nil)
          @RecordTime = recordtime
          @PeakInNetwork = peakinnetwork
          @PeakOutNetwork = peakoutnetwork
        end

        def deserialize(params)
          @RecordTime = params['RecordTime']
          @PeakInNetwork = params['PeakInNetwork']
          @PeakOutNetwork = params['PeakOutNetwork']
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
          @PeakNetworkSet = params['PeakNetworkSet']
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
            @ZoneInfo = ZoneInfo.new.deserialize(params[ZoneInfo])
          end
          unless params['Country'].nil?
            @Country = Country.new.deserialize(params[Country])
          end
          unless params['Area'].nil?
            @Area = Area.new.deserialize(params[Area])
          end
          unless params['Province'].nil?
            @Province = Province.new.deserialize(params[Province])
          end
          unless params['City'].nil?
            @City = City.new.deserialize(params[City])
          end
          unless params['RegionInfo'].nil?
            @RegionInfo = RegionInfo.new.deserialize(params[RegionInfo])
          end
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
        # @param MaxBandwidthOut: 实例的最大出带宽上限。
        # @type MaxBandwidthOut: Integer

        attr_accessor :ChargeMode, :PublicIPAddress, :ISP, :MaxBandwidthOut
        
        def initialize(chargemode=nil, publicipaddress=nil, isp=nil, maxbandwidthout=nil)
          @ChargeMode = chargemode
          @PublicIPAddress = publicipaddress
          @ISP = isp
          @MaxBandwidthOut = maxbandwidthout
        end

        def deserialize(params)
          @ChargeMode = params['ChargeMode']
          @PublicIPAddress = params['PublicIPAddress']
          unless params['ISP'].nil?
            @ISP = ISP.new.deserialize(params[ISP])
          end
          @MaxBandwidthOut = params['MaxBandwidthOut']
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

      # RemovePrivateIpAddresses请求参数结构体
      class RemovePrivateIpAddressesRequest < TencentCloud::Common::AbstractModel
        # @param EcmRegion: ECM 地域。
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
          @PrivateIpAddresses = params['PrivateIpAddresses']
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

      # ResetInstancesMaxBandwidth请求参数结构体
      class ResetInstancesMaxBandwidthRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 待重置带宽上限的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        # @type InstanceIdSet: Array
        # @param MaxBandwidthOut: 修改后的最大带宽上限。
        # @type MaxBandwidthOut: Integer

        attr_accessor :InstanceIdSet, :MaxBandwidthOut
        
        def initialize(instanceidset=nil, maxbandwidthout=nil)
          @InstanceIdSet = instanceidset
          @MaxBandwidthOut = maxbandwidthout
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @MaxBandwidthOut = params['MaxBandwidthOut']
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
        # @param EnhancedService: 是否开启云监控和云镜服务，未指定时默认开启。
        # @type EnhancedService: :class:`Tencentcloud::Ecm.v20190719.models.EnhancedService`
        # @param KeepData: 是否保留数据盘数据，取值"true"/"false"。默认为"true"
        # @type KeepData: String

        attr_accessor :InstanceIdSet, :ImageId, :Password, :EnhancedService, :KeepData
        
        def initialize(instanceidset=nil, imageid=nil, password=nil, enhancedservice=nil, keepdata=nil)
          @InstanceIdSet = instanceidset
          @ImageId = imageid
          @Password = password
          @EnhancedService = enhancedservice
          @KeepData = keepdata
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @ImageId = params['ImageId']
          @Password = params['Password']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new.deserialize(params[EnhancedService])
          end
          @KeepData = params['KeepData']
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

      # RunInstances请求参数结构体
      class RunInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneInstanceCountISPSet: 需要创建实例的可用区及创建数目及运营商的列表。在单次请求的过程中，单个region下的请求创建实例数上限为100
        # @type ZoneInstanceCountISPSet: Array
        # @param Password: 实例登录密码。不同操作系统类型密码复杂度限制不一样，具体如下：
        # Linux实例密码必须8到30位，至少包括两项[a-z]，[A-Z]、[0-9] 和 [( ) ` ~ ! @ # $ % ^ & - + = | { } [ ] : ; ' , . ? / ]中的特殊符。Windows实例密码必须12到30位，至少包括三项[a-z]，[A-Z]，[0-9] 和 [( ) ` ~ ! @ # $ % ^ & - + = | { } [ ] : ; ' , . ? /]中的特殊符号。
        # @type Password: String
        # @param InternetMaxBandwidthOut: 公网出带宽上限，单位：Mbps。如果未传该参数或者传的值为0，则使用模块下的默认值
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
        # @param EnhancedService: 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认公共镜像开启云监控、云安全服务
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

        attr_accessor :ZoneInstanceCountISPSet, :Password, :InternetMaxBandwidthOut, :ModuleId, :ImageId, :InstanceName, :HostName, :ClientToken, :EnhancedService, :TagSpecification, :UserData, :InstanceType, :DataDiskSize, :SecurityGroupIds
        
        def initialize(zoneinstancecountispset=nil, password=nil, internetmaxbandwidthout=nil, moduleid=nil, imageid=nil, instancename=nil, hostname=nil, clienttoken=nil, enhancedservice=nil, tagspecification=nil, userdata=nil, instancetype=nil, datadisksize=nil, securitygroupids=nil)
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
        end

        def deserialize(params)
          @ZoneInstanceCountISPSet = params['ZoneInstanceCountISPSet']
          @Password = params['Password']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @ModuleId = params['ModuleId']
          @ImageId = params['ImageId']
          @InstanceName = params['InstanceName']
          @HostName = params['HostName']
          @ClientToken = params['ClientToken']
          unless params['EnhancedService'].nil?
            @EnhancedService = EnhancedService.new.deserialize(params[EnhancedService])
          end
          @TagSpecification = params['TagSpecification']
          @UserData = params['UserData']
          @InstanceType = params['InstanceType']
          @DataDiskSize = params['DataDiskSize']
          @SecurityGroupIds = params['SecurityGroupIds']
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
          @TagSet = params['TagSet']
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

        attr_accessor :ImageId, :ImageName, :ImageOsName, :ImageDescription, :Region, :RegionID, :RegionName
        
        def initialize(imageid=nil, imagename=nil, imageosname=nil, imagedescription=nil, region=nil, regionid=nil, regionname=nil)
          @ImageId = imageid
          @ImageName = imagename
          @ImageOsName = imageosname
          @ImageDescription = imagedescription
          @Region = region
          @RegionID = regionid
          @RegionName = regionname
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @ImageName = params['ImageName']
          @ImageOsName = params['ImageOsName']
          @ImageDescription = params['ImageDescription']
          @Region = params['Region']
          @RegionID = params['RegionID']
          @RegionName = params['RegionName']
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

        attr_accessor :VpcId, :SubnetId, :SubnetName, :CidrBlock, :IsDefault, :EnableBroadcast, :RouteTableId, :CreatedTime, :AvailableIpAddressCount, :Ipv6CidrBlock, :NetworkAclId, :IsRemoteVpcSnat, :TagSet, :Zone
        
        def initialize(vpcid=nil, subnetid=nil, subnetname=nil, cidrblock=nil, isdefault=nil, enablebroadcast=nil, routetableid=nil, createdtime=nil, availableipaddresscount=nil, ipv6cidrblock=nil, networkaclid=nil, isremotevpcsnat=nil, tagset=nil, zone=nil)
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
          @TagSet = params['TagSet']
          @Zone = params['Zone']
        end
      end

      # 标签信息。
      class Tag < TencentCloud::Common::AbstractModel
        # @param Key: 标签的键。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Key: String
        # @param Value: 标签的值。
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

      # TagSpecification
      class TagSpecification < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型，目前仅支持"instance"
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
          @Tags = params['Tags']
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

        attr_accessor :InstanceIdSet, :TerminateDelay, :TerminateTime
        
        def initialize(instanceidset=nil, terminatedelay=nil, terminatetime=nil)
          @InstanceIdSet = instanceidset
          @TerminateDelay = terminatedelay
          @TerminateTime = terminatetime
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @TerminateDelay = params['TerminateDelay']
          @TerminateTime = params['TerminateTime']
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

      # 私有网络(VPC)对象。
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssistantCidrSet: Array

        attr_accessor :VpcName, :VpcId, :CidrBlock, :IsDefault, :EnableMulticast, :CreatedTime, :DnsServerSet, :DomainName, :DhcpOptionsId, :EnableDhcp, :Ipv6CidrBlock, :TagSet, :AssistantCidrSet
        
        def initialize(vpcname=nil, vpcid=nil, cidrblock=nil, isdefault=nil, enablemulticast=nil, createdtime=nil, dnsserverset=nil, domainname=nil, dhcpoptionsid=nil, enabledhcp=nil, ipv6cidrblock=nil, tagset=nil, assistantcidrset=nil)
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
          @TagSet = params['TagSet']
          @AssistantCidrSet = params['AssistantCidrSet']
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
        # @param InstanceCount: 在当前可用区欲创建的实例数目。
        # @type InstanceCount: Integer
        # @param ISP: 运营商，CTCC电信，CUCC联通，CMCC移动，多个运营商用英文分号连接";"。多运营商需要开通白名单，请直接联系腾讯云客服。
        # @type ISP: String
        # @param VpcId: 指定私有网络编号，SubnetId与VpcId必须同时指定或不指定
        # @type VpcId: String
        # @param SubnetId: 指定子网编号，SubnetId与VpcId必须同时指定或不指定
        # @type SubnetId: String
        # @param PrivateIpAddresses: 指定主网卡内网IP。条件：SubnetId与VpcId必须同时指定，并且IP数量与InstanceCount相同，多IP主机副网卡内网IP在相同子网内通过DHCP获取。
        # @type PrivateIpAddresses: Array

        attr_accessor :Zone, :InstanceCount, :ISP, :VpcId, :SubnetId, :PrivateIpAddresses
        
        def initialize(zone=nil, instancecount=nil, isp=nil, vpcid=nil, subnetid=nil, privateipaddresses=nil)
          @Zone = zone
          @InstanceCount = instancecount
          @ISP = isp
          @VpcId = vpcid
          @SubnetId = subnetid
          @PrivateIpAddresses = privateipaddresses
        end

        def deserialize(params)
          @Zone = params['Zone']
          @InstanceCount = params['InstanceCount']
          @ISP = params['ISP']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @PrivateIpAddresses = params['PrivateIpAddresses']
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

