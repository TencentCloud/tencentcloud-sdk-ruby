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
  module Aiart
    module V20221229
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-12-29'
            api_endpoint = 'aiart.tencentcloudapi.com'
            sdk_version = 'AIART_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 智能图生图接口将根据输入的图片及辅助描述文本，智能生成与之相关的结果图。
        # 输入：单边分辨率小于2000、转成 Base64 字符串后小于 5MB 的图片，建议同时输入描述文本。
        # 输出：对应风格及分辨率的 AI 生成图。
        # 可支持的风格详见 [智能图生图风格列表](https://cloud.tencent.com/document/product/1668/86250)，请将列表中的“风格编号”传入 Styles 数组，建议选择一种风格。

        # 请求频率限制为1次/秒。

        # @param request: Request instance for ImageToImage.
        # @type request: :class:`Tencentcloud::aiart::V20221229::ImageToImageRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::ImageToImageResponse`
        def ImageToImage(request)
          body = send_request('ImageToImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageToImageResponse.new
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

        # 文生图（高级版）接口基于高级版文生图大模型，将根据输入的文本描述，智能生成与之相关的结果图。分为提交任务和查询任务2个接口。
        # 提交任务：输入文本等，提交一个文生图（高级版）异步任务，获得任务 ID。
        # 查询任务：根据任务 ID 查询任务的处理状态、处理结果，任务处理完成后可获得生成图像结果。
        # 并发任务数（并发）说明：并发任务数指能同时处理的任务数量。文生图（高级版）默认提供1个并发任务数，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for QueryTextToImageProJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::QueryTextToImageProJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::QueryTextToImageProJobResponse`
        def QueryTextToImageProJob(request)
          body = send_request('QueryTextToImageProJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryTextToImageProJobResponse.new
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

        # 文生图（高级版）接口基于高级版文生图大模型，将根据输入的文本描述，智能生成与之相关的结果图。分为提交任务和查询任务2个接口。
        # 提交任务：输入文本等，提交一个文生图（高级版）异步任务，获得任务 ID。
        # 查询任务：根据任务 ID 查询任务的处理状态、处理结果，任务处理完成后可获得生成图像结果。
        # 并发任务数（并发）说明：并发任务数指能同时处理的任务数量。文生图（高级版）默认提供1个并发任务数，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for SubmitTextToImageProJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::SubmitTextToImageProJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::SubmitTextToImageProJobResponse`
        def SubmitTextToImageProJob(request)
          body = send_request('SubmitTextToImageProJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTextToImageProJobResponse.new
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

        # 智能文生图接口将根据输入的描述文本，智能生成与之相关的结果图。
        # 输入：256个字符以内的描述性文本，推荐使用中文。
        # 输出：对应风格及分辨率的 AI 生成图。
        # 可支持的风格详见 [智能文生图风格列表](https://cloud.tencent.com/document/product/1668/86249)，请将列表中的“风格编号”传入 Styles 数组，建议选择一种风格。

        # 请求频率限制为1次/秒。

        # @param request: Request instance for TextToImage.
        # @type request: :class:`Tencentcloud::aiart::V20221229::TextToImageRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::TextToImageResponse`
        def TextToImage(request)
          body = send_request('TextToImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextToImageResponse.new
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