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
  module Teo
    module V20220901
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-09-01'
            api_endpoint = 'teo.tencentcloudapi.com'
            sdk_version = 'TEO_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 操作安全策略模板，支持将域名绑定或换绑到指定的策略模板，或者从指定的策略模板解绑。

        # @param request: Request instance for BindSecurityTemplateToEntity.
        # @type request: :class:`Tencentcloud::teo::V20220901::BindSecurityTemplateToEntityRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::BindSecurityTemplateToEntityResponse`
        def BindSecurityTemplateToEntity(request)
          body = send_request('BindSecurityTemplateToEntity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindSecurityTemplateToEntityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于加速域名绑定或解绑共享 CNAME，该功能白名单内测中。

        # @param request: Request instance for BindSharedCNAME.
        # @type request: :class:`Tencentcloud::teo::V20220901::BindSharedCNAMERequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::BindSharedCNAMEResponse`
        def BindSharedCNAME(request)
          body = send_request('BindSharedCNAME', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindSharedCNAMEResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将未绑定套餐的站点绑定到已有套餐

        # @param request: Request instance for BindZoneToPlan.
        # @type request: :class:`Tencentcloud::teo::V20220901::BindZoneToPlanRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::BindZoneToPlanResponse`
        def BindZoneToPlan(request)
          body = send_request('BindZoneToPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindZoneToPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 校验域名 CNAME 状态

        # @param request: Request instance for CheckCnameStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::CheckCnameStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CheckCnameStatusResponse`
        def CheckCnameStatus(request)
          body = send_request('CheckCnameStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckCnameStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于回源 IP 网段发生变更时，确认已将最新回源 IP 网段更新至源站防火墙。确认已更新至最新的回源 IP 网段后，相关变更通知将会停止推送。

        # @param request: Request instance for ConfirmOriginACLUpdate.
        # @type request: :class:`Tencentcloud::teo::V20220901::ConfirmOriginACLUpdateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ConfirmOriginACLUpdateResponse`
        def ConfirmOriginACLUpdate(request)
          body = send_request('ConfirmOriginACLUpdate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ConfirmOriginACLUpdateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在创建完站点之后，您可以通过本接口创建加速域名。

        # CNAME 模式接入时，若您未完成站点归属权校验，本接口将为您返回域名归属权验证信息，您可以单独对域名进行归属权验证，详情参考 [站点/域名归属权验证](https://cloud.tencent.com/document/product/1552/70789)。

        # @param request: Request instance for CreateAccelerationDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateAccelerationDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateAccelerationDomainResponse`
        def CreateAccelerationDomain(request)
          body = send_request('CreateAccelerationDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAccelerationDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建别称域名。
        # 该功能仅企业版套餐支持，并且该功能当前仍在内测中，如需使用，请[联系我们](https://cloud.tencent.com/online-service?from=connect-us)。

        # @param request: Request instance for CreateAliasDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateAliasDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateAliasDomainResponse`
        def CreateAliasDomain(request)
          body = send_request('CreateAliasDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAliasDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，如需调用请尽快迁移至新版 [创建四层代理实例](https://cloud.tencent.com/document/product/1552/103417) 。

        # @param request: Request instance for CreateApplicationProxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateApplicationProxyResponse`
        def CreateApplicationProxy(request)
          body = send_request('CreateApplicationProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [创建四层代理转发规则
        # ](https://cloud.tencent.com/document/product/1552/103416) 。

        # @param request: Request instance for CreateApplicationProxyRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateApplicationProxyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateApplicationProxyRuleResponse`
        def CreateApplicationProxyRule(request)
          body = send_request('CreateApplicationProxyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationProxyRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 针对指定实时日志投递任务（task-id），在对应的腾讯云 CLS 日志主题中创建投递日志字段对应的键值索引。如果您在腾讯云 CLS 已经创建索引，本接口将采用合并的方式追加索引。

        # @param request: Request instance for CreateCLSIndex.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateCLSIndexRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateCLSIndexResponse`
        def CreateCLSIndex(request)
          body = send_request('CreateCLSIndex', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCLSIndexResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在版本管理模式下，用于创建指定配置组的新版本。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for CreateConfigGroupVersion.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateConfigGroupVersionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateConfigGroupVersionResponse`
        def CreateConfigGroupVersion(request)
          body = send_request('CreateConfigGroupVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConfigGroupVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建内容标识符，可以设置描述、标签等信息，同时需要绑定企业版套餐用于统计计费数据；一个内容标识符只能绑定一个计费套餐，一个计费套餐可以绑定多个内容标识符。该功能仅限白名单开放。

        # @param request: Request instance for CreateContentIdentifier.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateContentIdentifierRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateContentIdentifierResponse`
        def CreateContentIdentifier(request)
          body = send_request('CreateContentIdentifier', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateContentIdentifierResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义错误页面。

        # @param request: Request instance for CreateCustomizeErrorPage.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateCustomizeErrorPageRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateCustomizeErrorPageResponse`
        def CreateCustomizeErrorPage(request)
          body = send_request('CreateCustomizeErrorPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCustomizeErrorPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在创建完站点后，并且站点为 NS 模式接入时，您可以通过本接口创建 DNS 记录。

        # @param request: Request instance for CreateDnsRecord.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateDnsRecordRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateDnsRecordResponse`
        def CreateDnsRecord(request)
          body = send_request('CreateDnsRecord', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDnsRecordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建并部署边缘函数至 EdgeOne 的边缘节点。

        # @param request: Request instance for CreateFunction.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateFunctionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateFunctionResponse`
        def CreateFunction(request)
          body = send_request('CreateFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFunctionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建边缘函数的触发规则。

        # @param request: Request instance for CreateFunctionRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateFunctionRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateFunctionRuleResponse`
        def CreateFunctionRule(request)
          body = send_request('CreateFunctionRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateFunctionRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 即时转码已经提供了预置转码模板，满足大部分的需求。如果有个性化的转码需求，可以通过本接口创建自定义的转码模板，最多可创建100个自定义转码模板。
        # 为了确保即时转码效果的一致性，避免因 EO 缓存或 M3U8 分片处理过程中的模板变更导致视频输出异常，模板在创建后不可进行修改。
        # 即时转码详细能力了解：[EdgeOne视频即时处理功能介绍](https://cloud.tencent.com/document/product/1552/111927)。

        # @param request: Request instance for CreateJustInTimeTranscodeTemplate.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateJustInTimeTranscodeTemplateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateJustInTimeTranscodeTemplateResponse`
        def CreateJustInTimeTranscodeTemplate(request)
          body = send_request('CreateJustInTimeTranscodeTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateJustInTimeTranscodeTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建四层代理实例。

        # @param request: Request instance for CreateL4Proxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateL4ProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateL4ProxyResponse`
        def CreateL4Proxy(request)
          body = send_request('CreateL4Proxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL4ProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建四层代理实例规则，支持单条或者批量创建。

        # @param request: Request instance for CreateL4ProxyRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateL4ProxyRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateL4ProxyRulesResponse`
        def CreateL4ProxyRules(request)
          body = send_request('CreateL4ProxyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL4ProxyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于在[规则引擎](https://cloud.tencent.com/document/product/1552/70901)中创建规则，支持批量创建。

        # @param request: Request instance for CreateL7AccRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateL7AccRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateL7AccRulesResponse`
        def CreateL7AccRules(request)
          body = send_request('CreateL7AccRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateL7AccRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建负载均衡实例。详情请参考 [快速创建负载均衡实例](https://cloud.tencent.com/document/product/1552/104223)。负载均衡功能内测中，如您需要使用请 [联系我们](https://cloud.tencent.com/online-service)。

        # @param request: Request instance for CreateLoadBalancer.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateLoadBalancerResponse`
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

        # 通过本接口创建多通道安全加速网关，包括云上网关（腾讯云创建和管理的网关）和自有网关（用户部署的私有网关），需要通过接口 DescribeMultiPathGateway，查询状态为 online 即创建成功。

        # @param request: Request instance for CreateMultiPathGateway.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateMultiPathGatewayRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateMultiPathGatewayResponse`
        def CreateMultiPathGateway(request)
          body = send_request('CreateMultiPathGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMultiPathGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口创建接入多通道安全加速网关的线路。包括 EdgeOne 四层代理线路、自定义线路。

        # @param request: Request instance for CreateMultiPathGatewayLine.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateMultiPathGatewayLineRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateMultiPathGatewayLineResponse`
        def CreateMultiPathGatewayLine(request)
          body = send_request('CreateMultiPathGatewayLine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMultiPathGatewayLineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口创建接入多通道安全加速网关的密钥，客户基于接入密钥签名接入多通道安全加速网关。每个站点下只有一个密钥，可用于接入该站点下的所有网关，可通过接口 DescribeMultiPathGatewaySecretKey 查询。

        # @param request: Request instance for CreateMultiPathGatewaySecretKey.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateMultiPathGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateMultiPathGatewaySecretKeyResponse`
        def CreateMultiPathGatewaySecretKey(request)
          body = send_request('CreateMultiPathGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateMultiPathGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建源站组，以源站组的方式管理业务源站。此处配置的源站组可于**添加加速域名**和**四层代理**等功能中引用。

        # @param request: Request instance for CreateOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateOriginGroupResponse`
        def CreateOriginGroup(request)
          body = send_request('CreateOriginGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOriginGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 若您需要使用 Edgeone 产品，您需要通过此接口创建计费套餐。
        # > 创建套餐后，您需要通过 [CreateZone](https://cloud.tencent.com/document/product/1552/80719) 完成创建站点，绑定套餐的流程，Edgeone 才能正常提供服务。

        # @param request: Request instance for CreatePlan.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreatePlanRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreatePlanResponse`
        def CreatePlan(request)
          body = send_request('CreatePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 为未购买套餐的站点购买套餐

        # @param request: Request instance for CreatePlanForZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreatePlanForZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreatePlanForZoneResponse`
        def CreatePlanForZone(request)
          body = send_request('CreatePlanForZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePlanForZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建预热任务

        # @param request: Request instance for CreatePrefetchTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreatePrefetchTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreatePrefetchTaskResponse`
        def CreatePrefetchTask(request)
          body = send_request('CreatePrefetchTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePrefetchTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 当源站资源更新，但节点缓存 TTL 未过期时，用户仍会访问到旧的资源，此时可以通过该接口实现节点资源更新。触发更新的方法有以下两种：<li>直接删除：不做任何校验，直接删除节点缓存，用户请求时触发回源拉取；</li><li>标记过期：将节点资源置为过期，用户请求时触发回源校验，即发送带有 If-None-Match 和 If-Modified-Since 头部的 HTTP 条件请求。若源站响应 200，则节点会回源拉取新的资源并更新缓存；若源站响应 304，则节点不会更新缓存；</li>

        # 清除缓存任务详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。

        # @param request: Request instance for CreatePurgeTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreatePurgeTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreatePurgeTaskResponse`
        def CreatePurgeTask(request)
          body = send_request('CreatePurgeTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePurgeTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口创建实时日志投递任务。本接口有如下限制：
        # 同一个实体（七层域名或者四层代理实例）在同种数据投递类型（LogType）和数据投递区域（Area）的组合下，只能被添加到一个实时日志投递任务中。建议先通过 [DescribeRealtimeLogDeliveryTasks](https://cloud.tencent.com/document/product/1552/104110)  接口根据实体查询实时日志投递任务列表，检查实体是否已经被添加到另一实时日志投递任务中。

        # @param request: Request instance for CreateRealtimeLogDeliveryTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateRealtimeLogDeliveryTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateRealtimeLogDeliveryTaskResponse`
        def CreateRealtimeLogDeliveryTask(request)
          body = send_request('CreateRealtimeLogDeliveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRealtimeLogDeliveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版本创建规则引擎接口，EdgeOne 于 2025 年 1 月 21 日已对规则引擎相关接口全面升级，新版本创建七层加速规则接口详情请参考 [CreateL7AccRules](https://cloud.tencent.com/document/product/1552/115822)。
        # <p style="color: red;">注意：自 2025 年 1 月 21 日起，旧版接口停止更新迭代，后续新增功能将仅在新版接口中提供，旧版接口支持的原有能力将不受影响。为避免在使用旧版接口时出现数据字段冲突，建议您尽早迁移到新版规则引擎接口。</p>

        # @param request: Request instance for CreateRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateRuleResponse`
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

        # 用于创建 API 资源。

        # @param request: Request instance for CreateSecurityAPIResource.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSecurityAPIResourceRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSecurityAPIResourceResponse`
        def CreateSecurityAPIResource(request)
          body = send_request('CreateSecurityAPIResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityAPIResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建 API 服务。

        # @param request: Request instance for CreateSecurityAPIService.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSecurityAPIServiceRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSecurityAPIServiceResponse`
        def CreateSecurityAPIService(request)
          body = send_request('CreateSecurityAPIService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityAPIServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建客户端认证选项。

        # @param request: Request instance for CreateSecurityClientAttester.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSecurityClientAttesterRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSecurityClientAttesterResponse`
        def CreateSecurityClientAttester(request)
          body = send_request('CreateSecurityClientAttester', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityClientAttesterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安全 IP 组

        # @param request: Request instance for CreateSecurityIPGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSecurityIPGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSecurityIPGroupResponse`
        def CreateSecurityIPGroup(request)
          body = send_request('CreateSecurityIPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityIPGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 JavaScript 注入规则。

        # @param request: Request instance for CreateSecurityJSInjectionRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSecurityJSInjectionRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSecurityJSInjectionRuleResponse`
        def CreateSecurityJSInjectionRule(request)
          body = send_request('CreateSecurityJSInjectionRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSecurityJSInjectionRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建共享 CNAME，该功能白名单内测中。

        # @param request: Request instance for CreateSharedCNAME.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateSharedCNAMERequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateSharedCNAMEResponse`
        def CreateSharedCNAME(request)
          body = send_request('CreateSharedCNAME', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSharedCNAMEResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建安全策略配置模板

        # @param request: Request instance for CreateWebSecurityTemplate.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateWebSecurityTemplateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateWebSecurityTemplateResponse`
        def CreateWebSecurityTemplate(request)
          body = send_request('CreateWebSecurityTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWebSecurityTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # EdgeOne 为您提供 CNAME、NS 和无域名接入三种接入方式，您需要先通过此接口完成站点创建。CNAME 和 NS 接入站点的场景可参考 [从零开始快速接入 EdgeOne](https://cloud.tencent.com/document/product/1552/87601); 无域名接入的场景可参考 [快速启用四层代理服务](https://cloud.tencent.com/document/product/1552/96051)。

        # > 建议您在账号下已存在套餐时调用本接口创建站点，请在入参时传入 PlanId ，直接将站点绑定至该套餐；不传入 PlanId 时，创建出来的站点会处于未激活状态，无法正常服务，您需要通过 [BindZoneToPlan](https://cloud.tencent.com/document/product/1552/83042) 完成套餐绑定之后，站点才可正常提供服务 。若您当前没有可绑定的套餐时，请前往控制台购买套餐完成站点创建。

        # @param request: Request instance for CreateZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::CreateZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::CreateZoneResponse`
        def CreateZone(request)
          body = send_request('CreateZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量删除加速域名

        # @param request: Request instance for DeleteAccelerationDomains.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteAccelerationDomainsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteAccelerationDomainsResponse`
        def DeleteAccelerationDomains(request)
          body = send_request('DeleteAccelerationDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAccelerationDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除别称域名。
        # 该功能仅企业版套餐支持，并且该功能当前仍在内测中，如需使用，请[联系我们](https://cloud.tencent.com/online-service?from=connect-us)。

        # @param request: Request instance for DeleteAliasDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteAliasDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteAliasDomainResponse`
        def DeleteAliasDomain(request)
          body = send_request('DeleteAliasDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAliasDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [删除四层代理实例
        # ](https://cloud.tencent.com/document/product/1552/103415) 。

        # @param request: Request instance for DeleteApplicationProxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteApplicationProxyResponse`
        def DeleteApplicationProxy(request)
          body = send_request('DeleteApplicationProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApplicationProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [删除四层代理转发规则](https://cloud.tencent.com/document/product/1552/103414) 。

        # @param request: Request instance for DeleteApplicationProxyRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteApplicationProxyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteApplicationProxyRuleResponse`
        def DeleteApplicationProxyRule(request)
          body = send_request('DeleteApplicationProxyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApplicationProxyRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定的内容标识符。该功能仅白名单开放。

        # @param request: Request instance for DeleteContentIdentifier.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteContentIdentifierRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteContentIdentifierResponse`
        def DeleteContentIdentifier(request)
          body = send_request('DeleteContentIdentifier', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteContentIdentifierResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除自定义错误页面。

        # @param request: Request instance for DeleteCustomErrorPage.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteCustomErrorPageRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteCustomErrorPageResponse`
        def DeleteCustomErrorPage(request)
          body = send_request('DeleteCustomErrorPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCustomErrorPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 您可以用本接口批量删除 DNS 记录。

        # @param request: Request instance for DeleteDnsRecords.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteDnsRecordsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteDnsRecordsResponse`
        def DeleteDnsRecords(request)
          body = send_request('DeleteDnsRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDnsRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除边缘函数，删除后函数无法恢复，关联的触发规则会一并删除。

        # @param request: Request instance for DeleteFunction.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteFunctionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteFunctionResponse`
        def DeleteFunction(request)
          body = send_request('DeleteFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFunctionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除边缘函数触发规则。

        # @param request: Request instance for DeleteFunctionRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteFunctionRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteFunctionRulesResponse`
        def DeleteFunctionRules(request)
          body = send_request('DeleteFunctionRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteFunctionRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据站点 id 下唯一的模板标识，删除相应的即时转码模板。

        # @param request: Request instance for DeleteJustInTimeTranscodeTemplates.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteJustInTimeTranscodeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteJustInTimeTranscodeTemplatesResponse`
        def DeleteJustInTimeTranscodeTemplates(request)
          body = send_request('DeleteJustInTimeTranscodeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteJustInTimeTranscodeTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除四层代理实例。

        # @param request: Request instance for DeleteL4Proxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteL4ProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteL4ProxyResponse`
        def DeleteL4Proxy(request)
          body = send_request('DeleteL4Proxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL4ProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除四层代理转发规则，支持单条或者批量操作。

        # @param request: Request instance for DeleteL4ProxyRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteL4ProxyRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteL4ProxyRulesResponse`
        def DeleteL4ProxyRules(request)
          body = send_request('DeleteL4ProxyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL4ProxyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于删除[规则引擎](https://cloud.tencent.com/document/product/1552/70901)的规则，支持批量删除。

        # @param request: Request instance for DeleteL7AccRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteL7AccRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteL7AccRulesResponse`
        def DeleteL7AccRules(request)
          body = send_request('DeleteL7AccRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteL7AccRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除负载均衡实例，若负载均衡示例被其他服务（例如：四层代理等）引用的时候，示例无法被删除，需要先解除引用关系。负载均衡功能内测中，如您需要使用请 [联系我们](https://cloud.tencent.com/online-service)。

        # @param request: Request instance for DeleteLoadBalancer.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteLoadBalancerResponse`
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

        # 通过本接口删除多通道安全加速网关，包括自有网关和云上网关。

        # @param request: Request instance for DeleteMultiPathGateway.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteMultiPathGatewayRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteMultiPathGatewayResponse`
        def DeleteMultiPathGateway(request)
          body = send_request('DeleteMultiPathGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMultiPathGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口删除接入多通道安全加速网关的线路，仅自定义线路支持删除。

        # @param request: Request instance for DeleteMultiPathGatewayLine.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteMultiPathGatewayLineRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteMultiPathGatewayLineResponse`
        def DeleteMultiPathGatewayLine(request)
          body = send_request('DeleteMultiPathGatewayLine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteMultiPathGatewayLineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除源站组，若源站组仍然被服务（例如：四层代理，域名服务，负载均衡，规则引起）引用，将不允许删除。

        # @param request: Request instance for DeleteOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteOriginGroupResponse`
        def DeleteOriginGroup(request)
          body = send_request('DeleteOriginGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteOriginGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口删除实时日志投递任务。

        # @param request: Request instance for DeleteRealtimeLogDeliveryTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteRealtimeLogDeliveryTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteRealtimeLogDeliveryTaskResponse`
        def DeleteRealtimeLogDeliveryTask(request)
          body = send_request('DeleteRealtimeLogDeliveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRealtimeLogDeliveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版本删除规则引擎接口，EdgeOne 于 2025 年 1 月 21 日已对规则引擎相关接口全面升级，新版本删除七层加速规则接口详情请参考 [DeleteL7AccRules](https://cloud.tencent.com/document/product/1552/115821)。
        # <p style="color: red;">注意：自 2025 年 1 月 21 日起，旧版接口停止更新迭代，后续新增功能将仅在新版接口中提供，旧版接口支持的原有能力将不受影响。为避免在使用旧版接口时出现数据字段冲突，建议您尽早迁移到新版规则引擎接口。</p>

        # @param request: Request instance for DeleteRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteRulesResponse`
        def DeleteRules(request)
          body = send_request('DeleteRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除 API 资源。

        # @param request: Request instance for DeleteSecurityAPIResource.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteSecurityAPIResourceRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteSecurityAPIResourceResponse`
        def DeleteSecurityAPIResource(request)
          body = send_request('DeleteSecurityAPIResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityAPIResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除 API 服务。

        # @param request: Request instance for DeleteSecurityAPIService.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteSecurityAPIServiceRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteSecurityAPIServiceResponse`
        def DeleteSecurityAPIService(request)
          body = send_request('DeleteSecurityAPIService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityAPIServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除客户端认证选项。

        # @param request: Request instance for DeleteSecurityClientAttester.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteSecurityClientAttesterRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteSecurityClientAttesterResponse`
        def DeleteSecurityClientAttester(request)
          body = send_request('DeleteSecurityClientAttester', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityClientAttesterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定 IP 组，如果有规则引用了 IP 组情况，则不允许删除。

        # @param request: Request instance for DeleteSecurityIPGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteSecurityIPGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteSecurityIPGroupResponse`
        def DeleteSecurityIPGroup(request)
          body = send_request('DeleteSecurityIPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityIPGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 JavaScript 注入规则。

        # @param request: Request instance for DeleteSecurityJSInjectionRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteSecurityJSInjectionRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteSecurityJSInjectionRuleResponse`
        def DeleteSecurityJSInjectionRule(request)
          body = send_request('DeleteSecurityJSInjectionRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSecurityJSInjectionRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除共享 CNAME，该功能白名单内测中。

        # @param request: Request instance for DeleteSharedCNAME.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteSharedCNAMERequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteSharedCNAMEResponse`
        def DeleteSharedCNAME(request)
          body = send_request('DeleteSharedCNAME', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteSharedCNAMEResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除安全策略配置模板

        # @param request: Request instance for DeleteWebSecurityTemplate.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteWebSecurityTemplateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteWebSecurityTemplateResponse`
        def DeleteWebSecurityTemplate(request)
          body = send_request('DeleteWebSecurityTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebSecurityTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除站点。

        # @param request: Request instance for DeleteZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeleteZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeleteZoneResponse`
        def DeleteZone(request)
          body = send_request('DeleteZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在版本管理模式下，用于版本发布，可通过 EnvId 将版本发布至测试环境或生产环境。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DeployConfigGroupVersion.
        # @type request: :class:`Tencentcloud::teo::V20220901::DeployConfigGroupVersionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DeployConfigGroupVersionResponse`
        def DeployConfigGroupVersion(request)
          body = send_request('DeployConfigGroupVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeployConfigGroupVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 您可以通过本接口查看站点下的域名信息，包括加速域名、源站以及域名状态等信息。您可以查看站点下全部域名的信息，也可以指定过滤条件查询对应的域名信息。

        # @param request: Request instance for DescribeAccelerationDomains.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeAccelerationDomainsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeAccelerationDomainsResponse`
        def DescribeAccelerationDomains(request)
          body = send_request('DescribeAccelerationDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAccelerationDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询别称域名信息列表。
        # 该功能仅企业版套餐支持，并且该功能当前仍在内测中，如需使用，请[联系我们](https://cloud.tencent.com/online-service?from=connect-us)。

        # @param request: Request instance for DescribeAliasDomains.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeAliasDomainsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeAliasDomainsResponse`
        def DescribeAliasDomains(request)
          body = send_request('DescribeAliasDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAliasDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，如需调用请尽快迁移至新版，新版接口中将四层代理实例列表的查询和四层转发规则的查询拆分成两个接口，详情请参考 [查询四层代理实例列表](https://cloud.tencent.com/document/product/1552/103413) 和 [查询四层代理转发规则列表](https://cloud.tencent.com/document/product/1552/103412)。

        # @param request: Request instance for DescribeApplicationProxies.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeApplicationProxiesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeApplicationProxiesResponse`
        def DescribeApplicationProxies(request)
          body = send_request('DescribeApplicationProxies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationProxiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前账户可用套餐信息列表

        # @param request: Request instance for DescribeAvailablePlans.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeAvailablePlansRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeAvailablePlansResponse`
        def DescribeAvailablePlans(request)
          body = send_request('DescribeAvailablePlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAvailablePlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口查询计费数据。

        # @param request: Request instance for DescribeBillingData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeBillingDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeBillingDataResponse`
        def DescribeBillingData(request)
          body = send_request('DescribeBillingData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeBillingDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在版本管理模式下，用于获取版本的详细信息，包括版本 ID、描述、状态、创建时间、所属配置组信息以及版本配置文件的内容。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DescribeConfigGroupVersionDetail.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeConfigGroupVersionDetailRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeConfigGroupVersionDetailResponse`
        def DescribeConfigGroupVersionDetail(request)
          body = send_request('DescribeConfigGroupVersionDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigGroupVersionDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在版本管理模式下，用于查询指定配置组的版本列表。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DescribeConfigGroupVersions.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeConfigGroupVersionsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeConfigGroupVersionsResponse`
        def DescribeConfigGroupVersions(request)
          body = send_request('DescribeConfigGroupVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigGroupVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量查询内容标识符，可以根据 ID、描述、状态或者标签过滤。按照状态查询被删除的内容标识符仅保留三个月。该功能仅白名单开放。

        # @param request: Request instance for DescribeContentIdentifiers.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeContentIdentifiersRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeContentIdentifiersResponse`
        def DescribeContentIdentifiers(request)
          body = send_request('DescribeContentIdentifiers', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContentIdentifiersResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询内容管理接口配额

        # @param request: Request instance for DescribeContentQuota.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeContentQuotaRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeContentQuotaResponse`
        def DescribeContentQuota(request)
          body = send_request('DescribeContentQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeContentQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询自定义错误页列表。

        # @param request: Request instance for DescribeCustomErrorPages.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeCustomErrorPagesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeCustomErrorPagesResponse`
        def DescribeCustomErrorPages(request)
          body = send_request('DescribeCustomErrorPages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCustomErrorPagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDDoSAttackData）用于查询DDoS攻击时序数据。

        # @param request: Request instance for DescribeDDoSAttackData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackDataResponse`
        def DescribeDDoSAttackData(request)
          body = send_request('DescribeDDoSAttackData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDDoSAttackEvent）用于查询DDoS攻击事件列表。

        # @param request: Request instance for DescribeDDoSAttackEvent.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackEventRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackEventResponse`
        def DescribeDDoSAttackEvent(request)
          body = send_request('DescribeDDoSAttackEvent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackEventResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeDDoSAttackTopData）用于查询DDoS攻击Top数据。

        # @param request: Request instance for DescribeDDoSAttackTopData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackTopDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSAttackTopDataResponse`
        def DescribeDDoSAttackTopData(request)
          body = send_request('DescribeDDoSAttackTopData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSAttackTopDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取站点的独立 DDoS 防护信息。

        # @param request: Request instance for DescribeDDoSProtection.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDDoSProtectionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDDoSProtectionResponse`
        def DescribeDDoSProtection(request)
          body = send_request('DescribeDDoSProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDDoSProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询默认证书列表

        # @param request: Request instance for DescribeDefaultCertificates.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDefaultCertificatesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDefaultCertificatesResponse`
        def DescribeDefaultCertificates(request)
          body = send_request('DescribeDefaultCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDefaultCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在版本管理模式下，用于查询生产/测试环境的版本发布历史。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DescribeDeployHistory.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDeployHistoryRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDeployHistoryResponse`
        def DescribeDeployHistory(request)
          body = send_request('DescribeDeployHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDeployHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 您可以用过本接口查看站点下的 DNS 记录信息，包括 DNS 记录名、记录类型以及记录内容等信息，支持指定过滤条件查询对应的 DNS 记录信息。

        # @param request: Request instance for DescribeDnsRecords.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeDnsRecordsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeDnsRecordsResponse`
        def DescribeDnsRecords(request)
          body = send_request('DescribeDnsRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDnsRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在版本管理模式下，用于查询环境信息，可获取环境 ID、类型、当前生效版本等。版本管理功能内测中，当前仅白名单开放。

        # @param request: Request instance for DescribeEnvironments.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeEnvironmentsResponse`
        def DescribeEnvironments(request)
          body = send_request('DescribeEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEnvironmentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询边缘函数触发规则列表，支持按照规则 ID、函数 ID、规则描述等条件进行过滤。

        # @param request: Request instance for DescribeFunctionRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeFunctionRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeFunctionRulesResponse`
        def DescribeFunctionRules(request)
          body = send_request('DescribeFunctionRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFunctionRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询边缘函数运行环境，包括环境变量。

        # @param request: Request instance for DescribeFunctionRuntimeEnvironment.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeFunctionRuntimeEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeFunctionRuntimeEnvironmentResponse`
        def DescribeFunctionRuntimeEnvironment(request)
          body = send_request('DescribeFunctionRuntimeEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFunctionRuntimeEnvironmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询边缘函数列表，支持函数 ID、函数名称、描述等条件的过滤。

        # @param request: Request instance for DescribeFunctions.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeFunctionsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeFunctionsResponse`
        def DescribeFunctions(request)
          body = send_request('DescribeFunctions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFunctionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，EdgeOne 已对规则引擎相关接口全面升级，可通过 [DescribeL7AccSetting](https://cloud.tencent.com/document/product/1552/115819) 和 [DescribeL7AccRules](https://cloud.tencent.com/document/product/1552/115820) 来获取域名的详细配置。

        # @param request: Request instance for DescribeHostsSetting.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeHostsSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeHostsSettingResponse`
        def DescribeHostsSetting(request)
          body = send_request('DescribeHostsSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeHostsSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口可用于查询 IP 是否为 EdgeOne IP。

        # @param request: Request instance for DescribeIPRegion.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeIPRegionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeIPRegionResponse`
        def DescribeIPRegion(request)
          body = send_request('DescribeIPRegion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIPRegionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询站点的验证信息。

        # @param request: Request instance for DescribeIdentifications.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeIdentificationsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeIdentificationsResponse`
        def DescribeIdentifications(request)
          body = send_request('DescribeIdentifications', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIdentificationsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据即时转码模板名字、模板类型或唯一标识，获取即时转码模板详情列表。返回结果包含符合条件的所有用户自定义模板及预置模板。

        # @param request: Request instance for DescribeJustInTimeTranscodeTemplates.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeJustInTimeTranscodeTemplatesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeJustInTimeTranscodeTemplatesResponse`
        def DescribeJustInTimeTranscodeTemplates(request)
          body = send_request('DescribeJustInTimeTranscodeTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeJustInTimeTranscodeTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询四层代理实例列表。

        # @param request: Request instance for DescribeL4Proxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeL4ProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeL4ProxyResponse`
        def DescribeL4Proxy(request)
          body = send_request('DescribeL4Proxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL4ProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询四层代理实例下的转发规则列表。

        # @param request: Request instance for DescribeL4ProxyRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeL4ProxyRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeL4ProxyRulesResponse`
        def DescribeL4ProxyRules(request)
          body = send_request('DescribeL4ProxyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL4ProxyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询[规则引擎](https://cloud.tencent.com/document/product/1552/70901)的规则列表。

        # @param request: Request instance for DescribeL7AccRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeL7AccRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeL7AccRulesResponse`
        def DescribeL7AccRules(request)
          body = send_request('DescribeL7AccRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL7AccRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询[站点加速](https://cloud.tencent.com/document/product/1552/96193)全局配置。

        # @param request: Request instance for DescribeL7AccSetting.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeL7AccSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeL7AccSettingResponse`
        def DescribeL7AccSetting(request)
          body = send_request('DescribeL7AccSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeL7AccSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询负载均衡实例列表。负载均衡功能内测中，如您需要使用请 [联系我们](https://cloud.tencent.com/online-service)。

        # @param request: Request instance for DescribeLoadBalancerList.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeLoadBalancerListRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeLoadBalancerListResponse`
        def DescribeLoadBalancerList(request)
          body = send_request('DescribeLoadBalancerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLoadBalancerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口查询多通道安全加速网关详情。如名称、网关 ID、IP、端口、类型等。

        # @param request: Request instance for DescribeMultiPathGateway.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewayRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewayResponse`
        def DescribeMultiPathGateway(request)
          body = send_request('DescribeMultiPathGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMultiPathGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口查询接入多通道安全加速网关的线路。包括直连、EdgeOne 四层代理线路、自定义线路。

        # @param request: Request instance for DescribeMultiPathGatewayLine.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewayLineRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewayLineResponse`
        def DescribeMultiPathGatewayLine(request)
          body = send_request('DescribeMultiPathGatewayLine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMultiPathGatewayLineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口查询用户创建的多通道安全加速网关（云上网关）的可用地域列表。

        # @param request: Request instance for DescribeMultiPathGatewayRegions.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewayRegionsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewayRegionsResponse`
        def DescribeMultiPathGatewayRegions(request)
          body = send_request('DescribeMultiPathGatewayRegions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMultiPathGatewayRegionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口查询接入多通道安全加速网关的密钥，客户基于接入密钥签名接入多通道安全加速网关。

        # @param request: Request instance for DescribeMultiPathGatewaySecretKey.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewaySecretKeyResponse`
        def DescribeMultiPathGatewaySecretKey(request)
          body = send_request('DescribeMultiPathGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMultiPathGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口查询用户创建的多通道安全加速网关列表。支持翻页。

        # @param request: Request instance for DescribeMultiPathGateways.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewaysRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeMultiPathGatewaysResponse`
        def DescribeMultiPathGateways(request)
          body = send_request('DescribeMultiPathGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeMultiPathGatewaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询站点下的七层加速域名/四层代理实例与回源 IP 网段的绑定关系，以及回源 IP 网段详情。如果您想通过自动化脚本定期获取回源 IP 网段的最新版本，可以较低频率（建议每三天一次）轮询本接口，若 NextOriginACL 字段有返回值，则将最新的回源 IP 网段同步到源站防火墙配置中。

        # @param request: Request instance for DescribeOriginACL.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeOriginACLRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeOriginACLResponse`
        def DescribeOriginACL(request)
          body = send_request('DescribeOriginACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOriginACLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取源站组列表

        # @param request: Request instance for DescribeOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeOriginGroupResponse`
        def DescribeOriginGroup(request)
          body = send_request('DescribeOriginGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOriginGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询负载均衡实例下源站组健康状态。负载均衡功能内测中，如您需要使用请 [联系我们](https://cloud.tencent.com/online-service)。

        # @param request: Request instance for DescribeOriginGroupHealthStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeOriginGroupHealthStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeOriginGroupHealthStatusResponse`
        def DescribeOriginGroupHealthStatus(request)
          body = send_request('DescribeOriginGroupHealthStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOriginGroupHealthStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版本查询源站防护接口，EdgeOne 于 2025 年 6 月 27 日已对源站防护相关接口全面升级，新版本查询源站防护接口详情请参考 [DescribeOriginACL](https://cloud.tencent.com/document/product/1552/120408)。

        # <p style="color: red;">注意：自 2025 年 6 月 27 日起，旧版接口停止更新迭代，后续新增功能将仅在新版接口中提供。为避免在使用旧版接口时出现数据字段冲突，建议您尽早迁移到新版源站防护接口。</p>

        # @param request: Request instance for DescribeOriginProtection.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeOriginProtectionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeOriginProtectionResponse`
        def DescribeOriginProtection(request)
          body = send_request('DescribeOriginProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOriginProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeOverviewL7Data）用于查询七层监控类时序流量数据。此接口待废弃，请使用 <a href="https://cloud.tencent.com/document/product/1552/80648">DescribeTimingL7AnalysisData</a> 接口。

        # @param request: Request instance for DescribeOverviewL7Data.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeOverviewL7DataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeOverviewL7DataResponse`
        def DescribeOverviewL7Data(request)
          body = send_request('DescribeOverviewL7Data', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOverviewL7DataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询套餐信息列表，支持分页。

        # @param request: Request instance for DescribePlans.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribePlansRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribePlansResponse`
        def DescribePlans(request)
          body = send_request('DescribePlans', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePlansResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribePrefetchTasks 用于查询预热任务提交历史记录及执行进度，通过 CreatePrefetchTasks 接口提交的任务可通过此接口进行查询。

        # @param request: Request instance for DescribePrefetchTasks.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribePrefetchTasksRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribePrefetchTasksResponse`
        def DescribePrefetchTasks(request)
          body = send_request('DescribePrefetchTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePrefetchTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # DescribePurgeTasks 用于查询提交的 URL 刷新、目录刷新记录及执行进度，通过 CreatePurgeTasks 接口提交的任务均可通过此接口进行查询。

        # @param request: Request instance for DescribePurgeTasks.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribePurgeTasksRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribePurgeTasksResponse`
        def DescribePurgeTasks(request)
          body = send_request('DescribePurgeTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePurgeTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口查询实时日志投递任务列表。

        # @param request: Request instance for DescribeRealtimeLogDeliveryTasks.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeRealtimeLogDeliveryTasksRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeRealtimeLogDeliveryTasksResponse`
        def DescribeRealtimeLogDeliveryTasks(request)
          body = send_request('DescribeRealtimeLogDeliveryTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRealtimeLogDeliveryTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版本查询规则引擎规则接口，EdgeOne 于 2025 年 1 月 21 日已对规则引擎相关接口全面升级，新版本查询七层加速规则接口详情请参考  [DescribeL7AccRules](https://cloud.tencent.com/document/product/1552/115820)。
        # <p style="color: red;">注意：自 2025 年 1 月 21 日起，旧版接口停止更新迭代，后续新增功能将仅在新版接口中提供，旧版接口支持的原有能力将不受影响。为避免在使用旧版接口时出现数据字段冲突，建议您尽早迁移到新版规则引擎接口。</p>

        # @param request: Request instance for DescribeRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeRulesResponse`
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

        # 本接口为旧版，EdgeOne 已对规则引擎相关接口全面升级，详情请参考 [RuleEngineAction](https://cloud.tencent.com/document/product/1552/80721#RuleEngineAction)。

        # @param request: Request instance for DescribeRulesSetting.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeRulesSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeRulesSettingResponse`
        def DescribeRulesSetting(request)
          body = send_request('DescribeRulesSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRulesSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询站点下的 API 资源。

        # @param request: Request instance for DescribeSecurityAPIResource.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityAPIResourceRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityAPIResourceResponse`
        def DescribeSecurityAPIResource(request)
          body = send_request('DescribeSecurityAPIResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityAPIResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询站点下的 API 服务。

        # @param request: Request instance for DescribeSecurityAPIService.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityAPIServiceRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityAPIServiceResponse`
        def DescribeSecurityAPIService(request)
          body = send_request('DescribeSecurityAPIService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityAPIServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询客户端认证选项配置。

        # @param request: Request instance for DescribeSecurityClientAttester.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityClientAttesterRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityClientAttesterResponse`
        def DescribeSecurityClientAttester(request)
          body = send_request('DescribeSecurityClientAttester', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityClientAttesterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全 IP 组的配置信息，包括安全 IP 组的 ID、名称和内容。本接口的查询结果中，每个 IP 组最多只返回 2000 个 IP / 网段。如果存在超过 2000 个 IP / 网段的超大 IP 组，请调用 DescribeSecurityIPGroupContent 进行分页查询。

        # @param request: Request instance for DescribeSecurityIPGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityIPGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityIPGroupResponse`
        def DescribeSecurityIPGroup(request)
          body = send_request('DescribeSecurityIPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityIPGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于分页查询指定 IP 组中的 IP 地址列表。当 IP 组中的 IP 地址数量超过 2000 个时，可以使用此接口进行分页查询，以获取完整的 IP 地址列表。

        # @param request: Request instance for DescribeSecurityIPGroupContent.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityIPGroupContentRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityIPGroupContentResponse`
        def DescribeSecurityIPGroupContent(request)
          body = send_request('DescribeSecurityIPGroupContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityIPGroupContentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接口已废弃，将于 2024 年 6 月 30 日停止服务。请使用 [查询安全 IP 组
        # ](https://cloud.tencent.com/document/product/1552/105866) 接口。

        # 查询 IP 组的配置信息，包括 IP 组名称、 IP 组内容、 IP 组归属站点。

        # @param request: Request instance for DescribeSecurityIPGroupInfo.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityIPGroupInfoRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityIPGroupInfoResponse`
        def DescribeSecurityIPGroupInfo(request)
          body = send_request('DescribeSecurityIPGroupInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityIPGroupInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 JavaScript 注入规则。

        # @param request: Request instance for DescribeSecurityJSInjectionRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityJSInjectionRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityJSInjectionRuleResponse`
        def DescribeSecurityJSInjectionRule(request)
          body = send_request('DescribeSecurityJSInjectionRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityJSInjectionRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全防护配置详情。

        # @param request: Request instance for DescribeSecurityPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityPolicyResponse`
        def DescribeSecurityPolicy(request)
          body = send_request('DescribeSecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定策略模板的绑定关系列表。

        # @param request: Request instance for DescribeSecurityTemplateBindings.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeSecurityTemplateBindingsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeSecurityTemplateBindingsResponse`
        def DescribeSecurityTemplateBindings(request)
          body = send_request('DescribeSecurityTemplateBindings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSecurityTemplateBindingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeTimingL4Data）用于查询四层时序流量数据列表。

        # @param request: Request instance for DescribeTimingL4Data.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTimingL4DataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTimingL4DataResponse`
        def DescribeTimingL4Data(request)
          body = send_request('DescribeTimingL4Data', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTimingL4DataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口查询七层域名业务的时序数据。请注意本接口查询数据有 10 分钟左右延迟，建议拉取当前时间 10 分钟以前的数据。

        # @param request: Request instance for DescribeTimingL7AnalysisData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTimingL7AnalysisDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTimingL7AnalysisDataResponse`
        def DescribeTimingL7AnalysisData(request)
          body = send_request('DescribeTimingL7AnalysisData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTimingL7AnalysisDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询七层缓存分析时序类流量数据。此接口待废弃，请使用 <a href="https://cloud.tencent.com/document/product/1552/80648">DescribeTimingL7AnalysisData</a> 接口。

        # @param request: Request instance for DescribeTimingL7CacheData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTimingL7CacheDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTimingL7CacheDataResponse`
        def DescribeTimingL7CacheData(request)
          body = send_request('DescribeTimingL7CacheData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTimingL7CacheDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询七层域名业务按照指定维度的 topN 数据。请注意本接口查询数据有 10 分钟左右延迟，建议拉取当前时间 10 分钟以前的数据。

        # @param request: Request instance for DescribeTopL7AnalysisData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTopL7AnalysisDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTopL7AnalysisDataResponse`
        def DescribeTopL7AnalysisData(request)
          body = send_request('DescribeTopL7AnalysisData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopL7AnalysisDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于查询七层缓存分析 topN 数据。此接口待废弃，请使用 <a href="https://cloud.tencent.com/document/product/1552/80646"> DescribeTopL7AnalysisData</a> 接口。

        # @param request: Request instance for DescribeTopL7CacheData.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeTopL7CacheDataRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeTopL7CacheDataResponse`
        def DescribeTopL7CacheData(request)
          body = send_request('DescribeTopL7CacheData', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTopL7CacheDataResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全策略配置模板详情

        # @param request: Request instance for DescribeWebSecurityTemplate.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebSecurityTemplateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebSecurityTemplateResponse`
        def DescribeWebSecurityTemplate(request)
          body = send_request('DescribeWebSecurityTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebSecurityTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询安全策略配置模板列表

        # @param request: Request instance for DescribeWebSecurityTemplates.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeWebSecurityTemplatesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeWebSecurityTemplatesResponse`
        def DescribeWebSecurityTemplates(request)
          body = send_request('DescribeWebSecurityTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebSecurityTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询站点配置项导入结果接口，本接口用于站点配置导入接口（ImportZoneConfig）的结果查询。该功能仅支持标准版或企业版套餐的站点使用。

        # @param request: Request instance for DescribeZoneConfigImportResult.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeZoneConfigImportResultRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeZoneConfigImportResultResponse`
        def DescribeZoneConfigImportResult(request)
          body = send_request('DescribeZoneConfigImportResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneConfigImportResultResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，EdgeOne 已对规则引擎相关接口全面升级，详情请参考 [DescribeL7AccSetting](https://cloud.tencent.com/document/product/1552/115819)。

        # @param request: Request instance for DescribeZoneSetting.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeZoneSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeZoneSettingResponse`
        def DescribeZoneSetting(request)
          body = send_request('DescribeZoneSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZoneSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于查询您有权限的站点信息。可根据不同查询条件筛选站点。

        # @param request: Request instance for DescribeZones.
        # @type request: :class:`Tencentcloud::teo::V20220901::DescribeZonesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DescribeZonesResponse`
        def DescribeZones(request)
          body = send_request('DescribeZones', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZonesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 当您需要停止 Edgeone 套餐的计费，可以通过该接口销毁计费套餐。
        # > 销毁计费套餐需要满足以下条件：
        #     1.套餐已过期（企业版套餐除外）；
        #     2.套餐下所有站点均已关闭或删除。

        # > 站点状态可以通过 [查询站点列表](https://cloud.tencent.com/document/product/1552/80713) 接口进行查询
        # 停用站点可以通过 [切换站点状态](https://cloud.tencent.com/document/product/1552/80707) 接口将站点切换至关闭状态
        # 删除站点可以通过 [删除站点](https://cloud.tencent.com/document/product/1552/80717) 接口将站点删除

        # @param request: Request instance for DestroyPlan.
        # @type request: :class:`Tencentcloud::teo::V20220901::DestroyPlanRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DestroyPlanResponse`
        def DestroyPlan(request)
          body = send_request('DestroyPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DestroyPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于关闭站点的源站防护功能。停用后，相关资源不再仅使用「源站防护」提供的回源 IP 网段请求您的源站，同时停止发送回源 IP 网段更新通知。

        # @param request: Request instance for DisableOriginACL.
        # @type request: :class:`Tencentcloud::teo::V20220901::DisableOriginACLRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DisableOriginACLResponse`
        def DisableOriginACL(request)
          body = send_request('DisableOriginACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableOriginACLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DownloadL4Logs）用于下载四层离线日志。

        # @param request: Request instance for DownloadL4Logs.
        # @type request: :class:`Tencentcloud::teo::V20220901::DownloadL4LogsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DownloadL4LogsResponse`
        def DownloadL4Logs(request)
          body = send_request('DownloadL4Logs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadL4LogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DownloadL7Logs）下载七层离线日志。

        # @param request: Request instance for DownloadL7Logs.
        # @type request: :class:`Tencentcloud::teo::V20220901::DownloadL7LogsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::DownloadL7LogsResponse`
        def DownloadL7Logs(request)
          body = send_request('DownloadL7Logs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DownloadL7LogsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于站点首次开启源站防护，启用后 EdgeOne 将会使用特定的回源 IP 网段为七层加速域名/四层代理实例回源。单次支持提交的七层加速域名的数量最大为 200，四层代理实例的数量最大为 100，支持七层加速域名/四层代理实例混合提交，总实例个数最大为 200。如需要启用超过 200 个资源，可先通过指定资源的方式以最大数量启用，剩余资源通过 ModifyOriginACL 接口启用。后续新增七层加速域名/四层代理实例均请通过 ModifyOriginACL 接口配置。

        # 注意：
        # - 调用本接口视为同意 [源站防护启用特别约定](https://cloud.tencent.com/document/product/1552/120141)；
        # - 回源 IP 网段会不定期变更，EdgeOne 将在回源 IP 网段变更前 14 天、前 7 天、前 3 天和前 1 天分别通过站内信、短信、邮件等一种或多种方式发起通知，为了能正常收到回源 IP 网段的变更通知，请务必确保您在 [腾讯云消息中心控制台](https://console.cloud.tencent.com/message)内，已勾选边缘安全加速平台 EO 的产品服务相关消息通知，并配置正确的消息接收人。配置方式请参考 [消息订阅管理](https://cloud.tencent.com/document/product/567/43476)。

        # @param request: Request instance for EnableOriginACL.
        # @type request: :class:`Tencentcloud::teo::V20220901::EnableOriginACLRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::EnableOriginACLResponse`
        def EnableOriginACL(request)
          body = send_request('EnableOriginACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableOriginACLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导出站点配置接口，本接口支持用户根据需要的配置项进行配置导出，导出的配置用于导入站点配置接口（ImportZoneConfig）进行配置导入。该功能仅支持标准版和企业版套餐站点使用。

        # @param request: Request instance for ExportZoneConfig.
        # @type request: :class:`Tencentcloud::teo::V20220901::ExportZoneConfigRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ExportZoneConfigResponse`
        def ExportZoneConfig(request)
          body = send_request('ExportZoneConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportZoneConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 操作边缘函数运行环境，支持环境变量的相关设置。
        # 设置环境变量后，可在函数代码中使用，具体参考 [边缘函数引入环境变量](https://cloud.tencent.com/document/product/1552/109151#0151fd9a-8b0e-407b-ae37-54553a60ded6)。

        # @param request: Request instance for HandleFunctionRuntimeEnvironment.
        # @type request: :class:`Tencentcloud::teo::V20220901::HandleFunctionRuntimeEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::HandleFunctionRuntimeEnvironmentResponse`
        def HandleFunctionRuntimeEnvironment(request)
          body = send_request('HandleFunctionRuntimeEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = HandleFunctionRuntimeEnvironmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于验证站点所有权。

        # @param request: Request instance for IdentifyZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::IdentifyZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::IdentifyZoneResponse`
        def IdentifyZone(request)
          body = send_request('IdentifyZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IdentifyZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 导入站点配置接口，本接口支持站点配置文件的快速导入，发起导入后接口会返回对应的任务 ID（TaskId），用户需通过查询站点配置导入结果接口（DescribeZoneConfigImportResult）获取本次导入任务执行的结果。该功能仅支持标准版和企业版套餐站点使用。

        # @param request: Request instance for ImportZoneConfig.
        # @type request: :class:`Tencentcloud::teo::V20220901::ImportZoneConfigRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ImportZoneConfigResponse`
        def ImportZoneConfig(request)
          body = send_request('ImportZoneConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportZoneConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 当您的套餐绑定的站点数，或配置的 Web 防护 - 自定义规则 - 精准匹配策略的规则数，或 Web 防护 - 速率限制 - 精准速率限制模块的规则数达到套餐允许的配额上限，可以通过该接口增购对应配额。
        # > 该接口该仅支持企业版套餐。

        # @param request: Request instance for IncreasePlanQuota.
        # @type request: :class:`Tencentcloud::teo::V20220901::IncreasePlanQuotaRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::IncreasePlanQuotaResponse`
        def IncreasePlanQuota(request)
          body = send_request('IncreasePlanQuota', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = IncreasePlanQuotaResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改加速域名信息

        # @param request: Request instance for ModifyAccelerationDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAccelerationDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAccelerationDomainResponse`
        def ModifyAccelerationDomain(request)
          body = send_request('ModifyAccelerationDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccelerationDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改加速域名状态

        # @param request: Request instance for ModifyAccelerationDomainStatuses.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAccelerationDomainStatusesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAccelerationDomainStatusesResponse`
        def ModifyAccelerationDomainStatuses(request)
          body = send_request('ModifyAccelerationDomainStatuses', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAccelerationDomainStatusesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改别称域名。
        # 该功能仅企业版套餐支持，并且该功能当前仍在内测中，如需使用，请[联系我们](https://cloud.tencent.com/online-service?from=connect-us)。

        # @param request: Request instance for ModifyAliasDomain.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAliasDomainRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAliasDomainResponse`
        def ModifyAliasDomain(request)
          body = send_request('ModifyAliasDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAliasDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改别称域名状态。
        # 该功能仅企业版套餐支持，并且该功能当前仍在内测中，如需使用，请[联系我们](https://cloud.tencent.com/online-service?from=connect-us)。

        # @param request: Request instance for ModifyAliasDomainStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyAliasDomainStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyAliasDomainStatusResponse`
        def ModifyAliasDomainStatus(request)
          body = send_request('ModifyAliasDomainStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAliasDomainStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [修改四层代理实例
        # ](https://cloud.tencent.com/document/product/1552/103411) 。

        # @param request: Request instance for ModifyApplicationProxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyResponse`
        def ModifyApplicationProxy(request)
          body = send_request('ModifyApplicationProxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [修改四层代理转发规则
        # ](https://cloud.tencent.com/document/product/1552/103410) 。

        # @param request: Request instance for ModifyApplicationProxyRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRuleResponse`
        def ModifyApplicationProxyRule(request)
          body = send_request('ModifyApplicationProxyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationProxyRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [修改四层代理转发规则状态
        # ](https://cloud.tencent.com/document/product/1552/103409) 。

        # @param request: Request instance for ModifyApplicationProxyRuleStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRuleStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyRuleStatusResponse`
        def ModifyApplicationProxyRuleStatus(request)
          body = send_request('ModifyApplicationProxyRuleStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationProxyRuleStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，如需调用请尽快迁移至新版，详情请参考 [修改四层代理实例状态](https://cloud.tencent.com/document/product/1552/103408) 。

        # @param request: Request instance for ModifyApplicationProxyStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyApplicationProxyStatusResponse`
        def ModifyApplicationProxyStatus(request)
          body = send_request('ModifyApplicationProxyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationProxyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改内容标识符，仅支持修改描述。该功能仅白名单开放。

        # @param request: Request instance for ModifyContentIdentifier.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyContentIdentifierRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyContentIdentifierResponse`
        def ModifyContentIdentifier(request)
          body = send_request('ModifyContentIdentifier', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyContentIdentifierResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改自定义错误页面。

        # @param request: Request instance for ModifyCustomErrorPage.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyCustomErrorPageRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyCustomErrorPageResponse`
        def ModifyCustomErrorPage(request)
          body = send_request('ModifyCustomErrorPage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCustomErrorPageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改站点的独立 DDoS 防护。

        # @param request: Request instance for ModifyDDoSProtection.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyDDoSProtectionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyDDoSProtectionResponse`
        def ModifyDDoSProtection(request)
          body = send_request('ModifyDDoSProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDDoSProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 您可以通过本接口批量修改 DNS 记录。

        # @param request: Request instance for ModifyDnsRecords.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyDnsRecordsRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyDnsRecordsResponse`
        def ModifyDnsRecords(request)
          body = send_request('ModifyDnsRecords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDnsRecordsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 您可以通过本接口批量修改 DNS 记录的状态，批量对记录进行开启和停用。

        # @param request: Request instance for ModifyDnsRecordsStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyDnsRecordsStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyDnsRecordsStatusResponse`
        def ModifyDnsRecordsStatus(request)
          body = send_request('ModifyDnsRecordsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyDnsRecordsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改边缘函数，支持修改函数的内容及描述信息，修改且重新部署后，函数立刻生效。

        # @param request: Request instance for ModifyFunction.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyFunctionRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyFunctionResponse`
        def ModifyFunction(request)
          body = send_request('ModifyFunction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFunctionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改边缘函数触发规则，支持修改规则条件、执行函数以及描述信息。

        # @param request: Request instance for ModifyFunctionRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyFunctionRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyFunctionRuleResponse`
        def ModifyFunctionRule(request)
          body = send_request('ModifyFunctionRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFunctionRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改边缘函数触发规则的优先级。

        # @param request: Request instance for ModifyFunctionRulePriority.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyFunctionRulePriorityRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyFunctionRulePriorityResponse`
        def ModifyFunctionRulePriority(request)
          body = send_request('ModifyFunctionRulePriority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyFunctionRulePriorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 完成域名创建之后，您可以为域名配置自有证书，也可以使用 EdgeOne 为您提供的 [免费证书](https://cloud.tencent.com/document/product/1552/90437)。
        # 如果您需要配置自有证书，请先将证书上传至 [SSL证书控制台](https://console.cloud.tencent.com/certoverview)，然后在本接口中传入对应的证书 ID。详情参考 [部署自有证书至 EdgeOne 域名
        # ](https://cloud.tencent.com/document/product/1552/88874)。

        # @param request: Request instance for ModifyHostsCertificate.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyHostsCertificateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyHostsCertificateResponse`
        def ModifyHostsCertificate(request)
          body = send_request('ModifyHostsCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyHostsCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改四层代理实例的配置。

        # @param request: Request instance for ModifyL4Proxy.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyResponse`
        def ModifyL4Proxy(request)
          body = send_request('ModifyL4Proxy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4ProxyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改四层代理转发规则，支持单条或者批量修改。

        # @param request: Request instance for ModifyL4ProxyRules.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRulesRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRulesResponse`
        def ModifyL4ProxyRules(request)
          body = send_request('ModifyL4ProxyRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4ProxyRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于启用/停用四层代理转发规则状态，支持单条或者批量操作。

        # @param request: Request instance for ModifyL4ProxyRulesStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRulesStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyRulesStatusResponse`
        def ModifyL4ProxyRulesStatus(request)
          body = send_request('ModifyL4ProxyRulesStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4ProxyRulesStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于启用/停用四层代理实例。

        # @param request: Request instance for ModifyL4ProxyStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL4ProxyStatusResponse`
        def ModifyL4ProxyStatus(request)
          body = send_request('ModifyL4ProxyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL4ProxyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改[规则引擎](https://cloud.tencent.com/document/product/1552/70901)中的规则，单次仅支持修改单条规则。

        # @param request: Request instance for ModifyL7AccRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL7AccRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL7AccRuleResponse`
        def ModifyL7AccRule(request)
          body = send_request('ModifyL7AccRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL7AccRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改[规则引擎](https://cloud.tencent.com/document/product/1552/70901)中规则列表的优先级，本接口需要传入站点 ID 下完整的规则 ID 列表，规则 ID 列表可以通过[查询七层加速规则](https://cloud.tencent.com/document/product/1552/115820)接口获取，最终优先级顺序将调整成规则 ID 列表的顺序，从前往后执行。

        # @param request: Request instance for ModifyL7AccRulePriority.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL7AccRulePriorityRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL7AccRulePriorityResponse`
        def ModifyL7AccRulePriority(request)
          body = send_request('ModifyL7AccRulePriority', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL7AccRulePriorityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于修改[站点加速](https://cloud.tencent.com/document/product/1552/96193)全局配置。

        # @param request: Request instance for ModifyL7AccSetting.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyL7AccSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyL7AccSettingResponse`
        def ModifyL7AccSetting(request)
          body = send_request('ModifyL7AccSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyL7AccSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改负载均衡实例配置。负载均衡功能内测中，如您需要使用请 [联系我们](https://cloud.tencent.com/online-service)。

        # @param request: Request instance for ModifyLoadBalancer.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyLoadBalancerRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyLoadBalancerResponse`
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

        # 通过本接口修改多通道安全加速网关信息，如名称、网关 ID、IP、端口等。

        # @param request: Request instance for ModifyMultiPathGateway.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyMultiPathGatewayRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyMultiPathGatewayResponse`
        def ModifyMultiPathGateway(request)
          body = send_request('ModifyMultiPathGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMultiPathGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口修改接入多通道安全加速网关的线路，包括 EdgeOne 四层代理线路、自定义线路。

        # @param request: Request instance for ModifyMultiPathGatewayLine.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyMultiPathGatewayLineRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyMultiPathGatewayLineResponse`
        def ModifyMultiPathGatewayLine(request)
          body = send_request('ModifyMultiPathGatewayLine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMultiPathGatewayLineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口修改接入多通道安全加速网关的密钥，客户基于接入密钥签名接入多通道安全加速网关，修改后原密钥失效。

        # @param request: Request instance for ModifyMultiPathGatewaySecretKey.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyMultiPathGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyMultiPathGatewaySecretKeyResponse`
        def ModifyMultiPathGatewaySecretKey(request)
          body = send_request('ModifyMultiPathGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyMultiPathGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口用于对七层加速域名/四层代理实例启用/关闭特定回源 IP 网段回源。单次支持提交的七层加速域名的数量最大为 200，四层代理实例的数量最大为 100，支持七层加速域名/四层代理实例混合提交，总实例个数最大为 200。如需变更超过 200 个实例，请通过本接口分批提交。

        # @param request: Request instance for ModifyOriginACL.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyOriginACLRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyOriginACLResponse`
        def ModifyOriginACL(request)
          body = send_request('ModifyOriginACL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOriginACLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改源站组配置，新提交的源站记录将会覆盖原有源站组中的源站记录。

        # @param request: Request instance for ModifyOriginGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyOriginGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyOriginGroupResponse`
        def ModifyOriginGroup(request)
          body = send_request('ModifyOriginGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyOriginGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改套餐配置。目前仅支持修改预付费套餐的自动续费开关。

        # @param request: Request instance for ModifyPlan.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyPlanRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyPlanResponse`
        def ModifyPlan(request)
          body = send_request('ModifyPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口修改实时日志投递任务配置。本接口有如下限制：<li>不支持修改实时日志投递任务目的地类型（TaskType）；</li><li>不支持修改数据投递类型（LogType）</li><li>不支持修改数据投递区域（Area）</li><li>当原实时日志投递任务的目的地为腾讯云 CLS 时，不支持修改目的地详细配置，如日志集、日志主题。</li>

        # @param request: Request instance for ModifyRealtimeLogDeliveryTask.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyRealtimeLogDeliveryTaskRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyRealtimeLogDeliveryTaskResponse`
        def ModifyRealtimeLogDeliveryTask(request)
          body = send_request('ModifyRealtimeLogDeliveryTask', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRealtimeLogDeliveryTaskResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版本修改规则引擎接口，EdgeOne 于 2025 年 1 月 21 日已对规则引擎相关接口全面升级，新版本修改七层加速规则接口详情请参考 [ModifyL7AccRule](https://cloud.tencent.com/document/product/1552/115818)。
        # <p style="color: red;">注意：自 2025 年 1 月 21 日起，旧版接口停止更新迭代，后续新增功能将仅在新版接口中提供，旧版接口支持的原有能力将不受影响。为避免在使用旧版接口时出现数据字段冲突，建议您尽早迁移到新版规则引擎接口。</p>

        # @param request: Request instance for ModifyRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyRuleResponse`
        def ModifyRule(request)
          body = send_request('ModifyRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于修改 API 资源。

        # @param request: Request instance for ModifySecurityAPIResource.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifySecurityAPIResourceRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifySecurityAPIResourceResponse`
        def ModifySecurityAPIResource(request)
          body = send_request('ModifySecurityAPIResource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityAPIResourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 该接口用于修改 API 服务。

        # @param request: Request instance for ModifySecurityAPIService.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifySecurityAPIServiceRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifySecurityAPIServiceResponse`
        def ModifySecurityAPIService(request)
          body = send_request('ModifySecurityAPIService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityAPIServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改客户端认证选项。

        # @param request: Request instance for ModifySecurityClientAttester.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifySecurityClientAttesterRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifySecurityClientAttesterResponse`
        def ModifySecurityClientAttester(request)
          body = send_request('ModifySecurityClientAttester', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityClientAttesterResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安全 IP 组。

        # @param request: Request instance for ModifySecurityIPGroup.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifySecurityIPGroupRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifySecurityIPGroupResponse`
        def ModifySecurityIPGroup(request)
          body = send_request('ModifySecurityIPGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityIPGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 JavaScript 注入规则。

        # @param request: Request instance for ModifySecurityJSInjectionRule.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifySecurityJSInjectionRuleRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifySecurityJSInjectionRuleResponse`
        def ModifySecurityJSInjectionRule(request)
          body = send_request('ModifySecurityJSInjectionRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityJSInjectionRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改Web&Bot安全配置。

        # @param request: Request instance for ModifySecurityPolicy.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifySecurityPolicyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifySecurityPolicyResponse`
        def ModifySecurityPolicy(request)
          body = send_request('ModifySecurityPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySecurityPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改安全策略配置模板

        # @param request: Request instance for ModifyWebSecurityTemplate.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyWebSecurityTemplateRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyWebSecurityTemplateResponse`
        def ModifyWebSecurityTemplate(request)
          body = send_request('ModifyWebSecurityTemplate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebSecurityTemplateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改站点信息。

        # @param request: Request instance for ModifyZone.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyZoneRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyZoneResponse`
        def ModifyZone(request)
          body = send_request('ModifyZone', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyZoneResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口为旧版，EdgeOne 已对规则引擎相关接口全面升级，详情请参考 [ModifyL7AccSetting](https://cloud.tencent.com/document/product/1552/115817)。

        # @param request: Request instance for ModifyZoneSetting.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyZoneSettingRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyZoneSettingResponse`
        def ModifyZoneSetting(request)
          body = send_request('ModifyZoneSetting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyZoneSettingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于开启，关闭站点。

        # @param request: Request instance for ModifyZoneStatus.
        # @type request: :class:`Tencentcloud::teo::V20220901::ModifyZoneStatusRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::ModifyZoneStatusResponse`
        def ModifyZoneStatus(request)
          body = send_request('ModifyZoneStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyZoneStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 通过本接口刷新多通道安全加速网关的密钥。客户基于接入密钥签名接入多通道安全加速网关。每个站点下只有一个密钥，可用于接入该站点下的所有网关，刷新密钥后，原始密钥会失效。

        # @param request: Request instance for RefreshMultiPathGatewaySecretKey.
        # @type request: :class:`Tencentcloud::teo::V20220901::RefreshMultiPathGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::RefreshMultiPathGatewaySecretKeyResponse`
        def RefreshMultiPathGatewaySecretKey(request)
          body = send_request('RefreshMultiPathGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefreshMultiPathGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 当您的套餐需要延长有效期，可以通过该接口进行续费。套餐续费仅支持个人版，基础版，标准版套餐。
        # > 费用详情可参考 [套餐费用](https://cloud.tencent.com/document/product/1552/94158)

        # @param request: Request instance for RenewPlan.
        # @type request: :class:`Tencentcloud::teo::V20220901::RenewPlanRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::RenewPlanResponse`
        def RenewPlan(request)
          body = send_request('RenewPlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewPlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 当您需要使用高等级套餐才拥有的功能，可以通过本接口升级套餐，仅支持个人版，基础版套餐进行升级。
        # > 不同类型 Edgeone 计费套餐区别参考 [Edgeone计费套餐选型对比](https://cloud.tencent.com/document/product/1552/94165)
        # 计费套餐升级规则以及资费详情参考 [Edgeone计费套餐升配说明](https://cloud.tencent.com/document/product/1552/95291)
        # 如果需要将套餐升级至企业版，请 [联系我们](https://cloud.tencent.com/online-service)

        # @param request: Request instance for UpgradePlan.
        # @type request: :class:`Tencentcloud::teo::V20220901::UpgradePlanRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::UpgradePlanResponse`
        def UpgradePlan(request)
          body = send_request('UpgradePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpgradePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 在 CNAME 接入模式下，您需要对站点或者域名的归属权进行验证，可以通过本接口触发验证。若站点通过归属权验证后，后续添加域名无需再验证。详情参考 [站点/域名归属权验证](https://cloud.tencent.com/document/product/1552/70789)。

        # 在 NS 接入模式下，您也可以通过本接口来查询 NS 服务器是否切换成功，详情参考 [修改 DNS 服务器](https://cloud.tencent.com/document/product/1552/90452)。

        # @param request: Request instance for VerifyOwnership.
        # @type request: :class:`Tencentcloud::teo::V20220901::VerifyOwnershipRequest`
        # @rtype: :class:`Tencentcloud::teo::V20220901::VerifyOwnershipResponse`
        def VerifyOwnership(request)
          body = send_request('VerifyOwnership', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyOwnershipResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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