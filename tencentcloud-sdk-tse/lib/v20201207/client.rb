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
  module Tse
    module V20201207
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-07'
            api_endpoint = 'tse.tencentcloudapi.com'
            sdk_version = 'TSE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 为资源（模型 API / MCP Server）添加消费者组授权。

        # @param request: Request instance for AddCloudNativeAPIGatewayConsumerGroupAuth.
        # @type request: :class:`Tencentcloud::tse::V20201207::AddCloudNativeAPIGatewayConsumerGroupAuthRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::AddCloudNativeAPIGatewayConsumerGroupAuthResponse`
        def AddCloudNativeAPIGatewayConsumerGroupAuth(request)
          body = send_request('AddCloudNativeAPIGatewayConsumerGroupAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCloudNativeAPIGatewayConsumerGroupAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将消费者添加到消费者组。

        # @param request: Request instance for AddCloudNativeAPIGatewayConsumerInGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::AddCloudNativeAPIGatewayConsumerInGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::AddCloudNativeAPIGatewayConsumerInGroupResponse`
        def AddCloudNativeAPIGatewayConsumerInGroup(request)
          body = send_request('AddCloudNativeAPIGatewayConsumerInGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AddCloudNativeAPIGatewayConsumerInGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 弹性伸缩策略批量绑定网关分组

        # @param request: Request instance for BindAutoScalerResourceStrategyToGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::BindAutoScalerResourceStrategyToGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::BindAutoScalerResourceStrategyToGroupsResponse`
        def BindAutoScalerResourceStrategyToGroups(request)
          body = send_request('BindAutoScalerResourceStrategyToGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindAutoScalerResourceStrategyToGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 关闭 WAF 防护

        # @param request: Request instance for CloseWafProtection.
        # @type request: :class:`Tencentcloud::tse::V20201207::CloseWafProtectionRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CloseWafProtectionResponse`
        def CloseWafProtection(request)
          body = send_request('CloseWafProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CloseWafProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建自定义外部审核策略，并把资源绑定配置同步到 Kong Route。建议先调用 DescribeAIGWCustomGuardrailCapabilities、DescribeAIGWCustomGuardrailBindableResources 和 TestAIGWCustomGuardrailPolicy。支持模型 API、MCP Streamable HTTP、A2A Agent API；当前不开放 Dify、Custom Agent、Legacy SSE MCP。请检查 Result.Success、SyncStatus、FailedResources；部分同步失败不等于策略未创建，应按返回 PolicyId 查询并处理，避免重复创建。网关需满足最低版本 3.9.6，且已安装、启用并加载 cngw-ai-custom-guardrail。创建、修改、删除要求网关处于稳定 Running 状态，升级/回滚/撤销升级期间不能修改策略。

        # 本产品为 tse，版本为 2020-12-07。公共参数及签名按云 API 规范配置；在 API Explorer 选择目标环境，示例正文仅为业务参数，中文诊断示例以公共参数 Language=zh-CN 为前提。响应业务字段统一位于 Response.Result，Response.RequestId 为云 API 请求 ID；HTTP 成功不代表 Result.Success=true。示例 ID、域名和鉴权值均为占位内容，须替换为实际值。

        # 输入约束：新配置只接受 field_mapping，不再默认为 standard_v2。创建时鉴权和检测行为必须完整填写；修改为 PATCH，省略保留，显式空值不补默认值。存量 standard_v2 策略仍可查询、删除或直接停用；修改其判定配置或重新启用前需迁移到 field_mapping。条件必填由后端按完整配置校验，非法配置不写库、不下发。

        # @param request: Request instance for CreateAIGWCustomGuardrailPolicy.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateAIGWCustomGuardrailPolicyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateAIGWCustomGuardrailPolicyResponse`
        def CreateAIGWCustomGuardrailPolicy(request)
          body = send_request('CreateAIGWCustomGuardrailPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAIGWCustomGuardrailPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建弹性伸缩策略

        # @param request: Request instance for CreateAutoScalerResourceStrategy.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateAutoScalerResourceStrategyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateAutoScalerResourceStrategyResponse`
        def CreateAutoScalerResourceStrategy(request)
          body = send_request('CreateAutoScalerResourceStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAutoScalerResourceStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生API网关实例

        # @param request: Request instance for CreateCloudNativeAPIGateway.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayResponse`
        def CreateCloudNativeAPIGateway(request)
          body = send_request('CreateCloudNativeAPIGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关的灰度规则

        # @param request: Request instance for CreateCloudNativeAPIGatewayCanaryRule.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayCanaryRuleRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayCanaryRuleResponse`
        def CreateCloudNativeAPIGatewayCanaryRule(request)
          body = send_request('CreateCloudNativeAPIGatewayCanaryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayCanaryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关证书

        # @param request: Request instance for CreateCloudNativeAPIGatewayCertificate.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayCertificateRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayCertificateResponse`
        def CreateCloudNativeAPIGatewayCertificate(request)
          body = send_request('CreateCloudNativeAPIGatewayCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建消费者。

        # @param request: Request instance for CreateCloudNativeAPIGatewayConsumer.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayConsumerRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayConsumerResponse`
        def CreateCloudNativeAPIGatewayConsumer(request)
          body = send_request('CreateCloudNativeAPIGatewayConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建消费者组。

        # @param request: Request instance for CreateCloudNativeAPIGatewayConsumerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayConsumerGroupResponse`
        def CreateCloudNativeAPIGatewayConsumerGroup(request)
          body = send_request('CreateCloudNativeAPIGatewayConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 LLM 模型 API。

        # @param request: Request instance for CreateCloudNativeAPIGatewayLLMModelAPI.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayLLMModelAPIRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayLLMModelAPIResponse`
        def CreateCloudNativeAPIGatewayLLMModelAPI(request)
          body = send_request('CreateCloudNativeAPIGatewayLLMModelAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayLLMModelAPIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 LLM 模型服务。同一网关下 Name 唯一。

        # @param request: Request instance for CreateCloudNativeAPIGatewayLLMModelService.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayLLMModelServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayLLMModelServiceResponse`
        def CreateCloudNativeAPIGatewayLLMModelService(request)
          body = send_request('CreateCloudNativeAPIGatewayLLMModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayLLMModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建公网网络配置

        # @param request: Request instance for CreateCloudNativeAPIGatewayPublicNetwork.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayPublicNetworkRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayPublicNetworkResponse`
        def CreateCloudNativeAPIGatewayPublicNetwork(request)
          body = send_request('CreateCloudNativeAPIGatewayPublicNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayPublicNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关路由

        # @param request: Request instance for CreateCloudNativeAPIGatewayRoute.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRouteRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRouteResponse`
        def CreateCloudNativeAPIGatewayRoute(request)
          body = send_request('CreateCloudNativeAPIGatewayRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关限流插件(路由)

        # @param request: Request instance for CreateCloudNativeAPIGatewayRouteRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRouteRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayRouteRateLimitResponse`
        def CreateCloudNativeAPIGatewayRouteRateLimit(request)
          body = send_request('CreateCloudNativeAPIGatewayRouteRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayRouteRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建消费者密钥。

        # @param request: Request instance for CreateCloudNativeAPIGatewaySecretKey.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewaySecretKeyResponse`
        def CreateCloudNativeAPIGatewaySecretKey(request)
          body = send_request('CreateCloudNativeAPIGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关服务

        # @param request: Request instance for CreateCloudNativeAPIGatewayService.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayServiceResponse`
        def CreateCloudNativeAPIGatewayService(request)
          body = send_request('CreateCloudNativeAPIGatewayService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关限流插件(服务)

        # @param request: Request instance for CreateCloudNativeAPIGatewayServiceRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayServiceRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateCloudNativeAPIGatewayServiceRateLimitResponse`
        def CreateCloudNativeAPIGatewayServiceRateLimit(request)
          body = send_request('CreateCloudNativeAPIGatewayServiceRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCloudNativeAPIGatewayServiceRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建配置文件

        # @param request: Request instance for CreateConfigFile.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateConfigFileRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateConfigFileResponse`
        def CreateConfigFile(request)
          body = send_request('CreateConfigFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConfigFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建服务治理中心配置文件组

        # @param request: Request instance for CreateConfigFileGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateConfigFileGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateConfigFileGroupResponse`
        def CreateConfigFileGroup(request)
          body = send_request('CreateConfigFileGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateConfigFileGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建引擎实例

        # @param request: Request instance for CreateEngine.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateEngineRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateEngineResponse`
        def CreateEngine(request)
          body = send_request('CreateEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建治理中心服务别名

        # @param request: Request instance for CreateGovernanceAlias.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateGovernanceAliasRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateGovernanceAliasResponse`
        def CreateGovernanceAlias(request)
          body = send_request('CreateGovernanceAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGovernanceAliasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建服务实例

        # @param request: Request instance for CreateGovernanceInstances.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateGovernanceInstancesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateGovernanceInstancesResponse`
        def CreateGovernanceInstances(request)
          body = send_request('CreateGovernanceInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGovernanceInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建泳道组

        # @param request: Request instance for CreateGovernanceLaneGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateGovernanceLaneGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateGovernanceLaneGroupsResponse`
        def CreateGovernanceLaneGroups(request)
          body = send_request('CreateGovernanceLaneGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGovernanceLaneGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建治理中心命名空间

        # @param request: Request instance for CreateGovernanceNamespaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateGovernanceNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateGovernanceNamespacesResponse`
        def CreateGovernanceNamespaces(request)
          body = send_request('CreateGovernanceNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGovernanceNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建治理中心服务

        # @param request: Request instance for CreateGovernanceServices.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateGovernanceServicesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateGovernanceServicesResponse`
        def CreateGovernanceServices(request)
          body = send_request('CreateGovernanceServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateGovernanceServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建云原生网关引擎分组

        # @param request: Request instance for CreateNativeGatewayServerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateNativeGatewayServerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateNativeGatewayServerGroupResponse`
        def CreateNativeGatewayServerGroup(request)
          body = send_request('CreateNativeGatewayServerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNativeGatewayServerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建网关服务来源

        # @param request: Request instance for CreateNativeGatewayServiceSource.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateNativeGatewayServiceSourceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateNativeGatewayServiceSourceResponse`
        def CreateNativeGatewayServiceSource(request)
          body = send_request('CreateNativeGatewayServiceSource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNativeGatewayServiceSourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建或编辑云原生网关跨域配置

        # @param request: Request instance for CreateOrModifyCloudNativeAPIGatewayCORS.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateOrModifyCloudNativeAPIGatewayCORSRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateOrModifyCloudNativeAPIGatewayCORSResponse`
        def CreateOrModifyCloudNativeAPIGatewayCORS(request)
          body = send_request('CreateOrModifyCloudNativeAPIGatewayCORS', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrModifyCloudNativeAPIGatewayCORSResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建或编辑云原生网关访问控制

        # @param request: Request instance for CreateOrModifyCloudNativeAPIGatewayIPRestriction.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateOrModifyCloudNativeAPIGatewayIPRestrictionRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateOrModifyCloudNativeAPIGatewayIPRestrictionResponse`
        def CreateOrModifyCloudNativeAPIGatewayIPRestriction(request)
          body = send_request('CreateOrModifyCloudNativeAPIGatewayIPRestriction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrModifyCloudNativeAPIGatewayIPRestrictionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建或更新配置文件并发布配置

        # @param request: Request instance for CreateOrUpdateConfigFileAndRelease.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateOrUpdateConfigFileAndReleaseRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateOrUpdateConfigFileAndReleaseResponse`
        def CreateOrUpdateConfigFileAndRelease(request)
          body = send_request('CreateOrUpdateConfigFileAndRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateOrUpdateConfigFileAndReleaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 新建 WAF 防护域名

        # @param request: Request instance for CreateWafDomains.
        # @type request: :class:`Tencentcloud::tse::V20201207::CreateWafDomainsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::CreateWafDomainsResponse`
        def CreateWafDomains(request)
          body = send_request('CreateWafDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWafDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 先清理该策略的 Route 插件投影，再删除策略和绑定。清理失败返回 Result.Success=false，保留策略供排障后重试；不删除绑定的模型、MCP、Agent 或审核引擎服务。网关需满足最低版本 3.9.6，且已安装、启用并加载 cngw-ai-custom-guardrail。创建、修改、删除要求网关处于稳定 Running 状态，升级/回滚/撤销升级期间不能修改策略。

        # 本产品为 tse，版本为 2020-12-07。公共参数及签名按云 API 规范配置；在 API Explorer 选择目标环境，示例正文仅为业务参数，中文诊断示例以公共参数 Language=zh-CN 为前提。响应业务字段统一位于 Response.Result，Response.RequestId 为云 API 请求 ID；HTTP 成功不代表 Result.Success=true。示例 ID、域名和鉴权值均为占位内容，须替换为实际值。

        # @param request: Request instance for DeleteAIGWCustomGuardrailPolicy.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteAIGWCustomGuardrailPolicyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteAIGWCustomGuardrailPolicyResponse`
        def DeleteAIGWCustomGuardrailPolicy(request)
          body = send_request('DeleteAIGWCustomGuardrailPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAIGWCustomGuardrailPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除弹性伸缩策略

        # @param request: Request instance for DeleteAutoScalerResourceStrategy.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteAutoScalerResourceStrategyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteAutoScalerResourceStrategyResponse`
        def DeleteAutoScalerResourceStrategy(request)
          body = send_request('DeleteAutoScalerResourceStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAutoScalerResourceStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生API网关实例

        # @param request: Request instance for DeleteCloudNativeAPIGateway.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayResponse`
        def DeleteCloudNativeAPIGateway(request)
          body = send_request('DeleteCloudNativeAPIGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关跨域插件

        # @param request: Request instance for DeleteCloudNativeAPIGatewayCORS.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCORSRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCORSResponse`
        def DeleteCloudNativeAPIGatewayCORS(request)
          body = send_request('DeleteCloudNativeAPIGatewayCORS', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayCORSResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关的灰度规则

        # @param request: Request instance for DeleteCloudNativeAPIGatewayCanaryRule.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCanaryRuleRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCanaryRuleResponse`
        def DeleteCloudNativeAPIGatewayCanaryRule(request)
          body = send_request('DeleteCloudNativeAPIGatewayCanaryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayCanaryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关证书

        # @param request: Request instance for DeleteCloudNativeAPIGatewayCertificate.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCertificateRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayCertificateResponse`
        def DeleteCloudNativeAPIGatewayCertificate(request)
          body = send_request('DeleteCloudNativeAPIGatewayCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除消费者（被绑定到消费者组/密钥时需先解绑）。

        # @param request: Request instance for DeleteCloudNativeAPIGatewayConsumer.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayConsumerRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayConsumerResponse`
        def DeleteCloudNativeAPIGatewayConsumer(request)
          body = send_request('DeleteCloudNativeAPIGatewayConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除消费者组（被授权资源占用时返回 CheckItems）。

        # @param request: Request instance for DeleteCloudNativeAPIGatewayConsumerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayConsumerGroupResponse`
        def DeleteCloudNativeAPIGatewayConsumerGroup(request)
          body = send_request('DeleteCloudNativeAPIGatewayConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关访问控制

        # @param request: Request instance for DeleteCloudNativeAPIGatewayIPRestriction.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayIPRestrictionRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayIPRestrictionResponse`
        def DeleteCloudNativeAPIGatewayIPRestriction(request)
          body = send_request('DeleteCloudNativeAPIGatewayIPRestriction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayIPRestrictionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 LLM 模型 API。

        # @param request: Request instance for DeleteCloudNativeAPIGatewayLLMModelAPI.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayLLMModelAPIRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayLLMModelAPIResponse`
        def DeleteCloudNativeAPIGatewayLLMModelAPI(request)
          body = send_request('DeleteCloudNativeAPIGatewayLLMModelAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayLLMModelAPIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 LLM 模型服务（被模型 API 绑定时需先解绑）。

        # @param request: Request instance for DeleteCloudNativeAPIGatewayLLMModelService.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayLLMModelServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayLLMModelServiceResponse`
        def DeleteCloudNativeAPIGatewayLLMModelService(request)
          body = send_request('DeleteCloudNativeAPIGatewayLLMModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayLLMModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除公网网络配置

        # @param request: Request instance for DeleteCloudNativeAPIGatewayPublicNetwork.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayPublicNetworkRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayPublicNetworkResponse`
        def DeleteCloudNativeAPIGatewayPublicNetwork(request)
          body = send_request('DeleteCloudNativeAPIGatewayPublicNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayPublicNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关路由

        # @param request: Request instance for DeleteCloudNativeAPIGatewayRoute.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRouteRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRouteResponse`
        def DeleteCloudNativeAPIGatewayRoute(request)
          body = send_request('DeleteCloudNativeAPIGatewayRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关的限流插件(路由)

        # @param request: Request instance for DeleteCloudNativeAPIGatewayRouteRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRouteRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayRouteRateLimitResponse`
        def DeleteCloudNativeAPIGatewayRouteRateLimit(request)
          body = send_request('DeleteCloudNativeAPIGatewayRouteRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayRouteRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除消费者密钥（被绑定时需先解绑）。

        # @param request: Request instance for DeleteCloudNativeAPIGatewaySecretKey.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewaySecretKeyResponse`
        def DeleteCloudNativeAPIGatewaySecretKey(request)
          body = send_request('DeleteCloudNativeAPIGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关服务

        # @param request: Request instance for DeleteCloudNativeAPIGatewayService.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayServiceResponse`
        def DeleteCloudNativeAPIGatewayService(request)
          body = send_request('DeleteCloudNativeAPIGatewayService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除云原生网关的限流插件(服务)

        # @param request: Request instance for DeleteCloudNativeAPIGatewayServiceRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayServiceRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteCloudNativeAPIGatewayServiceRateLimitResponse`
        def DeleteCloudNativeAPIGatewayServiceRateLimit(request)
          body = send_request('DeleteCloudNativeAPIGatewayServiceRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteCloudNativeAPIGatewayServiceRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除配置文件分组

        # @param request: Request instance for DeleteConfigFileGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteConfigFileGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteConfigFileGroupResponse`
        def DeleteConfigFileGroup(request)
          body = send_request('DeleteConfigFileGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConfigFileGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除配置发布

        # @param request: Request instance for DeleteConfigFileReleases.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteConfigFileReleasesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteConfigFileReleasesResponse`
        def DeleteConfigFileReleases(request)
          body = send_request('DeleteConfigFileReleases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConfigFileReleasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除配置文件

        # @param request: Request instance for DeleteConfigFiles.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteConfigFilesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteConfigFilesResponse`
        def DeleteConfigFiles(request)
          body = send_request('DeleteConfigFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteConfigFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除引擎实例

        # @param request: Request instance for DeleteEngine.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteEngineRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteEngineResponse`
        def DeleteEngine(request)
          body = send_request('DeleteEngine', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteEngineResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除治理中心服务别名

        # @param request: Request instance for DeleteGovernanceAliases.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceAliasesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceAliasesResponse`
        def DeleteGovernanceAliases(request)
          body = send_request('DeleteGovernanceAliases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGovernanceAliasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除服务实例

        # @param request: Request instance for DeleteGovernanceInstances.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceInstancesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceInstancesResponse`
        def DeleteGovernanceInstances(request)
          body = send_request('DeleteGovernanceInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGovernanceInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除治理中心服务实例

        # @param request: Request instance for DeleteGovernanceInstancesByHost.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceInstancesByHostRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceInstancesByHostResponse`
        def DeleteGovernanceInstancesByHost(request)
          body = send_request('DeleteGovernanceInstancesByHost', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGovernanceInstancesByHostResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除泳道组

        # @param request: Request instance for DeleteGovernanceLaneGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceLaneGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceLaneGroupsResponse`
        def DeleteGovernanceLaneGroups(request)
          body = send_request('DeleteGovernanceLaneGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGovernanceLaneGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除治理中心命名空间

        # @param request: Request instance for DeleteGovernanceNamespaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceNamespacesResponse`
        def DeleteGovernanceNamespaces(request)
          body = send_request('DeleteGovernanceNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGovernanceNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除治理中心服务

        # @param request: Request instance for DeleteGovernanceServices.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceServicesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteGovernanceServicesResponse`
        def DeleteGovernanceServices(request)
          body = send_request('DeleteGovernanceServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteGovernanceServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除网关实例分组

        # @param request: Request instance for DeleteNativeGatewayServerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteNativeGatewayServerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteNativeGatewayServerGroupResponse`
        def DeleteNativeGatewayServerGroup(request)
          body = send_request('DeleteNativeGatewayServerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNativeGatewayServerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除网关服务来源实例

        # @param request: Request instance for DeleteNativeGatewayServiceSource.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteNativeGatewayServiceSourceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteNativeGatewayServiceSourceResponse`
        def DeleteNativeGatewayServiceSource(request)
          body = send_request('DeleteNativeGatewayServiceSource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNativeGatewayServiceSourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 WAF 防护域名

        # @param request: Request instance for DeleteWafDomains.
        # @type request: :class:`Tencentcloud::tse::V20201207::DeleteWafDomainsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DeleteWafDomainsResponse`
        def DeleteWafDomains(request)
          body = send_request('DeleteWafDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWafDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按一种业务资源类型分页查询绑定候选及 Route 占用情况。编辑策略时传 PolicyId 排除自身占用，选择时同时检查 Supported 和 Occupied。当前屏蔽的 Dify/Custom Agent、Legacy SSE MCP 不进入可绑定列表。创建策略时使用 ResourceId，不使用 RouteIds。

        # 本产品为 tse，版本为 2020-12-07。公共参数及签名按云 API 规范配置；在 API Explorer 选择目标环境，示例正文仅为业务参数，中文诊断示例以公共参数 Language=zh-CN 为前提。响应业务字段统一位于 Response.Result，Response.RequestId 为云 API 请求 ID；HTTP 成功不代表 Result.Success=true。示例 ID、域名和鉴权值均为占位内容，须替换为实际值。

        # @param request: Request instance for DescribeAIGWCustomGuardrailBindableResources.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailBindableResourcesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailBindableResourcesResponse`
        def DescribeAIGWCustomGuardrailBindableResources(request)
          body = send_request('DescribeAIGWCustomGuardrailBindableResources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIGWCustomGuardrailBindableResourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询当前控制面支持的协议分类、业务资源类型、审核方向及限制。会校验网关版本和插件可用性。Limits 是能力说明，不等于创建/修改策略可配置的字段，也不是逐个数据面实例的实时状态。

        # 本产品为 tse，版本为 2020-12-07。公共参数及签名按云 API 规范配置；在 API Explorer 选择目标环境，示例正文仅为业务参数，中文诊断示例以公共参数 Language=zh-CN 为前提。响应业务字段统一位于 Response.Result，Response.RequestId 为云 API 请求 ID；HTTP 成功不代表 Result.Success=true。示例 ID、域名和鉴权值均为占位内容，须替换为实际值。

        # @param request: Request instance for DescribeAIGWCustomGuardrailCapabilities.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailCapabilitiesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailCapabilitiesResponse`
        def DescribeAIGWCustomGuardrailCapabilities(request)
          body = send_request('DescribeAIGWCustomGuardrailCapabilities', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIGWCustomGuardrailCapabilitiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从网关 RuntimeEventLog 对应 CLS 主题分页查询审核记录，调用前需开启日志投递。按时间倒序返回，查询时间入参为 Unix 秒，记录 Timestamp 为 Unix 毫秒；同一流式业务请求可有多次审核记录。当前查询无导出接口的 1000 条截断限制，使用 Offset/Limit 翻页。

        # 本产品为 tse，版本为 2020-12-07。公共参数及签名按云 API 规范配置；在 API Explorer 选择目标环境，示例正文仅为业务参数，中文诊断示例以公共参数 Language=zh-CN 为前提。响应业务字段统一位于 Response.Result，Response.RequestId 为云 API 请求 ID；HTTP 成功不代表 Result.Success=true。示例 ID、域名和鉴权值均为占位内容，须替换为实际值。

        # @param request: Request instance for DescribeAIGWCustomGuardrailHits.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailHitsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailHitsResponse`
        def DescribeAIGWCustomGuardrailHits(request)
          body = send_request('DescribeAIGWCustomGuardrailHits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIGWCustomGuardrailHitsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询已有策略、脱敏鉴权配置、资源绑定与配置同步状态。Result 本身就是策略对象，不是 Result.Policy。密钥不返回明文，编辑时省略 ApiKey 即可保留。

        # 本产品为 tse，版本为 2020-12-07。公共参数及签名按云 API 规范配置；在 API Explorer 选择目标环境，示例正文仅为业务参数，中文诊断示例以公共参数 Language=zh-CN 为前提。响应业务字段统一位于 Response.Result，Response.RequestId 为云 API 请求 ID；HTTP 成功不代表 Result.Success=true。示例 ID、域名和鉴权值均为占位内容，须替换为实际值。

        # @param request: Request instance for DescribeAIGWCustomGuardrailPolicy.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailPolicyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailPolicyResponse`
        def DescribeAIGWCustomGuardrailPolicy(request)
          body = send_request('DescribeAIGWCustomGuardrailPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIGWCustomGuardrailPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 按网关分页查询策略；Limit 必填，范围 1～100，Offset 默认 0。支持名称/描述搜索及配置过滤；同项多值 OR，不同过滤项 AND。Result.DataList 为策略数组。

        # 本产品为 tse，版本为 2020-12-07。公共参数及签名按云 API 规范配置；在 API Explorer 选择目标环境，示例正文仅为业务参数，中文诊断示例以公共参数 Language=zh-CN 为前提。响应业务字段统一位于 Response.Result，Response.RequestId 为云 API 请求 ID；HTTP 成功不代表 Result.Success=true。示例 ID、域名和鉴权值均为占位内容，须替换为实际值。

        # @param request: Request instance for DescribeAIGWCustomGuardrailPolicyList.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailPolicyListRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeAIGWCustomGuardrailPolicyListResponse`
        def DescribeAIGWCustomGuardrailPolicyList(request)
          body = send_request('DescribeAIGWCustomGuardrailPolicyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAIGWCustomGuardrailPolicyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取全量配置文件模板列表

        # @param request: Request instance for DescribeAllConfigFileTemplates.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeAllConfigFileTemplatesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeAllConfigFileTemplatesResponse`
        def DescribeAllConfigFileTemplates(request)
          body = send_request('DescribeAllConfigFileTemplates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllConfigFileTemplatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看弹性伸缩策略列表

        # @param request: Request instance for DescribeAutoScalerResourceStrategies.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeAutoScalerResourceStrategiesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeAutoScalerResourceStrategiesResponse`
        def DescribeAutoScalerResourceStrategies(request)
          body = send_request('DescribeAutoScalerResourceStrategies', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoScalerResourceStrategiesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看弹性伸缩策略绑定的网关分组

        # @param request: Request instance for DescribeAutoScalerResourceStrategyBindingGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeAutoScalerResourceStrategyBindingGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeAutoScalerResourceStrategyBindingGroupsResponse`
        def DescribeAutoScalerResourceStrategyBindingGroups(request)
          body = send_request('DescribeAutoScalerResourceStrategyBindingGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAutoScalerResourceStrategyBindingGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关服务和路由列表

        # @param request: Request instance for DescribeCNGWServicesWithRoutes.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCNGWServicesWithRoutesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCNGWServicesWithRoutesResponse`
        def DescribeCNGWServicesWithRoutes(request)
          body = send_request('DescribeCNGWServicesWithRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCNGWServicesWithRoutesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生API网关实例信息

        # @param request: Request instance for DescribeCloudNativeAPIGateway.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayResponse`
        def DescribeCloudNativeAPIGateway(request)
          body = send_request('DescribeCloudNativeAPIGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关跨域配置

        # @param request: Request instance for DescribeCloudNativeAPIGatewayCORS.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCORSRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCORSResponse`
        def DescribeCloudNativeAPIGatewayCORS(request)
          body = send_request('DescribeCloudNativeAPIGatewayCORS', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayCORSResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关灰度规则列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayCanaryRules.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCanaryRulesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCanaryRulesResponse`
        def DescribeCloudNativeAPIGatewayCanaryRules(request)
          body = send_request('DescribeCloudNativeAPIGatewayCanaryRules', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayCanaryRulesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关单个证书详情

        # @param request: Request instance for DescribeCloudNativeAPIGatewayCertificateDetails.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCertificateDetailsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCertificateDetailsResponse`
        def DescribeCloudNativeAPIGatewayCertificateDetails(request)
          body = send_request('DescribeCloudNativeAPIGatewayCertificateDetails', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayCertificateDetailsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关证书列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayCertificates.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCertificatesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayCertificatesResponse`
        def DescribeCloudNativeAPIGatewayCertificates(request)
          body = send_request('DescribeCloudNativeAPIGatewayCertificates', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayCertificatesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生API网关实例网络配置信息

        # @param request: Request instance for DescribeCloudNativeAPIGatewayConfig.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConfigRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConfigResponse`
        def DescribeCloudNativeAPIGatewayConfig(request)
          body = send_request('DescribeCloudNativeAPIGatewayConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消费者详情。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayConsumer.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConsumerRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConsumerResponse`
        def DescribeCloudNativeAPIGatewayConsumer(request)
          body = send_request('DescribeCloudNativeAPIGatewayConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消费者组详情。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayConsumerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConsumerGroupResponse`
        def DescribeCloudNativeAPIGatewayConsumerGroup(request)
          body = send_request('DescribeCloudNativeAPIGatewayConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消费者组列表。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayConsumerGroupList.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConsumerGroupListRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConsumerGroupListResponse`
        def DescribeCloudNativeAPIGatewayConsumerGroupList(request)
          body = send_request('DescribeCloudNativeAPIGatewayConsumerGroupList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayConsumerGroupListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询消费者列表。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayConsumerList.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConsumerListRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayConsumerListResponse`
        def DescribeCloudNativeAPIGatewayConsumerList(request)
          body = send_request('DescribeCloudNativeAPIGatewayConsumerList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayConsumerListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关访问控制

        # @param request: Request instance for DescribeCloudNativeAPIGatewayIPRestriction.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayIPRestrictionRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayIPRestrictionResponse`
        def DescribeCloudNativeAPIGatewayIPRestriction(request)
          body = send_request('DescribeCloudNativeAPIGatewayIPRestriction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayIPRestrictionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据公网IP查询云原生网关实例信息

        # @param request: Request instance for DescribeCloudNativeAPIGatewayInfoByIp.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayInfoByIpRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayInfoByIpResponse`
        def DescribeCloudNativeAPIGatewayInfoByIp(request)
          body = send_request('DescribeCloudNativeAPIGatewayInfoByIp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayInfoByIpResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个 LLM 模型 API 详情。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMModelAPI.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayLLMModelAPIRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayLLMModelAPIResponse`
        def DescribeCloudNativeAPIGatewayLLMModelAPI(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMModelAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMModelAPIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定网关实例下的所有 LLM 模型 API 列表。支持按名称关键词模糊搜索、按过滤器筛选，以及分页查询。用于绑定场景时，可通过 ConsumerGroupId 和 UseToBind 参数筛选可绑定的模型 API。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMModelAPIs.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayLLMModelAPIsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayLLMModelAPIsResponse`
        def DescribeCloudNativeAPIGatewayLLMModelAPIs(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMModelAPIs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMModelAPIsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询单个 LLM 模型服务详情。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMModelService.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayLLMModelServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayLLMModelServiceResponse`
        def DescribeCloudNativeAPIGatewayLLMModelService(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 LLM 模型服务列表。

        # @param request: Request instance for DescribeCloudNativeAPIGatewayLLMModelServices.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayLLMModelServicesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayLLMModelServicesResponse`
        def DescribeCloudNativeAPIGatewayLLMModelServices(request)
          body = send_request('DescribeCloudNativeAPIGatewayLLMModelServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayLLMModelServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生网关节点列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayNodes.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayNodesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayNodesResponse`
        def DescribeCloudNativeAPIGatewayNodes(request)
          body = send_request('DescribeCloudNativeAPIGatewayNodes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayNodesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生API网关实例端口信息

        # @param request: Request instance for DescribeCloudNativeAPIGatewayPorts.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayPortsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayPortsResponse`
        def DescribeCloudNativeAPIGatewayPorts(request)
          body = send_request('DescribeCloudNativeAPIGatewayPorts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayPortsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关的限流插件(路由)

        # @param request: Request instance for DescribeCloudNativeAPIGatewayRouteRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRouteRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRouteRateLimitResponse`
        def DescribeCloudNativeAPIGatewayRouteRateLimit(request)
          body = send_request('DescribeCloudNativeAPIGatewayRouteRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayRouteRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关路由列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayRoutes.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRoutesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayRoutesResponse`
        def DescribeCloudNativeAPIGatewayRoutes(request)
          body = send_request('DescribeCloudNativeAPIGatewayRoutes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayRoutesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询密钥详情（SecretValue 字段会被掩码）。

        # @param request: Request instance for DescribeCloudNativeAPIGatewaySecretKey.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaySecretKeyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaySecretKeyResponse`
        def DescribeCloudNativeAPIGatewaySecretKey(request)
          body = send_request('DescribeCloudNativeAPIGatewaySecretKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewaySecretKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询密钥列表。

        # @param request: Request instance for DescribeCloudNativeAPIGatewaySecretKeyList.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaySecretKeyListRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaySecretKeyListResponse`
        def DescribeCloudNativeAPIGatewaySecretKeyList(request)
          body = send_request('DescribeCloudNativeAPIGatewaySecretKeyList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewaySecretKeyListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询密钥明文值（KMS 类型密钥不可获取）。

        # @param request: Request instance for DescribeCloudNativeAPIGatewaySecretKeyValue.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaySecretKeyValueRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaySecretKeyValueResponse`
        def DescribeCloudNativeAPIGatewaySecretKeyValue(request)
          body = send_request('DescribeCloudNativeAPIGatewaySecretKeyValue', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewaySecretKeyValueResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关的限流插件(服务)

        # @param request: Request instance for DescribeCloudNativeAPIGatewayServiceRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServiceRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServiceRateLimitResponse`
        def DescribeCloudNativeAPIGatewayServiceRateLimit(request)
          body = send_request('DescribeCloudNativeAPIGatewayServiceRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayServiceRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关服务列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayServices.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServicesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServicesResponse`
        def DescribeCloudNativeAPIGatewayServices(request)
          body = send_request('DescribeCloudNativeAPIGatewayServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 轻量查询云原生网关服务列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayServicesLight.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServicesLightRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayServicesLightResponse`
        def DescribeCloudNativeAPIGatewayServicesLight(request)
          body = send_request('DescribeCloudNativeAPIGatewayServicesLight', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayServicesLightResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生网关服务详情下的Upstream列表

        # @param request: Request instance for DescribeCloudNativeAPIGatewayUpstream.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayUpstreamRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewayUpstreamResponse`
        def DescribeCloudNativeAPIGatewayUpstream(request)
          body = send_request('DescribeCloudNativeAPIGatewayUpstream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewayUpstreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生API网关实例列表

        # @param request: Request instance for DescribeCloudNativeAPIGateways.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaysRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeCloudNativeAPIGatewaysResponse`
        def DescribeCloudNativeAPIGateways(request)
          body = send_request('DescribeCloudNativeAPIGateways', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeCloudNativeAPIGatewaysResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据命名空间、组、名字查找配置文件

        # @param request: Request instance for DescribeConfigFile.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileResponse`
        def DescribeConfigFile(request)
          body = send_request('DescribeConfigFile', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigFileResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据条件分页查询配置文件组

        # @param request: Request instance for DescribeConfigFileGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileGroupsResponse`
        def DescribeConfigFileGroups(request)
          body = send_request('DescribeConfigFileGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigFileGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取配置文件发布

        # @param request: Request instance for DescribeConfigFileRelease.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileReleaseRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileReleaseResponse`
        def DescribeConfigFileRelease(request)
          body = send_request('DescribeConfigFileRelease', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigFileReleaseResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取配置文件发布历史列表

        # @param request: Request instance for DescribeConfigFileReleaseHistories.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileReleaseHistoriesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileReleaseHistoriesResponse`
        def DescribeConfigFileReleaseHistories(request)
          body = send_request('DescribeConfigFileReleaseHistories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigFileReleaseHistoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询某个配置所有版本信息

        # @param request: Request instance for DescribeConfigFileReleaseVersions.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileReleaseVersionsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileReleaseVersionsResponse`
        def DescribeConfigFileReleaseVersions(request)
          body = send_request('DescribeConfigFileReleaseVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigFileReleaseVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询配置版本列表

        # @param request: Request instance for DescribeConfigFileReleases.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileReleasesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeConfigFileReleasesResponse`
        def DescribeConfigFileReleases(request)
          body = send_request('DescribeConfigFileReleases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigFileReleasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据命名空间、组名、名称、标签查询配置文件列表

        # @param request: Request instance for DescribeConfigFiles.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeConfigFilesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeConfigFilesResponse`
        def DescribeConfigFiles(request)
          body = send_request('DescribeConfigFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 根据group查询配置文件列表

        # @param request: Request instance for DescribeConfigFilesByGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeConfigFilesByGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeConfigFilesByGroupResponse`
        def DescribeConfigFilesByGroup(request)
          body = send_request('DescribeConfigFilesByGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigFilesByGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询治理中心服务别名列表

        # @param request: Request instance for DescribeGovernanceAliases.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceAliasesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceAliasesResponse`
        def DescribeGovernanceAliases(request)
          body = send_request('DescribeGovernanceAliases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGovernanceAliasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务实例

        # @param request: Request instance for DescribeGovernanceInstances.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceInstancesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceInstancesResponse`
        def DescribeGovernanceInstances(request)
          body = send_request('DescribeGovernanceInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGovernanceInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询泳道组列表

        # @param request: Request instance for DescribeGovernanceLaneGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceLaneGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceLaneGroupsResponse`
        def DescribeGovernanceLaneGroups(request)
          body = send_request('DescribeGovernanceLaneGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGovernanceLaneGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务治理中心命名空间列表

        # @param request: Request instance for DescribeGovernanceNamespaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceNamespacesResponse`
        def DescribeGovernanceNamespaces(request)
          body = send_request('DescribeGovernanceNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGovernanceNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务下契约版本列表

        # @param request: Request instance for DescribeGovernanceServiceContractVersions.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceServiceContractVersionsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceServiceContractVersionsResponse`
        def DescribeGovernanceServiceContractVersions(request)
          body = send_request('DescribeGovernanceServiceContractVersions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGovernanceServiceContractVersionsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询服务契约定义列表

        # @param request: Request instance for DescribeGovernanceServiceContracts.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceServiceContractsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceServiceContractsResponse`
        def DescribeGovernanceServiceContracts(request)
          body = send_request('DescribeGovernanceServiceContracts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGovernanceServiceContractsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询治理中心服务列表

        # @param request: Request instance for DescribeGovernanceServices.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceServicesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeGovernanceServicesResponse`
        def DescribeGovernanceServices(request)
          body = send_request('DescribeGovernanceServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeGovernanceServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查看实例的标签信息

        # @param request: Request instance for DescribeInstanceTagInfos.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeInstanceTagInfosRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeInstanceTagInfosResponse`
        def DescribeInstanceTagInfos(request)
          body = send_request('DescribeInstanceTagInfos', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceTagInfosResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Nacos类型引擎实例副本信息

        # @param request: Request instance for DescribeNacosReplicas.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeNacosReplicasRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeNacosReplicasResponse`
        def DescribeNacosReplicas(request)
          body = send_request('DescribeNacosReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNacosReplicasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询nacos服务接口列表

        # @param request: Request instance for DescribeNacosServerInterfaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeNacosServerInterfacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeNacosServerInterfacesResponse`
        def DescribeNacosServerInterfaces(request)
          body = send_request('DescribeNacosServerInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNacosServerInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生网关分组信息

        # @param request: Request instance for DescribeNativeGatewayServerGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeNativeGatewayServerGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeNativeGatewayServerGroupsResponse`
        def DescribeNativeGatewayServerGroups(request)
          body = send_request('DescribeNativeGatewayServerGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNativeGatewayServerGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询网关服务来源实例列表

        # @param request: Request instance for DescribeNativeGatewayServiceSources.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeNativeGatewayServiceSourcesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeNativeGatewayServiceSourcesResponse`
        def DescribeNativeGatewayServiceSources(request)
          body = send_request('DescribeNativeGatewayServiceSources', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNativeGatewayServiceSourcesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生网关服务详情

        # @param request: Request instance for DescribeOneCloudNativeAPIGatewayService.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeOneCloudNativeAPIGatewayServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeOneCloudNativeAPIGatewayServiceResponse`
        def DescribeOneCloudNativeAPIGatewayService(request)
          body = send_request('DescribeOneCloudNativeAPIGatewayService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeOneCloudNativeAPIGatewayServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询公网地址信息

        # @param request: Request instance for DescribePublicAddressConfig.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribePublicAddressConfigRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribePublicAddressConfigResponse`
        def DescribePublicAddressConfig(request)
          body = send_request('DescribePublicAddressConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicAddressConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询云原生API网关实例公网详情

        # @param request: Request instance for DescribePublicNetwork.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribePublicNetworkRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribePublicNetworkResponse`
        def DescribePublicNetwork(request)
          body = send_request('DescribePublicNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePublicNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询引擎实例访问地址

        # @param request: Request instance for DescribeSREInstanceAccessAddress.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeSREInstanceAccessAddressRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeSREInstanceAccessAddressResponse`
        def DescribeSREInstanceAccessAddress(request)
          body = send_request('DescribeSREInstanceAccessAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSREInstanceAccessAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询引擎实例列表

        # @param request: Request instance for DescribeSREInstances.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeSREInstancesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeSREInstancesResponse`
        def DescribeSREInstances(request)
          body = send_request('DescribeSREInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSREInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取云原生网关服务健康检查配置

        # @param request: Request instance for DescribeUpstreamHealthCheckConfig.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeUpstreamHealthCheckConfigRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeUpstreamHealthCheckConfigResponse`
        def DescribeUpstreamHealthCheckConfig(request)
          body = send_request('DescribeUpstreamHealthCheckConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUpstreamHealthCheckConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 WAF 防护域名

        # @param request: Request instance for DescribeWafDomains.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeWafDomainsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeWafDomainsResponse`
        def DescribeWafDomains(request)
          body = send_request('DescribeWafDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWafDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取 WAF 防护状态

        # @param request: Request instance for DescribeWafProtection.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeWafProtectionRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeWafProtectionResponse`
        def DescribeWafProtection(request)
          body = send_request('DescribeWafProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWafProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询Zookeeper类型注册引擎实例副本信息

        # @param request: Request instance for DescribeZookeeperReplicas.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperReplicasRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperReplicasResponse`
        def DescribeZookeeperReplicas(request)
          body = send_request('DescribeZookeeperReplicas', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZookeeperReplicasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询zookeeper服务接口列表

        # @param request: Request instance for DescribeZookeeperServerInterfaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperServerInterfacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeZookeeperServerInterfacesResponse`
        def DescribeZookeeperServerInterfaces(request)
          body = send_request('DescribeZookeeperServerInterfaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeZookeeperServerInterfacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从 RuntimeEventLog 对应 CLS 主题同步导出审核记录，需先开启投递。单次最多 1000 条，可选择 csv（默认）或 json；Result.Content 是 Base64 编码文件内容，不是下载链接。Truncated=true 时可能还有更多记录，请缩小时间范围分别导出。

        # 本产品为 tse，版本为 2020-12-07。公共参数及签名按云 API 规范配置；在 API Explorer 选择目标环境，示例正文仅为业务参数，中文诊断示例以公共参数 Language=zh-CN 为前提。响应业务字段统一位于 Response.Result，Response.RequestId 为云 API 请求 ID；HTTP 成功不代表 Result.Success=true。示例 ID、域名和鉴权值均为占位内容，须替换为实际值。

        # @param request: Request instance for ExportAIGWCustomGuardrailHits.
        # @type request: :class:`Tencentcloud::tse::V20201207::ExportAIGWCustomGuardrailHitsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ExportAIGWCustomGuardrailHitsResponse`
        def ExportAIGWCustomGuardrailHits(request)
          body = send_request('ExportAIGWCustomGuardrailHits', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ExportAIGWCustomGuardrailHitsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 局部修改已有策略并重新同步。省略字段保留原值，显式 false/0/[] 与省略不同；数组按整体替换，Scope 传入时替换完整范围。切换 AddressMode 时会自动清除未显式传入的另一模式地址字段；AuthType=none 会清除已有密钥并默认清空 HeaderName。请检查 Result.Success 和 FailedResources。网关需满足最低版本 3.9.6，且已安装、启用并加载 cngw-ai-custom-guardrail。创建、修改、删除要求网关处于稳定 Running 状态，升级/回滚/撤销升级期间不能修改策略。

        # 本产品为 tse，版本为 2020-12-07。公共参数及签名按云 API 规范配置；在 API Explorer 选择目标环境，示例正文仅为业务参数，中文诊断示例以公共参数 Language=zh-CN 为前提。响应业务字段统一位于 Response.Result，Response.RequestId 为云 API 请求 ID；HTTP 成功不代表 Result.Success=true。示例 ID、域名和鉴权值均为占位内容，须替换为实际值。

        # 输入约束：新配置只接受 field_mapping，不再默认为 standard_v2。创建时鉴权和检测行为必须完整填写；修改为 PATCH，省略保留，显式空值不补默认值。存量 standard_v2 策略仍可查询、删除或直接停用；修改其判定配置或重新启用前需迁移到 field_mapping。条件必填由后端按完整配置校验，非法配置不写库、不下发。

        # @param request: Request instance for ModifyAIGWCustomGuardrailPolicy.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyAIGWCustomGuardrailPolicyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyAIGWCustomGuardrailPolicyResponse`
        def ModifyAIGWCustomGuardrailPolicy(request)
          body = send_request('ModifyAIGWCustomGuardrailPolicy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAIGWCustomGuardrailPolicyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新弹性伸缩策略

        # @param request: Request instance for ModifyAutoScalerResourceStrategy.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyAutoScalerResourceStrategyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyAutoScalerResourceStrategyResponse`
        def ModifyAutoScalerResourceStrategy(request)
          body = send_request('ModifyAutoScalerResourceStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAutoScalerResourceStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例基础信息

        # @param request: Request instance for ModifyCloudNativeAPIGateway.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayResponse`
        def ModifyCloudNativeAPIGateway(request)
          body = send_request('ModifyCloudNativeAPIGateway', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关的灰度规则

        # @param request: Request instance for ModifyCloudNativeAPIGatewayCanaryRule.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayCanaryRuleRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayCanaryRuleResponse`
        def ModifyCloudNativeAPIGatewayCanaryRule(request)
          body = send_request('ModifyCloudNativeAPIGatewayCanaryRule', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayCanaryRuleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新云原生网关证书

        # @param request: Request instance for ModifyCloudNativeAPIGatewayCertificate.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayCertificateRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayCertificateResponse`
        def ModifyCloudNativeAPIGatewayCertificate(request)
          body = send_request('ModifyCloudNativeAPIGatewayCertificate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayCertificateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改消费者。

        # @param request: Request instance for ModifyCloudNativeAPIGatewayConsumer.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayConsumerRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayConsumerResponse`
        def ModifyCloudNativeAPIGatewayConsumer(request)
          body = send_request('ModifyCloudNativeAPIGatewayConsumer', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayConsumerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改消费者组。

        # @param request: Request instance for ModifyCloudNativeAPIGatewayConsumerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayConsumerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayConsumerGroupResponse`
        def ModifyCloudNativeAPIGatewayConsumerGroup(request)
          body = send_request('ModifyCloudNativeAPIGatewayConsumerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayConsumerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 LLM 模型 API。

        # @param request: Request instance for ModifyCloudNativeAPIGatewayLLMModelAPI.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayLLMModelAPIRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayLLMModelAPIResponse`
        def ModifyCloudNativeAPIGatewayLLMModelAPI(request)
          body = send_request('ModifyCloudNativeAPIGatewayLLMModelAPI', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayLLMModelAPIResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 LLM 模型服务。

        # @param request: Request instance for ModifyCloudNativeAPIGatewayLLMModelService.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayLLMModelServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayLLMModelServiceResponse`
        def ModifyCloudNativeAPIGatewayLLMModelService(request)
          body = send_request('ModifyCloudNativeAPIGatewayLLMModelService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayLLMModelServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关路由

        # @param request: Request instance for ModifyCloudNativeAPIGatewayRoute.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRouteRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRouteResponse`
        def ModifyCloudNativeAPIGatewayRoute(request)
          body = send_request('ModifyCloudNativeAPIGatewayRoute', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayRouteResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关限流插件(路由)

        # @param request: Request instance for ModifyCloudNativeAPIGatewayRouteRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRouteRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayRouteRateLimitResponse`
        def ModifyCloudNativeAPIGatewayRouteRateLimit(request)
          body = send_request('ModifyCloudNativeAPIGatewayRouteRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayRouteRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改密钥启用状态。

        # @param request: Request instance for ModifyCloudNativeAPIGatewaySecretKeyStatus.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewaySecretKeyStatusRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewaySecretKeyStatusResponse`
        def ModifyCloudNativeAPIGatewaySecretKeyStatus(request)
          body = send_request('ModifyCloudNativeAPIGatewaySecretKeyStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewaySecretKeyStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关服务

        # @param request: Request instance for ModifyCloudNativeAPIGatewayService.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayServiceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayServiceResponse`
        def ModifyCloudNativeAPIGatewayService(request)
          body = send_request('ModifyCloudNativeAPIGatewayService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关限流插件(服务)

        # @param request: Request instance for ModifyCloudNativeAPIGatewayServiceRateLimit.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayServiceRateLimitRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyCloudNativeAPIGatewayServiceRateLimitResponse`
        def ModifyCloudNativeAPIGatewayServiceRateLimit(request)
          body = send_request('ModifyCloudNativeAPIGatewayServiceRateLimit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyCloudNativeAPIGatewayServiceRateLimitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 批量修改配置文件组

        # @param request: Request instance for ModifyConfigFileGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyConfigFileGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyConfigFileGroupResponse`
        def ModifyConfigFileGroup(request)
          body = send_request('ModifyConfigFileGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConfigFileGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改配置文件

        # @param request: Request instance for ModifyConfigFiles.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyConfigFilesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyConfigFilesResponse`
        def ModifyConfigFiles(request)
          body = send_request('ModifyConfigFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConfigFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改网关实例Konga网络配置

        # @param request: Request instance for ModifyConsoleNetwork.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyConsoleNetworkRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyConsoleNetworkResponse`
        def ModifyConsoleNetwork(request)
          body = send_request('ModifyConsoleNetwork', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyConsoleNetworkResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改治理中心服务别名

        # @param request: Request instance for ModifyGovernanceAlias.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceAliasRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceAliasResponse`
        def ModifyGovernanceAlias(request)
          body = send_request('ModifyGovernanceAlias', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGovernanceAliasResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改治理中心服务实例

        # @param request: Request instance for ModifyGovernanceInstances.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceInstancesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceInstancesResponse`
        def ModifyGovernanceInstances(request)
          body = send_request('ModifyGovernanceInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGovernanceInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建泳道组

        # @param request: Request instance for ModifyGovernanceLaneGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceLaneGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceLaneGroupsResponse`
        def ModifyGovernanceLaneGroups(request)
          body = send_request('ModifyGovernanceLaneGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGovernanceLaneGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改治理中心命名空间

        # @param request: Request instance for ModifyGovernanceNamespaces.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceNamespacesResponse`
        def ModifyGovernanceNamespaces(request)
          body = send_request('ModifyGovernanceNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGovernanceNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改治理中心服务

        # @param request: Request instance for ModifyGovernanceServices.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceServicesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyGovernanceServicesResponse`
        def ModifyGovernanceServices(request)
          body = send_request('ModifyGovernanceServices', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyGovernanceServicesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例分组基础信息

        # @param request: Request instance for ModifyNativeGatewayServerGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyNativeGatewayServerGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyNativeGatewayServerGroupResponse`
        def ModifyNativeGatewayServerGroup(request)
          body = send_request('ModifyNativeGatewayServerGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNativeGatewayServerGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改网关服务来源

        # @param request: Request instance for ModifyNativeGatewayServiceSource.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyNativeGatewayServiceSourceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyNativeGatewayServiceSourceResponse`
        def ModifyNativeGatewayServiceSource(request)
          body = send_request('ModifyNativeGatewayServiceSource', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNativeGatewayServiceSourceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例Kong访问策略，支持白名单或者黑名单。

        # @param request: Request instance for ModifyNetworkAccessStrategy.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyNetworkAccessStrategyRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyNetworkAccessStrategyResponse`
        def ModifyNetworkAccessStrategy(request)
          body = send_request('ModifyNetworkAccessStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkAccessStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例网络基本信息，例如带宽以及描述、规格升级，只支持修改客户端公网/内网的信息。

        # @param request: Request instance for ModifyNetworkBasicInfo.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyNetworkBasicInfoRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyNetworkBasicInfoResponse`
        def ModifyNetworkBasicInfo(request)
          body = send_request('ModifyNetworkBasicInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNetworkBasicInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关上游实例节点健康状态

        # @param request: Request instance for ModifyUpstreamNodeStatus.
        # @type request: :class:`Tencentcloud::tse::V20201207::ModifyUpstreamNodeStatusRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ModifyUpstreamNodeStatusResponse`
        def ModifyUpstreamNodeStatus(request)
          body = send_request('ModifyUpstreamNodeStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUpstreamNodeStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 开启 WAF 防护

        # @param request: Request instance for OpenWafProtection.
        # @type request: :class:`Tencentcloud::tse::V20201207::OpenWafProtectionRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::OpenWafProtectionResponse`
        def OpenWafProtection(request)
          body = send_request('OpenWafProtection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = OpenWafProtectionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 发布配置文件

        # @param request: Request instance for PublishConfigFiles.
        # @type request: :class:`Tencentcloud::tse::V20201207::PublishConfigFilesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::PublishConfigFilesResponse`
        def PublishConfigFiles(request)
          body = send_request('PublishConfigFiles', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = PublishConfigFilesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 从资源（模型 API / MCP Server）移除消费者组授权。

        # @param request: Request instance for RemoveCloudNativeAPIGatewayConsumerGroupAuth.
        # @type request: :class:`Tencentcloud::tse::V20201207::RemoveCloudNativeAPIGatewayConsumerGroupAuthRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::RemoveCloudNativeAPIGatewayConsumerGroupAuthResponse`
        def RemoveCloudNativeAPIGatewayConsumerGroupAuth(request)
          body = send_request('RemoveCloudNativeAPIGatewayConsumerGroupAuth', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveCloudNativeAPIGatewayConsumerGroupAuthResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 将消费者从消费者组移除。

        # @param request: Request instance for RemoveCloudNativeAPIGatewayConsumerInGroup.
        # @type request: :class:`Tencentcloud::tse::V20201207::RemoveCloudNativeAPIGatewayConsumerInGroupRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::RemoveCloudNativeAPIGatewayConsumerInGroupResponse`
        def RemoveCloudNativeAPIGatewayConsumerInGroup(request)
          body = send_request('RemoveCloudNativeAPIGatewayConsumerInGroup', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RemoveCloudNativeAPIGatewayConsumerInGroupResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重启微服务引擎实例

        # @param request: Request instance for RestartSREInstance.
        # @type request: :class:`Tencentcloud::tse::V20201207::RestartSREInstanceRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::RestartSREInstanceResponse`
        def RestartSREInstance(request)
          body = send_request('RestartSREInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RestartSREInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 回滚配置发布

        # @param request: Request instance for RollbackConfigFileReleases.
        # @type request: :class:`Tencentcloud::tse::V20201207::RollbackConfigFileReleasesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::RollbackConfigFileReleasesResponse`
        def RollbackConfigFileReleases(request)
          body = send_request('RollbackConfigFileReleases', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RollbackConfigFileReleasesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 弹性伸缩策略批量解绑网关分组

        # @param request: Request instance for UnbindAutoScalerResourceStrategyFromGroups.
        # @type request: :class:`Tencentcloud::tse::V20201207::UnbindAutoScalerResourceStrategyFromGroupsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UnbindAutoScalerResourceStrategyFromGroupsResponse`
        def UnbindAutoScalerResourceStrategyFromGroups(request)
          body = send_request('UnbindAutoScalerResourceStrategyFromGroups', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindAutoScalerResourceStrategyFromGroupsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生网关证书信息

        # @param request: Request instance for UpdateCloudNativeAPIGatewayCertificateInfo.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateCloudNativeAPIGatewayCertificateInfoRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateCloudNativeAPIGatewayCertificateInfoResponse`
        def UpdateCloudNativeAPIGatewayCertificateInfo(request)
          body = send_request('UpdateCloudNativeAPIGatewayCertificateInfo', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCloudNativeAPIGatewayCertificateInfoResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改云原生API网关实例的节点规格信息，例如节点扩缩容或者升降配

        # @param request: Request instance for UpdateCloudNativeAPIGatewaySpec.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateCloudNativeAPIGatewaySpecRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateCloudNativeAPIGatewaySpecResponse`
        def UpdateCloudNativeAPIGatewaySpec(request)
          body = send_request('UpdateCloudNativeAPIGatewaySpec', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateCloudNativeAPIGatewaySpecResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改引擎公网访问配置

        # @param request: Request instance for UpdateEngineInternetAccess.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateEngineInternetAccessRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateEngineInternetAccessResponse`
        def UpdateEngineInternetAccess(request)
          body = send_request('UpdateEngineInternetAccess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateEngineInternetAccessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新云原生网关健康检查配置

        # @param request: Request instance for UpdateUpstreamHealthCheckConfig.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateUpstreamHealthCheckConfigRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateUpstreamHealthCheckConfigResponse`
        def UpdateUpstreamHealthCheckConfig(request)
          body = send_request('UpdateUpstreamHealthCheckConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUpstreamHealthCheckConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新网关上游实例列表，仅支持IPList服务类型

        # @param request: Request instance for UpdateUpstreamTargets.
        # @type request: :class:`Tencentcloud::tse::V20201207::UpdateUpstreamTargetsRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::UpdateUpstreamTargetsResponse`
        def UpdateUpstreamTargets(request)
          body = send_request('UpdateUpstreamTargets', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateUpstreamTargetsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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