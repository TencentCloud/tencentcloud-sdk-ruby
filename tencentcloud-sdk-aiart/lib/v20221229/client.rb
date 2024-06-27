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


        # 百变头像接口将根据输入的人像照片，生成风格百变的头像。
        # 百变头像默认提供1个并发任务数，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for GenerateAvatar.
        # @type request: :class:`Tencentcloud::aiart::V20221229::GenerateAvatarRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::GenerateAvatarResponse`
        def GenerateAvatar(request)
          body = send_request('GenerateAvatar', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = GenerateAvatarResponse.new
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

        # 图像风格化（图生图）接口提供生成式的图生图风格转化能力，将根据输入的图像及文本描述，智能生成风格转化后的图像。建议避免输入人像过小、姿势复杂、人数较多的人像图片。
        # 图像风格化（图生图）默认提供3个并发任务数，代表最多能同时处理3个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

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

        # AI 写真提供 AI 写真形象照的训练与生成能力，分为上传训练图片、训练模型、生成图片3个环节，需要依次调用对应接口。
        # 每个写真模型自训练完成起1年内有效，有效期内可使用写真模型 ID 生成图片，期满后需要重新训练。
        # 生成图片分为提交任务和查询任务2个接口。
        # - 提交生成写真图片任务：完成训练写真模型后，选择写真风格模板，提交一个生成写真图片异步任务，根据写真模型 ID 开始生成人物形象在指定风格上的写真图片，获得任务 ID。
        # - 查询生成写真图片任务：根据任务 ID 查询生成图片任务的处理状态、处理结果。

        # 默认接口请求频率限制：20次/秒。

        # @param request: Request instance for QueryDrawPortraitJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::QueryDrawPortraitJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::QueryDrawPortraitJobResponse`
        def QueryDrawPortraitJob(request)
          body = send_request('QueryDrawPortraitJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryDrawPortraitJobResponse.new
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

        # 本接口已迁移至腾讯混元大模型-混元生图，即将停止此处维护，可切换至 [混元生图 API](https://cloud.tencent.com/document/product/1729/105970) 继续使用。
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

        # AI 写真提供 AI 写真形象照的训练与生成能力，分为上传训练图片、训练模型、生成图片3个环节，需要依次调用对应接口。
        # 每个写真模型自训练完成起1年内有效，有效期内可使用写真模型 ID 生成图片，期满后需要重新训练。
        # 训练模型分为提交任务和查询任务2个接口。
        # - 提交训练写真模型任务：完成上传训练图片后，提交一个训练写真模型异步任务，根据写真模型 ID 开始训练模型。
        # - 查询训练写真模型任务：根据写真模型 ID 查询训练任务的处理状态、处理结果。

        # 默认接口请求频率限制：20次/秒。

        # @param request: Request instance for QueryTrainPortraitModelJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::QueryTrainPortraitModelJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::QueryTrainPortraitModelJobResponse`
        def QueryTrainPortraitModelJob(request)
          body = send_request('QueryTrainPortraitModelJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryTrainPortraitModelJobResponse.new
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

        # AI 写真提供 AI 写真形象照的训练与生成能力，分为上传训练图片、训练模型、生成图片3个环节，需要依次调用对应接口。
        # 每个写真模型自训练完成起1年内有效，有效期内可使用写真模型 ID 生成图片，期满后需要重新训练。
        # 生成图片分为提交任务和查询任务2个接口。
        # - 提交生成写真图片任务：完成训练写真模型后，选择风格模板，提交一个生成写真图片异步任务，根据写真模型 ID 开始生成人物形象在指定风格上的写真图片，获得任务 ID。
        # - 查询生成写真图片任务：根据任务 ID 查询生成图片任务的处理状态、处理结果。

        # 提交生成写真图片任务默认提供1个并发任务数。

        # @param request: Request instance for SubmitDrawPortraitJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::SubmitDrawPortraitJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::SubmitDrawPortraitJobResponse`
        def SubmitDrawPortraitJob(request)
          body = send_request('SubmitDrawPortraitJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitDrawPortraitJobResponse.new
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

        # 本接口已迁移至腾讯混元大模型-混元生图，即将停止此处维护，可切换至 [混元生图 API](https://cloud.tencent.com/document/product/1729/105969) 继续使用。
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

        # AI 写真提供 AI 写真形象照的训练与生成能力，分为上传训练图片、训练模型、生成图片3个环节，需要依次调用对应接口。
        # 每个写真模型自训练完成起1年内有效，有效期内可使用写真模型 ID 生成图片，期满后需要重新训练。
        # 训练模型分为提交任务和查询任务2个接口。
        # - 提交训练写真模型任务：完成上传训练图片后，提交一个训练写真模型异步任务，根据写真模型 ID 开始训练模型。
        # - 查询训练写真模型任务：根据写真模型 ID 查询训练任务的处理状态、处理结果。
        # 提交训练写真模型任务按并发任务数计费，无默认并发额度。

        # @param request: Request instance for SubmitTrainPortraitModelJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::SubmitTrainPortraitModelJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::SubmitTrainPortraitModelJobResponse`
        def SubmitTrainPortraitModelJob(request)
          body = send_request('SubmitTrainPortraitModelJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTrainPortraitModelJobResponse.new
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

        # 智能文生图接口基于文生图（标准版）模型，将根据输入的文本描述，智能生成与之相关的结果图。

        # 智能文生图默认提供3个并发任务数，代表最多能同时处理3个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

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

        # AI 写真提供 AI 写真形象照的训练与生成能力，分为上传训练图片、训练模型、生成图片3个环节，需要依次调用对应接口。
        # 本接口用于指定一个人物形象的写真模型 ID，上传用于训练该模型的图片。一个写真模型仅用于一个人物形象的写真生成，上传的训练图片要求所属同一人，建议上传单人、正脸、脸部区域占比较大、脸部清晰无遮挡、无大角度偏转、无夸张表情的图片。
        # 上传写真训练图片默认提供1个并发任务数。

        # @param request: Request instance for UploadTrainPortraitImages.
        # @type request: :class:`Tencentcloud::aiart::V20221229::UploadTrainPortraitImagesRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::UploadTrainPortraitImagesResponse`
        def UploadTrainPortraitImages(request)
          body = send_request('UploadTrainPortraitImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = UploadTrainPortraitImagesResponse.new
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