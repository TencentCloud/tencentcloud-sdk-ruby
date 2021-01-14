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

      # 文本纠错结果
      class CCIToken < TencentCloud::Common::AbstractModel
        # @param BeginOffset: 错别字的起始位置，从0开始
        # @type BeginOffset: Integer
        # @param CorrectWord: 错别字纠错结果
        # @type CorrectWord: String
        # @param Word: 错别字内容
        # @type Word: String

        attr_accessor :BeginOffset, :CorrectWord, :Word
        
        def initialize(beginoffset=nil, correctword=nil, word=nil)
          @BeginOffset = beginoffset
          @CorrectWord = correctword
          @Word = word
        end

        def deserialize(params)
          @BeginOffset = params['BeginOffset']
          @CorrectWord = params['CorrectWord']
          @Word = params['Word']
        end
      end

      # ChatBot请求参数结构体
      class ChatBotRequest < TencentCloud::Common::AbstractModel
        # @param Query: 用户请求的query
        # @type Query: String
        # @param Flag: 0: 通用闲聊, 1:儿童闲聊, 默认是通用闲聊
        # @type Flag: Integer
        # @param OpenId: 服务的id,  主要用于儿童闲聊接口，比如手Q的openid
        # @type OpenId: String

        attr_accessor :Query, :Flag, :OpenId
        
        def initialize(query=nil, flag=nil, openid=nil)
          @Query = query
          @Flag = flag
          @OpenId = openid
        end

        def deserialize(params)
          @Query = params['Query']
          @Flag = params['Flag']
          @OpenId = params['OpenId']
        end
      end

      # ChatBot返回参数结构体
      class ChatBotResponse < TencentCloud::Common::AbstractModel
        # @param Confidence: 对于当前输出回复的自信度
        # @type Confidence: Float
        # @param Reply: 闲聊回复
        # @type Reply: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Confidence, :Reply, :RequestId
        
        def initialize(confidence=nil, reply=nil, requestid=nil)
          @Confidence = confidence
          @Reply = reply
          @RequestId = requestid
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Reply = params['Reply']
          @RequestId = params['RequestId']
        end
      end

      # 文本分类结果
      class ClassificationResult < TencentCloud::Common::AbstractModel
        # @param FirstClassName: 一级分类名称
        # @type FirstClassName: String
        # @param FirstClassProbability: 一级分类概率
        # @type FirstClassProbability: Float
        # @param SecondClassName: 二级分类名称
        # @type SecondClassName: String
        # @param SecondClassProbability: 二级分类概率
        # @type SecondClassProbability: Float

        attr_accessor :FirstClassName, :FirstClassProbability, :SecondClassName, :SecondClassProbability
        
        def initialize(firstclassname=nil, firstclassprobability=nil, secondclassname=nil, secondclassprobability=nil)
          @FirstClassName = firstclassname
          @FirstClassProbability = firstclassprobability
          @SecondClassName = secondclassname
          @SecondClassProbability = secondclassprobability
        end

        def deserialize(params)
          @FirstClassName = params['FirstClassName']
          @FirstClassProbability = params['FirstClassProbability']
          @SecondClassName = params['SecondClassName']
          @SecondClassProbability = params['SecondClassProbability']
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
        # @param WordItems: 待添加的词条集合。
        # @type WordItems: Array
        # @param DictId: 自定义词库ID。
        # @type DictId: String

        attr_accessor :WordItems, :DictId
        
        def initialize(worditems=nil, dictid=nil)
          @WordItems = worditems
          @DictId = dictid
        end

        def deserialize(params)
          @WordItems = params['WordItems']
          @DictId = params['DictId']
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
        # @param WordItems: 待删除的词条集合。
        # @type WordItems: Array
        # @param DictId: 自定义词库ID。
        # @type DictId: String

        attr_accessor :WordItems, :DictId
        
        def initialize(worditems=nil, dictid=nil)
          @WordItems = worditems
          @DictId = dictid
        end

        def deserialize(params)
          @WordItems = params['WordItems']
          @DictId = params['DictId']
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
          @DpTokens = params['DpTokens']
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
        # @type Dicts: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Dicts, :RequestId
        
        def initialize(dicts=nil, requestid=nil)
          @Dicts = dicts
          @RequestId = requestid
        end

        def deserialize(params)
          @Dicts = params['Dicts']
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
        # @param Dicts: 自定义词库信息列表。
        # @type Dicts: Array
        # @param TotalCount: 记录总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Dicts, :TotalCount, :RequestId
        
        def initialize(dicts=nil, totalcount=nil, requestid=nil)
          @Dicts = dicts
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Dicts = params['Dicts']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeEntity请求参数结构体
      class DescribeEntityRequest < TencentCloud::Common::AbstractModel
        # @param EntityName: 实体名称
        # @type EntityName: String

        attr_accessor :EntityName
        
        def initialize(entityname=nil)
          @EntityName = entityname
        end

        def deserialize(params)
          @EntityName = params['EntityName']
        end
      end

      # DescribeEntity返回参数结构体
      class DescribeEntityResponse < TencentCloud::Common::AbstractModel
        # @param Content: 返回查询实体相关信息
        # @type Content: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :RequestId
        
        def initialize(content=nil, requestid=nil)
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelation请求参数结构体
      class DescribeRelationRequest < TencentCloud::Common::AbstractModel
        # @param LeftEntityName: 输入第一个实体
        # @type LeftEntityName: String
        # @param RightEntityName: 输入第二个实体
        # @type RightEntityName: String

        attr_accessor :LeftEntityName, :RightEntityName
        
        def initialize(leftentityname=nil, rightentityname=nil)
          @LeftEntityName = leftentityname
          @RightEntityName = rightentityname
        end

        def deserialize(params)
          @LeftEntityName = params['LeftEntityName']
          @RightEntityName = params['RightEntityName']
        end
      end

      # DescribeRelation返回参数结构体
      class DescribeRelationResponse < TencentCloud::Common::AbstractModel
        # @param Content: 返回查询实体间的关系
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :RequestId
        
        def initialize(content=nil, requestid=nil)
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTriple请求参数结构体
      class DescribeTripleRequest < TencentCloud::Common::AbstractModel
        # @param TripleCondition: 三元组查询条件
        # @type TripleCondition: String

        attr_accessor :TripleCondition
        
        def initialize(triplecondition=nil)
          @TripleCondition = triplecondition
        end

        def deserialize(params)
          @TripleCondition = params['TripleCondition']
        end
      end

      # DescribeTriple返回参数结构体
      class DescribeTripleResponse < TencentCloud::Common::AbstractModel
        # @param Content: 返回三元组信息
        # @type Content: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :RequestId
        
        def initialize(content=nil, requestid=nil)
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWordItems请求参数结构体
      class DescribeWordItemsRequest < TencentCloud::Common::AbstractModel
        # @param DictId: 自定义词库ID。
        # @type DictId: String
        # @param Limit: 每页数据量，范围为1~100，默认为10。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，从0开始，默认为0。
        # @type Offset: Integer
        # @param Text: 待检索的词条文本，支持模糊匹配。
        # @type Text: String

        attr_accessor :DictId, :Limit, :Offset, :Text
        
        def initialize(dictid=nil, limit=nil, offset=nil, text=nil)
          @DictId = dictid
          @Limit = limit
          @Offset = offset
          @Text = text
        end

        def deserialize(params)
          @DictId = params['DictId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @Text = params['Text']
        end
      end

      # DescribeWordItems返回参数结构体
      class DescribeWordItemsResponse < TencentCloud::Common::AbstractModel
        # @param WordItems: 词条信息列表。
        # @type WordItems: Array
        # @param TotalCount: 词条记录总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WordItems, :TotalCount, :RequestId
        
        def initialize(worditems=nil, totalcount=nil, requestid=nil)
          @WordItems = worditems
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @WordItems = params['WordItems']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 自定义词库信息
      class DictInfo < TencentCloud::Common::AbstractModel
        # @param Id: 自定义词库ID。
        # @type Id: String
        # @param Name: 自定义词库名称。
        # @type Name: String
        # @param CreateTime: 自定义词库创建时间，形式为:yyyy-mm-dd hh:mm:ss。
        # @type CreateTime: String
        # @param Description: 自定义词库描述信息。
        # @type Description: String
        # @param UpdateTime: 自定义词库修改时间，形式为:yyyy-mm-dd hh:mm:ss。
        # @type UpdateTime: String

        attr_accessor :Id, :Name, :CreateTime, :Description, :UpdateTime
        
        def initialize(id=nil, name=nil, createtime=nil, description=nil, updatetime=nil)
          @Id = id
          @Name = name
          @CreateTime = createtime
          @Description = description
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 句法依存分析结果，包括基础词，基础词的序号，当前词父节点的序号，句法依存关系的类型
      class DpToken < TencentCloud::Common::AbstractModel
        # @param HeadId: 当前词父节点的序号
        # @type HeadId: Integer
        # @param Id: 基础词的序号
        # @type Id: Integer
        # @param Relation: 句法依存关系的类型
        # @type Relation: String
        # @param Word: 基础词
        # @type Word: String

        attr_accessor :HeadId, :Id, :Relation, :Word
        
        def initialize(headid=nil, id=nil, relation=nil, word=nil)
          @HeadId = headid
          @Id = id
          @Relation = relation
          @Word = word
        end

        def deserialize(params)
          @HeadId = params['HeadId']
          @Id = params['Id']
          @Relation = params['Relation']
          @Word = params['Word']
        end
      end

      # 返回的实体关系查询结果详细内容
      class EntityRelationContent < TencentCloud::Common::AbstractModel
        # @param Object: 实体关系查询返回关系的object
        # @type Object: Array
        # @param Subject: 实体关系查询返回关系的subject
        # @type Subject: Array
        # @param Relation: 实体关系查询返回的关系名称
        # @type Relation: String

        attr_accessor :Object, :Subject, :Relation
        
        def initialize(object=nil, subject=nil, relation=nil)
          @Object = object
          @Subject = subject
          @Relation = relation
        end

        def deserialize(params)
          @Object = params['Object']
          @Subject = params['Subject']
          @Relation = params['Relation']
        end
      end

      # 实体关系查询返回的Object类型
      class EntityRelationObject < TencentCloud::Common::AbstractModel
        # @param Id: object对应id
        # @type Id: Array
        # @param Name: object对应name
        # @type Name: Array
        # @param Popular: object对应popular值
        # @type Popular: Array

        attr_accessor :Id, :Name, :Popular
        
        def initialize(id=nil, name=nil, popular=nil)
          @Id = id
          @Name = name
          @Popular = popular
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Popular = params['Popular']
        end
      end

      # 实体关系查询返回Subject
      class EntityRelationSubject < TencentCloud::Common::AbstractModel
        # @param Id: Subject对应id
        # @type Id: Array
        # @param Name: Subject对应name
        # @type Name: Array
        # @param Popular: Subject对应popular
        # @type Popular: Array

        attr_accessor :Id, :Name, :Popular
        
        def initialize(id=nil, name=nil, popular=nil)
          @Id = id
          @Name = name
          @Popular = popular
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Popular = params['Popular']
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

      # KeywordsExtraction请求参数结构体
      class KeywordsExtractionRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待处理的文本（仅支持UTF-8格式，不超过10000字）
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
        # @type Keywords: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Keywords, :RequestId
        
        def initialize(keywords=nil, requestid=nil)
          @Keywords = keywords
          @RequestId = requestid
        end

        def deserialize(params)
          @Keywords = params['Keywords']
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
          @NerTokens = params['NerTokens']
          @PosTokens = params['PosTokens']
          @RequestId = params['RequestId']
        end
      end

      # 命名实体识别结果
      class NerToken < TencentCloud::Common::AbstractModel
        # @param BeginOffset: 起始位置
        # @type BeginOffset: Integer
        # @param Length: 长度
        # @type Length: Integer
        # @param Type: 命名实体类型
        # @type Type: String
        # @param Word: 基础词
        # @type Word: String

        attr_accessor :BeginOffset, :Length, :Type, :Word
        
        def initialize(beginoffset=nil, length=nil, type=nil, word=nil)
          @BeginOffset = beginoffset
          @Length = length
          @Type = type
          @Word = word
        end

        def deserialize(params)
          @BeginOffset = params['BeginOffset']
          @Length = params['Length']
          @Type = params['Type']
          @Word = params['Word']
        end
      end

      # 分词&词性标注结果
      class PosToken < TencentCloud::Common::AbstractModel
        # @param BeginOffset: 起始位置
        # @type BeginOffset: Integer
        # @param Length: 长度
        # @type Length: Integer
        # @param Pos: 词性
        # @type Pos: String
        # @param Word: 基础词
        # @type Word: String

        attr_accessor :BeginOffset, :Length, :Pos, :Word
        
        def initialize(beginoffset=nil, length=nil, pos=nil, word=nil)
          @BeginOffset = beginoffset
          @Length = length
          @Pos = pos
          @Word = word
        end

        def deserialize(params)
          @BeginOffset = params['BeginOffset']
          @Length = params['Length']
          @Pos = params['Pos']
          @Word = params['Word']
        end
      end

      # 词条搜索的结果，主要描述该词条是否存在以及相关的词性。
      class SearchResult < TencentCloud::Common::AbstractModel
        # @param IsExist: 0表示词条不存在，1表示存在。
        # @type IsExist: Integer
        # @param MatchText: 匹配到的词条文本。
        # @type MatchText: String
        # @param Text: 被搜索的词条文本。
        # @type Text: String
        # @param Pos: 词条的词性。
        # @type Pos: String

        attr_accessor :IsExist, :MatchText, :Text, :Pos
        
        def initialize(isexist=nil, matchtext=nil, text=nil, pos=nil)
          @IsExist = isexist
          @MatchText = matchtext
          @Text = text
          @Pos = pos
        end

        def deserialize(params)
          @IsExist = params['IsExist']
          @MatchText = params['MatchText']
          @Text = params['Text']
          @Pos = params['Pos']
        end
      end

      # SearchWordItems请求参数结构体
      class SearchWordItemsRequest < TencentCloud::Common::AbstractModel
        # @param WordItems: 待检索的词条集合。
        # @type WordItems: Array
        # @param DictId: 自定义词库ID。
        # @type DictId: String

        attr_accessor :WordItems, :DictId
        
        def initialize(worditems=nil, dictid=nil)
          @WordItems = worditems
          @DictId = dictid
        end

        def deserialize(params)
          @WordItems = params['WordItems']
          @DictId = params['DictId']
        end
      end

      # SearchWordItems返回参数结构体
      class SearchWordItemsResponse < TencentCloud::Common::AbstractModel
        # @param Results: 词条检索结果集合。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :RequestId
        
        def initialize(results=nil, requestid=nil)
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @Results = params['Results']
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
        # @param Dimension: 句向量的维度
        # @type Dimension: Integer
        # @param Vector: 句向量数组
        # @type Vector: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Dimension, :Vector, :RequestId
        
        def initialize(dimension=nil, vector=nil, requestid=nil)
          @Dimension = dimension
          @Vector = vector
          @RequestId = requestid
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          @Vector = params['Vector']
          @RequestId = params['RequestId']
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
        # @param Negative: 负面情感概率
        # @type Negative: Float
        # @param Neutral: 中性情感概率，当输入参数Mode取值为3class时有效，否则值为空
        # @type Neutral: Float
        # @param Positive: 正面情感概率
        # @type Positive: Float
        # @param Sentiment: 情感分类结果：
        # 1、positive，表示正面情感
        # 2、negative，表示负面情感
        # 3、neutral，表示中性、无情感
        # @type Sentiment: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Negative, :Neutral, :Positive, :Sentiment, :RequestId
        
        def initialize(negative=nil, neutral=nil, positive=nil, sentiment=nil, requestid=nil)
          @Negative = negative
          @Neutral = neutral
          @Positive = positive
          @Sentiment = sentiment
          @RequestId = requestid
        end

        def deserialize(params)
          @Negative = params['Negative']
          @Neutral = params['Neutral']
          @Positive = params['Positive']
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
        # @param Score: 相似度分数
        # @type Score: Float
        # @param Text: 目标文本句子
        # @type Text: String

        attr_accessor :Score, :Text
        
        def initialize(score=nil, text=nil)
          @Score = score
          @Text = text
        end

        def deserialize(params)
          @Score = params['Score']
          @Text = params['Text']
        end
      end

      # TextClassification请求参数结构体
      class TextClassificationRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待分类的文本（仅支持UTF-8格式，不超过10000字）
        # @type Text: String
        # @param Flag: 领域分类体系（默认取1值）：
        # 1、通用领域
        # 2、新闻领域
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
          @Classes = params['Classes']
          @RequestId = params['RequestId']
        end
      end

      # TextCorrection请求参数结构体
      class TextCorrectionRequest < TencentCloud::Common::AbstractModel
        # @param Text: 待纠错的文本（仅支持UTF-8格式，不超过2000字）
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
          @CCITokens = params['CCITokens']
          @ResultText = params['ResultText']
          @RequestId = params['RequestId']
        end
      end

      # TextSimilarity请求参数结构体
      class TextSimilarityRequest < TencentCloud::Common::AbstractModel
        # @param SrcText: 需要与目标句子计算相似度的源句子（仅支持UTF-8格式，不超过500字符）
        # @type SrcText: String
        # @param TargetText: 需要与源句子计算相似度的一个或多个目标句子（仅支持UTF-8格式，目标句子的数量不超过100个，每个句子不超过500字符）
        # 注意：每成功计算1个目标句子与源句子的相似度算1次调用
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
          @Similarity = params['Similarity']
          @RequestId = params['RequestId']
        end
      end

      # 三元组查询返回的元记录
      class TripleContent < TencentCloud::Common::AbstractModel
        # @param Id: 实体id
        # @type Id: String
        # @param Name: 实体名称
        # @type Name: String
        # @param Order: 实体order
        # @type Order: Integer
        # @param Popular: 实体流行度
        # @type Popular: Integer

        attr_accessor :Id, :Name, :Order, :Popular
        
        def initialize(id=nil, name=nil, order=nil, popular=nil)
          @Id = id
          @Name = name
          @Order = order
          @Popular = popular
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Order = params['Order']
          @Popular = params['Popular']
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
        # @param Dimension: 词向量的维度
        # @type Dimension: Integer
        # @param Vector: 词向量数组
        # @type Vector: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Dimension, :Vector, :RequestId
        
        def initialize(dimension=nil, vector=nil, requestid=nil)
          @Dimension = dimension
          @Vector = vector
          @RequestId = requestid
        end

        def deserialize(params)
          @Dimension = params['Dimension']
          @Vector = params['Vector']
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

    end
  end
end

