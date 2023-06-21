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
  module Sts
    module V20180813
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-08-13'
            api_endpoint = 'sts.tencentcloudapi.com'
            sdk_version = 'STS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 申请扮演角色临时访问凭证。

        # @param request: Request instance for AssumeRole.
        # @type request: :class:`Tencentcloud::sts::V20180813::AssumeRoleRequest`
        # @rtype: :class:`Tencentcloud::sts::V20180813::AssumeRoleResponse`
        def AssumeRole(request)
          body = send_request('AssumeRole', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssumeRoleResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口（AssumeRoleWithSAML）用于根据 SAML 断言申请角色临时访问凭证。

        # 注意：当使用签名方法 V3 调用本接口时，请求头无须传入 X-TC-Token, 但 Authorization 需要传入值 SKIP。

        # @param request: Request instance for AssumeRoleWithSAML.
        # @type request: :class:`Tencentcloud::sts::V20180813::AssumeRoleWithSAMLRequest`
        # @rtype: :class:`Tencentcloud::sts::V20180813::AssumeRoleWithSAMLResponse`
        def AssumeRoleWithSAML(request)
          body = send_request('AssumeRoleWithSAML', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssumeRoleWithSAMLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 申请OIDC角色临时访问凭证。

        # 注意：当使用签名方法 V3 调用本接口时，请求头无须传入 X-TC-Token, 但 Authorization 需要传入值 SKIP。

        # @param request: Request instance for AssumeRoleWithWebIdentity.
        # @type request: :class:`Tencentcloud::sts::V20180813::AssumeRoleWithWebIdentityRequest`
        # @rtype: :class:`Tencentcloud::sts::V20180813::AssumeRoleWithWebIdentityResponse`
        def AssumeRoleWithWebIdentity(request)
          body = send_request('AssumeRoleWithWebIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AssumeRoleWithWebIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取当前调用者的身份信息。

        # 接口支持主账号，子账号长期密钥以及AssumeRole，GetFederationToken生成的临时访问凭证身份获取。

        # @param request: Request instance for GetCallerIdentity.
        # @type request: :class:`Tencentcloud::sts::V20180813::GetCallerIdentityRequest`
        # @rtype: :class:`Tencentcloud::sts::V20180813::GetCallerIdentityResponse`
        def GetCallerIdentity(request)
          body = send_request('GetCallerIdentity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetCallerIdentityResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # **使用说明**

        # 返回一组临时访问凭证，典型的应用场景是代理应用程序集中申请临时访问凭证，下发给企业网络内其他分布式终端应用，比如终端应用上传文件到COS场景，本接口仅支持永久密钥调用。

        # **最佳实践**

        # 1. 临时访问凭据在有效期内都可以使用，建议在有效期内重复使用，以避免业务请求速率上升后被限频
        # 2. 授予临时访问凭证权限的CAM策略，建议按权限最小化原则
        # 3. 调用接口的永久密钥，建议不要使用主账号

        # @param request: Request instance for GetFederationToken.
        # @type request: :class:`Tencentcloud::sts::V20180813::GetFederationTokenRequest`
        # @rtype: :class:`Tencentcloud::sts::V20180813::GetFederationTokenResponse`
        def GetFederationToken(request)
          body = send_request('GetFederationToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetFederationTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 拉取API密钥列表

        # @param request: Request instance for QueryApiKey.
        # @type request: :class:`Tencentcloud::sts::V20180813::QueryApiKeyRequest`
        # @rtype: :class:`Tencentcloud::sts::V20180813::QueryApiKeyResponse`
        def QueryApiKey(request)
          body = send_request('QueryApiKey', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryApiKeyResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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