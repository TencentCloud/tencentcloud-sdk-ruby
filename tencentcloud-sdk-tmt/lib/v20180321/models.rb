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
  module Tmt
    module V20180321
      # 段落文本框位置：x，y代表左上顶点，width和height代表宽高
      class BoundingBox < TencentCloud::Common::AbstractModel
        # @param X: <p>左上顶点x坐标</p>
        # @type X: Integer
        # @param Y: <p>左上顶点y坐标</p>
        # @type Y: Integer
        # @param Width: <p>宽</p><p>单位：px</p>
        # @type Width: Integer
        # @param Height: <p>高</p><p>单位：px</p>
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

      # 坐标详细信息
      class Coord < TencentCloud::Common::AbstractModel
        # @param X: X坐标
        # @type X: Integer
        # @param Y: Y坐标
        # @type Y: Integer

        attr_accessor :X, :Y

        def initialize(x=nil, y=nil)
          @X = x
          @Y = y
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
        end
      end

      # ImageTranslateLLM请求参数结构体
      class ImageTranslateLLMRequest < TencentCloud::Common::AbstractModel
        # @param Data: <p>图片数据的Base64字符串，经Base64编码后不超过 9M，分辨率建议600*800以上，支持PNG、JPG、JPEG格式。</p>
        # @type Data: String
        # @param Target: <p>目标语言，支持语言列表：</p><ul><li>中文：zh</li><li>繁体（中国台湾）：zh-TW</li><li>繁体（中国香港）：zh-HK</li><li>英文：en</li><li>日语：ja</li><li>韩语：ko</li><li>泰语：th</li><li>越南语：vi</li><li>俄语：ru</li><li>德语：de</li><li>法语：fr</li><li>阿拉伯语：ar</li><li>西班牙语：es</li><li>意大利语：it</li><li>印度尼西亚语：id</li><li>马来西亚语：ms</li><li>葡萄牙语：pt</li><li>土耳其语：tr<br>-</li></ul>
        # @type Target: String
        # @param Url: <p>输入图 Url。 使用Url的时候，Data参数需要传入&quot;&quot;。 图片限制：小于 10MB，分辨率建议600*800以上，格式支持 jpg、jpeg、png。</p>
        # @type Url: String
        # @param Mode: <p>调用模式。</p><p>枚举值：</p><ul><li>0： 端到端图片翻译大模型pro版</li><li>1： 端到端图片翻译大模型lite版</li></ul><p>默认值：0</p>
        # @type Mode: Integer

        attr_accessor :Data, :Target, :Url, :Mode

        def initialize(data=nil, target=nil, url=nil, mode=nil)
          @Data = data
          @Target = target
          @Url = url
          @Mode = mode
        end

        def deserialize(params)
          @Data = params['Data']
          @Target = params['Target']
          @Url = params['Url']
          @Mode = params['Mode']
        end
      end

      # ImageTranslateLLM返回参数结构体
      class ImageTranslateLLMResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>图片数据的Base64字符串，输出格式为JPG。</p>
        # @type Data: String
        # @param Source: <p>原文本主要源语言。</p>
        # @type Source: String
        # @param Target: <p>目标翻译语言。</p>
        # @type Target: String
        # @param SourceText: <p>图片中的全部原文本。</p>
        # @type SourceText: String
        # @param TargetText: <p>图片中全部译文。</p>
        # @type TargetText: String
        # @param Angle: <p>逆时针图片角度，取值范围为0-359</p>
        # @type Angle: Float
        # @param TransDetails: <p>翻译详情信息</p>
        # @type TransDetails: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Source, :Target, :SourceText, :TargetText, :Angle, :TransDetails, :RequestId

        def initialize(data=nil, source=nil, target=nil, sourcetext=nil, targettext=nil, angle=nil, transdetails=nil, requestid=nil)
          @Data = data
          @Source = source
          @Target = target
          @SourceText = sourcetext
          @TargetText = targettext
          @Angle = angle
          @TransDetails = transdetails
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @Source = params['Source']
          @Target = params['Target']
          @SourceText = params['SourceText']
          @TargetText = params['TargetText']
          @Angle = params['Angle']
          unless params['TransDetails'].nil?
            @TransDetails = []
            params['TransDetails'].each do |i|
              transdetail_tmp = TransDetail.new
              transdetail_tmp.deserialize(i)
              @TransDetails << transdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 段落文本旋转信息
      class RotateParagraphRect < TencentCloud::Common::AbstractModel
        # @param Coord: 段落文本坐标
        # @type Coord: Array
        # @param TiltAngle: 旋转角度
        # @type TiltAngle: Float
        # @param Valid: 段落文本信息是否有效
        # @type Valid: Boolean

        attr_accessor :Coord, :TiltAngle, :Valid

        def initialize(coord=nil, tiltangle=nil, valid=nil)
          @Coord = coord
          @TiltAngle = tiltangle
          @Valid = valid
        end

        def deserialize(params)
          unless params['Coord'].nil?
            @Coord = []
            params['Coord'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @Coord << coord_tmp
            end
          end
          @TiltAngle = params['TiltAngle']
          @Valid = params['Valid']
        end
      end

      # 大模型图片翻译详情信息
      class TransDetail < TencentCloud::Common::AbstractModel
        # @param SourceLineText: <p>当前行的原文本</p>
        # @type SourceLineText: String
        # @param TargetLineText: <p>当前行的译文</p>
        # @type TargetLineText: String
        # @param BoundingBox: <p>段落文本框位置</p>
        # @type BoundingBox: :class:`Tencentcloud::Tmt.v20180321.models.BoundingBox`
        # @param LinesCount: <p>行数</p>
        # @type LinesCount: Integer
        # @param LineHeight: <p>行高</p><p>单位：px</p>
        # @type LineHeight: Integer
        # @param SpamCode: <p>正常段落spam_code字段为0；如果存在spam_code字段且值大于0（1: 命中垃圾检查；2: 命中安全策略；3: 其他。），则命中安全检查被过滤。</p>
        # @type SpamCode: Integer
        # @param RotateParagraphRect: <p>段落文本旋转信息，只在valid为true时表示坐标有效</p>
        # @type RotateParagraphRect: :class:`Tencentcloud::Tmt.v20180321.models.RotateParagraphRect`

        attr_accessor :SourceLineText, :TargetLineText, :BoundingBox, :LinesCount, :LineHeight, :SpamCode, :RotateParagraphRect

        def initialize(sourcelinetext=nil, targetlinetext=nil, boundingbox=nil, linescount=nil, lineheight=nil, spamcode=nil, rotateparagraphrect=nil)
          @SourceLineText = sourcelinetext
          @TargetLineText = targetlinetext
          @BoundingBox = boundingbox
          @LinesCount = linescount
          @LineHeight = lineheight
          @SpamCode = spamcode
          @RotateParagraphRect = rotateparagraphrect
        end

        def deserialize(params)
          @SourceLineText = params['SourceLineText']
          @TargetLineText = params['TargetLineText']
          unless params['BoundingBox'].nil?
            @BoundingBox = BoundingBox.new
            @BoundingBox.deserialize(params['BoundingBox'])
          end
          @LinesCount = params['LinesCount']
          @LineHeight = params['LineHeight']
          @SpamCode = params['SpamCode']
          unless params['RotateParagraphRect'].nil?
            @RotateParagraphRect = RotateParagraphRect.new
            @RotateParagraphRect.deserialize(params['RotateParagraphRect'])
          end
        end
      end

    end
  end
end

