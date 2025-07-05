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
  module Bmlb
    module V20180625
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-06-25'
            api_endpoint = 'bmlb.tencentcloudapi.com'
            sdk_version = 'BMLB_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 绑定黑石服务器到四层监听器。服务器包括物理服务器、虚拟机以及半托管机器。

        # @param request: Request instance for BindL4Backends.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::BindL4BackendsRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::BindL4BackendsResponse`
        def BindL4Backends(request)
          body = send_request('BindL4Backends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindL4BackendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定黑石物理服务器或半托管服务器到七层转发路径。

        # @param request: Request instance for BindL7Backends.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::BindL7BackendsRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::BindL7BackendsResponse`
        def BindL7Backends(request)
          body = send_request('BindL7Backends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindL7BackendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定黑石服务器七层监听器到流量镜像实例。

        # @param request: Request instance for BindTrafficMirrorListeners.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::BindTrafficMirrorListenersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::BindTrafficMirrorListenersResponse`
        def BindTrafficMirrorListeners(request)
          body = send_request('BindTrafficMirrorListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindTrafficMirrorListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 绑定黑石物理服务器成为流量镜像接收机。

        # @param request: Request instance for BindTrafficMirrorReceivers.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::BindTrafficMirrorReceiversRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::BindTrafficMirrorReceiversResponse`
        def BindTrafficMirrorReceivers(request)
          body = send_request('BindTrafficMirrorReceivers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindTrafficMirrorReceiversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石四层负载均衡监听器功能。黑石负载均衡四层监听器提供了转发用户请求的具体规则，包括端口、协议、会话保持、健康检查等参数。

        # @param request: Request instance for CreateL4Listeners.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::CreateL4ListenersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::CreateL4ListenersResponse`
        def CreateL4Listeners(request)
          body = send_request('CreateL4Listeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL4ListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石负载均衡七层监听器功能。负载均衡七层监听器提供了转发用户请求的具体规则，包括端口、协议等参数。

        # @param request: Request instance for CreateL7Listeners.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::CreateL7ListenersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::CreateL7ListenersResponse`
        def CreateL7Listeners(request)
          body = send_request('CreateL7Listeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL7ListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石负载均衡七层转发规则。

        # @param request: Request instance for CreateL7Rules.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::CreateL7RulesRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::CreateL7RulesResponse`
        def CreateL7Rules(request)
          body = send_request('CreateL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL7RulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用来创建黑石负载均衡。为了使用黑石负载均衡服务，您必须要创建一个或者多个负载均衡实例。通过成功调用该接口，会返回负载均衡实例的唯一ID。用户可以购买的黑石负载均衡实例类型分为：公网类型、内网类型。公网类型负载均衡对应一个BGP VIP，可用于快速访问公网负载均衡绑定的物理服务器；内网类型负载均衡对应一个腾讯云内部的VIP，不能通过Internet访问，可快速访问内网负载均衡绑定的物理服务器。

        # @param request: Request instance for CreateLoadBalancers.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::CreateLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::CreateLoadBalancersResponse`
        def CreateLoadBalancers(request)
          body = send_request('CreateLoadBalancers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateLoadBalancersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建流量镜像实例。

        # @param request: Request instance for CreateTrafficMirror.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::CreateTrafficMirrorRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::CreateTrafficMirrorResponse`
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

        # 删除黑石负载均衡七层转发域名。

        # @param request: Request instance for DeleteL7Domains.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DeleteL7DomainsRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DeleteL7DomainsResponse`
        def DeleteL7Domains(request)
          body = send_request('DeleteL7Domains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL7DomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除黑石负载均衡七层转发规则。

        # @param request: Request instance for DeleteL7Rules.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DeleteL7RulesRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DeleteL7RulesResponse`
        def DeleteL7Rules(request)
          body = send_request('DeleteL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL7RulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除黑石负载均衡监听器。

        # @param request: Request instance for DeleteListeners.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DeleteListenersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DeleteListenersResponse`
        def DeleteListeners(request)
          body = send_request('DeleteListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除用户指定的黑石负载均衡实例。

        # @param request: Request instance for DeleteLoadBalancer.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DeleteLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DeleteLoadBalancerResponse`
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

        # 删除已创建的黑石流量镜像实例，删除过程是异步执行的，因此需要使用查询任务接口获取删除的结果。

        # @param request: Request instance for DeleteTrafficMirror.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DeleteTrafficMirrorRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DeleteTrafficMirrorResponse`
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

        # 获取黑石负载均衡证书详情。

        # @param request: Request instance for DescribeCertDetail.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeCertDetailRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeCertDetailResponse`
        def DescribeCertDetail(request)
          body = send_request('DescribeCertDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询黑石物理机和虚机以及托管服务器绑定的黑石负载均衡详情。

        # @param request: Request instance for DescribeDevicesBindInfo.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeDevicesBindInfoRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeDevicesBindInfoResponse`
        def DescribeDevicesBindInfo(request)
          body = send_request('DescribeDevicesBindInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDevicesBindInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取黑石负载均衡四层监听器绑定的主机列表。

        # @param request: Request instance for DescribeL4Backends.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeL4BackendsRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeL4BackendsResponse`
        def DescribeL4Backends(request)
          body = send_request('DescribeL4Backends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL4BackendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查找绑定了某主机或者指定监听器名称的黑石负载均衡四层监听器。

        # @param request: Request instance for DescribeL4ListenerInfo.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeL4ListenerInfoRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeL4ListenerInfoResponse`
        def DescribeL4ListenerInfo(request)
          body = send_request('DescribeL4ListenerInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL4ListenerInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取黑石负载均衡四层监听器。

        # @param request: Request instance for DescribeL4Listeners.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeL4ListenersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeL4ListenersResponse`
        def DescribeL4Listeners(request)
          body = send_request('DescribeL4Listeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL4ListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取黑石负载均衡七层监听器绑定的主机列表

        # @param request: Request instance for DescribeL7Backends.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeL7BackendsRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeL7BackendsResponse`
        def DescribeL7Backends(request)
          body = send_request('DescribeL7Backends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL7BackendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查找绑定了某主机或者有某转发域名黑石负载均衡七层监听器。

        # @param request: Request instance for DescribeL7ListenerInfo.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeL7ListenerInfoRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeL7ListenerInfoResponse`
        def DescribeL7ListenerInfo(request)
          body = send_request('DescribeL7ListenerInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL7ListenerInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取黑石负载均衡七层监听器列表信息。

        # @param request: Request instance for DescribeL7Listeners.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeL7ListenersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeL7ListenersResponse`
        def DescribeL7Listeners(request)
          body = send_request('DescribeL7Listeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL7ListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定VPC下的7层监听器(支持模糊匹配)。

        # @param request: Request instance for DescribeL7ListenersEx.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeL7ListenersExRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeL7ListenersExResponse`
        def DescribeL7ListenersEx(request)
          body = send_request('DescribeL7ListenersEx', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL7ListenersExResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取黑石负载均衡七层转发规则。

        # @param request: Request instance for DescribeL7Rules.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeL7RulesRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeL7RulesResponse`
        def DescribeL7Rules(request)
          body = send_request('DescribeL7Rules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL7RulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取黑石负载均衡端口相关信息。

        # @param request: Request instance for DescribeLoadBalancerPortInfo.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeLoadBalancerPortInfoRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeLoadBalancerPortInfoResponse`
        def DescribeLoadBalancerPortInfo(request)
          body = send_request('DescribeLoadBalancerPortInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancerPortInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询负载均衡实例异步任务的执行情况。

        # @param request: Request instance for DescribeLoadBalancerTaskResult.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeLoadBalancerTaskResultRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeLoadBalancerTaskResultResponse`
        def DescribeLoadBalancerTaskResult(request)
          body = send_request('DescribeLoadBalancerTaskResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancerTaskResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取黑石负载均衡实例列表

        # @param request: Request instance for DescribeLoadBalancers.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeLoadBalancersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeLoadBalancersResponse`
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

        # 获取流量镜像的监听器列表信息。

        # @param request: Request instance for DescribeTrafficMirrorListeners.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeTrafficMirrorListenersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeTrafficMirrorListenersResponse`
        def DescribeTrafficMirrorListeners(request)
          body = send_request('DescribeTrafficMirrorListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrafficMirrorListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取流量镜像接收机健康状态。

        # @param request: Request instance for DescribeTrafficMirrorReceiverHealthStatus.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeTrafficMirrorReceiverHealthStatusRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeTrafficMirrorReceiverHealthStatusResponse`
        def DescribeTrafficMirrorReceiverHealthStatus(request)
          body = send_request('DescribeTrafficMirrorReceiverHealthStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrafficMirrorReceiverHealthStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取指定流量镜像实例的接收机信息。

        # @param request: Request instance for DescribeTrafficMirrorReceivers.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeTrafficMirrorReceiversRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeTrafficMirrorReceiversResponse`
        def DescribeTrafficMirrorReceivers(request)
          body = send_request('DescribeTrafficMirrorReceivers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTrafficMirrorReceiversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取流量镜像实例的列表信息。

        # @param request: Request instance for DescribeTrafficMirrors.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::DescribeTrafficMirrorsRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::DescribeTrafficMirrorsResponse`
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

        # 修改黑石负载均衡四层监听器后端实例端口。

        # @param request: Request instance for ModifyL4BackendPort.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyL4BackendPortRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyL4BackendPortResponse`
        def ModifyL4BackendPort(request)
          body = send_request('ModifyL4BackendPort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4BackendPortResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑石负载均衡四层监听器后端探测端口。

        # @param request: Request instance for ModifyL4BackendProbePort.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyL4BackendProbePortRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyL4BackendProbePortResponse`
        def ModifyL4BackendProbePort(request)
          body = send_request('ModifyL4BackendProbePort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4BackendProbePortResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑石负载均衡四层监听器后端实例权重功能。

        # @param request: Request instance for ModifyL4BackendWeight.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyL4BackendWeightRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyL4BackendWeightResponse`
        def ModifyL4BackendWeight(request)
          body = send_request('ModifyL4BackendWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4BackendWeightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑石负载均衡四层监听器。

        # @param request: Request instance for ModifyL4Listener.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyL4ListenerRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyL4ListenerResponse`
        def ModifyL4Listener(request)
          body = send_request('ModifyL4Listener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4ListenerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑石负载均衡七层转发路径后端实例端口。

        # @param request: Request instance for ModifyL7BackendPort.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyL7BackendPortRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyL7BackendPortResponse`
        def ModifyL7BackendPort(request)
          body = send_request('ModifyL7BackendPort', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL7BackendPortResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑石负载均衡七层转发路径后端实例权重。

        # @param request: Request instance for ModifyL7BackendWeight.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyL7BackendWeightRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyL7BackendWeightResponse`
        def ModifyL7BackendWeight(request)
          body = send_request('ModifyL7BackendWeight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL7BackendWeightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑石负载均衡七层监听器。

        # @param request: Request instance for ModifyL7Listener.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyL7ListenerRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyL7ListenerResponse`
        def ModifyL7Listener(request)
          body = send_request('ModifyL7Listener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL7ListenerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改黑石负载均衡七层转发路径。

        # @param request: Request instance for ModifyL7Locations.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyL7LocationsRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyL7LocationsResponse`
        def ModifyL7Locations(request)
          body = send_request('ModifyL7Locations', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL7LocationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据输入参数来修改黑石负载均衡实例的基本配置信息。可能的信息包括负载均衡实例的名称，域名前缀。

        # @param request: Request instance for ModifyLoadBalancer.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyLoadBalancerResponse`
        def ModifyLoadBalancer(request)
          body = send_request('ModifyLoadBalancer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更改黑石负载均衡的计费方式

        # @param request: Request instance for ModifyLoadBalancerChargeMode.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ModifyLoadBalancerChargeModeRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ModifyLoadBalancerChargeModeResponse`
        def ModifyLoadBalancerChargeMode(request)
          body = send_request('ModifyLoadBalancerChargeMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyLoadBalancerChargeModeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新黑石负载均衡证书。

        # @param request: Request instance for ReplaceCert.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::ReplaceCertRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::ReplaceCertResponse`
        def ReplaceCert(request)
          body = send_request('ReplaceCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceCertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置流量镜像的别名。

        # @param request: Request instance for SetTrafficMirrorAlias.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::SetTrafficMirrorAliasRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::SetTrafficMirrorAliasResponse`
        def SetTrafficMirrorAlias(request)
          body = send_request('SetTrafficMirrorAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTrafficMirrorAliasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置流量镜像的健康检查参数。

        # @param request: Request instance for SetTrafficMirrorHealthSwitch.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::SetTrafficMirrorHealthSwitchRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::SetTrafficMirrorHealthSwitchResponse`
        def SetTrafficMirrorHealthSwitch(request)
          body = send_request('SetTrafficMirrorHealthSwitch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTrafficMirrorHealthSwitchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑黑石负载均衡四层监听器物理服务器。

        # @param request: Request instance for UnbindL4Backends.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::UnbindL4BackendsRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::UnbindL4BackendsResponse`
        def UnbindL4Backends(request)
          body = send_request('UnbindL4Backends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindL4BackendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑黑石物理服务器或者托管服务器到七层转发路径功能。

        # @param request: Request instance for UnbindL7Backends.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::UnbindL7BackendsRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::UnbindL7BackendsResponse`
        def UnbindL7Backends(request)
          body = send_request('UnbindL7Backends', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindL7BackendsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解绑流量镜像监听器。

        # @param request: Request instance for UnbindTrafficMirrorListeners.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::UnbindTrafficMirrorListenersRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::UnbindTrafficMirrorListenersResponse`
        def UnbindTrafficMirrorListeners(request)
          body = send_request('UnbindTrafficMirrorListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindTrafficMirrorListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从流量镜像实例上解绑流量镜像接收机。

        # @param request: Request instance for UnbindTrafficMirrorReceivers.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::UnbindTrafficMirrorReceiversRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::UnbindTrafficMirrorReceiversResponse`
        def UnbindTrafficMirrorReceivers(request)
          body = send_request('UnbindTrafficMirrorReceivers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindTrafficMirrorReceiversResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建黑石负载均衡证书。

        # @param request: Request instance for UploadCert.
        # @type request: :class:`Tencentcloud::bmlb::V20180625::UploadCertRequest`
        # @rtype: :class:`Tencentcloud::bmlb::V20180625::UploadCertResponse`
        def UploadCert(request)
          body = send_request('UploadCert', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadCertResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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