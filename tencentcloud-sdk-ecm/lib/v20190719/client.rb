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

require 'json'

module TencentCloud
  module Ecm
    module V20190719
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-07-19'
            api_endpoint = 'ecm.tencentcloudapi.com'
            sdk_version = 'ECM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 申请一个或多个弹性公网IP（简称 EIP）

        # @param request: Request instance for AllocateAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AllocateAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AllocateAddressesResponse`
        def AllocateAddresses(request)
          body = send_request('AllocateAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AllocateAddressesResponse.new
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

        # 本接口用于给IPv6地址分配公网带宽

        # @param request: Request instance for AllocateIpv6AddressesBandwidth.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AllocateIpv6AddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AllocateIpv6AddressesBandwidthResponse`
        def AllocateIpv6AddressesBandwidth(request)
          body = send_request('AllocateIpv6AddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AllocateIpv6AddressesBandwidthResponse.new
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

        # 本接口（AssignIpv6Addresses）用于弹性网卡申请IPv6地址。

        # @param request: Request instance for AssignIpv6Addresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AssignIpv6AddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AssignIpv6AddressesResponse`
        def AssignIpv6Addresses(request)
          body = send_request('AssignIpv6Addresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssignIpv6AddressesResponse.new
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

        # 本接口（AssignIpv6CidrBlock）用于分配IPv6网段。

        # 使用本接口前，您需要已有VPC实例，如果没有可通过接口CreateVpc创建。

        # @param request: Request instance for AssignIpv6CidrBlock.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AssignIpv6CidrBlockRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AssignIpv6CidrBlockResponse`
        def AssignIpv6CidrBlock(request)
          body = send_request('AssignIpv6CidrBlock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssignIpv6CidrBlockResponse.new
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

        # 本接口（AssignIpv6CidrBlocks）用于分配IPv6网段。

        # 使用本接口前，您需要已有VPC实例，如果没有可通过接口CreateVpc创建。
        # 每个VPC 可以同时支持运营商网络('CMCC'-中国移动, 'CTCC'-中国电信, 'CUCC'-中国联调)。本接口可以同时申请不同类型的IPv6网段

        # @param request: Request instance for AssignIpv6CidrBlocks.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AssignIpv6CidrBlocksRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AssignIpv6CidrBlocksResponse`
        def AssignIpv6CidrBlocks(request)
          body = send_request('AssignIpv6CidrBlocks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssignIpv6CidrBlocksResponse.new
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

        # 本接口（AssignIpv6SubnetCidrBlock）用于分配IPv6子网段。

        # 给子网分配 IPv6 网段，要求子网所属 VPC 已获得 IPv6 网段。如果尚未分配，请先通过接口 AssignIpv6CidrBlock 给子网所属 VPC 分配一个 IPv6 网段。否则无法分配 IPv6 子网段。
        # 每个子网只能分配一个IPv6网段。

        # @param request: Request instance for AssignIpv6SubnetCidrBlock.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AssignIpv6SubnetCidrBlockRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AssignIpv6SubnetCidrBlockResponse`
        def AssignIpv6SubnetCidrBlock(request)
          body = send_request('AssignIpv6SubnetCidrBlock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssignIpv6SubnetCidrBlockResponse.new
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

        # 弹性网卡申请内网 IP

        # @param request: Request instance for AssignPrivateIpAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AssignPrivateIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AssignPrivateIpAddressesResponse`
        def AssignPrivateIpAddresses(request)
          body = send_request('AssignPrivateIpAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssignPrivateIpAddressesResponse.new
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

        # 将弹性公网IP（简称 EIP）绑定到实例或弹性网卡的指定内网 IP 上。
        # 将 EIP 绑定到实例（ECM）上，其本质是将 EIP 绑定到实例上主网卡的主内网 IP 上。
        # 将 EIP 绑定到指定网卡的内网 IP上，内网IP已经绑定了EIP或普通公网IP，则反馈失败。必须先解绑该 EIP，才能再绑定新的。
        # 只有状态为 UNBIND 的 EIP 才能够绑定内网IP。

        # @param request: Request instance for AssociateAddress.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AssociateAddressRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AssociateAddressResponse`
        def AssociateAddress(request)
          body = send_request('AssociateAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateAddressResponse.new
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

        # 绑定安全组

        # @param request: Request instance for AssociateSecurityGroups.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AssociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AssociateSecurityGroupsResponse`
        def AssociateSecurityGroups(request)
          body = send_request('AssociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateSecurityGroupsResponse.new
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

        # CBS在ECM早已下线

        # 本接口（AttachDisks）用于挂载云硬盘。

        # * 支持批量操作，将多块云盘挂载到同一云主机。如果多个云盘中存在不允许挂载的云盘，则操作不执行，返回特定的错误码。
        # * 本接口为异步接口，当挂载云盘的请求成功返回时，表示后台已发起挂载云盘的操作，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHING”变为“ATTACHED”，则为挂载成功。

        # @param request: Request instance for AttachDisks.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AttachDisksRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AttachDisksResponse`
        def AttachDisks(request)
          body = send_request('AttachDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachDisksResponse.new
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

        # 弹性网卡绑定云主机

        # @param request: Request instance for AttachNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::AttachNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::AttachNetworkInterfaceResponse`
        def AttachNetworkInterface(request)
          body = send_request('AttachNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachNetworkInterfaceResponse.new
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

        # 批量解绑后端服务。

        # @param request: Request instance for BatchDeregisterTargets.
        # @type request: :class:`Tencentcloud::ecm::V20190719::BatchDeregisterTargetsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::BatchDeregisterTargetsResponse`
        def BatchDeregisterTargets(request)
          body = send_request('BatchDeregisterTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeregisterTargetsResponse.new
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

        # 批量修改监听器绑定的后端机器的转发权重。

        # @param request: Request instance for BatchModifyTargetWeight.
        # @type request: :class:`Tencentcloud::ecm::V20190719::BatchModifyTargetWeightRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::BatchModifyTargetWeightResponse`
        def BatchModifyTargetWeight(request)
          body = send_request('BatchModifyTargetWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchModifyTargetWeightResponse.new
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

        # 批量绑定后端目标。

        # @param request: Request instance for BatchRegisterTargets.
        # @type request: :class:`Tencentcloud::ecm::V20190719::BatchRegisterTargetsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::BatchRegisterTargetsResponse`
        def BatchRegisterTargets(request)
          body = send_request('BatchRegisterTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchRegisterTargetsResponse.new
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

        # CBS在ECM早已下线

        # 本接口（CreateDisks）用于创建云硬盘。

        # * 预付费云盘的购买会预先扣除本次云盘购买所需金额，在调用本接口前请确保账户余额充足。
        # * 本接口支持传入数据盘快照来创建云盘，实现将快照数据复制到新购云盘上。
        # * 本接口为异步接口，当创建请求下发成功后会返回一个新建的云盘ID列表，此时云盘的创建并未立即完成。可以通过调用[DescribeDisks](/document/product/362/16315)接口根据DiskId查询对应云盘，如果能查到云盘，且状态为'UNATTACHED'或'ATTACHED'，则表示创建成功。

        # @param request: Request instance for CreateDisks.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateDisksRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateDisksResponse`
        def CreateDisks(request)
          body = send_request('CreateDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDisksResponse.new
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

        # 本接口（CreateHaVip）用于创建高可用虚拟IP（HAVIP）

        # @param request: Request instance for CreateHaVip.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateHaVipRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateHaVipResponse`
        def CreateHaVip(request)
          body = send_request('CreateHaVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHaVipResponse.new
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

        # 本接口(CreateImage)用于将实例的系统盘制作为新镜像，创建后的镜像可以用于创建实例。

        # @param request: Request instance for CreateImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateImageResponse`
        def CreateImage(request)
          body = send_request('CreateImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageResponse.new
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

        # 用于创建一个 OpenSSH RSA 密钥对，可以用于登录 Linux 实例。

        # @param request: Request instance for CreateKeyPair.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateKeyPairRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateKeyPairResponse`
        def CreateKeyPair(request)
          body = send_request('CreateKeyPair', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateKeyPairResponse.new
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

        # 创建负载均衡监听器。

        # @param request: Request instance for CreateListener.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateListenerRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateListenerResponse`
        def CreateListener(request)
          body = send_request('CreateListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateListenerResponse.new
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

        # 购买负载均衡实例。

        # @param request: Request instance for CreateLoadBalancer.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateLoadBalancerResponse`
        def CreateLoadBalancer(request)
          body = send_request('CreateLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoadBalancerResponse.new
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

        # 创建模块

        # @param request: Request instance for CreateModule.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateModuleRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateModuleResponse`
        def CreateModule(request)
          body = send_request('CreateModule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateModuleResponse.new
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

        # 创建弹性网卡

        # @param request: Request instance for CreateNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateNetworkInterfaceResponse`
        def CreateNetworkInterface(request)
          body = send_request('CreateNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetworkInterfaceResponse.new
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

        # 创建了VPC后，系统会创建一个默认路由表，所有新建的子网都会关联到默认路由表。默认情况下您可以直接使用默认路由表来管理您的路由策略。当您的路由策略较多时，您可以调用创建路由表接口创建更多路由表管理您的路由策略。

        # @param request: Request instance for CreateRouteTable.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateRouteTableRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateRouteTableResponse`
        def CreateRouteTable(request)
          body = send_request('CreateRouteTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRouteTableResponse.new
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

        # 创建路由策略

        # @param request: Request instance for CreateRoutes.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateRoutesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateRoutesResponse`
        def CreateRoutes(request)
          body = send_request('CreateRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoutesResponse.new
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

        # 创建安全组

        # @param request: Request instance for CreateSecurityGroup.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateSecurityGroupResponse`
        def CreateSecurityGroup(request)
          body = send_request('CreateSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityGroupResponse.new
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

        # <p>本接口（CreateSecurityGroupPolicies）用于创建安全组规则（SecurityGroupPolicy）。</p>
        # <p>在 SecurityGroupPolicySet 参数中：</p>
        # <ul>
        # <li>Version 安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。</li>
        # <li>在创建出站和入站规则（Egress 和 Ingress）时：<ul>
        # <li>Protocol 字段支持输入TCP, UDP, ICMP, GRE, ALL。</li>
        # <li>CidrBlock 字段允许输入符合cidr格式标准的任意字符串。在基础网络中，如果 CidrBlock 包含您的账户内的云服务器之外的设备在腾讯云的内网 IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。</li>
        # <li>SecurityGroupId 字段允许输入与待修改的安全组位于相同项目中的安全组 ID，包括这个安全组 ID 本身，代表安全组下所有云服务器的内网 IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个 ID 所关联的云服务器变化而变化，不需要重新修改。</li>
        # <li>Port 字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当 Protocol 字段是 TCP 或 UDP 时，Port 字段才被接受，即 Protocol 字段不是 TCP 或 UDP 时，Protocol 和 Port 排他关系，不允许同时输入，否则会接口报错。</li>
        # <li>Action 字段只允许输入 ACCEPT 或 DROP。</li>
        # <li>CidrBlock, SecurityGroupId, AddressTemplate 是排他关系，不允许同时输入，Protocol + Port 和 ServiceTemplate 二者是排他关系，不允许同时输入。</li>
        # <li>一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。</li>
        # </ul></li></ul>
        # <p>默认接口请求频率限制：20次/秒。</p>

        # @param request: Request instance for CreateSecurityGroupPolicies.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateSecurityGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateSecurityGroupPoliciesResponse`
        def CreateSecurityGroupPolicies(request)
          body = send_request('CreateSecurityGroupPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityGroupPoliciesResponse.new
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

        # 创建子网，若创建成功，则此子网会成为此可用区的默认子网。

        # @param request: Request instance for CreateSubnet.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateSubnetRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateSubnetResponse`
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

        # 创建私有网络

        # @param request: Request instance for CreateVpc.
        # @type request: :class:`Tencentcloud::ecm::V20190719::CreateVpcRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::CreateVpcResponse`
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

        # 用于删除高可用虚拟IP（HAVIP）

        # @param request: Request instance for DeleteHaVip.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteHaVipRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteHaVipResponse`
        def DeleteHaVip(request)
          body = send_request('DeleteHaVip', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHaVipResponse.new
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

        # 删除镜像

        # @param request: Request instance for DeleteImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteImageResponse`
        def DeleteImage(request)
          body = send_request('DeleteImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageResponse.new
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

        # 删除负载均衡监听器。

        # @param request: Request instance for DeleteListener.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteListenerRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteListenerResponse`
        def DeleteListener(request)
          body = send_request('DeleteListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteListenerResponse.new
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

        # 删除负载均衡实例。

        # @param request: Request instance for DeleteLoadBalancer.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteLoadBalancerResponse`
        def DeleteLoadBalancer(request)
          body = send_request('DeleteLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoadBalancerResponse.new
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

        # 删除负载均衡多个监听器

        # @param request: Request instance for DeleteLoadBalancerListeners.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteLoadBalancerListenersRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteLoadBalancerListenersResponse`
        def DeleteLoadBalancerListeners(request)
          body = send_request('DeleteLoadBalancerListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLoadBalancerListenersResponse.new
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

        # 删除业务模块

        # @param request: Request instance for DeleteModule.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteModuleRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteModuleResponse`
        def DeleteModule(request)
          body = send_request('DeleteModule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteModuleResponse.new
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

        # 删除弹性网卡

        # @param request: Request instance for DeleteNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteNetworkInterfaceResponse`
        def DeleteNetworkInterface(request)
          body = send_request('DeleteNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNetworkInterfaceResponse.new
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

        # 删除路由表

        # @param request: Request instance for DeleteRouteTable.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteRouteTableRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteRouteTableResponse`
        def DeleteRouteTable(request)
          body = send_request('DeleteRouteTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRouteTableResponse.new
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

        # 对某个路由表批量删除路由策略

        # @param request: Request instance for DeleteRoutes.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteRoutesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteRoutesResponse`
        def DeleteRoutes(request)
          body = send_request('DeleteRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoutesResponse.new
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

        # 只有当前账号下的安全组允许被删除。
        # 安全组实例ID如果在其他安全组的规则中被引用，则无法直接删除。这种情况下，需要先进行规则修改，再删除安全组。
        # 删除的安全组无法再找回，请谨慎调用。

        # @param request: Request instance for DeleteSecurityGroup.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteSecurityGroupResponse`
        def DeleteSecurityGroup(request)
          body = send_request('DeleteSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityGroupResponse.new
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

        # SecurityGroupPolicySet.Version 用于指定要操作的安全组的版本。传入 Version 版本号若不等于当前安全组的最新版本，将返回失败；若不传 Version 则直接删除指定PolicyIndex的规则。

        # @param request: Request instance for DeleteSecurityGroupPolicies.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteSecurityGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteSecurityGroupPoliciesResponse`
        def DeleteSecurityGroupPolicies(request)
          body = send_request('DeleteSecurityGroupPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityGroupPoliciesResponse.new
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

        # CBS在ECM早已下线

        # 本接口（DeleteSnapshots）用于删除快照。

        # * 快照必须处于NORMAL状态，快照状态可以通过[DescribeSnapshots](/document/product/362/15647)接口查询，见输出参数中SnapshotState字段解释。
        # * 支持批量操作。如果多个快照存在无法删除的快照，则操作不执行，以返回特定的错误码返回。

        # @param request: Request instance for DeleteSnapshots.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteSnapshotsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteSnapshotsResponse`
        def DeleteSnapshots(request)
          body = send_request('DeleteSnapshots', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSnapshotsResponse.new
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

        # 删除子网，若子网为可用区下的默认子网，则默认子网会回退到系统自动创建的默认子网，非用户最新创建的子网。若默认子网不满足需求，可调用设置默认子网接口设置。

        # @param request: Request instance for DeleteSubnet.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteSubnetRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteSubnetResponse`
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

        # 删除私有网络

        # @param request: Request instance for DeleteVpc.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DeleteVpcRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DeleteVpcResponse`
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

        # 查询您账户的弹性公网IP（简称 EIP）在当前地域的配额信息

        # @param request: Request instance for DescribeAddressQuota.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeAddressQuotaRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeAddressQuotaResponse`
        def DescribeAddressQuota(request)
          body = send_request('DescribeAddressQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressQuotaResponse.new
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

        # 查询弹性公网IP列表

        # @param request: Request instance for DescribeAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeAddressesResponse`
        def DescribeAddresses(request)
          body = send_request('DescribeAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressesResponse.new
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

        # 获取概览页统计的基本数据

        # @param request: Request instance for DescribeBaseOverview.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeBaseOverviewRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeBaseOverviewResponse`
        def DescribeBaseOverview(request)
          body = send_request('DescribeBaseOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBaseOverviewResponse.new
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

        # 获取带宽硬盘等数据的限制

        # @param request: Request instance for DescribeConfig.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeConfigRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeConfigResponse`
        def DescribeConfig(request)
          body = send_request('DescribeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigResponse.new
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

        # 查询导入镜像任务

        # @param request: Request instance for DescribeCustomImageTask.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeCustomImageTaskRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeCustomImageTaskResponse`
        def DescribeCustomImageTask(request)
          body = send_request('DescribeCustomImageTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomImageTaskResponse.new
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

        # 查询可用区的默认子网

        # @param request: Request instance for DescribeDefaultSubnet.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeDefaultSubnetRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeDefaultSubnetResponse`
        def DescribeDefaultSubnet(request)
          body = send_request('DescribeDefaultSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefaultSubnetResponse.new
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

        # CBS在ECM早已下线

        # 本接口（DescribeDisks）用于查询云硬盘列表。

        # * 可以根据云硬盘ID、云硬盘类型或者云硬盘状态等信息来查询云硬盘的详细信息，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
        # * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的云硬盘列表。

        # @param request: Request instance for DescribeDisks.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeDisksRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeDisksResponse`
        def DescribeDisks(request)
          body = send_request('DescribeDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDisksResponse.new
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

        # 用于查询高可用虚拟IP（HAVIP）列表。

        # @param request: Request instance for DescribeHaVips.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeHaVipsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeHaVipsResponse`
        def DescribeHaVips(request)
          body = send_request('DescribeHaVips', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHaVipsResponse.new
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

        # 展示镜像列表

        # @param request: Request instance for DescribeImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeImageResponse`
        def DescribeImage(request)
          body = send_request('DescribeImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageResponse.new
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

        # 查询外部导入镜像支持的OS列表

        # @param request: Request instance for DescribeImportImageOs.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeImportImageOsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeImportImageOsResponse`
        def DescribeImportImageOs(request)
          body = send_request('DescribeImportImageOs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImportImageOsResponse.new
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

        # 获取机型配置列表

        # @param request: Request instance for DescribeInstanceTypeConfig.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeInstanceTypeConfigRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeInstanceTypeConfigResponse`
        def DescribeInstanceTypeConfig(request)
          body = send_request('DescribeInstanceTypeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceTypeConfigResponse.new
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

        # 查询实例管理终端地址

        # @param request: Request instance for DescribeInstanceVncUrl.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeInstanceVncUrlRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeInstanceVncUrlResponse`
        def DescribeInstanceVncUrl(request)
          body = send_request('DescribeInstanceVncUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceVncUrlResponse.new
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

        # 获取实例的相关信息。

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
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

        # 通过实例id获取当前禁止的操作

        # @param request: Request instance for DescribeInstancesDeniedActions.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeInstancesDeniedActionsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeInstancesDeniedActionsResponse`
        def DescribeInstancesDeniedActions(request)
          body = send_request('DescribeInstancesDeniedActions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesDeniedActionsResponse.new
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

        # 查询负载均衡的监听器列表。

        # @param request: Request instance for DescribeListeners.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeListenersRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeListenersResponse`
        def DescribeListeners(request)
          body = send_request('DescribeListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenersResponse.new
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

        # 查询负载均衡相关的任务状态

        # @param request: Request instance for DescribeLoadBalanceTaskStatus.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeLoadBalanceTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeLoadBalanceTaskStatusResponse`
        def DescribeLoadBalanceTaskStatus(request)
          body = send_request('DescribeLoadBalanceTaskStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalanceTaskStatusResponse.new
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

        # 查询负载均衡实例列表。

        # @param request: Request instance for DescribeLoadBalancers.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeLoadBalancersResponse`
        def DescribeLoadBalancers(request)
          body = send_request('DescribeLoadBalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancersResponse.new
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

        # 获取模块列表

        # @param request: Request instance for DescribeModule.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeModuleRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeModuleResponse`
        def DescribeModule(request)
          body = send_request('DescribeModule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModuleResponse.new
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

        # 展示模块详细信息

        # @param request: Request instance for DescribeModuleDetail.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeModuleDetailRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeModuleDetailResponse`
        def DescribeModuleDetail(request)
          body = send_request('DescribeModuleDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeModuleDetailResponse.new
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

        # 获取客户节点上的出入带宽月峰和计费带宽信息

        # @param request: Request instance for DescribeMonthPeakNetwork.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeMonthPeakNetworkRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeMonthPeakNetworkResponse`
        def DescribeMonthPeakNetwork(request)
          body = send_request('DescribeMonthPeakNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMonthPeakNetworkResponse.new
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

        # 查询弹性网卡列表

        # @param request: Request instance for DescribeNetworkInterfaces.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeNetworkInterfacesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeNetworkInterfacesResponse`
        def DescribeNetworkInterfaces(request)
          body = send_request('DescribeNetworkInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkInterfacesResponse.new
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

        # 获取节点列表

        # @param request: Request instance for DescribeNode.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeNodeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeNodeResponse`
        def DescribeNode(request)
          body = send_request('DescribeNode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNodeResponse.new
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

        # 使用本接口获取某种机型在某些区域的装箱配额（当使用虚拟机型时，返回的是一组相互关联的装箱配额）。

        # @param request: Request instance for DescribePackingQuotaGroup.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribePackingQuotaGroupRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribePackingQuotaGroupResponse`
        def DescribePackingQuotaGroup(request)
          body = send_request('DescribePackingQuotaGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePackingQuotaGroupResponse.new
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

        # CPU 内存 硬盘等基础信息峰值数据

        # @param request: Request instance for DescribePeakBaseOverview.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribePeakBaseOverviewRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribePeakBaseOverviewResponse`
        def DescribePeakBaseOverview(request)
          body = send_request('DescribePeakBaseOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePeakBaseOverviewResponse.new
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

        # 获取网络峰值数据

        # @param request: Request instance for DescribePeakNetworkOverview.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribePeakNetworkOverviewRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribePeakNetworkOverviewResponse`
        def DescribePeakNetworkOverview(request)
          body = send_request('DescribePeakNetworkOverview', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePeakNetworkOverviewResponse.new
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

        # 查询实例价格

        # @param request: Request instance for DescribePriceRunInstance.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribePriceRunInstanceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribePriceRunInstanceResponse`
        def DescribePriceRunInstance(request)
          body = send_request('DescribePriceRunInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePriceRunInstanceResponse.new
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

        # 该接口（DescribeRegionIpv6Addresses）用于查询ECM地域之下的IPV6地址信息。

        # @param request: Request instance for DescribeRegionIpv6Addresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeRegionIpv6AddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeRegionIpv6AddressesResponse`
        def DescribeRegionIpv6Addresses(request)
          body = send_request('DescribeRegionIpv6Addresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionIpv6AddressesResponse.new
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

        # 查询自定义路由策略与云联网路由策略冲突列表

        # @param request: Request instance for DescribeRouteConflicts.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeRouteConflictsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeRouteConflictsResponse`
        def DescribeRouteConflicts(request)
          body = send_request('DescribeRouteConflicts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRouteConflictsResponse.new
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

        # 查询路由表对象列表

        # @param request: Request instance for DescribeRouteTables.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeRouteTablesResponse`
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

        # 查询安全组关联实例统计

        # @param request: Request instance for DescribeSecurityGroupAssociationStatistics.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeSecurityGroupAssociationStatisticsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeSecurityGroupAssociationStatisticsResponse`
        def DescribeSecurityGroupAssociationStatistics(request)
          body = send_request('DescribeSecurityGroupAssociationStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupAssociationStatisticsResponse.new
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

        # 查询用户安全组配额

        # @param request: Request instance for DescribeSecurityGroupLimits.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeSecurityGroupLimitsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeSecurityGroupLimitsResponse`
        def DescribeSecurityGroupLimits(request)
          body = send_request('DescribeSecurityGroupLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupLimitsResponse.new
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

        # 查询安全组规则

        # @param request: Request instance for DescribeSecurityGroupPolicies.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeSecurityGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeSecurityGroupPoliciesResponse`
        def DescribeSecurityGroupPolicies(request)
          body = send_request('DescribeSecurityGroupPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupPoliciesResponse.new
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

        # 查看安全组

        # @param request: Request instance for DescribeSecurityGroups.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeSecurityGroupsResponse`
        def DescribeSecurityGroups(request)
          body = send_request('DescribeSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupsResponse.new
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

        # CBS在ECM早已下线

        # 本接口（DescribeSnapshots）用于查询快照的详细信息。

        # * 根据快照ID、创建快照的云硬盘ID、创建快照的云硬盘类型等对结果进行过滤，不同条件之间为与(AND)的关系，过滤信息详细请见过滤器`Filter`。
        # *  如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的快照列表。

        # @param request: Request instance for DescribeSnapshots.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeSnapshotsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeSnapshotsResponse`
        def DescribeSnapshots(request)
          body = send_request('DescribeSnapshots', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotsResponse.new
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

        # 查询子网列表

        # @param request: Request instance for DescribeSubnets.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeSubnetsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeSubnetsResponse`
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

        # 获取负载均衡后端服务的健康检查状态。

        # @param request: Request instance for DescribeTargetHealth.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeTargetHealthRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeTargetHealthResponse`
        def DescribeTargetHealth(request)
          body = send_request('DescribeTargetHealth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetHealthResponse.new
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

        # 查询负载均衡绑定的后端服务列表。

        # @param request: Request instance for DescribeTargets.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeTargetsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeTargetsResponse`
        def DescribeTargets(request)
          body = send_request('DescribeTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTargetsResponse.new
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

        # 查询EIP异步任务执行结果

        # @param request: Request instance for DescribeTaskResult.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeTaskResultResponse`
        def DescribeTaskResult(request)
          body = send_request('DescribeTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTaskResultResponse.new
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

        # 本接口(DescribeTaskStatus)用于获取异步任务状态

        # @param request: Request instance for DescribeTaskStatus.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeTaskStatusResponse`
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

        # 查询私有网络列表

        # @param request: Request instance for DescribeVpcs.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DescribeVpcsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DescribeVpcsResponse`
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

        # CBS在ECM早已下线

        # 本接口（DetachDisks）用于卸载云硬盘。

        # * 支持批量操作，卸载挂载在同一主机上的多块云盘。如果多块云盘中存在不允许卸载的云盘，则操作不执行，返回特定的错误码。
        # * 本接口为异步接口，当请求成功返回时，云盘并未立即从主机卸载，可通过接口[DescribeDisks](/document/product/362/16315)来查询对应云盘的状态，如果云盘的状态由“ATTACHED”变为“UNATTACHED”，则为卸载成功。

        # @param request: Request instance for DetachDisks.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DetachDisksRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DetachDisksResponse`
        def DetachDisks(request)
          body = send_request('DetachDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachDisksResponse.new
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

        # 弹性网卡解绑云主机

        # @param request: Request instance for DetachNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DetachNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DetachNetworkInterfaceResponse`
        def DetachNetworkInterface(request)
          body = send_request('DetachNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachNetworkInterfaceResponse.new
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

        # 禁用已启用的子网路由

        # @param request: Request instance for DisableRoutes.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DisableRoutesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DisableRoutesResponse`
        def DisableRoutes(request)
          body = send_request('DisableRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableRoutesResponse.new
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

        # 解绑弹性公网IP（简称 EIP）
        # 只有状态为 BIND 和 BIND_ENI 的 EIP 才能进行解绑定操作。
        # EIP 如果被封堵，则不能进行解绑定操作。

        # @param request: Request instance for DisassociateAddress.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DisassociateAddressRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DisassociateAddressResponse`
        def DisassociateAddress(request)
          body = send_request('DisassociateAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateAddressResponse.new
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

        # 用于解除实例的密钥绑定关系。

        # @param request: Request instance for DisassociateInstancesKeyPairs.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DisassociateInstancesKeyPairsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DisassociateInstancesKeyPairsResponse`
        def DisassociateInstancesKeyPairs(request)
          body = send_request('DisassociateInstancesKeyPairs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateInstancesKeyPairsResponse.new
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

        # 解绑安全组

        # @param request: Request instance for DisassociateSecurityGroups.
        # @type request: :class:`Tencentcloud::ecm::V20190719::DisassociateSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::DisassociateSecurityGroupsResponse`
        def DisassociateSecurityGroups(request)
          body = send_request('DisassociateSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateSecurityGroupsResponse.new
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

        # 启用已禁用的子网路由。
        # 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。

        # @param request: Request instance for EnableRoutes.
        # @type request: :class:`Tencentcloud::ecm::V20190719::EnableRoutesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::EnableRoutesResponse`
        def EnableRoutes(request)
          body = send_request('EnableRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableRoutesResponse.new
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

        # 导入自定义镜像，支持 RAW、VHD、QCOW2、VMDK 镜像格式

        # @param request: Request instance for ImportCustomImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ImportCustomImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ImportCustomImageResponse`
        def ImportCustomImage(request)
          body = send_request('ImportCustomImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportCustomImageResponse.new
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

        # 从CVM产品导入镜像到ECM

        # @param request: Request instance for ImportImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ImportImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ImportImageResponse`
        def ImportImage(request)
          body = send_request('ImportImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportImageResponse.new
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

        # 弹性网卡迁移

        # @param request: Request instance for MigrateNetworkInterface.
        # @type request: :class:`Tencentcloud::ecm::V20190719::MigrateNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::MigrateNetworkInterfaceResponse`
        def MigrateNetworkInterface(request)
          body = send_request('MigrateNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MigrateNetworkInterfaceResponse.new
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

        # 弹性网卡内网IP迁移。
        # 该接口用于将一个内网IP从一个弹性网卡上迁移到另外一个弹性网卡，主IP地址不支持迁移。
        # 迁移前后的弹性网卡必须在同一个子网内。

        # @param request: Request instance for MigratePrivateIpAddress.
        # @type request: :class:`Tencentcloud::ecm::V20190719::MigratePrivateIpAddressRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::MigratePrivateIpAddressResponse`
        def MigratePrivateIpAddress(request)
          body = send_request('MigratePrivateIpAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MigratePrivateIpAddressResponse.new
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

        # 修改弹性公网IP属性

        # @param request: Request instance for ModifyAddressAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyAddressAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyAddressAttributeResponse`
        def ModifyAddressAttribute(request)
          body = send_request('ModifyAddressAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAddressAttributeResponse.new
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

        # 调整弹性公网IP带宽

        # @param request: Request instance for ModifyAddressesBandwidth.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyAddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyAddressesBandwidthResponse`
        def ModifyAddressesBandwidth(request)
          body = send_request('ModifyAddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAddressesBandwidthResponse.new
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

        # 修改在一个可用区下创建实例时使用的默认子网（创建实例时，未填写VPC参数时使用的sunbetId）

        # @param request: Request instance for ModifyDefaultSubnet.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyDefaultSubnetRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyDefaultSubnetResponse`
        def ModifyDefaultSubnet(request)
          body = send_request('ModifyDefaultSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDefaultSubnetResponse.new
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

        # 用于修改高可用虚拟IP（HAVIP）属性

        # @param request: Request instance for ModifyHaVipAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyHaVipAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyHaVipAttributeResponse`
        def ModifyHaVipAttribute(request)
          body = send_request('ModifyHaVipAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHaVipAttributeResponse.new
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

        # 本接口（ModifyImageAttribute）用于修改镜像属性。

        # @param request: Request instance for ModifyImageAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyImageAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyImageAttributeResponse`
        def ModifyImageAttribute(request)
          body = send_request('ModifyImageAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyImageAttributeResponse.new
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

        # 修改实例的属性。

        # @param request: Request instance for ModifyInstancesAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyInstancesAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyInstancesAttributeResponse`
        def ModifyInstancesAttribute(request)
          body = send_request('ModifyInstancesAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstancesAttributeResponse.new
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

        # 本接口（ModifyIpv6AddressesAttribute）用于修改弹性网卡IPv6地址属性。

        # @param request: Request instance for ModifyIpv6AddressesAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyIpv6AddressesAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyIpv6AddressesAttributeResponse`
        def ModifyIpv6AddressesAttribute(request)
          body = send_request('ModifyIpv6AddressesAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIpv6AddressesAttributeResponse.new
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

        # 该接口(ModifyIpv6AddressesBandwidth)用于修改IPV6地址访问internet的带宽

        # @param request: Request instance for ModifyIpv6AddressesBandwidth.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyIpv6AddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyIpv6AddressesBandwidthResponse`
        def ModifyIpv6AddressesBandwidth(request)
          body = send_request('ModifyIpv6AddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIpv6AddressesBandwidthResponse.new
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

        # 修改负载均衡监听器属性。

        # @param request: Request instance for ModifyListener.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyListenerRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyListenerResponse`
        def ModifyListener(request)
          body = send_request('ModifyListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyListenerResponse.new
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

        # 修改负载均衡实例的属性。

        # @param request: Request instance for ModifyLoadBalancerAttributes.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyLoadBalancerAttributesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyLoadBalancerAttributesResponse`
        def ModifyLoadBalancerAttributes(request)
          body = send_request('ModifyLoadBalancerAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancerAttributesResponse.new
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

        # 修改模块配置，已关联实例的模块不支持调整配置。

        # @param request: Request instance for ModifyModuleConfig.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleConfigRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleConfigResponse`
        def ModifyModuleConfig(request)
          body = send_request('ModifyModuleConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleConfigResponse.new
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

        # 修改模块是否禁止分配外网ip的属性。

        # @param request: Request instance for ModifyModuleDisableWanIp.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleDisableWanIpRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleDisableWanIpResponse`
        def ModifyModuleDisableWanIp(request)
          body = send_request('ModifyModuleDisableWanIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleDisableWanIpResponse.new
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

        # 修改模块的默认镜像

        # @param request: Request instance for ModifyModuleImage.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleImageRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleImageResponse`
        def ModifyModuleImage(request)
          body = send_request('ModifyModuleImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleImageResponse.new
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

        # 修改模块IP直通。

        # @param request: Request instance for ModifyModuleIpDirect.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleIpDirectRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleIpDirectResponse`
        def ModifyModuleIpDirect(request)
          body = send_request('ModifyModuleIpDirect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleIpDirectResponse.new
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

        # 修改模块名称

        # @param request: Request instance for ModifyModuleName.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleNameRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleNameResponse`
        def ModifyModuleName(request)
          body = send_request('ModifyModuleName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleNameResponse.new
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

        # 修改模块默认带宽上限

        # @param request: Request instance for ModifyModuleNetwork.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleNetworkRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleNetworkResponse`
        def ModifyModuleNetwork(request)
          body = send_request('ModifyModuleNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleNetworkResponse.new
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

        # 修改模块默认安全组

        # @param request: Request instance for ModifyModuleSecurityGroups.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyModuleSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyModuleSecurityGroupsResponse`
        def ModifyModuleSecurityGroups(request)
          body = send_request('ModifyModuleSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyModuleSecurityGroupsResponse.new
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

        # 用于修改弹性网卡内网IP属性。

        # @param request: Request instance for ModifyPrivateIpAddressesAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyPrivateIpAddressesAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyPrivateIpAddressesAttributeResponse`
        def ModifyPrivateIpAddressesAttribute(request)
          body = send_request('ModifyPrivateIpAddressesAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrivateIpAddressesAttributeResponse.new
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

        # 修改路由表属性

        # @param request: Request instance for ModifyRouteTableAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyRouteTableAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyRouteTableAttributeResponse`
        def ModifyRouteTableAttribute(request)
          body = send_request('ModifyRouteTableAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRouteTableAttributeResponse.new
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

        # 修改安全组属性

        # @param request: Request instance for ModifySecurityGroupAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifySecurityGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifySecurityGroupAttributeResponse`
        def ModifySecurityGroupAttribute(request)
          body = send_request('ModifySecurityGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityGroupAttributeResponse.new
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

        # 修改安全组出站和入站规则

        # @param request: Request instance for ModifySecurityGroupPolicies.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifySecurityGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifySecurityGroupPoliciesResponse`
        def ModifySecurityGroupPolicies(request)
          body = send_request('ModifySecurityGroupPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityGroupPoliciesResponse.new
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
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifySubnetAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifySubnetAttributeResponse`
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

        # 修改监听器绑定的后端机器的端口。

        # @param request: Request instance for ModifyTargetPort.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyTargetPortRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyTargetPortResponse`
        def ModifyTargetPort(request)
          body = send_request('ModifyTargetPort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetPortResponse.new
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

        # 修改监听器绑定的后端机器的转发权重。

        # @param request: Request instance for ModifyTargetWeight.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyTargetWeightRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyTargetWeightResponse`
        def ModifyTargetWeight(request)
          body = send_request('ModifyTargetWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTargetWeightResponse.new
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

        # 修改私有网络（VPC）的相关属性

        # @param request: Request instance for ModifyVpcAttribute.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ModifyVpcAttributeRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ModifyVpcAttributeResponse`
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

        # 查询私有网络下Vpc、子网、havip等异步任务请求结果

        # @param request: Request instance for QueryVpcTaskResult.
        # @type request: :class:`Tencentcloud::ecm::V20190719::QueryVpcTaskResultRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::QueryVpcTaskResultResponse`
        def QueryVpcTaskResult(request)
          body = send_request('QueryVpcTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryVpcTaskResultResponse.new
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

        # 只有状态为RUNNING的实例才可以进行此操作；接口调用成功时，实例会进入REBOOTING状态；重启实例成功时，实例会进入RUNNING状态；支持强制重启，强制重启的效果等同于关闭物理计算机的电源开关再重新启动。强制重启可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常重启时使用。

        # @param request: Request instance for RebootInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::RebootInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::RebootInstancesResponse`
        def RebootInstances(request)
          body = send_request('RebootInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RebootInstancesResponse.new
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

        # 释放一个或多个弹性公网IP（简称 EIP）。
        # 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
        # 只有状态为 UNBIND 的 EIP 才能进行释放操作。

        # @param request: Request instance for ReleaseAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ReleaseAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ReleaseAddressesResponse`
        def ReleaseAddresses(request)
          body = send_request('ReleaseAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseAddressesResponse.new
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

        # 本接口（UnassignIpv6Addresses）用于释放弹性网卡IPv6地址。

        # @param request: Request instance for ReleaseIpv6Addresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ReleaseIpv6AddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ReleaseIpv6AddressesResponse`
        def ReleaseIpv6Addresses(request)
          body = send_request('ReleaseIpv6Addresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseIpv6AddressesResponse.new
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

        # 该接口用于给弹性公网IPv6地址释放带宽。

        # @param request: Request instance for ReleaseIpv6AddressesBandwidth.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ReleaseIpv6AddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ReleaseIpv6AddressesBandwidthResponse`
        def ReleaseIpv6AddressesBandwidth(request)
          body = send_request('ReleaseIpv6AddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseIpv6AddressesBandwidthResponse.new
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

        # 弹性网卡退还内网 IP。
        # 退还弹性网卡上的辅助内网IP，接口自动解关联弹性公网 IP。不能退还弹性网卡的主内网IP。

        # @param request: Request instance for RemovePrivateIpAddresses.
        # @type request: :class:`Tencentcloud::ecm::V20190719::RemovePrivateIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::RemovePrivateIpAddressesResponse`
        def RemovePrivateIpAddresses(request)
          body = send_request('RemovePrivateIpAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemovePrivateIpAddressesResponse.new
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

        # 修改子网关联的路由表，一个子网只能关联一个路由表。

        # @param request: Request instance for ReplaceRouteTableAssociation.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ReplaceRouteTableAssociationRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ReplaceRouteTableAssociationResponse`
        def ReplaceRouteTableAssociation(request)
          body = send_request('ReplaceRouteTableAssociation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceRouteTableAssociationResponse.new
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

        # 替换路由策略

        # @param request: Request instance for ReplaceRoutes.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ReplaceRoutesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ReplaceRoutesResponse`
        def ReplaceRoutes(request)
          body = send_request('ReplaceRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceRoutesResponse.new
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

        # 替换单条安全组路由规则, 单个请求中只能替换单个方向的一条规则, 必须要指定索引（PolicyIndex）。

        # @param request: Request instance for ReplaceSecurityGroupPolicy.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ReplaceSecurityGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ReplaceSecurityGroupPolicyResponse`
        def ReplaceSecurityGroupPolicy(request)
          body = send_request('ReplaceSecurityGroupPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceSecurityGroupPolicyResponse.new
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

        # 重装实例，若指定了ImageId参数，则使用指定的镜像重装；否则按照当前实例使用的镜像进行重装；若未指定密码，则密码通过站内信形式随后发送。

        # @param request: Request instance for ResetInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ResetInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ResetInstancesResponse`
        def ResetInstances(request)
          body = send_request('ResetInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstancesResponse.new
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

        # 重置实例的最大带宽上限。

        # @param request: Request instance for ResetInstancesMaxBandwidth.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ResetInstancesMaxBandwidthRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ResetInstancesMaxBandwidthResponse`
        def ResetInstancesMaxBandwidth(request)
          body = send_request('ResetInstancesMaxBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstancesMaxBandwidthResponse.new
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

        # 重置处于运行中状态的实例的密码，需要显式指定强制关机参数ForceStop。如果没有显式指定强制关机参数，则只有处于关机状态的实例才允许执行重置密码操作。

        # @param request: Request instance for ResetInstancesPassword.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ResetInstancesPasswordRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ResetInstancesPasswordResponse`
        def ResetInstancesPassword(request)
          body = send_request('ResetInstancesPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetInstancesPasswordResponse.new
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

        # 对某个路由表名称和所有路由策略（Route）进行重新设置

        # @param request: Request instance for ResetRoutes.
        # @type request: :class:`Tencentcloud::ecm::V20190719::ResetRoutesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::ResetRoutesResponse`
        def ResetRoutes(request)
          body = send_request('ResetRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetRoutesResponse.new
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

        # 创建ECM实例。

        # @param request: Request instance for RunInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::RunInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::RunInstancesResponse`
        def RunInstances(request)
          body = send_request('RunInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunInstancesResponse.new
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

        # 设置负载均衡实例的安全组。

        # @param request: Request instance for SetLoadBalancerSecurityGroups.
        # @type request: :class:`Tencentcloud::ecm::V20190719::SetLoadBalancerSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::SetLoadBalancerSecurityGroupsResponse`
        def SetLoadBalancerSecurityGroups(request)
          body = send_request('SetLoadBalancerSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetLoadBalancerSecurityGroupsResponse.new
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

        # 绑定或解绑一个安全组到多个负载均衡实例。

        # @param request: Request instance for SetSecurityGroupForLoadbalancers.
        # @type request: :class:`Tencentcloud::ecm::V20190719::SetSecurityGroupForLoadbalancersRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::SetSecurityGroupForLoadbalancersResponse`
        def SetSecurityGroupForLoadbalancers(request)
          body = send_request('SetSecurityGroupForLoadbalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetSecurityGroupForLoadbalancersResponse.new
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

        # 只有状态为STOPPED的实例才可以进行此操作；接口调用成功时，实例会进入STARTING状态；启动实例成功时，实例会进入RUNNING状态。

        # @param request: Request instance for StartInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::StartInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::StartInstancesResponse`
        def StartInstances(request)
          body = send_request('StartInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartInstancesResponse.new
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

        # 只有处于"RUNNING"状态的实例才能够进行关机操作；
        # 调用成功时，实例会进入STOPPING状态；关闭实例成功时，实例会进入STOPPED状态；
        # 支持强制关闭，强制关机的效果等同于关闭物理计算机的电源开关，强制关机可能会导致数据丢失或文件系统损坏，请仅在服务器不能正常关机时使用。

        # @param request: Request instance for StopInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::StopInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::StopInstancesResponse`
        def StopInstances(request)
          body = send_request('StopInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopInstancesResponse.new
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

        # CBS在ECM早已下线

        # 本接口（TerminateDisks）用于退还云硬盘。

        # * 不再使用的云盘，可通过本接口主动退还。
        # * 本接口支持退还预付费云盘和按小时后付费云盘。按小时后付费云盘可直接退还，预付费云盘需符合退还规则。
        # * 支持批量操作，每次请求批量云硬盘的上限为50。如果批量云盘存在不允许操作的，请求会以特定错误码返回。

        # @param request: Request instance for TerminateDisks.
        # @type request: :class:`Tencentcloud::ecm::V20190719::TerminateDisksRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::TerminateDisksResponse`
        def TerminateDisks(request)
          body = send_request('TerminateDisks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateDisksResponse.new
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

        # 销毁实例

        # @param request: Request instance for TerminateInstances.
        # @type request: :class:`Tencentcloud::ecm::V20190719::TerminateInstancesRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::TerminateInstancesResponse`
        def TerminateInstances(request)
          body = send_request('TerminateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TerminateInstancesResponse.new
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

        # 本接口（UnassignIpv6SubnetCidrBlock）用于释放IPv6子网段。
        # 子网段如果还有IP占用且未回收，则子网段无法释放。

        # @param request: Request instance for UnassignIpv6SubnetCidrBlock.
        # @type request: :class:`Tencentcloud::ecm::V20190719::UnassignIpv6SubnetCidrBlockRequest`
        # @rtype: :class:`Tencentcloud::ecm::V20190719::UnassignIpv6SubnetCidrBlockResponse`
        def UnassignIpv6SubnetCidrBlock(request)
          body = send_request('UnassignIpv6SubnetCidrBlock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnassignIpv6SubnetCidrBlockResponse.new
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