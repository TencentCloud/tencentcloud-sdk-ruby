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
  module Soe
    module V20180724
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2018-07-24'
            api_endpoint = 'soe.tencentcloudapi.com'
            sdk_version = 'SOE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 初始化发音评估过程，每一轮评估前进行调用。语音输入模式分为流式模式和非流式模式，流式模式支持数据分片传输，可以加快评估响应速度。评估模式分为词模式和句子模式，词模式会标注每个音节的详细信息；句子模式会有完整度和流利度的评估。

        # @param request: Request instance for InitOralProcess.
        # @type request: :class:`Tencentcloud::soe::V20180724::InitOralProcessRequest`
        # @rtype: :class:`Tencentcloud::soe::V20180724::InitOralProcessResponse`
        def InitOralProcess(request)
          body = send_request('InitOralProcess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = InitOralProcessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 指定主题关键词词汇评估，分析语音与关键词的切合程度，可指定多个关键词，支持中文英文同时评测。分片传输时，尽量保证纯异步调用，即不等待上一个分片的传输结果边录边传，这样可以尽可能早的提供音频数据。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。

        # @param request: Request instance for KeywordEvaluate.
        # @type request: :class:`Tencentcloud::soe::V20180724::KeywordEvaluateRequest`
        # @rtype: :class:`Tencentcloud::soe::V20180724::KeywordEvaluateResponse`
        def KeywordEvaluate(request)
          body = send_request('KeywordEvaluate', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KeywordEvaluateResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 传输音频数据，必须在完成发音评估初始化接口之后调用，且SessonId要与初始化接口保持一致。分片传输时，尽量保证SeqId顺序传输。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。

        # @param request: Request instance for TransmitOralProcess.
        # @type request: :class:`Tencentcloud::soe::V20180724::TransmitOralProcessRequest`
        # @rtype: :class:`Tencentcloud::soe::V20180724::TransmitOralProcessResponse`
        def TransmitOralProcess(request)
          body = send_request('TransmitOralProcess', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransmitOralProcessResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 初始化并传输音频数据，分片传输时，尽量保证SeqId顺序传输。音频源目前仅支持16k采样率16bit单声道编码方式，如有不一致可能导致评估不准确或失败。

        # @param request: Request instance for TransmitOralProcessWithInit.
        # @type request: :class:`Tencentcloud::soe::V20180724::TransmitOralProcessWithInitRequest`
        # @rtype: :class:`Tencentcloud::soe::V20180724::TransmitOralProcessWithInitResponse`
        def TransmitOralProcessWithInit(request)
          body = send_request('TransmitOralProcessWithInit', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TransmitOralProcessWithInitResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
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