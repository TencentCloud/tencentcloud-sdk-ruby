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
  module Ecc
    module V20181213
      # 作文批改每个维度名字与得分
      class Aspect < TencentCloud::Common::AbstractModel
        # @param Name: 维度名字
        # @type Name: String
        # @param Score: 维度得分
        # @type Score: Float
        # @param Percentage: 维度分数占比
        # @type Percentage: Float

        attr_accessor :Name, :Score, :Percentage

        def initialize(name=nil, score=nil, percentage=nil)
          @Name = name
          @Score = score
          @Percentage = percentage
        end

        def deserialize(params)
          @Name = params['Name']
          @Score = params['Score']
          @Percentage = params['Percentage']
        end
      end

      # 图像识别批改接口返回的作文文本信息或批改信息
      class CompositionContext < TencentCloud::Common::AbstractModel
        # @param Content: 作文内容
        # @type Content: String
        # @param CorrectData: 批改结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorrectData: :class:`Tencentcloud::Ecc.v20181213.models.CorrectData`
        # @param TaskId: 任务 id，用于查询接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param SessionId: 图像识别唯一标识，一次识别一个 SessionId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String

        attr_accessor :Content, :CorrectData, :TaskId, :SessionId

        def initialize(content=nil, correctdata=nil, taskid=nil, sessionid=nil)
          @Content = content
          @CorrectData = correctdata
          @TaskId = taskid
          @SessionId = sessionid
        end

        def deserialize(params)
          @Content = params['Content']
          unless params['CorrectData'].nil?
            @CorrectData = CorrectData.new
            @CorrectData.deserialize(params['CorrectData'])
          end
          @TaskId = params['TaskId']
          @SessionId = params['SessionId']
        end
      end

      # 图像识别批改接口返回的作文文本信息或批改信息
      class CompostionContext < TencentCloud::Common::AbstractModel
        # @param Content: 作文内容
        # @type Content: String
        # @param CorrectData: 批改结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorrectData: :class:`Tencentcloud::Ecc.v20181213.models.CorrectData`
        # @param TaskId: 任务 id，用于查询接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param SessionId: 图像识别唯一标识，一次识别一个 SessionId
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionId: String

        attr_accessor :Content, :CorrectData, :TaskId, :SessionId

        def initialize(content=nil, correctdata=nil, taskid=nil, sessionid=nil)
          @Content = content
          @CorrectData = correctdata
          @TaskId = taskid
          @SessionId = sessionid
        end

        def deserialize(params)
          @Content = params['Content']
          unless params['CorrectData'].nil?
            @CorrectData = CorrectData.new
            @CorrectData.deserialize(params['CorrectData'])
          end
          @TaskId = params['TaskId']
          @SessionId = params['SessionId']
        end
      end

      # 批改的结果
      class CorrectData < TencentCloud::Common::AbstractModel
        # @param Score: 总得分
        # @type Score: Float
        # @param ScoreCat: 各项得分详情
        # @type ScoreCat: :class:`Tencentcloud::Ecc.v20181213.models.ScoreCategory`
        # @param Comment: 综合评价
        # @type Comment: String
        # @param SentenceComments: 句子点评
        # @type SentenceComments: Array

        attr_accessor :Score, :ScoreCat, :Comment, :SentenceComments

        def initialize(score=nil, scorecat=nil, comment=nil, sentencecomments=nil)
          @Score = score
          @ScoreCat = scorecat
          @Comment = comment
          @SentenceComments = sentencecomments
        end

        def deserialize(params)
          @Score = params['Score']
          unless params['ScoreCat'].nil?
            @ScoreCat = ScoreCategory.new
            @ScoreCat.deserialize(params['ScoreCat'])
          end
          @Comment = params['Comment']
          unless params['SentenceComments'].nil?
            @SentenceComments = []
            params['SentenceComments'].each do |i|
              sentencecom_tmp = SentenceCom.new
              sentencecom_tmp.deserialize(i)
              @SentenceComments << sentencecom_tmp
            end
          end
        end
      end

      # CorrectMultiImage请求参数结构体
      class CorrectMultiImageRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片的url链接或base64数据。每张图片数据作为数组的一个元素，数组个数与图片个数保持一致。存放类别依据InputType而定，url与base64编码不能混合使用。
        # @type Image: Array
        # @param InputType: 输出图片类型，0 表示 Image 字段是图片所在的 url，1 表示 Image 字段是 base64 编码后的图像数据。
        # @type InputType: Integer
        # @param EccAppid: 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数。
        # @type EccAppid: String
        # @param SessionId: 图像识别唯一标识，一次识别一个 SessionId，使用识别功能时 SessionId 可用于使用文本批改接口，此时按图像批改价格收费；如使用文本批改接口时没有传入 SessionId，则需要收取文本批改的费用。
        # @type SessionId: String
        # @param ServerType: 服务类型，0：“多图像识别”，只返回识别结果；1：“多图像批改”，同时返回识别结果与批改结果。默认为 0。
        # @type ServerType: Integer
        # @param Title: 作文题目，可选参数
        # @type Title: String
        # @param Grade: 年级标准， 默认以 cet4 为标准，取值与意义如下：elementary 小学，grade7 grade8 grade9分别对应初一，初二，初三。 grade10 grade11 grade12 分别对应高一，高二，高三，以及 cet4 和 cet6 分别表示 英语4级和6级。
        # @type Grade: String
        # @param Requirement: 作文提纲，可选参数，作文的写作要求。
        # @type Requirement: String
        # @param ModelTitle: 范文标题，可选参数，本接口可以依据提供的范文对作文进行评分。
        # @type ModelTitle: String
        # @param ModelContent: 范文内容，可选参数，同上，范文的正文部分。
        # @type ModelContent: String
        # @param IsAsync: 异步模式标识，0：同步模式，1：异步模式。默认为同步模式
        # @type IsAsync: Integer

        attr_accessor :Image, :InputType, :EccAppid, :SessionId, :ServerType, :Title, :Grade, :Requirement, :ModelTitle, :ModelContent, :IsAsync

        def initialize(image=nil, inputtype=nil, eccappid=nil, sessionid=nil, servertype=nil, title=nil, grade=nil, requirement=nil, modeltitle=nil, modelcontent=nil, isasync=nil)
          @Image = image
          @InputType = inputtype
          @EccAppid = eccappid
          @SessionId = sessionid
          @ServerType = servertype
          @Title = title
          @Grade = grade
          @Requirement = requirement
          @ModelTitle = modeltitle
          @ModelContent = modelcontent
          @IsAsync = isasync
        end

        def deserialize(params)
          @Image = params['Image']
          @InputType = params['InputType']
          @EccAppid = params['EccAppid']
          @SessionId = params['SessionId']
          @ServerType = params['ServerType']
          @Title = params['Title']
          @Grade = params['Grade']
          @Requirement = params['Requirement']
          @ModelTitle = params['ModelTitle']
          @ModelContent = params['ModelContent']
          @IsAsync = params['IsAsync']
        end
      end

      # CorrectMultiImage返回参数结构体
      class CorrectMultiImageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 接口返回数据
        # @type Data: :class:`Tencentcloud::Ecc.v20181213.models.CompostionContext`
        # @param ResultData: 接口返回数据
        # @type ResultData: :class:`Tencentcloud::Ecc.v20181213.models.CompositionContext`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :ResultData, :RequestId
        extend Gem::Deprecate
        deprecate :Data, :none, 2024, 9
        deprecate :Data=, :none, 2024, 9

        def initialize(data=nil, resultdata=nil, requestid=nil)
          @Data = data
          @ResultData = resultdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CompostionContext.new
            @Data.deserialize(params['Data'])
          end
          unless params['ResultData'].nil?
            @ResultData = CompositionContext.new
            @ResultData.deserialize(params['ResultData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTask请求参数结构体
      class DescribeTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param EccAppid: 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数（暂时无需传入）。
        # @type EccAppid: String

        attr_accessor :TaskId, :EccAppid

        def initialize(taskid=nil, eccappid=nil)
          @TaskId = taskid
          @EccAppid = eccappid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @EccAppid = params['EccAppid']
        end
      end

      # DescribeTask返回参数结构体
      class DescribeTaskResponse < TencentCloud::Common::AbstractModel
        # @param Content: 作文识别文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param CorrectData: 整体的批改结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CorrectData: :class:`Tencentcloud::Ecc.v20181213.models.CorrectData`
        # @param Status: 任务状态，“Progressing”: 处理中（此时无结果返回）、“Finished”: 处理完成
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :CorrectData, :Status, :RequestId

        def initialize(content=nil, correctdata=nil, status=nil, requestid=nil)
          @Content = content
          @CorrectData = correctdata
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          unless params['CorrectData'].nil?
            @CorrectData = CorrectData.new
            @CorrectData.deserialize(params['CorrectData'])
          end
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # ECC请求参数结构体
      class ECCRequest < TencentCloud::Common::AbstractModel
        # @param Content: 作文文本，必填
        # @type Content: String
        # @param Title: 作文题目，可选参数
        # @type Title: String
        # @param Grade: 年级标准， 默认以cet4为标准，取值与意义如下：elementary 小学，grade7 grade8 grade9分别对应初一，初二，初三。 grade10 grade11 grade12 分别对应高一，高二，高三，以及cet4和cet6 分别表示 英语4级和6级。
        # @type Grade: String
        # @param Requirement: 作文提纲，可选参数，作文的写作要求。
        # @type Requirement: String
        # @param ModelTitle: 范文标题，可选参数，本接口可以依据提供的范文对作文进行评分。
        # @type ModelTitle: String
        # @param ModelContent: 范文内容，可选参数，同上，范文的正文部分。
        # @type ModelContent: String
        # @param EccAppid: 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数（暂时无需传入）。
        # @type EccAppid: String
        # @param IsAsync: 异步模式标识，0：同步模式，1：异步模式，默认为同步模式
        # @type IsAsync: Integer
        # @param SessionId: 图像识别唯一标识，一次识别一个 SessionId。当传入此前识别接口使用过的 SessionId，则本次批改按图像批改价格收费；如使用了识别接口且本次没有传入 SessionId，则需要加取文本批改的费用；如果直接使用文本批改接口，则只收取文本批改的费用
        # @type SessionId: String

        attr_accessor :Content, :Title, :Grade, :Requirement, :ModelTitle, :ModelContent, :EccAppid, :IsAsync, :SessionId

        def initialize(content=nil, title=nil, grade=nil, requirement=nil, modeltitle=nil, modelcontent=nil, eccappid=nil, isasync=nil, sessionid=nil)
          @Content = content
          @Title = title
          @Grade = grade
          @Requirement = requirement
          @ModelTitle = modeltitle
          @ModelContent = modelcontent
          @EccAppid = eccappid
          @IsAsync = isasync
          @SessionId = sessionid
        end

        def deserialize(params)
          @Content = params['Content']
          @Title = params['Title']
          @Grade = params['Grade']
          @Requirement = params['Requirement']
          @ModelTitle = params['ModelTitle']
          @ModelContent = params['ModelContent']
          @EccAppid = params['EccAppid']
          @IsAsync = params['IsAsync']
          @SessionId = params['SessionId']
        end
      end

      # ECC返回参数结构体
      class ECCResponse < TencentCloud::Common::AbstractModel
        # @param Data: 整体的批改结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Ecc.v20181213.models.CorrectData`
        # @param TaskId: 任务 id，用于查询接口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TaskId, :RequestId

        def initialize(data=nil, taskid=nil, requestid=nil)
          @Data = data
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CorrectData.new
            @Data.deserialize(params['Data'])
          end
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # EHOCR请求参数结构体
      class EHOCRRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片所在的url或base64编码后的图像数据，依据InputType而定
        # @type Image: String
        # @param InputType: 输出图片类型，0 表示 Image 字段是图片所在的 url，1 表示 Image 字段是 base64 编码后的图像数据
        # @type InputType: Integer
        # @param EccAppid: 业务应用ID，与账号应用APPID无关，是用来方便客户管理服务的参数（暂时无需传入）。
        # @type EccAppid: String
        # @param SessionId: 图像识别唯一标识，一次识别一个 SessionId，使用识别功能时 SessionId 可用于使用文本批改接口，此时按图像批改价格收费；如使用文本批改接口时没有传入 SessionId，则需要收取文本批改的费用
        # @type SessionId: String
        # @param ServerType: 服务类型，0：“图像识别”，只返回识别结果，1：“图像批改”，同时返回识别结果与批改结果。默认为 0
        # @type ServerType: Integer
        # @param Title: 作文题目，可选参数
        # @type Title: String
        # @param Grade: 年级标准， 默认以 cet4 为标准，取值与意义如下：elementary 小学，grade7 grade8 grade9分别对应初一，初二，初三。 grade10 grade11 grade12 分别对应高一，高二，高三，以及 cet4 和 cet6 分别表示 英语4级和6级。
        # @type Grade: String
        # @param Requirement: 作文提纲，可选参数，作文的写作要求。
        # @type Requirement: String
        # @param ModelTitle: 范文标题，可选参数，本接口可以依据提供的范文对作文进行评分。
        # @type ModelTitle: String
        # @param ModelContent: 范文内容，可选参数，同上，范文的正文部分。
        # @type ModelContent: String
        # @param IsAsync: 异步模式标识，0：同步模式，1：异步模式。默认为同步模式
        # @type IsAsync: Integer

        attr_accessor :Image, :InputType, :EccAppid, :SessionId, :ServerType, :Title, :Grade, :Requirement, :ModelTitle, :ModelContent, :IsAsync

        def initialize(image=nil, inputtype=nil, eccappid=nil, sessionid=nil, servertype=nil, title=nil, grade=nil, requirement=nil, modeltitle=nil, modelcontent=nil, isasync=nil)
          @Image = image
          @InputType = inputtype
          @EccAppid = eccappid
          @SessionId = sessionid
          @ServerType = servertype
          @Title = title
          @Grade = grade
          @Requirement = requirement
          @ModelTitle = modeltitle
          @ModelContent = modelcontent
          @IsAsync = isasync
        end

        def deserialize(params)
          @Image = params['Image']
          @InputType = params['InputType']
          @EccAppid = params['EccAppid']
          @SessionId = params['SessionId']
          @ServerType = params['ServerType']
          @Title = params['Title']
          @Grade = params['Grade']
          @Requirement = params['Requirement']
          @ModelTitle = params['ModelTitle']
          @ModelContent = params['ModelContent']
          @IsAsync = params['IsAsync']
        end
      end

      # EHOCR返回参数结构体
      class EHOCRResponse < TencentCloud::Common::AbstractModel
        # @param Data: 接口返回数据
        # @type Data: :class:`Tencentcloud::Ecc.v20181213.models.CompostionContext`
        # @param ResultData: 接口返回数据
        # @type ResultData: :class:`Tencentcloud::Ecc.v20181213.models.CompositionContext`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :ResultData, :RequestId
        extend Gem::Deprecate
        deprecate :Data, :none, 2024, 9
        deprecate :Data=, :none, 2024, 9

        def initialize(data=nil, resultdata=nil, requestid=nil)
          @Data = data
          @ResultData = resultdata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CompostionContext.new
            @Data.deserialize(params['Data'])
          end
          unless params['ResultData'].nil?
            @ResultData = CompositionContext.new
            @ResultData.deserialize(params['ResultData'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 维度单词坐标
      class ErrorCoordinate < TencentCloud::Common::AbstractModel
        # @param Coordinate: 维度单词坐标
        # @type Coordinate: Array

        attr_accessor :Coordinate

        def initialize(coordinate=nil)
          @Coordinate = coordinate
        end

        def deserialize(params)
          @Coordinate = params['Coordinate']
        end
      end

      # 四个维度的得分
      class ScoreCategory < TencentCloud::Common::AbstractModel
        # @param Words: 词汇维度
        # @type Words: :class:`Tencentcloud::Ecc.v20181213.models.Aspect`
        # @param Sentences: 句子维度
        # @type Sentences: :class:`Tencentcloud::Ecc.v20181213.models.Aspect`
        # @param Structure: 篇章结构维度
        # @type Structure: :class:`Tencentcloud::Ecc.v20181213.models.Aspect`
        # @param Content: 内容维度
        # @type Content: :class:`Tencentcloud::Ecc.v20181213.models.Aspect`
        # @param Score: 维度得分
        # @type Score: Float
        # @param Percentage: 维度分数占比
        # @type Percentage: Float

        attr_accessor :Words, :Sentences, :Structure, :Content, :Score, :Percentage

        def initialize(words=nil, sentences=nil, structure=nil, content=nil, score=nil, percentage=nil)
          @Words = words
          @Sentences = sentences
          @Structure = structure
          @Content = content
          @Score = score
          @Percentage = percentage
        end

        def deserialize(params)
          unless params['Words'].nil?
            @Words = Aspect.new
            @Words.deserialize(params['Words'])
          end
          unless params['Sentences'].nil?
            @Sentences = Aspect.new
            @Sentences.deserialize(params['Sentences'])
          end
          unless params['Structure'].nil?
            @Structure = Aspect.new
            @Structure.deserialize(params['Structure'])
          end
          unless params['Content'].nil?
            @Content = Aspect.new
            @Content.deserialize(params['Content'])
          end
          @Score = params['Score']
          @Percentage = params['Percentage']
        end
      end

      # 批改结果按句点评的详细信息
      class SentenceCom < TencentCloud::Common::AbstractModel
        # @param Suggestions: 句子错误纠正信息
        # @type Suggestions: Array
        # @param Sentence: 句子信息
        # @type Sentence: :class:`Tencentcloud::Ecc.v20181213.models.SentenceItem`

        attr_accessor :Suggestions, :Sentence

        def initialize(suggestions=nil, sentence=nil)
          @Suggestions = suggestions
          @Sentence = sentence
        end

        def deserialize(params)
          unless params['Suggestions'].nil?
            @Suggestions = []
            params['Suggestions'].each do |i|
              sentencesuggest_tmp = SentenceSuggest.new
              sentencesuggest_tmp.deserialize(i)
              @Suggestions << sentencesuggest_tmp
            end
          end
          unless params['Sentence'].nil?
            @Sentence = SentenceItem.new
            @Sentence.deserialize(params['Sentence'])
          end
        end
      end

      # 句子的相关信息
      class SentenceItem < TencentCloud::Common::AbstractModel
        # @param Sentence: 英语句子
        # @type Sentence: String
        # @param ParaID: 段落id
        # @type ParaID: Integer
        # @param SentenceID: 句子id
        # @type SentenceID: Integer

        attr_accessor :Sentence, :ParaID, :SentenceID

        def initialize(sentence=nil, paraid=nil, sentenceid=nil)
          @Sentence = sentence
          @ParaID = paraid
          @SentenceID = sentenceid
        end

        def deserialize(params)
          @Sentence = params['Sentence']
          @ParaID = params['ParaID']
          @SentenceID = params['SentenceID']
        end
      end

      # 句子批阅建议
      class SentenceSuggest < TencentCloud::Common::AbstractModel
        # @param Type: 类型
        # @type Type: String
        # @param ErrorType: 错误类型
        # @type ErrorType: String
        # @param Origin: 原始单词
        # @type Origin: String
        # @param Replace: 替换成 的单词
        # @type Replace: String
        # @param Message: 提示信息
        # @type Message: String
        # @param ErrorPosition: 维度单词位置，在句子的第几个到第几个单词之间
        # @type ErrorPosition: Array
        # @param ErrorCoordinates: 维度单词坐标，错误单词在图片中的坐标，只有传图片时正常返回，传文字时返回[ ]
        # @type ErrorCoordinates: Array

        attr_accessor :Type, :ErrorType, :Origin, :Replace, :Message, :ErrorPosition, :ErrorCoordinates

        def initialize(type=nil, errortype=nil, origin=nil, replace=nil, message=nil, errorposition=nil, errorcoordinates=nil)
          @Type = type
          @ErrorType = errortype
          @Origin = origin
          @Replace = replace
          @Message = message
          @ErrorPosition = errorposition
          @ErrorCoordinates = errorcoordinates
        end

        def deserialize(params)
          @Type = params['Type']
          @ErrorType = params['ErrorType']
          @Origin = params['Origin']
          @Replace = params['Replace']
          @Message = params['Message']
          @ErrorPosition = params['ErrorPosition']
          unless params['ErrorCoordinates'].nil?
            @ErrorCoordinates = []
            params['ErrorCoordinates'].each do |i|
              errorcoordinate_tmp = ErrorCoordinate.new
              errorcoordinate_tmp.deserialize(i)
              @ErrorCoordinates << errorcoordinate_tmp
            end
          end
        end
      end

    end
  end
end

