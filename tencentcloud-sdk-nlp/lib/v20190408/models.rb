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
      # AutoSummarization请求参数结构体
      class AutoSummarizationRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待处理的文本（仅支持UTF-8格式，不超过2000字）
        # @type Text: String
        # @param Length: 指定摘要的长度上限（默认值为200）
        # 注：为保证摘要的可读性，最终生成的摘要长度会低于指定的长度上限。
        # @type Length: Integer

        attr_accessor :Text, :Length
        
        def initialize(text=nil, length=nil)
          @Text = text
          @Length = length
        end

        def deserialize(params)
          @Text = params['Text']
          @Length = params['Length']
        end
      end

      # AutoSummarization返回参数结构体
      class AutoSummarizationResponse < TencentCloud::Common::AbstractModel
        # @param Summary: 文本摘要结果
        # @type Summary: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Summary, :RequestId
        
        def initialize(summary=nil, requestid=nil)
          @Summary = summary
          @RequestId = requestid
        end

        def deserialize(params)
          @Summary = params['Summary']
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

      # 文本纠错结果
      class CCIToken < TencentCloud::Common::AbstractModel
        # @param Word: 错别字内容
        # @type Word: String
        # @param BeginOffset: 错别字的起始位置，从0开始
        # @type BeginOffset: Integer
        # @param CorrectWord: 错别字纠错结果
        # @type CorrectWord: String

        attr_accessor :Word, :BeginOffset, :CorrectWord
        
        def initialize(word=nil, beginoffset=nil, correctword=nil)
          @Word = word
          @BeginOffset = beginoffset
          @CorrectWord = correctword
        end

        def deserialize(params)
          @Word = params['Word']
          @BeginOffset = params['BeginOffset']
          @CorrectWord = params['CorrectWord']
        end
      end

      # ChatBot请求参数结构体
      class ChatBotRequest < TencentCloud::Common::AbstractModel
        # @param Query: 用户请求的query
        # @type Query: String
        # @param OpenId: 服务的id,  主要用于儿童闲聊接口，比如手Q的openid
        # @type OpenId: String
        # @param Flag: 0: 通用闲聊, 1:儿童闲聊, 默认是通用闲聊
        # @type Flag: Integer

        attr_accessor :Query, :OpenId, :Flag
        
        def initialize(query=nil, openid=nil, flag=nil)
          @Query = query
          @OpenId = openid
          @Flag = flag
        end

        def deserialize(params)
          @Query = params['Query']
          @OpenId = params['OpenId']
          @Flag = params['Flag']
        end
      end

      # ChatBot返回参数结构体
      class ChatBotResponse < TencentCloud::Common::AbstractModel
        # @param Reply: 闲聊回复
        # @type Reply: String
        # @param Confidence: 对于当前输出回复的自信度
        # @type Confidence: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Reply, :Confidence, :RequestId
        
        def initialize(reply=nil, confidence=nil, requestid=nil)
          @Reply = reply
          @Confidence = confidence
          @RequestId = requestid
        end

        def deserialize(params)
          @Reply = params['Reply']
          @Confidence = params['Confidence']
          @RequestId = params['RequestId']
        end
      end

      # 文本分类结果
      class ClassificationResult < TencentCloud::Common::AbstractModel
        # @param FirstClassName: 一级分类名称
        # @type FirstClassName: String
        # @param SecondClassName: 二级分类名称
        # @type SecondClassName: String
        # @param FirstClassProbability: 一级分类概率
        # @type FirstClassProbability: Float
        # @param SecondClassProbability: 二级分类概率
        # @type SecondClassProbability: Float
        # @param ThirdClassName: 三级分类名称，仅有当新闻领域五分类可能出现，详情见文本分类文档
        # @type ThirdClassName: String
        # @param ThirdClassProbability: 三级分类概率，仅有当新闻领域五分类可能出现，详情见文本分类文档
        # @type ThirdClassProbability: Float
        # @param FourthClassName: 四级分类名称，仅有当新闻领域五分类可能出现，详情见文本分类文档
        # @type FourthClassName: String
        # @param FourthClassProbability: 四级分类概率，仅有当新闻领域五分类可能出现，详情见文本分类文档
        # @type FourthClassProbability: Float
        # @param FifthClassName: 五级分类名称，仅有当新闻领域五分类可能出现，详情见文本分类文档
        # @type FifthClassName: String
        # @param FifthClassProbability: 五级分类概率，仅有当新闻领域五分类可能出现，详情见文本分类文档
        # @type FifthClassProbability: Float

        attr_accessor :FirstClassName, :SecondClassName, :FirstClassProbability, :SecondClassProbability, :ThirdClassName, :ThirdClassProbability, :FourthClassName, :FourthClassProbability, :FifthClassName, :FifthClassProbability
        
        def initialize(firstclassname=nil, secondclassname=nil, firstclassprobability=nil, secondclassprobability=nil, thirdclassname=nil, thirdclassprobability=nil, fourthclassname=nil, fourthclassprobability=nil, fifthclassname=nil, fifthclassprobability=nil)
          @FirstClassName = firstclassname
          @SecondClassName = secondclassname
          @FirstClassProbability = firstclassprobability
          @SecondClassProbability = secondclassprobability
          @ThirdClassName = thirdclassname
          @ThirdClassProbability = thirdclassprobability
          @FourthClassName = fourthclassname
          @FourthClassProbability = fourthclassprobability
          @FifthClassName = fifthclassname
          @FifthClassProbability = fifthclassprobability
        end

        def deserialize(params)
          @FirstClassName = params['FirstClassName']
          @SecondClassName = params['SecondClassName']
          @FirstClassProbability = params['FirstClassProbability']
          @SecondClassProbability = params['SecondClassProbability']
          @ThirdClassName = params['ThirdClassName']
          @ThirdClassProbability = params['ThirdClassProbability']
          @FourthClassName = params['FourthClassName']
          @FourthClassProbability = params['FourthClassProbability']
          @FifthClassName = params['FifthClassName']
          @FifthClassProbability = params['FifthClassProbability']
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

      # CreateDict请求参数结构体
      class CreateDictRequest < TencentCloud::Common::AbstractModel
        # @param Name: 自定义词库名称，不超过20字。
        # @type Name: String
        # @param Description: 自定义词库描述，不超过100字。
        # @type Description: String

        attr_accessor :Name, :Description
        
        def initialize(name=nil, description=nil)
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # CreateDict返回参数结构体
      class CreateDictResponse < TencentCloud::Common::AbstractModel
        # @param DictId: 创建的自定义词库ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DictId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DictId, :RequestId
        
        def initialize(dictid=nil, requestid=nil)
          @DictId = dictid
          @RequestId = requestid
        end

        def deserialize(params)
          @DictId = params['DictId']
          @RequestId = params['RequestId']
        end
      end

      # CreateWordItems请求参数结构体
      class CreateWordItemsRequest < TencentCloud::Common::AbstractModel
        # @param DictId: 自定义词库ID。
        # @type DictId: String
        # @param WordItems: 待添加的词条集合。
        # @type WordItems: Array

        attr_accessor :DictId, :WordItems
        
        def initialize(dictid=nil, worditems=nil)
          @DictId = dictid
          @WordItems = worditems
        end

        def deserialize(params)
          @DictId = params['DictId']
          unless params['WordItems'].nil?
            @WordItems = []
            params['WordItems'].each do |i|
              worditem_tmp = WordItem.new
              worditem_tmp.deserialize(i)
              @WordItems << worditem_tmp
            end
          end
        end
      end

      # CreateWordItems返回参数结构体
      class CreateWordItemsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteDict请求参数结构体
      class DeleteDictRequest < TencentCloud::Common::AbstractModel
        # @param DictId: 要删除的自定义词库ID。
        # @type DictId: String

        attr_accessor :DictId
        
        def initialize(dictid=nil)
          @DictId = dictid
        end

        def deserialize(params)
          @DictId = params['DictId']
        end
      end

      # DeleteDict返回参数结构体
      class DeleteDictResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteWordItems请求参数结构体
      class DeleteWordItemsRequest < TencentCloud::Common::AbstractModel
        # @param DictId: 自定义词库ID。
        # @type DictId: String
        # @param WordItems: 待删除的词条集合。
        # @type WordItems: Array

        attr_accessor :DictId, :WordItems
        
        def initialize(dictid=nil, worditems=nil)
          @DictId = dictid
          @WordItems = worditems
        end

        def deserialize(params)
          @DictId = params['DictId']
          unless params['WordItems'].nil?
            @WordItems = []
            params['WordItems'].each do |i|
              worditem_tmp = WordItem.new
              worditem_tmp.deserialize(i)
              @WordItems << worditem_tmp
            end
          end
        end
      end

      # DeleteWordItems返回参数结构体
      class DeleteWordItemsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DependencyParsing请求参数结构体
      class DependencyParsingRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待分析的文本（仅支持UTF-8格式，不超过200字）
        # @type Text: String

        attr_accessor :Text
        
        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # DependencyParsing返回参数结构体
      class DependencyParsingResponse < TencentCloud::Common::AbstractModel
        # @param DpTokens: 句法依存分析结果，其中句法依存关系的类型包括：
        # <li>主谓关系，eg: 我送她一束花 (我 <-- 送)
        # <li>动宾关系，eg: 我送她一束花 (送 --> 花)
        # <li>间宾关系，eg: 我送她一束花 (送 --> 她)
        # <li>前置宾语，eg: 他什么书都读 (书 <-- 读)
        # <li>兼语，eg: 他请我吃饭 (请 --> 我)
        # <li>定中关系，eg: 红苹果 (红 <-- 苹果)
        # <li>状中结构，eg: 非常美丽 (非常 <-- 美丽)
        # <li>动补结构，eg: 做完了作业 (做 --> 完)
        # <li>并列关系，eg: 大山和大海 (大山 --> 大海)
        # <li>介宾关系，eg: 在贸易区内 (在 --> 内)
        # <li>左附加关系，eg: 大山和大海 (和 <-- 大海)
        # <li>右附加关系，eg: 孩子们 (孩子 --> 们)
        # <li>独立结构，eg: 两个单句在结构上彼此独立
        # <li>标点符号，eg: 。
        # <li>核心关系，eg: 整个句子的核心
        # @type DpTokens: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DpTokens, :RequestId
        
        def initialize(dptokens=nil, requestid=nil)
          @DpTokens = dptokens
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DpTokens'].nil?
            @DpTokens = []
            params['DpTokens'].each do |i|
              dptoken_tmp = DpToken.new
              dptoken_tmp.deserialize(i)
              @DpTokens << dptoken_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDict请求参数结构体
      class DescribeDictRequest < TencentCloud::Common::AbstractModel
        # @param DictId: 自定义词库ID。
        # @type DictId: String
        # @param Name: 自定义词库名称，模糊搜索。
        # @type Name: String

        attr_accessor :DictId, :Name
        
        def initialize(dictid=nil, name=nil)
          @DictId = dictid
          @Name = name
        end

        def deserialize(params)
          @DictId = params['DictId']
          @Name = params['Name']
        end
      end

      # DescribeDict返回参数结构体
      class DescribeDictResponse < TencentCloud::Common::AbstractModel
        # @param Dicts: 查询到的词库信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dicts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Dicts, :RequestId
        
        def initialize(dicts=nil, requestid=nil)
          @Dicts = dicts
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Dicts'].nil?
            @Dicts = []
            params['Dicts'].each do |i|
              dictinfo_tmp = DictInfo.new
              dictinfo_tmp.deserialize(i)
              @Dicts << dictinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDicts请求参数结构体
      class DescribeDictsRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 每页数据量，范围为1~100，默认为10。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，从0开始，默认为0。
        # @type Offset: Integer

        attr_accessor :Limit, :Offset
        
        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDicts返回参数结构体
      class DescribeDictsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总条数。
        # @type TotalCount: Integer
        # @param Dicts: 自定义词库信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Dicts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Dicts, :RequestId
        
        def initialize(totalcount=nil, dicts=nil, requestid=nil)
          @TotalCount = totalcount
          @Dicts = dicts
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Dicts'].nil?
            @Dicts = []
            params['Dicts'].each do |i|
              dictinfo_tmp = DictInfo.new
              dictinfo_tmp.deserialize(i)
              @Dicts << dictinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWordItems请求参数结构体
      class DescribeWordItemsRequest < TencentCloud::Common::AbstractModel
        # @param DictId: 自定义词库ID。
        # @type DictId: String
        # @param Offset: 分页偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param Limit: 每页数据量，范围为1~100，默认为10。
        # @type Limit: Integer
        # @param Text: 待检索的词条文本，支持模糊匹配。
        # @type Text: String

        attr_accessor :DictId, :Offset, :Limit, :Text
        
        def initialize(dictid=nil, offset=nil, limit=nil, text=nil)
          @DictId = dictid
          @Offset = offset
          @Limit = limit
          @Text = text
        end

        def deserialize(params)
          @DictId = params['DictId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Text = params['Text']
        end
      end

      # DescribeWordItems返回参数结构体
      class DescribeWordItemsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 词条记录总条数。
        # @type TotalCount: Integer
        # @param WordItems: 词条信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WordItems: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WordItems, :RequestId
        
        def initialize(totalcount=nil, worditems=nil, requestid=nil)
          @TotalCount = totalcount
          @WordItems = worditems
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['WordItems'].nil?
            @WordItems = []
            params['WordItems'].each do |i|
              worditem_tmp = WordItem.new
              worditem_tmp.deserialize(i)
              @WordItems << worditem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 自定义词库信息
      class DictInfo < TencentCloud::Common::AbstractModel
        # @param Name: 自定义词库名称。
        # @type Name: String
        # @param Id: 自定义词库ID。
        # @type Id: String
        # @param Description: 自定义词库描述信息。
        # @type Description: String
        # @param UpdateTime: 自定义词库修改时间，形式为:yyyy-mm-dd hh:mm:ss。
        # @type UpdateTime: String
        # @param CreateTime: 自定义词库创建时间，形式为:yyyy-mm-dd hh:mm:ss。
        # @type CreateTime: String

        attr_accessor :Name, :Id, :Description, :UpdateTime, :CreateTime
        
        def initialize(name=nil, id=nil, description=nil, updatetime=nil, createtime=nil)
          @Name = name
          @Id = id
          @Description = description
          @UpdateTime = updatetime
          @CreateTime = createtime
        end

        def deserialize(params)
          @Name = params['Name']
          @Id = params['Id']
          @Description = params['Description']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
        end
      end

      # 句法依存分析结果，包括基础词，基础词的序号，当前词父节点的序号，句法依存关系的类型
      class DpToken < TencentCloud::Common::AbstractModel
        # @param Relation: 句法依存关系的类型
        # @type Relation: String
        # @param HeadId: 当前词父节点的序号
        # @type HeadId: Integer
        # @param Word: 基础词
        # @type Word: String
        # @param Id: 基础词的序号
        # @type Id: Integer

        attr_accessor :Relation, :HeadId, :Word, :Id
        
        def initialize(relation=nil, headid=nil, word=nil, id=nil)
          @Relation = relation
          @HeadId = headid
          @Word = word
          @Id = id
        end

        def deserialize(params)
          @Relation = params['Relation']
          @HeadId = params['HeadId']
          @Word = params['Word']
          @Id = params['Id']
        end
      end

      # 文本润色结果
      class Embellish < TencentCloud::Common::AbstractModel
        # @param Text: 润色后的文本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param EmbellishType: 润色类型。类型列表
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
        # @param SentencePairList: 待分析的句子对数组。句子对应不超过5对，支持中英文文本，原句子与目标句子均应不超过500字符。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # GenerateCouplet请求参数结构体
      class GenerateCoupletRequest < TencentCloud::Common::AbstractModel
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

      # GenerateCouplet返回参数结构体
      class GenerateCoupletResponse < TencentCloud::Common::AbstractModel
        # @param TopScroll: 横批。
        # @type TopScroll: String
        # @param Content: 上联与下联。
        # @type Content: Array
        # @param RandomCause: 当对联随机生成时，展示随机生成原因。
        # @type RandomCause: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # GenerateKeywordSentence请求参数结构体
      class GenerateKeywordSentenceRequest < TencentCloud::Common::AbstractModel
        # @param WordList: 生成句子的关键词，关键词个数需不超过4个，中文关键词长度应不超过10字符，英文关键词长度不超过3个单词。关键词中不可包含标点符号。
        # @type WordList: Array
        # @param Number: 返回生成句子的个数。数量需>=1且<=5。
        # （注意实际结果可能小于指定个数）
        # @type Number: Integer
        # @param Domain: 指定生成句子的领域，支持领域列表
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # GeneratePoetry请求参数结构体
      class GeneratePoetryRequest < TencentCloud::Common::AbstractModel
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

      # GeneratePoetry返回参数结构体
      class GeneratePoetryResponse < TencentCloud::Common::AbstractModel
        # @param Title: 诗题，即输入的生成诗词的关键词。
        # @type Title: String
        # @param Content: 诗的内容。
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 关键词提取结果
      class Keyword < TencentCloud::Common::AbstractModel
        # @param Score: 权重
        # @type Score: Float
        # @param Word: 关键词
        # @type Word: String

        attr_accessor :Score, :Word
        
        def initialize(score=nil, word=nil)
          @Score = score
          @Word = word
        end

        def deserialize(params)
          @Score = params['Score']
          @Word = params['Word']
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

      # KeywordsExtraction请求参数结构体
      class KeywordsExtractionRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待处理的文本（仅支持UTF-8格式，不超过10000字符）
        # @type Text: String
        # @param Num: 指定关键词个数上限（默认值为5）
        # @type Num: Integer

        attr_accessor :Text, :Num
        
        def initialize(text=nil, num=nil)
          @Text = text
          @Num = num
        end

        def deserialize(params)
          @Text = params['Text']
          @Num = params['Num']
        end
      end

      # KeywordsExtraction返回参数结构体
      class KeywordsExtractionResponse < TencentCloud::Common::AbstractModel
        # @param Keywords: 关键词提取结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keywords: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Keywords, :RequestId
        
        def initialize(keywords=nil, requestid=nil)
          @Keywords = keywords
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Keywords'].nil?
            @Keywords = []
            params['Keywords'].each do |i|
              keyword_tmp = Keyword.new
              keyword_tmp.deserialize(i)
              @Keywords << keyword_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # LexicalAnalysis请求参数结构体
      class LexicalAnalysisRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待分析的文本（仅支持UTF-8格式，不超过500字）
        # @type Text: String
        # @param DictId: 指定要加载的自定义词库ID。
        # @type DictId: String
        # @param Flag: 词法分析模式（默认取2值）：
        # 1、高精度（混合粒度分词能力）；
        # 2、高性能（单粒度分词能力）；
        # @type Flag: Integer

        attr_accessor :Text, :DictId, :Flag
        
        def initialize(text=nil, dictid=nil, flag=nil)
          @Text = text
          @DictId = dictid
          @Flag = flag
        end

        def deserialize(params)
          @Text = params['Text']
          @DictId = params['DictId']
          @Flag = params['Flag']
        end
      end

      # LexicalAnalysis返回参数结构体
      class LexicalAnalysisResponse < TencentCloud::Common::AbstractModel
        # @param NerTokens: 命名实体识别结果。取值范围：
        # <li>PER：表示人名，如刘德华、贝克汉姆</li>
        # <li>LOC：表示地名，如北京、华山</li>
        # <li>ORG：表示机构团体名，如腾讯、最高人民法院、人大附中</li>
        # <li>PRODUCTION：表示产品名，如QQ、微信、iPhone</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NerTokens: Array
        # @param PosTokens: 分词&词性标注结果（词性表请参见附录）
        # @type PosTokens: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NerTokens, :PosTokens, :RequestId
        
        def initialize(nertokens=nil, postokens=nil, requestid=nil)
          @NerTokens = nertokens
          @PosTokens = postokens
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['NerTokens'].nil?
            @NerTokens = []
            params['NerTokens'].each do |i|
              nertoken_tmp = NerToken.new
              nertoken_tmp.deserialize(i)
              @NerTokens << nertoken_tmp
            end
          end
          unless params['PosTokens'].nil?
            @PosTokens = []
            params['PosTokens'].each do |i|
              postoken_tmp = PosToken.new
              postoken_tmp.deserialize(i)
              @PosTokens << postoken_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 命名实体识别结果
      class NerToken < TencentCloud::Common::AbstractModel
        # @param Word: 基础词
        # @type Word: String
        # @param Length: 长度
        # @type Length: Integer
        # @param BeginOffset: 起始位置
        # @type BeginOffset: Integer
        # @param Type: 命名实体类型
        # @type Type: String

        attr_accessor :Word, :Length, :BeginOffset, :Type
        
        def initialize(word=nil, length=nil, beginoffset=nil, type=nil)
          @Word = word
          @Length = length
          @BeginOffset = beginoffset
          @Type = type
        end

        def deserialize(params)
          @Word = params['Word']
          @Length = params['Length']
          @BeginOffset = params['BeginOffset']
          @Type = params['Type']
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
        # @param BasicParticiples: 基础粒度分词和词性标注的结果。（词性表请参见附录）
        # @type BasicParticiples: Array
        # @param CompoundParticiples: 复合粒度分词和词性标注的结果。（词性表请参见附录）
        # @type CompoundParticiples: Array
        # @param Entities: 实体识别结果。（实体类型数据请参见附录）
        # @type Entities: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 分词&词性标注结果
      class PosToken < TencentCloud::Common::AbstractModel
        # @param Word: 基础词
        # @type Word: String
        # @param Length: 长度
        # @type Length: Integer
        # @param BeginOffset: 起始位置
        # @type BeginOffset: Integer
        # @param Pos: 词性
        # @type Pos: String

        attr_accessor :Word, :Length, :BeginOffset, :Pos
        
        def initialize(word=nil, length=nil, beginoffset=nil, pos=nil)
          @Word = word
          @Length = length
          @BeginOffset = beginoffset
          @Pos = pos
        end

        def deserialize(params)
          @Word = params['Word']
          @Length = params['Length']
          @BeginOffset = params['BeginOffset']
          @Pos = params['Pos']
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 词条搜索的结果，主要描述该词条是否存在以及相关的词性。
      class SearchResult < TencentCloud::Common::AbstractModel
        # @param Text: 被搜索的词条文本。
        # @type Text: String
        # @param IsExist: 0表示词条不存在，1表示存在。
        # @type IsExist: Integer
        # @param MatchText: 匹配到的词条文本。
        # @type MatchText: String
        # @param Pos: 词条的词性。
        # @type Pos: String

        attr_accessor :Text, :IsExist, :MatchText, :Pos
        
        def initialize(text=nil, isexist=nil, matchtext=nil, pos=nil)
          @Text = text
          @IsExist = isexist
          @MatchText = matchtext
          @Pos = pos
        end

        def deserialize(params)
          @Text = params['Text']
          @IsExist = params['IsExist']
          @MatchText = params['MatchText']
          @Pos = params['Pos']
        end
      end

      # SearchWordItems请求参数结构体
      class SearchWordItemsRequest < TencentCloud::Common::AbstractModel
        # @param DictId: 自定义词库ID。
        # @type DictId: String
        # @param WordItems: 待检索的词条集合。
        # @type WordItems: Array

        attr_accessor :DictId, :WordItems
        
        def initialize(dictid=nil, worditems=nil)
          @DictId = dictid
          @WordItems = worditems
        end

        def deserialize(params)
          @DictId = params['DictId']
          unless params['WordItems'].nil?
            @WordItems = []
            params['WordItems'].each do |i|
              worditem_tmp = WordItem.new
              worditem_tmp.deserialize(i)
              @WordItems << worditem_tmp
            end
          end
        end
      end

      # SearchWordItems返回参数结构体
      class SearchWordItemsResponse < TencentCloud::Common::AbstractModel
        # @param Results: 词条检索结果集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :RequestId
        
        def initialize(results=nil, requestid=nil)
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              searchresult_tmp = SearchResult.new
              searchresult_tmp.deserialize(i)
              @Results << searchresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SentenceCorrection请求参数结构体
      class SentenceCorrectionRequest < TencentCloud::Common::AbstractModel
        # @param TextList: 待纠错的句子列表。可以以数组方式在一次请求中填写多个待纠错的句子。文本统一使用utf-8格式编码，每个中文句子的长度不超过150字符，每个英文句子的长度不超过100个单词，且数组长度需小于150，即句子总数需少于150句。
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # SentenceEmbedding请求参数结构体
      class SentenceEmbeddingRequest < TencentCloud::Common::AbstractModel
        # @param Text: 输入的文本（仅支持UTF-8格式，不超过500字）
        # @type Text: String

        attr_accessor :Text
        
        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # SentenceEmbedding返回参数结构体
      class SentenceEmbeddingResponse < TencentCloud::Common::AbstractModel
        # @param Vector: 句向量数组
        # @type Vector: Array
        # @param Dimension: 句向量的维度
        # @type Dimension: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Vector, :Dimension, :RequestId
        
        def initialize(vector=nil, dimension=nil, requestid=nil)
          @Vector = vector
          @Dimension = dimension
          @RequestId = requestid
        end

        def deserialize(params)
          @Vector = params['Vector']
          @Dimension = params['Dimension']
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

      # SentimentAnalysis请求参数结构体
      class SentimentAnalysisRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待分析的文本（仅支持UTF-8格式，不超过200字）
        # @type Text: String
        # @param Flag: 待分析文本所属的类型，仅当输入参数Mode取值为2class时有效（默认取4值）：
        # 1、商品评论类
        # 2、社交类
        # 3、美食酒店类
        # 4、通用领域类
        # @type Flag: Integer
        # @param Mode: 情感分类模式选项，可取2class或3class（默认值为2class）
        # 1、2class：返回正负面二分类情感结果
        # 2、3class：返回正负面及中性三分类情感结果
        # @type Mode: String

        attr_accessor :Text, :Flag, :Mode
        
        def initialize(text=nil, flag=nil, mode=nil)
          @Text = text
          @Flag = flag
          @Mode = mode
        end

        def deserialize(params)
          @Text = params['Text']
          @Flag = params['Flag']
          @Mode = params['Mode']
        end
      end

      # SentimentAnalysis返回参数结构体
      class SentimentAnalysisResponse < TencentCloud::Common::AbstractModel
        # @param Positive: 正面情感概率
        # @type Positive: Float
        # @param Neutral: 中性情感概率，当输入参数Mode取值为3class时有效，否则值为空
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Neutral: Float
        # @param Negative: 负面情感概率
        # @type Negative: Float
        # @param Sentiment: 情感分类结果：
        # 1、positive，表示正面情感
        # 2、negative，表示负面情感
        # 3、neutral，表示中性、无情感
        # @type Sentiment: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # SimilarWords请求参数结构体
      class SimilarWordsRequest < TencentCloud::Common::AbstractModel
        # @param Text: 输入的词语（仅支持UTF-8格式，不超过20字）
        # @type Text: String
        # @param WordNumber: 相似词个数；取值范围：1-200，默认为10；
        # @type WordNumber: Integer

        attr_accessor :Text, :WordNumber
        
        def initialize(text=nil, wordnumber=nil)
          @Text = text
          @WordNumber = wordnumber
        end

        def deserialize(params)
          @Text = params['Text']
          @WordNumber = params['WordNumber']
        end
      end

      # SimilarWords返回参数结构体
      class SimilarWordsResponse < TencentCloud::Common::AbstractModel
        # @param SimilarWords: 相似词数组
        # @type SimilarWords: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SimilarWords, :RequestId
        
        def initialize(similarwords=nil, requestid=nil)
          @SimilarWords = similarwords
          @RequestId = requestid
        end

        def deserialize(params)
          @SimilarWords = params['SimilarWords']
          @RequestId = params['RequestId']
        end
      end

      # 文本相似度
      class Similarity < TencentCloud::Common::AbstractModel
        # @param Text: 目标文本句子
        # @type Text: String
        # @param Score: 相似度分数
        # @type Score: Float

        attr_accessor :Text, :Score
        
        def initialize(text=nil, score=nil)
          @Text = text
          @Score = score
        end

        def deserialize(params)
          @Text = params['Text']
          @Score = params['Score']
        end
      end

      # TextClassification请求参数结构体
      class TextClassificationRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待分类的文本（仅支持UTF-8格式，不超过10000字）
        # @type Text: String
        # @param Flag: 领域分类体系（默认取1值）：
        # 1、通用领域，二分类
        # 2、新闻领域，五分类。类别数据不一定全部返回，详情见类目映射表（注意：目前五分类已下线不可用）
        # @type Flag: Integer

        attr_accessor :Text, :Flag
        
        def initialize(text=nil, flag=nil)
          @Text = text
          @Flag = flag
        end

        def deserialize(params)
          @Text = params['Text']
          @Flag = params['Flag']
        end
      end

      # TextClassification返回参数结构体
      class TextClassificationResponse < TencentCloud::Common::AbstractModel
        # @param Classes: 文本分类结果（文本分类映射表请参见附录）
        # @type Classes: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Classes, :RequestId
        
        def initialize(classes=nil, requestid=nil)
          @Classes = classes
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Classes'].nil?
            @Classes = []
            params['Classes'].each do |i|
              classificationresult_tmp = ClassificationResult.new
              classificationresult_tmp.deserialize(i)
              @Classes << classificationresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TextCorrectionPro请求参数结构体
      class TextCorrectionProRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待纠错的文本（仅支持UTF-8格式，不超过128字符）
        # @type Text: String

        attr_accessor :Text
        
        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # TextCorrectionPro返回参数结构体
      class TextCorrectionProResponse < TencentCloud::Common::AbstractModel
        # @param CCITokens: 纠错详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CCITokens: Array
        # @param ResultText: 纠错后的文本
        # @type ResultText: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CCITokens, :ResultText, :RequestId
        
        def initialize(ccitokens=nil, resulttext=nil, requestid=nil)
          @CCITokens = ccitokens
          @ResultText = resulttext
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CCITokens'].nil?
            @CCITokens = []
            params['CCITokens'].each do |i|
              ccitoken_tmp = CCIToken.new
              ccitoken_tmp.deserialize(i)
              @CCITokens << ccitoken_tmp
            end
          end
          @ResultText = params['ResultText']
          @RequestId = params['RequestId']
        end
      end

      # TextCorrection请求参数结构体
      class TextCorrectionRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待纠错的文本（仅支持UTF-8格式，不超过2000字符）
        # @type Text: String

        attr_accessor :Text
        
        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # TextCorrection返回参数结构体
      class TextCorrectionResponse < TencentCloud::Common::AbstractModel
        # @param CCITokens: 纠错详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CCITokens: Array
        # @param ResultText: 纠错后的文本
        # @type ResultText: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CCITokens, :ResultText, :RequestId
        
        def initialize(ccitokens=nil, resulttext=nil, requestid=nil)
          @CCITokens = ccitokens
          @ResultText = resulttext
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CCITokens'].nil?
            @CCITokens = []
            params['CCITokens'].each do |i|
              ccitoken_tmp = CCIToken.new
              ccitoken_tmp.deserialize(i)
              @CCITokens << ccitoken_tmp
            end
          end
          @ResultText = params['ResultText']
          @RequestId = params['RequestId']
        end
      end

      # TextEmbellish请求参数结构体
      class TextEmbellishRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待润色的文本。中文文本长度需<=50字符；英文文本长度需<=30个单词。
        # @type Text: String
        # @param SourceLang: 待润色文本的语言类型，支持语言列表
        # zh：中文
        # en：英文
        # @type SourceLang: String
        # @param Number: 返回润色结果的个数。数量需>=1且<=5。
        # （注意实际结果可能小于指定个数）
        # @type Number: Integer
        # @param Style: 控制润色类型，类型列表
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # TextSimilarityPro请求参数结构体
      class TextSimilarityProRequest < TencentCloud::Common::AbstractModel
        # @param SrcText: 需要与目标句子计算相似度的源句子（仅支持UTF-8格式，不超过128字符）
        # @type SrcText: String
        # @param TargetText: 目标句子（仅支持UTF-8格式，不超过128字符）
        # @type TargetText: Array

        attr_accessor :SrcText, :TargetText
        
        def initialize(srctext=nil, targettext=nil)
          @SrcText = srctext
          @TargetText = targettext
        end

        def deserialize(params)
          @SrcText = params['SrcText']
          @TargetText = params['TargetText']
        end
      end

      # TextSimilarityPro返回参数结构体
      class TextSimilarityProResponse < TencentCloud::Common::AbstractModel
        # @param Similarity: 每个目标句子与源句子的相似度分值，按照分值降序排列
        # @type Similarity: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Similarity, :RequestId
        
        def initialize(similarity=nil, requestid=nil)
          @Similarity = similarity
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Similarity'].nil?
            @Similarity = []
            params['Similarity'].each do |i|
              similarity_tmp = Similarity.new
              similarity_tmp.deserialize(i)
              @Similarity << similarity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TextSimilarity请求参数结构体
      class TextSimilarityRequest < TencentCloud::Common::AbstractModel
        # @param SrcText: 需要与目标句子计算相似度的源句子（仅支持UTF-8格式，不超过500字符）
        # @type SrcText: String
        # @param TargetText: 目标句子（以句子数量为单位消耗资源包）
        # @type TargetText: Array

        attr_accessor :SrcText, :TargetText
        
        def initialize(srctext=nil, targettext=nil)
          @SrcText = srctext
          @TargetText = targettext
        end

        def deserialize(params)
          @SrcText = params['SrcText']
          @TargetText = params['TargetText']
        end
      end

      # TextSimilarity返回参数结构体
      class TextSimilarityResponse < TencentCloud::Common::AbstractModel
        # @param Similarity: 每个目标句子与源句子的相似度分值，按照分值降序排列
        # @type Similarity: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Similarity, :RequestId
        
        def initialize(similarity=nil, requestid=nil)
          @Similarity = similarity
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Similarity'].nil?
            @Similarity = []
            params['Similarity'].each do |i|
              similarity_tmp = Similarity.new
              similarity_tmp.deserialize(i)
              @Similarity << similarity_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # TextWriting请求参数结构体
      class TextWritingRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待续写的句子，文本统一使用utf-8格式编码，长度不超过200字符。
        # @type Text: String
        # @param SourceLang: 待续写文本的语言类型，支持语言列表
        # zh：中文
        # en：英文
        # @type SourceLang: String
        # @param Number: 返回续写结果的个数。数量需>=1且<=5。
        # （注意实际结果可能小于指定个数）
        # @type Number: Integer
        # @param Domain: 指定续写领域，支持领域列表
        # general：通用领域，支持中英文补全
        # academic：学术领域，仅支持英文补全
        # 默认为general（通用领域）。
        # @type Domain: String
        # @param Style: 指定续写风格，支持风格列表
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # UpdateDict请求参数结构体
      class UpdateDictRequest < TencentCloud::Common::AbstractModel
        # @param DictId: 自定义词库ID。
        # @type DictId: String
        # @param Description: 词库描述，不超过100字。
        # @type Description: String
        # @param Name: 词库名称，不超过20字。
        # @type Name: String

        attr_accessor :DictId, :Description, :Name
        
        def initialize(dictid=nil, description=nil, name=nil)
          @DictId = dictid
          @Description = description
          @Name = name
        end

        def deserialize(params)
          @DictId = params['DictId']
          @Description = params['Description']
          @Name = params['Name']
        end
      end

      # UpdateDict返回参数结构体
      class UpdateDictResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # WordEmbedding请求参数结构体
      class WordEmbeddingRequest < TencentCloud::Common::AbstractModel
        # @param Text: 输入的词语（仅支持UTF-8格式，不超过20字）
        # @type Text: String

        attr_accessor :Text
        
        def initialize(text=nil)
          @Text = text
        end

        def deserialize(params)
          @Text = params['Text']
        end
      end

      # WordEmbedding返回参数结构体
      class WordEmbeddingResponse < TencentCloud::Common::AbstractModel
        # @param Vector: 词向量数组
        # @type Vector: Array
        # @param Dimension: 词向量的维度
        # @type Dimension: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Vector, :Dimension, :RequestId
        
        def initialize(vector=nil, dimension=nil, requestid=nil)
          @Vector = vector
          @Dimension = dimension
          @RequestId = requestid
        end

        def deserialize(params)
          @Vector = params['Vector']
          @Dimension = params['Dimension']
          @RequestId = params['RequestId']
        end
      end

      # 词条信息。
      class WordItem < TencentCloud::Common::AbstractModel
        # @param Text: 词条文本内容。
        # @type Text: String
        # @param CreateTime: 词条创建时间。
        # @type CreateTime: String
        # @param Pos: 词条的词性。
        # @type Pos: String

        attr_accessor :Text, :CreateTime, :Pos
        
        def initialize(text=nil, createtime=nil, pos=nil)
          @Text = text
          @CreateTime = createtime
          @Pos = pos
        end

        def deserialize(params)
          @Text = params['Text']
          @CreateTime = params['CreateTime']
          @Pos = params['Pos']
        end
      end

      # WordSimilarity请求参数结构体
      class WordSimilarityRequest < TencentCloud::Common::AbstractModel
        # @param SrcWord: 计算相似度的源词（仅支持UTF-8格式，不超过20字）
        # @type SrcWord: String
        # @param TargetWord: 计算相似度的目标词（仅支持UTF-8格式，不超过20字）
        # @type TargetWord: String

        attr_accessor :SrcWord, :TargetWord
        
        def initialize(srcword=nil, targetword=nil)
          @SrcWord = srcword
          @TargetWord = targetword
        end

        def deserialize(params)
          @SrcWord = params['SrcWord']
          @TargetWord = params['TargetWord']
        end
      end

      # WordSimilarity返回参数结构体
      class WordSimilarityResponse < TencentCloud::Common::AbstractModel
        # @param Similarity: 两个词语的相似度
        # @type Similarity: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

