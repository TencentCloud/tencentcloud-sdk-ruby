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
  module Vms
    module V20200902
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-09-02'
            api_endpoint = 'vms.tencentcloudapi.com'
            sdk_version = 'VMS_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 给用户发语音验证码（仅支持数字）。

        # @param request: Request instance for SendCodeVoice.
        # @type request: :class:`Tencentcloud::vms::V20200902::SendCodeVoiceRequest`
        # @rtype: :class:`Tencentcloud::vms::V20200902::SendCodeVoiceResponse`
        def SendCodeVoice(request)
          body = send_request('SendCodeVoice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendCodeVoiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 给用户发送指定模板的语音通知。

        # @param request: Request instance for SendTtsVoice.
        # @type request: :class:`Tencentcloud::vms::V20200902::SendTtsVoiceRequest`
        # @rtype: :class:`Tencentcloud::vms::V20200902::SendTtsVoiceResponse`
        def SendTtsVoice(request)
          body = send_request('SendTtsVoice', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendTtsVoiceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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