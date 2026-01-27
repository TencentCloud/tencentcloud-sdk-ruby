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
  module Nlp
    module V20190408
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2019-04-08'
            api_endpoint = 'nlp.tencentcloudapi.com'
            sdk_version = 'NLP_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极、中性还是消极，并且提供各自概率。

        # @param request: Request instance for AnalyzeSentiment.
        # @type request: :class:`Tencentcloud::nlp::V20190408::AnalyzeSentimentRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::AnalyzeSentimentResponse`
        def AnalyzeSentiment(request)
          body = send_request('AnalyzeSentiment', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AnalyzeSentimentResponse.new
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

        # 通过精准地对文本进行分词、词性标注、命名实体识别等功能，助您更好地理解文本内容，挖掘出潜在的价值信息。

        # @param request: Request instance for ParseWords.
        # @type request: :class:`Tencentcloud::nlp::V20190408::ParseWordsRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::ParseWordsResponse`
        def ParseWords(request)
          body = send_request('ParseWords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ParseWordsResponse.new
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

        # 智能识别并纠正句子中的语法、拼写、用词等错误，确保文本的准确性和可读性。

        # @param request: Request instance for SentenceCorrection.
        # @type request: :class:`Tencentcloud::nlp::V20190408::SentenceCorrectionRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::SentenceCorrectionResponse`
        def SentenceCorrection(request)
          body = send_request('SentenceCorrection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SentenceCorrectionResponse.new
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