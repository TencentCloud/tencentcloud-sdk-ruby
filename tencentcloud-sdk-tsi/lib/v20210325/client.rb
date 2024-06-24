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
  module Tsi
    module V20210325
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-03-25'
            api_endpoint = 'tsi.tencentcloudapi.com'
            sdk_version = 'TSI_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 获取同传结果。

        # @param request: Request instance for TongChuanDisplay.
        # @type request: :class:`Tencentcloud::tsi::V20210325::TongChuanDisplayRequest`
        # @rtype: :class:`Tencentcloud::tsi::V20210325::TongChuanDisplayResponse`
        def TongChuanDisplay(request)
          body = send_request('TongChuanDisplay', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TongChuanDisplayResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口提供上传音频，将音频进行语音识别并翻译成文本的服务，目前开放中英互译的同传服务。 待识别和翻译的音频文件格式是 pcm，pcm采样率要求16kHz、位深16bit、单声道、每个分片时长200ms~500ms，音频内语音清晰。

        # @param request: Request instance for TongChuanRecognize.
        # @type request: :class:`Tencentcloud::tsi::V20210325::TongChuanRecognizeRequest`
        # @rtype: :class:`Tencentcloud::tsi::V20210325::TongChuanRecognizeResponse`
        def TongChuanRecognize(request)
          body = send_request('TongChuanRecognize', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TongChuanRecognizeResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 本接口提供上传音频，将音频进行语音识别并翻译成文本的服务，目前开放中英互译的同传服务。 待识别和翻译的音频文件格式是 pcm，pcm采样率要求16kHz、位深16bit、单声道、每个分片时长200ms~500ms，音频内语音清晰。

        # @param request: Request instance for TongChuanSync.
        # @type request: :class:`Tencentcloud::tsi::V20210325::TongChuanSyncRequest`
        # @rtype: :class:`Tencentcloud::tsi::V20210325::TongChuanSyncResponse`
        def TongChuanSync(request)
          body = send_request('TongChuanSync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TongChuanSyncResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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