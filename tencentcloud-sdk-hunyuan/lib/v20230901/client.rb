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
  module Hunyuan
    module V20230901
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2023-09-01'
            api_endpoint = 'hunyuan.tencentcloudapi.com'
            sdk_version = 'HUNYUAN_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 腾讯混元大模型是由腾讯研发的大语言模型，具备强大的中文创作能力，复杂语境下的逻辑推理能力，以及可靠的任务执行能力。本接口支持流式或非流式调用，当使用流式调用时为 SSE 协议。

        #  1. 本接口暂不支持返回图片内容。
        #  2. 默认每种模型单账号限制并发数为 5 路，如您有提高并发限制的需求请 [联系我们](https://cloud.tencent.com/act/event/Online_service) 。
        #  3. 请使用 SDK 调用本接口，每种开发语言的 SDK Git 仓库 examples/hunyuan/v20230901/ 目录下有提供示例供参考。SDK 链接在文档下方 “**开发者资源 - SDK**” 部分提供。

        # @param request: Request instance for ChatCompletions.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::ChatCompletionsRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::ChatCompletionsResponse`
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

        # <span style="font-size:1.5em;">注意：本接口将于 5 月 15 日下线；下线后将不再提供文档指引，接口本身可继续调用，建议使用 [hunyuan](https://cloud.tencent.com/document/api/1729/105701) 接入。</span>

        # 腾讯混元大模型（hunyuan-pro）是由腾讯研发的大语言模型，具备强大的中文创作能力，复杂语境下的逻辑推理能力，以及可靠的任务执行能力。本接口支持流式或非流式调用，当使用流式调用时为 SSE 协议。

        #  1. 本接口暂不支持返回图片内容。
        #  2. 默认单账号限制并发数为 5 路，如您有提高并发限制的需求请 [联系我们](https://cloud.tencent.com/act/event/Online_service) 。
        #  3. 请使用 SDK 调用本接口，每种开发语言的 SDK Git 仓库 examples/hunyuan/v20230901/ 目录下有提供示例供参考。SDK 链接在文档下方 “**开发者资源 - SDK**” 部分提供。

        # @param request: Request instance for ChatPro.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::ChatProRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::ChatProResponse`
        def ChatPro(request)
          body = send_request('ChatPro', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChatProResponse.new
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

        # <span style="font-size:1.5em;">注意：本接口将于 5 月 15 日下线；下线后将不再提供文档指引，接口本身可继续调用，建议使用 [hunyuan](https://cloud.tencent.com/document/api/1729/105701) 接入。</span>

        # 腾讯混元大模型标准版是由腾讯研发的大语言模型，具备强大的中文创作能力，复杂语境下的逻辑推理能力，以及可靠的任务执行能力。本接口支持流式或非流式调用，当使用流式调用时为 SSE 协议。

        #  1. 本接口暂不支持返回图片内容。
        #  2. 默认单账号限制并发数为 5 路，如您有提高并发限制的需求请 [联系我们](https://cloud.tencent.com/act/event/Online_service) 。
        #  3. 请使用 SDK 调用本接口，每种开发语言的 SDK Git 仓库 examples/hunyuan/v20230901/ 目录下有提供示例供参考。SDK 链接在文档下方 “**开发者资源 - SDK**” 部分提供。

        # @param request: Request instance for ChatStd.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::ChatStdRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::ChatStdResponse`
        def ChatStd(request)
          body = send_request('ChatStd', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChatStdResponse.new
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

        # 腾讯混元 Embedding 接口，可以将文本转化为高质量的向量数据。

        # @param request: Request instance for GetEmbedding.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::GetEmbeddingRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::GetEmbeddingResponse`
        def GetEmbedding(request)
          body = send_request('GetEmbedding', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetEmbeddingResponse.new
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

        # 该接口用于计算文本对应Token数、字符数。

        # @param request: Request instance for GetTokenCount.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::GetTokenCountRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::GetTokenCountResponse`
        def GetTokenCount(request)
          body = send_request('GetTokenCount', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GetTokenCountResponse.new
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