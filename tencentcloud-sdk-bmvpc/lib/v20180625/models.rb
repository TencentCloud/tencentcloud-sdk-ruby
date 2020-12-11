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
  module Bmvpc
    module V20180625
      # AcceptVpcPeerConnection请求参数结构体
      class AcceptVpcPeerConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpcPeerConnectionId: 黑石对等连接实例ID
        # @type VpcPeerConnectionId: String

        attr_accessor :VpcPeerConnectionId
        
        def initialize(vpcpeerconnectionid=nil)
          @VpcPeerConnectionId = vpcpeerconnectionid
        end

        def deserialize(params)
          @VpcPeerConnectionId = params['VpcPeerConnectionId']
        end
      end

      # AcceptVpcPeerConnection返回参数结构体
      class AcceptVpcPeerConnectionResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # AsyncRegisterIps请求参数结构体
      class AsyncRegisterIpsRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络的唯一ID。
        # @type VpcId: String
        # @param SubnetId: 子网唯一ID。
        # @type SubnetId: String
        # @param Ips: 需要注册的IP列表。
        # @type Ips: Array

        attr_accessor :VpcId, :SubnetId, :Ips
        
        def initialize(vpcid=nil, subnetid=nil, ips=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @Ips = ips
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Ips = params['Ips']
        end
      end

      # AsyncRegisterIps返回参数结构体
      class AsyncRegisterIpsResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
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

      # BindEipsToNatGateway请求参数结构体
      class BindEipsToNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param AssignedEips: 已分配的EIP列表；AssignedEips和AutoAllocEipNum至少输入一个
        # @type AssignedEips: Array
        # @param AutoAllocEipNum: 新建EIP数目，系统将会按您的要求生产该数目个数EIP；AssignedEips和AutoAllocEipNum至少输入一个
        # @type AutoAllocEipNum: Integer

        attr_accessor :NatId, :VpcId, :AssignedEips, :AutoAllocEipNum
        
        def initialize(natid=nil, vpcid=nil, assignedeips=nil, autoalloceipnum=nil)
          @NatId = natid
          @VpcId = vpcid
          @AssignedEips = assignedeips
          @AutoAllocEipNum = autoalloceipnum
        end

        def deserialize(params)
          @NatId = params['NatId']
          @VpcId = params['VpcId']
          @AssignedEips = params['AssignedEips']
          @AutoAllocEipNum = params['AutoAllocEipNum']
        end
      end

      # BindEipsToNatGateway返回参数结构体
      class BindEipsToNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # BindIpsToNatGateway请求参数结构体
      class BindIpsToNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param IpInfoSet: 部分IP信息，子网下只有该部分IP将加入NAT，仅当网关转发模式为IP方式有效
        # @type IpInfoSet: Array

        attr_accessor :NatId, :VpcId, :IpInfoSet
        
        def initialize(natid=nil, vpcid=nil, ipinfoset=nil)
          @NatId = natid
          @VpcId = vpcid
          @IpInfoSet = ipinfoset
        end

        def deserialize(params)
          @NatId = params['NatId']
          @VpcId = params['VpcId']
          @IpInfoSet = params['IpInfoSet']
        end
      end

      # BindIpsToNatGateway返回参数结构体
      class BindIpsToNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # BindSubnetsToNatGateway请求参数结构体
      class BindSubnetsToNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param SubnetIds: 子网ID列表，子网下全部IP将加入NAT，不区分网关转发方式
        # @type SubnetIds: Array

        attr_accessor :NatId, :VpcId, :SubnetIds
        
        def initialize(natid=nil, vpcid=nil, subnetids=nil)
          @NatId = natid
          @VpcId = vpcid
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @NatId = params['NatId']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
        end
      end

      # BindSubnetsToNatGateway返回参数结构体
      class BindSubnetsToNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # CreateCustomerGateway请求参数结构体
      class CreateCustomerGatewayRequest < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayName: 对端网关名称，可任意命名，但不得超过60个字符。
        # @type CustomerGatewayName: String
        # @param IpAddress: 对端网关公网IP。
        # @type IpAddress: String
        # @param Zone: 可用区ID
        # @type Zone: String

        attr_accessor :CustomerGatewayName, :IpAddress, :Zone
        
        def initialize(customergatewayname=nil, ipaddress=nil, zone=nil)
          @CustomerGatewayName = customergatewayname
          @IpAddress = ipaddress
          @Zone = zone
        end

        def deserialize(params)
          @CustomerGatewayName = params['CustomerGatewayName']
          @IpAddress = params['IpAddress']
          @Zone = params['Zone']
        end
      end

      # CreateCustomerGateway返回参数结构体
      class CreateCustomerGatewayResponse < TencentCloud::Common::AbstractModel
        # @param CustomerGateway: 对端网关对象
        # @type CustomerGateway: :class:`Tencentcloud::Bmvpc.v20180625.models.CustomerGateway`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomerGateway, :RequestId
        
        def initialize(customergateway=nil, requestid=nil)
          @CustomerGateway = customergateway
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomerGateway'].nil?
            @CustomerGateway = CustomerGateway.new.deserialize(params[CustomerGateway])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateDockerSubnetWithVlan请求参数结构体
      class CreateDockerSubnetWithVlanRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 系统分配的私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param SubnetSet: 子网信息
        # @type SubnetSet: Array

        attr_accessor :VpcId, :SubnetSet
        
        def initialize(vpcid=nil, subnetset=nil)
          @VpcId = vpcid
          @SubnetSet = subnetset
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetSet = params['SubnetSet']
        end
      end

      # CreateDockerSubnetWithVlan返回参数结构体
      class CreateDockerSubnetWithVlanResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # CreateHostedInterface请求参数结构体
      class CreateHostedInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 托管机器唯一ID 数组
        # @type InstanceIds: Array
        # @param VpcId: 私有网络ID或者私有网络统一ID，建议使用统一ID
        # @type VpcId: String
        # @param SubnetId: 子网ID或者子网统一ID，建议使用统一ID
        # @type SubnetId: String

        attr_accessor :InstanceIds, :VpcId, :SubnetId
        
        def initialize(instanceids=nil, vpcid=nil, subnetid=nil)
          @InstanceIds = instanceids
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # CreateHostedInterface返回参数结构体
      class CreateHostedInterfaceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
        # @param ResourceIds: 黑石托管机器ID
        # @type ResourceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ResourceIds, :RequestId
        
        def initialize(taskid=nil, resourceids=nil, requestid=nil)
          @TaskId = taskid
          @ResourceIds = resourceids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ResourceIds = params['ResourceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateInterfaces请求参数结构体
      class CreateInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 物理机实例ID列表
        # @type InstanceIds: Array
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String

        attr_accessor :InstanceIds, :VpcId, :SubnetId
        
        def initialize(instanceids=nil, vpcid=nil, subnetid=nil)
          @InstanceIds = instanceids
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # CreateInterfaces返回参数结构体
      class CreateInterfacesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # CreateNatGateway请求参数结构体
      class CreateNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param ForwardMode: 转发模式，其中0表示IP方式，1表示网段方式；通过cidr方式可支持更多的IP接入到NAT网关
        # @type ForwardMode: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param NatName: NAT名称
        # @type NatName: String
        # @param MaxConcurrent: 并发连接数规格；取值为1000000、3000000、10000000，分别对应小型、中型、大型NAT网关
        # @type MaxConcurrent: Integer
        # @param SubnetIds: 子网ID列表，子网下全部IP将加入NAT，不区分网关转发方式
        # @type SubnetIds: Array
        # @param IpInfoSet: 部分IP信息，子网下只有该部分IP将加入NAT，仅当网关转发模式为IP方式有效；IpInfoSet和SubnetIds中的子网ID不能同时存在
        # @type IpInfoSet: Array
        # @param AssignedEips: 已分配的EIP列表, AssignedEips和AutoAllocEipNum至少输入一个
        # @type AssignedEips: Array
        # @param AutoAllocEipNum: 新建EIP数目，系统将会按您的要求生产该数目个数EIP, AssignedEips和AutoAllocEipNum至少输入一个
        # @type AutoAllocEipNum: Integer
        # @param Exclusive: 独占标识，取值为0和1，默认值为0；0和1分别表示创建共享型NAT网关和独占NAT型网关；由于同一个VPC网络内，指向NAT集群的默认路由只有一条，因此VPC内只能创建一种类型NAT网关；创建独占型NAT网关时，需联系对应架构师进行独占NAT集群搭建，否则无法创建独占型NAT网关。
        # @type Exclusive: Integer

        attr_accessor :ForwardMode, :VpcId, :NatName, :MaxConcurrent, :SubnetIds, :IpInfoSet, :AssignedEips, :AutoAllocEipNum, :Exclusive
        
        def initialize(forwardmode=nil, vpcid=nil, natname=nil, maxconcurrent=nil, subnetids=nil, ipinfoset=nil, assignedeips=nil, autoalloceipnum=nil, exclusive=nil)
          @ForwardMode = forwardmode
          @VpcId = vpcid
          @NatName = natname
          @MaxConcurrent = maxconcurrent
          @SubnetIds = subnetids
          @IpInfoSet = ipinfoset
          @AssignedEips = assignedeips
          @AutoAllocEipNum = autoalloceipnum
          @Exclusive = exclusive
        end

        def deserialize(params)
          @ForwardMode = params['ForwardMode']
          @VpcId = params['VpcId']
          @NatName = params['NatName']
          @MaxConcurrent = params['MaxConcurrent']
          @SubnetIds = params['SubnetIds']
          @IpInfoSet = params['IpInfoSet']
          @AssignedEips = params['AssignedEips']
          @AutoAllocEipNum = params['AutoAllocEipNum']
          @Exclusive = params['Exclusive']
        end
      end

      # CreateNatGateway返回参数结构体
      class CreateNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # CreateRoutePolicies请求参数结构体
      class CreateRoutePoliciesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表ID
        # @type RouteTableId: String
        # @param RoutePolicySet: 新增的路由
        # @type RoutePolicySet: Array

        attr_accessor :RouteTableId, :RoutePolicySet
        
        def initialize(routetableid=nil, routepolicyset=nil)
          @RouteTableId = routetableid
          @RoutePolicySet = routepolicyset
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RoutePolicySet = params['RoutePolicySet']
        end
      end

      # CreateRoutePolicies返回参数结构体
      class CreateRoutePoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
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

      # CreateSubnet请求参数结构体
      class CreateSubnetRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 系统分配的私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param SubnetSet: 子网信息
        # @type SubnetSet: Array

        attr_accessor :VpcId, :SubnetSet
        
        def initialize(vpcid=nil, subnetset=nil)
          @VpcId = vpcid
          @SubnetSet = subnetset
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetSet = params['SubnetSet']
        end
      end

      # CreateSubnet返回参数结构体
      class CreateSubnetResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # CreateVirtualSubnetWithVlan请求参数结构体
      class CreateVirtualSubnetWithVlanRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 系统分配的私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param SubnetSet: 子网信息
        # @type SubnetSet: Array

        attr_accessor :VpcId, :SubnetSet
        
        def initialize(vpcid=nil, subnetset=nil)
          @VpcId = vpcid
          @SubnetSet = subnetset
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetSet = params['SubnetSet']
        end
      end

      # CreateVirtualSubnetWithVlan返回参数结构体
      class CreateVirtualSubnetWithVlanResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # CreateVpcPeerConnection请求参数结构体
      class CreateVpcPeerConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 本端VPC唯一ID
        # @type VpcId: String
        # @param PeerVpcId: 对端VPC唯一ID
        # @type PeerVpcId: String
        # @param PeerRegion: 对端地域，取值范围为gz,sh,bj,hk,cd,de,sh_bm,gz_bm,bj_bm,cq_bm等
        # @type PeerRegion: String
        # @param VpcPeerConnectionName: 对等连接名称
        # @type VpcPeerConnectionName: String
        # @param PeerUin: 对端账户OwnerUin（默认值为本端账户）
        # @type PeerUin: String
        # @param Bandwidth: 跨地域必传，带宽上限值
        # @type Bandwidth: Integer

        attr_accessor :VpcId, :PeerVpcId, :PeerRegion, :VpcPeerConnectionName, :PeerUin, :Bandwidth
        
        def initialize(vpcid=nil, peervpcid=nil, peerregion=nil, vpcpeerconnectionname=nil, peeruin=nil, bandwidth=nil)
          @VpcId = vpcid
          @PeerVpcId = peervpcid
          @PeerRegion = peerregion
          @VpcPeerConnectionName = vpcpeerconnectionname
          @PeerUin = peeruin
          @Bandwidth = bandwidth
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @PeerVpcId = params['PeerVpcId']
          @PeerRegion = params['PeerRegion']
          @VpcPeerConnectionName = params['VpcPeerConnectionName']
          @PeerUin = params['PeerUin']
          @Bandwidth = params['Bandwidth']
        end
      end

      # CreateVpcPeerConnection返回参数结构体
      class CreateVpcPeerConnectionResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # CreateVpc请求参数结构体
      class CreateVpcRequest < TencentCloud::Common::AbstractModel
        # @param VpcName: 私有网络的名称
        # @type VpcName: String
        # @param CidrBlock: 私有网络的CIDR
        # @type CidrBlock: String
        # @param Zone: 私有网络的可用区
        # @type Zone: String
        # @param SubnetSet: 子网信息
        # @type SubnetSet: Array
        # @param EnableMonitoring: 是否启用内网监控
        # @type EnableMonitoring: Boolean

        attr_accessor :VpcName, :CidrBlock, :Zone, :SubnetSet, :EnableMonitoring
        
        def initialize(vpcname=nil, cidrblock=nil, zone=nil, subnetset=nil, enablemonitoring=nil)
          @VpcName = vpcname
          @CidrBlock = cidrblock
          @Zone = zone
          @SubnetSet = subnetset
          @EnableMonitoring = enablemonitoring
        end

        def deserialize(params)
          @VpcName = params['VpcName']
          @CidrBlock = params['CidrBlock']
          @Zone = params['Zone']
          @SubnetSet = params['SubnetSet']
          @EnableMonitoring = params['EnableMonitoring']
        end
      end

      # CreateVpc返回参数结构体
      class CreateVpcResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
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

      # 对端网关
      class CustomerGateway < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayId: 用户网关唯一ID
        # @type CustomerGatewayId: String
        # @param CustomerGatewayName: 网关名称
        # @type CustomerGatewayName: String
        # @param IpAddress: 公网地址
        # @type IpAddress: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param VpnConnNum: VPN通道引用个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpnConnNum: Integer

        attr_accessor :CustomerGatewayId, :CustomerGatewayName, :IpAddress, :CreateTime, :VpnConnNum
        
        def initialize(customergatewayid=nil, customergatewayname=nil, ipaddress=nil, createtime=nil, vpnconnnum=nil)
          @CustomerGatewayId = customergatewayid
          @CustomerGatewayName = customergatewayname
          @IpAddress = ipaddress
          @CreateTime = createtime
          @VpnConnNum = vpnconnnum
        end

        def deserialize(params)
          @CustomerGatewayId = params['CustomerGatewayId']
          @CustomerGatewayName = params['CustomerGatewayName']
          @IpAddress = params['IpAddress']
          @CreateTime = params['CreateTime']
          @VpnConnNum = params['VpnConnNum']
        end
      end

      # DeleteCustomerGateway请求参数结构体
      class DeleteCustomerGatewayRequest < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayId: 对端网关ID，例如：bmcgw-2wqq41m9，可通过DescribeCustomerGateways接口查询对端网关。
        # @type CustomerGatewayId: String

        attr_accessor :CustomerGatewayId
        
        def initialize(customergatewayid=nil)
          @CustomerGatewayId = customergatewayid
        end

        def deserialize(params)
          @CustomerGatewayId = params['CustomerGatewayId']
        end
      end

      # DeleteCustomerGateway返回参数结构体
      class DeleteCustomerGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeleteHostedInterface请求参数结构体
      class DeleteHostedInterfaceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: 托管机器唯一ID 数组
        # @type InstanceIds: Array
        # @param VpcId: 私有网络ID或者私有网络统一ID，建议使用统一ID
        # @type VpcId: String
        # @param SubnetId: 子网ID或者子网统一ID，建议使用统一ID
        # @type SubnetId: String

        attr_accessor :InstanceIds, :VpcId, :SubnetId
        
        def initialize(instanceids=nil, vpcid=nil, subnetid=nil)
          @InstanceIds = instanceids
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # DeleteHostedInterface返回参数结构体
      class DeleteHostedInterfaceResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
        # @type TaskId: Integer
        # @param ResourceIds: 黑石托管机器ID
        # @type ResourceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :ResourceIds, :RequestId
        
        def initialize(taskid=nil, resourceids=nil, requestid=nil)
          @TaskId = taskid
          @ResourceIds = resourceids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ResourceIds = params['ResourceIds']
          @RequestId = params['RequestId']
        end
      end

      # DeleteHostedInterfaces请求参数结构体
      class DeleteHostedInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 物理机ID
        # @type InstanceId: String
        # @param SubnetIds: 物理机ID
        # @type SubnetIds: Array

        attr_accessor :InstanceId, :SubnetIds
        
        def initialize(instanceid=nil, subnetids=nil)
          @InstanceId = instanceid
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SubnetIds = params['SubnetIds']
        end
      end

      # DeleteHostedInterfaces返回参数结构体
      class DeleteHostedInterfacesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
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

      # DeleteInterfaces请求参数结构体
      class DeleteInterfacesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 物理机ID
        # @type InstanceId: String
        # @param SubnetIds: 子网的唯一ID列表
        # @type SubnetIds: Array

        attr_accessor :InstanceId, :SubnetIds
        
        def initialize(instanceid=nil, subnetids=nil)
          @InstanceId = instanceid
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @SubnetIds = params['SubnetIds']
        end
      end

      # DeleteInterfaces返回参数结构体
      class DeleteInterfacesResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
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

      # DeleteNatGateway请求参数结构体
      class DeleteNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String

        attr_accessor :NatId, :VpcId
        
        def initialize(natid=nil, vpcid=nil)
          @NatId = natid
          @VpcId = vpcid
        end

        def deserialize(params)
          @NatId = params['NatId']
          @VpcId = params['VpcId']
        end
      end

      # DeleteNatGateway返回参数结构体
      class DeleteNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # DeleteRoutePolicy请求参数结构体
      class DeleteRoutePolicyRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表ID
        # @type RouteTableId: String
        # @param RoutePolicyId: 路由表策略ID
        # @type RoutePolicyId: String

        attr_accessor :RouteTableId, :RoutePolicyId
        
        def initialize(routetableid=nil, routepolicyid=nil)
          @RouteTableId = routetableid
          @RoutePolicyId = routepolicyid
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RoutePolicyId = params['RoutePolicyId']
        end
      end

      # DeleteRoutePolicy返回参数结构体
      class DeleteRoutePolicyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
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

      # DeleteSubnet请求参数结构体
      class DeleteSubnetRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String
        # @param SubnetId: 子网实例ID。可通过DescribeSubnets接口返回值中的SubnetId获取。
        # @type SubnetId: String

        attr_accessor :VpcId, :SubnetId
        
        def initialize(vpcid=nil, subnetid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # DeleteSubnet返回参数结构体
      class DeleteSubnetResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
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

      # DeleteVirtualIp请求参数结构体
      class DeleteVirtualIpRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络唯一ID。
        # @type VpcId: String
        # @param Ips: 退还的IP列表。
        # @type Ips: Array

        attr_accessor :VpcId, :Ips
        
        def initialize(vpcid=nil, ips=nil)
          @VpcId = vpcid
          @Ips = ips
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @Ips = params['Ips']
        end
      end

      # DeleteVirtualIp返回参数结构体
      class DeleteVirtualIpResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
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

      # DeleteVpcPeerConnection请求参数结构体
      class DeleteVpcPeerConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpcPeerConnectionId: 黑石对等连接实例ID
        # @type VpcPeerConnectionId: String

        attr_accessor :VpcPeerConnectionId
        
        def initialize(vpcpeerconnectionid=nil)
          @VpcPeerConnectionId = vpcpeerconnectionid
        end

        def deserialize(params)
          @VpcPeerConnectionId = params['VpcPeerConnectionId']
        end
      end

      # DeleteVpcPeerConnection返回参数结构体
      class DeleteVpcPeerConnectionResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # DeleteVpc请求参数结构体
      class DeleteVpcRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        # @type VpcId: String

        attr_accessor :VpcId
        
        def initialize(vpcid=nil)
          @VpcId = vpcid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
        end
      end

      # DeleteVpc返回参数结构体
      class DeleteVpcResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID。
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

      # DeleteVpnConnection请求参数结构体
      class DeleteVpnConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpnConnectionId: VPN通道实例ID。形如：bmvpnx-f49l6u0z。
        # @type VpnConnectionId: String

        attr_accessor :VpnConnectionId
        
        def initialize(vpnconnectionid=nil)
          @VpnConnectionId = vpnconnectionid
        end

        def deserialize(params)
          @VpnConnectionId = params['VpnConnectionId']
        end
      end

      # DeleteVpnConnection返回参数结构体
      class DeleteVpnConnectionResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # DeleteVpnGateway请求参数结构体
      class DeleteVpnGatewayRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String

        attr_accessor :VpnGatewayId
        
        def initialize(vpngatewayid=nil)
          @VpnGatewayId = vpngatewayid
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
        end
      end

      # DeleteVpnGateway返回参数结构体
      class DeleteVpnGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # DeregisterIps请求参数结构体
      class DeregisterIpsRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param IpSet: 注销指定IP的列表
        # @type IpSet: Array
        # @param SubnetId: 私有网络子网ID
        # @type SubnetId: String

        attr_accessor :VpcId, :IpSet, :SubnetId
        
        def initialize(vpcid=nil, ipset=nil, subnetid=nil)
          @VpcId = vpcid
          @IpSet = ipset
          @SubnetId = subnetid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @IpSet = params['IpSet']
          @SubnetId = params['SubnetId']
        end
      end

      # DeregisterIps返回参数结构体
      class DeregisterIpsResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCustomerGateways请求参数结构体
      class DescribeCustomerGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayIds: 对端网关ID，例如：bmcgw-2wqq41m9。每次请求的实例的上限为100。参数不支持同时指定CustomerGatewayIds和Filters。
        # @type CustomerGatewayIds: Array
        # @param Filters: 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定CustomerGatewayIds和Filters。
        # <li>customergateway-name - String - （过滤条件）对端网关名称。</li>
        # <li>ip-address - String - （过滤条件)对端网关地址。</li>
        # <li>customergateway-id - String - （过滤条件）对端网关唯一ID。</li>
        # <li>zone - String - （过滤条件）对端所在可用区，形如：ap-guangzhou-2。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param OrderField: 排序字段, 支持"CreateTime"排序
        # @type OrderField: String
        # @param OrderDirection: 排序方向, “asc”、“desc”
        # @type OrderDirection: String

        attr_accessor :CustomerGatewayIds, :Filters, :Offset, :Limit, :OrderField, :OrderDirection
        
        def initialize(customergatewayids=nil, filters=nil, offset=nil, limit=nil, orderfield=nil, orderdirection=nil)
          @CustomerGatewayIds = customergatewayids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @CustomerGatewayIds = params['CustomerGatewayIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeCustomerGateways返回参数结构体
      class DescribeCustomerGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param CustomerGatewaySet: 对端网关对象列表
        # @type CustomerGatewaySet: Array
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomerGatewaySet, :TotalCount, :RequestId
        
        def initialize(customergatewayset=nil, totalcount=nil, requestid=nil)
          @CustomerGatewaySet = customergatewayset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @CustomerGatewaySet = params['CustomerGatewaySet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatGateways请求参数结构体
      class DescribeNatGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param NatName: NAT名称
        # @type NatName: String
        # @param SearchKey: 搜索字段
        # @type SearchKey: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param Offset: 起始值
        # @type Offset: Integer
        # @param Limit: 偏移值，默认值为 20
        # @type Limit: Integer
        # @param Zone: NAT所在可用区，形如：ap-guangzhou-2。
        # @type Zone: String
        # @param OrderField: 排序字段, 支持"CreateTime"排序
        # @type OrderField: String
        # @param OrderDirection: 排序方向, “asc”、“desc”
        # @type OrderDirection: String

        attr_accessor :NatId, :NatName, :SearchKey, :VpcId, :Offset, :Limit, :Zone, :OrderField, :OrderDirection
        
        def initialize(natid=nil, natname=nil, searchkey=nil, vpcid=nil, offset=nil, limit=nil, zone=nil, orderfield=nil, orderdirection=nil)
          @NatId = natid
          @NatName = natname
          @SearchKey = searchkey
          @VpcId = vpcid
          @Offset = offset
          @Limit = limit
          @Zone = zone
          @OrderField = orderfield
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @NatId = params['NatId']
          @NatName = params['NatName']
          @SearchKey = params['SearchKey']
          @VpcId = params['VpcId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Zone = params['Zone']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeNatGateways返回参数结构体
      class DescribeNatGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param NatGatewayInfoSet: NAT网关信息列表
        # @type NatGatewayInfoSet: Array
        # @param TotalCount: 总数目
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatGatewayInfoSet, :TotalCount, :RequestId
        
        def initialize(natgatewayinfoset=nil, totalcount=nil, requestid=nil)
          @NatGatewayInfoSet = natgatewayinfoset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @NatGatewayInfoSet = params['NatGatewayInfoSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeNatSubnets请求参数结构体
      class DescribeNatSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String

        attr_accessor :NatId, :VpcId
        
        def initialize(natid=nil, vpcid=nil)
          @NatId = natid
          @VpcId = vpcid
        end

        def deserialize(params)
          @NatId = params['NatId']
          @VpcId = params['VpcId']
        end
      end

      # DescribeNatSubnets返回参数结构体
      class DescribeNatSubnetsResponse < TencentCloud::Common::AbstractModel
        # @param NatSubnetInfoSet: NAT子网信息
        # @type NatSubnetInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NatSubnetInfoSet, :RequestId
        
        def initialize(natsubnetinfoset=nil, requestid=nil)
          @NatSubnetInfoSet = natsubnetinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @NatSubnetInfoSet = params['NatSubnetInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoutePolicies请求参数结构体
      class DescribeRoutePoliciesRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表实例ID，例如：rtb-afg8md3c。
        # @type RouteTableId: String
        # @param RoutePolicyIds: 路由策略实例ID，例如：rti-azd4dt1c。
        # @type RoutePolicyIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定RoutePolicyIds和Filters。
        # route-table-id - String - （过滤条件）路由表实例ID。
        # vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        # route-policy-id - String - （过滤条件）路由策略ID。
        # route-policy-description-like - String -（过滤条件）路由项备注。
        # route-policy-type - String - （过滤条件）路由项策略类型。
        # destination-cidr-like - String - （过滤条件）路由项目的地址。
        # gateway-id-like - String - （过滤条件）路由项下一跳网关。
        # gateway-type - String - （过滤条件）路由项下一条网关类型。
        # enable - Bool - （过滤条件）路由策略是否启用。
        # @type Filters: Array
        # @param Offset: 初始行的偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 每页行数，默认为20。
        # @type Limit: Integer

        attr_accessor :RouteTableId, :RoutePolicyIds, :Filters, :Offset, :Limit
        
        def initialize(routetableid=nil, routepolicyids=nil, filters=nil, offset=nil, limit=nil)
          @RouteTableId = routetableid
          @RoutePolicyIds = routepolicyids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          @RoutePolicyIds = params['RoutePolicyIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRoutePolicies返回参数结构体
      class DescribeRoutePoliciesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 路由策略数
        # @type TotalCount: Integer
        # @param RoutePolicySet: 路由策略列表
        # @type RoutePolicySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RoutePolicySet, :RequestId
        
        def initialize(totalcount=nil, routepolicyset=nil, requestid=nil)
          @TotalCount = totalcount
          @RoutePolicySet = routepolicyset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RoutePolicySet = params['RoutePolicySet']
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
        # route-table-id-like - String - （模糊过滤条件）路由表实例ID。
        # route-table-name-like - String - （模糊过滤条件）路由表名称。
        # vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        # zone - String - （过滤条件）可用区。
        # @type Filters: Array
        # @param Offset: 初始行的偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 每页行数，默认为20。
        # @type Limit: Integer
        # @param OrderField: 排序字段, 支持按“RouteTableId”，“VpcId”, "RouteTableName", "CreateTime"
        # @type OrderField: String
        # @param OrderDirection: 排序方向, “asc”、“desc”
        # @type OrderDirection: String

        attr_accessor :RouteTableIds, :Filters, :Offset, :Limit, :OrderField, :OrderDirection
        
        def initialize(routetableids=nil, filters=nil, offset=nil, limit=nil, orderfield=nil, orderdirection=nil)
          @RouteTableIds = routetableids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @RouteTableIds = params['RouteTableIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeRouteTables返回参数结构体
      class DescribeRouteTablesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 路由表个数
        # @type TotalCount: Integer
        # @param RouteTableSet: 路由表列表
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
          @RouteTableSet = params['RouteTableSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubnetAvailableIps请求参数结构体
      class DescribeSubnetAvailableIpsRequest < TencentCloud::Common::AbstractModel
        # @param SubnetId: 私有网络子网ID
        # @type SubnetId: String
        # @param Cidr: CIDR前缀，例如10.0.1
        # @type Cidr: String

        attr_accessor :SubnetId, :Cidr
        
        def initialize(subnetid=nil, cidr=nil)
          @SubnetId = subnetid
          @Cidr = cidr
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @Cidr = params['Cidr']
        end
      end

      # DescribeSubnetAvailableIps返回参数结构体
      class DescribeSubnetAvailableIpsResponse < TencentCloud::Common::AbstractModel
        # @param IpSet: 可用IP的范围列表
        # @type IpSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IpSet, :RequestId
        
        def initialize(ipset=nil, requestid=nil)
          @IpSet = ipset
          @RequestId = requestid
        end

        def deserialize(params)
          @IpSet = params['IpSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubnetByDevice请求参数结构体
      class DescribeSubnetByDeviceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 物理机ID
        # @type InstanceId: String
        # @param Types: 子网类型。0: 物理机子网; 7: DOCKER子网 8: 虚拟子网
        # @type Types: Array
        # @param Offset: 查询的起始位置。
        # @type Offset: Integer
        # @param Limit: 查询的个数。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Types, :Offset, :Limit
        
        def initialize(instanceid=nil, types=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Types = types
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Types = params['Types']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSubnetByDevice返回参数结构体
      class DescribeSubnetByDeviceResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 子网个数
        # @type TotalCount: Integer
        # @param Data: 子网列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId
        
        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubnetByHostedDevice请求参数结构体
      class DescribeSubnetByHostedDeviceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 托管机器ID, 如chm-xasdfx2j
        # @type InstanceId: String
        # @param Types: 子网类型。0: 物理机子网; 7: DOCKER子网 8: 虚拟子网
        # @type Types: Array
        # @param Offset: 查询的起始位置。
        # @type Offset: Integer
        # @param Limit: 查询的个数。
        # @type Limit: Integer

        attr_accessor :InstanceId, :Types, :Offset, :Limit
        
        def initialize(instanceid=nil, types=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @Types = types
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Types = params['Types']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeSubnetByHostedDevice返回参数结构体
      class DescribeSubnetByHostedDeviceResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 子网个数
        # @type TotalCount: Integer
        # @param Data: 子网列表
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId
        
        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubnets请求参数结构体
      class DescribeSubnetsRequest < TencentCloud::Common::AbstractModel
        # @param SubnetIds: 子网实例ID查询。形如：subnet-pxir56ns。参数不支持同时指定SubnetIds和Filters。
        # @type SubnetIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定SubnetIds和Filters。
        # subnet-id - String - （过滤条件）Subnet实例名称。
        # vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        # cidr-block - String - （过滤条件）vpc的cidr。
        # subnet-name - String - （过滤条件）子网名称。
        # zone - String - （过滤条件）可用区。
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param OrderField: 排序字段, 支持按“CreateTime”，“VlanId”
        # @type OrderField: String
        # @param OrderDirection: 排序方向, “asc”、“desc”
        # @type OrderDirection: String

        attr_accessor :SubnetIds, :Filters, :Offset, :Limit, :OrderField, :OrderDirection
        
        def initialize(subnetids=nil, filters=nil, offset=nil, limit=nil, orderfield=nil, orderdirection=nil)
          @SubnetIds = subnetids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @SubnetIds = params['SubnetIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeSubnets返回参数结构体
      class DescribeSubnetsResponse < TencentCloud::Common::AbstractModel
        # @param SubnetSet: 子网列表信息
        # @type SubnetSet: Array
        # @param TotalCount: 返回的子网总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubnetSet, :TotalCount, :RequestId
        
        def initialize(subnetset=nil, totalcount=nil, requestid=nil)
          @SubnetSet = subnetset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SubnetSet = params['SubnetSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskStatus请求参数结构体
      class DescribeTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: Integer

        attr_accessor :TaskId
        
        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeTaskStatus返回参数结构体
      class DescribeTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，其中0表示任务执行成功，1表示任务执行失败，2表示任务正在执行中
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

      # DescribeVpcPeerConnections请求参数结构体
      class DescribeVpcPeerConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param VpcPeerConnectionIds: 对等连接实例ID
        # @type VpcPeerConnectionIds: Array
        # @param Filters: 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定VpcPeerConnectionIds和Filters。
        # 过滤条件，参数不支持同时指定VpcPeerConnectionIds和Filters。
        # <li>peer-name - String - （过滤条件）对等连接名称。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param VpcId: 私有网络ID
        # @type VpcId: String

        attr_accessor :VpcPeerConnectionIds, :Filters, :Offset, :Limit, :VpcId
        
        def initialize(vpcpeerconnectionids=nil, filters=nil, offset=nil, limit=nil, vpcid=nil)
          @VpcPeerConnectionIds = vpcpeerconnectionids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @VpcId = vpcid
        end

        def deserialize(params)
          @VpcPeerConnectionIds = params['VpcPeerConnectionIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @VpcId = params['VpcId']
        end
      end

      # DescribeVpcPeerConnections返回参数结构体
      class DescribeVpcPeerConnectionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param VpcPeerConnectionSet: 对等连接实例。
        # @type VpcPeerConnectionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpcPeerConnectionSet, :RequestId
        
        def initialize(totalcount=nil, vpcpeerconnectionset=nil, requestid=nil)
          @TotalCount = totalcount
          @VpcPeerConnectionSet = vpcpeerconnectionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @VpcPeerConnectionSet = params['VpcPeerConnectionSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcQuota请求参数结构体
      class DescribeVpcQuotaRequest < TencentCloud::Common::AbstractModel
        # @param TypeIds: 类型
        # @type TypeIds: Array

        attr_accessor :TypeIds
        
        def initialize(typeids=nil)
          @TypeIds = typeids
        end

        def deserialize(params)
          @TypeIds = params['TypeIds']
        end
      end

      # DescribeVpcQuota返回参数结构体
      class DescribeVpcQuotaResponse < TencentCloud::Common::AbstractModel
        # @param VpcQuotaSet: 配额信息
        # @type VpcQuotaSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcQuotaSet, :RequestId
        
        def initialize(vpcquotaset=nil, requestid=nil)
          @VpcQuotaSet = vpcquotaset
          @RequestId = requestid
        end

        def deserialize(params)
          @VpcQuotaSet = params['VpcQuotaSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcResource请求参数结构体
      class DescribeVpcResourceRequest < TencentCloud::Common::AbstractModel
        # @param VpcIds: 私有网络实例ID
        # @type VpcIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定SubnetIds和Filters。
        # vpc-id - String - （过滤条件）私有网络实例ID，形如：vpc-f49l6u0z。
        # vpc-name - String - （过滤条件）私有网络名称。
        # zone - String - （过滤条件）可用区。
        # state - String - （过滤条件）VPC状态。available: 运营中; pending: 创建中; failed: 创建失败; deleting: 删除中
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 返回数量
        # @type Limit: Integer
        # @param OrderField: 排序字段
        # @type OrderField: String
        # @param OrderDirection: 排序方向, “asc”、“desc”
        # @type OrderDirection: String

        attr_accessor :VpcIds, :Filters, :Offset, :Limit, :OrderField, :OrderDirection
        
        def initialize(vpcids=nil, filters=nil, offset=nil, limit=nil, orderfield=nil, orderdirection=nil)
          @VpcIds = vpcids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @VpcIds = params['VpcIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeVpcResource返回参数结构体
      class DescribeVpcResourceResponse < TencentCloud::Common::AbstractModel
        # @param VpcResourceSet: VPC数据
        # @type VpcResourceSet: Array
        # @param TotalCount: VPC个数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcResourceSet, :TotalCount, :RequestId
        
        def initialize(vpcresourceset=nil, totalcount=nil, requestid=nil)
          @VpcResourceSet = vpcresourceset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @VpcResourceSet = params['VpcResourceSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcView请求参数结构体
      class DescribeVpcViewRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络唯一ID
        # @type VpcId: String

        attr_accessor :VpcId
        
        def initialize(vpcid=nil)
          @VpcId = vpcid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
        end
      end

      # DescribeVpcView返回参数结构体
      class DescribeVpcViewResponse < TencentCloud::Common::AbstractModel
        # @param VpcView: VPC视图信息
        # @type VpcView: :class:`Tencentcloud::Bmvpc.v20180625.models.VpcViewInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcView, :RequestId
        
        def initialize(vpcview=nil, requestid=nil)
          @VpcView = vpcview
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VpcView'].nil?
            @VpcView = VpcViewInfo.new.deserialize(params[VpcView])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpcs请求参数结构体
      class DescribeVpcsRequest < TencentCloud::Common::AbstractModel
        # @param VpcIds: VPC实例ID。形如：vpc-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpcIds和Filters。
        # @type VpcIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定VpcIds和Filters。
        # vpc-name - String - （过滤条件）VPC实例名称。
        # vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。
        # cidr-block - String - （过滤条件）vpc的cidr。
        # state - String - （过滤条件）VPC状态。(pending | available).
        # zone -  String - （过滤条件）VPC的可用区。
        # @type Filters: Array
        # @param Offset: 初始行的偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 每页行数，默认为20。
        # @type Limit: Integer

        attr_accessor :VpcIds, :Filters, :Offset, :Limit
        
        def initialize(vpcids=nil, filters=nil, offset=nil, limit=nil)
          @VpcIds = vpcids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @VpcIds = params['VpcIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeVpcs返回参数结构体
      class DescribeVpcsResponse < TencentCloud::Common::AbstractModel
        # @param VpcSet: VPC列表
        # @type VpcSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VpcSet, :RequestId
        
        def initialize(vpcset=nil, requestid=nil)
          @VpcSet = vpcset
          @RequestId = requestid
        end

        def deserialize(params)
          @VpcSet = params['VpcSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpnConnections请求参数结构体
      class DescribeVpnConnectionsRequest < TencentCloud::Common::AbstractModel
        # @param VpnConnectionIds: VPN通道实例ID。形如：bmvpnx-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpnConnectionIds和Filters。
        # @type VpnConnectionIds: Array
        # @param Filters: 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定VpnConnectionIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        # <li>state - String - （过滤条件 VPN状态：creating，available，createfailed，changing，changefailed，deleting，deletefailed。</li>
        # <li>zone - String - （过滤条件）VPN所在可用区，形如：ap-guangzhou-2。</li>
        # @type Filters: Array
        # @param Offset: 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param VpnGatewayId: VPN网关实例ID
        # @type VpnGatewayId: String
        # @param VpnConnectionName: VPN通道名称
        # @type VpnConnectionName: String
        # @param OrderField: 排序字段, 支持"CreateTime"排序
        # @type OrderField: String
        # @param OrderDirection: 排序方向, “asc”、“desc”
        # @type OrderDirection: String

        attr_accessor :VpnConnectionIds, :Filters, :Offset, :Limit, :VpnGatewayId, :VpnConnectionName, :OrderField, :OrderDirection
        
        def initialize(vpnconnectionids=nil, filters=nil, offset=nil, limit=nil, vpngatewayid=nil, vpnconnectionname=nil, orderfield=nil, orderdirection=nil)
          @VpnConnectionIds = vpnconnectionids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @VpnGatewayId = vpngatewayid
          @VpnConnectionName = vpnconnectionname
          @OrderField = orderfield
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @VpnConnectionIds = params['VpnConnectionIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @VpnGatewayId = params['VpnGatewayId']
          @VpnConnectionName = params['VpnConnectionName']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeVpnConnections返回参数结构体
      class DescribeVpnConnectionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param VpnConnectionSet: VPN通道实例。
        # @type VpnConnectionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpnConnectionSet, :RequestId
        
        def initialize(totalcount=nil, vpnconnectionset=nil, requestid=nil)
          @TotalCount = totalcount
          @VpnConnectionSet = vpnconnectionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @VpnConnectionSet = params['VpnConnectionSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVpnGateways请求参数结构体
      class DescribeVpnGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayIds: VPN网关实例ID。形如：bmvpngw-f49l6u0z。每次请求的实例的上限为100。参数不支持同时指定VpnGatewayIds和Filters。
        # @type VpnGatewayIds: Array
        # @param Filters: 过滤条件，参数不支持同时指定VpnGatewayIds和Filters。
        # <li>vpc-id - String - （过滤条件）VPC实例ID形如：vpc-f49l6u0z。</li>
        # <li>state - String - （过滤条件 VPN状态：creating，available，createfailed，changing，changefailed，deleting，deletefailed。</li>
        # <li>zone - String - （过滤条件）VPN所在可用区，形如：ap-guangzhou-2。</li>
        # <li>vpngw-name - String - （过滤条件）vpn网关名称。</li>
        # @type Filters: Array
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 请求对象个数
        # @type Limit: Integer
        # @param OrderField: 排序字段, 支持"CreateTime"排序
        # @type OrderField: String
        # @param OrderDirection: 排序方向, “asc”、“desc”
        # @type OrderDirection: String

        attr_accessor :VpnGatewayIds, :Filters, :Offset, :Limit, :OrderField, :OrderDirection
        
        def initialize(vpngatewayids=nil, filters=nil, offset=nil, limit=nil, orderfield=nil, orderdirection=nil)
          @VpnGatewayIds = vpngatewayids
          @Filters = filters
          @Offset = offset
          @Limit = limit
          @OrderField = orderfield
          @OrderDirection = orderdirection
        end

        def deserialize(params)
          @VpnGatewayIds = params['VpnGatewayIds']
          @Filters = params['Filters']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OrderField = params['OrderField']
          @OrderDirection = params['OrderDirection']
        end
      end

      # DescribeVpnGateways返回参数结构体
      class DescribeVpnGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例数量。
        # @type TotalCount: Integer
        # @param VpnGatewaySet: VPN网关实例详细信息列表。
        # @type VpnGatewaySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :VpnGatewaySet, :RequestId
        
        def initialize(totalcount=nil, vpngatewayset=nil, requestid=nil)
          @TotalCount = totalcount
          @VpnGatewaySet = vpngatewayset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @VpnGatewaySet = params['VpnGatewaySet']
          @RequestId = params['RequestId']
        end
      end

      # DownloadCustomerGatewayConfiguration请求参数结构体
      class DownloadCustomerGatewayConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param VpnConnectionId: VPN通道实例ID。形如：bmvpnx-f49l6u0z。
        # @type VpnConnectionId: String
        # @param VendorName: 厂商,取值 h3c，cisco
        # @type VendorName: String

        attr_accessor :VpnConnectionId, :VendorName
        
        def initialize(vpnconnectionid=nil, vendorname=nil)
          @VpnConnectionId = vpnconnectionid
          @VendorName = vendorname
        end

        def deserialize(params)
          @VpnConnectionId = params['VpnConnectionId']
          @VendorName = params['VendorName']
        end
      end

      # DownloadCustomerGatewayConfiguration返回参数结构体
      class DownloadCustomerGatewayConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayConfiguration: 配置信息。
        # @type CustomerGatewayConfiguration: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomerGatewayConfiguration, :RequestId
        
        def initialize(customergatewayconfiguration=nil, requestid=nil)
          @CustomerGatewayConfiguration = customergatewayconfiguration
          @RequestId = requestid
        end

        def deserialize(params)
          @CustomerGatewayConfiguration = params['CustomerGatewayConfiguration']
          @RequestId = params['RequestId']
        end
      end

      # 过滤器
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 属性名称, 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        # @type Name: String
        # @param Values: 属性值, 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
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

      # IKE配置（Internet Key Exchange，因特网密钥交换），IKE具有一套自我保护机制，用户配置网络安全协议
      class IKEOptionsSpecification < TencentCloud::Common::AbstractModel
        # @param PropoEncryAlgorithm: 加密算法，可选值：'3DES-CBC', 'AES-CBC-128', 'AES-CBC-192', 'AES-CBC-256', 'DES-CBC'，默认为3DES-CBC
        # @type PropoEncryAlgorithm: String
        # @param PropoAuthenAlgorithm: 认证算法：可选值：'MD5', 'SHA1'，默认为MD5
        # @type PropoAuthenAlgorithm: String
        # @param ExchangeMode: 协商模式：可选值：'AGGRESSIVE', 'MAIN'，默认为MAIN
        # @type ExchangeMode: String
        # @param LocalIdentity: 本端标识类型：可选值：'ADDRESS', 'FQDN'，默认为ADDRESS
        # @type LocalIdentity: String
        # @param RemoteIdentity: 对端标识类型：可选值：'ADDRESS', 'FQDN'，默认为ADDRESS
        # @type RemoteIdentity: String
        # @param LocalAddress: 本端标识，当LocalIdentity选为ADDRESS时，LocalAddress必填。localAddress默认为vpn网关公网IP
        # @type LocalAddress: String
        # @param RemoteAddress: 对端标识，当RemoteIdentity选为ADDRESS时，RemoteAddress必填
        # @type RemoteAddress: String
        # @param LocalFqdnName: 本端标识，当LocalIdentity选为FQDN时，LocalFqdnName必填
        # @type LocalFqdnName: String
        # @param RemoteFqdnName: 对端标识，当remoteIdentity选为FQDN时，RemoteFqdnName必填
        # @type RemoteFqdnName: String
        # @param DhGroupName: DH group，指定IKE交换密钥时使用的DH组，可选值：'GROUP1', 'GROUP2', 'GROUP5', 'GROUP14', 'GROUP24'，
        # @type DhGroupName: String
        # @param IKESaLifetimeSeconds: IKE SA Lifetime，单位：秒，设置IKE SA的生存周期，取值范围：60-604800
        # @type IKESaLifetimeSeconds: Integer
        # @param IKEVersion: IKE版本
        # @type IKEVersion: String

        attr_accessor :PropoEncryAlgorithm, :PropoAuthenAlgorithm, :ExchangeMode, :LocalIdentity, :RemoteIdentity, :LocalAddress, :RemoteAddress, :LocalFqdnName, :RemoteFqdnName, :DhGroupName, :IKESaLifetimeSeconds, :IKEVersion
        
        def initialize(propoencryalgorithm=nil, propoauthenalgorithm=nil, exchangemode=nil, localidentity=nil, remoteidentity=nil, localaddress=nil, remoteaddress=nil, localfqdnname=nil, remotefqdnname=nil, dhgroupname=nil, ikesalifetimeseconds=nil, ikeversion=nil)
          @PropoEncryAlgorithm = propoencryalgorithm
          @PropoAuthenAlgorithm = propoauthenalgorithm
          @ExchangeMode = exchangemode
          @LocalIdentity = localidentity
          @RemoteIdentity = remoteidentity
          @LocalAddress = localaddress
          @RemoteAddress = remoteaddress
          @LocalFqdnName = localfqdnname
          @RemoteFqdnName = remotefqdnname
          @DhGroupName = dhgroupname
          @IKESaLifetimeSeconds = ikesalifetimeseconds
          @IKEVersion = ikeversion
        end

        def deserialize(params)
          @PropoEncryAlgorithm = params['PropoEncryAlgorithm']
          @PropoAuthenAlgorithm = params['PropoAuthenAlgorithm']
          @ExchangeMode = params['ExchangeMode']
          @LocalIdentity = params['LocalIdentity']
          @RemoteIdentity = params['RemoteIdentity']
          @LocalAddress = params['LocalAddress']
          @RemoteAddress = params['RemoteAddress']
          @LocalFqdnName = params['LocalFqdnName']
          @RemoteFqdnName = params['RemoteFqdnName']
          @DhGroupName = params['DhGroupName']
          @IKESaLifetimeSeconds = params['IKESaLifetimeSeconds']
          @IKEVersion = params['IKEVersion']
        end
      end

      # IPSec配置，腾讯云提供IPSec安全会话设置
      class IPSECOptionsSpecification < TencentCloud::Common::AbstractModel
        # @param PfsDhGroup: PFS：可选值：'NULL', 'DH-GROUP1', 'DH-GROUP2', 'DH-GROUP5', 'DH-GROUP14', 'DH-GROUP24'，默认为NULL
        # @type PfsDhGroup: String
        # @param IPSECSaLifetimeTraffic: IPsec SA lifetime(KB)：单位KB，取值范围：2560-604800
        # @type IPSECSaLifetimeTraffic: Integer
        # @param EncryptAlgorithm: 加密算法，可选值：'3DES-CBC', 'AES-CBC-128', 'AES-CBC-192', 'AES-CBC-256', 'DES-CBC', 'NULL'， 默认为AES-CBC-128
        # @type EncryptAlgorithm: String
        # @param IntegrityAlgorith: 认证算法：可选值：'MD5', 'SHA1'，默认为
        # @type IntegrityAlgorith: String
        # @param IPSECSaLifetimeSeconds: IPsec SA lifetime(s)：单位秒，取值范围：180-604800
        # @type IPSECSaLifetimeSeconds: Integer
        # @param SecurityProto: 安全协议，默认为ESP
        # @type SecurityProto: String
        # @param EncapMode: 报文封装模式:默认为Tunnel
        # @type EncapMode: String

        attr_accessor :PfsDhGroup, :IPSECSaLifetimeTraffic, :EncryptAlgorithm, :IntegrityAlgorith, :IPSECSaLifetimeSeconds, :SecurityProto, :EncapMode
        
        def initialize(pfsdhgroup=nil, ipsecsalifetimetraffic=nil, encryptalgorithm=nil, integrityalgorith=nil, ipsecsalifetimeseconds=nil, securityproto=nil, encapmode=nil)
          @PfsDhGroup = pfsdhgroup
          @IPSECSaLifetimeTraffic = ipsecsalifetimetraffic
          @EncryptAlgorithm = encryptalgorithm
          @IntegrityAlgorith = integrityalgorith
          @IPSECSaLifetimeSeconds = ipsecsalifetimeseconds
          @SecurityProto = securityproto
          @EncapMode = encapmode
        end

        def deserialize(params)
          @PfsDhGroup = params['PfsDhGroup']
          @IPSECSaLifetimeTraffic = params['IPSECSaLifetimeTraffic']
          @EncryptAlgorithm = params['EncryptAlgorithm']
          @IntegrityAlgorith = params['IntegrityAlgorith']
          @IPSECSaLifetimeSeconds = params['IPSECSaLifetimeSeconds']
          @SecurityProto = params['SecurityProto']
          @EncapMode = params['EncapMode']
        end
      end

      # NAT IP信息
      class IpInfo < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param Ips: IP列表
        # @type Ips: Array

        attr_accessor :SubnetId, :Ips
        
        def initialize(subnetid=nil, ips=nil)
          @SubnetId = subnetid
          @Ips = ips
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @Ips = params['Ips']
        end
      end

      # ModifyCustomerGatewayAttribute请求参数结构体
      class ModifyCustomerGatewayAttributeRequest < TencentCloud::Common::AbstractModel
        # @param CustomerGatewayId: 对端网关ID，例如：bmcgw-2wqq41m9，可通过DescribeCustomerGateways接口查询对端网关。
        # @type CustomerGatewayId: String
        # @param CustomerGatewayName: 对端网关名称，可任意命名，但不得超过60个字符。
        # @type CustomerGatewayName: String

        attr_accessor :CustomerGatewayId, :CustomerGatewayName
        
        def initialize(customergatewayid=nil, customergatewayname=nil)
          @CustomerGatewayId = customergatewayid
          @CustomerGatewayName = customergatewayname
        end

        def deserialize(params)
          @CustomerGatewayId = params['CustomerGatewayId']
          @CustomerGatewayName = params['CustomerGatewayName']
        end
      end

      # ModifyCustomerGatewayAttribute返回参数结构体
      class ModifyCustomerGatewayAttributeResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRoutePolicy请求参数结构体
      class ModifyRoutePolicyRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表ID
        # @type RouteTableId: String
        # @param RoutePolicy: 修改的路由
        # @type RoutePolicy: :class:`Tencentcloud::Bmvpc.v20180625.models.RoutePolicy`

        attr_accessor :RouteTableId, :RoutePolicy
        
        def initialize(routetableid=nil, routepolicy=nil)
          @RouteTableId = routetableid
          @RoutePolicy = routepolicy
        end

        def deserialize(params)
          @RouteTableId = params['RouteTableId']
          unless params['RoutePolicy'].nil?
            @RoutePolicy = RoutePolicy.new.deserialize(params[RoutePolicy])
          end
        end
      end

      # ModifyRoutePolicy返回参数结构体
      class ModifyRoutePolicyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步任务ID
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

      # ModifyRouteTable请求参数结构体
      class ModifyRouteTableRequest < TencentCloud::Common::AbstractModel
        # @param RouteTableId: 路由表ID
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

      # ModifyRouteTable返回参数结构体
      class ModifyRouteTableResponse < TencentCloud::Common::AbstractModel
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
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param SubnetName: 子网名称
        # @type SubnetName: String

        attr_accessor :VpcId, :SubnetId, :SubnetName
        
        def initialize(vpcid=nil, subnetid=nil, subnetname=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @SubnetName = subnetname
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
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

      # ModifySubnetDHCPRelay请求参数结构体
      class ModifySubnetDHCPRelayRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param EnableDHCP: 是否开启DHCP Relay
        # @type EnableDHCP: Boolean
        # @param ServerIps: DHCP服务器IP
        # @type ServerIps: Array
        # @param ReservedIpCount: 预留IP个数
        # @type ReservedIpCount: Integer

        attr_accessor :VpcId, :SubnetId, :EnableDHCP, :ServerIps, :ReservedIpCount
        
        def initialize(vpcid=nil, subnetid=nil, enabledhcp=nil, serverips=nil, reservedipcount=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @EnableDHCP = enabledhcp
          @ServerIps = serverips
          @ReservedIpCount = reservedipcount
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @EnableDHCP = params['EnableDHCP']
          @ServerIps = params['ServerIps']
          @ReservedIpCount = params['ReservedIpCount']
        end
      end

      # ModifySubnetDHCPRelay返回参数结构体
      class ModifySubnetDHCPRelayResponse < TencentCloud::Common::AbstractModel
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
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # @type VpcName: String
        # @param EnableMonitor: 是否开启内网监控，0为关闭，1为开启
        # @type EnableMonitor: Boolean

        attr_accessor :VpcId, :VpcName, :EnableMonitor
        
        def initialize(vpcid=nil, vpcname=nil, enablemonitor=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @EnableMonitor = enablemonitor
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @EnableMonitor = params['EnableMonitor']
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

      # ModifyVpcPeerConnection请求参数结构体
      class ModifyVpcPeerConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpcPeerConnectionId: 黑石对等连接唯一ID
        # @type VpcPeerConnectionId: String
        # @param Bandwidth: 对等连接带宽
        # @type Bandwidth: Integer
        # @param VpcPeerConnectionName: 对等连接名称
        # @type VpcPeerConnectionName: String

        attr_accessor :VpcPeerConnectionId, :Bandwidth, :VpcPeerConnectionName
        
        def initialize(vpcpeerconnectionid=nil, bandwidth=nil, vpcpeerconnectionname=nil)
          @VpcPeerConnectionId = vpcpeerconnectionid
          @Bandwidth = bandwidth
          @VpcPeerConnectionName = vpcpeerconnectionname
        end

        def deserialize(params)
          @VpcPeerConnectionId = params['VpcPeerConnectionId']
          @Bandwidth = params['Bandwidth']
          @VpcPeerConnectionName = params['VpcPeerConnectionName']
        end
      end

      # ModifyVpcPeerConnection返回参数结构体
      class ModifyVpcPeerConnectionResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # ModifyVpnConnectionAttribute请求参数结构体
      class ModifyVpnConnectionAttributeRequest < TencentCloud::Common::AbstractModel
        # @param VpnConnectionId: VPN通道实例ID。形如：bmvpnx-f49l6u0z。
        # @type VpnConnectionId: String
        # @param VpcId: VPC实例ID
        # @type VpcId: String
        # @param VpnConnectionName: VPN通道名称，可任意命名，但不得超过60个字符。
        # @type VpnConnectionName: String
        # @param PreShareKey: 预共享密钥。
        # @type PreShareKey: String
        # @param SecurityPolicyDatabases: SPD策略组，例如：{"10.0.0.5/24":["172.123.10.5/16"]}，10.0.0.5/24是vpc内网段172.123.10.5/16是IDC网段。用户指定VPC内哪些网段可以和您IDC中哪些网段通信。
        # @type SecurityPolicyDatabases: Array
        # @param IKEOptionsSpecification: IKE配置（Internet Key Exchange，因特网密钥交换），IKE具有一套自我保护机制，用户配置网络安全协议。
        # @type IKEOptionsSpecification: :class:`Tencentcloud::Bmvpc.v20180625.models.IKEOptionsSpecification`
        # @param IPSECOptionsSpecification: IPSec配置，腾讯云提供IPSec安全会话设置。
        # @type IPSECOptionsSpecification: :class:`Tencentcloud::Bmvpc.v20180625.models.IPSECOptionsSpecification`

        attr_accessor :VpnConnectionId, :VpcId, :VpnConnectionName, :PreShareKey, :SecurityPolicyDatabases, :IKEOptionsSpecification, :IPSECOptionsSpecification
        
        def initialize(vpnconnectionid=nil, vpcid=nil, vpnconnectionname=nil, presharekey=nil, securitypolicydatabases=nil, ikeoptionsspecification=nil, ipsecoptionsspecification=nil)
          @VpnConnectionId = vpnconnectionid
          @VpcId = vpcid
          @VpnConnectionName = vpnconnectionname
          @PreShareKey = presharekey
          @SecurityPolicyDatabases = securitypolicydatabases
          @IKEOptionsSpecification = ikeoptionsspecification
          @IPSECOptionsSpecification = ipsecoptionsspecification
        end

        def deserialize(params)
          @VpnConnectionId = params['VpnConnectionId']
          @VpcId = params['VpcId']
          @VpnConnectionName = params['VpnConnectionName']
          @PreShareKey = params['PreShareKey']
          @SecurityPolicyDatabases = params['SecurityPolicyDatabases']
          unless params['IKEOptionsSpecification'].nil?
            @IKEOptionsSpecification = IKEOptionsSpecification.new.deserialize(params[IKEOptionsSpecification])
          end
          unless params['IPSECOptionsSpecification'].nil?
            @IPSECOptionsSpecification = IPSECOptionsSpecification.new.deserialize(params[IPSECOptionsSpecification])
          end
        end
      end

      # ModifyVpnConnectionAttribute返回参数结构体
      class ModifyVpnConnectionAttributeResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # ModifyVpnGatewayAttribute请求参数结构体
      class ModifyVpnGatewayAttributeRequest < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param VpnGatewayName: VPN网关名称，最大长度不能超过60个字节。
        # @type VpnGatewayName: String

        attr_accessor :VpnGatewayId, :VpnGatewayName
        
        def initialize(vpngatewayid=nil, vpngatewayname=nil)
          @VpnGatewayId = vpngatewayid
          @VpnGatewayName = vpngatewayname
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @VpnGatewayName = params['VpnGatewayName']
        end
      end

      # ModifyVpnGatewayAttribute返回参数结构体
      class ModifyVpnGatewayAttributeResponse < TencentCloud::Common::AbstractModel
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

      # NAT详情
      class NatGatewayInfo < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID
        # @type NatId: String
        # @param NatName: 网关名称
        # @type NatName: String
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # @type VpcName: String
        # @param ProductionStatus: 网关创建状态，其中0表示创建中，1表示运行中，2表示创建失败
        # @type ProductionStatus: Integer
        # @param Eips: EIP列表
        # @type Eips: Array
        # @param MaxConcurrent: 并发连接数规格，取值为1000000, 3000000, 10000000
        # @type MaxConcurrent: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param Exclusive: 独占标识，其中0表示共享，1表示独占，默认值为0
        # @type Exclusive: Integer
        # @param ForwardMode: 转发模式，其中0表示IP方式，1表示网段方式
        # @type ForwardMode: Integer
        # @param VpcCidrBlock: 私有网络网段
        # @type VpcCidrBlock: String
        # @param Type: 网关类型，取值为 small，middle，big，分别对应小型、中型、大型
        # @type Type: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param State: 网关启用状态，1为禁用，0为启用。
        # @type State: Integer
        # @param IntVpcId: 私有网络整型ID
        # @type IntVpcId: Integer
        # @param NatResourceId: NAT资源ID
        # @type NatResourceId: Integer

        attr_accessor :NatId, :NatName, :VpcId, :VpcName, :ProductionStatus, :Eips, :MaxConcurrent, :Zone, :Exclusive, :ForwardMode, :VpcCidrBlock, :Type, :CreateTime, :State, :IntVpcId, :NatResourceId
        
        def initialize(natid=nil, natname=nil, vpcid=nil, vpcname=nil, productionstatus=nil, eips=nil, maxconcurrent=nil, zone=nil, exclusive=nil, forwardmode=nil, vpccidrblock=nil, type=nil, createtime=nil, state=nil, intvpcid=nil, natresourceid=nil)
          @NatId = natid
          @NatName = natname
          @VpcId = vpcid
          @VpcName = vpcname
          @ProductionStatus = productionstatus
          @Eips = eips
          @MaxConcurrent = maxconcurrent
          @Zone = zone
          @Exclusive = exclusive
          @ForwardMode = forwardmode
          @VpcCidrBlock = vpccidrblock
          @Type = type
          @CreateTime = createtime
          @State = state
          @IntVpcId = intvpcid
          @NatResourceId = natresourceid
        end

        def deserialize(params)
          @NatId = params['NatId']
          @NatName = params['NatName']
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @ProductionStatus = params['ProductionStatus']
          @Eips = params['Eips']
          @MaxConcurrent = params['MaxConcurrent']
          @Zone = params['Zone']
          @Exclusive = params['Exclusive']
          @ForwardMode = params['ForwardMode']
          @VpcCidrBlock = params['VpcCidrBlock']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
          @State = params['State']
          @IntVpcId = params['IntVpcId']
          @NatResourceId = params['NatResourceId']
        end
      end

      # NAT子网信息
      class NatSubnetInfo < TencentCloud::Common::AbstractModel
        # @param Name: 子网名称
        # @type Name: String
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param SubnetNatType: NAT子网类型，其中0表示绑定部分IP的NAT子网，1表示绑定全部IP的NAT子网，2表示绑定网关方式的NAT子网
        # @type SubnetNatType: Integer
        # @param CidrBlock: 子网网段
        # @type CidrBlock: String

        attr_accessor :Name, :SubnetId, :SubnetNatType, :CidrBlock
        
        def initialize(name=nil, subnetid=nil, subnetnattype=nil, cidrblock=nil)
          @Name = name
          @SubnetId = subnetid
          @SubnetNatType = subnetnattype
          @CidrBlock = cidrblock
        end

        def deserialize(params)
          @Name = params['Name']
          @SubnetId = params['SubnetId']
          @SubnetNatType = params['SubnetNatType']
          @CidrBlock = params['CidrBlock']
        end
      end

      # RejectVpcPeerConnection请求参数结构体
      class RejectVpcPeerConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpcPeerConnectionId: 黑石对等连接实例ID
        # @type VpcPeerConnectionId: String

        attr_accessor :VpcPeerConnectionId
        
        def initialize(vpcpeerconnectionid=nil)
          @VpcPeerConnectionId = vpcpeerconnectionid
        end

        def deserialize(params)
          @VpcPeerConnectionId = params['VpcPeerConnectionId']
        end
      end

      # RejectVpcPeerConnection返回参数结构体
      class RejectVpcPeerConnectionResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # ResetVpnConnection请求参数结构体
      class ResetVpnConnectionRequest < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC唯一ID
        # @type VpcId: String
        # @param VpnConnectionId: VPN通道实例ID。形如：bmvpnx-f49l6u0z。
        # @type VpnConnectionId: String

        attr_accessor :VpcId, :VpnConnectionId
        
        def initialize(vpcid=nil, vpnconnectionid=nil)
          @VpcId = vpcid
          @VpnConnectionId = vpnconnectionid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpnConnectionId = params['VpnConnectionId']
        end
      end

      # ResetVpnConnection返回参数结构体
      class ResetVpnConnectionResponse < TencentCloud::Common::AbstractModel
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

      # 路由条目
      class RoutePolicy < TencentCloud::Common::AbstractModel
        # @param DestinationCidrBlock: 目的网段
        # @type DestinationCidrBlock: String
        # @param GatewayType: 下一跳类型，目前我们支持的类型有：
        # LOCAL：物理机默认路由；
        # VPN：VPN网关；
        # PEERCONNECTION：对等连接；
        # CPM：物理机自定义路由；
        # CCN：云联网；
        # TGW：公网默认路由；
        # SSLVPN : SSH SSL VPN网关。
        # @type GatewayType: String
        # @param GatewayId: 下一跳地址，这里只需要指定不同下一跳类型的网关ID，系统会自动匹配到下一跳地址。
        # @type GatewayId: String
        # @param RouteDescription: 路由策略描述。
        # @type RouteDescription: String
        # @param RoutePolicyId: 路由策略ID
        # @type RoutePolicyId: String
        # @param RoutePolicyType: 路由类型，目前我们支持的类型有：
        # USER：用户自定义路由；
        # NETD：网络探测路由，创建网络探测实例时，系统默认下发，不可编辑与删除；
        # CCN：云联网路由，系统默认下发，不可编辑与删除。
        # 用户只能添加和编辑USER 类型的路由。
        # @type RoutePolicyType: String
        # @param Enabled: 是否启用
        # @type Enabled: Boolean

        attr_accessor :DestinationCidrBlock, :GatewayType, :GatewayId, :RouteDescription, :RoutePolicyId, :RoutePolicyType, :Enabled
        
        def initialize(destinationcidrblock=nil, gatewaytype=nil, gatewayid=nil, routedescription=nil, routepolicyid=nil, routepolicytype=nil, enabled=nil)
          @DestinationCidrBlock = destinationcidrblock
          @GatewayType = gatewaytype
          @GatewayId = gatewayid
          @RouteDescription = routedescription
          @RoutePolicyId = routepolicyid
          @RoutePolicyType = routepolicytype
          @Enabled = enabled
        end

        def deserialize(params)
          @DestinationCidrBlock = params['DestinationCidrBlock']
          @GatewayType = params['GatewayType']
          @GatewayId = params['GatewayId']
          @RouteDescription = params['RouteDescription']
          @RoutePolicyId = params['RoutePolicyId']
          @RoutePolicyType = params['RoutePolicyType']
          @Enabled = params['Enabled']
        end
      end

      # 路由表对象
      class RouteTable < TencentCloud::Common::AbstractModel
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param VpcName: VPC的名称
        # @type VpcName: String
        # @param VpcCidrBlock: VPC的CIDR
        # @type VpcCidrBlock: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param RouteTableId: 路由表实例ID，例如：rtb-azd4dt1c。
        # @type RouteTableId: String
        # @param RouteTableName: 路由表名称。
        # @type RouteTableName: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String

        attr_accessor :VpcId, :VpcName, :VpcCidrBlock, :Zone, :RouteTableId, :RouteTableName, :CreateTime
        
        def initialize(vpcid=nil, vpcname=nil, vpccidrblock=nil, zone=nil, routetableid=nil, routetablename=nil, createtime=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @Zone = zone
          @RouteTableId = routetableid
          @RouteTableName = routetablename
          @CreateTime = createtime
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @Zone = params['Zone']
          @RouteTableId = params['RouteTableId']
          @RouteTableName = params['RouteTableName']
          @CreateTime = params['CreateTime']
        end
      end

      # SecurityPolicyDatabase策略
      class SecurityPolicyDatabase < TencentCloud::Common::AbstractModel
        # @param LocalCidrBlock: 本端网段
        # @type LocalCidrBlock: String
        # @param RemoteCidrBlock: 对端网段
        # @type RemoteCidrBlock: Array

        attr_accessor :LocalCidrBlock, :RemoteCidrBlock
        
        def initialize(localcidrblock=nil, remotecidrblock=nil)
          @LocalCidrBlock = localcidrblock
          @RemoteCidrBlock = remotecidrblock
        end

        def deserialize(params)
          @LocalCidrBlock = params['LocalCidrBlock']
          @RemoteCidrBlock = params['RemoteCidrBlock']
        end
      end

      # 创建子网时的子网类型
      class SubnetCreateInputInfo < TencentCloud::Common::AbstractModel
        # @param SubnetName: 子网名称，可任意命名，但不得超过60个字符
        # @type SubnetName: String
        # @param CidrBlock: 子网网段，子网网段必须在VPC网段内，相同VPC内子网网段不能重叠
        # @type CidrBlock: String
        # @param DistributedFlag: 是否开启子网分布式网关，默认传1，传0为关闭子网分布式网关。关闭分布式网关子网用于云服务器化子网，此子网中只能有一台物理机，同时此物理机及其上子机只能在此子网中
        # @type DistributedFlag: Integer
        # @param DhcpEnable: 是否开启dhcp relay ，关闭为0，开启为1。默认为0
        # @type DhcpEnable: Integer
        # @param DhcpServerIp: DHCP SERVER 的IP地址数组。IP地址为相同VPC的子网内分配的IP
        # @type DhcpServerIp: Array
        # @param IpReserve: 预留的IP个数。从该子网的最大可分配IP倒序分配N个IP 用于DHCP 动态分配使用的地址段
        # @type IpReserve: Integer
        # @param VlanId: 子网绑定的vlanId。VlanId取值范围为2000-2999。创建物理机子网，VlanId默认为5; 创建docker子网或者虚拟子网，VlanId默认会分配2000--2999未使用的数值。
        # @type VlanId: Integer
        # @param Zone: 黑石子网的可用区
        # @type Zone: String
        # @param IsSmartNic: 是否25G子网，1为是，0为否。
        # @type IsSmartNic: Integer

        attr_accessor :SubnetName, :CidrBlock, :DistributedFlag, :DhcpEnable, :DhcpServerIp, :IpReserve, :VlanId, :Zone, :IsSmartNic
        
        def initialize(subnetname=nil, cidrblock=nil, distributedflag=nil, dhcpenable=nil, dhcpserverip=nil, ipreserve=nil, vlanid=nil, zone=nil, issmartnic=nil)
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @DistributedFlag = distributedflag
          @DhcpEnable = dhcpenable
          @DhcpServerIp = dhcpserverip
          @IpReserve = ipreserve
          @VlanId = vlanid
          @Zone = zone
          @IsSmartNic = issmartnic
        end

        def deserialize(params)
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @DistributedFlag = params['DistributedFlag']
          @DhcpEnable = params['DhcpEnable']
          @DhcpServerIp = params['DhcpServerIp']
          @IpReserve = params['IpReserve']
          @VlanId = params['VlanId']
          @Zone = params['Zone']
          @IsSmartNic = params['IsSmartNic']
        end
      end

      # 黑石子网的信息
      class SubnetInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络的唯一ID。
        # @type VpcId: String
        # @param VpcName: VPC的名称。
        # @type VpcName: String
        # @param VpcCidrBlock: VPC的CIDR。
        # @type VpcCidrBlock: String
        # @param SubnetId: 私有网络的唯一ID
        # @type SubnetId: String
        # @param SubnetName: 子网名称。
        # @type SubnetName: String
        # @param CidrBlock: 子网CIDR。
        # @type CidrBlock: String
        # @param Type: 子网类型。0: 黑石物理机子网; 6: ccs子网; 7 Docker子网; 8: 虚拟机子网
        # @type Type: Integer
        # @param ZoneId: 子网可用区ID。
        # @type ZoneId: Integer
        # @param CpmNum: 子网物理机的个数
        # @type CpmNum: Integer
        # @param VlanId: 子网的VlanId。
        # @type VlanId: Integer
        # @param DistributedFlag: 是否开启分布式网关 ，关闭为0，开启为1。
        # @type DistributedFlag: Integer
        # @param DhcpEnable: 是否开启dhcp relay ，关闭为0，开启为1。默认为0。
        # @type DhcpEnable: Integer
        # @param DhcpServerIp: DHCP SERVER 的IP地址数组。IP地址为相同VPC的子网内分配的IP。
        # @type DhcpServerIp: Array
        # @param IpReserve: 预留的IP个数。从该子网的最大可分配IP倒序分配N个IP 用于DHCP 动态分配使用的地址段。
        # @type IpReserve: Integer
        # @param AvailableIpNum: 子网中可用的IP个数
        # @type AvailableIpNum: Integer
        # @param TotalIpNum: 子网中总共的IP个数
        # @type TotalIpNum: Integer
        # @param SubnetCreateTime: 子网创建时间
        # @type SubnetCreateTime: String
        # @param IsSmartNic: 25G子网标识
        # @type IsSmartNic: Integer
        # @param Zone: 子网可用区。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zone: String
        # @param VpcZoneId: VPC所在可用区ID
        # @type VpcZoneId: Integer
        # @param VpcZone: VPC所在可用区
        # @type VpcZone: String
        # @param BroadcastFlag: 是否开启广播，关闭为0，开启为1。
        # @type BroadcastFlag: Integer

        attr_accessor :VpcId, :VpcName, :VpcCidrBlock, :SubnetId, :SubnetName, :CidrBlock, :Type, :ZoneId, :CpmNum, :VlanId, :DistributedFlag, :DhcpEnable, :DhcpServerIp, :IpReserve, :AvailableIpNum, :TotalIpNum, :SubnetCreateTime, :IsSmartNic, :Zone, :VpcZoneId, :VpcZone, :BroadcastFlag
        
        def initialize(vpcid=nil, vpcname=nil, vpccidrblock=nil, subnetid=nil, subnetname=nil, cidrblock=nil, type=nil, zoneid=nil, cpmnum=nil, vlanid=nil, distributedflag=nil, dhcpenable=nil, dhcpserverip=nil, ipreserve=nil, availableipnum=nil, totalipnum=nil, subnetcreatetime=nil, issmartnic=nil, zone=nil, vpczoneid=nil, vpczone=nil, broadcastflag=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @VpcCidrBlock = vpccidrblock
          @SubnetId = subnetid
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @Type = type
          @ZoneId = zoneid
          @CpmNum = cpmnum
          @VlanId = vlanid
          @DistributedFlag = distributedflag
          @DhcpEnable = dhcpenable
          @DhcpServerIp = dhcpserverip
          @IpReserve = ipreserve
          @AvailableIpNum = availableipnum
          @TotalIpNum = totalipnum
          @SubnetCreateTime = subnetcreatetime
          @IsSmartNic = issmartnic
          @Zone = zone
          @VpcZoneId = vpczoneid
          @VpcZone = vpczone
          @BroadcastFlag = broadcastflag
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @Type = params['Type']
          @ZoneId = params['ZoneId']
          @CpmNum = params['CpmNum']
          @VlanId = params['VlanId']
          @DistributedFlag = params['DistributedFlag']
          @DhcpEnable = params['DhcpEnable']
          @DhcpServerIp = params['DhcpServerIp']
          @IpReserve = params['IpReserve']
          @AvailableIpNum = params['AvailableIpNum']
          @TotalIpNum = params['TotalIpNum']
          @SubnetCreateTime = params['SubnetCreateTime']
          @IsSmartNic = params['IsSmartNic']
          @Zone = params['Zone']
          @VpcZoneId = params['VpcZoneId']
          @VpcZone = params['VpcZone']
          @BroadcastFlag = params['BroadcastFlag']
        end
      end

      # UnbindEipsFromNatGateway请求参数结构体
      class UnbindEipsFromNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param AssignedEips: 已分配的EIP列表
        # @type AssignedEips: Array

        attr_accessor :NatId, :VpcId, :AssignedEips
        
        def initialize(natid=nil, vpcid=nil, assignedeips=nil)
          @NatId = natid
          @VpcId = vpcid
          @AssignedEips = assignedeips
        end

        def deserialize(params)
          @NatId = params['NatId']
          @VpcId = params['VpcId']
          @AssignedEips = params['AssignedEips']
        end
      end

      # UnbindEipsFromNatGateway返回参数结构体
      class UnbindEipsFromNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # UnbindIpsFromNatGateway请求参数结构体
      class UnbindIpsFromNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param IpInfoSet: 部分IP信息；子网须以部分IP将加入NAT网关
        # @type IpInfoSet: Array

        attr_accessor :NatId, :VpcId, :IpInfoSet
        
        def initialize(natid=nil, vpcid=nil, ipinfoset=nil)
          @NatId = natid
          @VpcId = vpcid
          @IpInfoSet = ipinfoset
        end

        def deserialize(params)
          @NatId = params['NatId']
          @VpcId = params['VpcId']
          @IpInfoSet = params['IpInfoSet']
        end
      end

      # UnbindIpsFromNatGateway返回参数结构体
      class UnbindIpsFromNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # UnbindSubnetsFromNatGateway请求参数结构体
      class UnbindSubnetsFromNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param SubnetIds: 子网ID列表，子网不区分加入NAT网关的转发方式
        # @type SubnetIds: Array

        attr_accessor :NatId, :VpcId, :SubnetIds
        
        def initialize(natid=nil, vpcid=nil, subnetids=nil)
          @NatId = natid
          @VpcId = vpcid
          @SubnetIds = subnetids
        end

        def deserialize(params)
          @NatId = params['NatId']
          @VpcId = params['VpcId']
          @SubnetIds = params['SubnetIds']
        end
      end

      # UnbindSubnetsFromNatGateway返回参数结构体
      class UnbindSubnetsFromNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # UpgradeNatGateway请求参数结构体
      class UpgradeNatGatewayRequest < TencentCloud::Common::AbstractModel
        # @param NatId: NAT网关ID，例如：nat-kdm476mp
        # @type NatId: String
        # @param VpcId: 私有网络ID，例如：vpc-kd7d06of
        # @type VpcId: String
        # @param MaxConcurrent: 并发连接数规格；取值为1000000、3000000、10000000，分别对应小型、中型、大型NAT网关
        # @type MaxConcurrent: Integer

        attr_accessor :NatId, :VpcId, :MaxConcurrent
        
        def initialize(natid=nil, vpcid=nil, maxconcurrent=nil)
          @NatId = natid
          @VpcId = vpcid
          @MaxConcurrent = maxconcurrent
        end

        def deserialize(params)
          @NatId = params['NatId']
          @VpcId = params['VpcId']
          @MaxConcurrent = params['MaxConcurrent']
        end
      end

      # UpgradeNatGateway返回参数结构体
      class UpgradeNatGatewayResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
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

      # VPC信息
      class VpcInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络的唯一ID。
        # @type VpcId: String
        # @param VpcName: VPC的名称。
        # @type VpcName: String
        # @param CidrBlock: VPC的CIDR。
        # @type CidrBlock: String
        # @param Zone: 可用区
        # @type Zone: String
        # @param State: VPC状态
        # @type State: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IntVpcId: 整型私有网络ID。
        # @type IntVpcId: Integer

        attr_accessor :VpcId, :VpcName, :CidrBlock, :Zone, :State, :CreateTime, :IntVpcId
        
        def initialize(vpcid=nil, vpcname=nil, cidrblock=nil, zone=nil, state=nil, createtime=nil, intvpcid=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @CidrBlock = cidrblock
          @Zone = zone
          @State = state
          @CreateTime = createtime
          @IntVpcId = intvpcid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @CidrBlock = params['CidrBlock']
          @Zone = params['Zone']
          @State = params['State']
          @CreateTime = params['CreateTime']
          @IntVpcId = params['IntVpcId']
        end
      end

      # 对等连接对象
      class VpcPeerConnection < TencentCloud::Common::AbstractModel
        # @param VpcId: 本端VPC唯一ID
        # @type VpcId: String
        # @param PeerVpcId: 对端VPC唯一ID
        # @type PeerVpcId: String
        # @param AppId: 本端APPID
        # @type AppId: String
        # @param PeerAppId: 对端APPID
        # @type PeerAppId: String
        # @param VpcPeerConnectionId: 对等连接唯一ID
        # @type VpcPeerConnectionId: String
        # @param VpcPeerConnectionName: 对等连接名称
        # @type VpcPeerConnectionName: String
        # @param State: 对等连接状态。pending:申请中,available:运行中,expired:已过期,rejected:已拒绝,deleted:已删除
        # @type State: String
        # @param VpcZone: 本端VPC所属可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcZone: String
        # @param PeerVpcZone: 对端VPC所属可用区
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PeerVpcZone: String
        # @param Uin: 本端Uin
        # @type Uin: Integer
        # @param PeerUin: 对端Uin
        # @type PeerUin: Integer
        # @param PeerType: 对等连接类型
        # @type PeerType: Integer
        # @param Bandwidth: 对等连接带宽
        # @type Bandwidth: Integer
        # @param Region: 本端VPC地域
        # @type Region: String
        # @param PeerRegion: 对端VPC地域
        # @type PeerRegion: String
        # @param DeleteFlag: 是否允许删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeleteFlag: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :VpcId, :PeerVpcId, :AppId, :PeerAppId, :VpcPeerConnectionId, :VpcPeerConnectionName, :State, :VpcZone, :PeerVpcZone, :Uin, :PeerUin, :PeerType, :Bandwidth, :Region, :PeerRegion, :DeleteFlag, :CreateTime
        
        def initialize(vpcid=nil, peervpcid=nil, appid=nil, peerappid=nil, vpcpeerconnectionid=nil, vpcpeerconnectionname=nil, state=nil, vpczone=nil, peervpczone=nil, uin=nil, peeruin=nil, peertype=nil, bandwidth=nil, region=nil, peerregion=nil, deleteflag=nil, createtime=nil)
          @VpcId = vpcid
          @PeerVpcId = peervpcid
          @AppId = appid
          @PeerAppId = peerappid
          @VpcPeerConnectionId = vpcpeerconnectionid
          @VpcPeerConnectionName = vpcpeerconnectionname
          @State = state
          @VpcZone = vpczone
          @PeerVpcZone = peervpczone
          @Uin = uin
          @PeerUin = peeruin
          @PeerType = peertype
          @Bandwidth = bandwidth
          @Region = region
          @PeerRegion = peerregion
          @DeleteFlag = deleteflag
          @CreateTime = createtime
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @PeerVpcId = params['PeerVpcId']
          @AppId = params['AppId']
          @PeerAppId = params['PeerAppId']
          @VpcPeerConnectionId = params['VpcPeerConnectionId']
          @VpcPeerConnectionName = params['VpcPeerConnectionName']
          @State = params['State']
          @VpcZone = params['VpcZone']
          @PeerVpcZone = params['PeerVpcZone']
          @Uin = params['Uin']
          @PeerUin = params['PeerUin']
          @PeerType = params['PeerType']
          @Bandwidth = params['Bandwidth']
          @Region = params['Region']
          @PeerRegion = params['PeerRegion']
          @DeleteFlag = params['DeleteFlag']
          @CreateTime = params['CreateTime']
        end
      end

      # VPC限额信息
      class VpcQuota < TencentCloud::Common::AbstractModel
        # @param TypeId: 配额类型ID
        # @type TypeId: Integer
        # @param Quota: 配额
        # @type Quota: Integer

        attr_accessor :TypeId, :Quota
        
        def initialize(typeid=nil, quota=nil)
          @TypeId = typeid
          @Quota = quota
        end

        def deserialize(params)
          @TypeId = params['TypeId']
          @Quota = params['Quota']
        end
      end

      # VPC占用资源
      class VpcResource < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # @type VpcName: String
        # @param CidrBlock: 私有网络的CIDR
        # @type CidrBlock: String
        # @param SubnetNum: 子网个数
        # @type SubnetNum: Integer
        # @param NatNum: NAT个数
        # @type NatNum: Integer
        # @param State: VPC状态
        # @type State: String
        # @param MonitorFlag: 是否开启监控
        # @type MonitorFlag: Boolean
        # @param CpmNum: 物理机个数
        # @type CpmNum: Integer
        # @param LeaveIpNum: 可用IP个数
        # @type LeaveIpNum: Integer
        # @param LbNum: 负载均衡个数
        # @type LbNum: Integer
        # @param TrafficMirrorNum: 流量镜像网关个数
        # @type TrafficMirrorNum: Integer
        # @param EipNum: 弹性IP个数
        # @type EipNum: Integer
        # @param PlgwNum: 专线网关个数
        # @type PlgwNum: Integer
        # @param PlvpNum: 专线通道个数
        # @type PlvpNum: Integer
        # @param SslVpnGwNum: ssl vpn网关个数
        # @type SslVpnGwNum: Integer
        # @param VpcPeerNum: 对等链接个数
        # @type VpcPeerNum: Integer
        # @param IpsecVpnGwNum: ipsec vpn网关个数
        # @type IpsecVpnGwNum: Integer
        # @param Zone: 可用区
        # @type Zone: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param IsOld: 是否老专区VPC
        # @type IsOld: Boolean
        # @param CcnServiceNum: 云联网服务个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CcnServiceNum: Integer
        # @param VpcPeerLimitToAllRegion: VPC允许创建的对等连接个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcPeerLimitToAllRegion: Integer
        # @param VpcPeerLimitToSameRegion: VPC允许创建的同地域的对等连接的个数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VpcPeerLimitToSameRegion: Integer
        # @param IntVpcId: 整型私有网络ID
        # @type IntVpcId: Integer

        attr_accessor :VpcId, :VpcName, :CidrBlock, :SubnetNum, :NatNum, :State, :MonitorFlag, :CpmNum, :LeaveIpNum, :LbNum, :TrafficMirrorNum, :EipNum, :PlgwNum, :PlvpNum, :SslVpnGwNum, :VpcPeerNum, :IpsecVpnGwNum, :Zone, :CreateTime, :IsOld, :CcnServiceNum, :VpcPeerLimitToAllRegion, :VpcPeerLimitToSameRegion, :IntVpcId
        
        def initialize(vpcid=nil, vpcname=nil, cidrblock=nil, subnetnum=nil, natnum=nil, state=nil, monitorflag=nil, cpmnum=nil, leaveipnum=nil, lbnum=nil, trafficmirrornum=nil, eipnum=nil, plgwnum=nil, plvpnum=nil, sslvpngwnum=nil, vpcpeernum=nil, ipsecvpngwnum=nil, zone=nil, createtime=nil, isold=nil, ccnservicenum=nil, vpcpeerlimittoallregion=nil, vpcpeerlimittosameregion=nil, intvpcid=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @CidrBlock = cidrblock
          @SubnetNum = subnetnum
          @NatNum = natnum
          @State = state
          @MonitorFlag = monitorflag
          @CpmNum = cpmnum
          @LeaveIpNum = leaveipnum
          @LbNum = lbnum
          @TrafficMirrorNum = trafficmirrornum
          @EipNum = eipnum
          @PlgwNum = plgwnum
          @PlvpNum = plvpnum
          @SslVpnGwNum = sslvpngwnum
          @VpcPeerNum = vpcpeernum
          @IpsecVpnGwNum = ipsecvpngwnum
          @Zone = zone
          @CreateTime = createtime
          @IsOld = isold
          @CcnServiceNum = ccnservicenum
          @VpcPeerLimitToAllRegion = vpcpeerlimittoallregion
          @VpcPeerLimitToSameRegion = vpcpeerlimittosameregion
          @IntVpcId = intvpcid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @CidrBlock = params['CidrBlock']
          @SubnetNum = params['SubnetNum']
          @NatNum = params['NatNum']
          @State = params['State']
          @MonitorFlag = params['MonitorFlag']
          @CpmNum = params['CpmNum']
          @LeaveIpNum = params['LeaveIpNum']
          @LbNum = params['LbNum']
          @TrafficMirrorNum = params['TrafficMirrorNum']
          @EipNum = params['EipNum']
          @PlgwNum = params['PlgwNum']
          @PlvpNum = params['PlvpNum']
          @SslVpnGwNum = params['SslVpnGwNum']
          @VpcPeerNum = params['VpcPeerNum']
          @IpsecVpnGwNum = params['IpsecVpnGwNum']
          @Zone = params['Zone']
          @CreateTime = params['CreateTime']
          @IsOld = params['IsOld']
          @CcnServiceNum = params['CcnServiceNum']
          @VpcPeerLimitToAllRegion = params['VpcPeerLimitToAllRegion']
          @VpcPeerLimitToSameRegion = params['VpcPeerLimitToSameRegion']
          @IntVpcId = params['IntVpcId']
        end
      end

      # 创建VPC下默认子网
      class VpcSubnetCreateInfo < TencentCloud::Common::AbstractModel
        # @param SubnetName: 子网名称
        # @type SubnetName: String
        # @param CidrBlock: 子网的CIDR
        # @type CidrBlock: String
        # @param Zone: 子网的可用区
        # @type Zone: String

        attr_accessor :SubnetName, :CidrBlock, :Zone
        
        def initialize(subnetname=nil, cidrblock=nil, zone=nil)
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @Zone = zone
        end

        def deserialize(params)
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @Zone = params['Zone']
        end
      end

      # VPC视图子网信息
      class VpcSubnetViewInfo < TencentCloud::Common::AbstractModel
        # @param SubnetId: 子网ID
        # @type SubnetId: String
        # @param SubnetName: 子网名称
        # @type SubnetName: String
        # @param CidrBlock: 子网CIDR
        # @type CidrBlock: String
        # @param CpmNum: 子网下设备个数
        # @type CpmNum: Integer
        # @param LbNum: 内网负载均衡个数
        # @type LbNum: Integer
        # @param Zone: 子网所在可用区
        # @type Zone: String

        attr_accessor :SubnetId, :SubnetName, :CidrBlock, :CpmNum, :LbNum, :Zone
        
        def initialize(subnetid=nil, subnetname=nil, cidrblock=nil, cpmnum=nil, lbnum=nil, zone=nil)
          @SubnetId = subnetid
          @SubnetName = subnetname
          @CidrBlock = cidrblock
          @CpmNum = cpmnum
          @LbNum = lbnum
          @Zone = zone
        end

        def deserialize(params)
          @SubnetId = params['SubnetId']
          @SubnetName = params['SubnetName']
          @CidrBlock = params['CidrBlock']
          @CpmNum = params['CpmNum']
          @LbNum = params['LbNum']
          @Zone = params['Zone']
        end
      end

      # VPC视图信息
      class VpcViewInfo < TencentCloud::Common::AbstractModel
        # @param VpcId: 私有网络ID
        # @type VpcId: String
        # @param VpcName: 私有网络名称
        # @type VpcName: String
        # @param CidrBlock: 私有网络CIDR
        # @type CidrBlock: String
        # @param Zone: 私有网络所在可用区
        # @type Zone: String
        # @param LbNum: 外网负载均衡个数
        # @type LbNum: Integer
        # @param EipNum: 弹性公网IP个数
        # @type EipNum: Integer
        # @param NatNum: NAT网关个数
        # @type NatNum: Integer
        # @param SubnetSet: 子网列表
        # @type SubnetSet: Array

        attr_accessor :VpcId, :VpcName, :CidrBlock, :Zone, :LbNum, :EipNum, :NatNum, :SubnetSet
        
        def initialize(vpcid=nil, vpcname=nil, cidrblock=nil, zone=nil, lbnum=nil, eipnum=nil, natnum=nil, subnetset=nil)
          @VpcId = vpcid
          @VpcName = vpcname
          @CidrBlock = cidrblock
          @Zone = zone
          @LbNum = lbnum
          @EipNum = eipnum
          @NatNum = natnum
          @SubnetSet = subnetset
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @VpcName = params['VpcName']
          @CidrBlock = params['CidrBlock']
          @Zone = params['Zone']
          @LbNum = params['LbNum']
          @EipNum = params['EipNum']
          @NatNum = params['NatNum']
          @SubnetSet = params['SubnetSet']
        end
      end

      # VPN通道对象。
      class VpnConnection < TencentCloud::Common::AbstractModel
        # @param VpnConnectionId: 通道实例ID。
        # @type VpnConnectionId: String
        # @param VpnConnectionName: 通道名称。
        # @type VpnConnectionName: String
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param VpnGatewayId: VPN网关实例ID。
        # @type VpnGatewayId: String
        # @param CustomerGatewayId: 对端网关实例ID。
        # @type CustomerGatewayId: String
        # @param PreShareKey: 预共享密钥。
        # @type PreShareKey: String
        # @param VpnProto: 通道传输协议。
        # @type VpnProto: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param State: 通道的生产状态
        # @type State: String
        # @param NetStatus: 通道连接状态
        # @type NetStatus: String
        # @param SecurityPolicyDatabaseSet: SPD。
        # @type SecurityPolicyDatabaseSet: Array
        # @param IKEOptionsSpecification: IKE选项。
        # @type IKEOptionsSpecification: :class:`Tencentcloud::Bmvpc.v20180625.models.IKEOptionsSpecification`
        # @param IPSECOptionsSpecification: IPSEC选项。
        # @type IPSECOptionsSpecification: :class:`Tencentcloud::Bmvpc.v20180625.models.IPSECOptionsSpecification`
        # @param Zone: 可用区
        # @type Zone: String
        # @param VpcCidrBlock: VPC网段
        # @type VpcCidrBlock: String
        # @param VpcName: VPC名称
        # @type VpcName: String
        # @param VpnGatewayName: VPN网关名称
        # @type VpnGatewayName: String
        # @param CustomerGatewayName: 对端网关名称
        # @type CustomerGatewayName: String
        # @param DestinationCidr: IPSEC VPN通道路由策略目的端地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestinationCidr: Array
        # @param SourceCidr: IPSEC VPN通道路由策略源端地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceCidr: Array

        attr_accessor :VpnConnectionId, :VpnConnectionName, :VpcId, :VpnGatewayId, :CustomerGatewayId, :PreShareKey, :VpnProto, :CreateTime, :State, :NetStatus, :SecurityPolicyDatabaseSet, :IKEOptionsSpecification, :IPSECOptionsSpecification, :Zone, :VpcCidrBlock, :VpcName, :VpnGatewayName, :CustomerGatewayName, :DestinationCidr, :SourceCidr
        
        def initialize(vpnconnectionid=nil, vpnconnectionname=nil, vpcid=nil, vpngatewayid=nil, customergatewayid=nil, presharekey=nil, vpnproto=nil, createtime=nil, state=nil, netstatus=nil, securitypolicydatabaseset=nil, ikeoptionsspecification=nil, ipsecoptionsspecification=nil, zone=nil, vpccidrblock=nil, vpcname=nil, vpngatewayname=nil, customergatewayname=nil, destinationcidr=nil, sourcecidr=nil)
          @VpnConnectionId = vpnconnectionid
          @VpnConnectionName = vpnconnectionname
          @VpcId = vpcid
          @VpnGatewayId = vpngatewayid
          @CustomerGatewayId = customergatewayid
          @PreShareKey = presharekey
          @VpnProto = vpnproto
          @CreateTime = createtime
          @State = state
          @NetStatus = netstatus
          @SecurityPolicyDatabaseSet = securitypolicydatabaseset
          @IKEOptionsSpecification = ikeoptionsspecification
          @IPSECOptionsSpecification = ipsecoptionsspecification
          @Zone = zone
          @VpcCidrBlock = vpccidrblock
          @VpcName = vpcname
          @VpnGatewayName = vpngatewayname
          @CustomerGatewayName = customergatewayname
          @DestinationCidr = destinationcidr
          @SourceCidr = sourcecidr
        end

        def deserialize(params)
          @VpnConnectionId = params['VpnConnectionId']
          @VpnConnectionName = params['VpnConnectionName']
          @VpcId = params['VpcId']
          @VpnGatewayId = params['VpnGatewayId']
          @CustomerGatewayId = params['CustomerGatewayId']
          @PreShareKey = params['PreShareKey']
          @VpnProto = params['VpnProto']
          @CreateTime = params['CreateTime']
          @State = params['State']
          @NetStatus = params['NetStatus']
          @SecurityPolicyDatabaseSet = params['SecurityPolicyDatabaseSet']
          unless params['IKEOptionsSpecification'].nil?
            @IKEOptionsSpecification = IKEOptionsSpecification.new.deserialize(params[IKEOptionsSpecification])
          end
          unless params['IPSECOptionsSpecification'].nil?
            @IPSECOptionsSpecification = IPSECOptionsSpecification.new.deserialize(params[IPSECOptionsSpecification])
          end
          @Zone = params['Zone']
          @VpcCidrBlock = params['VpcCidrBlock']
          @VpcName = params['VpcName']
          @VpnGatewayName = params['VpnGatewayName']
          @CustomerGatewayName = params['CustomerGatewayName']
          @DestinationCidr = params['DestinationCidr']
          @SourceCidr = params['SourceCidr']
        end
      end

      # VPN网关对象。
      class VpnGateway < TencentCloud::Common::AbstractModel
        # @param VpnGatewayId: 网关实例ID。
        # @type VpnGatewayId: String
        # @param VpcId: VPC实例ID。
        # @type VpcId: String
        # @param VpnGatewayName: 网关实例名称。
        # @type VpnGatewayName: String
        # @param VpcCidrBlock: VPC网段
        # @type VpcCidrBlock: String
        # @param VpcName: VPC名称
        # @type VpcName: String
        # @param InternetMaxBandwidthOut: 网关出带宽。
        # @type InternetMaxBandwidthOut: Integer
        # @param State: 网关实例状态
        # @type State: String
        # @param PublicIpAddress: 网关公网IP。
        # @type PublicIpAddress: String
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param Zone: 可用区，如：ap-guangzhou
        # @type Zone: String
        # @param VpnConnNum: VPN网关的通道数
        # @type VpnConnNum: Integer

        attr_accessor :VpnGatewayId, :VpcId, :VpnGatewayName, :VpcCidrBlock, :VpcName, :InternetMaxBandwidthOut, :State, :PublicIpAddress, :CreateTime, :Zone, :VpnConnNum
        
        def initialize(vpngatewayid=nil, vpcid=nil, vpngatewayname=nil, vpccidrblock=nil, vpcname=nil, internetmaxbandwidthout=nil, state=nil, publicipaddress=nil, createtime=nil, zone=nil, vpnconnnum=nil)
          @VpnGatewayId = vpngatewayid
          @VpcId = vpcid
          @VpnGatewayName = vpngatewayname
          @VpcCidrBlock = vpccidrblock
          @VpcName = vpcname
          @InternetMaxBandwidthOut = internetmaxbandwidthout
          @State = state
          @PublicIpAddress = publicipaddress
          @CreateTime = createtime
          @Zone = zone
          @VpnConnNum = vpnconnnum
        end

        def deserialize(params)
          @VpnGatewayId = params['VpnGatewayId']
          @VpcId = params['VpcId']
          @VpnGatewayName = params['VpnGatewayName']
          @VpcCidrBlock = params['VpcCidrBlock']
          @VpcName = params['VpcName']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
          @State = params['State']
          @PublicIpAddress = params['PublicIpAddress']
          @CreateTime = params['CreateTime']
          @Zone = params['Zone']
          @VpnConnNum = params['VpnConnNum']
        end
      end

    end
  end
end

