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
  module Nlp
    module V20190408
      # AnalyzeSentiment请求参数结构体
      class AnalyzeSentimentRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待分析的文本（仅支持UTF-8格式，不超过200字）。
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # AnalyzeSentiment返回参数结构体
      class AnalyzeSentimentResponse < TencentCloud::Common::AbstractModel
        # @param Positive: 正面情感概率。
        # @type Positive: Float
        # @param Neutral: 中性情感概率。
        # @type Neutral: Float
        # @param Negative: 负面情感概率。
        # @type Negative: Float
        # @param Sentiment: 情感分类结果：
        # positive：正面情感
        # negative：负面情感
        # neutral：中性、无情感
        # @type Sentiment: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Positive, :Neutral, :Negative, :Sentiment, :RequestId

        def initialize(positive=nil, neutral=nil, negative=nil, sentiment=nil, requestid=nil)
          @Positive = positive
          @Neutral = neutral
          @Negative = negative
          @Sentiment = sentiment
          @RequestId = requestid
        end

        def deserialize(params)
          @Positive = params['Positive']
          @Neutral = params['Neutral']
          @Negative = params['Negative']
          @Sentiment = params['Sentiment']
          @RequestId = params['RequestId']
        end
      end

      # 基础粒度分词和词性标注的结果
      class BasicParticiple < TencentCloud::Common::AbstractModel
        # @param Word: 基础词。
        # @type Word: String
        # @param BeginOffset: 基础词在NormalText中的起始位置。
        # @type BeginOffset: Integer
        # @param Length: 基础词的长度。
        # @type Length: Integer
        # @param Pos: 词性。
        # @type Pos: String

        attr_accessor :Word, :BeginOffset, :Length, :Pos

        def initialize(word=nil, beginoffset=nil, length=nil, pos=nil)
          @Word = word
          @BeginOffset = beginoffset
          @Length = length
          @Pos = pos
        end

        def deserialize(params)
          @Word = params['Word']
          @BeginOffset = params['BeginOffset']
          @Length = params['Length']
          @Pos = params['Pos']
        end
      end

      # 复合粒度分词和词性标注的结果。
      class CompoundParticiple < TencentCloud::Common::AbstractModel
        # @param Word: 基础词。
        # @type Word: String
        # @param BeginOffset: 基础词在NormalText中的起始位置。
        # @type BeginOffset: Integer
        # @param Length: 基础词的长度。
        # @type Length: Integer
        # @param Pos: 词性。
        # @type Pos: String

        attr_accessor :Word, :BeginOffset, :Length, :Pos

        def initialize(word=nil, beginoffset=nil, length=nil, pos=nil)
          @Word = word
          @BeginOffset = beginoffset
          @Length = length
          @Pos = pos
        end

        def deserialize(params)
          @Word = params['Word']
          @BeginOffset = params['BeginOffset']
          @Length = params['Length']
          @Pos = params['Pos']
        end
      end

      # 纠错结果列表
      class CorrectionItem < TencentCloud::Common::AbstractModel
        # @param Order: 纠错句子的序号。
        # @type Order: Integer
        # @param BeginOffset: 错误的起始位置，从0开始。
        # @type BeginOffset: Integer
        # @param Len: 错误内容长度。
        # @type Len: Integer
        # @param Word: 错误内容。
        # @type Word: String
        # @param CorrectWord: 纠错结果，当为删除类错误时，结果为null。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorrectWord: Array
        # @param CorrectionType: 纠错类型。0：替换；1：插入；2：删除。
        # @type CorrectionType: Integer
        # @param Confidence: 纠错信息置信度。0：error；1：warning；error的置信度更高。（仅供参考）
        # @type Confidence: Integer
        # @param DescriptionZh: 纠错信息中文描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DescriptionZh: String
        # @param DescriptionEn: 纠错信息英文描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DescriptionEn: String

        attr_accessor :Order, :BeginOffset, :Len, :Word, :CorrectWord, :CorrectionType, :Confidence, :DescriptionZh, :DescriptionEn

        def initialize(order=nil, beginoffset=nil, len=nil, word=nil, correctword=nil, correctiontype=nil, confidence=nil, descriptionzh=nil, descriptionen=nil)
          @Order = order
          @BeginOffset = beginoffset
          @Len = len
          @Word = word
          @CorrectWord = correctword
          @CorrectionType = correctiontype
          @Confidence = confidence
          @DescriptionZh = descriptionzh
          @DescriptionEn = descriptionen
        end

        def deserialize(params)
          @Order = params['Order']
          @BeginOffset = params['BeginOffset']
          @Len = params['Len']
          @Word = params['Word']
          @CorrectWord = params['CorrectWord']
          @CorrectionType = params['CorrectionType']
          @Confidence = params['Confidence']
          @DescriptionZh = params['DescriptionZh']
          @DescriptionEn = params['DescriptionEn']
        end
      end

      # 实体识别结果。
      class Entity < TencentCloud::Common::AbstractModel
        # @param Word: 基础词。
        # @type Word: String
        # @param BeginOffset: 基础词在NormalText中的起始位置。
        # @type BeginOffset: Integer
        # @param Length: 基础词的长度。
        # @type Length: Integer
        # @param Type: 实体类型的标准名字。
        # @type Type: String
        # @param Name: 类型名字的自然语言表达。（中文或英文）
        # @type Name: String

        attr_accessor :Word, :BeginOffset, :Length, :Type, :Name

        def initialize(word=nil, beginoffset=nil, length=nil, type=nil, name=nil)
          @Word = word
          @BeginOffset = beginoffset
          @Length = length
          @Type = type
          @Name = name
        end

        def deserialize(params)
          @Word = params['Word']
          @BeginOffset = params['BeginOffset']
          @Length = params['Length']
          @Type = params['Type']
          @Name = params['Name']
        end
      end

      # ParseWords请求参数结构体
      class ParseWordsRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待分析的文本（支持中英文文本，不超过500字符）
        # @type Text: String

        attr_accessor :Text

        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # ParseWords返回参数结构体
      class ParseWordsResponse < TencentCloud::Common::AbstractModel
        # @param NormalText: 输入文本正则化的结果。（包括对英文文本中的开头和实体进行大写等）
        # @type NormalText: String
        # @param BasicParticiples: 基础粒度分词和词性标注的结果。（请参见附录[词性表](https://cloud.tencent.com/document/product/271/36460)）
        # @type BasicParticiples: Array
        # @param CompoundParticiples: 复合粒度分词和词性标注的结果。（请参见附录[词性表](https://cloud.tencent.com/document/product/271/36460)）
        # @type CompoundParticiples: Array
        # @param Entities: 实体识别结果。（请参见附录[实体类型数据](https://cloud.tencent.com/document/product/271/90592)）
        # @type Entities: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NormalText, :BasicParticiples, :CompoundParticiples, :Entities, :RequestId

        def initialize(normaltext=nil, basicparticiples=nil, compoundparticiples=nil, entities=nil, requestid=nil)
          @NormalText = normaltext
          @BasicParticiples = basicparticiples
          @CompoundParticiples = compoundparticiples
          @Entities = entities
          @RequestId = requestid
        end

        def deserialize(params)
          @NormalText = params['NormalText']
          unless params['BasicParticiples'].nil?
            @BasicParticiples = []
            params['BasicParticiples'].each do |i|
              basicparticiple_tmp = BasicParticiple.new
              basicparticiple_tmp.deserialize(i)
              @BasicParticiples << basicparticiple_tmp
            end
          end
          unless params['CompoundParticiples'].nil?
            @CompoundParticiples = []
            params['CompoundParticiples'].each do |i|
              compoundparticiple_tmp = CompoundParticiple.new
              compoundparticiple_tmp.deserialize(i)
              @CompoundParticiples << compoundparticiple_tmp
            end
          end
          unless params['Entities'].nil?
            @Entities = []
            params['Entities'].each do |i|
              entity_tmp = Entity.new
              entity_tmp.deserialize(i)
              @Entities << entity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SentenceCorrection请求参数结构体
      class SentenceCorrectionRequest < TencentCloud::Common::AbstractModel
        # @param TextList: 待纠错的句子列表。可以以数组方式在一次请求中填写多个待纠错的句子。文本统一使用utf-8格式编码，每个中文句子的长度不超过150字符，每个英文句子的长度不超过100个单词，且数组长度需小于30，即句子总数需少于30句。
        # @type TextList: Array

        attr_accessor :TextList

        def initialize(textlist=nil)
          @TextList = textlist
        end

        def deserialize(params)
          @TextList = params['TextList']
        end
      end

      # SentenceCorrection返回参数结构体
      class SentenceCorrectionResponse < TencentCloud::Common::AbstractModel
        # @param CorrectionList: 纠错结果列表。
        # （注意仅展示错误句子的纠错结果，若句子无错则不展示，若全部待纠错句子都被认为无错，则可能返回数组为空）
        # @type CorrectionList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CorrectionList, :RequestId

        def initialize(correctionlist=nil, requestid=nil)
          @CorrectionList = correctionlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CorrectionList'].nil?
            @CorrectionList = []
            params['CorrectionList'].each do |i|
              correctionitem_tmp = CorrectionItem.new
              correctionitem_tmp.deserialize(i)
              @CorrectionList << correctionitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

