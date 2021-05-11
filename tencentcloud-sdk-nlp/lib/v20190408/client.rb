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
  module Nlp
    module V20190408
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-04-08'
        @@endpoint = 'nlp.tencentcloudapi.com'
        @@sdk_version = 'NLP_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 利用人工智能算法，自动抽取文本中的关键信息并生成指定长度的文本摘要。可用于新闻标题生成、科技文献摘要生成和商品评论摘要等。

        # @param request: Request instance for AutoSummarization.
        # @type request: :class:`Tencentcloud::nlp::V20190408::AutoSummarizationRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::AutoSummarizationResponse`
        def AutoSummarization(request)
          body = send_request('AutoSummarization', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = AutoSummarizationResponse.new
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

        # 闲聊服务基于腾讯领先的NLP引擎能力、数据运算能力和千亿级互联网语料数据的支持，同时集成了广泛的知识问答能力，可实现上百种自定义属性配置，以及儿童语言风格及说话方式，从而让聊天变得更睿智、简单和有趣。


        # @param request: Request instance for ChatBot.
        # @type request: :class:`Tencentcloud::nlp::V20190408::ChatBotRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::ChatBotResponse`
        def ChatBot(request)
          body = send_request('ChatBot', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChatBotResponse.new
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

        # 根据指定的名称、描述创建自定义词库。

        # @param request: Request instance for CreateDict.
        # @type request: :class:`Tencentcloud::nlp::V20190408::CreateDictRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::CreateDictResponse`
        def CreateDict(request)
          body = send_request('CreateDict', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateDictResponse.new
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

        # 向指定的词库中添加词条。

        # @param request: Request instance for CreateWordItems.
        # @type request: :class:`Tencentcloud::nlp::V20190408::CreateWordItemsRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::CreateWordItemsResponse`
        def CreateWordItems(request)
          body = send_request('CreateWordItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWordItemsResponse.new
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

        # 删除自定义词库，会附带相应删除词库包含的所有词条。

        # @param request: Request instance for DeleteDict.
        # @type request: :class:`Tencentcloud::nlp::V20190408::DeleteDictRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::DeleteDictResponse`
        def DeleteDict(request)
          body = send_request('DeleteDict', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteDictResponse.new
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

        # 用于删除自定义词库中的词条。

        # @param request: Request instance for DeleteWordItems.
        # @type request: :class:`Tencentcloud::nlp::V20190408::DeleteWordItemsRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::DeleteWordItemsResponse`
        def DeleteWordItems(request)
          body = send_request('DeleteWordItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWordItemsResponse.new
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

        # 句法依存分析接口能够分析出句子中词与词之间的相互依存关系，并揭示其句法结构，包括主谓关系、动宾关系、核心关系等等，可用于提取句子主干、提取句子核心词等，在机器翻译、自动问答、知识抽取等领域都有很好的应用。

        # @param request: Request instance for DependencyParsing.
        # @type request: :class:`Tencentcloud::nlp::V20190408::DependencyParsingRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::DependencyParsingResponse`
        def DependencyParsing(request)
          body = send_request('DependencyParsing', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DependencyParsingResponse.new
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

        # 根据id或名称查询自定义词库信息。

        # @param request: Request instance for DescribeDict.
        # @type request: :class:`Tencentcloud::nlp::V20190408::DescribeDictRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::DescribeDictResponse`
        def DescribeDict(request)
          body = send_request('DescribeDict', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDictResponse.new
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

        # 返回属于当前用户的所有自定义词库列表。

        # @param request: Request instance for DescribeDicts.
        # @type request: :class:`Tencentcloud::nlp::V20190408::DescribeDictsRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::DescribeDictsResponse`
        def DescribeDicts(request)
          body = send_request('DescribeDicts', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDictsResponse.new
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

        # 输入实体名称，返回实体相关的信息如实体别名、实体英文名、实体详细信息、相关实体等。

        # @param request: Request instance for DescribeEntity.
        # @type request: :class:`Tencentcloud::nlp::V20190408::DescribeEntityRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::DescribeEntityResponse`
        def DescribeEntity(request)
          body = send_request('DescribeEntity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeEntityResponse.new
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

        # 输入两个实体，返回两个实体间的关系，例如马化腾与腾讯公司不仅是相关实体，二者还存在隶属关系（马化腾属于腾讯公司）。

        # @param request: Request instance for DescribeRelation.
        # @type request: :class:`Tencentcloud::nlp::V20190408::DescribeRelationRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::DescribeRelationResponse`
        def DescribeRelation(request)
          body = send_request('DescribeRelation', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRelationResponse.new
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

        # 三元组查询，主要分为两类，SP查询和PO查询。SP查询表示已知主语和谓语查询宾语，PO查询表示已知宾语和谓语查询主语。每一个SP或PO查询都是一个可独立执行的查询，TQL支持SP查询的嵌套查询，即主语可以是一个嵌套的子查询。其他复杂的三元组查询方法，请参考官网API文档示例。

        # @param request: Request instance for DescribeTriple.
        # @type request: :class:`Tencentcloud::nlp::V20190408::DescribeTripleRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::DescribeTripleResponse`
        def DescribeTriple(request)
          body = send_request('DescribeTriple', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTripleResponse.new
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

        # 依据自定义词库的ID，查询对应的词条信息。

        # @param request: Request instance for DescribeWordItems.
        # @type request: :class:`Tencentcloud::nlp::V20190408::DescribeWordItemsRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::DescribeWordItemsResponse`
        def DescribeWordItems(request)
          body = send_request('DescribeWordItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWordItemsResponse.new
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

        # 基于关键词提取平台，通过对文本内容进行深度分析，提取出文本内容中的关键信息，为用户实现诸如新闻内容关键词自动提取、评论关键词提取等提供基础服务。

        # @param request: Request instance for KeywordsExtraction.
        # @type request: :class:`Tencentcloud::nlp::V20190408::KeywordsExtractionRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::KeywordsExtractionResponse`
        def KeywordsExtraction(request)
          body = send_request('KeywordsExtraction', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = KeywordsExtractionResponse.new
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

        # 词法分析接口提供以下三个功能：

        # 1、智能分词：将连续的自然语言文本，切分成具有语义合理性和完整性的词汇序列；

        # 2、词性标注：为每一个词附上对应的词性，例如名词、代词、形容词、动词等；

        # 3、命名实体识别：快速识别文本中的实体，例如人名、地名、机构名等。

        # 所有的功能均基于千亿级大规模互联网语料进行持续迭代更新，以保证效果不断提升，用户无需担心新词发现、歧义消除、调用性能等问题。目前词法分析已经在泛互联网、金融、政务等不同垂直领域提供业务支持，并取得良好的效果。

        # @param request: Request instance for LexicalAnalysis.
        # @type request: :class:`Tencentcloud::nlp::V20190408::LexicalAnalysisRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::LexicalAnalysisResponse`
        def LexicalAnalysis(request)
          body = send_request('LexicalAnalysis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = LexicalAnalysisResponse.new
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

        # 查询指定自定义词库中的词条是否存在。

        # @param request: Request instance for SearchWordItems.
        # @type request: :class:`Tencentcloud::nlp::V20190408::SearchWordItemsRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::SearchWordItemsResponse`
        def SearchWordItems(request)
          body = send_request('SearchWordItems', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SearchWordItemsResponse.new
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

        # 句向量接口能够将输入的句子映射成一个固定维度的向量，用来表示这个句子的语义特征，可用于文本聚类、文本相似度、文本分类等任务，能够显著提高它们的效果。

        # 该句向量服务由腾讯云自然语言处理团队联合微信智言团队共同打造，基于千亿级大规模互联网语料并采用Bert等领先的深度神经网络模型训练而成，在腾讯内部诸多业务的NLP任务上实测效果显著。

        # @param request: Request instance for SentenceEmbedding.
        # @type request: :class:`Tencentcloud::nlp::V20190408::SentenceEmbeddingRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::SentenceEmbeddingResponse`
        def SentenceEmbedding(request)
          body = send_request('SentenceEmbedding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SentenceEmbeddingResponse.new
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

        # 情感分析接口能够对带有情感色彩的主观性文本进行分析、处理、归纳和推理，识别出用户的情感倾向，是积极还是消极，并且提供各自概率。

        # 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。

        # @param request: Request instance for SentimentAnalysis.
        # @type request: :class:`Tencentcloud::nlp::V20190408::SentimentAnalysisRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::SentimentAnalysisResponse`
        def SentimentAnalysis(request)
          body = send_request('SentimentAnalysis', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SentimentAnalysisResponse.new
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

        # 相似词接口能够基于同义词库及词向量技术，检索出与输入词语在语义上最相似的若干个词语，可广泛用于检索系统、问答系统、文档归档等场景。

        # @param request: Request instance for SimilarWords.
        # @type request: :class:`Tencentcloud::nlp::V20190408::SimilarWordsRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::SimilarWordsResponse`
        def SimilarWords(request)
          body = send_request('SimilarWords', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SimilarWordsResponse.new
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

        # 文本分类接口能够对用户输入的文本进行自动分类，将其映射到具体的类目上，用户只需要提供待分类的文本，而无需关注具体实现。

        # 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。

        # 目前已提供：

        # - 通用领域分类体系，二级分类，包括15个分类类目，分别是汽车、科技、健康、体育、旅行、教育、职业、文化、军事、房产、娱乐、女性、奥运、财经以及其他，适用于通用的场景。

        # - 新闻领域分类体系，五级分类，包括35个一级分类类目，228个二级分类，493个三级分类，204个四级分类，40个五级分类（详细请见附录->文本分类映射表），已应用于腾讯新闻的文章分类。

        # @param request: Request instance for TextClassification.
        # @type request: :class:`Tencentcloud::nlp::V20190408::TextClassificationRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::TextClassificationResponse`
        def TextClassification(request)
          body = send_request('TextClassification', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextClassificationResponse.new
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

        # 提供对中文文本的自动纠错功能，能够识别输入文本中的错误片段，定位错误并给出正确的文本结果；支持长度不超过2000字符（含标点符号）的长文本纠错。

        # 此功能是基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升，是搜索引擎、语音识别、内容审核等功能更好运行的基础之一。

        # @param request: Request instance for TextCorrection.
        # @type request: :class:`Tencentcloud::nlp::V20190408::TextCorrectionRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::TextCorrectionResponse`
        def TextCorrection(request)
          body = send_request('TextCorrection', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextCorrectionResponse.new
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

        # 句子相似度接口能够基于深度学习技术来计算一个源句子和多个目标句子的相似度，相似度分值越大的两个句子在语义上越相似。目前仅支持短文本（不超过500字符）的相似度计算，长文本的相似度计算也即将推出。

        # 鉴于句子相似度是一个应用非常广泛的功能，腾讯云自然语言处理团队在Bert等领先的深度神经网络模型的基础上，专门针对文本相似任务进行了优化，并持续迭代更新。基于句子相似度，可以轻松实现诸如文本去重、相似推荐等功能。

        # @param request: Request instance for TextSimilarity.
        # @type request: :class:`Tencentcloud::nlp::V20190408::TextSimilarityRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::TextSimilarityResponse`
        def TextSimilarity(request)
          body = send_request('TextSimilarity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextSimilarityResponse.new
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

        # 修改自定义词库元数据信息，包括名称、描述。

        # @param request: Request instance for UpdateDict.
        # @type request: :class:`Tencentcloud::nlp::V20190408::UpdateDictRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::UpdateDictResponse`
        def UpdateDict(request)
          body = send_request('UpdateDict', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UpdateDictResponse.new
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

        # 词向量接口能够将输入的词语映射成一个固定维度的词向量，用来表示这个词语的语义特征。词向量是很多自然语言处理技术的基础，能够显著提高它们的效果。

        # 该词向量服务由腾讯知文自然语言处理团队联合腾讯AI Lab共同打造。使用的词向量基于千亿级大规模互联网语料并采用AI Lab自研的DSG算法训练而成，开源的词向量包含800多万中文词汇，在覆盖率、新鲜度及准确性等三方面性能突出。

        # 腾讯AI Lab词向量相关资料：

        # https://ai.tencent.com/ailab/zh/news/detial?id=22

        # https://ai.tencent.com/ailab/nlp/zh/embedding.html

        # @param request: Request instance for WordEmbedding.
        # @type request: :class:`Tencentcloud::nlp::V20190408::WordEmbeddingRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::WordEmbeddingResponse`
        def WordEmbedding(request)
          body = send_request('WordEmbedding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = WordEmbeddingResponse.new
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

        # 词相似度接口能够基于词向量技术来计算两个输入词语的余弦相似度，相似度数值越大的两个词语在语义上越相似。

        # @param request: Request instance for WordSimilarity.
        # @type request: :class:`Tencentcloud::nlp::V20190408::WordSimilarityRequest`
        # @rtype: :class:`Tencentcloud::nlp::V20190408::WordSimilarityResponse`
        def WordSimilarity(request)
          body = send_request('WordSimilarity', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = WordSimilarityResponse.new
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