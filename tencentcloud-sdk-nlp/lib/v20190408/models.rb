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

      # 分类详细信息
      class Category < TencentCloud::Common::AbstractModel
        # @param Id: 分类id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Label: 分类英文名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Label: String
        # @param Name: 分类中文名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Score: 分类置信度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Float

        attr_accessor :Id, :Label, :Name, :Score

        def initialize(id=nil, label=nil, name=nil, score=nil)
          @Id = id
          @Label = label
          @Name = name
          @Score = score
        end

        def deserialize(params)
          @Id = params['Id']
          @Label = params['Label']
          @Name = params['Name']
          @Score = params['Score']
        end
      end

      # ClassifyContent请求参数结构体
      class ClassifyContentRequest < TencentCloud::Common::AbstractModel
        # @param Title: 待分类的文章的标题（仅支持UTF-8格式，不超过100字符）。
        # @type Title: String
        # @param Content: 待分类文章的内容, 每个元素对应一个段落。（仅支持UTF-8格式，文章内容长度总和不超过2000字符）
        # @type Content: Array

        attr_accessor :Title, :Content

        def initialize(title=nil, content=nil)
          @Title = title
          @Content = content
        end

        def deserialize(params)
          @Title = params['Title']
          @Content = params['Content']
        end
      end

      # ClassifyContent返回参数结构体
      class ClassifyContentResponse < TencentCloud::Common::AbstractModel
        # @param FirstClassification: 一级分类。（请参见附录[三级分类体系表](https://cloud.tencent.com/document/product/271/94286)）
        # @type FirstClassification: :class:`Tencentcloud::Nlp.v20190408.models.Category`
        # @param SecondClassification: 二级分类。（请参见附录[三级分类体系表](https://cloud.tencent.com/document/product/271/94286)）
        # @type SecondClassification: :class:`Tencentcloud::Nlp.v20190408.models.Category`
        # @param ThirdClassification: 三级分类。（请参见附录[三级分类体系表](https://cloud.tencent.com/document/product/271/94286)）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ThirdClassification: :class:`Tencentcloud::Nlp.v20190408.models.Category`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FirstClassification, :SecondClassification, :ThirdClassification, :RequestId

        def initialize(firstclassification=nil, secondclassification=nil, thirdclassification=nil, requestid=nil)
          @FirstClassification = firstclassification
          @SecondClassification = secondclassification
          @ThirdClassification = thirdclassification
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FirstClassification'].nil?
            @FirstClassification = Category.new
            @FirstClassification.deserialize(params['FirstClassification'])
          end
          unless params['SecondClassification'].nil?
            @SecondClassification = Category.new
            @SecondClassification.deserialize(params['SecondClassification'])
          end
          unless params['ThirdClassification'].nil?
            @ThirdClassification = Category.new
            @ThirdClassification.deserialize(params['ThirdClassification'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ComposeCouplet请求参数结构体
      class ComposeCoupletRequest < TencentCloud::Common::AbstractModel
        # @param Text: 生成对联的关键词。长度需>=2，当长度>2时，自动截取前两个字作为关键字。内容需为常用汉字（不含有数字、英文、韩语、日语、符号等等其他）。
        # @type Text: String
        # @param TargetType: 返回的文本结果为繁体还是简体。0：简体；1：繁体。默认为0。
        # @type TargetType: Integer

        attr_accessor :Text, :TargetType

        def initialize(text=nil, targettype=nil)
          @Text = text
          @TargetType = targettype
        end

        def deserialize(params)
          @Text = params['Text']
          @TargetType = params['TargetType']
        end
      end

      # ComposeCouplet返回参数结构体
      class ComposeCoupletResponse < TencentCloud::Common::AbstractModel
        # @param TopScroll: 横批。
        # @type TopScroll: String
        # @param Content: 上联与下联。
        # @type Content: Array
        # @param RandomCause: 当对联随机生成时，展示随机生成原因。
        # @type RandomCause: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TopScroll, :Content, :RandomCause, :RequestId

        def initialize(topscroll=nil, content=nil, randomcause=nil, requestid=nil)
          @TopScroll = topscroll
          @Content = content
          @RandomCause = randomcause
          @RequestId = requestid
        end

        def deserialize(params)
          @TopScroll = params['TopScroll']
          @Content = params['Content']
          @RandomCause = params['RandomCause']
          @RequestId = params['RequestId']
        end
      end

      # ComposePoetry请求参数结构体
      class ComposePoetryRequest < TencentCloud::Common::AbstractModel
        # @param Text: 生成诗词的关键词。
        # @type Text: String
        # @param PoetryType: 生成诗词的类型。0：藏头或藏身；1：藏头；2：藏身。默认为0。
        # @type PoetryType: Integer
        # @param Genre: 诗的体裁。0：五言律诗或七言律诗；5：五言律诗；7：七言律诗。默认为0。
        # @type Genre: Integer

        attr_accessor :Text, :PoetryType, :Genre

        def initialize(text=nil, poetrytype=nil, genre=nil)
          @Text = text
          @PoetryType = poetrytype
          @Genre = genre
        end

        def deserialize(params)
          @Text = params['Text']
          @PoetryType = params['PoetryType']
          @Genre = params['Genre']
        end
      end

      # ComposePoetry返回参数结构体
      class ComposePoetryResponse < TencentCloud::Common::AbstractModel
        # @param Title: 诗题，即输入的生成诗词的关键词。
        # @type Title: String
        # @param Content: 诗的内容。
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Title, :Content, :RequestId

        def initialize(title=nil, content=nil, requestid=nil)
          @Title = title
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Title = params['Title']
          @Content = params['Content']
          @RequestId = params['RequestId']
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

      # 文本润色结果
      class Embellish < TencentCloud::Common::AbstractModel
        # @param Text: 润色后的文本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param EmbellishType: 润色类型。类型如下：
        # expansion：扩写
        # rewriting：改写
        # translation_m2a：从现代文改写为古文
        # translation_a2m：从古文改写为现代文


        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmbellishType: String

        attr_accessor :Text, :EmbellishType

        def initialize(text=nil, embellishtype=nil)
          @Text = text
          @EmbellishType = embellishtype
        end

        def deserialize(params)
          @Text = params['Text']
          @EmbellishType = params['EmbellishType']
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

      # EvaluateSentenceSimilarity请求参数结构体
      class EvaluateSentenceSimilarityRequest < TencentCloud::Common::AbstractModel
        # @param SentencePairList: 待分析的句子对数组。句子对应不超过1对，仅支持中文文本，原句子与目标句子均应不超过500字符。
        # @type SentencePairList: Array

        attr_accessor :SentencePairList

        def initialize(sentencepairlist=nil)
          @SentencePairList = sentencepairlist
        end

        def deserialize(params)
          unless params['SentencePairList'].nil?
            @SentencePairList = []
            params['SentencePairList'].each do |i|
              sentencepair_tmp = SentencePair.new
              sentencepair_tmp.deserialize(i)
              @SentencePairList << sentencepair_tmp
            end
          end
        end
      end

      # EvaluateSentenceSimilarity返回参数结构体
      class EvaluateSentenceSimilarityResponse < TencentCloud::Common::AbstractModel
        # @param ScoreList: 每个句子对的相似度分值。
        # @type ScoreList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScoreList, :RequestId

        def initialize(scorelist=nil, requestid=nil)
          @ScoreList = scorelist
          @RequestId = requestid
        end

        def deserialize(params)
          @ScoreList = params['ScoreList']
          @RequestId = params['RequestId']
        end
      end

      # EvaluateWordSimilarity请求参数结构体
      class EvaluateWordSimilarityRequest < TencentCloud::Common::AbstractModel
        # @param SourceWord: 计算相似度的源词。（仅支持UTF-8格式，不超过10字符）
        # @type SourceWord: String
        # @param TargetWord: 计算相似度的目标词。（仅支持UTF-8格式，不超过10字符）
        # @type TargetWord: String

        attr_accessor :SourceWord, :TargetWord

        def initialize(sourceword=nil, targetword=nil)
          @SourceWord = sourceword
          @TargetWord = targetword
        end

        def deserialize(params)
          @SourceWord = params['SourceWord']
          @TargetWord = params['TargetWord']
        end
      end

      # EvaluateWordSimilarity返回参数结构体
      class EvaluateWordSimilarityResponse < TencentCloud::Common::AbstractModel
        # @param Similarity: 词相似度分值。
        # @type Similarity: Float
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Similarity, :RequestId

        def initialize(similarity=nil, requestid=nil)
          @Similarity = similarity
          @RequestId = requestid
        end

        def deserialize(params)
          @Similarity = params['Similarity']
          @RequestId = params['RequestId']
        end
      end

      # GenerateKeywordSentence请求参数结构体
      class GenerateKeywordSentenceRequest < TencentCloud::Common::AbstractModel
        # @param WordList: 生成句子的关键词，关键词个数需不超过4个，中文关键词长度应不超过10字符，英文关键词长度不超过3个单词。关键词中不可包含标点符号。
        # @type WordList: Array
        # @param Number: 返回生成句子的个数。数量需>=1且<=5。
        # （注意实际结果可能小于指定个数）
        # @type Number: Integer
        # @param Domain: 指定生成句子的领域，支持领域如下：
        # general：通用领域，支持中英文
        # academic：学术领域，仅支持英文
        # 默认为general（通用领域）。
        # @type Domain: String

        attr_accessor :WordList, :Number, :Domain

        def initialize(wordlist=nil, number=nil, domain=nil)
          @WordList = wordlist
          @Number = number
          @Domain = domain
        end

        def deserialize(params)
          @WordList = params['WordList']
          @Number = params['Number']
          @Domain = params['Domain']
        end
      end

      # GenerateKeywordSentence返回参数结构体
      class GenerateKeywordSentenceResponse < TencentCloud::Common::AbstractModel
        # @param KeywordSentenceList: 生成的句子列表。
        # @type KeywordSentenceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeywordSentenceList, :RequestId

        def initialize(keywordsentencelist=nil, requestid=nil)
          @KeywordSentenceList = keywordsentencelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeywordSentenceList'].nil?
            @KeywordSentenceList = []
            params['KeywordSentenceList'].each do |i|
              keywordsentence_tmp = KeywordSentence.new
              keywordsentence_tmp.deserialize(i)
              @KeywordSentenceList << keywordsentence_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 通过关键词生成的句子信息
      class KeywordSentence < TencentCloud::Common::AbstractModel
        # @param TargetText: 通过关键词生成的句子。
        # @type TargetText: String

        attr_accessor :TargetText

        def initialize(targettext=nil)
          @TargetText = targettext
        end

        def deserialize(params)
          @TargetText = params['TargetText']
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

      # RetrieveSimilarWords请求参数结构体
      class RetrieveSimilarWordsRequest < TencentCloud::Common::AbstractModel
        # @param Text: 输入的词语。（仅支持UTF-8格式，不超过10字符）
        # @type Text: String
        # @param Number: 召回的相似词个数，取值范围为1-20。
        # @type Number: Integer

        attr_accessor :Text, :Number

        def initialize(text=nil, number=nil)
          @Text = text
          @Number = number
        end

        def deserialize(params)
          @Text = params['Text']
          @Number = params['Number']
        end
      end

      # RetrieveSimilarWords返回参数结构体
      class RetrieveSimilarWordsResponse < TencentCloud::Common::AbstractModel
        # @param WordList: 召回的相似词数组。
        # @type WordList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WordList, :RequestId

        def initialize(wordlist=nil, requestid=nil)
          @WordList = wordlist
          @RequestId = requestid
        end

        def deserialize(params)
          @WordList = params['WordList']
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

      # 待分析的句子对
      class SentencePair < TencentCloud::Common::AbstractModel
        # @param SourceText: 需要与目标句子计算相似度的源句子。（仅支持UTF-8格式，不超过500字符）
        # @type SourceText: String
        # @param TargetText: 目标句子。（仅支持UTF-8格式，不超过500字符）
        # @type TargetText: String

        attr_accessor :SourceText, :TargetText

        def initialize(sourcetext=nil, targettext=nil)
          @SourceText = sourcetext
          @TargetText = targettext
        end

        def deserialize(params)
          @SourceText = params['SourceText']
          @TargetText = params['TargetText']
        end
      end

      # TextEmbellish请求参数结构体
      class TextEmbellishRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待润色的文本。中文文本长度需<=50字符；英文文本长度需<=30个单词。
        # @type Text: String
        # @param SourceLang: 待润色文本的语言类型，支持语言如下：
        # zh：中文
        # en：英文
        # @type SourceLang: String
        # @param Number: 返回润色结果的个数。数量需>=1且<=5。
        # （注意实际结果可能小于指定个数）
        # @type Number: Integer
        # @param Style: 控制润色类型，类型如下：
        # both：同时返回改写和扩写
        # expansion：扩写
        # rewriting：改写
        # m2a：从现代文改写为古文
        # a2m：从古文改写为现代文
        # 默认为both。
        # @type Style: String

        attr_accessor :Text, :SourceLang, :Number, :Style

        def initialize(text=nil, sourcelang=nil, number=nil, style=nil)
          @Text = text
          @SourceLang = sourcelang
          @Number = number
          @Style = style
        end

        def deserialize(params)
          @Text = params['Text']
          @SourceLang = params['SourceLang']
          @Number = params['Number']
          @Style = params['Style']
        end
      end

      # TextEmbellish返回参数结构体
      class TextEmbellishResponse < TencentCloud::Common::AbstractModel
        # @param EmbellishList: 润色结果列表。
        # @type EmbellishList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EmbellishList, :RequestId

        def initialize(embellishlist=nil, requestid=nil)
          @EmbellishList = embellishlist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EmbellishList'].nil?
            @EmbellishList = []
            params['EmbellishList'].each do |i|
              embellish_tmp = Embellish.new
              embellish_tmp.deserialize(i)
              @EmbellishList << embellish_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TextWriting请求参数结构体
      class TextWritingRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待续写的句子，文本统一使用utf-8格式编码，长度不超过200字符。
        # @type Text: String
        # @param SourceLang: 待续写文本的语言类型，支持语言如下：
        # zh：中文
        # en：英文
        # @type SourceLang: String
        # @param Number: 返回续写结果的个数。数量需>=1且<=5。
        # （注意实际结果可能小于指定个数）
        # @type Number: Integer
        # @param Domain: 指定续写领域，支持领域如下：
        # general：通用领域，支持中英文补全
        # academic：学术领域，仅支持英文补全
        # 默认为general（通用领域）。
        # @type Domain: String
        # @param Style: 指定续写风格，支持风格如下：
        # science_fiction：科幻
        # military_history：军事
        # xuanhuan_wuxia：武侠
        # urban_officialdom：职场
        # 默认为xuanhuan_wuxia（武侠）。
        # @type Style: String

        attr_accessor :Text, :SourceLang, :Number, :Domain, :Style

        def initialize(text=nil, sourcelang=nil, number=nil, domain=nil, style=nil)
          @Text = text
          @SourceLang = sourcelang
          @Number = number
          @Domain = domain
          @Style = style
        end

        def deserialize(params)
          @Text = params['Text']
          @SourceLang = params['SourceLang']
          @Number = params['Number']
          @Domain = params['Domain']
          @Style = params['Style']
        end
      end

      # TextWriting返回参数结构体
      class TextWritingResponse < TencentCloud::Common::AbstractModel
        # @param WritingList: 续写结果列表。
        # @type WritingList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WritingList, :RequestId

        def initialize(writinglist=nil, requestid=nil)
          @WritingList = writinglist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WritingList'].nil?
            @WritingList = []
            params['WritingList'].each do |i|
              writing_tmp = Writing.new
              writing_tmp.deserialize(i)
              @WritingList << writing_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 文本续写结果
      class Writing < TencentCloud::Common::AbstractModel
        # @param TargetText: 续写的文本。
        # @type TargetText: String
        # @param PrefixText: 续写的前缀。
        # @type PrefixText: String

        attr_accessor :TargetText, :PrefixText

        def initialize(targettext=nil, prefixtext=nil)
          @TargetText = targettext
          @PrefixText = prefixtext
        end

        def deserialize(params)
          @TargetText = params['TargetText']
          @PrefixText = params['PrefixText']
        end
      end

    end
  end
end

