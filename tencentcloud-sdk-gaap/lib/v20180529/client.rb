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
  module Gaap
    module V20180529
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-05-29'
            api_endpoint = 'gaap.tencentcloudapi.com'
            sdk_version = 'GAAP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 添加源站(服务器)信息，支持IP或域名

        # @param request: Request instance for AddRealServers.
        # @type request: :class:`Tencentcloud::gaap::V20180529::AddRealServersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::AddRealServersResponse`
        def AddRealServers(request)
          body = send_request('AddRealServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddRealServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（BanAndRecoverProxy）用于联通封禁解封GAAP跨境通道实例，支持按照客户UIN维度下发请求。被封禁的实例带宽上限将会被限制到0Mbps，无法正常处理客户端和源站之间的请求。

        # @param request: Request instance for BanAndRecoverProxy.
        # @type request: :class:`Tencentcloud::gaap::V20180529::BanAndRecoverProxyRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::BanAndRecoverProxyResponse`
        def BanAndRecoverProxy(request)
          body = send_request('BanAndRecoverProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BanAndRecoverProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（BindListenerRealServers）用于TCP/UDP监听器绑定解绑源站。
        # 注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。例如：原来绑定的源站为A，B，C，本次调用的选择绑定的源站为C，D，E，那么调用后所绑定的源站为C，D，E。

        # @param request: Request instance for BindListenerRealServers.
        # @type request: :class:`Tencentcloud::gaap::V20180529::BindListenerRealServersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::BindListenerRealServersResponse`
        def BindListenerRealServers(request)
          body = send_request('BindListenerRealServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindListenerRealServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于7层监听器的转发规则绑定源站。注意：本接口会解绑之前绑定的源站，绑定本次调用所选择的源站。

        # @param request: Request instance for BindRuleRealServers.
        # @type request: :class:`Tencentcloud::gaap::V20180529::BindRuleRealServersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::BindRuleRealServersResponse`
        def BindRuleRealServers(request)
          body = send_request('BindRuleRealServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindRuleRealServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口(CheckProxyCreate)用于查询能否创建指定配置的加速通道。

        # @param request: Request instance for CheckProxyCreate.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CheckProxyCreateRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CheckProxyCreateResponse`
        def CheckProxyCreate(request)
          body = send_request('CheckProxyCreate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckProxyCreateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CloseProxies）用于关闭通道。通道关闭后，不再产生流量，但每天仍然收取通道基础配置费用。

        # @param request: Request instance for CloseProxies.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CloseProxiesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CloseProxiesResponse`
        def CloseProxies(request)
          body = send_request('CloseProxies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseProxiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CloseProxyGroup）用于关闭通道组。通道组关闭后，不再产生流量，但每天仍然收取通道基础配置费用。

        # @param request: Request instance for CloseProxyGroup.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CloseProxyGroupRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CloseProxyGroupResponse`
        def CloseProxyGroup(request)
          body = send_request('CloseProxyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseProxyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭安全策略

        # @param request: Request instance for CloseSecurityPolicy.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CloseSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CloseSecurityPolicyResponse`
        def CloseSecurityPolicy(request)
          body = send_request('CloseSecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseSecurityPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateCertificate）用于创建Gaap相关证书和配置文件，包括基础认证配置文件，客户端CA证书，服务器SSL证书，Gaap SSL证书以及源站CA证书。

        # @param request: Request instance for CreateCertificate.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateCertificateRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateCertificateResponse`
        def CreateCertificate(request)
          body = send_request('CreateCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateCustomHeader）用于创建HTTP/HTTPS监听器的自定义header，客户端请求通过访问该监听器时，会将监听器中配置的header信息发送到源站。

        # @param request: Request instance for CreateCustomHeader.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateCustomHeaderRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateCustomHeaderResponse`
        def CreateCustomHeader(request)
          body = send_request('CreateCustomHeader', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomHeaderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateDomain）用于创建HTTP/HTTPS监听器的访问域名，客户端请求通过访问该域名来请求后端业务。
        # 该接口仅支持version3.0的通道。

        # @param request: Request instance for CreateDomain.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateDomainRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateDomainResponse`
        def CreateDomain(request)
          body = send_request('CreateDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 定制域名指定错误码的错误响应

        # @param request: Request instance for CreateDomainErrorPageInfo.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateDomainErrorPageInfoRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateDomainErrorPageInfoResponse`
        def CreateDomainErrorPageInfo(request)
          body = send_request('CreateDomainErrorPageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDomainErrorPageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateFirstLinkSession）用于创建接入段加速会话，创建有可能成功，也可能失败，需要通过返回码来进行判断。

        # @param request: Request instance for CreateFirstLinkSession.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateFirstLinkSessionRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateFirstLinkSessionResponse`
        def CreateFirstLinkSession(request)
          body = send_request('CreateFirstLinkSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFirstLinkSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用来创建统一域名

        # @param request: Request instance for CreateGlobalDomain.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateGlobalDomainRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateGlobalDomainResponse`
        def CreateGlobalDomain(request)
          body = send_request('CreateGlobalDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGlobalDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建域名解析记录

        # @param request: Request instance for CreateGlobalDomainDns.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateGlobalDomainDnsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateGlobalDomainDnsResponse`
        def CreateGlobalDomainDns(request)
          body = send_request('CreateGlobalDomainDns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGlobalDomainDnsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateHTTPListener）用于在通道实例下创建HTTP协议类型的监听器。

        # @param request: Request instance for CreateHTTPListener.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateHTTPListenerRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateHTTPListenerResponse`
        def CreateHTTPListener(request)
          body = send_request('CreateHTTPListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHTTPListenerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateHTTPSListener）用于在通道实例下创建HTTPS协议类型的监听器。

        # @param request: Request instance for CreateHTTPSListener.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateHTTPSListenerRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateHTTPSListenerResponse`
        def CreateHTTPSListener(request)
          body = send_request('CreateHTTPSListener', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateHTTPSListenerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateProxy）用于创建/复制一个指定配置的加速通道。当复制通道时，需要设置新通道的基本配置参数，并设置ClonedProxyId来指定被复制的通道。

        # @param request: Request instance for CreateProxy.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateProxyRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateProxyResponse`
        def CreateProxy(request)
          body = send_request('CreateProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateProxyGroup）用于创建通道组。

        # @param request: Request instance for CreateProxyGroup.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateProxyGroupRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateProxyGroupResponse`
        def CreateProxyGroup(request)
          body = send_request('CreateProxyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProxyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateProxyGroupDomain）用于创建通道组域名，并开启域名解析。

        # @param request: Request instance for CreateProxyGroupDomain.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateProxyGroupDomainRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateProxyGroupDomainResponse`
        def CreateProxyGroupDomain(request)
          body = send_request('CreateProxyGroupDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProxyGroupDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateRule）用于创建HTTP/HTTPS监听器转发规则。

        # @param request: Request instance for CreateRule.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateRuleRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateRuleResponse`
        def CreateRule(request)
          body = send_request('CreateRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安全策略

        # @param request: Request instance for CreateSecurityPolicy.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateSecurityPolicyResponse`
        def CreateSecurityPolicy(request)
          body = send_request('CreateSecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 添加安全策略规则

        # @param request: Request instance for CreateSecurityRules.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateSecurityRulesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateSecurityRulesResponse`
        def CreateSecurityRules(request)
          body = send_request('CreateSecurityRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateTCPListeners）用于批量创建单通道或者通道组的TCP协议类型的监听器。

        # @param request: Request instance for CreateTCPListeners.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateTCPListenersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateTCPListenersResponse`
        def CreateTCPListeners(request)
          body = send_request('CreateTCPListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTCPListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（CreateUDPListeners）用于批量创建单通道或者通道组的UDP协议类型的监听器。

        # @param request: Request instance for CreateUDPListeners.
        # @type request: :class:`Tencentcloud::gaap::V20180529::CreateUDPListenersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::CreateUDPListenersResponse`
        def CreateUDPListeners(request)
          body = send_request('CreateUDPListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUDPListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteCertificate）用于删除证书。

        # @param request: Request instance for DeleteCertificate.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteCertificateRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteCertificateResponse`
        def DeleteCertificate(request)
          body = send_request('DeleteCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteDomain）仅适用于7层监听器，用于删除该监听器下对应域名及域名下的所有规则，所有已绑定源站的规则将自动解绑。

        # @param request: Request instance for DeleteDomain.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteDomainRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteDomainResponse`
        def DeleteDomain(request)
          body = send_request('DeleteDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除域名的定制错误

        # @param request: Request instance for DeleteDomainErrorPageInfo.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteDomainErrorPageInfoRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteDomainErrorPageInfoResponse`
        def DeleteDomainErrorPageInfo(request)
          body = send_request('DeleteDomainErrorPageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDomainErrorPageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteFirstLinkSession）用于删除接入段加速会话，删除加速会话后会停止加速。

        # @param request: Request instance for DeleteFirstLinkSession.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteFirstLinkSessionRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteFirstLinkSessionResponse`
        def DeleteFirstLinkSession(request)
          body = send_request('DeleteFirstLinkSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFirstLinkSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除统一域名

        # @param request: Request instance for DeleteGlobalDomain.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteGlobalDomainRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteGlobalDomainResponse`
        def DeleteGlobalDomain(request)
          body = send_request('DeleteGlobalDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGlobalDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除域名的某条解析记录

        # @param request: Request instance for DeleteGlobalDomainDns.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteGlobalDomainDnsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteGlobalDomainDnsResponse`
        def DeleteGlobalDomainDns(request)
          body = send_request('DeleteGlobalDomainDns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGlobalDomainDnsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DeleteListeners）用于批量删除通道或通道组的监听器，包括4/7层监听器。

        # @param request: Request instance for DeleteListeners.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteListenersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteListenersResponse`
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

        # 本接口（DeleteProxyGroup）用于删除通道组。

        # @param request: Request instance for DeleteProxyGroup.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteProxyGroupRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteProxyGroupResponse`
        def DeleteProxyGroup(request)
          body = send_request('DeleteProxyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteProxyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DeleteRule）用于删除HTTP/HTTPS监听器的转发规则。

        # @param request: Request instance for DeleteRule.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteRuleRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteRuleResponse`
        def DeleteRule(request)
          body = send_request('DeleteRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除安全策略

        # @param request: Request instance for DeleteSecurityPolicy.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteSecurityPolicyResponse`
        def DeleteSecurityPolicy(request)
          body = send_request('DeleteSecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除安全策略规则

        # @param request: Request instance for DeleteSecurityRules.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DeleteSecurityRulesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DeleteSecurityRulesResponse`
        def DeleteSecurityRules(request)
          body = send_request('DeleteSecurityRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAccessRegions）用于查询加速区域，即客户端接入区域。

        # @param request: Request instance for DescribeAccessRegions.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeAccessRegionsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeAccessRegionsResponse`
        def DescribeAccessRegions(request)
          body = send_request('DescribeAccessRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeAccessRegionsByDestRegion）根据源站区域查询可用的加速区域列表。

        # @param request: Request instance for DescribeAccessRegionsByDestRegion.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeAccessRegionsByDestRegionRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeAccessRegionsByDestRegionResponse`
        def DescribeAccessRegionsByDestRegion(request)
          body = send_request('DescribeAccessRegionsByDestRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccessRegionsByDestRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为了防止在下单、询价、后付费开通等过程中确保来源合法以及订单参数没有被篡改过，各个业务方使用下单、询价等场景需调用计费签名接口获取签名，获取签名的请求需带上签名以验证身份，本接口可以获取计费签名。

        # @param request: Request instance for DescribeAuthSignature.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeAuthSignatureRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeAuthSignatureResponse`
        def DescribeAuthSignature(request)
          body = send_request('DescribeAuthSignature', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAuthSignatureResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeBlackHeader）用于查询禁用的自定义header 名称

        # @param request: Request instance for DescribeBlackHeader.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeBlackHeaderRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeBlackHeaderResponse`
        def DescribeBlackHeader(request)
          body = send_request('DescribeBlackHeader', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBlackHeaderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCertificateDetail）用于查询证书详情，包括证书ID，证书名字，证书类型，证书内容以及密钥等信息。

        # @param request: Request instance for DescribeCertificateDetail.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeCertificateDetailRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeCertificateDetailResponse`
        def DescribeCertificateDetail(request)
          body = send_request('DescribeCertificateDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificateDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCertificates）用来查询可以使用的证书列表。

        # @param request: Request instance for DescribeCertificates.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeCertificatesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeCertificatesResponse`
        def DescribeCertificates(request)
          body = send_request('DescribeCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCountryAreaMapping）用于获取国家地区编码映射表。

        # @param request: Request instance for DescribeCountryAreaMapping.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeCountryAreaMappingRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeCountryAreaMappingResponse`
        def DescribeCountryAreaMapping(request)
          body = send_request('DescribeCountryAreaMapping', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCountryAreaMappingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCrossBorderProxies）用于查询跨境通道实例列表。

        # @param request: Request instance for DescribeCrossBorderProxies.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeCrossBorderProxiesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeCrossBorderProxiesResponse`
        def DescribeCrossBorderProxies(request)
          body = send_request('DescribeCrossBorderProxies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCrossBorderProxiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeCustomHeader）用于自定义header列表

        # @param request: Request instance for DescribeCustomHeader.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeCustomHeaderRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeCustomHeaderResponse`
        def DescribeCustomHeader(request)
          body = send_request('DescribeCustomHeader', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomHeaderResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDestRegions）用于查询源站区域，即源站服务器所在区域。

        # @param request: Request instance for DescribeDestRegions.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeDestRegionsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeDestRegionsResponse`
        def DescribeDestRegions(request)
          body = send_request('DescribeDestRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDestRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询目前定制域名的错误响应

        # @param request: Request instance for DescribeDomainErrorPageInfo.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeDomainErrorPageInfoRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeDomainErrorPageInfoResponse`
        def DescribeDomainErrorPageInfo(request)
          body = send_request('DescribeDomainErrorPageInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainErrorPageInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据定制错误ID查询错误响应

        # @param request: Request instance for DescribeDomainErrorPageInfoByIds.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeDomainErrorPageInfoByIdsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeDomainErrorPageInfoByIdsResponse`
        def DescribeDomainErrorPageInfoByIds(request)
          body = send_request('DescribeDomainErrorPageInfoByIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDomainErrorPageInfoByIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeFirstLinkSession）用于查询接入段加速会话状态，包括会话状态，生效时长，加速套餐等信息。

        # @param request: Request instance for DescribeFirstLinkSession.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeFirstLinkSessionRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeFirstLinkSessionResponse`
        def DescribeFirstLinkSession(request)
          body = send_request('DescribeFirstLinkSession', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFirstLinkSessionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询域名解析列表

        # @param request: Request instance for DescribeGlobalDomainDns.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeGlobalDomainDnsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeGlobalDomainDnsResponse`
        def DescribeGlobalDomainDns(request)
          body = send_request('DescribeGlobalDomainDns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGlobalDomainDnsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询域名列表

        # @param request: Request instance for DescribeGlobalDomains.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeGlobalDomainsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeGlobalDomainsResponse`
        def DescribeGlobalDomains(request)
          body = send_request('DescribeGlobalDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGlobalDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为内部接口，用于查询可以获取统计数据的通道组和通道信息

        # @param request: Request instance for DescribeGroupAndStatisticsProxy.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeGroupAndStatisticsProxyRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeGroupAndStatisticsProxyResponse`
        def DescribeGroupAndStatisticsProxy(request)
          body = send_request('DescribeGroupAndStatisticsProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupAndStatisticsProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeGroupDomainConfig）用于获取通道组域名解析配置详情。

        # @param request: Request instance for DescribeGroupDomainConfig.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeGroupDomainConfigRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeGroupDomainConfigResponse`
        def DescribeGroupDomainConfig(request)
          body = send_request('DescribeGroupDomainConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGroupDomainConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeHTTPListeners）用来查询HTTP监听器信息。

        # @param request: Request instance for DescribeHTTPListeners.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeHTTPListenersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeHTTPListenersResponse`
        def DescribeHTTPListeners(request)
          body = send_request('DescribeHTTPListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHTTPListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeHTTPSListeners）用来查询HTTPS监听器信息。

        # @param request: Request instance for DescribeHTTPSListeners.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeHTTPSListenersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeHTTPSListenersResponse`
        def DescribeHTTPSListeners(request)
          body = send_request('DescribeHTTPSListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHTTPSListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeListenerRealServers）用于查询TCP/UDP监听器源站列表，包括该监听器已经绑定的源站列表以及可以绑定的源站列表。

        # @param request: Request instance for DescribeListenerRealServers.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeListenerRealServersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeListenerRealServersResponse`
        def DescribeListenerRealServers(request)
          body = send_request('DescribeListenerRealServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenerRealServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发数据。支持300秒, 3600秒和86400秒的细粒度，取值为细粒度范围内最大值。

        # @param request: Request instance for DescribeListenerStatistics.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeListenerStatisticsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeListenerStatisticsResponse`
        def DescribeListenerStatistics(request)
          body = send_request('DescribeListenerStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeListenerStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProxies）用于查询通道实例列表。

        # @param request: Request instance for DescribeProxies.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeProxiesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeProxiesResponse`
        def DescribeProxies(request)
          body = send_request('DescribeProxies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProxiesStatus）用于查询通道状态列表。

        # @param request: Request instance for DescribeProxiesStatus.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeProxiesStatusRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeProxiesStatusResponse`
        def DescribeProxiesStatus(request)
          body = send_request('DescribeProxiesStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxiesStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口为内部接口，用于查询可以获取统计数据的通道和监听器信息

        # @param request: Request instance for DescribeProxyAndStatisticsListeners.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeProxyAndStatisticsListenersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeProxyAndStatisticsListenersResponse`
        def DescribeProxyAndStatisticsListeners(request)
          body = send_request('DescribeProxyAndStatisticsListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyAndStatisticsListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProxyDetail）用于查询通道详情。

        # @param request: Request instance for DescribeProxyDetail.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeProxyDetailRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeProxyDetailResponse`
        def DescribeProxyDetail(request)
          body = send_request('DescribeProxyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProxyGroupDetails）用于查询通道组详情。

        # @param request: Request instance for DescribeProxyGroupDetails.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeProxyGroupDetailsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeProxyGroupDetailsResponse`
        def DescribeProxyGroupDetails(request)
          body = send_request('DescribeProxyGroupDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyGroupDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeProxyGroupList）用于拉取通道组列表及各通道组基本信息。

        # @param request: Request instance for DescribeProxyGroupList.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeProxyGroupListRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeProxyGroupListResponse`
        def DescribeProxyGroupList(request)
          body = send_request('DescribeProxyGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发数据。支持300, 3600和86400的细粒度，取值为细粒度范围内最大值。

        # @param request: Request instance for DescribeProxyGroupStatistics.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeProxyGroupStatisticsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeProxyGroupStatisticsResponse`
        def DescribeProxyGroupStatistics(request)
          body = send_request('DescribeProxyGroupStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyGroupStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于查询监听器统计数据，包括出入带宽，出入包量，并发，丢包和时延数据。支持300, 3600和86400的细粒度，取值为细粒度范围内最大值。

        # @param request: Request instance for DescribeProxyStatistics.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeProxyStatisticsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeProxyStatisticsResponse`
        def DescribeProxyStatistics(request)
          body = send_request('DescribeProxyStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProxyStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeRealServerStatistics）用于查询源站健康检查结果的统计数据。源站状态展示位为1：正常或者0：异常。查询的源站需要在监听器或者规则上进行了绑定，查询时需指定绑定的监听器或者规则ID。该接口支持1分钟细粒度的源站状态统计数据展示。

        # @param request: Request instance for DescribeRealServerStatistics.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeRealServerStatisticsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeRealServerStatisticsResponse`
        def DescribeRealServerStatistics(request)
          body = send_request('DescribeRealServerStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRealServerStatisticsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRealServers）用于查询源站信息，可以根据项目名查询所有的源站信息，此外支持指定IP或者域名的源站模糊查询。

        # @param request: Request instance for DescribeRealServers.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeRealServersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeRealServersResponse`
        def DescribeRealServers(request)
          body = send_request('DescribeRealServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRealServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRealServersStatus）用于查询源站是否已被规则或者监听器绑定

        # @param request: Request instance for DescribeRealServersStatus.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeRealServersStatusRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeRealServersStatusResponse`
        def DescribeRealServersStatus(request)
          body = send_request('DescribeRealServersStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRealServersStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeRegionAndPrice）用于获取源站区域和带宽梯度价格

        # @param request: Request instance for DescribeRegionAndPrice.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeRegionAndPriceRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeRegionAndPriceResponse`
        def DescribeRegionAndPrice(request)
          body = send_request('DescribeRegionAndPrice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRegionAndPriceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeResourcesByTag）用于根据标签来查询对应的资源信息，包括通道，通道组和源站。

        # @param request: Request instance for DescribeResourcesByTag.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeResourcesByTagRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeResourcesByTagResponse`
        def DescribeResourcesByTag(request)
          body = send_request('DescribeResourcesByTag', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeResourcesByTagResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRuleRealServers）用于查询转发规则相关的源站信息， 包括该规则可绑定的源站信息和已绑定的源站信息。

        # @param request: Request instance for DescribeRuleRealServers.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeRuleRealServersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeRuleRealServersResponse`
        def DescribeRuleRealServers(request)
          body = send_request('DescribeRuleRealServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRuleRealServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRules）用于查询监听器下的所有规则信息，包括规则域名，路径以及该规则下所绑定的源站列表。当通道版本为3.0时，该接口会返回该域名对应的高级认证配置信息。

        # @param request: Request instance for DescribeRules.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeRulesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeRulesResponse`
        def DescribeRules(request)
          body = send_request('DescribeRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeRulesByRuleIds）用于根据规则ID拉取规则信息列表。支持一个或者多个规则信息的拉取。一次最多支持10个规则信息的拉取。

        # @param request: Request instance for DescribeRulesByRuleIds.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeRulesByRuleIdsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeRulesByRuleIdsResponse`
        def DescribeRulesByRuleIds(request)
          body = send_request('DescribeRulesByRuleIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRulesByRuleIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取安全策略详情

        # @param request: Request instance for DescribeSecurityPolicyDetail.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeSecurityPolicyDetailRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeSecurityPolicyDetailResponse`
        def DescribeSecurityPolicyDetail(request)
          body = send_request('DescribeSecurityPolicyDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPolicyDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeSecurityRules）用于根据安全规则ID查询安全规则详情列表。支持一个或多个安全规则的查询。一次最多支持20个安全规则的查询。

        # @param request: Request instance for DescribeSecurityRules.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeSecurityRulesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeSecurityRulesResponse`
        def DescribeSecurityRules(request)
          body = send_request('DescribeSecurityRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（DescribeTCPListeners）用于查询单通道或者通道组下的TCP监听器信息。

        # @param request: Request instance for DescribeTCPListeners.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeTCPListenersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeTCPListenersResponse`
        def DescribeTCPListeners(request)
          body = send_request('DescribeTCPListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTCPListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询异步任务执行状态

        # @param request: Request instance for DescribeTaskStatus.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeTaskStatusRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeTaskStatusResponse`
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

        # 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息

        # @param request: Request instance for DescribeUDPListeners.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DescribeUDPListenersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DescribeUDPListenersResponse`
        def DescribeUDPListeners(request)
          body = send_request('DescribeUDPListeners', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUDPListenersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DestroyProxies）用于销毁。通道销毁后，不再产生任何费用。

        # @param request: Request instance for DestroyProxies.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DestroyProxiesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DestroyProxiesResponse`
        def DestroyProxies(request)
          body = send_request('DestroyProxies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyProxiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 暂停域名解析

        # @param request: Request instance for DisableGlobalDomain.
        # @type request: :class:`Tencentcloud::gaap::V20180529::DisableGlobalDomainRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::DisableGlobalDomainResponse`
        def DisableGlobalDomain(request)
          body = send_request('DisableGlobalDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableGlobalDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启域名解析

        # @param request: Request instance for EnableGlobalDomain.
        # @type request: :class:`Tencentcloud::gaap::V20180529::EnableGlobalDomainRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::EnableGlobalDomainResponse`
        def EnableGlobalDomain(request)
          body = send_request('EnableGlobalDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableGlobalDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（InquiryPriceCreateProxy）用于创建加速通道询价。

        # @param request: Request instance for InquiryPriceCreateProxy.
        # @type request: :class:`Tencentcloud::gaap::V20180529::InquiryPriceCreateProxyRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::InquiryPriceCreateProxyResponse`
        def InquiryPriceCreateProxy(request)
          body = send_request('InquiryPriceCreateProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InquiryPriceCreateProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyCertificate）用于修改监听器下的域名对应的证书。该接口仅适用于version3.0的通道。

        # @param request: Request instance for ModifyCertificate.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyCertificateRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyCertificateResponse`
        def ModifyCertificate(request)
          body = send_request('ModifyCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyCertificateAttributes）用于修改证书，包括证书名字以及证书内容。

        # @param request: Request instance for ModifyCertificateAttributes.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyCertificateAttributesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyCertificateAttributesResponse`
        def ModifyCertificateAttributes(request)
          body = send_request('ModifyCertificateAttributes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCertificateAttributesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyDomain）用于监听器下的域名。当通道版本为3.0时，支持对该域名所对应的证书修改。

        # @param request: Request instance for ModifyDomain.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyDomainRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyDomainResponse`
        def ModifyDomain(request)
          body = send_request('ModifyDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改域名属性

        # @param request: Request instance for ModifyGlobalDomainAttribute.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyGlobalDomainAttributeRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyGlobalDomainAttributeResponse`
        def ModifyGlobalDomainAttribute(request)
          body = send_request('ModifyGlobalDomainAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGlobalDomainAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改域名解析记录

        # @param request: Request instance for ModifyGlobalDomainDns.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyGlobalDomainDnsRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyGlobalDomainDnsResponse`
        def ModifyGlobalDomainDns(request)
          body = send_request('ModifyGlobalDomainDns', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGlobalDomainDnsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyGroupDomainConfig）用于配置通道组就近接入域名。

        # @param request: Request instance for ModifyGroupDomainConfig.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyGroupDomainConfigRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyGroupDomainConfigResponse`
        def ModifyGroupDomainConfig(request)
          body = send_request('ModifyGroupDomainConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGroupDomainConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（ModifyHTTPListenerAttribute）用于修改通道的HTTP监听器配置信息，目前仅支持修改监听器的名称。
        # 注意：通道组通道暂时不支持HTTP/HTTPS监听器。

        # @param request: Request instance for ModifyHTTPListenerAttribute.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyHTTPListenerAttributeRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyHTTPListenerAttributeResponse`
        def ModifyHTTPListenerAttribute(request)
          body = send_request('ModifyHTTPListenerAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHTTPListenerAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（ModifyHTTPSListenerAttribute）用于修改HTTPS监听器配置，当前不支持通道组和v1版本通道。

        # @param request: Request instance for ModifyHTTPSListenerAttribute.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyHTTPSListenerAttributeRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyHTTPSListenerAttributeResponse`
        def ModifyHTTPSListenerAttribute(request)
          body = send_request('ModifyHTTPSListenerAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHTTPSListenerAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyProxiesAttribute）用于修改实例的属性（目前只支持修改通道的名称）。

        # @param request: Request instance for ModifyProxiesAttribute.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyProxiesAttributeRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyProxiesAttributeResponse`
        def ModifyProxiesAttribute(request)
          body = send_request('ModifyProxiesAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProxiesAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyProxiesProject）用于修改通道所属项目。

        # @param request: Request instance for ModifyProxiesProject.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyProxiesProjectRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyProxiesProjectResponse`
        def ModifyProxiesProject(request)
          body = send_request('ModifyProxiesProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProxiesProjectResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyProxyConfiguration）用于修改通道的配置。根据当前业务的容量需求，扩容或缩容相关通道的配置。仅支持Scalarable为1的通道,Scalarable可通过接口DescribeProxies获取。

        # @param request: Request instance for ModifyProxyConfiguration.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyProxyConfigurationRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyProxyConfigurationResponse`
        def ModifyProxyConfiguration(request)
          body = send_request('ModifyProxyConfiguration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProxyConfigurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyProxyGroupAttribute）用于修改通道组属性，目前仅支持修改通道组名称。

        # @param request: Request instance for ModifyProxyGroupAttribute.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyProxyGroupAttributeRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyProxyGroupAttributeResponse`
        def ModifyProxyGroupAttribute(request)
          body = send_request('ModifyProxyGroupAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyProxyGroupAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyRealServerName）用于修改源站的名称

        # @param request: Request instance for ModifyRealServerName.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyRealServerNameRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyRealServerNameResponse`
        def ModifyRealServerName(request)
          body = send_request('ModifyRealServerName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRealServerNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyRuleAttribute）用于修改转发规则的信息，包括健康检查的配置以及转发策略。

        # @param request: Request instance for ModifyRuleAttribute.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyRuleAttributeRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyRuleAttributeResponse`
        def ModifyRuleAttribute(request)
          body = send_request('ModifyRuleAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安全策略规则名

        # @param request: Request instance for ModifySecurityRule.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifySecurityRuleRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifySecurityRuleResponse`
        def ModifySecurityRule(request)
          body = send_request('ModifySecurityRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyTCPListenerAttribute）用于修改通道实例下TCP监听器配置，包括健康检查的配置，调度策略。

        # @param request: Request instance for ModifyTCPListenerAttribute.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyTCPListenerAttributeRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyTCPListenerAttributeResponse`
        def ModifyTCPListenerAttribute(request)
          body = send_request('ModifyTCPListenerAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyTCPListenerAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyUDPListenerAttribute）用于修改通道实例下UDP监听器配置，包括监听器名称和调度策略的修改。

        # @param request: Request instance for ModifyUDPListenerAttribute.
        # @type request: :class:`Tencentcloud::gaap::V20180529::ModifyUDPListenerAttributeRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::ModifyUDPListenerAttributeResponse`
        def ModifyUDPListenerAttribute(request)
          body = send_request('ModifyUDPListenerAttribute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUDPListenerAttributeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（OpenProxies）用于开启一条或者多条通道。

        # @param request: Request instance for OpenProxies.
        # @type request: :class:`Tencentcloud::gaap::V20180529::OpenProxiesRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::OpenProxiesResponse`
        def OpenProxies(request)
          body = send_request('OpenProxies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenProxiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口（OpenProxyGroup）用于开启一条通道组中的所有通道

        # @param request: Request instance for OpenProxyGroup.
        # @type request: :class:`Tencentcloud::gaap::V20180529::OpenProxyGroupRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::OpenProxyGroupResponse`
        def OpenProxyGroup(request)
          body = send_request('OpenProxyGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenProxyGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启安全策略

        # @param request: Request instance for OpenSecurityPolicy.
        # @type request: :class:`Tencentcloud::gaap::V20180529::OpenSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::OpenSecurityPolicyResponse`
        def OpenSecurityPolicy(request)
          body = send_request('OpenSecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenSecurityPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除已添加的源站(服务器)IP或域名

        # @param request: Request instance for RemoveRealServers.
        # @type request: :class:`Tencentcloud::gaap::V20180529::RemoveRealServersRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::RemoveRealServersResponse`
        def RemoveRealServers(request)
          body = send_request('RemoveRealServers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveRealServersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（SetAuthentication）用于通道的高级认证配置，包括认证方式选择，以及各种认证方式对应的证书选择。仅支持Version3.0的通道。

        # @param request: Request instance for SetAuthentication.
        # @type request: :class:`Tencentcloud::gaap::V20180529::SetAuthenticationRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::SetAuthenticationResponse`
        def SetAuthentication(request)
          body = send_request('SetAuthentication', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetAuthenticationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 设置监听器TLS配置

        # @param request: Request instance for SetTlsVersion.
        # @type request: :class:`Tencentcloud::gaap::V20180529::SetTlsVersionRequest`
        # @rtype: :class:`Tencentcloud::gaap::V20180529::SetTlsVersionResponse`
        def SetTlsVersion(request)
          body = send_request('SetTlsVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetTlsVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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