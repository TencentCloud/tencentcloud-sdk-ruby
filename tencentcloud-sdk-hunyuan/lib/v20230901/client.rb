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


        # 开通服务

        # @param request: Request instance for ActivateService.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::ActivateServiceRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::ActivateServiceResponse`
        def ActivateService(request)
          body = send_request('ActivateService', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ActivateServiceResponse.new
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

        # 腾讯混元大模型是由腾讯研发的大语言模型，具备强大的中文创作能力，复杂语境下的逻辑推理能力，以及可靠的任务执行能力。本接口支持流式或非流式调用，当使用流式调用时为 SSE 协议。

        #  1. 本接口暂不支持返回图片内容。
        #  2. 默认每种模型单账号限制并发数为 5 路，如您有提高并发限制的需求请 [联系我们](https://cloud.tencent.com/act/event/Online_service) 。
        #  3. 请使用 SDK 调用本接口，每种开发语言的 SDK Git 仓库 examples/hunyuan/v20230901/ 目录下有提供示例供参考。SDK 链接在文档下方 “**开发者资源 - SDK**” 部分提供。
        #  4. 我们推荐您使用 API Explorer，方便快速地在线调试接口和下载各语言的示例代码，[点击打开](https://console.cloud.tencent.com/api/explorer?Product=hunyuan&Version=2023-09-01&Action=ChatCompletions)。

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

        # 腾讯混元 Embedding 接口，可以将文本转化为高质量的向量数据。向量维度为1024维。

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

        # 混元生图接口基于混元大模型，将根据输入的文本描述，智能生成与之相关的结果图。分为提交任务和查询任务2个接口。
        # 提交任务：输入文本等，提交一个混元生图异步任务，获得任务 ID。
        # 查询任务：根据任务 ID 查询任务的处理状态、处理结果，任务处理完成后可获得生成图像结果。
        # 并发任务数（并发）说明：并发任务数指能同时处理的任务数量。混元生图默认提供1个并发任务数，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for QueryHunyuanImageJob.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::QueryHunyuanImageJobRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::QueryHunyuanImageJobResponse`
        def QueryHunyuanImageJob(request)
          body = send_request('QueryHunyuanImageJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryHunyuanImageJobResponse.new
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

        # 设置付费模式

        # @param request: Request instance for SetPayMode.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::SetPayModeRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::SetPayModeResponse`
        def SetPayMode(request)
          body = send_request('SetPayMode', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SetPayModeResponse.new
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

        # 混元生图接口基于混元大模型，将根据输入的文本描述，智能生成与之相关的结果图。分为提交任务和查询任务2个接口。
        # 提交任务：输入文本等，提交一个混元生图异步任务，获得任务 ID。
        # 查询任务：根据任务 ID 查询任务的处理状态、处理结果，任务处理完成后可获得生成图像结果。
        # 并发任务数（并发）说明：并发任务数指能同时处理的任务数量。混元生图默认提供1个并发任务数，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for SubmitHunyuanImageJob.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::SubmitHunyuanImageJobRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::SubmitHunyuanImageJobResponse`
        def SubmitHunyuanImageJob(request)
          body = send_request('SubmitHunyuanImageJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitHunyuanImageJobResponse.new
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

        # 文生图轻量版接口根据输入的文本描述，智能生成与之相关的结果图。
        # 文生图轻量版默认提供3个并发任务数，代表最多能同时处理3个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for TextToImageLite.
        # @type request: :class:`Tencentcloud::hunyuan::V20230901::TextToImageLiteRequest`
        # @rtype: :class:`Tencentcloud::hunyuan::V20230901::TextToImageLiteResponse`
        def TextToImageLite(request)
          body = send_request('TextToImageLite', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextToImageLiteResponse.new
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