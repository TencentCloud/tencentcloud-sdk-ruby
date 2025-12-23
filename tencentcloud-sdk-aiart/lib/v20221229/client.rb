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
  module Aiart
    module V20221229
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2022-12-29'
            api_endpoint = 'aiart.tencentcloudapi.com'
            sdk_version = 'AIART_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 上传正面全身模特照和服装平铺图，生成模特换装后的图片。
        # 生成的换装图片分辨率和模特照分辨率一致。
        # 模特换装默认提供1个并发任务数，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for ChangeClothes.
        # @type request: :class:`Tencentcloud::aiart::V20221229::ChangeClothesRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::ChangeClothesResponse`
        def ChangeClothes(request)
          body = send_request('ChangeClothes', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ChangeClothesResponse.new
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

        # 查询图片特效任务

        # @param request: Request instance for DescribeTemplateToImageJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::DescribeTemplateToImageJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::DescribeTemplateToImageJobResponse`
        def DescribeTemplateToImageJob(request)
          body = send_request('DescribeTemplateToImageJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeTemplateToImageJobResponse.new
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

        # 局部消除接口通过图像 mask 指定需要消除的人、物、文字等区域，在选定区域对图像内容进行消除与重绘补全。
        # 默认提供1个并发，代表最多能同时处理1个已提交的任务。

        # @param request: Request instance for ImageInpaintingRemoval.
        # @type request: :class:`Tencentcloud::aiart::V20221229::ImageInpaintingRemovalRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::ImageInpaintingRemovalResponse`
        def ImageInpaintingRemoval(request)
          body = send_request('ImageInpaintingRemoval', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageInpaintingRemovalResponse.new
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

        # 扩图接口支持对输入图像按指定宽高比实现智能扩图。
        # 默认提供1个并发，代表最多能同时处理1个已提交的任务。

        # @param request: Request instance for ImageOutpainting.
        # @type request: :class:`Tencentcloud::aiart::V20221229::ImageOutpaintingRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::ImageOutpaintingResponse`
        def ImageOutpainting(request)
          body = send_request('ImageOutpainting', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ImageOutpaintingResponse.new
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

        # AI 写真分为上传训练图片、训练写真模型（可选跳过）、生成写真图片3个环节，需要依次调用对应接口。
        # 生成图片分为提交任务和查询任务2个接口：

        # - 提交生成写真图片任务：选择风格模板，提交一个生成写真图片异步任务，根据写真模型 ID 生成写真图片，获得任务 ID。
        # - 查询生成写真图片任务：根据任务 ID 查询生成图片任务的处理状态、处理结果。

        # 每个写真模型自训练完成起1年内有效，有效期内可使用写真模型 ID 生成图片，期满后需要重新训练。

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

        # AI 美照接口将根据模板为用户生成精美照片。分为提交任务和查询任务2个接口。
        # - 提交任务：提交一个美照生成异步任务，获得任务 ID。
        # - 查询任务：根据任务 ID 查询任务的处理状态、处理结果，任务处理完成后可获得生成图像结果。

        # AI 美照默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for QueryGlamPicJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::QueryGlamPicJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::QueryGlamPicJobResponse`
        def QueryGlamPicJob(request)
          body = send_request('QueryGlamPicJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryGlamPicJobResponse.new
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

        # 表情动图生成接口将静态照片制作成动态的表情包。分为提交任务和查询任务2个接口。
        # - 提交任务：提交一个表情动图生成异步任务，获得任务 ID。
        # - 查询任务：根据任务 ID 查询任务的处理状态、处理结果，任务处理完成后可获得生成图像结果。

        # 表情动图生成默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for QueryMemeJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::QueryMemeJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::QueryMemeJobResponse`
        def QueryMemeJob(request)
          body = send_request('QueryMemeJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryMemeJobResponse.new
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

        # 混元生图接口，基于混元大模型，根据输入的文本描述快速生成图片。
        # 默认提供0个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后，才能开始处理下一个任务。

        # @param request: Request instance for QueryTextToImageJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::QueryTextToImageJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::QueryTextToImageJobResponse`
        def QueryTextToImageJob(request)
          body = send_request('QueryTextToImageJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = QueryTextToImageJobResponse.new
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

        # AI 写真分为上传训练图片、训练写真模型（可选跳过）、生成写真图片3个环节，需要依次调用对应接口。
        # 如果选择免训练模式无需调用本接口。
        # 训练模型分为提交任务和查询任务2个接口：

        # - 提交训练写真模型任务：完成上传图片后，提交一个训练写真模型异步任务，根据写真模型 ID 开始训练模型。
        # - 查询训练写真模型任务：根据写真模型 ID 查询训练任务的处理状态、处理结果。

        # 每个写真模型自训练完成起1年内有效，有效期内可使用写真模型 ID 生成图片，期满后需要重新训练。

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

        # 将图像变清晰，增强图像细节。变清晰后的图片将保持原图比例，长边为2048。
        # 默认提供1个并发，代表最多能同时处理1个已提交的任务。

        # @param request: Request instance for RefineImage.
        # @type request: :class:`Tencentcloud::aiart::V20221229::RefineImageRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::RefineImageResponse`
        def RefineImage(request)
          body = send_request('RefineImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RefineImageResponse.new
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

        # 商品背景生成接口根据指定的背景描述 Prompt，将商品图中的原背景替换为自定义的新背景并保留商品主体形象，实现商品背景的自由生成与更换。

        # 商品背景生成默认提供1个并发任务数，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for ReplaceBackground.
        # @type request: :class:`Tencentcloud::aiart::V20221229::ReplaceBackgroundRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::ReplaceBackgroundResponse`
        def ReplaceBackground(request)
          body = send_request('ReplaceBackground', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ReplaceBackgroundResponse.new
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

        # 线稿生图接口支持上传一张黑白线稿图，按照指定的主体对象以及样式、颜色、材质、风格等的文本描述prompt ，对线稿图进行色彩填充与细节描绘，得到一张完整绘制的图像。生成图分辨率默认为1024:1024。
        # 线稿生图默认提供1个并发任务数，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for SketchToImage.
        # @type request: :class:`Tencentcloud::aiart::V20221229::SketchToImageRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::SketchToImageResponse`
        def SketchToImage(request)
          body = send_request('SketchToImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SketchToImageResponse.new
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

        # AI 写真分为上传训练图片、训练写真模型（可选跳过）、生成写真图片3个环节，需要依次调用对应接口。
        # 生成图片分为提交任务和查询任务2个接口：

        # - 提交生成写真图片任务：选择风格模板，提交一个生成写真图片异步任务，根据写真模型 ID 生成写真图片，获得任务 ID。
        # - 查询生成写真图片任务：根据任务 ID 查询生成图片任务的处理状态、处理结果。

        # 每个写真模型自训练完成起1年内有效，有效期内可使用写真模型 ID 生成图片，期满后需要重新训练。
        # 提交生成写真图片任务默认提供1个并发。

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

        # AI 美照接口将根据模板为用户生成精美照片。分为提交任务和查询任务2个接口。
        # - 提交任务：提交一个美照生成异步任务，获得任务 ID。
        # - 查询任务：根据任务 ID 查询任务的处理状态、处理结果，任务处理完成后可获得生成图像结果。

        # AI 美照默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for SubmitGlamPicJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::SubmitGlamPicJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::SubmitGlamPicJobResponse`
        def SubmitGlamPicJob(request)
          body = send_request('SubmitGlamPicJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitGlamPicJobResponse.new
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

        # 表情动图生成接口将静态照片制作成动态的表情包。分为提交任务和查询任务2个接口。

        # - 提交任务：提交一个表情动图生成异步任务，获得任务 ID。
        # - 查询任务：根据任务 ID 查询任务的处理状态、处理结果，任务处理完成后可获得生成图像结果。

        # 表情动图生成默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后才能开始处理下一个任务。

        # @param request: Request instance for SubmitMemeJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::SubmitMemeJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::SubmitMemeJobResponse`
        def SubmitMemeJob(request)
          body = send_request('SubmitMemeJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitMemeJobResponse.new
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

        # 提交图片特效任务

        # @param request: Request instance for SubmitTemplateToImageJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::SubmitTemplateToImageJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::SubmitTemplateToImageJobResponse`
        def SubmitTemplateToImageJob(request)
          body = send_request('SubmitTemplateToImageJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTemplateToImageJobResponse.new
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

        # 混元生图接口，基于混元大模型，根据输入的文本描述快速生成图片。
        # 默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后，才能开始处理下一个任务。

        # @param request: Request instance for SubmitTextToImageJob.
        # @type request: :class:`Tencentcloud::aiart::V20221229::SubmitTextToImageJobRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::SubmitTextToImageJobResponse`
        def SubmitTextToImageJob(request)
          body = send_request('SubmitTextToImageJob', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = SubmitTextToImageJobResponse.new
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

        # AI 写真分为上传训练图片、训练写真模型（可选跳过）、生成写真图片3个环节，需要依次调用对应接口。
        # 如果选择免训练模式无需调用本接口。
        # 训练模型分为提交任务和查询任务2个接口：
        # - 提交训练写真模型任务：完成上传图片后，提交一个训练写真模型异步任务，根据写真模型 ID 开始训练模型。
        # - 查询训练写真模型任务：根据写真模型 ID 查询训练任务的处理状态、处理结果。

        # 每个写真模型自训练完成起1年内有效，有效期内可使用写真模型 ID 生成图片，期满后需要重新训练。
        # 提交训练写真模型任务按并发计费，无默认并发额度。

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

        # 混元文生图接口，基于混元大模型，根据输入的文本描述智能生成图片
        # 默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后，才能开始处理下一个任务。

        # @param request: Request instance for TextToImageLite.
        # @type request: :class:`Tencentcloud::aiart::V20221229::TextToImageLiteRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::TextToImageLiteResponse`
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

        # 混元文生图接口，基于混元大模型，根据输入的文本描述智能生成图片
        # 默认提供1个并发，代表最多能同时处理1个已提交的任务，上一个任务处理完毕后，才能开始处理下一个任务。

        # @param request: Request instance for TextToImageRapid.
        # @type request: :class:`Tencentcloud::aiart::V20221229::TextToImageRapidRequest`
        # @rtype: :class:`Tencentcloud::aiart::V20221229::TextToImageRapidResponse`
        def TextToImageRapid(request)
          body = send_request('TextToImageRapid', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = TextToImageRapidResponse.new
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

        # AI 写真分为上传训练图片、训练写真模型（可选跳过）、生成写真图片3个环节，需要依次调用对应接口。
        # 本接口用于上传人像图片并指定对应的写真模型 ID。上传的图片要求是同一个人，建议上传单人、正脸、脸部区域占比较大、脸部清晰无遮挡、无大角度偏转、无夸张表情的图片。
        # 可选模式：
        # - 常规训练模式：上传20 - 25张图片用于模型训练，完成训练后可生成写真图片。
        # - 快速训练模式：仅需上传1张图片用于模型训练，训练速度更快，完成训练后可生成写真图片。
        # - 免训练模式：仅需上传1张图片，跳过训练环节，直接生成写真图片。

        # 上传写真训练图片默认提供1个并发。

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