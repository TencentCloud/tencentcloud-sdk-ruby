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

module TencentCloud
  module Aiart
    module V20221229
      # ChangeClothes请求参数结构体
      class ChangeClothesRequest < TencentCloud::Common::AbstractModel
        # @param ModelUrl: 模特图片 Url。
        # 图片限制：单边分辨率小于3000，且大于512，转成 Base64 字符串后小于 8MB。
        # 输入要求：
        # 1、建议上传正面模特图片，至少完整露出应穿着输入指定服装的身体部位（全身、上半身或下半身），无大角度身体偏转或异常姿势。
        # 2、建议上传3:4比例的图片，生成效果更佳。
        # 3、建议模特图片中的原始服装和更换后的服装类别一致，或原始服装在身体上的覆盖范围小于等于更换后的服装（例如需要给模特换上短裤，则原始模特图片中也建议穿短裤，不建议穿长裤），否则会影响人像生成效果。
        # @type ModelUrl: String
        # @param ClothesUrl: 服装图片 Url。
        # 图片限制：单边分辨率小于3000，大于512，转成 Base64 字符串后小于 8MB。
        # 输入要求：
        # 建议上传服装完整的正面平铺图片，仅包含1个服装主体，服装类型支持上衣、下装、连衣裙，三选一。算法将根据输入的图片，结合服装图片给模特换装。
        # @type ClothesUrl: String
        # @param ClothesType: 服装类型，需要和服装图片保持一致。
        # 取值：
        # Upper-body：上衣
        # Lower-body：下装
        # Dress：连衣裙
        # @type ClothesType: String
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。
        # 生成图分辨率较大时建议选择 url，使用 base64 可能因图片过大导致返回失败。
        # @type RspImgType: String

        attr_accessor :ModelUrl, :ClothesUrl, :ClothesType, :LogoAdd, :LogoParam, :RspImgType

        def initialize(modelurl=nil, clothesurl=nil, clothestype=nil, logoadd=nil, logoparam=nil, rspimgtype=nil)
          @ModelUrl = modelurl
          @ClothesUrl = clothesurl
          @ClothesType = clothestype
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @ModelUrl = params['ModelUrl']
          @ClothesUrl = params['ClothesUrl']
          @ClothesType = params['ClothesType']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @RspImgType = params['RspImgType']
        end
      end

      # ChangeClothes返回参数结构体
      class ChangeClothesResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :RequestId

        def initialize(resultimage=nil, requestid=nil)
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @RequestId = params['RequestId']
        end
      end

      # 融合信息
      class FaceInfo < TencentCloud::Common::AbstractModel
        # @param ImageUrls: 用户图 URL 列表
        # @type ImageUrls: Array
        # @param TemplateFaceRect: 模版图人脸坐标。
        # @type TemplateFaceRect: :class:`Tencentcloud::Aiart.v20221229.models.Rect`

        attr_accessor :ImageUrls, :TemplateFaceRect

        def initialize(imageurls=nil, templatefacerect=nil)
          @ImageUrls = imageurls
          @TemplateFaceRect = templatefacerect
        end

        def deserialize(params)
          @ImageUrls = params['ImageUrls']
          unless params['TemplateFaceRect'].nil?
            @TemplateFaceRect = Rect.new
            @TemplateFaceRect.deserialize(params['TemplateFaceRect'])
          end
        end
      end

      # 训练图像质量过滤开关配置。
      # 支持开启或关闭对训练图像分辨率下限、脸部区域大小、脸部遮挡、脸部角度的过滤，默认开启以上过滤。
      # 如果训练图像内包含多人脸或无人脸、和 Base 人像不为同一人也将被过滤，不可关闭该过滤条件。
      # 建议：关闭以上过滤可能导致写真生成效果受损，建议使用单人、正脸、脸部清晰、无遮挡、无夸张表情、脸部区域占比较大的图像进行训练。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Resolution: 过滤不满足分辨率下限的训练图像，默认开启过滤
        # 开启后将过滤横边<512或竖边<720的图片，横、竖边上限均为2000，不支持调整

        # 1：开启过滤
        # 0：关闭过滤
        # @type Resolution: Integer
        # @param Size: 过滤脸部区域过小的训练图像，默认开启过滤

        # 1：开启过滤
        # 0：关闭过滤
        # @type Size: Integer
        # @param Occlusion: 过滤脸部存在明显遮挡、偏转角度过大等质量较差的训练图像，默认开启过滤

        # 1：开启过滤
        # 0：关闭过滤
        # @type Occlusion: Integer

        attr_accessor :Resolution, :Size, :Occlusion

        def initialize(resolution=nil, size=nil, occlusion=nil)
          @Resolution = resolution
          @Size = size
          @Occlusion = occlusion
        end

        def deserialize(params)
          @Resolution = params['Resolution']
          @Size = params['Size']
          @Occlusion = params['Occlusion']
        end
      end

      # GenerateAvatar请求参数结构体
      class GenerateAvatarRequest < TencentCloud::Common::AbstractModel
        # @param Type: 图像类型，默认为人像。
        # human：人像头像，仅支持人像图片输入，建议避免上传无人、多人、人像过小的图片。
        # pet：萌宠贴纸，仅支持动物图片输入，建议避免上传无动物、多动物、动物过小的图片。
        # @type Type: String
        # @param Style: 头像风格，仅在人像模式下生效。
        # 若使用人像模式，请在  [百变头像风格列表](https://cloud.tencent.com/document/product/1668/107741) 中选择期望的风格，传入风格编号，不传默认使用 flower 风格。
        # 若使用萌宠贴纸模式，无需选择风格，该参数不生效。
        # @type Style: String
        # @param InputImage: 输入图 Base64 数据。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000，转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputImage: String
        # @param InputUrl: 输入图 Url。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000，转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputUrl: String
        # @param Filter: 输入人像图的质量检测开关，默认开启，仅在人像模式下生效。
        # 1：开启
        # 0：关闭
        # 建议开启检测，可提升生成效果，关闭检测可能因输入图像质量较差导致生成效果受损。
        # 开启后，将增强对输入图像的质量要求，如果输入图像单边分辨率<500、图像中人脸占比较小、存在多人、没有检测到人脸、人脸不完整、人脸遮挡等，将被拦截。
        # 关闭后，将降低对输入图像的质量要求，如果图像中没有检测到人脸或人脸占比过小等，将被拦截。
        # @type Filter: Integer
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。
        # @type RspImgType: String

        attr_accessor :Type, :Style, :InputImage, :InputUrl, :Filter, :LogoAdd, :LogoParam, :RspImgType

        def initialize(type=nil, style=nil, inputimage=nil, inputurl=nil, filter=nil, logoadd=nil, logoparam=nil, rspimgtype=nil)
          @Type = type
          @Style = style
          @InputImage = inputimage
          @InputUrl = inputurl
          @Filter = filter
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @Type = params['Type']
          @Style = params['Style']
          @InputImage = params['InputImage']
          @InputUrl = params['InputUrl']
          @Filter = params['Filter']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @RspImgType = params['RspImgType']
        end
      end

      # GenerateAvatar返回参数结构体
      class GenerateAvatarResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :RequestId

        def initialize(resultimage=nil, requestid=nil)
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @RequestId = params['RequestId']
        end
      end

      # 图片
      class Image < TencentCloud::Common::AbstractModel
        # @param Base64: 图片Base64
        # @type Base64: String
        # @param Url: 图片Url
        # @type Url: String

        attr_accessor :Base64, :Url

        def initialize(base64=nil, url=nil)
          @Base64 = base64
          @Url = url
        end

        def deserialize(params)
          @Base64 = params['Base64']
          @Url = params['Url']
        end
      end

      # ImageInpaintingRemoval请求参数结构体
      class ImageInpaintingRemovalRequest < TencentCloud::Common::AbstractModel
        # @param InputImage: 输入图 Base64 数据。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000，转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputImage: String
        # @param InputUrl: 输入图 Url。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000，转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputUrl: String
        # @param Mask: 消除区域 Mask 图 Base64 数据。
        # Mask 为单通道灰度图，待消除部分呈白色区域，原图保持部分呈黑色区域。
        # Mask 的 Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：Mask 分辨率需要和输入原图保持一致，转成 Base64 字符串后小于 6MB。
        # @type Mask: String
        # @param MaskUrl: 消除区域 Mask 图 Url。
        # Mask 为单通道灰度图，待消除部分呈白色区域，原图保持部分呈黑色区域。
        # Mask 的 Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：Mask 分辨率需要和输入原图保持一致，转成 Base64 字符串后小于 6MB。
        # @type MaskUrl: String
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。
        # @type RspImgType: String
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`

        attr_accessor :InputImage, :InputUrl, :Mask, :MaskUrl, :RspImgType, :LogoAdd, :LogoParam

        def initialize(inputimage=nil, inputurl=nil, mask=nil, maskurl=nil, rspimgtype=nil, logoadd=nil, logoparam=nil)
          @InputImage = inputimage
          @InputUrl = inputurl
          @Mask = mask
          @MaskUrl = maskurl
          @RspImgType = rspimgtype
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @InputImage = params['InputImage']
          @InputUrl = params['InputUrl']
          @Mask = params['Mask']
          @MaskUrl = params['MaskUrl']
          @RspImgType = params['RspImgType']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # ImageInpaintingRemoval返回参数结构体
      class ImageInpaintingRemovalResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。 如果传入 base64 则返回生成图 Base64 编码。 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :RequestId

        def initialize(resultimage=nil, requestid=nil)
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @RequestId = params['RequestId']
        end
      end

      # ImageOutpainting请求参数结构体
      class ImageOutpaintingRequest < TencentCloud::Common::AbstractModel
        # @param Ratio: 扩展后的比例（宽:高），需要不等于原图比例。
        # 支持：1:1、4:3、3:4、16:9、9:16
        # @type Ratio: String
        # @param InputImage: 输入图 Base64 数据。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000，转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputImage: String
        # @param InputUrl: 输入图 Url。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000，转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputUrl: String
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。
        # @type RspImgType: String
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`

        attr_accessor :Ratio, :InputImage, :InputUrl, :RspImgType, :LogoAdd, :LogoParam

        def initialize(ratio=nil, inputimage=nil, inputurl=nil, rspimgtype=nil, logoadd=nil, logoparam=nil)
          @Ratio = ratio
          @InputImage = inputimage
          @InputUrl = inputurl
          @RspImgType = rspimgtype
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Ratio = params['Ratio']
          @InputImage = params['InputImage']
          @InputUrl = params['InputUrl']
          @RspImgType = params['RspImgType']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # ImageOutpainting返回参数结构体
      class ImageOutpaintingResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :RequestId

        def initialize(resultimage=nil, requestid=nil)
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @RequestId = params['RequestId']
        end
      end

      # ImageToImage请求参数结构体
      class ImageToImageRequest < TencentCloud::Common::AbstractModel
        # @param InputImage: 输入图 Base64 数据。
        # 算法将根据输入的图片，结合文本描述智能生成与之相关的图像。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000且大于50，转成 Base64 字符串后小于 8MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputImage: String
        # @param InputUrl: 输入图 Url。
        # 算法将根据输入的图片，结合文本描述智能生成与之相关的图像。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000且大于50，转成 Base64 字符串后小于 8MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputUrl: String
        # @param Prompt: 文本描述。
        # 用于在输入图的基础上引导生成图效果，增加生成结果中出现描述内容的可能。
        # 推荐使用中文。最多支持256个 utf-8 字符。
        # @type Prompt: String
        # @param NegativePrompt: 反向文本描述。
        # 用于一定程度上从反面引导模型生成的走向，减少生成结果中出现描述内容的可能，但不能完全杜绝。
        # 推荐使用中文。最多可传256个 utf-8 字符。
        # @type NegativePrompt: String
        # @param Styles: 绘画风格。
        # 请在  [图像风格化风格列表](https://cloud.tencent.com/document/product/1668/86250) 中选择期望的风格，传入风格编号。
        # 推荐使用且只使用一种风格。不传默认使用201（日系动漫风格）。
        # @type Styles: Array
        # @param ResultConfig: 生成图结果的配置，包括输出图片分辨率和尺寸等。
        # 支持生成以下分辨率的图片：origin（与输入图分辨率一致，长边最高为2000，超出将做等比例缩小）、768:768（1:1）、768:1024（3:4）、1024:768（4:3）。
        # 不传默认使用origin。
        # @type ResultConfig: :class:`Tencentcloud::Aiart.v20221229.models.ResultConfig`
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`
        # @param Strength: 生成自由度。
        # Strength 值越小，生成图和原图越接近，取值范围(0, 1]，不传使用模型内置的默认值。
        # 推荐的取值范围为0.6 - 0.8。
        # @type Strength: Float
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。
        # @type RspImgType: String
        # @param EnhanceImage: 画质增强开关，默认关闭。
        # 1：开启
        # 0：关闭
        # 开启后将增强图像的画质清晰度，生成耗时有所增加。
        # @type EnhanceImage: Integer
        # @param RestoreFace: 细节优化的面部数量上限，支持0 ~ 6，默认为0。
        # 若上传大于0的值，将以此为上限对每张图片中面积占比较小的面部进行细节修复，生成耗时根据实际优化的面部个数有所增加。
        # @type RestoreFace: Integer

        attr_accessor :InputImage, :InputUrl, :Prompt, :NegativePrompt, :Styles, :ResultConfig, :LogoAdd, :LogoParam, :Strength, :RspImgType, :EnhanceImage, :RestoreFace

        def initialize(inputimage=nil, inputurl=nil, prompt=nil, negativeprompt=nil, styles=nil, resultconfig=nil, logoadd=nil, logoparam=nil, strength=nil, rspimgtype=nil, enhanceimage=nil, restoreface=nil)
          @InputImage = inputimage
          @InputUrl = inputurl
          @Prompt = prompt
          @NegativePrompt = negativeprompt
          @Styles = styles
          @ResultConfig = resultconfig
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @Strength = strength
          @RspImgType = rspimgtype
          @EnhanceImage = enhanceimage
          @RestoreFace = restoreface
        end

        def deserialize(params)
          @InputImage = params['InputImage']
          @InputUrl = params['InputUrl']
          @Prompt = params['Prompt']
          @NegativePrompt = params['NegativePrompt']
          @Styles = params['Styles']
          unless params['ResultConfig'].nil?
            @ResultConfig = ResultConfig.new
            @ResultConfig.deserialize(params['ResultConfig'])
          end
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @Strength = params['Strength']
          @RspImgType = params['RspImgType']
          @EnhanceImage = params['EnhanceImage']
          @RestoreFace = params['RestoreFace']
        end
      end

      # ImageToImage返回参数结构体
      class ImageToImageResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :RequestId

        def initialize(resultimage=nil, requestid=nil)
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @RequestId = params['RequestId']
        end
      end

      # logo参数
      class LogoParam < TencentCloud::Common::AbstractModel
        # @param LogoUrl: 水印 Url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogoUrl: String
        # @param LogoImage: 水印 Base64，Url 和 Base64 二选一传入，如果都提供以 Url 为准
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogoImage: String
        # @param LogoRect: 水印图片位于生成结果图中的坐标，将按照坐标对标识图片进行位置和大小的拉伸匹配
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogoRect: :class:`Tencentcloud::Aiart.v20221229.models.LogoRect`

        attr_accessor :LogoUrl, :LogoImage, :LogoRect

        def initialize(logourl=nil, logoimage=nil, logorect=nil)
          @LogoUrl = logourl
          @LogoImage = logoimage
          @LogoRect = logorect
        end

        def deserialize(params)
          @LogoUrl = params['LogoUrl']
          @LogoImage = params['LogoImage']
          unless params['LogoRect'].nil?
            @LogoRect = LogoRect.new
            @LogoRect.deserialize(params['LogoRect'])
          end
        end
      end

      # 输入框
      class LogoRect < TencentCloud::Common::AbstractModel
        # @param X: 左上角X坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type X: Integer
        # @param Y: 左上角Y坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Y: Integer
        # @param Width: 方框宽度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 方框高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer

        attr_accessor :X, :Y, :Width, :Height

        def initialize(x=nil, y=nil, width=nil, height=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # QueryDrawPortraitJob请求参数结构体
      class QueryDrawPortraitJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 查询生成写真图片任务 ID。
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # QueryDrawPortraitJob返回参数结构体
      class QueryDrawPortraitJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatusCode: 任务状态码。
        # INIT: 初始化、WAIT：等待中、RUN：运行中、FAIL：处理失败、DONE：处理完成。
        # @type JobStatusCode: String
        # @param JobStatusMsg: 任务状态信息。
        # @type JobStatusMsg: String
        # @param JobErrorCode: 任务错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务错误信息。
        # @type JobErrorMsg: String
        # @param ResultUrls: 结果 URL 数组。
        # URL 有效期1小时，请及时保存。
        # @type ResultUrls: Array
        # @param ResultDetails: 结果描述数组。
        # @type ResultDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatusCode, :JobStatusMsg, :JobErrorCode, :JobErrorMsg, :ResultUrls, :ResultDetails, :RequestId

        def initialize(jobstatuscode=nil, jobstatusmsg=nil, joberrorcode=nil, joberrormsg=nil, resulturls=nil, resultdetails=nil, requestid=nil)
          @JobStatusCode = jobstatuscode
          @JobStatusMsg = jobstatusmsg
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ResultUrls = resulturls
          @ResultDetails = resultdetails
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatusCode = params['JobStatusCode']
          @JobStatusMsg = params['JobStatusMsg']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ResultUrls = params['ResultUrls']
          @ResultDetails = params['ResultDetails']
          @RequestId = params['RequestId']
        end
      end

      # QueryGlamPicJob请求参数结构体
      class QueryGlamPicJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID。
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # QueryGlamPicJob返回参数结构体
      class QueryGlamPicJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatusCode: 当前任务状态码：
        # 1：等待中、2：运行中、4：处理失败、5：处理完成。
        # @type JobStatusCode: String
        # @param JobStatusMsg: 当前任务状态：排队中、处理中、处理失败或者处理完成。
        # @type JobStatusMsg: String
        # @param JobErrorCode: 任务处理失败错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务处理失败错误信息。
        # @type JobErrorMsg: String
        # @param ResultImage: 生成图 URL 列表，有效期1小时，请及时保存。
        # @type ResultImage: Array
        # @param ResultDetails: 结果 detail 数组，Success 代表成功。
        # @type ResultDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatusCode, :JobStatusMsg, :JobErrorCode, :JobErrorMsg, :ResultImage, :ResultDetails, :RequestId

        def initialize(jobstatuscode=nil, jobstatusmsg=nil, joberrorcode=nil, joberrormsg=nil, resultimage=nil, resultdetails=nil, requestid=nil)
          @JobStatusCode = jobstatuscode
          @JobStatusMsg = jobstatusmsg
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ResultImage = resultimage
          @ResultDetails = resultdetails
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatusCode = params['JobStatusCode']
          @JobStatusMsg = params['JobStatusMsg']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ResultImage = params['ResultImage']
          @ResultDetails = params['ResultDetails']
          @RequestId = params['RequestId']
        end
      end

      # QueryMemeJob请求参数结构体
      class QueryMemeJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 查询表情动图生成任务 ID。
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # QueryMemeJob返回参数结构体
      class QueryMemeJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatusCode: 当前任务状态码：
        # 1：等待中、2：运行中、4：处理失败、5：处理完成。
        # @type JobStatusCode: String
        # @param JobStatusMsg: 当前任务状态：排队中、处理中、处理失败或者处理完成。
        # @type JobStatusMsg: String
        # @param JobErrorCode: 任务处理失败错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务处理失败错误信息。
        # @type JobErrorMsg: String
        # @param ResultImage: 生成图 URL，有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatusCode, :JobStatusMsg, :JobErrorCode, :JobErrorMsg, :ResultImage, :RequestId

        def initialize(jobstatuscode=nil, jobstatusmsg=nil, joberrorcode=nil, joberrormsg=nil, resultimage=nil, requestid=nil)
          @JobStatusCode = jobstatuscode
          @JobStatusMsg = jobstatusmsg
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatusCode = params['JobStatusCode']
          @JobStatusMsg = params['JobStatusMsg']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ResultImage = params['ResultImage']
          @RequestId = params['RequestId']
        end
      end

      # QueryTextToImageProJob请求参数结构体
      class QueryTextToImageProJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # QueryTextToImageProJob返回参数结构体
      class QueryTextToImageProJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatusCode: 当前任务状态码：
        # 1：等待中、2：运行中、4：处理失败、5：处理完成。
        # @type JobStatusCode: String
        # @param JobStatusMsg: 当前任务状态：排队中、处理中、处理失败或者处理完成。
        # @type JobStatusMsg: String
        # @param JobErrorCode: 任务处理失败错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务处理失败错误信息。
        # @type JobErrorMsg: String
        # @param ResultImage: 生成图 URL 列表，有效期1小时，请及时保存。
        # @type ResultImage: Array
        # @param ResultDetails: 结果 detail 数组，Success 代表成功。
        # @type ResultDetails: Array
        # @param RevisedPrompt: 对应 SubmitTextToImageProJob 接口中 Revise 参数。开启扩写时，返回扩写后的 prompt 文本。 如果关闭扩写，将直接返回原始输入的 prompt。
        # @type RevisedPrompt: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatusCode, :JobStatusMsg, :JobErrorCode, :JobErrorMsg, :ResultImage, :ResultDetails, :RevisedPrompt, :RequestId

        def initialize(jobstatuscode=nil, jobstatusmsg=nil, joberrorcode=nil, joberrormsg=nil, resultimage=nil, resultdetails=nil, revisedprompt=nil, requestid=nil)
          @JobStatusCode = jobstatuscode
          @JobStatusMsg = jobstatusmsg
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ResultImage = resultimage
          @ResultDetails = resultdetails
          @RevisedPrompt = revisedprompt
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatusCode = params['JobStatusCode']
          @JobStatusMsg = params['JobStatusMsg']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ResultImage = params['ResultImage']
          @ResultDetails = params['ResultDetails']
          @RevisedPrompt = params['RevisedPrompt']
          @RequestId = params['RequestId']
        end
      end

      # QueryTrainPortraitModelJob请求参数结构体
      class QueryTrainPortraitModelJobRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 写真模型 ID。
        # @type ModelId: String

        attr_accessor :ModelId

        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # QueryTrainPortraitModelJob返回参数结构体
      class QueryTrainPortraitModelJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatusCode: 任务状态码。
        # INIT: 初始化、WAIT：等待中、RUN：运行中、FAIL：处理失败、DONE：处理完成。
        # @type JobStatusCode: String
        # @param JobStatusMsg: 任务状态信息。
        # @type JobStatusMsg: String
        # @param JobErrorCode: 任务错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务错误信息。
        # @type JobErrorMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatusCode, :JobStatusMsg, :JobErrorCode, :JobErrorMsg, :RequestId

        def initialize(jobstatuscode=nil, jobstatusmsg=nil, joberrorcode=nil, joberrormsg=nil, requestid=nil)
          @JobStatusCode = jobstatuscode
          @JobStatusMsg = jobstatusmsg
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatusCode = params['JobStatusCode']
          @JobStatusMsg = params['JobStatusMsg']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @RequestId = params['RequestId']
        end
      end

      # 人脸框坐标
      class Rect < TencentCloud::Common::AbstractModel
        # @param X: 人脸框左上角横坐标。
        # @type X: Integer
        # @param Y: 人脸框左上角纵坐标。
        # @type Y: Integer
        # @param Width: 人脸框宽度。
        # @type Width: Integer
        # @param Height: 人脸框高度。
        # @type Height: Integer

        attr_accessor :X, :Y, :Width, :Height

        def initialize(x=nil, y=nil, width=nil, height=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # RefineImage请求参数结构体
      class RefineImageRequest < TencentCloud::Common::AbstractModel
        # @param InputUrl: 输入图 Url。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputUrl: String
        # @param InputImage: 输入图 Base64 数据。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputImage: String
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。 示例值：url
        # @type RspImgType: String

        attr_accessor :InputUrl, :InputImage, :RspImgType

        def initialize(inputurl=nil, inputimage=nil, rspimgtype=nil)
          @InputUrl = inputurl
          @InputImage = inputimage
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @InputUrl = params['InputUrl']
          @InputImage = params['InputImage']
          @RspImgType = params['RspImgType']
        end
      end

      # RefineImage返回参数结构体
      class RefineImageResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :RequestId

        def initialize(resultimage=nil, requestid=nil)
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @RequestId = params['RequestId']
        end
      end

      # ReplaceBackground请求参数结构体
      class ReplaceBackgroundRequest < TencentCloud::Common::AbstractModel
        # @param ProductUrl: 商品原图 Url。
        # 图片限制：单边分辨率小于4000，长宽比在2:5 ~ 5:2之间，转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type ProductUrl: String
        # @param Prompt: 对新背景的文本描述。
        # 最多支持256个 utf-8 字符，支持中、英文。
        # 如果 Prompt = "BackgroundTemplate" 代表启用背景模板，需要在参数 BackgroundTemplate 中指定一个背景名称。
        # @type Prompt: String
        # @param NegativePrompt: 反向提示词。
        # 最多支持256个 utf-8 字符，支持中、英文。
        # @type NegativePrompt: String
        # @param Product: 商品图中的商品主体名称。
        # 最多支持50个 utf-8 字符，支持中、英文。
        # 建议说明商品主体，否则影响生成效果。
        # @type Product: String
        # @param BackgroundTemplate: 背景模板。
        # 仅当 Prompt = "BackgroundTemplate" 时生效，可支持的模板详见 [商品背景模板列表](https://cloud.tencent.com/document/product/1668/115391) ，请传入字段“背景名称”中的值。
        # @type BackgroundTemplate: String
        # @param MaskUrl: 商品 Mask 图 Url，要求背景透明，保留商品主体。
        # 如果不传，将自动使用内置的商品分割算法得到 Mask。
        # 支持自定义上传 Mask，如果该参数不为空，则以实际上传的数据为准。
        # 图片限制：Mask 图必须和商品原图分辨率一致，转成 Base64 字符串后小于 6MB，格式仅支持 png。
        # @type MaskUrl: String
        # @param Resolution: 替换背景后生成的商品图分辨率。
        # 支持生成单边分辨率大于500且小于4000、长宽比在2:5 ~ 5:2之间的图片，不传默认生成1280:1280。
        # 建议图片比例为1:1、9:16、16:9，生成效果更佳，使用其他比例的生成效果可能不如建议比例。
        # @type Resolution: String
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。
        # 生成图分辨率较大时建议选择 url，使用 base64 可能因图片过大导致返回失败。
        # @type RspImgType: String

        attr_accessor :ProductUrl, :Prompt, :NegativePrompt, :Product, :BackgroundTemplate, :MaskUrl, :Resolution, :LogoAdd, :LogoParam, :RspImgType

        def initialize(producturl=nil, prompt=nil, negativeprompt=nil, product=nil, backgroundtemplate=nil, maskurl=nil, resolution=nil, logoadd=nil, logoparam=nil, rspimgtype=nil)
          @ProductUrl = producturl
          @Prompt = prompt
          @NegativePrompt = negativeprompt
          @Product = product
          @BackgroundTemplate = backgroundtemplate
          @MaskUrl = maskurl
          @Resolution = resolution
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @ProductUrl = params['ProductUrl']
          @Prompt = params['Prompt']
          @NegativePrompt = params['NegativePrompt']
          @Product = params['Product']
          @BackgroundTemplate = params['BackgroundTemplate']
          @MaskUrl = params['MaskUrl']
          @Resolution = params['Resolution']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @RspImgType = params['RspImgType']
        end
      end

      # ReplaceBackground返回参数结构体
      class ReplaceBackgroundResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param MaskImage: 如果 MaskUrl 未传，则返回使用内置商品分割算法得到的 Mask 结果。
        # @type MaskImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :MaskImage, :RequestId

        def initialize(resultimage=nil, maskimage=nil, requestid=nil)
          @ResultImage = resultimage
          @MaskImage = maskimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @MaskImage = params['MaskImage']
          @RequestId = params['RequestId']
        end
      end

      # 返回结果配置
      class ResultConfig < TencentCloud::Common::AbstractModel
        # @param Resolution: 生成图分辨率

        # 图像风格化（图生图）支持生成以下分辨率的图片：origin（与输入图分辨率一致，长边最高为2000，超出将做等比例缩小）、768:768（1:1）、768:1024（3:4）、1024:768（4:3），不传默认使用origin，如果指定生成的长宽比与输入图长宽比差异过大可能导致图片内容被裁剪。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resolution: String

        attr_accessor :Resolution

        def initialize(resolution=nil)
          @Resolution = resolution
        end

        def deserialize(params)
          @Resolution = params['Resolution']
        end
      end

      # SketchToImage请求参数结构体
      class SketchToImageRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 用于线稿生图的文本描述。
        # 最多支持200个 utf-8 字符。
        # 建议格式：线稿中的主体对象+画面场景+配色/材质/元素/风格等
        # @type Prompt: String
        # @param InputImage: 线稿图 Base64 数据。
        # Base64 和 Url 必须提供一个，如果都提供以Url 为准。
        # 图片限制：黑白线稿图片，单边分辨率小于5000且大于128（分辨率过小会导致效果受损），转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputImage: String
        # @param InputUrl: 线稿图 Url。
        # Base64 和 Url 必须提供一个，如果都提供以Url 为准。
        # 图片限制：黑白线稿图片，单边分辨率小于5000且大于128（分辨率过小会导致效果受损），转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputUrl: String
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。生成图分辨率较大时建议选择 url，使用 base64 可能因图片过大导致返回失败。
        # @type RspImgType: String

        attr_accessor :Prompt, :InputImage, :InputUrl, :LogoAdd, :LogoParam, :RspImgType

        def initialize(prompt=nil, inputimage=nil, inputurl=nil, logoadd=nil, logoparam=nil, rspimgtype=nil)
          @Prompt = prompt
          @InputImage = inputimage
          @InputUrl = inputurl
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @InputImage = params['InputImage']
          @InputUrl = params['InputUrl']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @RspImgType = params['RspImgType']
        end
      end

      # SketchToImage返回参数结构体
      class SketchToImageResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :RequestId

        def initialize(resultimage=nil, requestid=nil)
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @RequestId = params['RequestId']
        end
      end

      # SubmitDrawPortraitJob请求参数结构体
      class SubmitDrawPortraitJobRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 写真模型 ID。
        # @type ModelId: String
        # @param StyleId: 写真风格模板。
        # 请在[ AI 写真风格列表](https://cloud.tencent.com/document/product/1668/105740) 中选择期望的风格，传入风格编号。
        # @type StyleId: String
        # @param ImageNum: 本次生成的图片数量，取值范围[1,4]
        # @type ImageNum: Integer
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        #  0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`
        # @param Definition: 清晰度，支持以下选项：
        # sd：基础版，分辨率512:640
        # hd：高清畅享版，分辨率1024:1280
        # hdpro：高清优享版，分辨率1024:1280（推荐）
        # uhd：超清版，分辨率2048:2560
        # 不填默认为sd。
        # @type Definition: String

        attr_accessor :ModelId, :StyleId, :ImageNum, :LogoAdd, :LogoParam, :Definition

        def initialize(modelid=nil, styleid=nil, imagenum=nil, logoadd=nil, logoparam=nil, definition=nil)
          @ModelId = modelid
          @StyleId = styleid
          @ImageNum = imagenum
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @Definition = definition
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @StyleId = params['StyleId']
          @ImageNum = params['ImageNum']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @Definition = params['Definition']
        end
      end

      # SubmitDrawPortraitJob返回参数结构体
      class SubmitDrawPortraitJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 提交生成写真图片任务 ID。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitGlamPicJob请求参数结构体
      class SubmitGlamPicJobRequest < TencentCloud::Common::AbstractModel
        # @param TemplateUrl: 美照模板图 URL。
        # 图片限制：模板图中最多出现5张人脸，单边分辨率大于300，转成 Base64 字符串后小于 10MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type TemplateUrl: String
        # @param FaceInfos: 用户图 URL 列表，以及模板图中需要替换成用户的人脸框信息。
        # 一张美照中可包含1 ~ 5个用户形象。每个用户需上传1 ~ 6张照片，仅支持单人照。
        # 模板图中的人脸数量需要大于等于用户个数。如果不传每个用户在模板图中的人脸框位置，默认按照模板图人脸框从大到小的顺序进行替换。如需自定义顺序，需要依次上传每个用户在模板图中的人脸框位置。
        # 图片限制：每张图片转成 Base64 字符串后小于 10MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。建议使用单人、正脸、脸部区域占比较大、脸部清晰无遮挡、无大角度偏转、无夸张表情的用户图。
        # @type FaceInfos: Array
        # @param Num: 美照生成数量。
        # 支持1 ~ 4张，默认生成4张。
        # @type Num: Integer
        # @param Style: 美照生成风格。
        # 仅对单人美照生效，单人可支持选择不同风格。需按照美照生成数量，在数组中逐一填入每张美照的风格名称。如果不传，默认取不重复的随机风格顺序。
        # 多人美照只支持 balanced 一种风格，该参数不生效。
        # 可选风格：<ul><li>real：面部相似度更高。</li><li>balanced：平衡面部真实感和美观度。</li><li>textured：脸部皮肤更具真实感。</li><li>beautiful：脸部美观度更高。</li></ul>
        # @type Style: Array
        # @param Similarity: 相似度系数，越高越像用户图。
        # 取值范围[0, 1]，默认为0.6。
        # @type Similarity: Float
        # @param Clarity: 超分选项，默认不做超分，可选开启。
        # x2：2倍超分
        # x4：4倍超分
        # @type Clarity: String
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`

        attr_accessor :TemplateUrl, :FaceInfos, :Num, :Style, :Similarity, :Clarity, :LogoAdd, :LogoParam

        def initialize(templateurl=nil, faceinfos=nil, num=nil, style=nil, similarity=nil, clarity=nil, logoadd=nil, logoparam=nil)
          @TemplateUrl = templateurl
          @FaceInfos = faceinfos
          @Num = num
          @Style = style
          @Similarity = similarity
          @Clarity = clarity
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @TemplateUrl = params['TemplateUrl']
          unless params['FaceInfos'].nil?
            @FaceInfos = []
            params['FaceInfos'].each do |i|
              faceinfo_tmp = FaceInfo.new
              faceinfo_tmp.deserialize(i)
              @FaceInfos << faceinfo_tmp
            end
          end
          @Num = params['Num']
          @Style = params['Style']
          @Similarity = params['Similarity']
          @Clarity = params['Clarity']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitGlamPicJob返回参数结构体
      class SubmitGlamPicJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitMemeJob请求参数结构体
      class SubmitMemeJobRequest < TencentCloud::Common::AbstractModel
        # @param Pose: 表情模板。
        # 请在 [表情动图模板列表](https://cloud.tencent.com/document/product/1668/115327)  中选择期望的模板，传入 Pose 名称。
        # @type Pose: String
        # @param InputImage: 人像参考图 Base64 数据。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000，转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputImage: String
        # @param InputUrl: 人像参考图 Url。
        # Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # 图片限制：单边分辨率小于5000，转成 Base64 字符串后小于 6MB，格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type InputUrl: String
        # @param Resolution: 生成分辨率。
        # 真人类型支持256、512，默认为256，
        # 卡通类型仅支持512。
        # @type Resolution: Integer
        # @param Text: 自定义文案。
        # 仅对真人类型的 Pose 生效，将在生成的表情动图中显示指定的文字。如果传入的字符串长度大于10，只截取前10个显示。
        # 如果不传，默认使用自带的文案。
        # 如果 text = "" 空字符串，代表不在表情动图中添加文案。
        # @type Text: String
        # @param Haircut: 头发遮罩开关。
        # true：裁剪过长的头发。
        # false：不裁剪过长的头发。
        # 仅对卡通类型的 Pose 生效，默认为 false。
        # @type Haircut: Boolean
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`

        attr_accessor :Pose, :InputImage, :InputUrl, :Resolution, :Text, :Haircut, :LogoAdd, :LogoParam

        def initialize(pose=nil, inputimage=nil, inputurl=nil, resolution=nil, text=nil, haircut=nil, logoadd=nil, logoparam=nil)
          @Pose = pose
          @InputImage = inputimage
          @InputUrl = inputurl
          @Resolution = resolution
          @Text = text
          @Haircut = haircut
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Pose = params['Pose']
          @InputImage = params['InputImage']
          @InputUrl = params['InputUrl']
          @Resolution = params['Resolution']
          @Text = params['Text']
          @Haircut = params['Haircut']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitMemeJob返回参数结构体
      class SubmitMemeJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务id
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitTextToImageProJob请求参数结构体
      class SubmitTextToImageProJobRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本描述。
        # 算法将根据输入的文本智能生成与之相关的图像。
        # 不能为空，推荐使用中文。最多可传100个 utf-8 字符。
        # @type Prompt: String
        # @param Style: 绘画风格。
        # 请在 [文生图（高级版）风格列表](https://cloud.tencent.com/document/product/1668/104567) 中选择期望的风格，传入风格编号。
        # 不传默认不指定风格。
        # @type Style: String
        # @param Resolution: 生成图分辨率。
        # 支持生成以下分辨率的图片：768:768（1:1）、768:1024（3:4）、1024:768（4:3）、1024:1024（1:1）、720:1280（9:16）、1280:720（16:9）、768:1280（3:5）、1280:768（5:3），不传默认使用1024:1024。
        # @type Resolution: String
        # @param LogoAdd: 为生成结果图添加显式水印标识的开关，默认为1。
        # 1：添加。
        # 0：不添加。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param Engine: 文生图模型，默认使用engine1。
        # 取值：
        # engine1
        # engine2
        # @type Engine: String
        # @param Revise: prompt 扩写开关。1为开启，0为关闭，不传默认开启。
        # 开启扩写后，将自动扩写原始输入的 prompt 并使用扩写后的 prompt 生成图片，返回生成图片结果时将一并返回扩写后的 prompt 文本。
        # 如果关闭扩写，将直接使用原始输入的 prompt 生成图片。
        # 建议开启，在多数场景下可提升生成图片效果、丰富生成图片细节。
        # @type Revise: Integer

        attr_accessor :Prompt, :Style, :Resolution, :LogoAdd, :Engine, :Revise

        def initialize(prompt=nil, style=nil, resolution=nil, logoadd=nil, engine=nil, revise=nil)
          @Prompt = prompt
          @Style = style
          @Resolution = resolution
          @LogoAdd = logoadd
          @Engine = engine
          @Revise = revise
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @Style = params['Style']
          @Resolution = params['Resolution']
          @LogoAdd = params['LogoAdd']
          @Engine = params['Engine']
          @Revise = params['Revise']
        end
      end

      # SubmitTextToImageProJob返回参数结构体
      class SubmitTextToImageProJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitTrainPortraitModelJob请求参数结构体
      class SubmitTrainPortraitModelJobRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 在上传写真训练图片时指定的写真模型 ID。
        # 每个 AI 写真模型自训练完成起1年内有效，有效期内可使用模型生成图片，期满后需要重新训练模型。
        # @type ModelId: String

        attr_accessor :ModelId

        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # SubmitTrainPortraitModelJob返回参数结构体
      class SubmitTrainPortraitModelJobResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # TextToImageLite请求参数结构体
      class TextToImageLiteRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本描述。将根据输入的文本智能生成与之相关的图像。
        # 不能为空，推荐使用中文。最多可传1024个 utf-8 字符。
        # @type Prompt: String
        # @param NegativePrompt: 反向提示词。 减少生成结果中出现描述内容。
        # 推荐使用中文。最多可传1024个 utf-8 字符。
        # @type NegativePrompt: String
        # @param Resolution: 生成图分辨率，默认1024:1024。
        # 支持的图像宽高比例: 1:1，3:4，4:3，9:16，16:9。
        # 支持的长边分辨率: 160，200，225，258，512，520，608，768，1024，1080，1280，1600，1620，1920，2048，2400，2560，2592，3440，3840，4096。
        # @type Resolution: String
        # @param Seed: 随机种子，默认随机。
        # 0：随机种子生成。
        # 不传：随机种子生成。
        # 正数：固定种子生成。
        # @type Seed: Integer
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`
        # @param RspImgType: 返回图像方式（base64 或 url），二选一，默认为 base64。url 有效期为1小时。
        # @type RspImgType: String

        attr_accessor :Prompt, :NegativePrompt, :Resolution, :Seed, :LogoAdd, :LogoParam, :RspImgType

        def initialize(prompt=nil, negativeprompt=nil, resolution=nil, seed=nil, logoadd=nil, logoparam=nil, rspimgtype=nil)
          @Prompt = prompt
          @NegativePrompt = negativeprompt
          @Resolution = resolution
          @Seed = seed
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @NegativePrompt = params['NegativePrompt']
          @Resolution = params['Resolution']
          @Seed = params['Seed']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @RspImgType = params['RspImgType']
        end
      end

      # TextToImageLite返回参数结构体
      class TextToImageLiteResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param Seed: Seed
        # @type Seed: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :Seed, :RequestId

        def initialize(resultimage=nil, seed=nil, requestid=nil)
          @ResultImage = resultimage
          @Seed = seed
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @Seed = params['Seed']
          @RequestId = params['RequestId']
        end
      end

      # TextToImageRapid请求参数结构体
      class TextToImageRapidRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本描述。
        # 算法将根据输入的文本智能生成与之相关的图像。建议详细描述画面主体、细节、场景等，文本描述越丰富，生成效果越精美。
        # 不能为空，推荐使用中文。最多可传256个 utf-8 字符。
        # @type Prompt: String
        # @param Resolution: 生成图分辨率，默认1024:1024。
        # 支持的图像宽高比例: 1:1，3:4，4:3，9:16，16:9。
        # 支持的长边分辨率: 160，200，225，258，512，520，608，768，1024，1080，1280，1600，1620，1920，2048，2400，2560，2592，3440，3840，4096。
        # @type Resolution: String
        # @param Seed: 随机种子，默认随机。
        # 0：随机种子生成。
        # 不传：随机种子生成。
        # 正数：固定种子生成。
        # @type Seed: Integer
        # @param Image: 参考图。

        # - Base64 和 Url 必须提供一个，如果都提供以 Url 为准。
        # - 当传入Image参数时，Style和Resolution参数不生效，输出图分辨率将保持Image传入图分辨率。
        # - 图片限制：单边分辨率大于128且小于2048；图片小于6M；格式支持 jpg、jpeg、png、bmp、tiff、webp。
        # @type Image: :class:`Tencentcloud::Aiart.v20221229.models.Image`
        # @param Style: 生成的图片风格，参考值：

        # 1：宫崎骏风格；
        # 2：新海诚风格；
        # 3：去旅行风格；
        # 4：水彩风格；
        # 5：像素风格；
        # 6：童话世界风格；
        # 7：奇趣卡通风格；
        # 8：赛博朋克风格；
        # 9：极简风格；
        # 10：复古风格；
        # 11：暗黑系风格；
        # 12：波普风风格；
        # 13：糖果色风格；
        # 14：胶片电影风格；
        # 15：素描风格；
        # 16：水墨画风格；
        # 17：油画风格；
        # 18：粉笔风格；
        # 19：粘土风格；
        # 20：毛毡风格；
        # 21：刺绣风格；
        # 22：彩铅风格；
        # 23：莫奈风格；
        # 24：毕加索风格；
        # 25：穆夏风格；
        # 26：古风二次元风格；
        # 27：都市二次元风格；
        # 28：悬疑风格；
        # 29：校园风格；
        # 30：都市异能风格。
        # @type Style: String
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Aiart.v20221229.models.LogoParam`
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。
        # @type RspImgType: String

        attr_accessor :Prompt, :Resolution, :Seed, :Image, :Style, :LogoAdd, :LogoParam, :RspImgType

        def initialize(prompt=nil, resolution=nil, seed=nil, image=nil, style=nil, logoadd=nil, logoparam=nil, rspimgtype=nil)
          @Prompt = prompt
          @Resolution = resolution
          @Seed = seed
          @Image = image
          @Style = style
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @Resolution = params['Resolution']
          @Seed = params['Seed']
          unless params['Image'].nil?
            @Image = Image.new
            @Image.deserialize(params['Image'])
          end
          @Style = params['Style']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @RspImgType = params['RspImgType']
        end
      end

      # TextToImageRapid返回参数结构体
      class TextToImageRapidResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param Seed: Seed
        # @type Seed: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :Seed, :RequestId

        def initialize(resultimage=nil, seed=nil, requestid=nil)
          @ResultImage = resultimage
          @Seed = seed
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @Seed = params['Seed']
          @RequestId = params['RequestId']
        end
      end

      # UploadTrainPortraitImages请求参数结构体
      class UploadTrainPortraitImagesRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 写真模型 ID。由英文大小写字母、数字及下划线组成。
        # 用于唯一标识一个写真模型，一个写真模型只能用于一个人物的写真图片生成。
        # @type ModelId: String
        # @param BaseUrl: 写真模型训练用的基础图像 URL，用于固定写真模型可生成的人物。
        # 图片数量：1张。
        # 图片内容：单人，脸部清晰。
        # 图片限制：单边分辨率小于2000，转成 Base64 字符串后小于 5MB。
        # @type BaseUrl: String
        # @param Urls: 写真模型训练用的图像 URL 列表，仅常规训练模式需要上传。
        # 图片数量：19 - 24 张。
        # 图片内容：单人，脸部清晰，和基础图像中的人物为同一人。
        # 图片限制：单边分辨率小于2000，转成 Base64 字符串后小于 5MB。
        # @type Urls: Array
        # @param Filter: 训练图像质量过滤开关配置。
        # 支持开启或关闭对训练图像分辨率下限、脸部区域大小、脸部遮挡的过滤，默认开启以上过滤。
        # 如果训练图像内包含多人脸或无人脸、和 Base 人像不为同一人也将被过滤，不可关闭该过滤条件。
        # 建议：关闭以上过滤可能导致写真生成效果受损，建议使用单人、正脸、脸部区域占比较大、脸部清晰无遮挡、无大角度偏转、无夸张表情的图像进行训练。
        # @type Filter: :class:`Tencentcloud::Aiart.v20221229.models.Filter`
        # @param TrainMode: 训练模式。
        # 默认使用常规训练模式。如果使用快速训练模式和免训练模式，只需要在 BaseUrl 中传入1张图片，Urls.N 中无需传入图片。
        # 0：常规训练模式，上传多张图片用于模型训练，完成训练后可生成写真图片。
        # 1：快速训练模式，仅需上传1张图片用于模型训练，训练速度更快，完成训练后可生成写真图片。
        # 2：免训练模式，仅需上传1张图片，跳过模型训练环节，直接生成写真图片。
        # @type TrainMode: Integer

        attr_accessor :ModelId, :BaseUrl, :Urls, :Filter, :TrainMode

        def initialize(modelid=nil, baseurl=nil, urls=nil, filter=nil, trainmode=nil)
          @ModelId = modelid
          @BaseUrl = baseurl
          @Urls = urls
          @Filter = filter
          @TrainMode = trainmode
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @BaseUrl = params['BaseUrl']
          @Urls = params['Urls']
          unless params['Filter'].nil?
            @Filter = Filter.new
            @Filter.deserialize(params['Filter'])
          end
          @TrainMode = params['TrainMode']
        end
      end

      # UploadTrainPortraitImages返回参数结构体
      class UploadTrainPortraitImagesResponse < TencentCloud::Common::AbstractModel
        # @param ResultDetails: 用于提示对应上传的Urls训练图片是否符合要求，如果未通过需要重新上传。如果基础图像不符合要求会直接通过ErrorCode提示。如果您选择了快速模式，该参数返回为空数组。
        # @type ResultDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultDetails, :RequestId

        def initialize(resultdetails=nil, requestid=nil)
          @ResultDetails = resultdetails
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultDetails = params['ResultDetails']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

