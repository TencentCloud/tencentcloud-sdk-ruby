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
  module Tbp
    module V20190627
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-06-27'
        @@endpoint = 'tbp.tencentcloudapi.com'
        @@sdk_version = 'TBP_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 接收调用侧的文本输入，返回应答文本。

        # @param request: Request instance for TextProcess.
        # @type request: :class:`Tencentcloud::tbp::V20190627::TextProcessRequest`
        # @rtype: :class:`Tencentcloud::tbp::V20190627::TextProcessResponse`
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

        # 会话重置接口。

        # @param request: Request instance for TextReset.
        # @type request: :class:`Tencentcloud::tbp::V20190627::TextResetRequest`
        # @rtype: :class:`Tencentcloud::tbp::V20190627::TextResetResponse`
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