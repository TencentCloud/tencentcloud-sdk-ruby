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
  module Taf
    module V20200210
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-02-10'
            api_endpoint = 'taf.tencentcloudapi.com'
            sdk_version = 'TAF_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 流量反欺诈-KOL欺诈识别

        # @param request: Request instance for DetectFraudKOL.
        # @type request: :class:`Tencentcloud::taf::V20200210::DetectFraudKOLRequest`
        # @rtype: :class:`Tencentcloud::taf::V20200210::DetectFraudKOLResponse`
        def DetectFraudKOL(request)
          body = send_request('DetectFraudKOL', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DetectFraudKOLResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 流量反欺诈-流量验准定制版

        # @param request: Request instance for RecognizeCustomizedAudience.
        # @type request: :class:`Tencentcloud::taf::V20200210::RecognizeCustomizedAudienceRequest`
        # @rtype: :class:`Tencentcloud::taf::V20200210::RecognizeCustomizedAudienceResponse`
        def RecognizeCustomizedAudience(request)
          body = send_request('RecognizeCustomizedAudience', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeCustomizedAudienceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 流量反欺诈-流量验准高级版

        # @param request: Request instance for RecognizePreciseTargetAudience.
        # @type request: :class:`Tencentcloud::taf::V20200210::RecognizePreciseTargetAudienceRequest`
        # @rtype: :class:`Tencentcloud::taf::V20200210::RecognizePreciseTargetAudienceResponse`
        def RecognizePreciseTargetAudience(request)
          body = send_request('RecognizePreciseTargetAudience', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizePreciseTargetAudienceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 流量反欺诈-流量验准

        # @param request: Request instance for RecognizeTargetAudience.
        # @type request: :class:`Tencentcloud::taf::V20200210::RecognizeTargetAudienceRequest`
        # @rtype: :class:`Tencentcloud::taf::V20200210::RecognizeTargetAudienceResponse`
        def RecognizeTargetAudience(request)
          body = send_request('RecognizeTargetAudience', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RecognizeTargetAudienceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 流量安选产品，短信发送接口

        # @param request: Request instance for SendTrafficSecuritySmsMessage.
        # @type request: :class:`Tencentcloud::taf::V20200210::SendTrafficSecuritySmsMessageRequest`
        # @rtype: :class:`Tencentcloud::taf::V20200210::SendTrafficSecuritySmsMessageResponse`
        def SendTrafficSecuritySmsMessage(request)
          body = send_request('SendTrafficSecuritySmsMessage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SendTrafficSecuritySmsMessageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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