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
  module Tbp
    module V20190311
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-03-11'
            api_endpoint = 'tbp.tencentcloudapi.com'
            sdk_version = 'TBP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建机器人

        # @param request: Request instance for CreateBot.
        # @type request: :class:`Tencentcloud::tbp::V20190311::CreateBotRequest`
        # @rtype: :class:`Tencentcloud::tbp::V20190311::CreateBotResponse`
        def CreateBot(request)
          body = send_request('CreateBot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateBotResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 对当前机器人的会话状态进行复位

        # @param request: Request instance for Reset.
        # @type request: :class:`Tencentcloud::tbp::V20190311::ResetRequest`
        # @rtype: :class:`Tencentcloud::tbp::V20190311::ResetResponse`
        def Reset(request)
          body = send_request('Reset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ResetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 接收调用侧的文本输入，返回应答文本。已废弃，推荐使用最新版TextProcess接口。

        # @param request: Request instance for TextProcess.
        # @type request: :class:`Tencentcloud::tbp::V20190311::TextProcessRequest`
        # @rtype: :class:`Tencentcloud::tbp::V20190311::TextProcessResponse`
        def TextProcess(request)
          body = send_request('TextProcess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextProcessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 会话重置接口。已废弃，推荐使用最新版TextReset接口。

        # @param request: Request instance for TextReset.
        # @type request: :class:`Tencentcloud::tbp::V20190311::TextResetRequest`
        # @rtype: :class:`Tencentcloud::tbp::V20190311::TextResetResponse`
        def TextReset(request)
          body = send_request('TextReset', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextResetResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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