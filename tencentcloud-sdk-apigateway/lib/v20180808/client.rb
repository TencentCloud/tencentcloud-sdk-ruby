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
  module Apigateway
    module V20180808
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-08-08'
            api_endpoint = 'apigateway.tencentcloudapi.com'
            sdk_version = 'APIGATEWAY_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 绑定插件到API上。

        # @param request: Request instance for AttachPlugin.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::AttachPluginRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::AttachPluginResponse`
        def AttachPlugin(request)
          body = send_request('AttachPlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AttachPluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（BindApiApp）用于绑定应用到API。

        # @param request: Request instance for BindApiApp.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::BindApiAppRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::BindApiAppResponse`
        def BindApiApp(request)
          body = send_request('BindApiApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindApiAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（BindEnvironment）用于绑定使用计划到服务或API。
        # 用户在发布服务到某个环境中后，如果 API 需要鉴权，还需要绑定使用计划才能进行调用，此接口用户将使用计划绑定到特定环境。
        # 目前支持绑定使用计划到API，但是同一个服务不能同时存在绑定到服务的使用计划和绑定到API的使用计划，所以对已经绑定过服务级别使用计划的环境，请先使用 服务级别使用计划降级 接口进行降级操作。

        # @param request: Request instance for BindEnvironment.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::BindEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::BindEnvironmentResponse`
        def BindEnvironment(request)
          body = send_request('BindEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindEnvironmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（BindIPStrategy）用于API绑定IP策略。

        # @param request: Request instance for BindIPStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::BindIPStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::BindIPStrategyResponse`
        def BindIPStrategy(request)
          body = send_request('BindIPStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindIPStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（BindSecretIds）用于为使用计划绑定密钥。
        # 将密钥绑定到某个使用计划，并将此使用计划绑定到某个服务发布的环境上，调用者方可使用此密钥调用这个服务中的 API，可使用本接口为使用计划绑定密钥。

        # @param request: Request instance for BindSecretIds.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::BindSecretIdsRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::BindSecretIdsResponse`
        def BindSecretIds(request)
          body = send_request('BindSecretIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindSecretIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（BindSubDomain）用于绑定自定义域名到服务。
        # API 网关中每个服务都会提供一个默认的域名供用户调用，但当用户想使用自己的已有域名时，也可以将自定义域名绑定到此服务，在做好备案、与默认域名的 CNAME 后，可直接调用自定义域名。

        # @param request: Request instance for BindSubDomain.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::BindSubDomainRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::BindSubDomainResponse`
        def BindSubDomain(request)
          body = send_request('BindSubDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BindSubDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 构建 API 文档

        # @param request: Request instance for BuildAPIDoc.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::BuildAPIDocRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::BuildAPIDocResponse`
        def BuildAPIDoc(request)
          body = send_request('BuildAPIDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BuildAPIDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建 API 文档

        # @param request: Request instance for CreateAPIDoc.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::CreateAPIDocRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::CreateAPIDocResponse`
        def CreateAPIDoc(request)
          body = send_request('CreateAPIDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateAPIDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateApi）用于创建 API 接口，创建 API 前，用户需要先创建服务，每个 API 都有自己归属的服务。

        # @param request: Request instance for CreateApi.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::CreateApiRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::CreateApiResponse`
        def CreateApi(request)
          body = send_request('CreateApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateApiApp）用于创建应用。

        # @param request: Request instance for CreateApiApp.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::CreateApiAppRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::CreateApiAppResponse`
        def CreateApiApp(request)
          body = send_request('CreateApiApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApiAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateApiKey）用于创建一对新的 API 密钥。

        # @param request: Request instance for CreateApiKey.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::CreateApiKeyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::CreateApiKeyResponse`
        def CreateApiKey(request)
          body = send_request('CreateApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateIPStrategy）用于创建服务IP策略。

        # @param request: Request instance for CreateIPStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::CreateIPStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::CreateIPStrategyResponse`
        def CreateIPStrategy(request)
          body = send_request('CreateIPStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIPStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建API网关插件。

        # @param request: Request instance for CreatePlugin.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::CreatePluginRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::CreatePluginResponse`
        def CreatePlugin(request)
          body = send_request('CreatePlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreatePluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateService）用于创建服务。
        # API 网关使用的最大单元为服务，每个服务中可创建多个 API 接口。每个服务有一个默认域名供客户调用，用户也可绑定自定义域名到此服务中。

        # @param request: Request instance for CreateService.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::CreateServiceRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::CreateServiceResponse`
        def CreateService(request)
          body = send_request('CreateService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建后端通道

        # @param request: Request instance for CreateUpstream.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::CreateUpstreamRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::CreateUpstreamResponse`
        def CreateUpstream(request)
          body = send_request('CreateUpstream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUpstreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（CreateUsagePlan）用于创建使用计划。
        # 用户在使用 API 网关时，需要创建使用计划并将其绑定到服务的环境中使用。

        # @param request: Request instance for CreateUsagePlan.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::CreateUsagePlanRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::CreateUsagePlanResponse`
        def CreateUsagePlan(request)
          body = send_request('CreateUsagePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUsagePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除 API 文档

        # @param request: Request instance for DeleteAPIDoc.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeleteAPIDocRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeleteAPIDocResponse`
        def DeleteAPIDoc(request)
          body = send_request('DeleteAPIDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteAPIDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteApi）用于删除已经创建的API。

        # @param request: Request instance for DeleteApi.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeleteApiRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeleteApiResponse`
        def DeleteApi(request)
          body = send_request('DeleteApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteApiApp）用于删除已经创建的应用。

        # @param request: Request instance for DeleteApiApp.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeleteApiAppRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeleteApiAppResponse`
        def DeleteApiApp(request)
          body = send_request('DeleteApiApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApiAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteApiKey）用于删除一对 API 密钥。

        # @param request: Request instance for DeleteApiKey.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeleteApiKeyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeleteApiKeyResponse`
        def DeleteApiKey(request)
          body = send_request('DeleteApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteIPStrategy）用于删除服务IP策略。

        # @param request: Request instance for DeleteIPStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeleteIPStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeleteIPStrategyResponse`
        def DeleteIPStrategy(request)
          body = send_request('DeleteIPStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteIPStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除API网关插件

        # @param request: Request instance for DeletePlugin.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeletePluginRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeletePluginResponse`
        def DeletePlugin(request)
          body = send_request('DeletePlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeletePluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteService）用于删除 API 网关中某个服务。

        # @param request: Request instance for DeleteService.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeleteServiceRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeleteServiceResponse`
        def DeleteService(request)
          body = send_request('DeleteService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteServiceSubDomainMapping）用于删除服务中某个环境的自定义域名映射。
        # 当用户使用自定义域名，并使用了自定义映射时，可使用此接口。但需注意，若删除了所有环境的映射时，调用此 API 均会返回失败。

        # @param request: Request instance for DeleteServiceSubDomainMapping.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeleteServiceSubDomainMappingRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeleteServiceSubDomainMappingResponse`
        def DeleteServiceSubDomainMapping(request)
          body = send_request('DeleteServiceSubDomainMapping', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteServiceSubDomainMappingResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除后端通道，需要注意有API绑定时，不允许删除

        # @param request: Request instance for DeleteUpstream.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeleteUpstreamRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeleteUpstreamResponse`
        def DeleteUpstream(request)
          body = send_request('DeleteUpstream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUpstreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DeleteUsagePlan）用于删除使用计划。

        # @param request: Request instance for DeleteUsagePlan.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DeleteUsagePlanRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DeleteUsagePlanResponse`
        def DeleteUsagePlan(request)
          body = send_request('DeleteUsagePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteUsagePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DemoteServiceUsagePlan）用于将某个服务在某个环境的使用计划，降级到API上。
        # 如果服务内没有API不允许进行此操作。
        # 如果当前环境没有发布，不允许进行此操作。

        # @param request: Request instance for DemoteServiceUsagePlan.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DemoteServiceUsagePlanRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DemoteServiceUsagePlanResponse`
        def DemoteServiceUsagePlan(request)
          body = send_request('DemoteServiceUsagePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DemoteServiceUsagePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 API 文档详情

        # @param request: Request instance for DescribeAPIDocDetail.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeAPIDocDetailRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeAPIDocDetailResponse`
        def DescribeAPIDocDetail(request)
          body = send_request('DescribeAPIDocDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAPIDocDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询 API 文档列表

        # @param request: Request instance for DescribeAPIDocs.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeAPIDocsRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeAPIDocsResponse`
        def DescribeAPIDocs(request)
          body = send_request('DescribeAPIDocs', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAPIDocsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示插件相关的API列表，包括已绑定的和未绑定的API信息。

        # @param request: Request instance for DescribeAllPluginApis.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeAllPluginApisRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeAllPluginApisResponse`
        def DescribeAllPluginApis(request)
          body = send_request('DescribeAllPluginApis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeAllPluginApisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApi）用于查询用户 API 网关的 API 接口的详细信息。​

        # @param request: Request instance for DescribeApi.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiResponse`
        def DescribeApi(request)
          body = send_request('DescribeApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApiApp）用于根据应用ID搜索应用。

        # @param request: Request instance for DescribeApiApp.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiAppRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiAppResponse`
        def DescribeApiApp(request)
          body = send_request('DescribeApiApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApiAppBindApisStatus）查询应用绑定的Api列表。

        # @param request: Request instance for DescribeApiAppBindApisStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiAppBindApisStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiAppBindApisStatusResponse`
        def DescribeApiAppBindApisStatus(request)
          body = send_request('DescribeApiAppBindApisStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiAppBindApisStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApiAppsStatus）查询应用列表。

        # @param request: Request instance for DescribeApiAppsStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiAppsStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiAppsStatusResponse`
        def DescribeApiAppsStatus(request)
          body = send_request('DescribeApiAppsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiAppsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApiBindApiAppsStatus）查询Api绑定的应用列表。

        # @param request: Request instance for DescribeApiBindApiAppsStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiBindApiAppsStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiBindApiAppsStatusResponse`
        def DescribeApiBindApiAppsStatus(request)
          body = send_request('DescribeApiBindApiAppsStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiBindApiAppsStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。

        # @param request: Request instance for DescribeApiEnvironmentStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiEnvironmentStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiEnvironmentStrategyResponse`
        def DescribeApiEnvironmentStrategy(request)
          body = send_request('DescribeApiEnvironmentStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiEnvironmentStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApiForApiApp）用于应用使用者查询部署于 API 网关的 API 接口的详细信息。​

        # @param request: Request instance for DescribeApiForApiApp.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiForApiAppRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiForApiAppResponse`
        def DescribeApiForApiApp(request)
          body = send_request('DescribeApiForApiApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiForApiAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApiKey）用于查询密钥详情。
        # 用户在创建密钥后，可用此接口查询一个 API 密钥的详情，该接口会显示密钥 Key。

        # @param request: Request instance for DescribeApiKey.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiKeyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiKeyResponse`
        def DescribeApiKey(request)
          body = send_request('DescribeApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApiKeysStatus）用于查询密钥列表。
        # 当用户创建了多个密钥对时，可使用本接口查询一个或多个 API 密钥信息。

        # @param request: Request instance for DescribeApiKeysStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiKeysStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiKeysStatusResponse`
        def DescribeApiKeysStatus(request)
          body = send_request('DescribeApiKeysStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiKeysStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApiUsagePlan）用于查询服务中 API 使用计划详情。
        # 服务若需要鉴权限流生效，则需要绑定使用计划到此服务中，本接口用于查询绑定到一个服务及其中 API 的所有使用计划。

        # @param request: Request instance for DescribeApiUsagePlan.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApiUsagePlanRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApiUsagePlanResponse`
        def DescribeApiUsagePlan(request)
          body = send_request('DescribeApiUsagePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApiUsagePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeApisStatus）用于查看一个服务下的某个 API 或所有 API 列表及其相关信息。

        # @param request: Request instance for DescribeApisStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeApisStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeApisStatusResponse`
        def DescribeApisStatus(request)
          body = send_request('DescribeApisStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApisStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeExclusiveInstanceDetail）用于查询独享实例详情信息。​

        # @param request: Request instance for DescribeExclusiveInstanceDetail.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeExclusiveInstanceDetailRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeExclusiveInstanceDetailResponse`
        def DescribeExclusiveInstanceDetail(request)
          body = send_request('DescribeExclusiveInstanceDetail', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExclusiveInstanceDetailResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeExclusiveInstances）用于查询独享实例列表信息。

        # @param request: Request instance for DescribeExclusiveInstances.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeExclusiveInstancesRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeExclusiveInstancesResponse`
        def DescribeExclusiveInstances(request)
          body = send_request('DescribeExclusiveInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExclusiveInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询专享实例列表（新）

        # @param request: Request instance for DescribeExclusiveInstancesStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeExclusiveInstancesStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeExclusiveInstancesStatusResponse`
        def DescribeExclusiveInstancesStatus(request)
          body = send_request('DescribeExclusiveInstancesStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeExclusiveInstancesStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeIPStrategy）用于查询IP策略详情。

        # @param request: Request instance for DescribeIPStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeIPStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeIPStrategyResponse`
        def DescribeIPStrategy(request)
          body = send_request('DescribeIPStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIPStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeIPStrategyApisStatus）用于查询IP策略可以绑定的API列表。即服务下所有API和该策略已绑定API的差集。

        # @param request: Request instance for DescribeIPStrategyApisStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeIPStrategyApisStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeIPStrategyApisStatusResponse`
        def DescribeIPStrategyApisStatus(request)
          body = send_request('DescribeIPStrategyApisStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIPStrategyApisStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeIPStrategysStatus）用于查询服务IP策略列表。

        # @param request: Request instance for DescribeIPStrategysStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeIPStrategysStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeIPStrategysStatusResponse`
        def DescribeIPStrategysStatus(request)
          body = send_request('DescribeIPStrategysStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIPStrategysStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口DescribeLogSearch用于搜索日志

        # @param request: Request instance for DescribeLogSearch.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeLogSearchRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeLogSearchResponse`
        def DescribeLogSearch(request)
          body = send_request('DescribeLogSearch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogSearchResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示插件详情，支持按照插件ID进行。

        # @param request: Request instance for DescribePlugin.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribePluginRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribePluginResponse`
        def DescribePlugin(request)
          body = send_request('DescribePlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询指定插件下绑定的API信息

        # @param request: Request instance for DescribePluginApis.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribePluginApisRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribePluginApisResponse`
        def DescribePluginApis(request)
          body = send_request('DescribePluginApis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePluginApisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示插件列表和详情，支持分页，支持按照插件类型查询，支持按照插件ID批量查询，支持按照插件名称查询。

        # @param request: Request instance for DescribePlugins.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribePluginsRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribePluginsResponse`
        def DescribePlugins(request)
          body = send_request('DescribePlugins', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePluginsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 展示API上已绑定的插件列表。

        # @param request: Request instance for DescribePluginsByApi.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribePluginsByApiRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribePluginsByApiResponse`
        def DescribePluginsByApi(request)
          body = send_request('DescribePluginsByApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribePluginsByApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeService）用于查询一个服务的详细信息、包括服务的描述、域名、协议、创建时间、发布情况等信息。

        # @param request: Request instance for DescribeService.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceResponse`
        def DescribeService(request)
          body = send_request('DescribeService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeServiceEnvironmentList）用于查询一个服务的环境列表，可查询到此服务下所有环境及其状态。

        # @param request: Request instance for DescribeServiceEnvironmentList.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceEnvironmentListRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceEnvironmentListResponse`
        def DescribeServiceEnvironmentList(request)
          body = send_request('DescribeServiceEnvironmentList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceEnvironmentListResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeServiceEnvironmentReleaseHistory）用于查询服务环境的发布历史。
        # 用户在创建好服务后需要发布到某个环境中才能进行使用，本接口用于查询一个服务某个环境的发布记录。

        # @param request: Request instance for DescribeServiceEnvironmentReleaseHistory.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceEnvironmentReleaseHistoryRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceEnvironmentReleaseHistoryResponse`
        def DescribeServiceEnvironmentReleaseHistory(request)
          body = send_request('DescribeServiceEnvironmentReleaseHistory', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceEnvironmentReleaseHistoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeServiceEnvironmentStrategy）用于展示服务限流策略。

        # @param request: Request instance for DescribeServiceEnvironmentStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceEnvironmentStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceEnvironmentStrategyResponse`
        def DescribeServiceEnvironmentStrategy(request)
          body = send_request('DescribeServiceEnvironmentStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceEnvironmentStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeServiceForApiApp）用于应用使用者查询一个服务的详细信息、包括服务的描述、域名、协议等信息。

        # @param request: Request instance for DescribeServiceForApiApp.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceForApiAppRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceForApiAppResponse`
        def DescribeServiceForApiApp(request)
          body = send_request('DescribeServiceForApiApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceForApiAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
        # 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。

        # @param request: Request instance for DescribeServiceReleaseVersion.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceReleaseVersionRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceReleaseVersionResponse`
        def DescribeServiceReleaseVersion(request)
          body = send_request('DescribeServiceReleaseVersion', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceReleaseVersionResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeServiceSubDomainMappings）用于查询自定义域名的路径映射。
        # API 网关可绑定自定义域名到服务，并且可以对自定义域名的路径进行映射，可自定义不同的路径映射到服务中的三个环境，本接口用于查询绑定服务的自定义域名的路径映射列表。

        # @param request: Request instance for DescribeServiceSubDomainMappings.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceSubDomainMappingsRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceSubDomainMappingsResponse`
        def DescribeServiceSubDomainMappings(request)
          body = send_request('DescribeServiceSubDomainMappings', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceSubDomainMappingsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeServiceSubDomains）用于查询自定义域名列表。
        # API 网关可绑定自定义域名到服务，用于服务调用。此接口用于查询用户绑定在服务的自定义域名列表。

        # @param request: Request instance for DescribeServiceSubDomains.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceSubDomainsRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceSubDomainsResponse`
        def DescribeServiceSubDomains(request)
          body = send_request('DescribeServiceSubDomains', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceSubDomainsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeServiceUsagePlan）用于查询服务使用计划详情。
        # 服务若需要鉴权限流生效，则需要绑定使用计划到此服务中，本接口用于查询绑定到一个服务的所有使用计划。

        # @param request: Request instance for DescribeServiceUsagePlan.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceUsagePlanRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServiceUsagePlanResponse`
        def DescribeServiceUsagePlan(request)
          body = send_request('DescribeServiceUsagePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServiceUsagePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeServicesStatus）用于搜索查询某一个服务或多个服务的列表，并返回服务相关的域名、时间等信息。

        # @param request: Request instance for DescribeServicesStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeServicesStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeServicesStatusResponse`
        def DescribeServicesStatus(request)
          body = send_request('DescribeServicesStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeServicesStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询后端通道所绑定的API列表

        # @param request: Request instance for DescribeUpstreamBindApis.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeUpstreamBindApisRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeUpstreamBindApisResponse`
        def DescribeUpstreamBindApis(request)
          body = send_request('DescribeUpstreamBindApis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUpstreamBindApisResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询后端通道列表详情

        # @param request: Request instance for DescribeUpstreams.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeUpstreamsRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeUpstreamsResponse`
        def DescribeUpstreams(request)
          body = send_request('DescribeUpstreams', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUpstreamsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUsagePlan）用于查询一个使用计划的详细信息，包括名称、QPS、创建时间绑定的环境等。

        # @param request: Request instance for DescribeUsagePlan.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeUsagePlanRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeUsagePlanResponse`
        def DescribeUsagePlan(request)
          body = send_request('DescribeUsagePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsagePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUsagePlanEnvironments）用于查询使用计划绑定的环境列表。
        # 用户在绑定了某个使用计划到环境后，可使用本接口查询这个使用计划绑定的所有服务的环境。

        # @param request: Request instance for DescribeUsagePlanEnvironments.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeUsagePlanEnvironmentsRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeUsagePlanEnvironmentsResponse`
        def DescribeUsagePlanEnvironments(request)
          body = send_request('DescribeUsagePlanEnvironments', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsagePlanEnvironmentsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUsagePlanSecretIds）用于查询使用计划绑定的密钥列表。
        # 在 API 网关中，一个使用计划可绑定多个密钥对，可使用本接口查询使用计划绑定的密钥列表。

        # @param request: Request instance for DescribeUsagePlanSecretIds.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeUsagePlanSecretIdsRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeUsagePlanSecretIdsResponse`
        def DescribeUsagePlanSecretIds(request)
          body = send_request('DescribeUsagePlanSecretIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsagePlanSecretIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DescribeUsagePlanStatus）用于查询使用计划的列表。

        # @param request: Request instance for DescribeUsagePlansStatus.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DescribeUsagePlansStatusRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DescribeUsagePlansStatusResponse`
        def DescribeUsagePlansStatus(request)
          body = send_request('DescribeUsagePlansStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUsagePlansStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 解除插件与API绑定

        # @param request: Request instance for DetachPlugin.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DetachPluginRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DetachPluginResponse`
        def DetachPlugin(request)
          body = send_request('DetachPlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetachPluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（DisableApiKey）用于禁用一对 API 密钥。

        # @param request: Request instance for DisableApiKey.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::DisableApiKeyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::DisableApiKeyResponse`
        def DisableApiKey(request)
          body = send_request('DisableApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（EnableApiKey）用于启动一对被禁用的 API 密钥。

        # @param request: Request instance for EnableApiKey.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::EnableApiKeyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::EnableApiKeyResponse`
        def EnableApiKey(request)
          body = send_request('EnableApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EnableApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（GenerateApiDocument）用于自动生成 API 文档和 SDK，一个服务的一个环境生成一份文档和 SDK。

        # @param request: Request instance for GenerateApiDocument.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::GenerateApiDocumentRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::GenerateApiDocumentResponse`
        def GenerateApiDocument(request)
          body = send_request('GenerateApiDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateApiDocumentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ImportOpenApi）用于将OpenAPI规范定义的API导入到API网关。

        # @param request: Request instance for ImportOpenApi.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ImportOpenApiRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ImportOpenApiResponse`
        def ImportOpenApi(request)
          body = send_request('ImportOpenApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImportOpenApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改 API 文档

        # @param request: Request instance for ModifyAPIDoc.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyAPIDocRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyAPIDocResponse`
        def ModifyAPIDoc(request)
          body = send_request('ModifyAPIDoc', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyAPIDocResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyApi）用于修改 API 接口，可调用此接口对已经配置的 API 接口进行编辑修改。修改后的 API 需要重新发布 API 所在的服务到对应环境方能生效。

        # @param request: Request instance for ModifyApi.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyApiRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyApiResponse`
        def ModifyApi(request)
          body = send_request('ModifyApi', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApiResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyApiApp）用于修改已经创建的应用。

        # @param request: Request instance for ModifyApiApp.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyApiAppRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyApiAppResponse`
        def ModifyApiApp(request)
          body = send_request('ModifyApiApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApiAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyApiEnvironmentStrategy）用于修改API限流策略

        # @param request: Request instance for ModifyApiEnvironmentStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyApiEnvironmentStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyApiEnvironmentStrategyResponse`
        def ModifyApiEnvironmentStrategy(request)
          body = send_request('ModifyApiEnvironmentStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApiEnvironmentStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 提供增量更新API能力，主要是给程序调用（区别于ModifyApi，该接口是需要传入API的全量参数，对console使用较友好）

        # @param request: Request instance for ModifyApiIncrement.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyApiIncrementRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyApiIncrementResponse`
        def ModifyApiIncrement(request)
          body = send_request('ModifyApiIncrement', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApiIncrementResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyExclusiveInstance）用于修改独享实例信息。​

        # @param request: Request instance for ModifyExclusiveInstance.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyExclusiveInstanceRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyExclusiveInstanceResponse`
        def ModifyExclusiveInstance(request)
          body = send_request('ModifyExclusiveInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyExclusiveInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyIPStrategy）用于修改服务IP策略。

        # @param request: Request instance for ModifyIPStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyIPStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyIPStrategyResponse`
        def ModifyIPStrategy(request)
          body = send_request('ModifyIPStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIPStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改API网关插件。

        # @param request: Request instance for ModifyPlugin.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyPluginRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyPluginResponse`
        def ModifyPlugin(request)
          body = send_request('ModifyPlugin', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyPluginResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyService）用于修改服务的相关信息。当服务创建后，服务的名称、描述和服务类型均可被修改。

        # @param request: Request instance for ModifyService.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyServiceRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyServiceResponse`
        def ModifyService(request)
          body = send_request('ModifyService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyServiceEnvironmentStrategy）用于修改服务限流策略

        # @param request: Request instance for ModifyServiceEnvironmentStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyServiceEnvironmentStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyServiceEnvironmentStrategyResponse`
        def ModifyServiceEnvironmentStrategy(request)
          body = send_request('ModifyServiceEnvironmentStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyServiceEnvironmentStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifySubDomain）用于修改服务的自定义域名设置中的路径映射，可以修改绑定自定义域名之前的路径映射规则。

        # @param request: Request instance for ModifySubDomain.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifySubDomainRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifySubDomainResponse`
        def ModifySubDomain(request)
          body = send_request('ModifySubDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifySubDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改后端通道

        # @param request: Request instance for ModifyUpstream.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyUpstreamRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyUpstreamResponse`
        def ModifyUpstream(request)
          body = send_request('ModifyUpstream', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUpstreamResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ModifyUsagePlan）用于修改使用计划的名称，描述及 QPS。

        # @param request: Request instance for ModifyUsagePlan.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ModifyUsagePlanRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ModifyUsagePlanResponse`
        def ModifyUsagePlan(request)
          body = send_request('ModifyUsagePlan', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUsagePlanResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（ReleaseService）用于发布服务。
        # API 网关的服务创建后，需要发布到某个环境方生效后，使用者才能进行调用，此接口用于发布服务到环境，如 release 环境。

        # @param request: Request instance for ReleaseService.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ReleaseServiceRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ReleaseServiceResponse`
        def ReleaseService(request)
          body = send_request('ReleaseService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReleaseServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 重置API文档密码

        # @param request: Request instance for ResetAPIDocPassword.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::ResetAPIDocPasswordRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::ResetAPIDocPasswordResponse`
        def ResetAPIDocPassword(request)
          body = send_request('ResetAPIDocPassword', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetAPIDocPasswordResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UnBindEnvironment）用于将使用计划从特定环境解绑。

        # @param request: Request instance for UnBindEnvironment.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::UnBindEnvironmentRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::UnBindEnvironmentResponse`
        def UnBindEnvironment(request)
          body = send_request('UnBindEnvironment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindEnvironmentResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UnBindIPStrategy）用于服务解绑IP策略。

        # @param request: Request instance for UnBindIPStrategy.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::UnBindIPStrategyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::UnBindIPStrategyResponse`
        def UnBindIPStrategy(request)
          body = send_request('UnBindIPStrategy', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindIPStrategyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UnBindSecretIds）用于为使用计划解绑密钥。

        # @param request: Request instance for UnBindSecretIds.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::UnBindSecretIdsRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::UnBindSecretIdsResponse`
        def UnBindSecretIds(request)
          body = send_request('UnBindSecretIds', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindSecretIdsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UnBindSubDomain）用于解绑自定义域名。
        # 用户使用 API 网关绑定了自定义域名到服务中后，若想要解绑此自定义域名，可使用此接口。

        # @param request: Request instance for UnBindSubDomain.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::UnBindSubDomainRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::UnBindSubDomainResponse`
        def UnBindSubDomain(request)
          body = send_request('UnBindSubDomain', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnBindSubDomainResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UnReleaseService）用于下线服务。
        # 用户发布服务到某个环境后，此服务中的 API 方可被调用者进行调用，当用户需要将此服务从发布环境中下线时，可调用此 API。下线后的服务不可被调用。

        # @param request: Request instance for UnReleaseService.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::UnReleaseServiceRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::UnReleaseServiceResponse`
        def UnReleaseService(request)
          body = send_request('UnReleaseService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnReleaseServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UnbindApiApp）用于解除应用和API绑定。

        # @param request: Request instance for UnbindApiApp.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::UnbindApiAppRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::UnbindApiAppResponse`
        def UnbindApiApp(request)
          body = send_request('UnbindApiApp', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UnbindApiAppResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpdateApiAppKey）用于更新应用密钥。

        # @param request: Request instance for UpdateApiAppKey.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::UpdateApiAppKeyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::UpdateApiAppKeyResponse`
        def UpdateApiAppKey(request)
          body = send_request('UpdateApiAppKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateApiAppKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpdateApiKey）用于更换用户已创建的一对 API 密钥。

        # @param request: Request instance for UpdateApiKey.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::UpdateApiKeyRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::UpdateApiKeyResponse`
        def UpdateApiKey(request)
          body = send_request('UpdateApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（UpdateService）用于从服务发布的环境中运行版本切换到特定版本。用户在使用 API 网关创建服务并发布服务到某个环境后，多因开发过程会产生多个版本，此时可调用本接口。

        # @param request: Request instance for UpdateService.
        # @type request: :class:`Tencentcloud::apigateway::V20180808::UpdateServiceRequest`
        # @rtype: :class:`Tencentcloud::apigateway::V20180808::UpdateServiceResponse`
        def UpdateService(request)
          body = send_request('UpdateService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateServiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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