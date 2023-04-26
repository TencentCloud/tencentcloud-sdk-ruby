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

module TencentCloud
  module Aiart
    module V20221229
      # ImageToImage请求参数结构体
      class ImageToImageRequest < TencentCloud::Common::AbstractModel
        # @param InputImage: 输入图 Base64 数据。
        # 算法将根据输入的图片，结合文本描述智能生成与之相关的图像。
        # Base64 和 Url 必须提供一个，如果都提供以 Base64 为准。
        # 图片限制：单边分辨率小于2000，转成 Base64 字符串后小于 5MB。
        # @type InputImage: String
        # @param InputUrl: 输入图 Url。
        # 算法将根据输入的图片，结合文本描述智能生成与之相关的图像。
        # Base64 和 Url 必须提供一个，如果都提供以 Base64 为准。
        # 图片限制：单边分辨率小于2000，转成 Base64 字符串后小于 5MB。
        # @type InputUrl: String
        # @param Prompt: 文本描述。
        # 用于在输入图的基础上引导生成图效果，建议详细描述画面主体、细节、场景等，文本描述越丰富，生成效果越精美。推荐使用中文。最多支持512个 utf-8 字符。
        # 注意：如果不输入任何文本描述，可能导致较差的效果，建议根据期望的效果输入相应的文本描述。
        # @type Prompt: String
        # @param NegativePrompt: 反向文本描述。
        # 用于一定程度上从反面引导模型生成的走向，减少生成结果中出现描述内容的可能，但不能完全杜绝。
        # 推荐使用中文。最多可传512个 utf-8 字符。
        # @type NegativePrompt: String
        # @param Styles: 绘画风格。
        # 请在  [智能图生图风格列表](https://cloud.tencent.com/document/product/1668/86250) 中选择期望的风格，传入风格编号。
        # 推荐使用且只使用一种风格。不传默认使用201（日系动漫风格）。
        # 如果想要探索风格列表之外的风格，也可以尝试在 Prompt 中输入其他的风格描述。
        # @type Styles: Array
        # @param ResultConfig: 生成图结果的配置，包括输出图片分辨率和尺寸等。
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
        # Strength 值越小，生成图和原图越接近。取值范围0~1，不传默认为0.65。
        # @type Strength: Float

        attr_accessor :InputImage, :InputUrl, :Prompt, :NegativePrompt, :Styles, :ResultConfig, :LogoAdd, :LogoParam, :Strength
        
        def initialize(inputimage=nil, inputurl=nil, prompt=nil, negativeprompt=nil, styles=nil, resultconfig=nil, logoadd=nil, logoparam=nil, strength=nil)
          @InputImage = inputimage
          @InputUrl = inputurl
          @Prompt = prompt
          @NegativePrompt = negativeprompt
          @Styles = styles
          @ResultConfig = resultconfig
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @Strength = strength
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
        end
      end

      # ImageToImage返回参数结构体
      class ImageToImageResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 返回的生成图 Base64 编码。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param LogoUrl: 水印url
        # @type LogoUrl: String
        # @param LogoImage: 水印base64，url和base64二选一传入
        # @type LogoImage: String
        # @param LogoRect: 水印图片位于融合结果图中的坐标，将按照坐标对标识图片进行位置和大小的拉伸匹配
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
        # @type X: Integer
        # @param Y: 左上角Y坐标
        # @type Y: Integer
        # @param Width: 方框宽度
        # @type Width: Integer
        # @param Height: 方框高度
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

      # 返回结果配置
      class ResultConfig < TencentCloud::Common::AbstractModel
        # @param Resolution: 生成图分辨率
        # 支持生成以下不同分辨率的图片，对应1:1方图、3:4竖图、4:3横图三种尺寸规格。
        # 取值：
        # ● 768:768
        # ● 768:1024
        # ● 1024:768
        # @type Resolution: String

        attr_accessor :Resolution
        
        def initialize(resolution=nil)
          @Resolution = resolution
        end

        def deserialize(params)
          @Resolution = params['Resolution']
        end
      end

      # TextToImage请求参数结构体
      class TextToImageRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本描述。
        # 算法将根据输入的文本智能生成与之相关的图像。建议详细描述画面主体、细节、场景等，文本描述越丰富，生成效果越精美。
        # 不能为空，推荐使用中文。最多可传512个 utf-8 字符。
        # @type Prompt: String
        # @param NegativePrompt: 反向文本描述。
        # 用于一定程度上从反面引导模型生成的走向，减少生成结果中出现描述内容的可能，但不能完全杜绝。
        # 推荐使用中文。最多可传512个 utf-8 字符。
        # @type NegativePrompt: String
        # @param Styles: 绘画风格。
        # 请在 [智能文生图风格列表](https://cloud.tencent.com/document/product/1668/86249) 中选择期望的风格，传入风格编号。
        # 推荐使用且只使用一种风格。不传默认使用201（日系动漫风格）。
        # 如果想要探索风格列表之外的风格，也可以尝试在 Prompt 中输入其他的风格描述。
        # @type Styles: Array
        # @param ResultConfig: 生成图结果的配置，包括输出图片分辨率和尺寸等。
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

        attr_accessor :Prompt, :NegativePrompt, :Styles, :ResultConfig, :LogoAdd, :LogoParam
        
        def initialize(prompt=nil, negativeprompt=nil, styles=nil, resultconfig=nil, logoadd=nil, logoparam=nil)
          @Prompt = prompt
          @NegativePrompt = negativeprompt
          @Styles = styles
          @ResultConfig = resultconfig
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
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
        end
      end

      # TextToImage返回参数结构体
      class TextToImageResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 返回的生成图 Base64 编码。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

    end
  end
end

