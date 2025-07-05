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
  module Iap
    module V20240713
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2024-07-13'
            api_endpoint = 'iap.tencentcloudapi.com'
            sdk_version = 'IAP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建用户OIDC配置。只能创建一个用户OIDC身份提供商，并且创建用户OIDC配置之后会自动关闭用户SAML SSO身份提供商。

        # @param request: Request instance for CreateIAPUserOIDCConfig.
        # @type request: :class:`Tencentcloud::iap::V20240713::CreateIAPUserOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::iap::V20240713::CreateIAPUserOIDCConfigResponse`
        def CreateIAPUserOIDCConfig(request)
          body = send_request('CreateIAPUserOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateIAPUserOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询登录会话时长

        # @param request: Request instance for DescribeIAPLoginSessionDuration.
        # @type request: :class:`Tencentcloud::iap::V20240713::DescribeIAPLoginSessionDurationRequest`
        # @rtype: :class:`Tencentcloud::iap::V20240713::DescribeIAPLoginSessionDurationResponse`
        def DescribeIAPLoginSessionDuration(request)
          body = send_request('DescribeIAPLoginSessionDuration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIAPLoginSessionDurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询用户OIDC配置

        # @param request: Request instance for DescribeIAPUserOIDCConfig.
        # @type request: :class:`Tencentcloud::iap::V20240713::DescribeIAPUserOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::iap::V20240713::DescribeIAPUserOIDCConfigResponse`
        def DescribeIAPUserOIDCConfig(request)
          body = send_request('DescribeIAPUserOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeIAPUserOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 禁用用户SSO

        # @param request: Request instance for DisableIAPUserSSO.
        # @type request: :class:`Tencentcloud::iap::V20240713::DisableIAPUserSSORequest`
        # @rtype: :class:`Tencentcloud::iap::V20240713::DisableIAPUserSSOResponse`
        def DisableIAPUserSSO(request)
          body = send_request('DisableIAPUserSSO', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DisableIAPUserSSOResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改登录会话时长

        # @param request: Request instance for ModifyIAPLoginSessionDuration.
        # @type request: :class:`Tencentcloud::iap::V20240713::ModifyIAPLoginSessionDurationRequest`
        # @rtype: :class:`Tencentcloud::iap::V20240713::ModifyIAPLoginSessionDurationResponse`
        def ModifyIAPLoginSessionDuration(request)
          body = send_request('ModifyIAPLoginSessionDuration', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyIAPLoginSessionDurationResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改用户OIDC配置

        # @param request: Request instance for UpdateIAPUserOIDCConfig.
        # @type request: :class:`Tencentcloud::iap::V20240713::UpdateIAPUserOIDCConfigRequest`
        # @rtype: :class:`Tencentcloud::iap::V20240713::UpdateIAPUserOIDCConfigResponse`
        def UpdateIAPUserOIDCConfig(request)
          body = send_request('UpdateIAPUserOIDCConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateIAPUserOIDCConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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