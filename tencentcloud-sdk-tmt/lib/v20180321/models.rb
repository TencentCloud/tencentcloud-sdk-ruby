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

        attr_accessor :Data, :Target, :Url

        def initialize(data=nil, target=nil, url=nil)
          @Data = data
          @Target = target
          @Url = url
        end

        def deserialize(params)
          @Data = params['Data']
          @Target = params['Target']
          @Url = params['Url']
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

      # TextTranslate请求参数结构体
      class TextTranslateRequest < TencentCloud::Common::AbstractModel
        # @param SourceText: 待翻译的文本，文本统一使用utf-8格式编码，非utf-8格式编码字符会翻译失败，请传入有效文本，html标记等非常规翻译文本可能会翻译失败。单次请求的文本长度需要低于6000字符。
        # @type SourceText: String
        # @param Source: 源语言，支持：
        # auto：自动识别（识别为一种语言）
        # zh：简体中文
        # zh-TW：繁体中文
        # en：英语
        # ja：日语
        # ko：韩语
        # fr：法语
        # es：西班牙语
        # it：意大利语
        # de：德语
        # tr：土耳其语
        # ru：俄语
        # pt：葡萄牙语
        # vi：越南语
        # id：印尼语
        # th：泰语
        # ms：马来西亚语
        # ar：阿拉伯语
        # hi：印地语
        # @type Source: String
        # @param Target: 目标语言，各源语言的目标语言支持列表如下

        # <li> zh（简体中文）：zh-TW（繁体中文）、en（英语）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）、ar（阿拉伯语）</li>
        # <li>zh-TW（繁体中文）：zh（简体中文）、en（英语）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）、ar（阿拉伯语）</li>
        # <li>en（英语）：zh（中文）、zh-TW（繁体中文）、ja（日语）、ko（韩语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）、vi（越南语）、id（印尼语）、th（泰语）、ms（马来语）、ar（阿拉伯语）、hi（印地语）</li>
        # <li>ja（日语）：zh（中文）、zh-TW（繁体中文）、en（英语）、ko（韩语）</li>
        # <li>ko（韩语）：zh（中文）、zh-TW（繁体中文）、en（英语）、ja（日语）</li>
        # <li>fr（法语）：zh（中文）、zh-TW（繁体中文）、en（英语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>es（西班牙语）：zh（中文）、zh-TW（繁体中文）、en（英语）、fr（法语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>it（意大利语）：zh（中文）、zh-TW（繁体中文）、en（英语）、fr（法语）、es（西班牙语）、de（德语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>de（德语）：zh（中文）、zh-TW（繁体中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、tr（土耳其语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>tr（土耳其语）：zh（中文）、zh-TW（繁体中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、ru（俄语）、pt（葡萄牙语）</li>
        # <li>ru（俄语）：zh（中文）、zh-TW（繁体中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、pt（葡萄牙语）</li>
        # <li>pt（葡萄牙语）：zh（中文）、zh-TW（繁体中文）、en（英语）、fr（法语）、es（西班牙语）、it（意大利语）、de（德语）、tr（土耳其语）、ru（俄语）</li>
        # <li>vi（越南语）：zh（中文）、zh-TW（繁体中文）、en（英语）</li>
        # <li>id（印尼语）：zh（中文）、zh-TW（繁体中文）、en（英语）</li>
        # <li>th（泰语）：zh（中文）、zh-TW（繁体中文）、en（英语）</li>
        # <li>ms（马来语）：zh（中文）、zh-TW（繁体中文）、en（英语）</li>
        # <li>ar（阿拉伯语）：zh（中文）、zh-TW（繁体中文）、en（英语）</li>
        # <li>hi（印地语）：en（英语）</li>
        # @type Target: String
        # @param ProjectId: 项目ID，可以根据控制台-账号中心-项目管理中的配置填写，如无配置请填写默认项目ID:0
        # @type ProjectId: Integer
        # @param UntranslatedText: 用来标记不希望被翻译的文本内容，如句子中的特殊符号、人名、地名等；每次请求只支持配置一个不被翻译的单词；仅支持配置人名、地名等名词，不要配置动词或短语，否则会影响翻译结果。
        # @type UntranslatedText: String
        # @param TermRepoIDList: 需要使用的术语库列表，通过 [术语库操作指南](https://cloud.tencent.com/document/product/551/107926) 自行创建术语库获取。
        # @type TermRepoIDList: Array
        # @param SentRepoIDList: 需要使用的例句库列表，通过 [例句库操作指南](https://cloud.tencent.com/document/product/551/107927) 自行创建例句库获取。
        # @type SentRepoIDList: Array

        attr_accessor :SourceText, :Source, :Target, :ProjectId, :UntranslatedText, :TermRepoIDList, :SentRepoIDList

        def initialize(sourcetext=nil, source=nil, target=nil, projectid=nil, untranslatedtext=nil, termrepoidlist=nil, sentrepoidlist=nil)
          @SourceText = sourcetext
          @Source = source
          @Target = target
          @ProjectId = projectid
          @UntranslatedText = untranslatedtext
          @TermRepoIDList = termrepoidlist
          @SentRepoIDList = sentrepoidlist
        end

        def deserialize(params)
          @SourceText = params['SourceText']
          @Source = params['Source']
          @Target = params['Target']
          @ProjectId = params['ProjectId']
          @UntranslatedText = params['UntranslatedText']
          @TermRepoIDList = params['TermRepoIDList']
          @SentRepoIDList = params['SentRepoIDList']
        end
      end

      # TextTranslate返回参数结构体
      class TextTranslateResponse < TencentCloud::Common::AbstractModel
        # @param TargetText: 翻译后的文本
        # @type TargetText: String
        # @param Source: 源语言，详见入参Source
        # @type Source: String
        # @param Target: 目标语言，详见入参Target
        # @type Target: String
        # @param UsedAmount: 本次翻译消耗的字符数
        # @type UsedAmount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TargetText, :Source, :Target, :UsedAmount, :RequestId

        def initialize(targettext=nil, source=nil, target=nil, usedamount=nil, requestid=nil)
          @TargetText = targettext
          @Source = source
          @Target = target
          @UsedAmount = usedamount
          @RequestId = requestid
        end

        def deserialize(params)
          @TargetText = params['TargetText']
          @Source = params['Source']
          @Target = params['Target']
          @UsedAmount = params['UsedAmount']
          @RequestId = params['RequestId']
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

