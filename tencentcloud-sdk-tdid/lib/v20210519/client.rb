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
  module Tdid
    module V20210519
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-05-19'
            api_endpoint = 'tdid.tencentcloudapi.com'
            sdk_version = 'TDID_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建凭证

        # @param request: Request instance for CreateCredential.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateCredentialRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateCredentialResponse`
        def CreateCredential(request)
          body = send_request('CreateCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建选择性批露凭证

        # @param request: Request instance for CreateSelectiveCredential.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateSelectiveCredentialRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateSelectiveCredentialResponse`
        def CreateSelectiveCredential(request)
          body = send_request('CreateSelectiveCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateSelectiveCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建机构DID

        # @param request: Request instance for CreateTDid.
        # @type request: :class:`Tencentcloud::tdid::V20210519::CreateTDidRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::CreateTDidResponse`
        def CreateTDid(request)
          body = send_request('CreateTDid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateTDidResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 验证凭证

        # @param request: Request instance for VerifyCredential.
        # @type request: :class:`Tencentcloud::tdid::V20210519::VerifyCredentialRequest`
        # @rtype: :class:`Tencentcloud::tdid::V20210519::VerifyCredentialResponse`
        def VerifyCredential(request)
          body = send_request('VerifyCredential', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = VerifyCredentialResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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