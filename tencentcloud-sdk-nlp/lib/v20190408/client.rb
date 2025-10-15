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

        # NLP技术的句子相似度、相似词召回、文本分类、对联生成、诗词生成、词相似度、文本润色、句子生成和文本补全API接口将于2025年10月31日下线，届时将无法正常调用。为了避免对您的业务造成影响，请您尽快做好相关业务调整。如果您有NLP技术的产品需求，推荐您调用腾讯混元大模型（https://cloud.tencent.com/product/tclm）。

        # 文本分类接口能够对用户输入的文章进行自动分类，将其映射到具体的类目上，用户只需要提供待分类的文本，而无需关注具体实现。该功能定义了一套较为完备的[三级分类体系](https://cloud.tencent.com/document/product/271/94286)，积累了数百万的语料，经过多轮迭代优化打造了较先进的深度学习模型，以保证效果不断提升。

        # @param request: Request instance for ClassifyContent.
        # @type request: :class:`Tencentcloud::nlp::V20190408::ClassifyContentRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::ClassifyContentResponse`
        def ClassifyContent(request)
          body = send_request('ClassifyContent', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ClassifyContentResponse.new
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

        # NLP技术的句子相似度、相似词召回、文本分类、对联生成、诗词生成、词相似度、文本润色、句子生成和文本补全API接口将于2025年10月31日下线，届时将无法正常调用。为了避免对您的业务造成影响，请您尽快做好相关业务调整。如果您有NLP技术的产品需求，推荐您调用腾讯混元大模型（https://cloud.tencent.com/product/tclm）。

        # 对联生成接口根据用户输入的命题关键词，智能生成一副完整的春联，包括上联、下联和横批。该接口利用先进的自然语言处理技术，确保生成的春联既符合传统对仗、对韵、对义的要求，又具有新意和创意，为用户提供独特的春节祝福。

        # @param request: Request instance for ComposeCouplet.
        # @type request: :class:`Tencentcloud::nlp::V20190408::ComposeCoupletRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::ComposeCoupletResponse`
        def ComposeCouplet(request)
          body = send_request('ComposeCouplet', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ComposeCoupletResponse.new
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

        # NLP技术的句子相似度、相似词召回、文本分类、对联生成、诗词生成、词相似度、文本润色、句子生成和文本补全API接口将于2025年10月31日下线，届时将无法正常调用。为了避免对您的业务造成影响，请您尽快做好相关业务调整。如果您有NLP技术的产品需求，推荐您调用腾讯混元大模型（https://cloud.tencent.com/product/tclm）。

        # 通过计算句子间的语义相似性，帮助您快速找到文本中重复或相似的句子，用于文本聚类、相似问题检索等应用场景。

        # @param request: Request instance for EvaluateSentenceSimilarity.
        # @type request: :class:`Tencentcloud::nlp::V20190408::EvaluateSentenceSimilarityRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::EvaluateSentenceSimilarityResponse`
        def EvaluateSentenceSimilarity(request)
          body = send_request('EvaluateSentenceSimilarity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = EvaluateSentenceSimilarityResponse.new
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