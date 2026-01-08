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
  module Vpc
    module V20170312
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2017-03-12'
            api_endpoint = 'vpc.tencentcloudapi.com'
            sdk_version = 'VPC_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本接口（AcceptAttachCcnInstances）用于跨账号关联实例时，云联网所有者接受并同意关联操作。

        # @param request: Request instance for AcceptAttachCcnInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AcceptAttachCcnInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AcceptAttachCcnInstancesResponse`
        def AcceptAttachCcnInstances(request)
          body = send_request('AcceptAttachCcnInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcceptAttachCcnInstancesResponse.new
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

        # 本接口（AcceptVpcPeeringConnection）用于接受对等连接请求。

        # @param request: Request instance for AcceptVpcPeeringConnection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AcceptVpcPeeringConnectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AcceptVpcPeeringConnectionResponse`
        def AcceptVpcPeeringConnection(request)
          body = send_request('AcceptVpcPeeringConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AcceptVpcPeeringConnectionResponse.new
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

        # 接口用于添加带宽包资源，包括[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)和[负载均衡](https://cloud.tencent.com/document/product/214/517)等

        # @param request: Request instance for AddBandwidthPackageResources.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AddBandwidthPackageResourcesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AddBandwidthPackageResourcesResponse`
        def AddBandwidthPackageResources(request)
          body = send_request('AddBandwidthPackageResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddBandwidthPackageResourcesResponse.new
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

        # 1. 该接口用于在转换实例下添加IPV6转换规则。
        # 2. 支持在同一个转换实例下批量添加转换规则，一个账户在一个地域最多50个。
        # 3. 一个完整的转换规则包括vip6:vport6:protocol:vip:vport，其中vip6:vport6:protocol必须是唯一。

        # @param request: Request instance for AddIp6Rules.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AddIp6RulesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AddIp6RulesResponse`
        def AddIp6Rules(request)
          body = send_request('AddIp6Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddIp6RulesResponse.new
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

        # 增加模板对象中的IP地址、协议端口、IP地址组、协议端口组。

        # @param request: Request instance for AddTemplateMember.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AddTemplateMemberRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AddTemplateMemberResponse`
        def AddTemplateMember(request)
          body = send_request('AddTemplateMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddTemplateMemberResponse.new
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

        # 本接口 (AdjustPublicAddress) 用于更换IP地址，支持更换CVM实例的普通公网IP和包月带宽的EIP。

        # @param request: Request instance for AdjustPublicAddress.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AdjustPublicAddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AdjustPublicAddressResponse`
        def AdjustPublicAddress(request)
          body = send_request('AdjustPublicAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AdjustPublicAddressResponse.new
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

        # 本接口 (AllocateAddresses) 用于申请一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
        # * EIP 是专为动态云计算设计的静态 IP 地址。借助 EIP，您可以快速将 EIP 重新映射到您的另一个实例上，从而屏蔽实例故障。
        # * 您的 EIP 与腾讯云账户相关联，而不是与某个实例相关联。在您选择显式释放该地址，或欠费超过24小时之前，它会一直与您的腾讯云账户保持关联。
        # * 一个腾讯云账户在每个地域能申请的 EIP 最大配额有所限制，可参见 [EIP 产品简介](https://cloud.tencent.com/document/product/213/5733)，上述配额可通过 [DescribeAddressQuota](https://cloud.tencent.com/document/product/215/16701) 接口获取。

        # @param request: Request instance for AllocateAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AllocateAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AllocateAddressesResponse`
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

        # 本接口（AllocateIPv6Addresses）用于申请一个或多个弹性公网IPv6（简称EIPv6）实例。

        # - EIPv6 是您在腾讯云某个地域可以独立申请和持有的，固定不变的公网 IPv6 地址，提供与弹性公网 IPv4 一致的产品体验。
        # - 通过弹性公网 IPv6，您可以快速将 EIPv6 实例绑定到云资源的内网 IPv6 地址上，实现为云资源快速开通 IPv6 公网带宽。
        # - 您还可以按需将 EIPv6 实例绑定到其他云资源上，从而屏蔽实例故障。

        # @param request: Request instance for AllocateIPv6Addresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AllocateIPv6AddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AllocateIPv6AddressesResponse`
        def AllocateIPv6Addresses(request)
          body = send_request('AllocateIPv6Addresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AllocateIPv6AddressesResponse.new
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

        # 本接口（AllocateIp6AddressesBandwidth）用于为传统弹性公网 IPv6 地址开通 IPv6 公网带宽。

        # - 传统弹性公网 IPv6 地址默认仅具备内网通信能力，需通过控制台或 API 接口为其分配公网带宽后，才能具备 IPv6 公网通信能力、并于传统弹性公网 IPv6 列表页可见。
        # - 支持为一个或多个传统弹性公网 IPv6 实例开通公网带宽。

        # @param request: Request instance for AllocateIp6AddressesBandwidth.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AllocateIp6AddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AllocateIp6AddressesBandwidthResponse`
        def AllocateIp6AddressesBandwidth(request)
          body = send_request('AllocateIp6AddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AllocateIp6AddressesBandwidthResponse.new
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

        # 本接口（AssignIpv6Addresses）用于弹性网卡申请`IPv6`地址。<br />
        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询[DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037)接口。
        # * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
        # * 可以指定`IPv6`地址申请，地址类型不能为主`IP`，`IPv6`地址暂时只支持作为辅助`IP`。
        # * 地址必须要在弹性网卡所在子网内，而且不能被占用。
        # * 在弹性网卡上申请一个到多个辅助`IPv6`地址，接口会在弹性网卡所在子网段内返回指定数量的辅助`IPv6`地址。

        # @param request: Request instance for AssignIpv6Addresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssignIpv6AddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssignIpv6AddressesResponse`
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
        # * 使用本接口前，您需要已有VPC实例，如果没有可通过接口<a href="https://cloud.tencent.com/document/api/215/15774" title="CreateVpc" target="_blank">CreateVpc</a>创建。
        # * 每个VPC只能申请一个IPv6网段。

        # @param request: Request instance for AssignIpv6CidrBlock.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssignIpv6CidrBlockRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssignIpv6CidrBlockResponse`
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

        # 本接口（AssignIpv6SubnetCidrBlock）用于分配IPv6子网段。
        # * 给子网分配 `IPv6` 网段，要求子网所属 `VPC` 已获得 `IPv6` 网段。如果尚未分配，请先通过接口 `AssignIpv6CidrBlock` 给子网所属 `VPC` 分配一个 `IPv6` 网段。否则无法分配 `IPv6` 子网段。
        # * 每个子网只能分配一个IPv6网段。

        # @param request: Request instance for AssignIpv6SubnetCidrBlock.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssignIpv6SubnetCidrBlockRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssignIpv6SubnetCidrBlockResponse`
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

        # 本接口（AssignPrivateIpAddresses）用于弹性网卡申请内网 IP。
        # * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
        # * 可以指定内网IP地址申请，内网IP地址类型不能为主IP，主IP已存在，不能修改，内网IP必须要在弹性网卡所在子网内，而且不能被占用。
        # * 在弹性网卡上申请一个到多个辅助内网IP，接口会在弹性网卡所在子网网段内返回指定数量的辅助内网IP。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for AssignPrivateIpAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssignPrivateIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssignPrivateIpAddressesResponse`
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

        # 本接口 (AssociateAddress) 用于将[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）绑定到实例或弹性网卡的指定内网 IP 上。
        # * 将 EIP 绑定到实例（CVM）上，其本质是将 EIP 绑定到实例上主网卡的主内网 IP 上。
        # * 将 EIP 绑定到主网卡的主内网IP时，如主内网IP已绑定普通公网IP，必须先退还才能绑定EIP。
        # * 将 EIP 绑定到指定网卡的内网 IP上（非主网卡的主内网IP），则必须先解绑该 EIP，才能再绑定新的。
        # * 将 EIP 绑定到NAT网关，请使用接口[AssociateNatGatewayAddress](https://cloud.tencent.com/document/product/215/36722)。
        # * EIP 如果欠费或被封堵，则不能被绑定。
        # * 只有状态为 UNBIND 的 EIP 才能够被绑定。

        # @param request: Request instance for AssociateAddress.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssociateAddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssociateAddressResponse`
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

        # 本接口（AssociateDhcpIpWithAddressIp）用于DhcpIp绑定弹性公网IP（EIP）。<br />
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for AssociateDhcpIpWithAddressIp.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssociateDhcpIpWithAddressIpRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssociateDhcpIpWithAddressIpResponse`
        def AssociateDhcpIpWithAddressIp(request)
          body = send_request('AssociateDhcpIpWithAddressIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateDhcpIpWithAddressIpResponse.new
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

        # 将专线网关与NAT网关绑定，专线网关默认路由指向NAT网关

        # @param request: Request instance for AssociateDirectConnectGatewayNatGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssociateDirectConnectGatewayNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssociateDirectConnectGatewayNatGatewayResponse`
        def AssociateDirectConnectGatewayNatGateway(request)
          body = send_request('AssociateDirectConnectGatewayNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateDirectConnectGatewayNatGatewayResponse.new
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

        # 本接口（AssociateHaVipInstance）用于HAVIP绑定子机或网卡（限制HaVip的漂移范围）。

        # @param request: Request instance for AssociateHaVipInstance.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssociateHaVipInstanceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssociateHaVipInstanceResponse`
        def AssociateHaVipInstance(request)
          body = send_request('AssociateHaVipInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateHaVipInstanceResponse.new
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

        # 本接口（AssociateIPv6Address）用于将弹性公网IPv6（简称EIPv6）实例绑定到 CVM 或弹性网卡配置的内网 IPv6 地址上。

        # - 将 EIPv6 绑定到 CVM 上，其本质是将 EIPv6 绑定到 CVM 弹性网卡所配置的内网 IPv6 地址上。
        # - 将 EIPv6 绑定到指定网卡的内网 IPv6 时，需确保该内网 IPv6 地址为未绑定状态，才能执行绑定操作。

        # @param request: Request instance for AssociateIPv6Address.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssociateIPv6AddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssociateIPv6AddressResponse`
        def AssociateIPv6Address(request)
          body = send_request('AssociateIPv6Address', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateIPv6AddressResponse.new
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

        # 本接口（AssociateInstancesToCcnRouteTable）用于将指定的云联网实例关联到指定的云联网路由表。

        # @param request: Request instance for AssociateInstancesToCcnRouteTable.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssociateInstancesToCcnRouteTableRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssociateInstancesToCcnRouteTableResponse`
        def AssociateInstancesToCcnRouteTable(request)
          body = send_request('AssociateInstancesToCcnRouteTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateInstancesToCcnRouteTableResponse.new
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

        # 本接口(AssociateNatGatewayAddress)用于NAT网关绑定弹性IP（EIP）。

        # @param request: Request instance for AssociateNatGatewayAddress.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssociateNatGatewayAddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssociateNatGatewayAddressResponse`
        def AssociateNatGatewayAddress(request)
          body = send_request('AssociateNatGatewayAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateNatGatewayAddressResponse.new
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

        # 本接口（AssociateNetworkAclSubnets）用于网络ACL关联VPC下的子网。

        # @param request: Request instance for AssociateNetworkAclSubnets.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssociateNetworkAclSubnetsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssociateNetworkAclSubnetsResponse`
        def AssociateNetworkAclSubnets(request)
          body = send_request('AssociateNetworkAclSubnets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateNetworkAclSubnetsResponse.new
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

        # 本接口（AssociateNetworkInterfaceSecurityGroups）用于弹性网卡绑定安全组（SecurityGroup）。

        # @param request: Request instance for AssociateNetworkInterfaceSecurityGroups.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AssociateNetworkInterfaceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AssociateNetworkInterfaceSecurityGroupsResponse`
        def AssociateNetworkInterfaceSecurityGroups(request)
          body = send_request('AssociateNetworkInterfaceSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssociateNetworkInterfaceSecurityGroupsResponse.new
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

        # 本接口（AttachCcnInstances）用于将网络实例加载到云联网实例中，网络实例包括VPC和专线网关。<br />
        # 每个云联网能够关联的网络实例个数是有限的，详情请参考产品文档。如果需要扩充请联系在线客服。

        # @param request: Request instance for AttachCcnInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AttachCcnInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AttachCcnInstancesResponse`
        def AttachCcnInstances(request)
          body = send_request('AttachCcnInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachCcnInstancesResponse.new
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

        # 本接口(AttachClassicLinkVpc)用于创建私有网络和基础网络设备互通。
        # * 私有网络和基础网络设备必须在同一个地域。
        # * 私有网络和基础网络的区别详见vpc产品文档-<a href="https://cloud.tencent.com/document/product/215/30720">私有网络与基础网络</a>。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for AttachClassicLinkVpc.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AttachClassicLinkVpcRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AttachClassicLinkVpcResponse`
        def AttachClassicLinkVpc(request)
          body = send_request('AttachClassicLinkVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachClassicLinkVpcResponse.new
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

        # 本接口（AttachNetworkInterface）用于弹性网卡绑定云服务器。
        # * 一个弹性网卡请至少绑定一个安全组，如需绑定请参见<a href="https://cloud.tencent.com/document/product/215/43132">弹性网卡绑定安全组</a>。
        # * 一个云服务器可以绑定多个弹性网卡，但只能绑定一个主网卡。更多限制信息详见<a href="https://cloud.tencent.com/document/product/576/18527">弹性网卡使用限制</a>。
        # * 一个弹性网卡只能同时绑定一个云服务器。
        # * 只有运行中或者已关机状态的云服务器才能绑定弹性网卡，查看云服务器状态详见<a href="https://cloud.tencent.com/document/api/213/9452#InstanceStatus">腾讯云服务器信息</a>。
        # * 弹性网卡绑定的云服务器必须是私有网络的，而且云服务器所在可用区必须和弹性网卡子网的可用区相同。

        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询[DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037)
        # 接口。

        # @param request: Request instance for AttachNetworkInterface.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AttachNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AttachNetworkInterfaceResponse`
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

        # 本接口（AttachSnapshotInstances）用于快照策略关联实例。

        # @param request: Request instance for AttachSnapshotInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AttachSnapshotInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AttachSnapshotInstancesResponse`
        def AttachSnapshotInstances(request)
          body = send_request('AttachSnapshotInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachSnapshotInstancesResponse.new
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

        # 本接口（AuditCrossBorderCompliance）用于服务商操作合规化资质审批。
        # * 服务商只能操作提交到本服务商的审批单，后台会校验身份。即只授权给服务商的`APPID` 调用本接口。
        # * `APPROVED` 状态的审批单，可以再次操作为 `DENY`；`DENY` 状态的审批单，也可以再次操作为 `APPROVED`。

        # @param request: Request instance for AuditCrossBorderCompliance.
        # @type request: :class:`Tencentcloud::vpc::V20170312::AuditCrossBorderComplianceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::AuditCrossBorderComplianceResponse`
        def AuditCrossBorderCompliance(request)
          body = send_request('AuditCrossBorderCompliance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AuditCrossBorderComplianceResponse.new
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

        # 本接口（CheckAssistantCidr）用于检查辅助CIDR是否与存量路由、对等连接（对端VPC的CIDR）等资源存在冲突。如果存在重叠，则返回重叠的资源。
        # * 检测辅助CIDR是否与当前VPC的主CIDR和辅助CIDR存在重叠。
        # * 检测辅助CIDR是否与当前VPC的路由的目的端存在重叠。
        # * 检测辅助CIDR是否与当前VPC的对等连接，对端VPC下的主CIDR或辅助CIDR存在重叠。

        # @param request: Request instance for CheckAssistantCidr.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CheckAssistantCidrRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CheckAssistantCidrResponse`
        def CheckAssistantCidr(request)
          body = send_request('CheckAssistantCidr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckAssistantCidrResponse.new
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

        # 本接口（CheckDefaultSubnet）用于预判是否可建默认子网。

        # @param request: Request instance for CheckDefaultSubnet.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CheckDefaultSubnetRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CheckDefaultSubnetResponse`
        def CheckDefaultSubnet(request)
          body = send_request('CheckDefaultSubnet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckDefaultSubnetResponse.new
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

        # 本接口（CheckGatewayFlowMonitor）用于查询网关是否启用流量监控。

        # @param request: Request instance for CheckGatewayFlowMonitor.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CheckGatewayFlowMonitorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CheckGatewayFlowMonitorResponse`
        def CheckGatewayFlowMonitor(request)
          body = send_request('CheckGatewayFlowMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckGatewayFlowMonitorResponse.new
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

        # 本接口（CheckNetDetectState）用于验证网络探测。

        # @param request: Request instance for CheckNetDetectState.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CheckNetDetectStateRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CheckNetDetectStateResponse`
        def CheckNetDetectState(request)
          body = send_request('CheckNetDetectState', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckNetDetectStateResponse.new
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

        # 检查流量镜像的采集端接收端（公网IP类型）

        # @param request: Request instance for CheckTrafficMirror.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CheckTrafficMirrorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CheckTrafficMirrorResponse`
        def CheckTrafficMirror(request)
          body = send_request('CheckTrafficMirror', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckTrafficMirrorResponse.new
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

        # 本接口（ClearRouteTableSelectionPolicies）用于清空指定云联网的路由表选择策略。

        # @param request: Request instance for ClearRouteTableSelectionPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ClearRouteTableSelectionPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ClearRouteTableSelectionPoliciesResponse`
        def ClearRouteTableSelectionPolicies(request)
          body = send_request('ClearRouteTableSelectionPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClearRouteTableSelectionPoliciesResponse.new
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

        # 本接口（CloneSecurityGroup）用于根据存量的安全组，克隆创建出同样规则配置的安全组。默认仅克隆安全组及其规则信息，可通过入参开启克隆安全组标签信息。

        # @param request: Request instance for CloneSecurityGroup.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CloneSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CloneSecurityGroupResponse`
        def CloneSecurityGroup(request)
          body = send_request('CloneSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloneSecurityGroupResponse.new
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

        # 本接口（CreateAddressTemplate）用于创建IP地址模板。

        # @param request: Request instance for CreateAddressTemplate.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateAddressTemplateRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateAddressTemplateResponse`
        def CreateAddressTemplate(request)
          body = send_request('CreateAddressTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAddressTemplateResponse.new
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

        # 本接口（CreateAddressTemplateGroup）用于创建IP地址模板集合。

        # @param request: Request instance for CreateAddressTemplateGroup.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateAddressTemplateGroupRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateAddressTemplateGroupResponse`
        def CreateAddressTemplateGroup(request)
          body = send_request('CreateAddressTemplateGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAddressTemplateGroupResponse.new
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

        # 本接口（CreateAndAttachNetworkInterface）用于创建弹性网卡并绑定云服务器。
        # * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
        # * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
        # * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="/document/product/576/18527">弹性网卡使用限制</a>。
        # * 创建弹性网卡同时可以绑定已有安全组。
        # * 创建弹性网卡同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for CreateAndAttachNetworkInterface.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateAndAttachNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateAndAttachNetworkInterfaceResponse`
        def CreateAndAttachNetworkInterface(request)
          body = send_request('CreateAndAttachNetworkInterface', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAndAttachNetworkInterfaceResponse.new
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

        # 本接口（CreateAssistantCidr）用于批量创建辅助CIDR。

        # @param request: Request instance for CreateAssistantCidr.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateAssistantCidrRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateAssistantCidrResponse`
        def CreateAssistantCidr(request)
          body = send_request('CreateAssistantCidr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAssistantCidrResponse.new
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

        # 本接口 (CreateBandwidthPackage) 支持创建[设备带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)和[IP带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)。

        # @param request: Request instance for CreateBandwidthPackage.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateBandwidthPackageRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateBandwidthPackageResponse`
        def CreateBandwidthPackage(request)
          body = send_request('CreateBandwidthPackage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBandwidthPackageResponse.new
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

        # 本接口（CreateCcn）用于创建云联网（CCN）。<br />
        # * 创建云联网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
        # * 每个账号能创建的云联网实例个数是有限的，详请参考产品文档。如果需要扩充请联系在线客服。

        # @param request: Request instance for CreateCcn.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateCcnRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateCcnResponse`
        def CreateCcn(request)
          body = send_request('CreateCcn', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCcnResponse.new
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

        # 本接口（CreateCcnRouteTables）用于给指定的云联网实例新建路由表。

        # @param request: Request instance for CreateCcnRouteTables.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateCcnRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateCcnRouteTablesResponse`
        def CreateCcnRouteTables(request)
          body = send_request('CreateCcnRouteTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCcnRouteTablesResponse.new
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

        # 创建 IDC 通道

        # @param request: Request instance for CreateCdcLDCXList.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateCdcLDCXListRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateCdcLDCXListResponse`
        def CreateCdcLDCXList(request)
          body = send_request('CreateCdcLDCXList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCdcLDCXListResponse.new
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

        # 创建虚拟连接，用于支持 CDC 多租户模式

        # @param request: Request instance for CreateCdcNetPlanes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateCdcNetPlanesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateCdcNetPlanesResponse`
        def CreateCdcNetPlanes(request)
          body = send_request('CreateCdcNetPlanes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCdcNetPlanesResponse.new
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
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateCustomerGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateCustomerGatewayResponse`
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

        # 本接口（CreateDefaultSecurityGroup）用于创建（如果项目下未存在默认安全组，则创建；已存在则获取。）默认安全组（SecurityGroup）。
        # * 每个账户下每个地域的每个项目的<a href="https://cloud.tencent.com/document/product/213/12453">安全组数量限制</a>。
        # * 默认安全组会放通所有IPv4规则，在创建后通常您需要再调用CreateSecurityGroupPolicies将安全组的规则设置为需要的规则。
        # * 创建安全组同时可以绑定标签, 应答里的标签列表代表添加成功的标签。

        # @param request: Request instance for CreateDefaultSecurityGroup.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateDefaultSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateDefaultSecurityGroupResponse`
        def CreateDefaultSecurityGroup(request)
          body = send_request('CreateDefaultSecurityGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDefaultSecurityGroupResponse.new
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

        # 本接口（CreateDefaultVpc）用于创建默认私有网络(VPC）。

        # 默认VPC适用于快速入门和启动公共实例，您可以像使用任何其他VPC一样使用默认VPC。如果您想创建标准VPC，即指定VPC名称、VPC网段、子网网段、子网可用区，请使用常规创建VPC接口（CreateVpc）

        # 正常情况，本接口并不一定生产默认VPC，而是根据用户账号的网络属性（DescribeAccountAttributes）来决定的
        # * 支持基础网络、VPC，返回VpcId为0
        # * 只支持VPC，返回默认VPC信息

        # 您也可以通过 Force 参数，强制返回默认VPC。

        # @param request: Request instance for CreateDefaultVpc.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateDefaultVpcRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateDefaultVpcResponse`
        def CreateDefaultVpc(request)
          body = send_request('CreateDefaultVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDefaultVpcResponse.new
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

        # 本接口（CreateDhcpIp）用于创建DhcpIp。

        # @param request: Request instance for CreateDhcpIp.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateDhcpIpRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateDhcpIpResponse`
        def CreateDhcpIp(request)
          body = send_request('CreateDhcpIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDhcpIpResponse.new
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

        # 本接口（CreateDirectConnectGateway）用于创建专线网关。

        # @param request: Request instance for CreateDirectConnectGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateDirectConnectGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateDirectConnectGatewayResponse`
        def CreateDirectConnectGateway(request)
          body = send_request('CreateDirectConnectGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDirectConnectGatewayResponse.new
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

        # 本接口（CreateDirectConnectGatewayCcnRoutes）用于创建专线网关的云联网路由（IDC网段）

        # @param request: Request instance for CreateDirectConnectGatewayCcnRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateDirectConnectGatewayCcnRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateDirectConnectGatewayCcnRoutesResponse`
        def CreateDirectConnectGatewayCcnRoutes(request)
          body = send_request('CreateDirectConnectGatewayCcnRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDirectConnectGatewayCcnRoutesResponse.new
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

        # 本接口（CreateFlowLog）用于创建网络流日志。

        # @param request: Request instance for CreateFlowLog.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateFlowLogRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateFlowLogResponse`
        def CreateFlowLog(request)
          body = send_request('CreateFlowLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFlowLogResponse.new
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

        # 本接口（CreateGlobalRoutes）用于创建全局路由。

        # @param request: Request instance for CreateGlobalRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateGlobalRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateGlobalRoutesResponse`
        def CreateGlobalRoutes(request)
          body = send_request('CreateGlobalRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGlobalRoutesResponse.new
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

        # 本接口（CreateHaVip）用于创建高可用虚拟IP（HAVIP）。

        # @param request: Request instance for CreateHaVip.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateHaVipRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateHaVipResponse`
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

        # 高优路由表创建

        # @param request: Request instance for CreateHighPriorityRouteTable.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateHighPriorityRouteTableRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateHighPriorityRouteTableResponse`
        def CreateHighPriorityRouteTable(request)
          body = send_request('CreateHighPriorityRouteTable', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHighPriorityRouteTableResponse.new
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

        # 创建高优路由表条目。

        # @param request: Request instance for CreateHighPriorityRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateHighPriorityRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateHighPriorityRoutesResponse`
        def CreateHighPriorityRoutes(request)
          body = send_request('CreateHighPriorityRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHighPriorityRoutesResponse.new
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

        # 1. 该接口用于创建IPV6转换IPV4实例，支持批量
        # 2. 同一个账户在一个地域最多允许创建10个转换实例

        # @param request: Request instance for CreateIp6Translators.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateIp6TranslatorsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateIp6TranslatorsResponse`
        def CreateIp6Translators(request)
          body = send_request('CreateIp6Translators', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIp6TranslatorsResponse.new
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

        # 本接口（CreateLocalGateway）用于创建用于CDC的本地网关。

        # @param request: Request instance for CreateLocalGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateLocalGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateLocalGatewayResponse`
        def CreateLocalGateway(request)
          body = send_request('CreateLocalGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLocalGatewayResponse.new
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

        # 本接口(CreateNatGateway)用于创建NAT网关。
        # 在对新建的NAT网关做其他操作前，需先确认此网关已被创建完成（DescribeNatGateway接口返回的实例State字段为AVAILABLE）。

        # @param request: Request instance for CreateNatGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateNatGatewayResponse`
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

        # 本接口(CreateNatGatewayDestinationIpPortTranslationNatRule)用于创建NAT网关端口转发规则。

        # @param request: Request instance for CreateNatGatewayDestinationIpPortTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateNatGatewayDestinationIpPortTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateNatGatewayDestinationIpPortTranslationNatRuleResponse`
        def CreateNatGatewayDestinationIpPortTranslationNatRule(request)
          body = send_request('CreateNatGatewayDestinationIpPortTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNatGatewayDestinationIpPortTranslationNatRuleResponse.new
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

        # 本接口(CreateNatGatewaySourceIpTranslationNatRule)用于创建NAT网关SNAT规则

        # @param request: Request instance for CreateNatGatewaySourceIpTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateNatGatewaySourceIpTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateNatGatewaySourceIpTranslationNatRuleResponse`
        def CreateNatGatewaySourceIpTranslationNatRule(request)
          body = send_request('CreateNatGatewaySourceIpTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNatGatewaySourceIpTranslationNatRuleResponse.new
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

        # 本接口（CreateNetDetect）用于创建网络探测。

        # @param request: Request instance for CreateNetDetect.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateNetDetectRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateNetDetectResponse`
        def CreateNetDetect(request)
          body = send_request('CreateNetDetect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetDetectResponse.new
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

        # 本接口（CreateNetworkAcl）用于创建新的<a href="https://cloud.tencent.com/document/product/215/20088">网络ACL</a>。
        # * 新建的网络ACL的入站和出站规则默认都是全部拒绝，在创建后通常您需要再调用ModifyNetworkAclEntries将网络ACL的规则设置为需要的规则。

        # @param request: Request instance for CreateNetworkAcl.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateNetworkAclRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateNetworkAclResponse`
        def CreateNetworkAcl(request)
          body = send_request('CreateNetworkAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetworkAclResponse.new
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

        # 本接口（CreateNetworkAclEntries）用于增量添加网络ACL三元组的入站规则和出站规则。

        # @param request: Request instance for CreateNetworkAclEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateNetworkAclEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateNetworkAclEntriesResponse`
        def CreateNetworkAclEntries(request)
          body = send_request('CreateNetworkAclEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetworkAclEntriesResponse.new
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

        # 本接口（CreateNetworkAclQuintupleEntries）用于增量网络ACL五元组的入站规则和出站规则。

        # @param request: Request instance for CreateNetworkAclQuintupleEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateNetworkAclQuintupleEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateNetworkAclQuintupleEntriesResponse`
        def CreateNetworkAclQuintupleEntries(request)
          body = send_request('CreateNetworkAclQuintupleEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNetworkAclQuintupleEntriesResponse.new
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

        # 本接口（CreateNetworkInterface）用于创建弹性网卡。
        # * 创建弹性网卡时可以指定内网IP，并且可以指定一个主IP，指定的内网IP必须在弹性网卡所在子网内，而且不能被占用。
        # * 创建弹性网卡时可以指定需要申请的内网IP数量，系统会随机生成内网IP地址。
        # * 一个弹性网卡支持绑定的IP地址是有限制的，更多资源限制信息详见<a href="https://cloud.tencent.com/document/product/576/18527">弹性网卡使用限制</a>。
        # * 创建弹性网卡同时可以绑定已有安全组。
        # * 创建弹性网卡同时可以绑定标签, 响应里的标签列表代表添加成功的标签。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for CreateNetworkInterface.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateNetworkInterfaceResponse`
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

        # 本接口（CreatePrivateNatGateway）用于创建私网NAT网关。

        # @param request: Request instance for CreatePrivateNatGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreatePrivateNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreatePrivateNatGatewayResponse`
        def CreatePrivateNatGateway(request)
          body = send_request('CreatePrivateNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivateNatGatewayResponse.new
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

        # 本接口（CreatePrivateNatGatewayDestinationIpPortTranslationNatRule）用于创建私网NAT网关目的端口转换规则

        # @param request: Request instance for CreatePrivateNatGatewayDestinationIpPortTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreatePrivateNatGatewayDestinationIpPortTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreatePrivateNatGatewayDestinationIpPortTranslationNatRuleResponse`
        def CreatePrivateNatGatewayDestinationIpPortTranslationNatRule(request)
          body = send_request('CreatePrivateNatGatewayDestinationIpPortTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivateNatGatewayDestinationIpPortTranslationNatRuleResponse.new
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

        # 本接口（ CreatePrivateNatGatewayTranslationAclRule）用于创建私网NAT网关源端转换访问控制规则

        # @param request: Request instance for CreatePrivateNatGatewayTranslationAclRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreatePrivateNatGatewayTranslationAclRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreatePrivateNatGatewayTranslationAclRuleResponse`
        def CreatePrivateNatGatewayTranslationAclRule(request)
          body = send_request('CreatePrivateNatGatewayTranslationAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivateNatGatewayTranslationAclRuleResponse.new
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

        # 本接口（CreatePrivateNatGatewayTranslationNatRule）用于创建私网NAT网关源端转换规则。

        # @param request: Request instance for CreatePrivateNatGatewayTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreatePrivateNatGatewayTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreatePrivateNatGatewayTranslationNatRuleResponse`
        def CreatePrivateNatGatewayTranslationNatRule(request)
          body = send_request('CreatePrivateNatGatewayTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrivateNatGatewayTranslationNatRuleResponse.new
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

        # 创建内网保留IP

        # @param request: Request instance for CreateReserveIpAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateReserveIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateReserveIpAddressesResponse`
        def CreateReserveIpAddresses(request)
          body = send_request('CreateReserveIpAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateReserveIpAddressesResponse.new
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

        # 创建VPC路由接收策略，包括名字，描述和策略条目。

        # @param request: Request instance for CreateRoutePolicy.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateRoutePolicyRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateRoutePolicyResponse`
        def CreateRoutePolicy(request)
          body = send_request('CreateRoutePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoutePolicyResponse.new
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

        # 本接口（CreateRoutePolicyAssociations）用于创建路由接收策略绑定(路由策略实例和路由表实例的绑定关系以及绑定优先级)。

        # @param request: Request instance for CreateRoutePolicyAssociations.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateRoutePolicyAssociationsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateRoutePolicyAssociationsResponse`
        def CreateRoutePolicyAssociations(request)
          body = send_request('CreateRoutePolicyAssociations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoutePolicyAssociationsResponse.new
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

        # 本接口（CreateRoutePolicyEntries）用于创建路由接收策略条目。

        # @param request: Request instance for CreateRoutePolicyEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateRoutePolicyEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateRoutePolicyEntriesResponse`
        def CreateRoutePolicyEntries(request)
          body = send_request('CreateRoutePolicyEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRoutePolicyEntriesResponse.new
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

        # 本接口(CreateRouteTable)用于创建路由表。
        # * 创建了VPC后，系统会创建一个默认路由表，所有新建的子网都会关联到默认路由表。默认情况下您可以直接使用默认路由表来管理您的路由策略。当您的路由策略较多时，您可以调用创建路由表接口创建更多路由表管理您的路由策略。
        # * 创建路由表同时可以绑定标签, 应答里的标签列表代表添加成功的标签。

        # @param request: Request instance for CreateRouteTable.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateRouteTableRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateRouteTableResponse`
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

        # 本接口（CreateRoutes）用于创建路由策略。
        # * 向指定路由表批量新增路由策略。

        # @param request: Request instance for CreateRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateRoutesResponse`
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

        # 本接口（CreateSecurityGroup）用于创建新的安全组（SecurityGroup）。
        # * 每个账户下每个地域的每个项目的<a href="https://cloud.tencent.com/document/product/213/12453">安全组数量限制</a>。
        # * 新建的安全组的入站和出站规则默认都是全部拒绝，在创建后通常您需要再调用CreateSecurityGroupPolicies将安全组的规则设置为需要的规则。
        # * 创建安全组同时可以绑定标签, 应答里的标签列表代表添加成功的标签。

        # @param request: Request instance for CreateSecurityGroup.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateSecurityGroupResponse`
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

        # 本接口（CreateSecurityGroupPolicies）用于创建安全组规则（SecurityGroupPolicy）。

        # 在 SecurityGroupPolicySet 参数中：
        # <ul>
        # <li>Version 安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。</li>
        # <li>在创建出站和入站规则（Egress 和 Ingress）时：<ul>
        # <li>Protocol 字段支持输入TCP, UDP, ICMP, ICMPV6, GRE, ALL。</li>
        # <li>CidrBlock 字段允许输入符合cidr格式标准的任意字符串。在基础网络中，如果 CidrBlock 包含您的账户内的云服务器之外的设备在腾讯云的内网 IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。</li>
        # <li>Ipv6CidrBlock 字段允许输入符合IPv6 cidr格式标准的任意字符串。在基础网络中，如果Ipv6CidrBlock 包含您的账户内的云服务器之外的设备在腾讯云的内网 IPv6，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。</li>
        # <li>SecurityGroupId 字段允许输入与待修改的安全组位于相同项目中的安全组 ID，包括这个安全组 ID 本身，代表安全组下所有云服务器的内网 IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个 ID 所关联的云服务器变化而变化，不需要重新修改。</li>
        # <li>Port 字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当 Protocol 字段是 TCP 或 UDP 时，Port 字段才被接受，即 Protocol 字段不是 TCP 或 UDP 时，Protocol 和 Port 是排他关系，不允许同时输入，否则会接口报错。</li>
        # <li>Action 字段只允许输入 ACCEPT 或 DROP。</li>
        # <li>CidrBlock, Ipv6CidrBlock, SecurityGroupId, AddressTemplate 四者是排他关系，不允许同时输入，Protocol + Port 和 ServiceTemplate 二者是排他关系，不允许同时输入。IPv6CidrBlock和ICMP是排他关系，如需使用，请输入ICMPV6。</li>
        # <li>一次请求中只能创建单个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。如想在规则最前面插入一条，则填0即可，如果想在最后追加，该字段可不填。</li>
        # </ul></li></ul>

        # @param request: Request instance for CreateSecurityGroupPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateSecurityGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateSecurityGroupPoliciesResponse`
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

        # 本接口（CreateSecurityGroupWithPolicies）用于创建新的安全组（SecurityGroup），并且可以同时添加安全组规则（SecurityGroupPolicy）。
        # * 每个账户下每个地域的每个项目的<a href="https://cloud.tencent.com/document/product/213/12453">安全组数量限制</a>。
        # * 新建的安全组的入站和出站规则默认都是全部拒绝，在创建后通常您需要再调用<a href="https://cloud.tencent.com/document/product/215/15807">CreateSecurityGroupPolicies</a>
        # 将安全组的规则设置为需要的规则。

        # 安全组规则说明：
        # * Version安全组规则版本号，用户每次更新安全规则版本会自动加1，防止您更新的路由规则已过期，不填不考虑冲突。
        # * Protocol字段支持输入TCP, UDP, ICMP, ICMPV6, GRE, ALL。
        # * CidrBlock字段允许输入符合cidr格式标准的任意字符串。(展开)在基础网络中，如果CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
        # * Ipv6CidrBlock字段允许输入符合IPv6 cidr格式标准的任意字符串。(展开)在基础网络中，如果Ipv6CidrBlock包含您的账户内的云服务器之外的设备在腾讯云的内网IPv6，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。
        # * SecurityGroupId字段允许输入与待修改的安全组位于相同项目中的安全组ID，包括这个安全组ID本身，代表安全组下所有云服务器的内网IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个ID所关联的云服务器变化而变化，不需要重新修改。
        # * Port字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当Protocol字段是TCP或UDP时，Port字段才被接受，即Protocol字段不是TCP或UDP时，Protocol和Port是排他关系，不允许同时输入，否则会接口报错。
        # * Action字段只允许输入ACCEPT或DROP。
        # * CidrBlock, Ipv6CidrBlock, SecurityGroupId, AddressTemplate四者是排他关系，不允许同时输入，Protocol + Port和ServiceTemplate二者是排他关系，不允许同时输入。
        # * 请求中可以同时指定入站和出站两个方向的规则, 如果需要指定索引（PolicyIndex）参数, 多条规则的索引必须一致。

        # @param request: Request instance for CreateSecurityGroupWithPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateSecurityGroupWithPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateSecurityGroupWithPoliciesResponse`
        def CreateSecurityGroupWithPolicies(request)
          body = send_request('CreateSecurityGroupWithPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityGroupWithPoliciesResponse.new
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

        # 本接口（CreateServiceTemplate）用于创建协议端口模板。

        # @param request: Request instance for CreateServiceTemplate.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateServiceTemplateRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateServiceTemplateResponse`
        def CreateServiceTemplate(request)
          body = send_request('CreateServiceTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServiceTemplateResponse.new
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

        # 本接口（CreateServiceTemplateGroup）用于创建协议端口模板集合。

        # @param request: Request instance for CreateServiceTemplateGroup.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateServiceTemplateGroupRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateServiceTemplateGroupResponse`
        def CreateServiceTemplateGroup(request)
          body = send_request('CreateServiceTemplateGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServiceTemplateGroupResponse.new
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

        # 本接口（CreateSnapshotPolicies）用于创建快照策略。

        # @param request: Request instance for CreateSnapshotPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateSnapshotPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateSnapshotPoliciesResponse`
        def CreateSnapshotPolicies(request)
          body = send_request('CreateSnapshotPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSnapshotPoliciesResponse.new
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

        # 本接口（CreateSubnet）用于创建子网。
        # * 创建子网前必须创建好 VPC。
        # * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
        # * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
        # * 同一个VPC内，多个子网的网段不能重叠。
        # * 子网创建后会自动关联到默认路由表。
        # * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。

        # @param request: Request instance for CreateSubnet.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateSubnetRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateSubnetResponse`
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

        # 本接口（CreateSubnets）用于批量创建子网。
        # * 创建子网前必须创建好 VPC。
        # * 子网创建成功后，子网网段不能修改。子网网段必须在VPC网段内，可以和VPC网段相同（VPC有且只有一个子网时），建议子网网段在VPC网段内，预留网段给其他子网使用。
        # * 您可以创建的最小网段子网掩码为28（有16个IP地址），最大网段子网掩码为16（65,536个IP地址）。
        # * 同一个VPC内，多个子网的网段不能重叠。
        # * 子网创建后会自动关联到默认路由表。
        # * 创建子网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。

        # @param request: Request instance for CreateSubnets.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateSubnetsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateSubnetsResponse`
        def CreateSubnets(request)
          body = send_request('CreateSubnets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSubnetsResponse.new
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

        # 本接口（CreateTrafficMirror）用于创建流量镜像实例。

        # @param request: Request instance for CreateTrafficMirror.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateTrafficMirrorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateTrafficMirrorResponse`
        def CreateTrafficMirror(request)
          body = send_request('CreateTrafficMirror', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTrafficMirrorResponse.new
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

        # 本接口 (CreateTrafficPackages) 用于创建共享流量包。

        # @param request: Request instance for CreateTrafficPackages.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateTrafficPackagesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateTrafficPackagesResponse`
        def CreateTrafficPackages(request)
          body = send_request('CreateTrafficPackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTrafficPackagesResponse.new
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

        # 本接口（CreateVpc）用于创建私有网络（VPC）。
        # * 用户可以创建的最小网段子网掩码为28（有16个IP地址），10.0.0.0/12，172.16.0.0/12最大网段子网掩码为12（1,048,576个IP地址），192.168.0.0/16最大网段子网掩码为16（65,536个IP地址）如果需要规划VPC网段请参见[网络规划](https://cloud.tencent.com/document/product/215/30313)。
        # * 同一个地域能创建的VPC资源个数也是有限制的，详见 <a href="https://cloud.tencent.com/doc/product/215/537" title="VPC使用限制">VPC使用限制</a>，如果需要申请更多资源，请提交[工单申请](https://console.cloud.tencent.com/workorder/category)。
        # * 创建VPC同时可以绑定标签, 应答里的标签列表代表添加成功的标签。

        # @param request: Request instance for CreateVpc.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpcRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpcResponse`
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

        # 本接口（CreateVpcEndPoint）用于创建终端节点。

        # @param request: Request instance for CreateVpcEndPoint.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpcEndPointRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpcEndPointResponse`
        def CreateVpcEndPoint(request)
          body = send_request('CreateVpcEndPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpcEndPointResponse.new
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

        # 本接口（CreateVpcEndPointService）用于创建终端节点服务。

        # @param request: Request instance for CreateVpcEndPointService.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpcEndPointServiceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpcEndPointServiceResponse`
        def CreateVpcEndPointService(request)
          body = send_request('CreateVpcEndPointService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpcEndPointServiceResponse.new
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

        # 本接口（CreateVpcEndPointServiceWhiteList）创建终端服务白名单。

        # @param request: Request instance for CreateVpcEndPointServiceWhiteList.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpcEndPointServiceWhiteListRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpcEndPointServiceWhiteListResponse`
        def CreateVpcEndPointServiceWhiteList(request)
          body = send_request('CreateVpcEndPointServiceWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpcEndPointServiceWhiteListResponse.new
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

        # 本接口（CreateVpcPeeringConnection）用于创建私有网络对等连接。

        # @param request: Request instance for CreateVpcPeeringConnection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpcPeeringConnectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpcPeeringConnectionResponse`
        def CreateVpcPeeringConnection(request)
          body = send_request('CreateVpcPeeringConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpcPeeringConnectionResponse.new
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

        # 本接口（CreateVpnConnection）用于创建VPN通道。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for CreateVpnConnection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpnConnectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpnConnectionResponse`
        def CreateVpnConnection(request)
          body = send_request('CreateVpnConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpnConnectionResponse.new
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

        # 本接口（CreateVpnGateway）用于创建VPN网关。

        # @param request: Request instance for CreateVpnGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpnGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpnGatewayResponse`
        def CreateVpnGateway(request)
          body = send_request('CreateVpnGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpnGatewayResponse.new
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

        # 创建路由型VPN网关的目的路由

        # @param request: Request instance for CreateVpnGatewayRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpnGatewayRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpnGatewayRoutesResponse`
        def CreateVpnGatewayRoutes(request)
          body = send_request('CreateVpnGatewayRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpnGatewayRoutesResponse.new
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

        # 创建SSL-VPN-CLIENT

        # @param request: Request instance for CreateVpnGatewaySslClient.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpnGatewaySslClientRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpnGatewaySslClientResponse`
        def CreateVpnGatewaySslClient(request)
          body = send_request('CreateVpnGatewaySslClient', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpnGatewaySslClientResponse.new
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

        # 本接口（CreateVpnGatewaySslServer）用于创建SSL-VPN Server端。

        # @param request: Request instance for CreateVpnGatewaySslServer.
        # @type request: :class:`Tencentcloud::vpc::V20170312::CreateVpnGatewaySslServerRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::CreateVpnGatewaySslServerResponse`
        def CreateVpnGatewaySslServer(request)
          body = send_request('CreateVpnGatewaySslServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateVpnGatewaySslServerResponse.new
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

        # 本接口（DeleteAddressTemplate）用于删除IP地址模板。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for DeleteAddressTemplate.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteAddressTemplateRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteAddressTemplateResponse`
        def DeleteAddressTemplate(request)
          body = send_request('DeleteAddressTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAddressTemplateResponse.new
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

        # 本接口（DeleteAddressTemplateGroup）用于删除IP地址模板集合。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for DeleteAddressTemplateGroup.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteAddressTemplateGroupRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteAddressTemplateGroupResponse`
        def DeleteAddressTemplateGroup(request)
          body = send_request('DeleteAddressTemplateGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAddressTemplateGroupResponse.new
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

        # 本接口（DeleteAssistantCidr）用于删除辅助CIDR。

        # @param request: Request instance for DeleteAssistantCidr.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteAssistantCidrRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteAssistantCidrResponse`
        def DeleteAssistantCidr(request)
          body = send_request('DeleteAssistantCidr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAssistantCidrResponse.new
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

        # 接口支持删除共享带宽包，包括[设备带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)和[IP带宽包](https://cloud.tencent.com/document/product/684/15245#bwptype)

        # @param request: Request instance for DeleteBandwidthPackage.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteBandwidthPackageRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteBandwidthPackageResponse`
        def DeleteBandwidthPackage(request)
          body = send_request('DeleteBandwidthPackage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteBandwidthPackageResponse.new
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

        # 本接口（DeleteCcn）用于删除云联网。
        # * 删除后，云联网关联的所有实例间路由将被删除，网络将会中断，请务必确认
        # * 删除云联网是不可逆的操作，请谨慎处理。

        # @param request: Request instance for DeleteCcn.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteCcnRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteCcnResponse`
        def DeleteCcn(request)
          body = send_request('DeleteCcn', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCcnResponse.new
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

        # 本接口（DeleteCcnRouteTables）用于删除云联网路由表。

        # @param request: Request instance for DeleteCcnRouteTables.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteCcnRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteCcnRouteTablesResponse`
        def DeleteCcnRouteTables(request)
          body = send_request('DeleteCcnRouteTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCcnRouteTablesResponse.new
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

        # 删除 IDC通道

        # @param request: Request instance for DeleteCdcLDCXList.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteCdcLDCXListRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteCdcLDCXListResponse`
        def DeleteCdcLDCXList(request)
          body = send_request('DeleteCdcLDCXList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCdcLDCXListResponse.new
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

        # 删除虚拟连接

        # @param request: Request instance for DeleteCdcNetPlanes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteCdcNetPlanesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteCdcNetPlanesResponse`
        def DeleteCdcNetPlanes(request)
          body = send_request('DeleteCdcNetPlanes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCdcNetPlanesResponse.new
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
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteCustomerGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteCustomerGatewayResponse`
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

        # 本接口（DeleteDhcpIp）用于删除DhcpIp。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for DeleteDhcpIp.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteDhcpIpRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteDhcpIpResponse`
        def DeleteDhcpIp(request)
          body = send_request('DeleteDhcpIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDhcpIpResponse.new
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

        # 本接口（DeleteDirectConnectGateway）用于删除专线网关。
        # <li>如果是 NAT 网关，删除专线网关后，NAT 规则以及 ACL 策略都被清理了。</li>
        # <li>删除专线网关后，系统会删除路由表中跟该专线网关相关的路由策略。</li>
        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`QueryTask`接口

        # @param request: Request instance for DeleteDirectConnectGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteDirectConnectGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteDirectConnectGatewayResponse`
        def DeleteDirectConnectGateway(request)
          body = send_request('DeleteDirectConnectGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDirectConnectGatewayResponse.new
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

        # 本接口（DeleteDirectConnectGatewayCcnRoutes）用于删除专线网关的云联网路由（IDC网段）

        # @param request: Request instance for DeleteDirectConnectGatewayCcnRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteDirectConnectGatewayCcnRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteDirectConnectGatewayCcnRoutesResponse`
        def DeleteDirectConnectGatewayCcnRoutes(request)
          body = send_request('DeleteDirectConnectGatewayCcnRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDirectConnectGatewayCcnRoutesResponse.new
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

        # 本接口（DeleteFlowLog）用于删除流日志。

        # @param request: Request instance for DeleteFlowLog.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteFlowLogRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteFlowLogResponse`
        def DeleteFlowLog(request)
          body = send_request('DeleteFlowLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFlowLogResponse.new
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

        # 删除全局路由。

        # @param request: Request instance for DeleteGlobalRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteGlobalRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteGlobalRoutesResponse`
        def DeleteGlobalRoutes(request)
          body = send_request('DeleteGlobalRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGlobalRoutesResponse.new
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

        # 本接口（DeleteHaVip）用于删除高可用虚拟IP（HAVIP）。<br />
        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。

        # @param request: Request instance for DeleteHaVip.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteHaVipRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteHaVipResponse`
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

        # 删除高优路由表

        # @param request: Request instance for DeleteHighPriorityRouteTables.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteHighPriorityRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteHighPriorityRouteTablesResponse`
        def DeleteHighPriorityRouteTables(request)
          body = send_request('DeleteHighPriorityRouteTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHighPriorityRouteTablesResponse.new
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

        # 删除高优路由表的路由条目。

        # @param request: Request instance for DeleteHighPriorityRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteHighPriorityRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteHighPriorityRoutesResponse`
        def DeleteHighPriorityRoutes(request)
          body = send_request('DeleteHighPriorityRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteHighPriorityRoutesResponse.new
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

        # 1. 该接口用于释放IPV6转换实例，支持批量。
        # 2.  如果IPV6转换实例建立有转换规则，会一并删除。

        # @param request: Request instance for DeleteIp6Translators.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteIp6TranslatorsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteIp6TranslatorsResponse`
        def DeleteIp6Translators(request)
          body = send_request('DeleteIp6Translators', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIp6TranslatorsResponse.new
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

        # 本接口（DeleteLocalGateway）用于删除CDC的本地网关。

        # @param request: Request instance for DeleteLocalGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteLocalGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteLocalGatewayResponse`
        def DeleteLocalGateway(request)
          body = send_request('DeleteLocalGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteLocalGatewayResponse.new
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

        # 本接口（DeleteNatGateway）用于删除NAT网关。
        # 删除 NAT 网关后，系统会自动删除路由表中包含此 NAT 网关的路由项，同时也会解绑弹性公网IP（EIP）。

        # @param request: Request instance for DeleteNatGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteNatGatewayResponse`
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

        # 本接口（DeleteNatGatewayDestinationIpPortTranslationNatRule）用于删除NAT网关端口转发规则。

        # @param request: Request instance for DeleteNatGatewayDestinationIpPortTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteNatGatewayDestinationIpPortTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteNatGatewayDestinationIpPortTranslationNatRuleResponse`
        def DeleteNatGatewayDestinationIpPortTranslationNatRule(request)
          body = send_request('DeleteNatGatewayDestinationIpPortTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNatGatewayDestinationIpPortTranslationNatRuleResponse.new
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

        # 本接口（DeleteNatGatewaySourceIpTranslationNatRule）用于删除NAT网关端口SNAT转发规则。

        # @param request: Request instance for DeleteNatGatewaySourceIpTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteNatGatewaySourceIpTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteNatGatewaySourceIpTranslationNatRuleResponse`
        def DeleteNatGatewaySourceIpTranslationNatRule(request)
          body = send_request('DeleteNatGatewaySourceIpTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNatGatewaySourceIpTranslationNatRuleResponse.new
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

        # 本接口（DeleteNetDetect）用于删除网络探测实例。

        # @param request: Request instance for DeleteNetDetect.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteNetDetectRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteNetDetectResponse`
        def DeleteNetDetect(request)
          body = send_request('DeleteNetDetect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNetDetectResponse.new
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

        # 本接口（DeleteNetworkAcl）用于删除网络ACL。

        # @param request: Request instance for DeleteNetworkAcl.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteNetworkAclRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteNetworkAclResponse`
        def DeleteNetworkAcl(request)
          body = send_request('DeleteNetworkAcl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNetworkAclResponse.new
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

        # 本接口（DeleteNetworkAclEntries）用于删除三元组网络ACL的入站规则和出站规则。在NetworkAclEntrySet参数中：
        # * 删除IPv4规则，需要传入NetworkAclIpv4EntryId。
        # * 删除IPv6规则，需要传入NetworkAclIpv6EntryId。

        # @param request: Request instance for DeleteNetworkAclEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteNetworkAclEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteNetworkAclEntriesResponse`
        def DeleteNetworkAclEntries(request)
          body = send_request('DeleteNetworkAclEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNetworkAclEntriesResponse.new
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

        # 本接口（DeleteNetworkAclQuintupleEntries）用于删除网络ACL五元组指定的入站规则和出站规则（但不是全量删除该ACL下的所有条目）。在NetworkAclQuintupleEntrySet参数中：NetworkAclQuintupleEntry需要提供NetworkAclQuintupleEntryId。

        # @param request: Request instance for DeleteNetworkAclQuintupleEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteNetworkAclQuintupleEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteNetworkAclQuintupleEntriesResponse`
        def DeleteNetworkAclQuintupleEntries(request)
          body = send_request('DeleteNetworkAclQuintupleEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNetworkAclQuintupleEntriesResponse.new
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

        # 本接口（DeleteNetworkInterface）用于删除弹性网卡。
        # * 弹性网卡上绑定了云服务器时，不能被删除。
        # * 删除指定弹性网卡，弹性网卡必须先和子机解绑才能删除。删除之后弹性网卡上所有内网IP都将被退还。

        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询[DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037)
        # 接口。

        # @param request: Request instance for DeleteNetworkInterface.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteNetworkInterfaceResponse`
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

        # 本接口（DeletePrivateNatGateway）用于删除私网NAT网关。

        # @param request: Request instance for DeletePrivateNatGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeletePrivateNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeletePrivateNatGatewayResponse`
        def DeletePrivateNatGateway(request)
          body = send_request('DeletePrivateNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivateNatGatewayResponse.new
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

        # 本接口（DeletePrivateNatGatewayDestinationIpPortTranslationNatRule）用于删除私网NAT网关目的端口转换规则

        # @param request: Request instance for DeletePrivateNatGatewayDestinationIpPortTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeletePrivateNatGatewayDestinationIpPortTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeletePrivateNatGatewayDestinationIpPortTranslationNatRuleResponse`
        def DeletePrivateNatGatewayDestinationIpPortTranslationNatRule(request)
          body = send_request('DeletePrivateNatGatewayDestinationIpPortTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivateNatGatewayDestinationIpPortTranslationNatRuleResponse.new
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

        # 本接口（DeletePrivateNatGatewayTranslationAclRule）用于删除私网NAT网关源端转换访问控制规则

        # @param request: Request instance for DeletePrivateNatGatewayTranslationAclRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeletePrivateNatGatewayTranslationAclRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeletePrivateNatGatewayTranslationAclRuleResponse`
        def DeletePrivateNatGatewayTranslationAclRule(request)
          body = send_request('DeletePrivateNatGatewayTranslationAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivateNatGatewayTranslationAclRuleResponse.new
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

        # 本接口（DeletePrivateNatGatewayTranslationNatRule）用于删除私网NAT网关源端转换规则

        # @param request: Request instance for DeletePrivateNatGatewayTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeletePrivateNatGatewayTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeletePrivateNatGatewayTranslationNatRuleResponse`
        def DeletePrivateNatGatewayTranslationNatRule(request)
          body = send_request('DeletePrivateNatGatewayTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePrivateNatGatewayTranslationNatRuleResponse.new
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

        # 删除内网保留IP

        # @param request: Request instance for DeleteReserveIpAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteReserveIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteReserveIpAddressesResponse`
        def DeleteReserveIpAddresses(request)
          body = send_request('DeleteReserveIpAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteReserveIpAddressesResponse.new
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

        # 本接口（DeleteRoutePolicy）用于删除路由接收策略和条目。

        # @param request: Request instance for DeleteRoutePolicy.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteRoutePolicyRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteRoutePolicyResponse`
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

        # 本接口(DeleteRoutePolicyAssociations)用于删除路由接收策略绑定（路由接收策略对象和路由表的绑定关系）。

        # @param request: Request instance for DeleteRoutePolicyAssociations.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteRoutePolicyAssociationsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteRoutePolicyAssociationsResponse`
        def DeleteRoutePolicyAssociations(request)
          body = send_request('DeleteRoutePolicyAssociations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoutePolicyAssociationsResponse.new
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

        # 本接口(DeleteRoutePolicyEntries)用于删除路由接收策略条目。

        # @param request: Request instance for DeleteRoutePolicyEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteRoutePolicyEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteRoutePolicyEntriesResponse`
        def DeleteRoutePolicyEntries(request)
          body = send_request('DeleteRoutePolicyEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRoutePolicyEntriesResponse.new
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

        # 本接口（DeleteRouteTable）用于删除路由表。

        # @param request: Request instance for DeleteRouteTable.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteRouteTableRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteRouteTableResponse`
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

        # 本接口(DeleteRoutes)用于对某个路由表批量删除路由策略（Route）。

        # @param request: Request instance for DeleteRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteRoutesResponse`
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

        # 本接口（DeleteSecurityGroup）用于删除安全组（SecurityGroup）。
        # * 只有当前账号下的安全组允许被删除。
        # * 安全组实例ID如果在其他安全组的规则中被引用，则无法直接删除。这种情况下，需要先进行规则修改，再删除安全组。
        # * 删除的安全组无法再找回，请谨慎调用。

        # @param request: Request instance for DeleteSecurityGroup.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteSecurityGroupRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteSecurityGroupResponse`
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

        # 本接口（DeleteSecurityGroupPolicies）用于删除安全组规则（SecurityGroupPolicy）。
        # * SecurityGroupPolicySet.Version 用于指定要操作的安全组的版本。传入 Version 版本号若不等于当前安全组的最新版本，将返回失败；若不传 Version 则直接删除指定PolicyIndex的规则。

        # @param request: Request instance for DeleteSecurityGroupPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteSecurityGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteSecurityGroupPoliciesResponse`
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

        # 本接口（DeleteServiceTemplate）用于删除协议端口模板。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for DeleteServiceTemplate.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteServiceTemplateRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteServiceTemplateResponse`
        def DeleteServiceTemplate(request)
          body = send_request('DeleteServiceTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServiceTemplateResponse.new
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

        # 本接口（DeleteServiceTemplateGroup）用于删除协议端口模板集合。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for DeleteServiceTemplateGroup.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteServiceTemplateGroupRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteServiceTemplateGroupResponse`
        def DeleteServiceTemplateGroup(request)
          body = send_request('DeleteServiceTemplateGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServiceTemplateGroupResponse.new
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

        # 本接口（DeleteSnapshotPolicies）用于删除快照策略。

        # @param request: Request instance for DeleteSnapshotPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteSnapshotPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteSnapshotPoliciesResponse`
        def DeleteSnapshotPolicies(request)
          body = send_request('DeleteSnapshotPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSnapshotPoliciesResponse.new
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

        # 本接口（DeleteSubnet）用于删除子网（Subnet）。
        # * 删除子网前，请清理该子网下所有资源，包括云服务器、负载均衡、云数据、NoSQL、弹性网卡等资源。

        # @param request: Request instance for DeleteSubnet.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteSubnetRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteSubnetResponse`
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

        # 删除模板对象中的IP地址、协议端口、IP地址组、协议端口组。

        # @param request: Request instance for DeleteTemplateMember.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteTemplateMemberRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteTemplateMemberResponse`
        def DeleteTemplateMember(request)
          body = send_request('DeleteTemplateMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTemplateMemberResponse.new
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

        # 本接口（DeleteTrafficMirror）用于删除流量镜像实例。

        # @param request: Request instance for DeleteTrafficMirror.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteTrafficMirrorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteTrafficMirrorResponse`
        def DeleteTrafficMirror(request)
          body = send_request('DeleteTrafficMirror', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTrafficMirrorResponse.new
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

        # 删除共享带宽包（仅非活动状态的流量包可删除）。

        # @param request: Request instance for DeleteTrafficPackages.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteTrafficPackagesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteTrafficPackagesResponse`
        def DeleteTrafficPackages(request)
          body = send_request('DeleteTrafficPackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteTrafficPackagesResponse.new
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

        # 本接口（DeleteVpc）用于删除私有网络。
        # * 删除前请确保 VPC 内已经没有相关资源，例如云服务器、云数据库、NoSQL、VPN网关、专线网关、负载均衡、对等连接、与之互通的基础网络设备等。
        # * 删除私有网络是不可逆的操作，请谨慎处理。

        # @param request: Request instance for DeleteVpc.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpcRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpcResponse`
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

        # 本接口（DeleteVpcEndPoint）用于删除终端节点。

        # @param request: Request instance for DeleteVpcEndPoint.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpcEndPointRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpcEndPointResponse`
        def DeleteVpcEndPoint(request)
          body = send_request('DeleteVpcEndPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpcEndPointResponse.new
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

        # 本接口（DeleteVpcEndPointService）用于删除终端节点服务。限制：当有终端节点关联到终端节点服务时，无法删除终端节点服务。

        # @param request: Request instance for DeleteVpcEndPointService.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpcEndPointServiceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpcEndPointServiceResponse`
        def DeleteVpcEndPointService(request)
          body = send_request('DeleteVpcEndPointService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpcEndPointServiceResponse.new
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

        # 本接口（DeleteVpcEndPointServiceWhiteList）用于删除终端节点服务白名单。

        # @param request: Request instance for DeleteVpcEndPointServiceWhiteList.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpcEndPointServiceWhiteListRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpcEndPointServiceWhiteListResponse`
        def DeleteVpcEndPointServiceWhiteList(request)
          body = send_request('DeleteVpcEndPointServiceWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpcEndPointServiceWhiteListResponse.new
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

        # 本接口（DeleteVpcPeeringConnection）用于删除私有网络对等连接。

        # @param request: Request instance for DeleteVpcPeeringConnection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpcPeeringConnectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpcPeeringConnectionResponse`
        def DeleteVpcPeeringConnection(request)
          body = send_request('DeleteVpcPeeringConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpcPeeringConnectionResponse.new
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

        # 本接口（DeleteVpnConnection）用于删除VPN通道。
        # >?本接口为异步接口
        # >

        # @param request: Request instance for DeleteVpnConnection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpnConnectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpnConnectionResponse`
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
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpnGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpnGatewayResponse`
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

        # 本接口（DeleteVpnGatewayRoutes）用于删除VPN网关路由

        # @param request: Request instance for DeleteVpnGatewayRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpnGatewayRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpnGatewayRoutesResponse`
        def DeleteVpnGatewayRoutes(request)
          body = send_request('DeleteVpnGatewayRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpnGatewayRoutesResponse.new
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

        # 本接口（DeleteVpnGatewaySslClient）用于删除SSL-VPN-CLIENT。

        # @param request: Request instance for DeleteVpnGatewaySslClient.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpnGatewaySslClientRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpnGatewaySslClientResponse`
        def DeleteVpnGatewaySslClient(request)
          body = send_request('DeleteVpnGatewaySslClient', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpnGatewaySslClientResponse.new
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

        # 删除SSL-VPN-SERVER 实例

        # @param request: Request instance for DeleteVpnGatewaySslServer.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DeleteVpnGatewaySslServerRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DeleteVpnGatewaySslServerResponse`
        def DeleteVpnGatewaySslServer(request)
          body = send_request('DeleteVpnGatewaySslServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteVpnGatewaySslServerResponse.new
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

        # 本接口（DescribeAccountAttributes）用于查询用户账号私有属性。

        # @param request: Request instance for DescribeAccountAttributes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeAccountAttributesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeAccountAttributesResponse`
        def DescribeAccountAttributes(request)
          body = send_request('DescribeAccountAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccountAttributesResponse.new
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

        # 本接口（DescribeAddressBandwidthRange）用于查询指定EIP的带宽上下限范围。

        # @param request: Request instance for DescribeAddressBandwidthRange.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeAddressBandwidthRangeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeAddressBandwidthRangeResponse`
        def DescribeAddressBandwidthRange(request)
          body = send_request('DescribeAddressBandwidthRange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressBandwidthRangeResponse.new
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

        # 本接口 (DescribeAddressQuota) 用于查询您账户的[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）在当前地域的配额信息。配额详情可参见 [EIP 产品简介](https://cloud.tencent.com/document/product/213/5733)。

        # @param request: Request instance for DescribeAddressQuota.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeAddressQuotaRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeAddressQuotaResponse`
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

        # 本接口（DescribeAddressTemplateGroupInstances）用于查询参数模板IP地址组口关联的实例列表。本接口不会返回查询的结果，需要根据返回的RequestId调用DescribeVpcTaskResult接口获取结果。

        # @param request: Request instance for DescribeAddressTemplateGroupInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeAddressTemplateGroupInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeAddressTemplateGroupInstancesResponse`
        def DescribeAddressTemplateGroupInstances(request)
          body = send_request('DescribeAddressTemplateGroupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressTemplateGroupInstancesResponse.new
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

        # 本接口（DescribeAddressTemplateGroups）用于查询IP地址模板集合。

        # @param request: Request instance for DescribeAddressTemplateGroups.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeAddressTemplateGroupsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeAddressTemplateGroupsResponse`
        def DescribeAddressTemplateGroups(request)
          body = send_request('DescribeAddressTemplateGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressTemplateGroupsResponse.new
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

        # 本接口（DescribeAddressTemplateInstances）用于查询参数模板IP地址关联的实例列表。本接口不会返回查询的结果，需要根据返回的RequestId调用DescribeVpcTaskResult接口获取结果。

        # @param request: Request instance for DescribeAddressTemplateInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeAddressTemplateInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeAddressTemplateInstancesResponse`
        def DescribeAddressTemplateInstances(request)
          body = send_request('DescribeAddressTemplateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressTemplateInstancesResponse.new
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

        # 本接口（DescribeAddressTemplates）用于查询IP地址模板。

        # @param request: Request instance for DescribeAddressTemplates.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeAddressTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeAddressTemplatesResponse`
        def DescribeAddressTemplates(request)
          body = send_request('DescribeAddressTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAddressTemplatesResponse.new
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

        # 本接口 (DescribeAddresses) 用于查询一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的详细信息。
        # * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的 EIP。

        # @param request: Request instance for DescribeAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeAddressesResponse`
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

        # 本接口（DescribeAssistantCidr）用于查询辅助CIDR列表。

        # @param request: Request instance for DescribeAssistantCidr.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeAssistantCidrRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeAssistantCidrResponse`
        def DescribeAssistantCidr(request)
          body = send_request('DescribeAssistantCidr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAssistantCidrResponse.new
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

        # 查询指定带宽包的带宽上下限范围

        # @param request: Request instance for DescribeBandwidthPackageBandwidthRange.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackageBandwidthRangeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackageBandwidthRangeResponse`
        def DescribeBandwidthPackageBandwidthRange(request)
          body = send_request('DescribeBandwidthPackageBandwidthRange', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBandwidthPackageBandwidthRangeResponse.new
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

        # 本接口 (DescribeBandwidthPackageBillUsage) 用于查询后付费共享带宽包当前的计费用量.

        # @param request: Request instance for DescribeBandwidthPackageBillUsage.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackageBillUsageRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackageBillUsageResponse`
        def DescribeBandwidthPackageBillUsage(request)
          body = send_request('DescribeBandwidthPackageBillUsage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBandwidthPackageBillUsageResponse.new
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

        # 接口用于查询账户在当前地域的带宽包上限数量以及使用数量

        # @param request: Request instance for DescribeBandwidthPackageQuota.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackageQuotaRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackageQuotaResponse`
        def DescribeBandwidthPackageQuota(request)
          body = send_request('DescribeBandwidthPackageQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBandwidthPackageQuotaResponse.new
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

        # 本接口 (DescribeBandwidthPackageResources) 用于根据共享带宽包唯一ID查询共享带宽包内的资源列表，支持按条件过滤查询结果和分页查询。

        # @param request: Request instance for DescribeBandwidthPackageResources.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackageResourcesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackageResourcesResponse`
        def DescribeBandwidthPackageResources(request)
          body = send_request('DescribeBandwidthPackageResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBandwidthPackageResourcesResponse.new
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

        # 接口用于查询带宽包详细信息，包括带宽包唯一标识ID，类型，计费模式，名称，资源信息等

        # @param request: Request instance for DescribeBandwidthPackages.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackagesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeBandwidthPackagesResponse`
        def DescribeBandwidthPackages(request)
          body = send_request('DescribeBandwidthPackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBandwidthPackagesResponse.new
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

        # 本接口（DescribeCcnAttachedInstances）用于查询云联网实例下已关联的网络实例。

        # @param request: Request instance for DescribeCcnAttachedInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCcnAttachedInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCcnAttachedInstancesResponse`
        def DescribeCcnAttachedInstances(request)
          body = send_request('DescribeCcnAttachedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcnAttachedInstancesResponse.new
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

        # 本接口（DescribeCcnRegionBandwidthLimits）用于查询云联网各地域出带宽上限，该接口只返回已关联网络实例包含的地域。

        # @param request: Request instance for DescribeCcnRegionBandwidthLimits.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRegionBandwidthLimitsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRegionBandwidthLimitsResponse`
        def DescribeCcnRegionBandwidthLimits(request)
          body = send_request('DescribeCcnRegionBandwidthLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcnRegionBandwidthLimitsResponse.new
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

        # 本接口(DescribeCcnRouteTableBroadcastPolicys)用于查询指定云联网路由表的路由传播策略。

        # @param request: Request instance for DescribeCcnRouteTableBroadcastPolicys.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRouteTableBroadcastPolicysRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRouteTableBroadcastPolicysResponse`
        def DescribeCcnRouteTableBroadcastPolicys(request)
          body = send_request('DescribeCcnRouteTableBroadcastPolicys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcnRouteTableBroadcastPolicysResponse.new
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

        # 本接口(DescribeCcnRouteTableInputPolicys)用于查询指定云联网路由表的路由接收策略。

        # @param request: Request instance for DescribeCcnRouteTableInputPolicys.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRouteTableInputPolicysRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRouteTableInputPolicysResponse`
        def DescribeCcnRouteTableInputPolicys(request)
          body = send_request('DescribeCcnRouteTableInputPolicys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcnRouteTableInputPolicysResponse.new
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

        # 该接口用于查询指定的云联网实例的路由表信息。

        # @param request: Request instance for DescribeCcnRouteTables.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRouteTablesResponse`
        def DescribeCcnRouteTables(request)
          body = send_request('DescribeCcnRouteTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcnRouteTablesResponse.new
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

        # 本接口（DescribeCcnRoutes）用于查询已加入云联网（CCN）的路由。

        # @param request: Request instance for DescribeCcnRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCcnRoutesResponse`
        def DescribeCcnRoutes(request)
          body = send_request('DescribeCcnRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcnRoutesResponse.new
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

        # 本接口（DescribeCcns）用于查询云联网（CCN）列表。

        # @param request: Request instance for DescribeCcns.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCcnsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCcnsResponse`
        def DescribeCcns(request)
          body = send_request('DescribeCcns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCcnsResponse.new
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

        # 查询 IDC通道信息

        # @param request: Request instance for DescribeCdcLDCXList.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCdcLDCXListRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCdcLDCXListResponse`
        def DescribeCdcLDCXList(request)
          body = send_request('DescribeCdcLDCXList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCdcLDCXListResponse.new
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

        # 查询虚拟连接

        # @param request: Request instance for DescribeCdcNetPlanes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCdcNetPlanesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCdcNetPlanesResponse`
        def DescribeCdcNetPlanes(request)
          body = send_request('DescribeCdcNetPlanes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCdcNetPlanesResponse.new
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

        # 查询IDC使用的 VLAN

        # @param request: Request instance for DescribeCdcUsedIdcVlan.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCdcUsedIdcVlanRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCdcUsedIdcVlanResponse`
        def DescribeCdcUsedIdcVlan(request)
          body = send_request('DescribeCdcUsedIdcVlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCdcUsedIdcVlanResponse.new
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

        # 本接口（DescribeClassicLinkInstances）用于查询私有网络和基础网络设备互通列表。

        # @param request: Request instance for DescribeClassicLinkInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeClassicLinkInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeClassicLinkInstancesResponse`
        def DescribeClassicLinkInstances(request)
          body = send_request('DescribeClassicLinkInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeClassicLinkInstancesResponse.new
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

        # 本接口（DescribeCrossBorderCcnRegionBandwidthLimits）用于获取要锁定的限速实例列表。
        # 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（DescribeTenantCcns）
        # 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统

        # @param request: Request instance for DescribeCrossBorderCcnRegionBandwidthLimits.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCrossBorderCcnRegionBandwidthLimitsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCrossBorderCcnRegionBandwidthLimitsResponse`
        def DescribeCrossBorderCcnRegionBandwidthLimits(request)
          body = send_request('DescribeCrossBorderCcnRegionBandwidthLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCrossBorderCcnRegionBandwidthLimitsResponse.new
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

        # 本接口（DescribeCrossBorderCompliance）用于查询用户创建的合规化资质审批单。
        # 服务商可以查询服务名下的任意 `APPID` 创建的审批单；非服务商，只能查询自己审批单。

        # @param request: Request instance for DescribeCrossBorderCompliance.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCrossBorderComplianceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCrossBorderComplianceResponse`
        def DescribeCrossBorderCompliance(request)
          body = send_request('DescribeCrossBorderCompliance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCrossBorderComplianceResponse.new
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

        # 本接口（DescribeCrossBorderFlowMonitor）用于查询跨境带宽监控数据，该接口目前只提供给服务商联通使用。

        # @param request: Request instance for DescribeCrossBorderFlowMonitor.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCrossBorderFlowMonitorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCrossBorderFlowMonitorResponse`
        def DescribeCrossBorderFlowMonitor(request)
          body = send_request('DescribeCrossBorderFlowMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCrossBorderFlowMonitorResponse.new
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

        # 本接口（DescribeCustomerGatewayVendors）用于查询可支持的对端网关厂商信息。

        # @param request: Request instance for DescribeCustomerGatewayVendors.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCustomerGatewayVendorsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCustomerGatewayVendorsResponse`
        def DescribeCustomerGatewayVendors(request)
          body = send_request('DescribeCustomerGatewayVendors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomerGatewayVendorsResponse.new
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
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeCustomerGatewaysRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeCustomerGatewaysResponse`
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

        # 本接口（DescribeDhcpIps）用于查询DhcpIp列表

        # @param request: Request instance for DescribeDhcpIps.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeDhcpIpsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeDhcpIpsResponse`
        def DescribeDhcpIps(request)
          body = send_request('DescribeDhcpIps', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDhcpIpsResponse.new
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

        # 本接口（DescribeDirectConnectGatewayCcnRoutes）用于查询专线网关的云联网路由（IDC网段）

        # @param request: Request instance for DescribeDirectConnectGatewayCcnRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeDirectConnectGatewayCcnRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeDirectConnectGatewayCcnRoutesResponse`
        def DescribeDirectConnectGatewayCcnRoutes(request)
          body = send_request('DescribeDirectConnectGatewayCcnRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDirectConnectGatewayCcnRoutesResponse.new
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

        # 本接口（DescribeDirectConnectGateways）用于查询专线网关。

        # @param request: Request instance for DescribeDirectConnectGateways.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeDirectConnectGatewaysRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeDirectConnectGatewaysResponse`
        def DescribeDirectConnectGateways(request)
          body = send_request('DescribeDirectConnectGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDirectConnectGatewaysResponse.new
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

        # 本接口（DescribeFlowLog）用于查询VPC流日志实例信息。
        # 该接口只支持VPC流日志（即将下线）。云联网以及VPC流日志，通过[DescribeFlowLogs](https://cloud.tencent.com/document/product/215/35012)接口获取。

        # @param request: Request instance for DescribeFlowLog.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeFlowLogRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeFlowLogResponse`
        def DescribeFlowLog(request)
          body = send_request('DescribeFlowLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowLogResponse.new
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

        # 本接口（DescribeFlowLogs）用于查询获取流日志集合。

        # @param request: Request instance for DescribeFlowLogs.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeFlowLogsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeFlowLogsResponse`
        def DescribeFlowLogs(request)
          body = send_request('DescribeFlowLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFlowLogsResponse.new
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

        # 本接口（DescribeGatewayFlowMonitorDetail）用于查询网关流量监控明细。
        # * 只支持单个网关实例查询。即入参 `VpnId`、 `DirectConnectGatewayId`、 `PeeringConnectionId`、 `NatId` 最多只支持传一个，且必须传一个。
        # * 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。

        # @param request: Request instance for DescribeGatewayFlowMonitorDetail.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeGatewayFlowMonitorDetailRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeGatewayFlowMonitorDetailResponse`
        def DescribeGatewayFlowMonitorDetail(request)
          body = send_request('DescribeGatewayFlowMonitorDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayFlowMonitorDetailResponse.new
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

        # 本接口（DescribeGatewayFlowQos）用于查询网关来访IP流控带宽。

        # @param request: Request instance for DescribeGatewayFlowQos.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeGatewayFlowQosRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeGatewayFlowQosResponse`
        def DescribeGatewayFlowQos(request)
          body = send_request('DescribeGatewayFlowQos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGatewayFlowQosResponse.new
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

        # 查询全局路由列表。

        # @param request: Request instance for DescribeGlobalRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeGlobalRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeGlobalRoutesResponse`
        def DescribeGlobalRoutes(request)
          body = send_request('DescribeGlobalRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGlobalRoutesResponse.new
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

        # 本接口（DescribeHaVips）用于查询高可用虚拟IP（HAVIP）列表。

        # @param request: Request instance for DescribeHaVips.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeHaVipsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeHaVipsResponse`
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

        # 查询高优路由表。

        # @param request: Request instance for DescribeHighPriorityRouteTables.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeHighPriorityRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeHighPriorityRouteTablesResponse`
        def DescribeHighPriorityRouteTables(request)
          body = send_request('DescribeHighPriorityRouteTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHighPriorityRouteTablesResponse.new
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

        # 查询高优路由表条目信息。

        # @param request: Request instance for DescribeHighPriorityRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeHighPriorityRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeHighPriorityRoutesResponse`
        def DescribeHighPriorityRoutes(request)
          body = send_request('DescribeHighPriorityRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHighPriorityRoutesResponse.new
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

        # 本接口（DescribeIPv6Addresses）用于查询一个或多个弹性公网 IPv6（简称 EIPv6）实例的详细信息。

        # - 支持查询您在指定地域的弹性公网 IPv6 和传统弹性公网 IPv6 实例信息
        # - 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的 EIPv6。

        # @param request: Request instance for DescribeIPv6Addresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeIPv6AddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeIPv6AddressesResponse`
        def DescribeIPv6Addresses(request)
          body = send_request('DescribeIPv6Addresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIPv6AddressesResponse.new
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

        # 本接口用于检查云服务器是否支持巨帧。
        # 使用限制：
        # 1. 需要CAM策略授权该接口的操作权限，并且授权对应实例的读取权限(该接口会访问CVM实例，所以会校验是否有实例的CAM权限)。例如：CAM action放通vpc:DescribeInstanceJumbo；resource放通qcs::cvm:ap-guangzhou:uin/2126195383:instance/*。
        # 2. 实例迁移前后，可能会出现该接口返回的巨帧状态前后不一致（需要检查迁移前后实例所在的宿主机是否都支持巨帧，一种可能的原因为实例迁移到了不支持巨帧的宿主机）。

        # @param request: Request instance for DescribeInstanceJumbo.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeInstanceJumboRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeInstanceJumboResponse`
        def DescribeInstanceJumbo(request)
          body = send_request('DescribeInstanceJumbo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceJumboResponse.new
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

        # 本接口（DescribeIp6Addresses）用于查询一个或多个传统弹性公网 IPv6 实例的详细信息。

        # @param request: Request instance for DescribeIp6Addresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeIp6AddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeIp6AddressesResponse`
        def DescribeIp6Addresses(request)
          body = send_request('DescribeIp6Addresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIp6AddressesResponse.new
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

        # 查询账户在指定地域IPV6转换实例和规则的配额

        # @param request: Request instance for DescribeIp6TranslatorQuota.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeIp6TranslatorQuotaRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeIp6TranslatorQuotaResponse`
        def DescribeIp6TranslatorQuota(request)
          body = send_request('DescribeIp6TranslatorQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIp6TranslatorQuotaResponse.new
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

        # 1. 该接口用于查询账户下的IPV6转换实例及其绑定的转换规则信息
        # 2. 支持过滤查询

        # @param request: Request instance for DescribeIp6Translators.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeIp6TranslatorsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeIp6TranslatorsResponse`
        def DescribeIp6Translators(request)
          body = send_request('DescribeIp6Translators', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIp6TranslatorsResponse.new
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

        # 本接口（DescribeIpGeolocationDatabaseUrl）用于获取IP地理位置库下载链接。
        # <font color="#FF0000">本接口即将下线，仅供存量用户使用，暂停新增用户。</font>

        # @param request: Request instance for DescribeIpGeolocationDatabaseUrl.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeIpGeolocationDatabaseUrlRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeIpGeolocationDatabaseUrlResponse`
        def DescribeIpGeolocationDatabaseUrl(request)
          body = send_request('DescribeIpGeolocationDatabaseUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpGeolocationDatabaseUrlResponse.new
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

        # 本接口（DescribeIpGeolocationInfos）用于查询IP地址信息，包括地理位置信息和网络信息。
        # <font color="#FF0000">本接口即将下线，仅供存量客户使用，暂停新增用户。</font>

        # @param request: Request instance for DescribeIpGeolocationInfos.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeIpGeolocationInfosRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeIpGeolocationInfosResponse`
        def DescribeIpGeolocationInfos(request)
          body = send_request('DescribeIpGeolocationInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIpGeolocationInfosResponse.new
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

        # 本接口（DescribeLocalGateway）用于查询CDC的本地网关。

        # @param request: Request instance for DescribeLocalGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeLocalGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeLocalGatewayResponse`
        def DescribeLocalGateway(request)
          body = send_request('DescribeLocalGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLocalGatewayResponse.new
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

        # 本接口（DescribeNatGatewayDestinationIpPortTranslationNatRules）用于查询NAT网关端口转发规则对象数组。

        # @param request: Request instance for DescribeNatGatewayDestinationIpPortTranslationNatRules.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewayDestinationIpPortTranslationNatRulesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewayDestinationIpPortTranslationNatRulesResponse`
        def DescribeNatGatewayDestinationIpPortTranslationNatRules(request)
          body = send_request('DescribeNatGatewayDestinationIpPortTranslationNatRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatGatewayDestinationIpPortTranslationNatRulesResponse.new
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

        # 查询专线绑定NAT的路由

        # @param request: Request instance for DescribeNatGatewayDirectConnectGatewayRoute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewayDirectConnectGatewayRouteRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewayDirectConnectGatewayRouteResponse`
        def DescribeNatGatewayDirectConnectGatewayRoute(request)
          body = send_request('DescribeNatGatewayDirectConnectGatewayRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatGatewayDirectConnectGatewayRouteResponse.new
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

        # 本接口（DescribeNatGatewayFlowMonitorDetail）用于查询NAT网关流量监控明细。

        # - 只支持单个网关实例查询。即入参 `NatGatewayId` 最多只支持传一个，且必须传一个。
        # - 如果网关有流量，但调用本接口没有返回数据，请在控制台对应网关详情页确认是否开启网关流量监控。

        # @param request: Request instance for DescribeNatGatewayFlowMonitorDetail.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewayFlowMonitorDetailRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewayFlowMonitorDetailResponse`
        def DescribeNatGatewayFlowMonitorDetail(request)
          body = send_request('DescribeNatGatewayFlowMonitorDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatGatewayFlowMonitorDetailResponse.new
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

        # 本接口（DescribeNatGatewaySourceIpTranslationNatRules）用于查询NAT网关SNAT转发规则对象数组。

        # @param request: Request instance for DescribeNatGatewaySourceIpTranslationNatRules.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewaySourceIpTranslationNatRulesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewaySourceIpTranslationNatRulesResponse`
        def DescribeNatGatewaySourceIpTranslationNatRules(request)
          body = send_request('DescribeNatGatewaySourceIpTranslationNatRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatGatewaySourceIpTranslationNatRulesResponse.new
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

        # 本接口(DescribeNatGatewayZones)用于查询NAT网关可售卖的可用区信息

        # @param request: Request instance for DescribeNatGatewayZones.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewayZonesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewayZonesResponse`
        def DescribeNatGatewayZones(request)
          body = send_request('DescribeNatGatewayZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNatGatewayZonesResponse.new
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

        # 本接口（DescribeNatGateways）用于查询 NAT 网关。

        # @param request: Request instance for DescribeNatGateways.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewaysRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNatGatewaysResponse`
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

        # 本接口(DescribeNetDetectStates)用于查询网络探测验证结果列表。

        # @param request: Request instance for DescribeNetDetectStates.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNetDetectStatesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNetDetectStatesResponse`
        def DescribeNetDetectStates(request)
          body = send_request('DescribeNetDetectStates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetDetectStatesResponse.new
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

        # 本接口（DescribeNetDetects）用于查询网络探测列表。

        # @param request: Request instance for DescribeNetDetects.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNetDetectsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNetDetectsResponse`
        def DescribeNetDetects(request)
          body = send_request('DescribeNetDetects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetDetectsResponse.new
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

        # 判断用户在网络侧的用户类型，如标准（带宽上移），传统（非上移）。

        # @param request: Request instance for DescribeNetworkAccountType.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkAccountTypeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkAccountTypeResponse`
        def DescribeNetworkAccountType(request)
          body = send_request('DescribeNetworkAccountType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkAccountTypeResponse.new
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

        # 本接口（DescribeNetworkAclQuintupleEntries）查询入方向或出方向网络ACL五元组条目列表。

        # @param request: Request instance for DescribeNetworkAclQuintupleEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkAclQuintupleEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkAclQuintupleEntriesResponse`
        def DescribeNetworkAclQuintupleEntries(request)
          body = send_request('DescribeNetworkAclQuintupleEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkAclQuintupleEntriesResponse.new
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

        # 本接口（DescribeNetworkAcls）用于查询网络ACL列表。

        # @param request: Request instance for DescribeNetworkAcls.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkAclsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkAclsResponse`
        def DescribeNetworkAcls(request)
          body = send_request('DescribeNetworkAcls', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkAclsResponse.new
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

        # 本接口（DescribeNetworkInterfaceLimit）根据CVM实例ID或弹性网卡ID查询弹性网卡配额，返回该CVM实例或弹性网卡能绑定的弹性网卡配额，以及弹性网卡可以分配的IP配额。

        # @param request: Request instance for DescribeNetworkInterfaceLimit.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkInterfaceLimitRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkInterfaceLimitResponse`
        def DescribeNetworkInterfaceLimit(request)
          body = send_request('DescribeNetworkInterfaceLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNetworkInterfaceLimitResponse.new
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

        # 本接口（DescribeNetworkInterfaces）用于查询弹性网卡列表。

        # @param request: Request instance for DescribeNetworkInterfaces.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkInterfacesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeNetworkInterfacesResponse`
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

        # 本接口（DescribePrivateNatGatewayDestinationIpPortTranslationNatRules）用于查询私网NAT网关目的端口转换规则

        # @param request: Request instance for DescribePrivateNatGatewayDestinationIpPortTranslationNatRules.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayDestinationIpPortTranslationNatRulesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayDestinationIpPortTranslationNatRulesResponse`
        def DescribePrivateNatGatewayDestinationIpPortTranslationNatRules(request)
          body = send_request('DescribePrivateNatGatewayDestinationIpPortTranslationNatRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateNatGatewayDestinationIpPortTranslationNatRulesResponse.new
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

        # 本接口（DescribePrivateNatGatewayLimits）用于查询可创建的私网NAT网关配额数量

        # @param request: Request instance for DescribePrivateNatGatewayLimits.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayLimitsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayLimitsResponse`
        def DescribePrivateNatGatewayLimits(request)
          body = send_request('DescribePrivateNatGatewayLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateNatGatewayLimitsResponse.new
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

        # 本接口（DescribePrivateNatGatewayRegions）用于查询查询私网NAT网关可支持地域

        # @param request: Request instance for DescribePrivateNatGatewayRegions.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayRegionsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayRegionsResponse`
        def DescribePrivateNatGatewayRegions(request)
          body = send_request('DescribePrivateNatGatewayRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateNatGatewayRegionsResponse.new
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

        # 本接口（DescribePrivateNatGatewayTranslationAclRules）用于查询私网NAT网关源端转换访问控制规则

        # @param request: Request instance for DescribePrivateNatGatewayTranslationAclRules.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayTranslationAclRulesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayTranslationAclRulesResponse`
        def DescribePrivateNatGatewayTranslationAclRules(request)
          body = send_request('DescribePrivateNatGatewayTranslationAclRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateNatGatewayTranslationAclRulesResponse.new
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

        # 本接口（DescribePrivateNatGatewayTranslationNatRules）用于查询私网NAT网关源端转换规则

        # @param request: Request instance for DescribePrivateNatGatewayTranslationNatRules.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayTranslationNatRulesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewayTranslationNatRulesResponse`
        def DescribePrivateNatGatewayTranslationNatRules(request)
          body = send_request('DescribePrivateNatGatewayTranslationNatRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateNatGatewayTranslationNatRulesResponse.new
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

        # 本接口（DescribePrivateNatGateways）用于查询私网NAT网关

        # @param request: Request instance for DescribePrivateNatGateways.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewaysRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribePrivateNatGatewaysResponse`
        def DescribePrivateNatGateways(request)
          body = send_request('DescribePrivateNatGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrivateNatGatewaysResponse.new
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

        # 本接口（DescribeProductQuota）用于查询网络产品的配额信息。

        # @param request: Request instance for DescribeProductQuota.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeProductQuotaRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeProductQuotaResponse`
        def DescribeProductQuota(request)
          body = send_request('DescribeProductQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProductQuotaResponse.new
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

        # 查询内网保留 IP

        # @param request: Request instance for DescribeReserveIpAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeReserveIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeReserveIpAddressesResponse`
        def DescribeReserveIpAddresses(request)
          body = send_request('DescribeReserveIpAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReserveIpAddressesResponse.new
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

        # 本接口（DescribeRouteConflicts）用于查询自定义路由策略与云联网路由策略冲突列表。

        # @param request: Request instance for DescribeRouteConflicts.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeRouteConflictsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeRouteConflictsResponse`
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

        # 本接口（DescribeRouteList）用于查询路由条目列表。

        # @param request: Request instance for DescribeRouteList.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeRouteListRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeRouteListResponse`
        def DescribeRouteList(request)
          body = send_request('DescribeRouteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRouteListResponse.new
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

        # 本接口（DescribeRoutePolicies）用于查询路由策略列表。

        # @param request: Request instance for DescribeRoutePolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeRoutePoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeRoutePoliciesResponse`
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

        # 本接口（DescribeRoutePolicyEntries）用于查询路由接收策略条目列表。

        # @param request: Request instance for DescribeRoutePolicyEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeRoutePolicyEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeRoutePolicyEntriesResponse`
        def DescribeRoutePolicyEntries(request)
          body = send_request('DescribeRoutePolicyEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoutePolicyEntriesResponse.new
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

        # 本接口（DescribeRouteTableAssociatedInstances）用于查询指定的云联网关联的实例所绑定的路由表信息。

        # @param request: Request instance for DescribeRouteTableAssociatedInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeRouteTableAssociatedInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeRouteTableAssociatedInstancesResponse`
        def DescribeRouteTableAssociatedInstances(request)
          body = send_request('DescribeRouteTableAssociatedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRouteTableAssociatedInstancesResponse.new
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

        # 本接口（DescribeRouteTableSelectionPolicies）用于查询云联网路由表选择策略。

        # @param request: Request instance for DescribeRouteTableSelectionPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeRouteTableSelectionPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeRouteTableSelectionPoliciesResponse`
        def DescribeRouteTableSelectionPolicies(request)
          body = send_request('DescribeRouteTableSelectionPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRouteTableSelectionPoliciesResponse.new
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
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeRouteTablesResponse`
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

        # 本接口（DescribeRoutes）用于查询路由列表。

        # @param request: Request instance for DescribeRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeRoutesResponse`
        def DescribeRoutes(request)
          body = send_request('DescribeRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRoutesResponse.new
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

        # 本接口（DescribeSecurityGroupAssociationStatistics）用于查询安全组关联的实例统计。

        # @param request: Request instance for DescribeSecurityGroupAssociationStatistics.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupAssociationStatisticsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupAssociationStatisticsResponse`
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

        # 本接口（DescribeSecurityGroupExpandedPolicies）用于查看参数模板展开后的安全组规则。本接口会通过缓存降低请求后端服务的调用次数，因此拉取结果会存在延迟（缓存超时时间为1分钟）。

        # @param request: Request instance for DescribeSecurityGroupExpandedPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupExpandedPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupExpandedPoliciesResponse`
        def DescribeSecurityGroupExpandedPolicies(request)
          body = send_request('DescribeSecurityGroupExpandedPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupExpandedPoliciesResponse.new
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

        # 本接口(DescribeSecurityGroupLimits)用于查询用户安全组配额。

        # @param request: Request instance for DescribeSecurityGroupLimits.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupLimitsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupLimitsResponse`
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

        # 本接口（DescribeSecurityGroupPolicies）用于查询安全组规则。

        # @param request: Request instance for DescribeSecurityGroupPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupPoliciesResponse`
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

        # 本接口（DescribeSecurityGroupReferences）用于查询安全组被引用信息。

        # @param request: Request instance for DescribeSecurityGroupReferences.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupReferencesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupReferencesResponse`
        def DescribeSecurityGroupReferences(request)
          body = send_request('DescribeSecurityGroupReferences', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityGroupReferencesResponse.new
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

        # 本接口（DescribeSecurityGroups）用于查询安全组。

        # @param request: Request instance for DescribeSecurityGroups.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSecurityGroupsResponse`
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

        # 本接口（DescribeServiceTemplateGroupInstances）用于查询参数模板协议端口组关联的实例列表。本接口不会返回查询的结果，需要根据返回的RequestId调用DescribeVpcTaskResult接口获取结果。

        # @param request: Request instance for DescribeServiceTemplateGroupInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeServiceTemplateGroupInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeServiceTemplateGroupInstancesResponse`
        def DescribeServiceTemplateGroupInstances(request)
          body = send_request('DescribeServiceTemplateGroupInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceTemplateGroupInstancesResponse.new
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

        # 本接口（DescribeServiceTemplateGroups）用于查询协议端口模板集合。

        # @param request: Request instance for DescribeServiceTemplateGroups.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeServiceTemplateGroupsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeServiceTemplateGroupsResponse`
        def DescribeServiceTemplateGroups(request)
          body = send_request('DescribeServiceTemplateGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceTemplateGroupsResponse.new
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

        # 本接口（DescribeServiceTemplateInstances）用于查询参数模板协议端口关联的实例列表。本接口不会返回查询的结果，需要根据返回的RequestId调用DescribeVpcTaskResult接口获取结果。

        # @param request: Request instance for DescribeServiceTemplateInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeServiceTemplateInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeServiceTemplateInstancesResponse`
        def DescribeServiceTemplateInstances(request)
          body = send_request('DescribeServiceTemplateInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceTemplateInstancesResponse.new
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

        # 本接口（DescribeServiceTemplates）用于查询协议端口模板。

        # @param request: Request instance for DescribeServiceTemplates.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeServiceTemplatesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeServiceTemplatesResponse`
        def DescribeServiceTemplates(request)
          body = send_request('DescribeServiceTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceTemplatesResponse.new
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

        # 本接口（DescribeSgSnapshotFileContent）用于查询安全组快照文件内容。

        # @param request: Request instance for DescribeSgSnapshotFileContent.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSgSnapshotFileContentRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSgSnapshotFileContentResponse`
        def DescribeSgSnapshotFileContent(request)
          body = send_request('DescribeSgSnapshotFileContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSgSnapshotFileContentResponse.new
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

        # 本接口（DescribeSnapshotAttachedInstances）用于查询快照策略关联实例列表。

        # @param request: Request instance for DescribeSnapshotAttachedInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSnapshotAttachedInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSnapshotAttachedInstancesResponse`
        def DescribeSnapshotAttachedInstances(request)
          body = send_request('DescribeSnapshotAttachedInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotAttachedInstancesResponse.new
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

        # 本接口（DescribeSnapshotFiles）用于查询快照文件。

        # @param request: Request instance for DescribeSnapshotFiles.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSnapshotFilesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSnapshotFilesResponse`
        def DescribeSnapshotFiles(request)
          body = send_request('DescribeSnapshotFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotFilesResponse.new
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

        # 本接口（DescribeSnapshotPolicies）用于查询快照策略。

        # @param request: Request instance for DescribeSnapshotPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSnapshotPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSnapshotPoliciesResponse`
        def DescribeSnapshotPolicies(request)
          body = send_request('DescribeSnapshotPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSnapshotPoliciesResponse.new
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

        # 本接口 (DescribeSpecificTrafficPackageUsedDetails) 用于查询指定 共享流量包 的用量明细。

        # @param request: Request instance for DescribeSpecificTrafficPackageUsedDetails.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSpecificTrafficPackageUsedDetailsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSpecificTrafficPackageUsedDetailsResponse`
        def DescribeSpecificTrafficPackageUsedDetails(request)
          body = send_request('DescribeSpecificTrafficPackageUsedDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSpecificTrafficPackageUsedDetailsResponse.new
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

        # 本接口(DescribeSubnetResourceDashboard)用于查看Subnet资源信息。

        # @param request: Request instance for DescribeSubnetResourceDashboard.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSubnetResourceDashboardRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSubnetResourceDashboardResponse`
        def DescribeSubnetResourceDashboard(request)
          body = send_request('DescribeSubnetResourceDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSubnetResourceDashboardResponse.new
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

        # 本接口（DescribeSubnets）用于查询子网列表。

        # @param request: Request instance for DescribeSubnets.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeSubnetsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeSubnetsResponse`
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

        # 本接口（DescribeTaskResult）用于查询EIP异步任务执行结果。

        # @param request: Request instance for DescribeTaskResult.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeTaskResultRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeTaskResultResponse`
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

        # 本接口（DescribeTemplateLimits）用于查询参数模板配额列表。

        # @param request: Request instance for DescribeTemplateLimits.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeTemplateLimitsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeTemplateLimitsResponse`
        def DescribeTemplateLimits(request)
          body = send_request('DescribeTemplateLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplateLimitsResponse.new
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

        # 本接口（DescribeTenantCcns）用于获取要锁定的云联网实例列表。
        # 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（DescribeCrossBorderCcnRegionBandwidthLimits）
        # 如有需要, 可以封禁任意云联网实例, 可接入到内部运营系统

        # @param request: Request instance for DescribeTenantCcns.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeTenantCcnsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeTenantCcnsResponse`
        def DescribeTenantCcns(request)
          body = send_request('DescribeTenantCcns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTenantCcnsResponse.new
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

        # 本接口（DescribeTrafficMirrors）用于查询流量镜像实例信息。

        # @param request: Request instance for DescribeTrafficMirrors.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeTrafficMirrorsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeTrafficMirrorsResponse`
        def DescribeTrafficMirrors(request)
          body = send_request('DescribeTrafficMirrors', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrafficMirrorsResponse.new
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

        # 本接口 (DescribeTrafficPackages)  用于查询共享流量包详细信息，包括共享流量包唯一标识ID，名称，流量使用信息等

        # @param request: Request instance for DescribeTrafficPackages.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeTrafficPackagesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeTrafficPackagesResponse`
        def DescribeTrafficPackages(request)
          body = send_request('DescribeTrafficPackages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrafficPackagesResponse.new
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

        # 查询流量调度规则

        # @param request: Request instance for DescribeTrafficQosPolicy.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeTrafficQosPolicyRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeTrafficQosPolicyResponse`
        def DescribeTrafficQosPolicy(request)
          body = send_request('DescribeTrafficQosPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrafficQosPolicyResponse.new
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

        # 本接口(DescribeUsedIpAddress)用于查询Subnet或者Vpc内的ip的使用情况，
        # 如ip被占用，返回占用ip的资源类别与id；如未被占用，返回空值

        # @param request: Request instance for DescribeUsedIpAddress.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeUsedIpAddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeUsedIpAddressResponse`
        def DescribeUsedIpAddress(request)
          body = send_request('DescribeUsedIpAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsedIpAddressResponse.new
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

        # 本接口（DescribeVpcEndPoint）用于查询终端节点列表。

        # @param request: Request instance for DescribeVpcEndPoint.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcEndPointRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcEndPointResponse`
        def DescribeVpcEndPoint(request)
          body = send_request('DescribeVpcEndPoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcEndPointResponse.new
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

        # 本接口（DescribeVpcEndPointService）用于查询终端节点服务列表。

        # @param request: Request instance for DescribeVpcEndPointService.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcEndPointServiceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcEndPointServiceResponse`
        def DescribeVpcEndPointService(request)
          body = send_request('DescribeVpcEndPointService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcEndPointServiceResponse.new
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

        # 本接口（DescribeVpcEndPointServiceWhiteList）用于查询终端节点服务的服务白名单列表。

        # @param request: Request instance for DescribeVpcEndPointServiceWhiteList.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcEndPointServiceWhiteListRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcEndPointServiceWhiteListResponse`
        def DescribeVpcEndPointServiceWhiteList(request)
          body = send_request('DescribeVpcEndPointServiceWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcEndPointServiceWhiteListResponse.new
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

        # 本接口（DescribeVpcInstances）用于查询VPC下的云主机实例列表。

        # @param request: Request instance for DescribeVpcInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcInstancesResponse`
        def DescribeVpcInstances(request)
          body = send_request('DescribeVpcInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcInstancesResponse.new
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

        # 本接口（DescribeVpcIpv6Addresses）用于查询 `VPC` `IPv6` 信息。
        # 只能查询已使用的`IPv6`信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。

        # @param request: Request instance for DescribeVpcIpv6Addresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcIpv6AddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcIpv6AddressesResponse`
        def DescribeVpcIpv6Addresses(request)
          body = send_request('DescribeVpcIpv6Addresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcIpv6AddressesResponse.new
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

        # 本接口（DescribeVpcLimits）用于获取私有网络配额，部分私有网络的配额有地域属性。
        # LimitTypes取值范围：
        # * appid-max-vpcs （每个开发商每个地域可创建的VPC数）。
        # * vpc-max-subnets（每个VPC可创建的子网数）。
        # * vpc-max-route-tables（每个VPC可创建的路由表数）。
        # * route-table-max-policies（每个路由表可添加的策略数）。
        # * vpc-max-vpn-gateways（每个VPC可创建的VPN网关数）。
        # * appid-max-custom-gateways（每个开发商可创建的对端网关数）。
        # * appid-max-vpn-connections（每个开发商可创建的VPN通道数）。
        # * custom-gateway-max-vpn-connections（每个对端网关可创建的VPN通道数）。
        # * vpn-gateway-max-custom-gateways（每个VPNGW可以创建的通道数）。
        # * vpc-max-network-acls（每个VPC可创建的网络ACL数）。
        # * network-acl-max-inbound-policies（每个网络ACL可添加的入站规则数）。
        # * network-acl-max-outbound-policies（每个网络ACL可添加的出站规则数）。
        # * vpc-max-vpcpeers（每个VPC可创建的对等连接数）。
        # * vpc-max-available-vpcpeers（每个VPC可创建的有效对等连接数）。
        # * vpc-max-basic-network-interconnections（每个VPC可创建的基础网络云主机与VPC互通数）。
        # * direct-connection-max-snats（每个专线网关可创建的SNAT数）。
        # * direct-connection-max-dnats（每个专线网关可创建的DNAT数）。
        # * direct-connection-max-snapts（每个专线网关可创建的SNAPT数）。
        # * direct-connection-max-dnapts（每个专线网关可创建的DNAPT数）。
        # * vpc-max-nat-gateways（每个VPC可创建的NAT网关数）。
        # * nat-gateway-max-eips（每个NAT可以购买的外网IP数量）。
        # * vpc-max-enis（每个VPC可创建弹性网卡数）。
        # * vpc-max-havips（每个VPC可创建HAVIP数）。
        # * eni-max-private-ips（每个ENI可以绑定的内网IP数（ENI未绑定子机））。
        # * nat-gateway-max-dnapts（每个NAT网关可创建的DNAPT数）。
        # * vpc-max-ipv6s（每个VPC可分配的IPv6地址数）。
        # * eni-max-ipv6s（每个ENI可分配的IPv6地址数）。
        # * vpc-max-assistant_cidrs（每个VPC可分配的辅助CIDR数）。
        # * appid-max-end-point-services （每个开发商每个地域可创建的终端节点服务个数）。
        # * appid-max-end-point-service-white-lists （每个开发商每个地域可创建的终端节点服务白名单个数）。
        # * vpc-max-cmcc-ipv6-cidrs （每个VPC可创建的移动IPv6 CIDR个数）。
        # * vpc-max-ctcc-ipv6-cidrs （每个VPC可创建的电信IPv6 CIDR个数）。
        # * vpc-max-cucc-ipv6-cidrs （每个VPC可创建的联调IPv6 CIDR个数）。
        # * vpc-max-bgp-ipv6-cidrs （每个VPC可创建的默认IPv6 CIDR个数）。
        # * vpc-max-custom-ipv6-cidrs （每个VPC可创建的自定义IPv6 CIDR个数）。
        # * vpc-max-ula-ipv6-cidrs （每个VPC可创建的ULA IPv6 CIDR个数）。

        # @param request: Request instance for DescribeVpcLimits.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcLimitsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcLimitsResponse`
        def DescribeVpcLimits(request)
          body = send_request('DescribeVpcLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcLimitsResponse.new
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

        # 查询私有网络对等连接。

        # @param request: Request instance for DescribeVpcPeeringConnections.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcPeeringConnectionsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcPeeringConnectionsResponse`
        def DescribeVpcPeeringConnections(request)
          body = send_request('DescribeVpcPeeringConnections', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcPeeringConnectionsResponse.new
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

        # 本接口（DescribeVpcPrivateIpAddresses）用于查询VPC内网IP信息。<br />
        # 只能查询已使用的IP信息，当查询未使用的IP时，本接口不会报错，但不会出现在返回结果里。

        # @param request: Request instance for DescribeVpcPrivateIpAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcPrivateIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcPrivateIpAddressesResponse`
        def DescribeVpcPrivateIpAddresses(request)
          body = send_request('DescribeVpcPrivateIpAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcPrivateIpAddressesResponse.new
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

        # 本接口(DescribeVpcResourceDashboard)用于查看VPC资源信息。

        # @param request: Request instance for DescribeVpcResourceDashboard.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcResourceDashboardRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcResourceDashboardResponse`
        def DescribeVpcResourceDashboard(request)
          body = send_request('DescribeVpcResourceDashboard', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcResourceDashboardResponse.new
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

        # 本接口（DescribeVpcTaskResult）用于查询VPC任务执行结果。

        # @param request: Request instance for DescribeVpcTaskResult.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcTaskResultRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcTaskResultResponse`
        def DescribeVpcTaskResult(request)
          body = send_request('DescribeVpcTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpcTaskResultResponse.new
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

        # @param request: Request instance for DescribeVpcs.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpcsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpcsResponse`
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

        # 本接口（DescribeVpnConnections）用于查询VPN通道列表。

        # @param request: Request instance for DescribeVpnConnections.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpnConnectionsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpnConnectionsResponse`
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

        # 本接口（DescribeVpnGatewayCcnRoutes）用于查询VPN网关云联网路由。

        # @param request: Request instance for DescribeVpnGatewayCcnRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewayCcnRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewayCcnRoutesResponse`
        def DescribeVpnGatewayCcnRoutes(request)
          body = send_request('DescribeVpnGatewayCcnRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpnGatewayCcnRoutesResponse.new
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

        # 本接口（DescribeVpnGatewayRoutes）用于查询VPN网关路由。

        # @param request: Request instance for DescribeVpnGatewayRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewayRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewayRoutesResponse`
        def DescribeVpnGatewayRoutes(request)
          body = send_request('DescribeVpnGatewayRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpnGatewayRoutesResponse.new
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

        # 本接口（DescribeVpnGatewaySslClients）用于查询SSL-VPN-CLIENT 列表。

        # @param request: Request instance for DescribeVpnGatewaySslClients.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewaySslClientsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewaySslClientsResponse`
        def DescribeVpnGatewaySslClients(request)
          body = send_request('DescribeVpnGatewaySslClients', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpnGatewaySslClientsResponse.new
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

        # 本接口（DescribeVpnGatewaySslServers）用于查询SSL-VPN SERVER 列表信息。

        # @param request: Request instance for DescribeVpnGatewaySslServers.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewaySslServersRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewaySslServersResponse`
        def DescribeVpnGatewaySslServers(request)
          body = send_request('DescribeVpnGatewaySslServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeVpnGatewaySslServersResponse.new
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
        # @type request: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewaysRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DescribeVpnGatewaysResponse`
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

        # 本接口（DetachCcnInstances）用于从云联网实例中解关联指定的网络实例。<br />
        # 解关联网络实例后，相应的路由策略会一并删除。

        # @param request: Request instance for DetachCcnInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DetachCcnInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DetachCcnInstancesResponse`
        def DetachCcnInstances(request)
          body = send_request('DetachCcnInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachCcnInstancesResponse.new
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

        # 本接口(DetachClassicLinkVpc)用于删除私有网络和基础网络设备互通。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for DetachClassicLinkVpc.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DetachClassicLinkVpcRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DetachClassicLinkVpcResponse`
        def DetachClassicLinkVpc(request)
          body = send_request('DetachClassicLinkVpc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachClassicLinkVpcResponse.new
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

        # 本接口（DetachNetworkInterface）用于弹性网卡解绑云服务器。
        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询[DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037)
        # 接口。

        # @param request: Request instance for DetachNetworkInterface.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DetachNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DetachNetworkInterfaceResponse`
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

        # 本接口（DetachSnapshotInstances）用于快照策略解关联实例。

        # @param request: Request instance for DetachSnapshotInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DetachSnapshotInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DetachSnapshotInstancesResponse`
        def DetachSnapshotInstances(request)
          body = send_request('DetachSnapshotInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachSnapshotInstancesResponse.new
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

        # 本接口（DisableCcnRoutes）用于禁用已经启用的云联网（CCN）路由。

        # @param request: Request instance for DisableCcnRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisableCcnRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisableCcnRoutesResponse`
        def DisableCcnRoutes(request)
          body = send_request('DisableCcnRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableCcnRoutesResponse.new
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

        # 本接口（DisableFlowLogs）用于停止流日志。

        # @param request: Request instance for DisableFlowLogs.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisableFlowLogsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisableFlowLogsResponse`
        def DisableFlowLogs(request)
          body = send_request('DisableFlowLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableFlowLogsResponse.new
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

        # 本接口（DisableGatewayFlowMonitor）用于关闭网关流量监控。

        # @param request: Request instance for DisableGatewayFlowMonitor.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisableGatewayFlowMonitorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisableGatewayFlowMonitorResponse`
        def DisableGatewayFlowMonitor(request)
          body = send_request('DisableGatewayFlowMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableGatewayFlowMonitorResponse.new
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

        # 本接口（DisableRoutes）用于禁用已启用的子网路由

        # @param request: Request instance for DisableRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisableRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisableRoutesResponse`
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

        # 本接口（DisableSnapshotPolicies）用于停用快照策略。

        # @param request: Request instance for DisableSnapshotPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisableSnapshotPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisableSnapshotPoliciesResponse`
        def DisableSnapshotPolicies(request)
          body = send_request('DisableSnapshotPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableSnapshotPoliciesResponse.new
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

        # 禁用SSL-VPN-CLIENT 证书

        # @param request: Request instance for DisableVpnGatewaySslClientCert.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisableVpnGatewaySslClientCertRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisableVpnGatewaySslClientCertResponse`
        def DisableVpnGatewaySslClientCert(request)
          body = send_request('DisableVpnGatewaySslClientCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableVpnGatewaySslClientCertResponse.new
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

        # 本接口 (DisassociateAddress) 用于解绑[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
        # * 支持CVM实例，弹性网卡上的EIP解绑。
        # * 不支持NAT上的EIP解绑。NAT上的EIP解绑请参考[DisassociateNatGatewayAddress](https://cloud.tencent.com/document/api/215/36716)。
        # * 只有状态为 BIND 和 BIND_ENI 的 EIP 才能进行解绑定操作。

        # @param request: Request instance for DisassociateAddress.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisassociateAddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisassociateAddressResponse`
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

        # 本接口（DisassociateDhcpIpWithAddressIp）用于将DhcpIp已绑定的弹性公网IP（EIP）解除绑定。<br />
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for DisassociateDhcpIpWithAddressIp.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisassociateDhcpIpWithAddressIpRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisassociateDhcpIpWithAddressIpResponse`
        def DisassociateDhcpIpWithAddressIp(request)
          body = send_request('DisassociateDhcpIpWithAddressIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateDhcpIpWithAddressIpResponse.new
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

        # 将专线网关与NAT网关解绑，解绑之后，专线网关将不能通过NAT网关访问公网

        # @param request: Request instance for DisassociateDirectConnectGatewayNatGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisassociateDirectConnectGatewayNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisassociateDirectConnectGatewayNatGatewayResponse`
        def DisassociateDirectConnectGatewayNatGateway(request)
          body = send_request('DisassociateDirectConnectGatewayNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateDirectConnectGatewayNatGatewayResponse.new
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

        # 本接口（DisassociateHaVipInstance）用于HAVIP解绑子机或网卡（去掉HaVip飘移范围）。

        # @param request: Request instance for DisassociateHaVipInstance.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisassociateHaVipInstanceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisassociateHaVipInstanceResponse`
        def DisassociateHaVipInstance(request)
          body = send_request('DisassociateHaVipInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateHaVipInstanceResponse.new
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

        # 本接口（DisassociateIPv6Address）用于解绑弹性公网 IPv6（简称EIPv6）实例。

        # - 支持对 CVM、弹性网卡绑定的 EIPv6 实例进行解绑操作。
        # - 只有状态为 BIND 和 BIND_ENI 的 EIPv6 实例才能进行解绑操作。

        # @param request: Request instance for DisassociateIPv6Address.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisassociateIPv6AddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisassociateIPv6AddressResponse`
        def DisassociateIPv6Address(request)
          body = send_request('DisassociateIPv6Address', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateIPv6AddressResponse.new
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

        # 本接口（DisassociateNatGatewayAddress）用于NAT网关解绑弹性IP。

        # @param request: Request instance for DisassociateNatGatewayAddress.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisassociateNatGatewayAddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisassociateNatGatewayAddressResponse`
        def DisassociateNatGatewayAddress(request)
          body = send_request('DisassociateNatGatewayAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateNatGatewayAddressResponse.new
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

        # 本接口（DisassociateNetworkAclSubnets）用于网络ACL解关联VPC下的子网。

        # @param request: Request instance for DisassociateNetworkAclSubnets.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisassociateNetworkAclSubnetsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisassociateNetworkAclSubnetsResponse`
        def DisassociateNetworkAclSubnets(request)
          body = send_request('DisassociateNetworkAclSubnets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateNetworkAclSubnetsResponse.new
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

        # 本接口（DisassociateNetworkInterfaceSecurityGroups）用于弹性网卡解绑安全组。支持弹性网卡完全解绑安全组。

        # @param request: Request instance for DisassociateNetworkInterfaceSecurityGroups.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisassociateNetworkInterfaceSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisassociateNetworkInterfaceSecurityGroupsResponse`
        def DisassociateNetworkInterfaceSecurityGroups(request)
          body = send_request('DisassociateNetworkInterfaceSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateNetworkInterfaceSecurityGroupsResponse.new
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

        # 本接口（DisassociateVpcEndPointSecurityGroups）用于终端节点解绑安全组。

        # @param request: Request instance for DisassociateVpcEndPointSecurityGroups.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DisassociateVpcEndPointSecurityGroupsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DisassociateVpcEndPointSecurityGroupsResponse`
        def DisassociateVpcEndPointSecurityGroups(request)
          body = send_request('DisassociateVpcEndPointSecurityGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisassociateVpcEndPointSecurityGroupsResponse.new
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

        # 本接口（DownloadCustomerGatewayConfiguration）用于下载VPN通道配置。

        # @param request: Request instance for DownloadCustomerGatewayConfiguration.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DownloadCustomerGatewayConfigurationRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DownloadCustomerGatewayConfigurationResponse`
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

        # 本接口（DownloadVpnGatewaySslClientCert）用于下载SSL-VPN-CLIENT 客户端证书。

        # @param request: Request instance for DownloadVpnGatewaySslClientCert.
        # @type request: :class:`Tencentcloud::vpc::V20170312::DownloadVpnGatewaySslClientCertRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::DownloadVpnGatewaySslClientCertResponse`
        def DownloadVpnGatewaySslClientCert(request)
          body = send_request('DownloadVpnGatewaySslClientCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadVpnGatewaySslClientCertResponse.new
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

        # 本接口（EnableCcnRoutes）用于启用已经加入云联网（CCN）的路由。<br />
        # 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。

        # @param request: Request instance for EnableCcnRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::EnableCcnRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::EnableCcnRoutesResponse`
        def EnableCcnRoutes(request)
          body = send_request('EnableCcnRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableCcnRoutesResponse.new
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

        # 本接口（EnableFlowLogs）用于启动流日志。

        # @param request: Request instance for EnableFlowLogs.
        # @type request: :class:`Tencentcloud::vpc::V20170312::EnableFlowLogsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::EnableFlowLogsResponse`
        def EnableFlowLogs(request)
          body = send_request('EnableFlowLogs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableFlowLogsResponse.new
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

        # 本接口（EnableGatewayFlowMonitor）用于开启网关流量监控。

        # @param request: Request instance for EnableGatewayFlowMonitor.
        # @type request: :class:`Tencentcloud::vpc::V20170312::EnableGatewayFlowMonitorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::EnableGatewayFlowMonitorResponse`
        def EnableGatewayFlowMonitor(request)
          body = send_request('EnableGatewayFlowMonitor', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableGatewayFlowMonitorResponse.new
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

        # 本接口（EnableRoutes）用于启用已禁用的子网路由。<br />
        # 本接口会校验启用后，是否与已有路由冲突，如果冲突，则无法启用，失败处理。路由冲突时，需要先禁用与之冲突的路由，才能启用该路由。

        # @param request: Request instance for EnableRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::EnableRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::EnableRoutesResponse`
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

        # 本接口（EnableSnapshotPolicies）用于启用快照策略。

        # @param request: Request instance for EnableSnapshotPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::EnableSnapshotPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::EnableSnapshotPoliciesResponse`
        def EnableSnapshotPolicies(request)
          body = send_request('EnableSnapshotPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableSnapshotPoliciesResponse.new
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

        # 本接口（EnableVpcEndPointConnect）用于是否接受终端节点连接请求。

        # @param request: Request instance for EnableVpcEndPointConnect.
        # @type request: :class:`Tencentcloud::vpc::V20170312::EnableVpcEndPointConnectRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::EnableVpcEndPointConnectResponse`
        def EnableVpcEndPointConnect(request)
          body = send_request('EnableVpcEndPointConnect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableVpcEndPointConnectResponse.new
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

        # 本接口（EnableVpnGatewaySslClientCert）用于启用SSL-VPN-CLIENT 证书。

        # @param request: Request instance for EnableVpnGatewaySslClientCert.
        # @type request: :class:`Tencentcloud::vpc::V20170312::EnableVpnGatewaySslClientCertRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::EnableVpnGatewaySslClientCertResponse`
        def EnableVpnGatewaySslClientCert(request)
          body = send_request('EnableVpnGatewaySslClientCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableVpnGatewaySslClientCertResponse.new
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

        # 本接口（GenerateVpnConnectionDefaultHealthCheckIp）用于获取一对VPN通道健康检查地址。

        # @param request: Request instance for GenerateVpnConnectionDefaultHealthCheckIp.
        # @type request: :class:`Tencentcloud::vpc::V20170312::GenerateVpnConnectionDefaultHealthCheckIpRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::GenerateVpnConnectionDefaultHealthCheckIpResponse`
        def GenerateVpnConnectionDefaultHealthCheckIp(request)
          body = send_request('GenerateVpnConnectionDefaultHealthCheckIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateVpnConnectionDefaultHealthCheckIpResponse.new
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

        # 本接口（GetCcnRegionBandwidthLimits）用于查询云联网相关地域带宽信息，其中预付费模式的云联网仅支持地域间限速，后付费模式的云联网支持地域间限速和地域出口限速。

        # @param request: Request instance for GetCcnRegionBandwidthLimits.
        # @type request: :class:`Tencentcloud::vpc::V20170312::GetCcnRegionBandwidthLimitsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::GetCcnRegionBandwidthLimitsResponse`
        def GetCcnRegionBandwidthLimits(request)
          body = send_request('GetCcnRegionBandwidthLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCcnRegionBandwidthLimitsResponse.new
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

        # 本接口（HaVipAssociateAddressIp）用于高可用虚拟IP（HAVIP）绑定弹性公网IP（EIP）。<br />
        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。

        # @param request: Request instance for HaVipAssociateAddressIp.
        # @type request: :class:`Tencentcloud::vpc::V20170312::HaVipAssociateAddressIpRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::HaVipAssociateAddressIpResponse`
        def HaVipAssociateAddressIp(request)
          body = send_request('HaVipAssociateAddressIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = HaVipAssociateAddressIpResponse.new
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

        # 本接口（HaVipDisassociateAddressIp）用于将高可用虚拟IP（HAVIP）已绑定的弹性公网IP（EIP）解除绑定。<br />
        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询`DescribeVpcTaskResult`接口。

        # @param request: Request instance for HaVipDisassociateAddressIp.
        # @type request: :class:`Tencentcloud::vpc::V20170312::HaVipDisassociateAddressIpRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::HaVipDisassociateAddressIpResponse`
        def HaVipDisassociateAddressIp(request)
          body = send_request('HaVipDisassociateAddressIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = HaVipDisassociateAddressIpResponse.new
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

        # 本接口（DescribePriceCreateDirectConnectGateway）用于创建专线网关询价。

        # @param request: Request instance for InquirePriceCreateDirectConnectGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::InquirePriceCreateDirectConnectGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::InquirePriceCreateDirectConnectGatewayResponse`
        def InquirePriceCreateDirectConnectGateway(request)
          body = send_request('InquirePriceCreateDirectConnectGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquirePriceCreateDirectConnectGatewayResponse.new
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

        # 本接口（InquiryPriceAllocateAddresses）用于新购弹性公网IP询价。

        # @param request: Request instance for InquiryPriceAllocateAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::InquiryPriceAllocateAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::InquiryPriceAllocateAddressesResponse`
        def InquiryPriceAllocateAddresses(request)
          body = send_request('InquiryPriceAllocateAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceAllocateAddressesResponse.new
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

        # 本接口（InquiryPriceCreateVpnGateway）用于创建VPN网关询价。

        # @param request: Request instance for InquiryPriceCreateVpnGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::InquiryPriceCreateVpnGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::InquiryPriceCreateVpnGatewayResponse`
        def InquiryPriceCreateVpnGateway(request)
          body = send_request('InquiryPriceCreateVpnGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceCreateVpnGatewayResponse.new
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

        # 本接口（InquiryPriceModifyAddressesBandwidth）用于EIP修改带宽询价。

        # @param request: Request instance for InquiryPriceModifyAddressesBandwidth.
        # @type request: :class:`Tencentcloud::vpc::V20170312::InquiryPriceModifyAddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::InquiryPriceModifyAddressesBandwidthResponse`
        def InquiryPriceModifyAddressesBandwidth(request)
          body = send_request('InquiryPriceModifyAddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceModifyAddressesBandwidthResponse.new
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

        # 本接口（InquiryPriceRenewAddresses）用于续费预付费弹性公网IP询价，只支持包月按带宽预付费的计费模式。

        # @param request: Request instance for InquiryPriceRenewAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::InquiryPriceRenewAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::InquiryPriceRenewAddressesResponse`
        def InquiryPriceRenewAddresses(request)
          body = send_request('InquiryPriceRenewAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRenewAddressesResponse.new
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

        # 本接口（InquiryPriceRenewVpnGateway）用于续费VPN网关询价。目前仅支持IPSEC类型网关的询价。

        # @param request: Request instance for InquiryPriceRenewVpnGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::InquiryPriceRenewVpnGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::InquiryPriceRenewVpnGatewayResponse`
        def InquiryPriceRenewVpnGateway(request)
          body = send_request('InquiryPriceRenewVpnGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceRenewVpnGatewayResponse.new
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

        # 本接口（InquiryPriceResetVpnGatewayInternetMaxBandwidth）用于调整VPN网关带宽上限询价。

        # @param request: Request instance for InquiryPriceResetVpnGatewayInternetMaxBandwidth.
        # @type request: :class:`Tencentcloud::vpc::V20170312::InquiryPriceResetVpnGatewayInternetMaxBandwidthRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::InquiryPriceResetVpnGatewayInternetMaxBandwidthResponse`
        def InquiryPriceResetVpnGatewayInternetMaxBandwidth(request)
          body = send_request('InquiryPriceResetVpnGatewayInternetMaxBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceResetVpnGatewayInternetMaxBandwidthResponse.new
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

        # 本接口（LockCcnBandwidths）用户锁定云联网限速实例。
        # 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（LockCcns）。
        # 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统。

        # @param request: Request instance for LockCcnBandwidths.
        # @type request: :class:`Tencentcloud::vpc::V20170312::LockCcnBandwidthsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::LockCcnBandwidthsResponse`
        def LockCcnBandwidths(request)
          body = send_request('LockCcnBandwidths', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LockCcnBandwidthsResponse.new
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

        # 本接口（LockCcns）用于锁定云联网实例

        # 该接口一般用来封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间封禁, 只能按更粗的云联网实例粒度封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度封禁（LockCcnBandwidths）

        # 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统

        # @param request: Request instance for LockCcns.
        # @type request: :class:`Tencentcloud::vpc::V20170312::LockCcnsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::LockCcnsResponse`
        def LockCcns(request)
          body = send_request('LockCcns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LockCcnsResponse.new
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

        # 本接口 (MigrateBandwidthPackageResources) 用于共享带宽包之间迁移资源

        # @param request: Request instance for MigrateBandwidthPackageResources.
        # @type request: :class:`Tencentcloud::vpc::V20170312::MigrateBandwidthPackageResourcesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::MigrateBandwidthPackageResourcesResponse`
        def MigrateBandwidthPackageResources(request)
          body = send_request('MigrateBandwidthPackageResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = MigrateBandwidthPackageResourcesResponse.new
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

        # 本接口（MigrateNetworkInterface）用于弹性网卡迁移。
        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询[DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) `接口。

        # @param request: Request instance for MigrateNetworkInterface.
        # @type request: :class:`Tencentcloud::vpc::V20170312::MigrateNetworkInterfaceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::MigrateNetworkInterfaceResponse`
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

        # 本接口（MigratePrivateIpAddress）用于弹性网卡内网IP迁移。
        # * 该接口用于将一个内网IP从一个弹性网卡上迁移到另外一个弹性网卡，主IP地址不支持迁移。
        # * 迁移前后的弹性网卡必须在同一个子网内。

        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询[DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口。

        # @param request: Request instance for MigratePrivateIpAddress.
        # @type request: :class:`Tencentcloud::vpc::V20170312::MigratePrivateIpAddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::MigratePrivateIpAddressResponse`
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

        # 本接口 (ModifyAddressAttribute) 用于修改[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的名称。

        # @param request: Request instance for ModifyAddressAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyAddressAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyAddressAttributeResponse`
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

        # 该接口用于调整具有带宽属性弹性公网IP的网络计费模式
        # * 支持BANDWIDTH_PREPAID_BY_MONTH（包月按带宽预付费）和TRAFFIC_POSTPAID_BY_HOUR（流量按小时后付费）两种网络计费模式之间的切换。
        # * 每个弹性公网IP支持调整两次，次数超出则无法调整。

        # @param request: Request instance for ModifyAddressInternetChargeType.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyAddressInternetChargeTypeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyAddressInternetChargeTypeResponse`
        def ModifyAddressInternetChargeType(request)
          body = send_request('ModifyAddressInternetChargeType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAddressInternetChargeTypeResponse.new
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

        # 本接口（ModifyAddressTemplateAttribute）用于修改IP地址模板。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for ModifyAddressTemplateAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyAddressTemplateAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyAddressTemplateAttributeResponse`
        def ModifyAddressTemplateAttribute(request)
          body = send_request('ModifyAddressTemplateAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAddressTemplateAttributeResponse.new
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

        # 本接口（ModifyAddressTemplateGroupAttribute）用于修改IP地址模板集合。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for ModifyAddressTemplateGroupAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyAddressTemplateGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyAddressTemplateGroupAttributeResponse`
        def ModifyAddressTemplateGroupAttribute(request)
          body = send_request('ModifyAddressTemplateGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAddressTemplateGroupAttributeResponse.new
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

        # 本接口（ModifyAddressesBandwidth）用于调整[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)(简称EIP)带宽，支持后付费EIP, 预付费EIP和带宽包EIP

        # @param request: Request instance for ModifyAddressesBandwidth.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyAddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyAddressesBandwidthResponse`
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

        # 本接口（ModifyAddressesRenewFlag）用于调整EIP续费标识。

        # @param request: Request instance for ModifyAddressesRenewFlag.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyAddressesRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyAddressesRenewFlagResponse`
        def ModifyAddressesRenewFlag(request)
          body = send_request('ModifyAddressesRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAddressesRenewFlagResponse.new
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

        # 本接口（ModifyAssistantCidr）用于批量修改辅助CIDR，支持新增和删除。

        # @param request: Request instance for ModifyAssistantCidr.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyAssistantCidrRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyAssistantCidrResponse`
        def ModifyAssistantCidr(request)
          body = send_request('ModifyAssistantCidr', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAssistantCidrResponse.new
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

        # 接口用于修改带宽包属性，包括带宽包名称和计费模式

        # @param request: Request instance for ModifyBandwidthPackageAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyBandwidthPackageAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyBandwidthPackageAttributeResponse`
        def ModifyBandwidthPackageAttribute(request)
          body = send_request('ModifyBandwidthPackageAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBandwidthPackageAttributeResponse.new
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

        # 接口用于调整[共享带宽包](https://cloud.tencent.com/document/product/684/15245)(BWP)带宽

        # @param request: Request instance for ModifyBandwidthPackageBandwidth.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyBandwidthPackageBandwidthRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyBandwidthPackageBandwidthResponse`
        def ModifyBandwidthPackageBandwidth(request)
          body = send_request('ModifyBandwidthPackageBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyBandwidthPackageBandwidthResponse.new
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

        # 修改CCN关联实例属性，目前仅修改备注description

        # @param request: Request instance for ModifyCcnAttachedInstancesAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyCcnAttachedInstancesAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyCcnAttachedInstancesAttributeResponse`
        def ModifyCcnAttachedInstancesAttribute(request)
          body = send_request('ModifyCcnAttachedInstancesAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCcnAttachedInstancesAttributeResponse.new
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

        # 本接口（ModifyCcnAttribute）用于修改云联网（CCN）的相关属性。

        # @param request: Request instance for ModifyCcnAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyCcnAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyCcnAttributeResponse`
        def ModifyCcnAttribute(request)
          body = send_request('ModifyCcnAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCcnAttributeResponse.new
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

        # 本接口（ModifyCcnRegionBandwidthLimitsType）用于修改后付费云联网实例修改带宽限速策略。

        # @param request: Request instance for ModifyCcnRegionBandwidthLimitsType.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyCcnRegionBandwidthLimitsTypeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyCcnRegionBandwidthLimitsTypeResponse`
        def ModifyCcnRegionBandwidthLimitsType(request)
          body = send_request('ModifyCcnRegionBandwidthLimitsType', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCcnRegionBandwidthLimitsTypeResponse.new
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

        # 该接口用于修改云联网路由表名称和备注。

        # @param request: Request instance for ModifyCcnRouteTables.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyCcnRouteTablesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyCcnRouteTablesResponse`
        def ModifyCcnRouteTables(request)
          body = send_request('ModifyCcnRouteTables', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCcnRouteTablesResponse.new
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

        # 修改 IDC通道信息

        # @param request: Request instance for ModifyCdcLDCXAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyCdcLDCXAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyCdcLDCXAttributeResponse`
        def ModifyCdcLDCXAttribute(request)
          body = send_request('ModifyCdcLDCXAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCdcLDCXAttributeResponse.new
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

        # 修改虚拟连接

        # @param request: Request instance for ModifyCdcNetPlaneAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyCdcNetPlaneAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyCdcNetPlaneAttributeResponse`
        def ModifyCdcNetPlaneAttribute(request)
          body = send_request('ModifyCdcNetPlaneAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCdcNetPlaneAttributeResponse.new
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
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyCustomerGatewayAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyCustomerGatewayAttributeResponse`
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

        # 本接口（ModifyDhcpIpAttribute）用于修改DhcpIp属性

        # @param request: Request instance for ModifyDhcpIpAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyDhcpIpAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyDhcpIpAttributeResponse`
        def ModifyDhcpIpAttribute(request)
          body = send_request('ModifyDhcpIpAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDhcpIpAttributeResponse.new
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

        # 本接口（ModifyDirectConnectGatewayAttribute）用于修改专线网关属性

        # @param request: Request instance for ModifyDirectConnectGatewayAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyDirectConnectGatewayAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyDirectConnectGatewayAttributeResponse`
        def ModifyDirectConnectGatewayAttribute(request)
          body = send_request('ModifyDirectConnectGatewayAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDirectConnectGatewayAttributeResponse.new
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

        # 本接口（ModifyFlowLogAttribute）用于修改流日志属性。

        # @param request: Request instance for ModifyFlowLogAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyFlowLogAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyFlowLogAttributeResponse`
        def ModifyFlowLogAttribute(request)
          body = send_request('ModifyFlowLogAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFlowLogAttributeResponse.new
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

        # 本接口（ModifyGatewayFlowQos）用于调整网关流控带宽。

        # @param request: Request instance for ModifyGatewayFlowQos.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyGatewayFlowQosRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyGatewayFlowQosResponse`
        def ModifyGatewayFlowQos(request)
          body = send_request('ModifyGatewayFlowQos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGatewayFlowQosResponse.new
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

        # 修改全局路由表ECMP算法 HASH 策略。

        # @param request: Request instance for ModifyGlobalRouteECMPAlgorithm.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyGlobalRouteECMPAlgorithmRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyGlobalRouteECMPAlgorithmResponse`
        def ModifyGlobalRouteECMPAlgorithm(request)
          body = send_request('ModifyGlobalRouteECMPAlgorithm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGlobalRouteECMPAlgorithmResponse.new
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

        # 修改全局路由。

        # @param request: Request instance for ModifyGlobalRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyGlobalRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyGlobalRoutesResponse`
        def ModifyGlobalRoutes(request)
          body = send_request('ModifyGlobalRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGlobalRoutesResponse.new
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

        # 本接口（ModifyHaVipAttribute）用于修改高可用虚拟IP（HAVIP）属性。

        # @param request: Request instance for ModifyHaVipAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyHaVipAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyHaVipAttributeResponse`
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

        # 修改高优路由表条目属性。

        # @param request: Request instance for ModifyHighPriorityRouteAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyHighPriorityRouteAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyHighPriorityRouteAttributeResponse`
        def ModifyHighPriorityRouteAttribute(request)
          body = send_request('ModifyHighPriorityRouteAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHighPriorityRouteAttributeResponse.new
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

        # 修改高优路由表 HASH 策略。

        # @param request: Request instance for ModifyHighPriorityRouteECMPAlgorithm.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyHighPriorityRouteECMPAlgorithmRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyHighPriorityRouteECMPAlgorithmResponse`
        def ModifyHighPriorityRouteECMPAlgorithm(request)
          body = send_request('ModifyHighPriorityRouteECMPAlgorithm', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHighPriorityRouteECMPAlgorithmResponse.new
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

        # 修改高优路由表属性

        # @param request: Request instance for ModifyHighPriorityRouteTableAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyHighPriorityRouteTableAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyHighPriorityRouteTableAttributeResponse`
        def ModifyHighPriorityRouteTableAttribute(request)
          body = send_request('ModifyHighPriorityRouteTableAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHighPriorityRouteTableAttributeResponse.new
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

        # 本接口（ModifyIPv6AddressesAttributes）用于修改弹性公网 IPv6（简称EIPv6）实例名称。

        # - 支持对弹性公网 IPv6 和传统弹性公网 IPv6 实例名称进行修改。

        # @param request: Request instance for ModifyIPv6AddressesAttributes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyIPv6AddressesAttributesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyIPv6AddressesAttributesResponse`
        def ModifyIPv6AddressesAttributes(request)
          body = send_request('ModifyIPv6AddressesAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIPv6AddressesAttributesResponse.new
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

        # 本接口（ModifyIPv6AddressesBandwidth）用于调整弹性公网 IPv6（简称EIPv6）实例的带宽上限。

        # @param request: Request instance for ModifyIPv6AddressesBandwidth.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyIPv6AddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyIPv6AddressesBandwidthResponse`
        def ModifyIPv6AddressesBandwidth(request)
          body = send_request('ModifyIPv6AddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIPv6AddressesBandwidthResponse.new
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

        # 本接口（ModifyIp6AddressesBandwidth）用于调整传统弹性公网 IPv6 实例的带宽上限。

        # - 仅支持对传统弹性公网 IPv6 实例的带宽上限进行调整。
        # - 如需调整弹性公网 IPv6 实例的带宽上限，请使用 [ModifyIPv6AddressesBandwidth](https://cloud.tencent.com/document/product/215/113674) 接口。

        # @param request: Request instance for ModifyIp6AddressesBandwidth.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyIp6AddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyIp6AddressesBandwidthResponse`
        def ModifyIp6AddressesBandwidth(request)
          body = send_request('ModifyIp6AddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIp6AddressesBandwidthResponse.new
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

        # 该接口用于修改IPV6转换规则，当前仅支持修改转换规则名称，IPV4地址和IPV4端口号

        # @param request: Request instance for ModifyIp6Rule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyIp6RuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyIp6RuleResponse`
        def ModifyIp6Rule(request)
          body = send_request('ModifyIp6Rule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIp6RuleResponse.new
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

        # 该接口用于修改IP6转换实例属性，当前仅支持修改实例名称。

        # @param request: Request instance for ModifyIp6Translator.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyIp6TranslatorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyIp6TranslatorResponse`
        def ModifyIp6Translator(request)
          body = send_request('ModifyIp6Translator', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIp6TranslatorResponse.new
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

        # 本接口（ModifyIpv6AddressesAttribute）用于修改弹性网卡内网IPv6地址属性。

        # @param request: Request instance for ModifyIpv6AddressesAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyIpv6AddressesAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyIpv6AddressesAttributeResponse`
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

        # 本接口（ModifyLocalGateway）用于修改CDC的本地网关。

        # @param request: Request instance for ModifyLocalGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyLocalGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyLocalGatewayResponse`
        def ModifyLocalGateway(request)
          body = send_request('ModifyLocalGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLocalGatewayResponse.new
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

        # 本接口（ModifyNatGatewayAttribute）用于修改NAT网关的属性。

        # @param request: Request instance for ModifyNatGatewayAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyNatGatewayAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyNatGatewayAttributeResponse`
        def ModifyNatGatewayAttribute(request)
          body = send_request('ModifyNatGatewayAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNatGatewayAttributeResponse.new
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

        # 本接口（ModifyNatGatewayDestinationIpPortTranslationNatRule）用于修改NAT网关端口转发规则。

        # @param request: Request instance for ModifyNatGatewayDestinationIpPortTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyNatGatewayDestinationIpPortTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyNatGatewayDestinationIpPortTranslationNatRuleResponse`
        def ModifyNatGatewayDestinationIpPortTranslationNatRule(request)
          body = send_request('ModifyNatGatewayDestinationIpPortTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNatGatewayDestinationIpPortTranslationNatRuleResponse.new
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

        # 本接口（ModifyNatGatewaySourceIpTranslationNatRule）用于修改NAT网关SNAT转发规则。

        # @param request: Request instance for ModifyNatGatewaySourceIpTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyNatGatewaySourceIpTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyNatGatewaySourceIpTranslationNatRuleResponse`
        def ModifyNatGatewaySourceIpTranslationNatRule(request)
          body = send_request('ModifyNatGatewaySourceIpTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNatGatewaySourceIpTranslationNatRuleResponse.new
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

        # 本接口(ModifyNetDetect)用于修改网络探测参数。

        # @param request: Request instance for ModifyNetDetect.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyNetDetectRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyNetDetectResponse`
        def ModifyNetDetect(request)
          body = send_request('ModifyNetDetect', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetDetectResponse.new
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

        # 本接口（ModifyNetworkAclAttribute）用于修改网络ACL属性。

        # @param request: Request instance for ModifyNetworkAclAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkAclAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkAclAttributeResponse`
        def ModifyNetworkAclAttribute(request)
          body = send_request('ModifyNetworkAclAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkAclAttributeResponse.new
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

        # 本接口（ModifyNetworkAclEntries）用于修改（包括添加和删除）网络ACL的入站规则和出站规则。在NetworkAclEntrySet参数中：
        # * 若同时传入入站规则和出站规则，则重置原有的入站规则和出站规则，并分别导入传入的规则。
        # * 若仅传入入站规则，则仅重置原有的入站规则，并导入传入的规则，不影响原有的出站规则（若仅传入出站规则，处理方式类似入站方向）。

        # @param request: Request instance for ModifyNetworkAclEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkAclEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkAclEntriesResponse`
        def ModifyNetworkAclEntries(request)
          body = send_request('ModifyNetworkAclEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkAclEntriesResponse.new
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

        # 本接口（ModifyNetworkAclQuintupleEntries）用于修改网络ACL五元组的入站规则和出站规则。在NetworkAclQuintupleEntrySet参数中：NetworkAclQuintupleEntry需要提供NetworkAclQuintupleEntryId。

        # @param request: Request instance for ModifyNetworkAclQuintupleEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkAclQuintupleEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkAclQuintupleEntriesResponse`
        def ModifyNetworkAclQuintupleEntries(request)
          body = send_request('ModifyNetworkAclQuintupleEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkAclQuintupleEntriesResponse.new
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

        # 本接口（ModifyNetworkInterfaceAttribute）用于修改弹性网卡属性。

        # @param request: Request instance for ModifyNetworkInterfaceAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkInterfaceAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkInterfaceAttributeResponse`
        def ModifyNetworkInterfaceAttribute(request)
          body = send_request('ModifyNetworkInterfaceAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkInterfaceAttributeResponse.new
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

        # 本接口（ModifyNetworkInterfaceQos）用于修改弹性网卡服务质量。

        # @param request: Request instance for ModifyNetworkInterfaceQos.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkInterfaceQosRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyNetworkInterfaceQosResponse`
        def ModifyNetworkInterfaceQos(request)
          body = send_request('ModifyNetworkInterfaceQos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkInterfaceQosResponse.new
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

        # 本接口（ModifyPrivateIpAddressesAttribute）用于修改弹性网卡内网IP属性。

        # @param request: Request instance for ModifyPrivateIpAddressesAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateIpAddressesAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateIpAddressesAttributeResponse`
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

        # 本接口（ModifyPrivateNatGatewayAttribute）用于修改私网NAT网关属性

        # @param request: Request instance for ModifyPrivateNatGatewayAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateNatGatewayAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateNatGatewayAttributeResponse`
        def ModifyPrivateNatGatewayAttribute(request)
          body = send_request('ModifyPrivateNatGatewayAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrivateNatGatewayAttributeResponse.new
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

        # 本接口（ModifyPrivateNatGatewayDestinationIpPortTranslationNatRule）用于修改私网NAT网关目的端口转换规则

        # @param request: Request instance for ModifyPrivateNatGatewayDestinationIpPortTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateNatGatewayDestinationIpPortTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateNatGatewayDestinationIpPortTranslationNatRuleResponse`
        def ModifyPrivateNatGatewayDestinationIpPortTranslationNatRule(request)
          body = send_request('ModifyPrivateNatGatewayDestinationIpPortTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrivateNatGatewayDestinationIpPortTranslationNatRuleResponse.new
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

        # 本接口（ModifyPrivateNatGatewayTranslationAclRule）用于修改私网NAT网关源端转换访问控制规则

        # @param request: Request instance for ModifyPrivateNatGatewayTranslationAclRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateNatGatewayTranslationAclRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateNatGatewayTranslationAclRuleResponse`
        def ModifyPrivateNatGatewayTranslationAclRule(request)
          body = send_request('ModifyPrivateNatGatewayTranslationAclRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrivateNatGatewayTranslationAclRuleResponse.new
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

        # 本接口（ModifyPrivateNatGatewayTranslationNatRule）用于修改私网NAT网关源端转换规则

        # @param request: Request instance for ModifyPrivateNatGatewayTranslationNatRule.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateNatGatewayTranslationNatRuleRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyPrivateNatGatewayTranslationNatRuleResponse`
        def ModifyPrivateNatGatewayTranslationNatRule(request)
          body = send_request('ModifyPrivateNatGatewayTranslationNatRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPrivateNatGatewayTranslationNatRuleResponse.new
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

        # 修改内网保留 IP

        # @param request: Request instance for ModifyReserveIpAddress.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyReserveIpAddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyReserveIpAddressResponse`
        def ModifyReserveIpAddress(request)
          body = send_request('ModifyReserveIpAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyReserveIpAddressResponse.new
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

        # 本接口（ModifyRoutePolicyAttribute）用于修改路由接收策略属性属性。

        # @param request: Request instance for ModifyRoutePolicyAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyRoutePolicyAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyRoutePolicyAttributeResponse`
        def ModifyRoutePolicyAttribute(request)
          body = send_request('ModifyRoutePolicyAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRoutePolicyAttributeResponse.new
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

        # 本接口（ModifyRouteTableAttribute）用于修改路由表（RouteTable）属性。

        # @param request: Request instance for ModifyRouteTableAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyRouteTableAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyRouteTableAttributeResponse`
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

        # 该接口用于编辑云联网路由表选择策略

        # @param request: Request instance for ModifyRouteTableSelectionPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyRouteTableSelectionPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyRouteTableSelectionPoliciesResponse`
        def ModifyRouteTableSelectionPolicies(request)
          body = send_request('ModifyRouteTableSelectionPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRouteTableSelectionPoliciesResponse.new
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

        # 本接口（ModifySecurityGroupAttribute）用于修改安全组（SecurityGroupPolicy）属性。

        # @param request: Request instance for ModifySecurityGroupAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifySecurityGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifySecurityGroupAttributeResponse`
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

        # 本接口（ModifySecurityGroupPolicies）用于重置安全组出站和入站规则（SecurityGroupPolicy）。

        # <ul>
        # <li>该接口不支持自定义索引 PolicyIndex。</li>
        # <li>在 SecurityGroupPolicySet 参数中：<ul>
        # 	<li> 如果指定 SecurityGroupPolicySet.Version 为0, 表示清空所有规则，并忽略 Egress 和 Ingress。</li>
        # 	<li> 如果指定 SecurityGroupPolicySet.Version 不为0, 在添加出站和入站规则（Egress 和 Ingress）时：<ul>
        # 		<li>Protocol 字段支持输入 TCP, UDP, ICMP, ICMPV6, GRE, ALL。</li>
        # 		<li>CidrBlock 字段允许输入符合 cidr 格式标准的任意字符串。在基础网络中，如果 CidrBlock 包含您的账户内的云服务器之外的设备在腾讯云的内网 IP，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。</li>
        # 		<li>Ipv6CidrBlock 字段允许输入符合 IPv6 cidr 格式标准的任意字符串。在基础网络中，如果Ipv6CidrBlock 包含您的账户内的云服务器之外的设备在腾讯云的内网 IPv6，并不代表此规则允许您访问这些设备，租户之间网络隔离规则优先于安全组中的内网规则。</li>
        # 		<li>SecurityGroupId 字段允许输入与待修改的安全组位于相同项目中的安全组 ID，包括这个安全组 ID 本身，代表安全组下所有云服务器的内网 IP。使用这个字段时，这条规则用来匹配网络报文的过程中会随着被使用的这个ID所关联的云服务器变化而变化，不需要重新修改。</li>
        # 		<li>Port 字段允许输入一个单独端口号，或者用减号分隔的两个端口号代表端口范围，例如80或8000-8010。只有当 Protocol 字段是 TCP 或 UDP 时，Port 字段才被接受。</li>
        # 		<li>Action 字段只允许输入 ACCEPT 或 DROP。</li>
        # 		<li>CidrBlock, Ipv6CidrBlock, SecurityGroupId, AddressTemplate 四者是排他关系，不允许同时输入，Protocol + Port 和 ServiceTemplate 二者是排他关系，不允许同时输入。</li>
        # </ul></li></ul></li>
        # </ul>

        # @param request: Request instance for ModifySecurityGroupPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifySecurityGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifySecurityGroupPoliciesResponse`
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

        # 本接口（ModifyServiceTemplateAttribute）用于修改协议端口模板。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for ModifyServiceTemplateAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyServiceTemplateAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyServiceTemplateAttributeResponse`
        def ModifyServiceTemplateAttribute(request)
          body = send_request('ModifyServiceTemplateAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyServiceTemplateAttributeResponse.new
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

        # 本接口（ModifyServiceTemplateGroupAttribute）用于修改协议端口模板集合。
        # >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
        # >

        # @param request: Request instance for ModifyServiceTemplateGroupAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyServiceTemplateGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyServiceTemplateGroupAttributeResponse`
        def ModifyServiceTemplateGroupAttribute(request)
          body = send_request('ModifyServiceTemplateGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyServiceTemplateGroupAttributeResponse.new
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

        # 本接口（ModifySnapshotPolicies）用于修改快照策略。

        # @param request: Request instance for ModifySnapshotPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifySnapshotPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifySnapshotPoliciesResponse`
        def ModifySnapshotPolicies(request)
          body = send_request('ModifySnapshotPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySnapshotPoliciesResponse.new
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

        # 本接口（ModifySubnetAttribute）用于修改子网属性。

        # @param request: Request instance for ModifySubnetAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifySubnetAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifySubnetAttributeResponse`
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

        # 修改模板对象中的IP地址、协议端口、IP地址组、协议端口组。

        # @param request: Request instance for ModifyTemplateMember.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyTemplateMemberRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyTemplateMemberResponse`
        def ModifyTemplateMember(request)
          body = send_request('ModifyTemplateMember', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTemplateMemberResponse.new
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

        # 本接口（ModifyTrafficMirrorAttribute）用于修改流量镜像实例属性。
        # 注意：只支持修改名字和描述信息

        # @param request: Request instance for ModifyTrafficMirrorAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyTrafficMirrorAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyTrafficMirrorAttributeResponse`
        def ModifyTrafficMirrorAttribute(request)
          body = send_request('ModifyTrafficMirrorAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTrafficMirrorAttributeResponse.new
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

        # 本接口（ModifyVpcAttribute）用于修改私有网络（VPC）的相关属性。

        # @param request: Request instance for ModifyVpcAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpcAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpcAttributeResponse`
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

        # 本接口（ModifyVpcEndPointAttribute）用于修改终端节点属性。

        # @param request: Request instance for ModifyVpcEndPointAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpcEndPointAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpcEndPointAttributeResponse`
        def ModifyVpcEndPointAttribute(request)
          body = send_request('ModifyVpcEndPointAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpcEndPointAttributeResponse.new
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

        # 本接口（ModifyVpcEndPointServiceAttribute）用于修改终端节点服务属性。

        # @param request: Request instance for ModifyVpcEndPointServiceAttribute.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpcEndPointServiceAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpcEndPointServiceAttributeResponse`
        def ModifyVpcEndPointServiceAttribute(request)
          body = send_request('ModifyVpcEndPointServiceAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpcEndPointServiceAttributeResponse.new
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

        # 本接口（ModifyVpcEndPointServiceWhiteList）用于修改终端节点服务白名单属性。

        # @param request: Request instance for ModifyVpcEndPointServiceWhiteList.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpcEndPointServiceWhiteListRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpcEndPointServiceWhiteListResponse`
        def ModifyVpcEndPointServiceWhiteList(request)
          body = send_request('ModifyVpcEndPointServiceWhiteList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpcEndPointServiceWhiteListResponse.new
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

        # 本接口（ModifyVpcPeeringConnection）用于修改私有网络对等连接属性。

        # @param request: Request instance for ModifyVpcPeeringConnection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpcPeeringConnectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpcPeeringConnectionResponse`
        def ModifyVpcPeeringConnection(request)
          body = send_request('ModifyVpcPeeringConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpcPeeringConnectionResponse.new
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
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpnConnectionAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpnConnectionAttributeResponse`
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
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewayAttributeRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewayAttributeResponse`
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

        # 本接口（ModifyVpnGatewayCcnRoutes）用于修改VPN网关云联网路由。

        # @param request: Request instance for ModifyVpnGatewayCcnRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewayCcnRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewayCcnRoutesResponse`
        def ModifyVpnGatewayCcnRoutes(request)
          body = send_request('ModifyVpnGatewayCcnRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpnGatewayCcnRoutesResponse.new
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

        # 本接口（ModifyVpnGatewayRoutes）用于修改VPN路由是否启用。

        # @param request: Request instance for ModifyVpnGatewayRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewayRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewayRoutesResponse`
        def ModifyVpnGatewayRoutes(request)
          body = send_request('ModifyVpnGatewayRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpnGatewayRoutesResponse.new
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

        # 更新SslVpnClient证书

        # @param request: Request instance for ModifyVpnGatewaySslClientCert.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewaySslClientCertRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewaySslClientCertResponse`
        def ModifyVpnGatewaySslClientCert(request)
          body = send_request('ModifyVpnGatewaySslClientCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpnGatewaySslClientCertResponse.new
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

        # 本接口用于修改 SSL-VPN 服务端属性

        # @param request: Request instance for ModifyVpnGatewaySslServer.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewaySslServerRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ModifyVpnGatewaySslServerResponse`
        def ModifyVpnGatewaySslServer(request)
          body = send_request('ModifyVpnGatewaySslServer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyVpnGatewaySslServerResponse.new
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

        # 本接口（NotifyRoutes）用于路由表列表页操作增加“发布到云联网”，发布路由到云联网。

        # @param request: Request instance for NotifyRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::NotifyRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::NotifyRoutesResponse`
        def NotifyRoutes(request)
          body = send_request('NotifyRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = NotifyRoutesResponse.new
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

        # 刷新专线直连nat路由，更新nat到专线的路由表

        # @param request: Request instance for RefreshDirectConnectGatewayRouteToNatGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::RefreshDirectConnectGatewayRouteToNatGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::RefreshDirectConnectGatewayRouteToNatGatewayResponse`
        def RefreshDirectConnectGatewayRouteToNatGateway(request)
          body = send_request('RefreshDirectConnectGatewayRouteToNatGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefreshDirectConnectGatewayRouteToNatGatewayResponse.new
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

        # 本接口（RejectAttachCcnInstances）用于跨账号关联实例时，云联网所有者拒绝关联操作。

        # @param request: Request instance for RejectAttachCcnInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::RejectAttachCcnInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::RejectAttachCcnInstancesResponse`
        def RejectAttachCcnInstances(request)
          body = send_request('RejectAttachCcnInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RejectAttachCcnInstancesResponse.new
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

        # 本接口（RejectVpcPeeringConnection）用于驳回对等连接请求。

        # @param request: Request instance for RejectVpcPeeringConnection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::RejectVpcPeeringConnectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::RejectVpcPeeringConnectionResponse`
        def RejectVpcPeeringConnection(request)
          body = send_request('RejectVpcPeeringConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RejectVpcPeeringConnectionResponse.new
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

        # 本接口 (ReleaseAddresses) 用于释放一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
        # * 该操作不可逆，释放后 EIP 关联的 IP 地址将不再属于您的名下。
        # * 只有状态为 UNBIND 的 EIP 才能进行释放操作。

        # @param request: Request instance for ReleaseAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReleaseAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReleaseAddressesResponse`
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

        # 本接口（ReleaseIPv6Addresses）用于释放一个或多个弹性公网IPv6（简称EIPv6）实例。

        # - 支持对已申请到的弹性公网 IPv6 实例进行释放操作，如需再次使用，请重新申请。
        # - 只有状态为 UNBIND 的 EIPv6 实例才能进行释放操作。

        # @param request: Request instance for ReleaseIPv6Addresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReleaseIPv6AddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReleaseIPv6AddressesResponse`
        def ReleaseIPv6Addresses(request)
          body = send_request('ReleaseIPv6Addresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseIPv6AddressesResponse.new
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

        # 本接口（ReleaseIp6AddressesBandwidth）用于为传统弹性公网 IPv6 实例关闭 IPv6 公网带宽。

        # - 传统弹性公网 IPv6 实例关闭公网带宽后，仍具备 IPv6 内网通信能力。
        # - 如需再次开通 IPv6 公网带宽，请使用 [AllocateIp6AddressesBandwidth](https://cloud.tencent.com/document/product/215/40090) 接口进行开通。

        # @param request: Request instance for ReleaseIp6AddressesBandwidth.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReleaseIp6AddressesBandwidthRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReleaseIp6AddressesBandwidthResponse`
        def ReleaseIp6AddressesBandwidth(request)
          body = send_request('ReleaseIp6AddressesBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseIp6AddressesBandwidthResponse.new
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

        # 接口用于删除带宽包资源，包括[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)和[负载均衡](https://cloud.tencent.com/document/product/214/517)等

        # @param request: Request instance for RemoveBandwidthPackageResources.
        # @type request: :class:`Tencentcloud::vpc::V20170312::RemoveBandwidthPackageResourcesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::RemoveBandwidthPackageResourcesResponse`
        def RemoveBandwidthPackageResources(request)
          body = send_request('RemoveBandwidthPackageResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveBandwidthPackageResourcesResponse.new
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

        # 1. 该接口用于删除IPV6转换规则
        # 2. 支持批量删除同一个转换实例下的多个转换规则

        # @param request: Request instance for RemoveIp6Rules.
        # @type request: :class:`Tencentcloud::vpc::V20170312::RemoveIp6RulesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::RemoveIp6RulesResponse`
        def RemoveIp6Rules(request)
          body = send_request('RemoveIp6Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveIp6RulesResponse.new
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

        # 本接口（RenewAddresses）用于续费包月带宽计费模式的弹性公网IP。

        # @param request: Request instance for RenewAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::RenewAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::RenewAddressesResponse`
        def RenewAddresses(request)
          body = send_request('RenewAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewAddressesResponse.new
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

        # 本接口（RenewVpnGateway）用于预付费（包年包月）VPN网关续费。目前只支持IPSEC网关。

        # @param request: Request instance for RenewVpnGateway.
        # @type request: :class:`Tencentcloud::vpc::V20170312::RenewVpnGatewayRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::RenewVpnGatewayResponse`
        def RenewVpnGateway(request)
          body = send_request('RenewVpnGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewVpnGatewayResponse.new
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

        # 本接口(ReplaceCcnRouteTableBroadcastPolicys)用于替换云联网路由表路由传播策略。
        # > 特别注意：是全量覆盖，非增量添加

        # **路由条件支持以下四种：**

        # - 实例类型: `instance-type`，可选值：私有网络 `VPC`、专线网关 `DIRECTCONNECT`、VPN网关 `VPNGW`
        # - 实例ID: `instance-id`，例如：`dcg-8zljkrft`、`vpc-jdevjrup`，暂不支持 `Edge` 实例
        # - 实例地域: `instance-region`，例如：`ap-guangzhou`<br />产品支持的所有地域列表可通过接口 [DescribeRegions](https://cloud.tencent.com/document/product/1596/77930) 查询，其中参数 `Product` 设置为 `ccn`
        # - 路由前缀: `cidr-block`，例如：`10.1.0.0/16`


        # **传播条件支持以下三种：**

        # - 实例类型: `instance-type`，格式同路由条件
        # - 实例ID: `instance-id`，格式同路由条件
        # - 实例地域: `instance-region`，格式同路由条件


        # **使用限制：**
        # - 一条策略内的单个条件类型，最大支持设置 `25` 个条件值
        # - 一张路由表，最大支持 `100` 条路由传播策略
        # - 路由条件类型中，只有 `cidr-block` 类型支持模糊匹配和精确匹配两种，其它类型只支持精确匹配一种模式

        # @param request: Request instance for ReplaceCcnRouteTableBroadcastPolicys.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceCcnRouteTableBroadcastPolicysRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceCcnRouteTableBroadcastPolicysResponse`
        def ReplaceCcnRouteTableBroadcastPolicys(request)
          body = send_request('ReplaceCcnRouteTableBroadcastPolicys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceCcnRouteTableBroadcastPolicysResponse.new
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

        # 本接口(ReplaceRouteTableInputPolicys)用于替换云联网路由表路由接收策略。
        # > 特别注意：是全量覆盖，非增量添加

        # **路由条件支持以下四种：**

        # - 实例类型: `instance-type`，可选值：私有网络 `VPC`、专线网关 `DIRECTCONNECT`、VPN网关 `VPNGW`
        # - 实例ID: `instance-id`，例如：`dcg-8zljkrft`、`vpc-jdevjrup`，暂不支持 `Edge` 实例
        # - 实例地域: `instance-region`，例如：`ap-guangzhou`<br />产品支持的所有地域列表可通过接口 [DescribeRegions](https://cloud.tencent.com/document/product/1596/77930) 查询，其中参数 `Product` 设置为 `ccn`
        # - 路由前缀: `cidr-block`，例如：`10.1.0.0/16`


        # **使用限制：**
        # - 一条策略内的单个条件类型，最大支持设置 `25` 个条件值
        # - 一张路由表，最大支持 `100` 条路由接收策略
        # - 路由条件类型中，只有 `cidr-block` 类型支持模糊匹配和精确匹配两种，其它类型只支持精确匹配一种模式

        # @param request: Request instance for ReplaceCcnRouteTableInputPolicys.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceCcnRouteTableInputPolicysRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceCcnRouteTableInputPolicysResponse`
        def ReplaceCcnRouteTableInputPolicys(request)
          body = send_request('ReplaceCcnRouteTableInputPolicys', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceCcnRouteTableInputPolicysResponse.new
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

        # 本接口（ReplaceDirectConnectGatewayCcnRoutes）根据路由ID（RouteId）修改指定的路由（Route），支持批量修改。

        # @param request: Request instance for ReplaceDirectConnectGatewayCcnRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceDirectConnectGatewayCcnRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceDirectConnectGatewayCcnRoutesResponse`
        def ReplaceDirectConnectGatewayCcnRoutes(request)
          body = send_request('ReplaceDirectConnectGatewayCcnRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceDirectConnectGatewayCcnRoutesResponse.new
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

        # 替换高优路由表和子网绑定关系。

        # @param request: Request instance for ReplaceHighPriorityRouteTableAssociation.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceHighPriorityRouteTableAssociationRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceHighPriorityRouteTableAssociationResponse`
        def ReplaceHighPriorityRouteTableAssociation(request)
          body = send_request('ReplaceHighPriorityRouteTableAssociation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceHighPriorityRouteTableAssociationResponse.new
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

        # 替换高优路由表条目信息。

        # @param request: Request instance for ReplaceHighPriorityRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceHighPriorityRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceHighPriorityRoutesResponse`
        def ReplaceHighPriorityRoutes(request)
          body = send_request('ReplaceHighPriorityRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceHighPriorityRoutesResponse.new
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

        # 本接口（ReplaceRoutePolicyAssociations）根据路由接收策略实例ID（RoutePolicyId）和路由表实例ID（RouteTableId）修改绑定优先级（Priority），支持批量修改。

        # @param request: Request instance for ReplaceRoutePolicyAssociations.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceRoutePolicyAssociationsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceRoutePolicyAssociationsResponse`
        def ReplaceRoutePolicyAssociations(request)
          body = send_request('ReplaceRoutePolicyAssociations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceRoutePolicyAssociationsResponse.new
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

        # 本接口（ReplaceRoutePolicyEntries）根据路由接收策略规则ID（RoutePolicyEntryId）修改指定的路由策略条目（RoutePolicyEntry），支持批量修改。

        # @param request: Request instance for ReplaceRoutePolicyEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceRoutePolicyEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceRoutePolicyEntriesResponse`
        def ReplaceRoutePolicyEntries(request)
          body = send_request('ReplaceRoutePolicyEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceRoutePolicyEntriesResponse.new
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

        # 本接口（ReplaceRouteTableAssociation）用于修改子网（Subnet）关联的路由表（RouteTable）。
        # * 一个子网只能关联一个路由表。

        # @param request: Request instance for ReplaceRouteTableAssociation.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceRouteTableAssociationRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceRouteTableAssociationResponse`
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

        # 本接口（ReplaceRoutes）根据路由策略ID（RouteId）修改指定的路由策略（Route），支持批量修改。

        # @param request: Request instance for ReplaceRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceRoutesResponse`
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

        # 本接口（ReplaceRoutes）根据路由策略ID（RouteId）修改指定的路由策略（Route），支持批量修改。

        # @param request: Request instance for ReplaceRoutesWithRoutePolicy.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceRoutesWithRoutePolicyRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceRoutesWithRoutePolicyResponse`
        def ReplaceRoutesWithRoutePolicy(request)
          body = send_request('ReplaceRoutesWithRoutePolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceRoutesWithRoutePolicyResponse.new
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

        # 本接口（ReplaceSecurityGroupPolicies）用于批量修改安全组规则（SecurityGroupPolicy）。
        # 单个请求中只能替换单个方向的一条或多条规则, 必须要指定索引（PolicyIndex）。

        # @param request: Request instance for ReplaceSecurityGroupPolicies.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceSecurityGroupPoliciesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceSecurityGroupPoliciesResponse`
        def ReplaceSecurityGroupPolicies(request)
          body = send_request('ReplaceSecurityGroupPolicies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceSecurityGroupPoliciesResponse.new
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

        # 本接口（ReplaceSecurityGroupPolicy）用于替换单条安全组规则（SecurityGroupPolicy）。
        # 单个请求中只能替换单个方向的一条规则, 必须要指定索引（PolicyIndex）。

        # @param request: Request instance for ReplaceSecurityGroupPolicy.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReplaceSecurityGroupPolicyRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReplaceSecurityGroupPolicyResponse`
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

        # 本接口（ResetAttachCcnInstances）用于跨账号关联实例申请过期时，重新申请关联操作。

        # @param request: Request instance for ResetAttachCcnInstances.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetAttachCcnInstancesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetAttachCcnInstancesResponse`
        def ResetAttachCcnInstances(request)
          body = send_request('ResetAttachCcnInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetAttachCcnInstancesResponse.new
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

        # 重置高优路由表。

        # @param request: Request instance for ResetHighPriorityRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetHighPriorityRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetHighPriorityRoutesResponse`
        def ResetHighPriorityRoutes(request)
          body = send_request('ResetHighPriorityRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetHighPriorityRoutesResponse.new
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

        # 本接口（ResetNatGatewayConnection）用于调整传统型NAT网关并发连接数上限。

        # @param request: Request instance for ResetNatGatewayConnection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetNatGatewayConnectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetNatGatewayConnectionResponse`
        def ResetNatGatewayConnection(request)
          body = send_request('ResetNatGatewayConnection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetNatGatewayConnectionResponse.new
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

        # 本接口（ResetRoutePolicyAssociations）用于对某个路由表实例已经绑定的路由策略实例解除绑定关系，并重新设置新的绑定路由策略及优先级。<br />

        # @param request: Request instance for ResetRoutePolicyAssociations.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetRoutePolicyAssociationsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetRoutePolicyAssociationsResponse`
        def ResetRoutePolicyAssociations(request)
          body = send_request('ResetRoutePolicyAssociations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetRoutePolicyAssociationsResponse.new
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

        # 本接口（ResetRoutePolicyEntries）根据路由接收策略规则ID（RoutePolicyId）重置指定的路由接收策略条目（RoutePolicyEntry），支持批量修改。

        # @param request: Request instance for ResetRoutePolicyEntries.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetRoutePolicyEntriesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetRoutePolicyEntriesResponse`
        def ResetRoutePolicyEntries(request)
          body = send_request('ResetRoutePolicyEntries', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetRoutePolicyEntriesResponse.new
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

        # 本接口（ResetRoutes）用于对某个路由表名称和所有路由策略（Route）进行重新设置。<br /> 注意: 调用本接口时先删除当前路由表中所有路由策略, 再保存新提交的路由策略内容, 会引起网络中断。

        # @param request: Request instance for ResetRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetRoutesResponse`
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

        # 本接口（ResetTrafficMirrorFilter）用于更新流量镜像实例过滤规则。
        # 注意：每一个流量镜像实例，不能同时支持按nat网关和五元组两种规则过滤

        # @param request: Request instance for ResetTrafficMirrorFilter.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetTrafficMirrorFilterRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetTrafficMirrorFilterResponse`
        def ResetTrafficMirrorFilter(request)
          body = send_request('ResetTrafficMirrorFilter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetTrafficMirrorFilterResponse.new
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

        # 本接口（ResetTrafficMirrorSrcs）用于重置流量镜像实例采集对象。

        # @param request: Request instance for ResetTrafficMirrorSrcs.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetTrafficMirrorSrcsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetTrafficMirrorSrcsResponse`
        def ResetTrafficMirrorSrcs(request)
          body = send_request('ResetTrafficMirrorSrcs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetTrafficMirrorSrcsResponse.new
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

        # 本接口（ResetTrafficMirrorTarget）用于更新流量镜像实例的接收目的信息。

        # @param request: Request instance for ResetTrafficMirrorTarget.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetTrafficMirrorTargetRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetTrafficMirrorTargetResponse`
        def ResetTrafficMirrorTarget(request)
          body = send_request('ResetTrafficMirrorTarget', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetTrafficMirrorTargetResponse.new
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

        # 本接口（ResetVpnConnection）用于重置VPN通道。

        # @param request: Request instance for ResetVpnConnection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetVpnConnectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetVpnConnectionResponse`
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

        # 本接口（ResetVpnGatewayInternetMaxBandwidth）用于调整VPN网关带宽上限。VPN网关带宽目前仅支持部分带宽范围内升降配，如【5,100】Mbps和【200,1000】Mbps，在各自带宽范围内可提升配额，跨范围提升配额和降配暂不支持，如果是包年包月VPN网关需要在有效期内。

        # @param request: Request instance for ResetVpnGatewayInternetMaxBandwidth.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResetVpnGatewayInternetMaxBandwidthRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResetVpnGatewayInternetMaxBandwidthResponse`
        def ResetVpnGatewayInternetMaxBandwidth(request)
          body = send_request('ResetVpnGatewayInternetMaxBandwidth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetVpnGatewayInternetMaxBandwidthResponse.new
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

        # 本接口（ResumeSnapshotInstance）用于根据备份内容恢复安全组策略。

        # @param request: Request instance for ResumeSnapshotInstance.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ResumeSnapshotInstanceRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ResumeSnapshotInstanceResponse`
        def ResumeSnapshotInstance(request)
          body = send_request('ResumeSnapshotInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResumeSnapshotInstanceResponse.new
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

        # 本接口（ReturnNormalAddresses）用于解绑并释放普通公网IP。
        # 为完善公网IP的访问管理功能，此接口于2022年12月15日升级优化鉴权功能，升级后子用户调用此接口需向主账号申请CAM策略授权，否则可能调用失败。您可以提前为子账号配置操作授权，详情见[授权指南](https://cloud.tencent.com/document/product/598/34545)。

        # @param request: Request instance for ReturnNormalAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::ReturnNormalAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::ReturnNormalAddressesResponse`
        def ReturnNormalAddresses(request)
          body = send_request('ReturnNormalAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReturnNormalAddressesResponse.new
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

        # 本接口（SetCcnRegionBandwidthLimits）用于设置云联网（CCN）各地域出带宽上限，或者地域间带宽上限。

        # @param request: Request instance for SetCcnRegionBandwidthLimits.
        # @type request: :class:`Tencentcloud::vpc::V20170312::SetCcnRegionBandwidthLimitsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::SetCcnRegionBandwidthLimitsResponse`
        def SetCcnRegionBandwidthLimits(request)
          body = send_request('SetCcnRegionBandwidthLimits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetCcnRegionBandwidthLimitsResponse.new
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

        # 本接口（SetVpnGatewaysRenewFlag）用于设置VPNGW续费标记。

        # @param request: Request instance for SetVpnGatewaysRenewFlag.
        # @type request: :class:`Tencentcloud::vpc::V20170312::SetVpnGatewaysRenewFlagRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::SetVpnGatewaysRenewFlagResponse`
        def SetVpnGatewaysRenewFlag(request)
          body = send_request('SetVpnGatewaysRenewFlag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetVpnGatewaysRenewFlagResponse.new
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

        # 本接口（StartTrafficMirror）用于开启流量镜像实例。

        # @param request: Request instance for StartTrafficMirror.
        # @type request: :class:`Tencentcloud::vpc::V20170312::StartTrafficMirrorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::StartTrafficMirrorResponse`
        def StartTrafficMirror(request)
          body = send_request('StartTrafficMirror', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StartTrafficMirrorResponse.new
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

        # 本接口（StopTrafficMirror）用于关闭流量镜像实例。

        # @param request: Request instance for StopTrafficMirror.
        # @type request: :class:`Tencentcloud::vpc::V20170312::StopTrafficMirrorRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::StopTrafficMirrorResponse`
        def StopTrafficMirror(request)
          body = send_request('StopTrafficMirror', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = StopTrafficMirrorResponse.new
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

        # 本接口 (TransformAddress) 用于将实例的普通公网 IP 转换为[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）。
        # * 平台对用户单地域每日解绑 EIP 重新分配普通公网 IP 次数有所限制（可参见 [EIP 产品简介](/document/product/213/1941)）。上述配额可通过 [DescribeAddressQuota](https://cloud.tencent.com/document/product/215/16701) 接口获取。

        # @param request: Request instance for TransformAddress.
        # @type request: :class:`Tencentcloud::vpc::V20170312::TransformAddressRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::TransformAddressResponse`
        def TransformAddress(request)
          body = send_request('TransformAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransformAddressResponse.new
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

        # 本接口（UnassignIpv6Addresses）用于释放弹性网卡`IPv6`地址。<br />
        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询[DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037)接口。

        # @param request: Request instance for UnassignIpv6Addresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::UnassignIpv6AddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::UnassignIpv6AddressesResponse`
        def UnassignIpv6Addresses(request)
          body = send_request('UnassignIpv6Addresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnassignIpv6AddressesResponse.new
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

        # 本接口（UnassignIpv6CidrBlock）用于释放IPv6网段。<br />
        # 网段如果还有IP占用且未回收，则网段无法释放。

        # @param request: Request instance for UnassignIpv6CidrBlock.
        # @type request: :class:`Tencentcloud::vpc::V20170312::UnassignIpv6CidrBlockRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::UnassignIpv6CidrBlockResponse`
        def UnassignIpv6CidrBlock(request)
          body = send_request('UnassignIpv6CidrBlock', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnassignIpv6CidrBlockResponse.new
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

        # 本接口（UnassignIpv6SubnetCidrBlock）用于释放IPv6子网段。<br />
        # 子网段如果还有IP占用且未回收，则子网段无法释放。

        # @param request: Request instance for UnassignIpv6SubnetCidrBlock.
        # @type request: :class:`Tencentcloud::vpc::V20170312::UnassignIpv6SubnetCidrBlockRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::UnassignIpv6SubnetCidrBlockResponse`
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

        # 本接口（UnassignPrivateIpAddresses）用于弹性网卡退还内网 IP。
        # * 退还弹性网卡上的辅助内网IP，接口自动解除关联弹性公网 IP。不能退还弹性网卡的主内网IP。

        # 本接口是异步完成，如需查询异步任务执行结果，请使用本接口返回的`RequestId`轮询[DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037)
        # 接口。

        # @param request: Request instance for UnassignPrivateIpAddresses.
        # @type request: :class:`Tencentcloud::vpc::V20170312::UnassignPrivateIpAddressesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::UnassignPrivateIpAddressesResponse`
        def UnassignPrivateIpAddresses(request)
          body = send_request('UnassignPrivateIpAddresses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnassignPrivateIpAddressesResponse.new
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

        # 本接口（UnlockCcnBandwidths）用户解锁云联网限速实例。
        # 该接口一般用来封禁地域间限速的云联网实例下的限速实例, 目前联通内部运营系统通过云API调用, 如果是出口限速, 一般使用更粗的云联网实例粒度封禁（SecurityUnlockCcns）。
        # 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统。

        # @param request: Request instance for UnlockCcnBandwidths.
        # @type request: :class:`Tencentcloud::vpc::V20170312::UnlockCcnBandwidthsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::UnlockCcnBandwidthsResponse`
        def UnlockCcnBandwidths(request)
          body = send_request('UnlockCcnBandwidths', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnlockCcnBandwidthsResponse.new
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

        # 本接口（UnlockCcns）用于解锁云联网实例

        # 该接口一般用来解封禁出口限速的云联网实例, 目前联通内部运营系统通过云API调用, 因为出口限速无法按地域间解封禁, 只能按更粗的云联网实例粒度解封禁, 如果是地域间限速, 一般可以通过更细的限速实例粒度解封禁（UnlockCcnBandwidths）

        # 如有需要, 可以封禁任意限速实例, 可接入到内部运营系统

        # @param request: Request instance for UnlockCcns.
        # @type request: :class:`Tencentcloud::vpc::V20170312::UnlockCcnsRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::UnlockCcnsResponse`
        def UnlockCcns(request)
          body = send_request('UnlockCcns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnlockCcnsResponse.new
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

        # 本接口（UpdateTrafficMirrorAllFilter）用于更新流量镜像实例的过滤规则或者采集对象。

        # @param request: Request instance for UpdateTrafficMirrorAllFilter.
        # @type request: :class:`Tencentcloud::vpc::V20170312::UpdateTrafficMirrorAllFilterRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::UpdateTrafficMirrorAllFilterResponse`
        def UpdateTrafficMirrorAllFilter(request)
          body = send_request('UpdateTrafficMirrorAllFilter', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTrafficMirrorAllFilterResponse.new
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

        # 本接口（UpdateTrafficMirrorDirection）用于更新流量镜像实例的采集方向。

        # @param request: Request instance for UpdateTrafficMirrorDirection.
        # @type request: :class:`Tencentcloud::vpc::V20170312::UpdateTrafficMirrorDirectionRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::UpdateTrafficMirrorDirectionResponse`
        def UpdateTrafficMirrorDirection(request)
          body = send_request('UpdateTrafficMirrorDirection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateTrafficMirrorDirectionResponse.new
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

        # 本接口（WithdrawNotifyRoutes）用于撤销已发布到云联网的路由。路由表列表页操作增加“从云联网撤销”。

        # @param request: Request instance for WithdrawNotifyRoutes.
        # @type request: :class:`Tencentcloud::vpc::V20170312::WithdrawNotifyRoutesRequest`
        # @rtype: :class:`Tencentcloud::vpc::V20170312::WithdrawNotifyRoutesResponse`
        def WithdrawNotifyRoutes(request)
          body = send_request('WithdrawNotifyRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = WithdrawNotifyRoutesResponse.new
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