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

require 'json'

module TencentCloud
  module Bmvpc
    module V20180625
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-06-25'
            api_endpoint = 'bmvpc.tencentcloudapi.com'
            sdk_version = 'BMVPC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 接受黑石对等连接

        # @param request: Request instance for AcceptVpcPeerConnection.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::AcceptVpcPeerConnectionRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::AcceptVpcPeerConnectionResponse`
        def AcceptVpcPeerConnection(request)
          body = send_request('AcceptVpcPeerConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcceptVpcPeerConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量注册虚拟IP，异步接口。通过接口来查询任务进度。每次请求最多注册256个IP

        # @param request: Request instance for AsyncRegisterIps.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::AsyncRegisterIpsRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::AsyncRegisterIpsResponse`
        def AsyncRegisterIps(request)
          body = send_request('AsyncRegisterIps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AsyncRegisterIpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # NAT网关绑定EIP接口，可将EIP绑定到NAT网关，该EIP作为访问外网的源IP地址，将流量发送到Internet

        # @param request: Request instance for BindEipsToNatGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::BindEipsToNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::BindEipsToNatGatewayResponse`
        def BindEipsToNatGateway(request)
          body = send_request('BindEipsToNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindEipsToNatGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可用于将子网的部分IP绑定到NAT网关

        # @param request: Request instance for BindIpsToNatGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::BindIpsToNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::BindIpsToNatGatewayResponse`
        def BindIpsToNatGateway(request)
          body = send_request('BindIpsToNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindIpsToNatGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # NAT网关绑定子网后，该子网内全部IP可出公网

        # @param request: Request instance for BindSubnetsToNatGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::BindSubnetsToNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::BindSubnetsToNatGatewayResponse`
        def BindSubnetsToNatGateway(request)
          body = send_request('BindSubnetsToNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindSubnetsToNatGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateCustomerGateway）用于创建对端网关。

        # @param request: Request instance for CreateCustomerGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateCustomerGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateCustomerGatewayResponse`
        def CreateCustomerGateway(request)
          body = send_request('CreateCustomerGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomerGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石Docker子网， 如果不指定VlanId，将会分配2000--2999范围的VlanId; 子网会关闭分布式网关

        # @param request: Request instance for CreateDockerSubnetWithVlan.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateDockerSubnetWithVlanRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateDockerSubnetWithVlanResponse`
        def CreateDockerSubnetWithVlan(request)
          body = send_request('CreateDockerSubnetWithVlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDockerSubnetWithVlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateHostedInterface）用于黑石托管机器加入带VLANID不为5的子网。

        # 1) 不能加入vlanId 为5的子网，只能加入VLANID范围为2000-2999的子网。
        # 2) 每台托管机器最多可以加入20个子网。
        # 3) 每次调用最多能支持传入10台托管机器。

        # @param request: Request instance for CreateHostedInterface.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateHostedInterfaceRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateHostedInterfaceResponse`
        def CreateHostedInterface(request)
          body = send_request('CreateHostedInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHostedInterfaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 物理机加入子网

        # @param request: Request instance for CreateInterfaces.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateInterfacesRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateInterfacesResponse`
        def CreateInterfaces(request)
          body = send_request('CreateInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建NAT网关接口，可针对网段方式、子网全部IP、子网部分IP这三种方式创建NAT网关

        # @param request: Request instance for CreateNatGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateNatGatewayResponse`
        def CreateNatGateway(request)
          body = send_request('CreateNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNatGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石路由表的路由规则

        # @param request: Request instance for CreateRoutePolicies.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateRoutePoliciesRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateRoutePoliciesResponse`
        def CreateRoutePolicies(request)
          body = send_request('CreateRoutePolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoutePoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石私有网络的子网
        # 访问管理: 用户可以对VpcId进行授权操作。例如设置资源为["qcs::bmvpc:::unVpc/vpc-xxxxx"]

        # @param request: Request instance for CreateSubnet.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateSubnetRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateSubnetResponse`
        def CreateSubnet(request)
          body = send_request('CreateSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubnetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石虚拟子网， 虚拟子网用于在黑石上创建虚拟网络，与黑石子网要做好规划。虚拟子网会分配2000-2999的VlanId。

        # @param request: Request instance for CreateVirtualSubnetWithVlan.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateVirtualSubnetWithVlanRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateVirtualSubnetWithVlanResponse`
        def CreateVirtualSubnetWithVlan(request)
          body = send_request('CreateVirtualSubnetWithVlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVirtualSubnetWithVlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石私有网络

        # @param request: Request instance for CreateVpc.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateVpcRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateVpcResponse`
        def CreateVpc(request)
          body = send_request('CreateVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建对等连接

        # @param request: Request instance for CreateVpcPeerConnection.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::CreateVpcPeerConnectionRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::CreateVpcPeerConnectionResponse`
        def CreateVpcPeerConnection(request)
          body = send_request('CreateVpcPeerConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpcPeerConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteCustomerGateway）用于删除对端网关。

        # @param request: Request instance for DeleteCustomerGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteCustomerGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteCustomerGatewayResponse`
        def DeleteCustomerGateway(request)
          body = send_request('DeleteCustomerGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomerGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于托管机器从VLANID不为5的子网中移除。
        # 1) 不能从vlanId 为5的子网中移除。
        # 2) 每次调用最多能支持传入10台物理机。

        # @param request: Request instance for DeleteHostedInterface.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteHostedInterfaceRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteHostedInterfaceResponse`
        def DeleteHostedInterface(request)
          body = send_request('DeleteHostedInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHostedInterfaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 托管机器移除子网批量接口，传入一台托管机器和多个子网，批量移除这些子网。异步接口，接口返回TaskId。

        # @param request: Request instance for DeleteHostedInterfaces.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteHostedInterfacesRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteHostedInterfacesResponse`
        def DeleteHostedInterfaces(request)
          body = send_request('DeleteHostedInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHostedInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 物理机移除子网批量接口，传入一台物理机和多个子网，批量移除这些子网。异步接口，接口返回TaskId。

        # @param request: Request instance for DeleteInterfaces.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteInterfacesRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteInterfacesResponse`
        def DeleteInterfaces(request)
          body = send_request('DeleteInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除NAT网关

        # @param request: Request instance for DeleteNatGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteNatGatewayResponse`
        def DeleteNatGateway(request)
          body = send_request('DeleteNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNatGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除黑石路由表路由规则

        # @param request: Request instance for DeleteRoutePolicy.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteRoutePolicyRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteRoutePolicyResponse`
        def DeleteRoutePolicy(request)
          body = send_request('DeleteRoutePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoutePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteSubnet）用于删除黑石私有网络子网。
        # 删除子网前，请清理该子网下所有资源，包括物理机、负载均衡、黑石数据库、弹性IP、NAT网关等资源

        # @param request: Request instance for DeleteSubnet.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteSubnetRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteSubnetResponse`
        def DeleteSubnet(request)
          body = send_request('DeleteSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSubnetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 退还虚拟IP。此接口只能退还虚拟IP，物理机IP不能退还。

        # @param request: Request instance for DeleteVirtualIp.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteVirtualIpRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteVirtualIpResponse`
        def DeleteVirtualIp(request)
          body = send_request('DeleteVirtualIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVirtualIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteVpc)用于删除黑石私有网络(VPC)。

        # 删除私有网络前，请清理该私有网络下所有资源，包括子网、负载均衡、弹性 IP、对等连接、NAT 网关、专线通道、SSLVPN 等资源。

        # @param request: Request instance for DeleteVpc.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteVpcRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteVpcResponse`
        def DeleteVpc(request)
          body = send_request('DeleteVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpcResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除黑石对等连接

        # @param request: Request instance for DeleteVpcPeerConnection.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteVpcPeerConnectionRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteVpcPeerConnectionResponse`
        def DeleteVpcPeerConnection(request)
          body = send_request('DeleteVpcPeerConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpcPeerConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DeleteVpnConnection)用于删除VPN通道。

        # @param request: Request instance for DeleteVpnConnection.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteVpnConnectionRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteVpnConnectionResponse`
        def DeleteVpnConnection(request)
          body = send_request('DeleteVpnConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpnConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteVpnGateway）用于删除VPN网关。

        # @param request: Request instance for DeleteVpnGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeleteVpnGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeleteVpnGatewayResponse`
        def DeleteVpnGateway(request)
          body = send_request('DeleteVpnGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpnGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 注销私有网络IP为空闲

        # @param request: Request instance for DeregisterIps.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DeregisterIpsRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DeregisterIpsResponse`
        def DeregisterIps(request)
          body = send_request('DeregisterIps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeregisterIpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCustomerGateways）用于查询对端网关列表。

        # @param request: Request instance for DescribeCustomerGateways.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeCustomerGatewaysRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeCustomerGatewaysResponse`
        def DescribeCustomerGateways(request)
          body = send_request('DescribeCustomerGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomerGatewaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取NAT网关信息，包括NAT网关 ID、网关名称、私有网络、网关并发连接上限、绑定EIP列表等

        # @param request: Request instance for DescribeNatGateways.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeNatGatewaysRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeNatGatewaysResponse`
        def DescribeNatGateways(request)
          body = send_request('DescribeNatGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatGatewaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 可获取NAT网关绑定的子网信息

        # @param request: Request instance for DescribeNatSubnets.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeNatSubnetsRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeNatSubnetsResponse`
        def DescribeNatSubnets(request)
          body = send_request('DescribeNatSubnets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatSubnetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRoutePolicies）用于查询路由表条目。

        # @param request: Request instance for DescribeRoutePolicies.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeRoutePoliciesRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeRoutePoliciesResponse`
        def DescribeRoutePolicies(request)
          body = send_request('DescribeRoutePolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoutePoliciesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRouteTables）用于查询路由表。

        # @param request: Request instance for DescribeRouteTables.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeRouteTablesResponse`
        def DescribeRouteTables(request)
          body = send_request('DescribeRouteTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRouteTablesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取子网内可用IP列表

        # @param request: Request instance for DescribeSubnetAvailableIps.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeSubnetAvailableIpsRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeSubnetAvailableIpsResponse`
        def DescribeSubnetAvailableIps(request)
          body = send_request('DescribeSubnetAvailableIps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubnetAvailableIpsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 物理机可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询物理机加入的子网。

        # @param request: Request instance for DescribeSubnetByDevice.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeSubnetByDeviceRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeSubnetByDeviceResponse`
        def DescribeSubnetByDevice(request)
          body = send_request('DescribeSubnetByDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubnetByDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 托管可以加入物理机子网，虚拟子网，DOCKER子网，通过此接口可以查询托管加入的子网。

        # @param request: Request instance for DescribeSubnetByHostedDevice.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeSubnetByHostedDeviceRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeSubnetByHostedDeviceResponse`
        def DescribeSubnetByHostedDevice(request)
          body = send_request('DescribeSubnetByHostedDevice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubnetByHostedDeviceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSubnets）用于查询黑石子网列表。

        # @param request: Request instance for DescribeSubnets.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeSubnetsRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeSubnetsResponse`
        def DescribeSubnets(request)
          body = send_request('DescribeSubnets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubnetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据任务ID，获取任务的执行状态

        # @param request: Request instance for DescribeTaskStatus.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeTaskStatusResponse`
        def DescribeTaskStatus(request)
          body = send_request('DescribeTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取对等连接列表

        # @param request: Request instance for DescribeVpcPeerConnections.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcPeerConnectionsRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcPeerConnectionsResponse`
        def DescribeVpcPeerConnections(request)
          body = send_request('DescribeVpcPeerConnections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcPeerConnectionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeVpcQuota）用于查询用户VPC相关配额限制。

        # @param request: Request instance for DescribeVpcQuota.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcQuotaRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcQuotaResponse`
        def DescribeVpcQuota(request)
          body = send_request('DescribeVpcQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询黑石私有网络关联资源

        # @param request: Request instance for DescribeVpcResource.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcResourceRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcResourceResponse`
        def DescribeVpcResource(request)
          body = send_request('DescribeVpcResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeVpcView）用于查询VPC网络拓扑视图。

        # @param request: Request instance for DescribeVpcView.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcViewRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcViewResponse`
        def DescribeVpcView(request)
          body = send_request('DescribeVpcView', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcViewResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeVpcs）用于查询私有网络列表。
        # 本接口不传参数时，返回默认排序下的前20条VPC信息。

        # @param request: Request instance for DescribeVpcs.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcsRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpcsResponse`
        def DescribeVpcs(request)
          body = send_request('DescribeVpcs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        #  本接口（DescribeVpnConnections）查询VPN通道列表。

        # @param request: Request instance for DescribeVpnConnections.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpnConnectionsRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpnConnectionsResponse`
        def DescribeVpnConnections(request)
          body = send_request('DescribeVpnConnections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpnConnectionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeVpnGateways）用于查询VPN网关列表。

        # @param request: Request instance for DescribeVpnGateways.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpnGatewaysRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DescribeVpnGatewaysResponse`
        def DescribeVpnGateways(request)
          body = send_request('DescribeVpnGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpnGatewaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(DownloadCustomerGatewayConfiguration)用于下载VPN通道配置。

        # @param request: Request instance for DownloadCustomerGatewayConfiguration.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::DownloadCustomerGatewayConfigurationRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::DownloadCustomerGatewayConfigurationResponse`
        def DownloadCustomerGatewayConfiguration(request)
          body = send_request('DownloadCustomerGatewayConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadCustomerGatewayConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyCustomerGatewayAttribute）用于修改对端网关信息。

        # @param request: Request instance for ModifyCustomerGatewayAttribute.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ModifyCustomerGatewayAttributeRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ModifyCustomerGatewayAttributeResponse`
        def ModifyCustomerGatewayAttribute(request)
          body = send_request('ModifyCustomerGatewayAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomerGatewayAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改自定义路由

        # @param request: Request instance for ModifyRoutePolicy.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ModifyRoutePolicyRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ModifyRoutePolicyResponse`
        def ModifyRoutePolicy(request)
          body = send_request('ModifyRoutePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRoutePolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改路由表

        # @param request: Request instance for ModifyRouteTable.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ModifyRouteTableRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ModifyRouteTableResponse`
        def ModifyRouteTable(request)
          body = send_request('ModifyRouteTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRouteTableResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改子网属性

        # @param request: Request instance for ModifySubnetAttribute.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ModifySubnetAttributeRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ModifySubnetAttributeResponse`
        def ModifySubnetAttribute(request)
          body = send_request('ModifySubnetAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubnetAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改子网DHCP Relay属性

        # @param request: Request instance for ModifySubnetDHCPRelay.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ModifySubnetDHCPRelayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ModifySubnetDHCPRelayResponse`
        def ModifySubnetDHCPRelay(request)
          body = send_request('ModifySubnetDHCPRelay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubnetDHCPRelayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyVpcAttribute）用于修改VPC的标识名称和控制VPC的监控起停。

        # @param request: Request instance for ModifyVpcAttribute.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ModifyVpcAttributeRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ModifyVpcAttributeResponse`
        def ModifyVpcAttribute(request)
          body = send_request('ModifyVpcAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpcAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑石对等连接

        # @param request: Request instance for ModifyVpcPeerConnection.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ModifyVpcPeerConnectionRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ModifyVpcPeerConnectionResponse`
        def ModifyVpcPeerConnection(request)
          body = send_request('ModifyVpcPeerConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpcPeerConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyVpnConnectionAttribute）用于修改VPN通道。

        # @param request: Request instance for ModifyVpnConnectionAttribute.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ModifyVpnConnectionAttributeRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ModifyVpnConnectionAttributeResponse`
        def ModifyVpnConnectionAttribute(request)
          body = send_request('ModifyVpnConnectionAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpnConnectionAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyVpnGatewayAttribute）用于修改VPN网关属性。

        # @param request: Request instance for ModifyVpnGatewayAttribute.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ModifyVpnGatewayAttributeRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ModifyVpnGatewayAttributeResponse`
        def ModifyVpnGatewayAttribute(request)
          body = send_request('ModifyVpnGatewayAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpnGatewayAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拒绝黑石对等连接申请

        # @param request: Request instance for RejectVpcPeerConnection.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::RejectVpcPeerConnectionRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::RejectVpcPeerConnectionResponse`
        def RejectVpcPeerConnection(request)
          body = send_request('RejectVpcPeerConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RejectVpcPeerConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(ResetVpnConnection)用于重置VPN通道。

        # @param request: Request instance for ResetVpnConnection.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::ResetVpnConnectionRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::ResetVpnConnectionResponse`
        def ResetVpnConnection(request)
          body = send_request('ResetVpnConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetVpnConnectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # NAT网关解绑该EIP后，NAT网关将不会使用该EIP作为访问外网的源IP地址

        # @param request: Request instance for UnbindEipsFromNatGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::UnbindEipsFromNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::UnbindEipsFromNatGatewayResponse`
        def UnbindEipsFromNatGateway(request)
          body = send_request('UnbindEipsFromNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindEipsFromNatGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # NAT网关解绑IP接口，可将子网的部分IP从NAT网关中解绑

        # @param request: Request instance for UnbindIpsFromNatGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::UnbindIpsFromNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::UnbindIpsFromNatGatewayResponse`
        def UnbindIpsFromNatGateway(request)
          body = send_request('UnbindIpsFromNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindIpsFromNatGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # NAT网关解绑子网接口，可将子网解绑NAT网关

        # @param request: Request instance for UnbindSubnetsFromNatGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::UnbindSubnetsFromNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::UnbindSubnetsFromNatGatewayResponse`
        def UnbindSubnetsFromNatGateway(request)
          body = send_request('UnbindSubnetsFromNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindSubnetsFromNatGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 升级NAT网关接口，可NAT网关修改为小型NAT网关、中型NAT网关、以及大型NAT网关

        # @param request: Request instance for UpgradeNatGateway.
        # @type request: :class:`Tencentcloud::bmvpc::V20180625::UpgradeNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::bmvpc::V20180625::UpgradeNatGatewayResponse`
        def UpgradeNatGateway(request)
          body = send_request('UpgradeNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradeNatGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end