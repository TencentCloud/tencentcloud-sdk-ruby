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
  module Es
    module V20250101
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2025-01-01'
            api_endpoint = 'es.tencentcloudapi.com'
            sdk_version = 'ES_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 本服务支持一系列高性能的大语言模型，包括DeepSeek以及腾讯自主研发的混元大模型，结合混合搜索等先进搜索技术，快速高效实现RAG，有效解决幻觉和知识更新问题。
        # 本接口有单账号调用上限控制，如您有提高并发限制的需求请[联系我们](https://cloud.tencent.com/act/event/Online_service)  。

        # @param request: Request instance for ChatCompletions.
        # @type request: :class:`Tencentcloud::es::V20250101::ChatCompletionsRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::ChatCompletionsResponse`
        def ChatCompletions(request)
          body = send_request('ChatCompletions', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChatCompletionsResponse.new
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

        # 文本切片是将长文本分割为短片段的技术，用于适配模型输入、提升处理效率或信息检索，平衡片段长度与语义连贯性，适用于NLP、数据分析等场景。
        # 本接口为分隔符规则切片接口，有单账号调用上限控制，如您有提高并发限制的需求请 [联系我们](https://cloud.tencent.com/act/event/Online_service)  。

        # @param request: Request instance for ChunkDocument.
        # @type request: :class:`Tencentcloud::es::V20250101::ChunkDocumentRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::ChunkDocumentResponse`
        def ChunkDocument(request)
          body = send_request('ChunkDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChunkDocumentResponse.new
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

        # 文本切片是将长文本分割为短片段的技术，用于适配模型输入、提升处理效率或信息检索，平衡片段长度与语义连贯性，适用于NLP、数据分析等场景。
        # 本接口为异步接口，有单账号调用上限控制，如您有提高并发限制的需求请[联系我们](https://cloud.tencent.com/act/event/Online_service) 。

        # @param request: Request instance for ChunkDocumentAsync.
        # @type request: :class:`Tencentcloud::es::V20250101::ChunkDocumentAsyncRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::ChunkDocumentAsyncResponse`
        def ChunkDocumentAsync(request)
          body = send_request('ChunkDocumentAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChunkDocumentAsyncResponse.new
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

        # 获取文档切片结果

        # @param request: Request instance for GetDocumentChunkResult.
        # @type request: :class:`Tencentcloud::es::V20250101::GetDocumentChunkResultRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::GetDocumentChunkResultResponse`
        def GetDocumentChunkResult(request)
          body = send_request('GetDocumentChunkResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDocumentChunkResultResponse.new
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

        # 本接口用于获取文档解析异步处理结果。

        # @param request: Request instance for GetDocumentParseResult.
        # @type request: :class:`Tencentcloud::es::V20250101::GetDocumentParseResultRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::GetDocumentParseResultResponse`
        def GetDocumentParseResult(request)
          body = send_request('GetDocumentParseResult', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetDocumentParseResultResponse.new
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

        # Embedding是一种将高维数据映射到低维空间的技术，通常用于将非结构化数据，如文本、图像或音频转化为向量表示，使其更容易输入机器模型进行处理，并且向量之间的距离可以反映对象之间的相似性。
        # 本接口有单账号调用上限控制，如您有提高并发限制的需求请[联系我们](https://cloud.tencent.com/act/event/Online_service)  。

        # @param request: Request instance for GetTextEmbedding.
        # @type request: :class:`Tencentcloud::es::V20250101::GetTextEmbeddingRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::GetTextEmbeddingResponse`
        def GetTextEmbedding(request)
          body = send_request('GetTextEmbedding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTextEmbeddingResponse.new
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

        # 本服务可将各类格式文档精准转换为标准格式，满足企业知识库建设、技术文档迁移、内容平台结构化存储等需求。
        # 本接口有单账号调用上限控制，如您有提高并发限制的需求请[联系我们](https://cloud.tencent.com/act/event/Online_service)。

        # @param request: Request instance for ParseDocument.
        # @type request: :class:`Tencentcloud::es::V20250101::ParseDocumentRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::ParseDocumentResponse`
        def ParseDocument(request)
          body = send_request('ParseDocument', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ParseDocumentResponse.new
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

        # 本服务可将各类格式文档精准转换为标准格式，满足企业知识库建设、技术文档迁移、内容平台结构化存储等需求。
        # 本接口为异步接口，有单账号调用上限控制，如您有提高并发限制的需求请[联系我们](https://cloud.tencent.com/act/event/Online_service)  。

        # @param request: Request instance for ParseDocumentAsync.
        # @type request: :class:`Tencentcloud::es::V20250101::ParseDocumentAsyncRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::ParseDocumentAsyncResponse`
        def ParseDocumentAsync(request)
          body = send_request('ParseDocumentAsync', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ParseDocumentAsyncResponse.new
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

        # 重排是指在 RAG 过程中，通过评估文档与查询之间的相关性，将最相关的文档放在前面，确保语言模型在生成回答时优先考虑排名靠前的上下文，提高生成结果的准确性和可信度，也可以通过这种方式进行过滤，减少大模型成本。
        # 本接口有单账号调用上限控制，如您有提高并发限制的需求请[联系我们](https://cloud.tencent.com/act/event/Online_service)  。

        # @param request: Request instance for RunRerank.
        # @type request: :class:`Tencentcloud::es::V20250101::RunRerankRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::RunRerankResponse`
        def RunRerank(request)
          body = send_request('RunRerank', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RunRerankResponse.new
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

        # WebSearch API 是一个网页搜索服务，支持多种搜索引擎，可以获取网页的标题、URL、摘要和正文内容。

        # @param request: Request instance for WebSearch.
        # @type request: :class:`Tencentcloud::es::V20250101::WebSearchRequest`
        # @rtype: :class:`Tencentcloud::es::V20250101::WebSearchResponse`
        def WebSearch(request)
          body = send_request('WebSearch', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = WebSearchResponse.new
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