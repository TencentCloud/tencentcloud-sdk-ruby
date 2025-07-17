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
  module Lkeap
    module V20240522
      # 属性信息
      class AttributeItem < TencentCloud::Common::AbstractModel
        # @param AttributeId: 属性id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttributeId: String
        # @param AttributeKey: 属性标识
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttributeKey: String
        # @param AttributeName: 属性名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttributeName: String
        # @param Labels: 标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array

        attr_accessor :AttributeId, :AttributeKey, :AttributeName, :Labels

        def initialize(attributeid=nil, attributekey=nil, attributename=nil, labels=nil)
          @AttributeId = attributeid
          @AttributeKey = attributekey
          @AttributeName = attributename
          @Labels = labels
        end

        def deserialize(params)
          @AttributeId = params['AttributeId']
          @AttributeKey = params['AttributeKey']
          @AttributeName = params['AttributeName']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              attributelabelitem_tmp = AttributeLabelItem.new
              attributelabelitem_tmp.deserialize(i)
              @Labels << attributelabelitem_tmp
            end
          end
        end
      end

      # 属性标签信息
      class AttributeLabelItem < TencentCloud::Common::AbstractModel
        # @param LabelId: 标签id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelId: String
        # @param LabelName: 标签名称，最大80个英文字符
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelName: String

        attr_accessor :LabelId, :LabelName

        def initialize(labelid=nil, labelname=nil)
          @LabelId = labelid
          @LabelName = labelname
        end

        def deserialize(params)
          @LabelId = params['LabelId']
          @LabelName = params['LabelName']
        end
      end

      # 属性标签引用
      class AttributeLabelReferItem < TencentCloud::Common::AbstractModel
        # @param AttributeId: 属性id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttributeId: String
        # @param LabelIds: 标签id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelIds: Array

        attr_accessor :AttributeId, :LabelIds

        def initialize(attributeid=nil, labelids=nil)
          @AttributeId = attributeid
          @LabelIds = labelids
        end

        def deserialize(params)
          @AttributeId = params['AttributeId']
          @LabelIds = params['LabelIds']
        end
      end

      # ChatCompletions请求参数结构体
      class ChatCompletionsRequest < TencentCloud::Common::AbstractModel
        # @param Model: 模型名称
        # @type Model: String
        # @param Messages: 聊天上下文信息。
        # 说明：
        # 1. 长度最多为 40，按对话时间从旧到新在数组中排列。
        # 2. Message.Role 可选值：system、user、assistant。
        # 其中，system 角色可选，如存在则必须位于列表的最开始。user 和 assistant 需交替出现，以 user 提问开始，user 提问结束，Content 不能为空。Role 的顺序示例：[system（可选） user assistant user assistant user ...]。
        # @type Messages: Array
        # @param Stream: 是否流式输出
        # @type Stream: Boolean
        # @param Temperature: 控制生成的随机性，较高的值会产生更多样化的输出。
        # @type Temperature: Float
        # @param MaxTokens: 最大生成的token数量，默认为4096，最大可设置为16384
        # @type MaxTokens: Integer
        # @param EnableSearch: 是否启用联网搜索
        # @type EnableSearch: Boolean

        attr_accessor :Model, :Messages, :Stream, :Temperature, :MaxTokens, :EnableSearch

        def initialize(model=nil, messages=nil, stream=nil, temperature=nil, maxtokens=nil, enablesearch=nil)
          @Model = model
          @Messages = messages
          @Stream = stream
          @Temperature = temperature
          @MaxTokens = maxtokens
          @EnableSearch = enablesearch
        end

        def deserialize(params)
          @Model = params['Model']
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              message_tmp = Message.new
              message_tmp.deserialize(i)
              @Messages << message_tmp
            end
          end
          @Stream = params['Stream']
          @Temperature = params['Temperature']
          @MaxTokens = params['MaxTokens']
          @EnableSearch = params['EnableSearch']
        end
      end

      # ChatCompletions返回参数结构体
      class ChatCompletionsResponse < TencentCloud::Common::AbstractModel
        # @param Created: Unix 时间戳，单位为秒。
        # @type Created: Integer
        # @param Usage: Token 统计信息。
        # 按照总 Token 数量计费。
        # @type Usage: :class:`Tencentcloud::Lkeap.v20240522.models.ChatUsage`
        # @param Id: 本次请求的 RequestId。
        # @type Id: String
        # @param Choices: 回复内容。
        # @type Choices: Array
        # @param Model: 模型名称。
        # @type Model: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Created, :Usage, :Id, :Choices, :Model, :RequestId

        def initialize(created=nil, usage=nil, id=nil, choices=nil, model=nil, requestid=nil)
          @Created = created
          @Usage = usage
          @Id = id
          @Choices = choices
          @Model = model
          @RequestId = requestid
        end

        def deserialize(params)
          @Created = params['Created']
          unless params['Usage'].nil?
            @Usage = ChatUsage.new
            @Usage.deserialize(params['Usage'])
          end
          @Id = params['Id']
          unless params['Choices'].nil?
            @Choices = []
            params['Choices'].each do |i|
              choice_tmp = Choice.new
              choice_tmp.deserialize(i)
              @Choices << choice_tmp
            end
          end
          @Model = params['Model']
          @RequestId = params['RequestId']
        end
      end

      # 消耗量
      class ChatUsage < TencentCloud::Common::AbstractModel
        # @param PromptTokens: 输入token数
        # @type PromptTokens: Integer
        # @param CompletionTokens: 输出token数
        # @type CompletionTokens: Integer
        # @param TotalTokens: 总token数
        # @type TotalTokens: Integer

        attr_accessor :PromptTokens, :CompletionTokens, :TotalTokens

        def initialize(prompttokens=nil, completiontokens=nil, totaltokens=nil)
          @PromptTokens = prompttokens
          @CompletionTokens = completiontokens
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @PromptTokens = params['PromptTokens']
          @CompletionTokens = params['CompletionTokens']
          @TotalTokens = params['TotalTokens']
        end
      end

      # 返回的回复, 支持多个
      class Choice < TencentCloud::Common::AbstractModel
        # @param FinishReason: 结束标志位，可能为 stop、 content_filter。
        # stop 表示输出正常结束。
        # content_filter 只在开启流式输出审核时会出现，表示安全审核未通过。
        # @type FinishReason: String
        # @param Delta: 增量返回值，流式调用时使用该字段。
        # @type Delta: :class:`Tencentcloud::Lkeap.v20240522.models.Delta`
        # @param Message: 返回值，非流式调用时使用该字段。
        # @type Message: :class:`Tencentcloud::Lkeap.v20240522.models.Message`
        # @param Index: 索引值，流式调用时使用该字段。
        # @type Index: Integer

        attr_accessor :FinishReason, :Delta, :Message, :Index

        def initialize(finishreason=nil, delta=nil, message=nil, index=nil)
          @FinishReason = finishreason
          @Delta = delta
          @Message = message
          @Index = index
        end

        def deserialize(params)
          @FinishReason = params['FinishReason']
          unless params['Delta'].nil?
            @Delta = Delta.new
            @Delta.deserialize(params['Delta'])
          end
          unless params['Message'].nil?
            @Message = Message.new
            @Message.deserialize(params['Message'])
          end
          @Index = params['Index']
        end
      end

      # CreateAttributeLabel请求参数结构体
      class CreateAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param AttributeKey: 属性标识，最大40个英文字符，如style
        # @type AttributeKey: String
        # @param AttributeName: 属性名称，最大80个英文字符，如风格
        # @type AttributeName: String
        # @param Labels: 属性标签信息
        # @type Labels: Array

        attr_accessor :KnowledgeBaseId, :AttributeKey, :AttributeName, :Labels

        def initialize(knowledgebaseid=nil, attributekey=nil, attributename=nil, labels=nil)
          @KnowledgeBaseId = knowledgebaseid
          @AttributeKey = attributekey
          @AttributeName = attributename
          @Labels = labels
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @AttributeKey = params['AttributeKey']
          @AttributeName = params['AttributeName']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              attributelabelitem_tmp = AttributeLabelItem.new
              attributelabelitem_tmp.deserialize(i)
              @Labels << attributelabelitem_tmp
            end
          end
        end
      end

      # CreateAttributeLabel返回参数结构体
      class CreateAttributeLabelResponse < TencentCloud::Common::AbstractModel
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

      # CreateKnowledgeBase请求参数结构体
      class CreateKnowledgeBaseRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateKnowledgeBase返回参数结构体
      class CreateKnowledgeBaseResponse < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KnowledgeBaseId, :RequestId

        def initialize(knowledgebaseid=nil, requestid=nil)
          @KnowledgeBaseId = knowledgebaseid
          @RequestId = requestid
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @RequestId = params['RequestId']
        end
      end

      # CreateQA请求参数结构体
      class CreateQARequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param Question: 问题，最大1000个英文字符
        # @type Question: String
        # @param Answer: 答案，最大4000个英文字符
        # @type Answer: String
        # @param AttributeLabels: 属性标签
        # @type AttributeLabels: Array

        attr_accessor :KnowledgeBaseId, :Question, :Answer, :AttributeLabels

        def initialize(knowledgebaseid=nil, question=nil, answer=nil, attributelabels=nil)
          @KnowledgeBaseId = knowledgebaseid
          @Question = question
          @Answer = answer
          @AttributeLabels = attributelabels
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @Question = params['Question']
          @Answer = params['Answer']
          unless params['AttributeLabels'].nil?
            @AttributeLabels = []
            params['AttributeLabels'].each do |i|
              attributelabelreferitem_tmp = AttributeLabelReferItem.new
              attributelabelreferitem_tmp.deserialize(i)
              @AttributeLabels << attributelabelreferitem_tmp
            end
          end
        end
      end

      # CreateQA返回参数结构体
      class CreateQAResponse < TencentCloud::Common::AbstractModel
        # @param QaId: 问答对ID
        # @type QaId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :QaId, :RequestId

        def initialize(qaid=nil, requestid=nil)
          @QaId = qaid
          @RequestId = requestid
        end

        def deserialize(params)
          @QaId = params['QaId']
          @RequestId = params['RequestId']
        end
      end

      # 创建智能文档解析任务的配置信息
      class CreateReconstructDocumentFlowConfig < TencentCloud::Common::AbstractModel
        # @param TableResultType: Markdown文件中表格返回的形式
        # 0，表格以MD形式返回
        # 1，表格以HTML形式返回
        # 默认为0
        # @type TableResultType: String
        # @param ResultType: 智能文档解析返回结果的格式
        # 0：只返回全文MD；
        # 1：只返回每一页的OCR原始Json；
        # 2：只返回每一页的MD，
        # 3：返回全文MD + 每一页的OCR原始Json；
        # 4：返回全文MD + 每一页的MD，
        # 默认值为0
        # @type ResultType: String
        # @param IgnoreFailedPage: 是否忽略失败页，返回已成功的页数据。默认为true。
        # @type IgnoreFailedPage: Boolean

        attr_accessor :TableResultType, :ResultType, :IgnoreFailedPage

        def initialize(tableresulttype=nil, resulttype=nil, ignorefailedpage=nil)
          @TableResultType = tableresulttype
          @ResultType = resulttype
          @IgnoreFailedPage = ignorefailedpage
        end

        def deserialize(params)
          @TableResultType = params['TableResultType']
          @ResultType = params['ResultType']
          @IgnoreFailedPage = params['IgnoreFailedPage']
        end
      end

      # CreateReconstructDocumentFlow请求参数结构体
      class CreateReconstructDocumentFlowRequest < TencentCloud::Common::AbstractModel
        # @param FileType: 文件类型。**支持的文件类型：**- `WPS、PDF`、`DOC`、`DOCX`、`XLS`、`XLSX`、`PPT`、`PPTX`、`MD`、`TXT`、`PNG`、`JPG`、`JPEG`、`CSV`、`HTML`、`EPUB`、`BMP`、`GIF`、`WEBP`、`HEIC`、`EPS`、`ICNS`、`IM`、`PCX`、`PPM`、`TIFF`、`XBM`、`HEIF`、`JP2`**支持的文件大小：** - `PDF` 最大300M - `WPS`、`DOCX`、`DOC`、`PPT`、`PPTX` 最大 200M - `TXT`、`MD` 最大10M - 其他 最大20M
        # @type FileType: String
        # @param FileUrl: 说明：文件的 URL 地址。
        # 备注：文件存储于腾讯云的 URL 可保障更高的下载速度和稳定性，建议文件存储于腾讯云。 非腾讯云存储的 URL 速度和稳定性可能受一定影响。
        # 参考：[腾讯云COS文档](https://cloud.tencent.com/document/product/436/7749)
        # @type FileUrl: String
        # @param FileBase64: 文件的 Base64 值。
        # 支持的文件类型： PNG、JPG、JPEG、PDF、GIF、BMP、TIFF
        # 支持的文件大小：所下载文件经Base64编码后不超过 8M。文件下载时间不超过 3 秒。
        # 支持的图片像素：单边介于20-10000px之间。
        # 文件的 FileUrl、FileBase64 必须提供一个，如果都提供，只使用 FileUrl。
        # @type FileBase64: String
        # @param FileStartPageNumber: 说明：文档的起始页码。
        # 备注：当传入文件是PDF、PDF、PPT、PPTX、DOC类型时，用来指定识别的起始页码，识别的页码包含当前值。
        # 默认值：无
        # @type FileStartPageNumber: Integer
        # @param FileEndPageNumber: 说明：文档的结束页码。
        # 备注：当传入文件是PDF、PDF、PPT、PPTX、DOC类型时，用来指定识别的结束页码，识别的页码包含当前值。
        # 默认值：无
        # @type FileEndPageNumber: Integer
        # @param Config: 说明：创建文档解析任务配置信息。
        # 备注：可设置结果的返回格式
        # 默认值：无
        # @type Config: :class:`Tencentcloud::Lkeap.v20240522.models.CreateReconstructDocumentFlowConfig`

        attr_accessor :FileType, :FileUrl, :FileBase64, :FileStartPageNumber, :FileEndPageNumber, :Config

        def initialize(filetype=nil, fileurl=nil, filebase64=nil, filestartpagenumber=nil, fileendpagenumber=nil, config=nil)
          @FileType = filetype
          @FileUrl = fileurl
          @FileBase64 = filebase64
          @FileStartPageNumber = filestartpagenumber
          @FileEndPageNumber = fileendpagenumber
          @Config = config
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          @FileBase64 = params['FileBase64']
          @FileStartPageNumber = params['FileStartPageNumber']
          @FileEndPageNumber = params['FileEndPageNumber']
          unless params['Config'].nil?
            @Config = CreateReconstructDocumentFlowConfig.new
            @Config.deserialize(params['Config'])
          end
        end
      end

      # CreateReconstructDocumentFlow返回参数结构体
      class CreateReconstructDocumentFlowResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一id。30天内可以通过GetReconstructDocumentResult接口查询TaskId对应的处理结果。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 创建智能文档拆分任务的配置信息
      class CreateSplitDocumentFlowConfig < TencentCloud::Common::AbstractModel
        # @param TableResultType: Markdown文件中表格返回的形式
        # 0，表格以MD形式返回
        # 1，表格以HTML形式返回
        # 默认为
        # @type TableResultType: String
        # @param ResultType: 智能文档解析返回结果的格式
        # 0：只返回全文MD；
        # 1：只返回每一页的OCR原始Json；
        # 2：只返回每一页的MD，
        # 3：返回全文MD + 每一页的OCR原始Json；
        # 4：返回全文MD + 每一页的MD，
        # 默认值为3（返回全文MD + 每一页的OCR原始Json）

        # @type ResultType: String
        # @param EnableMllm: 是否开启mllm
        # @type EnableMllm: Boolean
        # @param MaxChunkSize: 最大分片长度
        # @type MaxChunkSize: Integer
        # @param IgnoreFailedPage: 是否忽略返回失败页码
        # @type IgnoreFailedPage: Boolean

        attr_accessor :TableResultType, :ResultType, :EnableMllm, :MaxChunkSize, :IgnoreFailedPage
        extend Gem::Deprecate
        deprecate :TableResultType, :none, 2025, 7
        deprecate :TableResultType=, :none, 2025, 7
        deprecate :ResultType, :none, 2025, 7
        deprecate :ResultType=, :none, 2025, 7

        def initialize(tableresulttype=nil, resulttype=nil, enablemllm=nil, maxchunksize=nil, ignorefailedpage=nil)
          @TableResultType = tableresulttype
          @ResultType = resulttype
          @EnableMllm = enablemllm
          @MaxChunkSize = maxchunksize
          @IgnoreFailedPage = ignorefailedpage
        end

        def deserialize(params)
          @TableResultType = params['TableResultType']
          @ResultType = params['ResultType']
          @EnableMllm = params['EnableMllm']
          @MaxChunkSize = params['MaxChunkSize']
          @IgnoreFailedPage = params['IgnoreFailedPage']
        end
      end

      # CreateSplitDocumentFlow请求参数结构体
      class CreateSplitDocumentFlowRequest < TencentCloud::Common::AbstractModel
        # @param FileType: 文件类型。**支持的文件类型：**- `WPS`、`PDF`、`DOC`、`DOCX`、`XLS`、`XLSX`、`PPT`、`PPTX`、`MD`、`TXT`、`PNG`、`JPG`、`JPEG`、`CSV`、`HTML`、`EPUB`**支持的文件大小：** - `PDF` 最大300M - `WPS`、`DOCX`、`DOC`、`PPT`、`PPTX` 最大 200M - `TXT`、`MD` 最大10M - 其他 最大20M
        # @type FileType: String
        # @param FileUrl: 文件的 URL 地址。
        # 文件存储于腾讯云的 URL 可保障更高的下载速度和稳定性，建议文件存储于腾讯云。 非腾讯云存储的 URL 速度和稳定性可能受一定影响。
        # 参考：[腾讯云COS文档](https://cloud.tencent.com/document/product/436/7749)
        # @type FileUrl: String
        # @param FileName: 文件名，可选。
        # **需带文件类型后缀**，当文件名无法从传入的`FileUrl`获取时需要通过该字段来明确。
        # @type FileName: String
        # @param FileBase64: 文件的 Base64 值。
        # 支持的文件大小：所下载文件经Base64编码后不超过 8M。文件下载时间不超过 3 秒。
        # 支持的图片像素：单边介于20-10000px之间。
        # 文件的 FileUrl、FileBase64 必须提供一个，如果都提供，只使用 FileUrl。
        # @type FileBase64: String
        # @param FileStartPageNumber: 文档的起始页码。
        # 当传入文件是PDF、PDF、PPT、PPTX、DOC类型时，用来指定识别的起始页码，识别的页码包含当前值。
        # @type FileStartPageNumber: Integer
        # @param FileEndPageNumber: 文档的结束页码。
        # 当传入文件是PDF、PDF、PPT、PPTX、DOC类型时，用来指定识别的结束页码，识别的页码包含当前值。
        # @type FileEndPageNumber: Integer
        # @param Config: 文档拆分任务的配置信息。
        # @type Config: :class:`Tencentcloud::Lkeap.v20240522.models.CreateSplitDocumentFlowConfig`

        attr_accessor :FileType, :FileUrl, :FileName, :FileBase64, :FileStartPageNumber, :FileEndPageNumber, :Config
        extend Gem::Deprecate
        deprecate :FileBase64, :none, 2025, 7
        deprecate :FileBase64=, :none, 2025, 7

        def initialize(filetype=nil, fileurl=nil, filename=nil, filebase64=nil, filestartpagenumber=nil, fileendpagenumber=nil, config=nil)
          @FileType = filetype
          @FileUrl = fileurl
          @FileName = filename
          @FileBase64 = filebase64
          @FileStartPageNumber = filestartpagenumber
          @FileEndPageNumber = fileendpagenumber
          @Config = config
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          @FileName = params['FileName']
          @FileBase64 = params['FileBase64']
          @FileStartPageNumber = params['FileStartPageNumber']
          @FileEndPageNumber = params['FileEndPageNumber']
          unless params['Config'].nil?
            @Config = CreateSplitDocumentFlowConfig.new
            @Config.deserialize(params['Config'])
          end
        end
      end

      # CreateSplitDocumentFlow返回参数结构体
      class CreateSplitDocumentFlowResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 拆分任务唯一ID。
        # 30天内可以通过`GetSplitDocumentResult`接口查询TaskId对应的拆分结果。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteAttributeLabels请求参数结构体
      class DeleteAttributeLabelsRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param AttributeIds: 属性ID
        # @type AttributeIds: Array

        attr_accessor :KnowledgeBaseId, :AttributeIds

        def initialize(knowledgebaseid=nil, attributeids=nil)
          @KnowledgeBaseId = knowledgebaseid
          @AttributeIds = attributeids
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @AttributeIds = params['AttributeIds']
        end
      end

      # DeleteAttributeLabels返回参数结构体
      class DeleteAttributeLabelsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDocs请求参数结构体
      class DeleteDocsRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param DocIds: 文档ID列表。支持批量删除，数量不超过100
        # @type DocIds: Array

        attr_accessor :KnowledgeBaseId, :DocIds

        def initialize(knowledgebaseid=nil, docids=nil)
          @KnowledgeBaseId = knowledgebaseid
          @DocIds = docids
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @DocIds = params['DocIds']
        end
      end

      # DeleteDocs返回参数结构体
      class DeleteDocsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteKnowledgeBase请求参数结构体
      class DeleteKnowledgeBaseRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String

        attr_accessor :KnowledgeBaseId

        def initialize(knowledgebaseid=nil)
          @KnowledgeBaseId = knowledgebaseid
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
        end
      end

      # DeleteKnowledgeBase返回参数结构体
      class DeleteKnowledgeBaseResponse < TencentCloud::Common::AbstractModel
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

      # DeleteQAs请求参数结构体
      class DeleteQAsRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param QaIds: 问答对ID列表。支持批量删除，数量不超过100
        # @type QaIds: Array

        attr_accessor :KnowledgeBaseId, :QaIds

        def initialize(knowledgebaseid=nil, qaids=nil)
          @KnowledgeBaseId = knowledgebaseid
          @QaIds = qaids
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @QaIds = params['QaIds']
        end
      end

      # DeleteQAs返回参数结构体
      class DeleteQAsResponse < TencentCloud::Common::AbstractModel
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

      # 返回的内容
      class Delta < TencentCloud::Common::AbstractModel
        # @param Role: 角色名称。
        # @type Role: String
        # @param Content: 内容详情。
        # @type Content: String
        # @param ReasoningContent: 思维链内容。 ReasoningConent参数仅支持出参，且只有deepseek-r1模型会返回。
        # @type ReasoningContent: String

        attr_accessor :Role, :Content, :ReasoningContent

        def initialize(role=nil, content=nil, reasoningcontent=nil)
          @Role = role
          @Content = content
          @ReasoningContent = reasoningcontent
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          @ReasoningContent = params['ReasoningContent']
        end
      end

      # DescribeDoc请求参数结构体
      class DescribeDocRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param DocId: 文档ID
        # @type DocId: String

        attr_accessor :KnowledgeBaseId, :DocId

        def initialize(knowledgebaseid=nil, docid=nil)
          @KnowledgeBaseId = knowledgebaseid
          @DocId = docid
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @DocId = params['DocId']
        end
      end

      # DescribeDoc返回参数结构体
      class DescribeDocResponse < TencentCloud::Common::AbstractModel
        # @param DocId: 文档ID
        # @type DocId: String
        # @param Status: 状态，

        # - Uploading  上传中
        # - Auditing 审核中
        # - Parsing 解析中
        # - ParseFailed 解析失败
        # - Indexing 创建索引中
        # - IndexFailed 创建索引失败
        # - Success  发布成功
        # - Failed  失败
        # @type Status: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param AttributeLabels: 属性标签
        # @type AttributeLabels: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocId, :Status, :FileName, :UpdateTime, :AttributeLabels, :RequestId

        def initialize(docid=nil, status=nil, filename=nil, updatetime=nil, attributelabels=nil, requestid=nil)
          @DocId = docid
          @Status = status
          @FileName = filename
          @UpdateTime = updatetime
          @AttributeLabels = attributelabels
          @RequestId = requestid
        end

        def deserialize(params)
          @DocId = params['DocId']
          @Status = params['Status']
          @FileName = params['FileName']
          @UpdateTime = params['UpdateTime']
          unless params['AttributeLabels'].nil?
            @AttributeLabels = []
            params['AttributeLabels'].each do |i|
              attributelabelreferitem_tmp = AttributeLabelReferItem.new
              attributelabelreferitem_tmp.deserialize(i)
              @AttributeLabels << attributelabelreferitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 离线文档列表回包
      class DocItem < TencentCloud::Common::AbstractModel
        # @param DocId: 文档id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DocId: String
        # @param Status:  状态，
        # - Uploading  上传中
        # - Auditing 审核中
        # - Parsing 解析中
        # - ParseFailed 解析失败
        # - Indexing 创建索引中
        # - IndexFailed 创建索引失败
        # - Success  发布成功
        # - Failed  失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param FileName: 文件名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileName: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String
        # @param AttributeLabels: 属性标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttributeLabels: Array

        attr_accessor :DocId, :Status, :FileName, :UpdateTime, :AttributeLabels

        def initialize(docid=nil, status=nil, filename=nil, updatetime=nil, attributelabels=nil)
          @DocId = docid
          @Status = status
          @FileName = filename
          @UpdateTime = updatetime
          @AttributeLabels = attributelabels
        end

        def deserialize(params)
          @DocId = params['DocId']
          @Status = params['Status']
          @FileName = params['FileName']
          @UpdateTime = params['UpdateTime']
          unless params['AttributeLabels'].nil?
            @AttributeLabels = []
            params['AttributeLabels'].each do |i|
              attributelabelreferitem_tmp = AttributeLabelReferItem.new
              attributelabelreferitem_tmp.deserialize(i)
              @AttributeLabels << attributelabelreferitem_tmp
            end
          end
        end
      end

      # 文档拆分任务的用量
      class DocumentUsage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 文档拆分任务的页数
        # @type PageNumber: Integer
        # @param TotalToken: 文档拆分任务消耗的总token数
        # @type TotalToken: Integer
        # @param TotalTokens: 文档拆分任务消耗的总token数
        # @type TotalTokens: Integer
        # @param SplitTokens: 拆分消耗的token数
        # @type SplitTokens: Integer
        # @param MllmTokens: mllm消耗的token数
        # @type MllmTokens: Integer
        # @param SuccessPageNum: 解析成功页数
        # @type SuccessPageNum: Integer
        # @param FailPageNum: 解析失败页数
        # @type FailPageNum: Integer

        attr_accessor :PageNumber, :TotalToken, :TotalTokens, :SplitTokens, :MllmTokens, :SuccessPageNum, :FailPageNum
        extend Gem::Deprecate
        deprecate :TotalToken, :none, 2025, 7
        deprecate :TotalToken=, :none, 2025, 7

        def initialize(pagenumber=nil, totaltoken=nil, totaltokens=nil, splittokens=nil, mllmtokens=nil, successpagenum=nil, failpagenum=nil)
          @PageNumber = pagenumber
          @TotalToken = totaltoken
          @TotalTokens = totaltokens
          @SplitTokens = splittokens
          @MllmTokens = mllmtokens
          @SuccessPageNum = successpagenum
          @FailPageNum = failpagenum
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @TotalToken = params['TotalToken']
          @TotalTokens = params['TotalTokens']
          @SplitTokens = params['SplitTokens']
          @MllmTokens = params['MllmTokens']
          @SuccessPageNum = params['SuccessPageNum']
          @FailPageNum = params['FailPageNum']
        end
      end

      # 向量
      class EmbeddingObject < TencentCloud::Common::AbstractModel
        # @param Embedding: 向量
        # @type Embedding: Array

        attr_accessor :Embedding

        def initialize(embedding=nil)
          @Embedding = embedding
        end

        def deserialize(params)
          @Embedding = params['Embedding']
        end
      end

      # GetCharacterUsage请求参数结构体
      class GetCharacterUsageRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetCharacterUsage返回参数结构体
      class GetCharacterUsageResponse < TencentCloud::Common::AbstractModel
        # @param Used: 已用字符数
        # @type Used: Integer
        # @param Total: 可用字符数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Used, :Total, :RequestId

        def initialize(used=nil, total=nil, requestid=nil)
          @Used = used
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          @Used = params['Used']
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # GetEmbedding请求参数结构体
      class GetEmbeddingRequest < TencentCloud::Common::AbstractModel
        # @param Model: 说明：选择生成向量的模型
        # 备注：仅一个模型可选
        # @type Model: String
        # @param Inputs: 说明：需要 embedding 的文本
        # 备注：单条query最多2000个字符，总条数最多7条
        # @type Inputs: Array

        attr_accessor :Model, :Inputs

        def initialize(model=nil, inputs=nil)
          @Model = model
          @Inputs = inputs
        end

        def deserialize(params)
          @Model = params['Model']
          @Inputs = params['Inputs']
        end
      end

      # GetEmbedding返回参数结构体
      class GetEmbeddingResponse < TencentCloud::Common::AbstractModel
        # @param Data: 特征
        # @type Data: Array
        # @param Usage: 消耗量，返回TotalToken
        # @type Usage: :class:`Tencentcloud::Lkeap.v20240522.models.Usage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :Usage, :RequestId

        def initialize(data=nil, usage=nil, requestid=nil)
          @Data = data
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              embeddingobject_tmp = EmbeddingObject.new
              embeddingobject_tmp.deserialize(i)
              @Data << embeddingobject_tmp
            end
          end
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetReconstructDocumentResult请求参数结构体
      class GetReconstructDocumentResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 说明：解析任务ID
        # 备注：仅支持单个任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # GetReconstructDocumentResult返回参数结构体
      class GetReconstructDocumentResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。
        # - `Success`：执行完成
        # - `Processing`：执行中
        # -  `Pause`: 暂停
        # -  `Failed`：执行失败
        # -  `WaitExecute`：等待执行
        # @type Status: String
        # @param DocumentRecognizeResultUrl: 解析结果的临时下载地址。文件类型为zip压缩包，下载链接有效期30分钟
        # @type DocumentRecognizeResultUrl: String
        # @param FailedPages: 文档解析失败的页码
        # @type FailedPages: Array
        # @param Usage: 文档拆分任务的用量
        # @type Usage: :class:`Tencentcloud::Lkeap.v20240522.models.DocumentUsage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :DocumentRecognizeResultUrl, :FailedPages, :Usage, :RequestId

        def initialize(status=nil, documentrecognizeresulturl=nil, failedpages=nil, usage=nil, requestid=nil)
          @Status = status
          @DocumentRecognizeResultUrl = documentrecognizeresulturl
          @FailedPages = failedpages
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @DocumentRecognizeResultUrl = params['DocumentRecognizeResultUrl']
          unless params['FailedPages'].nil?
            @FailedPages = []
            params['FailedPages'].each do |i|
              reconstructdocumentfailedpage_tmp = ReconstructDocumentFailedPage.new
              reconstructdocumentfailedpage_tmp.deserialize(i)
              @FailedPages << reconstructdocumentfailedpage_tmp
            end
          end
          unless params['Usage'].nil?
            @Usage = DocumentUsage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetSplitDocumentResult请求参数结构体
      class GetSplitDocumentResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 拆分任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # GetSplitDocumentResult返回参数结构体
      class GetSplitDocumentResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。

        # - `Success`：执行完成
        # - `Processing`：执行中
        # - `Pause`: 暂停
        # - `Failed`：执行失败
        # - `WaitExecute`：等待执行
        # @type Status: String
        # @param DocumentRecognizeResultUrl: 拆分结果的临时下载地址。
        # 文件类型为zip压缩包，下载链接有效期30分钟。
        # 压缩包内包含\*.md、\*.jsonl、\*mllm.json以及images文件夹。

        # > **jsonl** 结构说明：
        # - `page_content`:
        #  用于生成嵌入（embedding）库，以便于检索使用。该字段中的图片将使用占位符替换。
        # - `org_data`:
        #  表示与 page_content 对应的最小语义完整性块，用于问答模型的处理。
        # - `big_data`:
        #  表示与 page_content 对应的最大语义完整性块，也用于问答模型的处理。
        # @type DocumentRecognizeResultUrl: String
        # @param FailedPages: 文档拆分失败的页码
        # @type FailedPages: Array
        # @param Usage: 文档拆分任务的用量
        # @type Usage: :class:`Tencentcloud::Lkeap.v20240522.models.DocumentUsage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :DocumentRecognizeResultUrl, :FailedPages, :Usage, :RequestId
        extend Gem::Deprecate
        deprecate :FailedPages, :none, 2025, 7
        deprecate :FailedPages=, :none, 2025, 7

        def initialize(status=nil, documentrecognizeresulturl=nil, failedpages=nil, usage=nil, requestid=nil)
          @Status = status
          @DocumentRecognizeResultUrl = documentrecognizeresulturl
          @FailedPages = failedpages
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @DocumentRecognizeResultUrl = params['DocumentRecognizeResultUrl']
          unless params['FailedPages'].nil?
            @FailedPages = []
            params['FailedPages'].each do |i|
              splitdocumentfailedpage_tmp = SplitDocumentFailedPage.new
              splitdocumentfailedpage_tmp.deserialize(i)
              @FailedPages << splitdocumentfailedpage_tmp
            end
          end
          unless params['Usage'].nil?
            @Usage = DocumentUsage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ImportQAs请求参数结构体
      class ImportQAsRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param FileName: 文件名
        # @type FileName: String
        # @param FileUrl: 文件的 Url 地址。文件存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议文件存储于腾讯云。 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        # 导入模板：https://cdn.xiaowei.qq.com/lke/assets//static/批量导入问答模板v6.xlsx
        # @type FileUrl: String
        # @param FileType: 文件类型，仅支持XLSX格式，请使用模板
        # @type FileType: String

        attr_accessor :KnowledgeBaseId, :FileName, :FileUrl, :FileType

        def initialize(knowledgebaseid=nil, filename=nil, fileurl=nil, filetype=nil)
          @KnowledgeBaseId = knowledgebaseid
          @FileName = filename
          @FileUrl = fileurl
          @FileType = filetype
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @FileName = params['FileName']
          @FileUrl = params['FileUrl']
          @FileType = params['FileType']
        end
      end

      # ImportQAs返回参数结构体
      class ImportQAsResponse < TencentCloud::Common::AbstractModel
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

      # 属性标签
      class LabelItem < TencentCloud::Common::AbstractModel
        # @param Name: 属性key
        # @type Name: String
        # @param Values: 标签值
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # ListAttributeLabels请求参数结构体
      class ListAttributeLabelsRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 每页数目，最大50，默认20
        # @type PageSize: Integer

        attr_accessor :KnowledgeBaseId, :PageNumber, :PageSize

        def initialize(knowledgebaseid=nil, pagenumber=nil, pagesize=nil)
          @KnowledgeBaseId = knowledgebaseid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListAttributeLabels返回参数结构体
      class ListAttributeLabelsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 属性总数
        # @type TotalCount: Integer
        # @param List: 属性标签列表
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId

        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              attributeitem_tmp = AttributeItem.new
              attributeitem_tmp.deserialize(i)
              @List << attributeitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListDocs请求参数结构体
      class ListDocsRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 每页数目，最大50，默认20
        # @type PageSize: Integer

        attr_accessor :KnowledgeBaseId, :PageNumber, :PageSize

        def initialize(knowledgebaseid=nil, pagenumber=nil, pagesize=nil)
          @KnowledgeBaseId = knowledgebaseid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListDocs返回参数结构体
      class ListDocsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 文档总数
        # @type TotalCount: Integer
        # @param List: 文档信息
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId

        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              docitem_tmp = DocItem.new
              docitem_tmp.deserialize(i)
              @List << docitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # ListQAs请求参数结构体
      class ListQAsRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param PageNumber: 页码，默认1
        # @type PageNumber: Integer
        # @param PageSize: 每页数目，最大50，默认20
        # @type PageSize: Integer

        attr_accessor :KnowledgeBaseId, :PageNumber, :PageSize

        def initialize(knowledgebaseid=nil, pagenumber=nil, pagesize=nil)
          @KnowledgeBaseId = knowledgebaseid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # ListQAs返回参数结构体
      class ListQAsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 问答对总数量
        # @type TotalCount: Integer
        # @param List: 问答对信息
        # @type List: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :List, :RequestId

        def initialize(totalcount=nil, list=nil, requestid=nil)
          @TotalCount = totalcount
          @List = list
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              qaitem_tmp = QaItem.new
              qaitem_tmp.deserialize(i)
              @List << qaitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 会话内容
      class Message < TencentCloud::Common::AbstractModel
        # @param Role: 角色
        # @type Role: String
        # @param Content: 内容
        # @type Content: String
        # @param ReasoningContent: 思维链内容。
        # ReasoningConent参数仅支持出参，且只有deepseek-r1模型会返回。
        # @type ReasoningContent: String
        # @param SearchResults: 搜索结果
        # @type SearchResults: Array

        attr_accessor :Role, :Content, :ReasoningContent, :SearchResults

        def initialize(role=nil, content=nil, reasoningcontent=nil, searchresults=nil)
          @Role = role
          @Content = content
          @ReasoningContent = reasoningcontent
          @SearchResults = searchresults
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          @ReasoningContent = params['ReasoningContent']
          unless params['SearchResults'].nil?
            @SearchResults = []
            params['SearchResults'].each do |i|
              searchresult_tmp = SearchResult.new
              searchresult_tmp.deserialize(i)
              @SearchResults << searchresult_tmp
            end
          end
        end
      end

      # ModifyAttributeLabel请求参数结构体
      class ModifyAttributeLabelRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param AttributeId: 属性ID
        # @type AttributeId: String
        # @param AttributeKey: 属性标识，最大40个英文字符，如style
        # @type AttributeKey: String
        # @param AttributeName: 属性名称，最大80个英文字符，如风格
        # @type AttributeName: String
        # @param Labels: 属性标签
        # @type Labels: Array

        attr_accessor :KnowledgeBaseId, :AttributeId, :AttributeKey, :AttributeName, :Labels

        def initialize(knowledgebaseid=nil, attributeid=nil, attributekey=nil, attributename=nil, labels=nil)
          @KnowledgeBaseId = knowledgebaseid
          @AttributeId = attributeid
          @AttributeKey = attributekey
          @AttributeName = attributename
          @Labels = labels
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @AttributeId = params['AttributeId']
          @AttributeKey = params['AttributeKey']
          @AttributeName = params['AttributeName']
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              attributelabelitem_tmp = AttributeLabelItem.new
              attributelabelitem_tmp.deserialize(i)
              @Labels << attributelabelitem_tmp
            end
          end
        end
      end

      # ModifyAttributeLabel返回参数结构体
      class ModifyAttributeLabelResponse < TencentCloud::Common::AbstractModel
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

      # ModifyQA请求参数结构体
      class ModifyQARequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param QaId: 问答对ID
        # @type QaId: String
        # @param Question: 问题，最大1000个英文字符
        # @type Question: String
        # @param Answer: 答案，最大4000个英文字符
        # @type Answer: String
        # @param AttributeLabels: 属性标签
        # @type AttributeLabels: Array

        attr_accessor :KnowledgeBaseId, :QaId, :Question, :Answer, :AttributeLabels

        def initialize(knowledgebaseid=nil, qaid=nil, question=nil, answer=nil, attributelabels=nil)
          @KnowledgeBaseId = knowledgebaseid
          @QaId = qaid
          @Question = question
          @Answer = answer
          @AttributeLabels = attributelabels
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @QaId = params['QaId']
          @Question = params['Question']
          @Answer = params['Answer']
          unless params['AttributeLabels'].nil?
            @AttributeLabels = []
            params['AttributeLabels'].each do |i|
              attributelabelreferitem_tmp = AttributeLabelReferItem.new
              attributelabelreferitem_tmp.deserialize(i)
              @AttributeLabels << attributelabelreferitem_tmp
            end
          end
        end
      end

      # ModifyQA返回参数结构体
      class ModifyQAResponse < TencentCloud::Common::AbstractModel
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

      # 问答对信息
      class QaItem < TencentCloud::Common::AbstractModel
        # @param QaId: 问答id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QaId: String
        # @param Question: 问题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param Answer: 答案
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Answer: String
        # @param AttributeLabels: 属性标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AttributeLabels: Array
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateTime: String

        attr_accessor :QaId, :Question, :Answer, :AttributeLabels, :CreateTime, :UpdateTime

        def initialize(qaid=nil, question=nil, answer=nil, attributelabels=nil, createtime=nil, updatetime=nil)
          @QaId = qaid
          @Question = question
          @Answer = answer
          @AttributeLabels = attributelabels
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @QaId = params['QaId']
          @Question = params['Question']
          @Answer = params['Answer']
          unless params['AttributeLabels'].nil?
            @AttributeLabels = []
            params['AttributeLabels'].each do |i|
              attributelabelreferitem_tmp = AttributeLabelReferItem.new
              attributelabelreferitem_tmp.deserialize(i)
              @AttributeLabels << attributelabelreferitem_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # QueryRewrite请求参数结构体
      class QueryRewriteRequest < TencentCloud::Common::AbstractModel
        # @param Messages: 需要改写的多轮历史会话，每轮历史对话需要包含user（问）和assistant（答）成对输入，由于模型字符限制，最多提供4轮对话。针对最后一轮对话进行改写
        # @type Messages: Array
        # @param Model: 模型名称
        # @type Model: String

        attr_accessor :Messages, :Model

        def initialize(messages=nil, model=nil)
          @Messages = messages
          @Model = model
        end

        def deserialize(params)
          unless params['Messages'].nil?
            @Messages = []
            params['Messages'].each do |i|
              message_tmp = Message.new
              message_tmp.deserialize(i)
              @Messages << message_tmp
            end
          end
          @Model = params['Model']
        end
      end

      # QueryRewrite返回参数结构体
      class QueryRewriteResponse < TencentCloud::Common::AbstractModel
        # @param Content: 改写结果
        # @type Content: String
        # @param Usage: 消耗量，返回输入token数，输出token数以及总token数
        # @type Usage: :class:`Tencentcloud::Lkeap.v20240522.models.Usage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :Usage, :RequestId

        def initialize(content=nil, usage=nil, requestid=nil)
          @Content = content
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 文档解析失败记录
      class ReconstructDocumentFailedPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 失败页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer

        attr_accessor :PageNumber

        def initialize(pagenumber=nil)
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
        end
      end

      # ReconstructDocumentSSE 功能配置参数
      class ReconstructDocumentSSEConfig < TencentCloud::Common::AbstractModel
        # @param TableResultType: Markdown文件中表格返回的形式
        # 0，表格以MD形式返回
        # 1，表格以HTML形式返回
        # 默认为0
        # @type TableResultType: String
        # @param MarkdownImageResponseType: Markdown文件中图片返回的形式
        # 0:markdown中图片以链接形式返回
        # 1:markdown中图片只返回图片中提取的文本内容
        # 默认是0
        # @type MarkdownImageResponseType: String
        # @param ReturnPageFormat: Markdown文件中是否包含页码信息
        # @type ReturnPageFormat: Boolean
        # @param PageFormat: 自定义输出页码样式,{{p}}为页码占位符，开启ReturnPageFormat生效。未填默认样式:<page_num>page {{p}}</page_num>
        # @type PageFormat: String
        # @param IgnoreFailedPage: 是否忽略失败页，返回已成功的页数据
        # @type IgnoreFailedPage: Boolean

        attr_accessor :TableResultType, :MarkdownImageResponseType, :ReturnPageFormat, :PageFormat, :IgnoreFailedPage

        def initialize(tableresulttype=nil, markdownimageresponsetype=nil, returnpageformat=nil, pageformat=nil, ignorefailedpage=nil)
          @TableResultType = tableresulttype
          @MarkdownImageResponseType = markdownimageresponsetype
          @ReturnPageFormat = returnpageformat
          @PageFormat = pageformat
          @IgnoreFailedPage = ignorefailedpage
        end

        def deserialize(params)
          @TableResultType = params['TableResultType']
          @MarkdownImageResponseType = params['MarkdownImageResponseType']
          @ReturnPageFormat = params['ReturnPageFormat']
          @PageFormat = params['PageFormat']
          @IgnoreFailedPage = params['IgnoreFailedPage']
        end
      end

      # ReconstructDocumentSSE请求参数结构体
      class ReconstructDocumentSSERequest < TencentCloud::Common::AbstractModel
        # @param FileType: 支持解析的文件类型。**支持的文件类型**：WPS、PDF、DOC、DOCX、PPT、PPTX、MD、TXT、XLS、XLSX、CSV、PNG、JPG、JPEG、BMP、GIF、WEBP、HEIC、EPS、ICNS、IM、PCX、PPM、TIFF、XBM、HEIF、JP2**支持的文件大小**：- WPS、PDF、DOC、DOCX、PPT、PPTX 支持100M- MD、TXT、XLS、XLSX、CSV 支持10M- 其他支持20M
        # @type FileType: String
        # @param FileUrl: 文件的 URL 地址。文件存储于腾讯云的 URL 可保障更高的下载速度和稳定性，建议文件存储于腾讯云。 非腾讯云存储的 URL 速度和稳定性可能受一定影响。文件的 FileUrl、FileBase64 必须提供一个，如果都提供，只使用 FileUrl。
        # 参考：[腾讯云COS文档](https://cloud.tencent.com/document/product/436/7749)

        # 默认值：无
        # @type FileUrl: String
        # @param FileBase64: 说明：文件的 Base64 值。
        # 备注：支持的文件大小：所下载文件经Base64编码后不超过 8M。文件下载时间不超过 3 秒。
        # 支持的图片像素：单边介于20-10000px之间。文件的 FileUrl、FileBase64 必须提供一个，如果都提供，只使用 FileUrl。

        # 默认值：无
        # @type FileBase64: String
        # @param FileStartPageNumber: 说明：文档的起始页码。
        # 备注：当传入文件是PDF、PDF、PPT、PPTX、DOC类型时，用来指定识别的起始页码，识别的页码包含当前值。
        # 默认值：无
        # @type FileStartPageNumber: Integer
        # @param FileEndPageNumber: 说明：文档的结束页码。
        # 备注：当传入文件是PDF、PDF、PPT、PPTX、DOC类型时，用来指定识别的结束页码，识别的页码包含当前值。
        # 默认值：无
        # @type FileEndPageNumber: Integer
        # @param Config: 说明：文档解析配置信息
        # 备注：可设置返回markdown结果的格式
        # 默认值：无
        # @type Config: :class:`Tencentcloud::Lkeap.v20240522.models.ReconstructDocumentSSEConfig`

        attr_accessor :FileType, :FileUrl, :FileBase64, :FileStartPageNumber, :FileEndPageNumber, :Config

        def initialize(filetype=nil, fileurl=nil, filebase64=nil, filestartpagenumber=nil, fileendpagenumber=nil, config=nil)
          @FileType = filetype
          @FileUrl = fileurl
          @FileBase64 = filebase64
          @FileStartPageNumber = filestartpagenumber
          @FileEndPageNumber = fileendpagenumber
          @Config = config
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          @FileBase64 = params['FileBase64']
          @FileStartPageNumber = params['FileStartPageNumber']
          @FileEndPageNumber = params['FileEndPageNumber']
          unless params['Config'].nil?
            @Config = ReconstructDocumentSSEConfig.new
            @Config.deserialize(params['Config'])
          end
        end
      end

      # ReconstructDocumentSSE返回参数结构体
      class ReconstructDocumentSSEResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。本次请求的唯一标识
        # @type TaskId: String
        # @param ResponseType: 响应类型。1：返回进度信息， 2：返回解析结果
        # @type ResponseType: String
        # @param Progress: 进度。0~100
        # @type Progress: String
        # @param ProgressMessage: 进度信息。
        # @type ProgressMessage: String
        # @param DocumentRecognizeResultUrl: 文档解析结果的临时下载地址。文件类型为zip压缩包，下载链接有效期30分钟。压缩包内包含*.md、*.json以及images文件夹。
        # @type DocumentRecognizeResultUrl: String
        # @param FailedPages: 文档解析失败的页码。
        # @type FailedPages: Array
        # @param FailPageNum: 文档解析失败页数
        # @type FailPageNum: Integer
        # @param SuccessPageNum: 文档解析成功页数
        # @type SuccessPageNum: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :TaskId, :ResponseType, :Progress, :ProgressMessage, :DocumentRecognizeResultUrl, :FailedPages, :FailPageNum, :SuccessPageNum, :RequestId

        def initialize(taskid=nil, responsetype=nil, progress=nil, progressmessage=nil, documentrecognizeresulturl=nil, failedpages=nil, failpagenum=nil, successpagenum=nil, requestid=nil)
          @TaskId = taskid
          @ResponseType = responsetype
          @Progress = progress
          @ProgressMessage = progressmessage
          @DocumentRecognizeResultUrl = documentrecognizeresulturl
          @FailedPages = failedpages
          @FailPageNum = failpagenum
          @SuccessPageNum = successpagenum
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ResponseType = params['ResponseType']
          @Progress = params['Progress']
          @ProgressMessage = params['ProgressMessage']
          @DocumentRecognizeResultUrl = params['DocumentRecognizeResultUrl']
          unless params['FailedPages'].nil?
            @FailedPages = []
            params['FailedPages'].each do |i|
              reconstructdocumentfailedpage_tmp = ReconstructDocumentFailedPage.new
              reconstructdocumentfailedpage_tmp.deserialize(i)
              @FailedPages << reconstructdocumentfailedpage_tmp
            end
          end
          @FailPageNum = params['FailPageNum']
          @SuccessPageNum = params['SuccessPageNum']
          @RequestId = params['RequestId']
        end
      end

      # 检索的结果
      class RetrievalRecord < TencentCloud::Common::AbstractModel
        # @param Metadata: 检索结果的元数据
        # @type Metadata: :class:`Tencentcloud::Lkeap.v20240522.models.RetrievalRecordMetadata`
        # @param Title: 检索到的标题
        # @type Title: String
        # @param Content: 检索到的内容
        # @type Content: String

        attr_accessor :Metadata, :Title, :Content

        def initialize(metadata=nil, title=nil, content=nil)
          @Metadata = metadata
          @Title = title
          @Content = content
        end

        def deserialize(params)
          unless params['Metadata'].nil?
            @Metadata = RetrievalRecordMetadata.new
            @Metadata.deserialize(params['Metadata'])
          end
          @Title = params['Title']
          @Content = params['Content']
        end
      end

      # 检索结果的元数据
      class RetrievalRecordMetadata < TencentCloud::Common::AbstractModel
        # @param Type: 结果的类型。
        # - `DOC`：文档
        # - `QA`：问答对
        # @type Type: String
        # @param ResultSource: 检索结果的来源。
        # - `SEMANTIC`：从语义检索中得到的结果
        # - `FULL_TEXT`：从全文检索中得到的结果
        # @type ResultSource: String
        # @param ChunkPageNumbers: 切片在文档中的页码，仅部分文档支持
        # @type ChunkPageNumbers: Array

        attr_accessor :Type, :ResultSource, :ChunkPageNumbers

        def initialize(type=nil, resultsource=nil, chunkpagenumbers=nil)
          @Type = type
          @ResultSource = resultsource
          @ChunkPageNumbers = chunkpagenumbers
        end

        def deserialize(params)
          @Type = params['Type']
          @ResultSource = params['ResultSource']
          @ChunkPageNumbers = params['ChunkPageNumbers']
        end
      end

      # 检索参数设置
      class RetrievalSetting < TencentCloud::Common::AbstractModel
        # @param Type: 检索的类型，不填该参数则检索全部。
        # - `DOC`：文档
        # - `QA`：QA

        # 仅RetrieveKnowledge接口支持该参数
        # @type Type: String
        # @param TopK: 返回个数
        # @type TopK: Integer
        # @param ScoreThreshold: 分数过滤
        # @type ScoreThreshold: Float

        attr_accessor :Type, :TopK, :ScoreThreshold

        def initialize(type=nil, topk=nil, scorethreshold=nil)
          @Type = type
          @TopK = topk
          @ScoreThreshold = scorethreshold
        end

        def deserialize(params)
          @Type = params['Type']
          @TopK = params['TopK']
          @ScoreThreshold = params['ScoreThreshold']
        end
      end

      # RetrieveKnowledge请求参数结构体
      class RetrieveKnowledgeRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID。
        # @type KnowledgeBaseId: String
        # @param Query: 用于检索的文本。
        # @type Query: String
        # @param RetrievalMethod: 检索方法，默认使用`HYBRID`混合检索。
        # - `SEMANTIC`：语义检索
        # - `FULL_TEXT`：全文检索
        # - `HYBRID`：混合检索
        # @type RetrievalMethod: String
        # @param RetrievalSetting: 检索设置。
        # @type RetrievalSetting: :class:`Tencentcloud::Lkeap.v20240522.models.RetrievalSetting`
        # @param AttributeLabels: 标签过滤。
        # @type AttributeLabels: Array

        attr_accessor :KnowledgeBaseId, :Query, :RetrievalMethod, :RetrievalSetting, :AttributeLabels

        def initialize(knowledgebaseid=nil, query=nil, retrievalmethod=nil, retrievalsetting=nil, attributelabels=nil)
          @KnowledgeBaseId = knowledgebaseid
          @Query = query
          @RetrievalMethod = retrievalmethod
          @RetrievalSetting = retrievalsetting
          @AttributeLabels = attributelabels
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @Query = params['Query']
          @RetrievalMethod = params['RetrievalMethod']
          unless params['RetrievalSetting'].nil?
            @RetrievalSetting = RetrievalSetting.new
            @RetrievalSetting.deserialize(params['RetrievalSetting'])
          end
          unless params['AttributeLabels'].nil?
            @AttributeLabels = []
            params['AttributeLabels'].each do |i|
              labelitem_tmp = LabelItem.new
              labelitem_tmp.deserialize(i)
              @AttributeLabels << labelitem_tmp
            end
          end
        end
      end

      # RetrieveKnowledge返回参数结构体
      class RetrieveKnowledgeResponse < TencentCloud::Common::AbstractModel
        # @param Records: 检索结果
        # @type Records: Array
        # @param TotalCount: 检索结果数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Records, :TotalCount, :RequestId

        def initialize(records=nil, totalcount=nil, requestid=nil)
          @Records = records
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              retrievalrecord_tmp = RetrievalRecord.new
              retrievalrecord_tmp.deserialize(i)
              @Records << retrievalrecord_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # RunRerank请求参数结构体
      class RunRerankRequest < TencentCloud::Common::AbstractModel
        # @param Query: 查询内容
        # @type Query: String
        # @param Docs: 文档列表，最多20个
        # @type Docs: Array
        # @param Model: 模型名称, 默认: lke-reranker-base
        # @type Model: String

        attr_accessor :Query, :Docs, :Model

        def initialize(query=nil, docs=nil, model=nil)
          @Query = query
          @Docs = docs
          @Model = model
        end

        def deserialize(params)
          @Query = params['Query']
          @Docs = params['Docs']
          @Model = params['Model']
        end
      end

      # RunRerank返回参数结构体
      class RunRerankResponse < TencentCloud::Common::AbstractModel
        # @param ScoreList: 相关性, 数值越大越相关
        # @type ScoreList: Array
        # @param Usage: 消耗量，仅返回TotalToken
        # @type Usage: :class:`Tencentcloud::Lkeap.v20240522.models.Usage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ScoreList, :Usage, :RequestId

        def initialize(scorelist=nil, usage=nil, requestid=nil)
          @ScoreList = scorelist
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          @ScoreList = params['ScoreList']
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 搜索结果
      class SearchResult < TencentCloud::Common::AbstractModel
        # @param Index: 索引
        # @type Index: Integer
        # @param Url: 链接地址
        # @type Url: String
        # @param Name: 标题
        # @type Name: String
        # @param Snippet: 摘要
        # @type Snippet: String
        # @param Icon: 图标
        # @type Icon: String
        # @param Site: 站点
        # @type Site: String
        # @param PublishedTime: 1740412800
        # @type PublishedTime: Integer

        attr_accessor :Index, :Url, :Name, :Snippet, :Icon, :Site, :PublishedTime

        def initialize(index=nil, url=nil, name=nil, snippet=nil, icon=nil, site=nil, publishedtime=nil)
          @Index = index
          @Url = url
          @Name = name
          @Snippet = snippet
          @Icon = icon
          @Site = site
          @PublishedTime = publishedtime
        end

        def deserialize(params)
          @Index = params['Index']
          @Url = params['Url']
          @Name = params['Name']
          @Snippet = params['Snippet']
          @Icon = params['Icon']
          @Site = params['Site']
          @PublishedTime = params['PublishedTime']
        end
      end

      # 分段配置
      class SegmentationConfig < TencentCloud::Common::AbstractModel
        # @param MaxChunkSize: 最大分片长度
        # @type MaxChunkSize: Integer

        attr_accessor :MaxChunkSize

        def initialize(maxchunksize=nil)
          @MaxChunkSize = maxchunksize
        end

        def deserialize(params)
          @MaxChunkSize = params['MaxChunkSize']
        end
      end

      # 文档解析失败记录
      class SplitDocumentFailedPage < TencentCloud::Common::AbstractModel
        # @param PageNumber: 失败页码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PageNumber: Integer

        attr_accessor :PageNumber

        def initialize(pagenumber=nil)
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
        end
      end

      # UploadDoc请求参数结构体
      class UploadDocRequest < TencentCloud::Common::AbstractModel
        # @param KnowledgeBaseId: 知识库ID
        # @type KnowledgeBaseId: String
        # @param FileName: 文件名。
        # **需带文件类型后缀**
        # @type FileName: String
        # @param FileType: 文件类型。

        # **支持的文件类型：**
        # - `PDF`、`DOC`、`DOCX`、`XLS`、`XLSX`、`PPT`、`PPTX`、`MD`、`TXT`、`PNG`、`JPG`、`JPEG`、`CSV`

        # **支持的文件大小：**
        #  - `PDF`、`DOCX`、`DOC`、`PPT`、`PPTX` 最大 200M
        #  - `TXT`、`MD` 最大10M
        #  - 其他 最大20M
        # @type FileType: String
        # @param FileUrl: 文件的 URL 地址。
        # 文件存储于腾讯云的 URL 可保障更高的下载速度和稳定性，建议文件存储于腾讯云。 非腾讯云存储的 URL 速度和稳定性可能受一定影响。
        # 参考：[腾讯云COS文档](https://cloud.tencent.com/document/product/436/7749)
        # @type FileUrl: String
        # @param AttributeLabel: 属性标签引用
        # @type AttributeLabel: Array
        # @param AttributeLabels: 属性标签引用
        # @type AttributeLabels: Array
        # @param Config: 分段信息
        # @type Config: :class:`Tencentcloud::Lkeap.v20240522.models.SegmentationConfig`

        attr_accessor :KnowledgeBaseId, :FileName, :FileType, :FileUrl, :AttributeLabel, :AttributeLabels, :Config
        extend Gem::Deprecate
        deprecate :AttributeLabel, :none, 2025, 7
        deprecate :AttributeLabel=, :none, 2025, 7

        def initialize(knowledgebaseid=nil, filename=nil, filetype=nil, fileurl=nil, attributelabel=nil, attributelabels=nil, config=nil)
          @KnowledgeBaseId = knowledgebaseid
          @FileName = filename
          @FileType = filetype
          @FileUrl = fileurl
          @AttributeLabel = attributelabel
          @AttributeLabels = attributelabels
          @Config = config
        end

        def deserialize(params)
          @KnowledgeBaseId = params['KnowledgeBaseId']
          @FileName = params['FileName']
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          unless params['AttributeLabel'].nil?
            @AttributeLabel = []
            params['AttributeLabel'].each do |i|
              attributelabelreferitem_tmp = AttributeLabelReferItem.new
              attributelabelreferitem_tmp.deserialize(i)
              @AttributeLabel << attributelabelreferitem_tmp
            end
          end
          unless params['AttributeLabels'].nil?
            @AttributeLabels = []
            params['AttributeLabels'].each do |i|
              attributelabelreferitem_tmp = AttributeLabelReferItem.new
              attributelabelreferitem_tmp.deserialize(i)
              @AttributeLabels << attributelabelreferitem_tmp
            end
          end
          unless params['Config'].nil?
            @Config = SegmentationConfig.new
            @Config.deserialize(params['Config'])
          end
        end
      end

      # UploadDoc返回参数结构体
      class UploadDocResponse < TencentCloud::Common::AbstractModel
        # @param DocId: 文档ID
        # @type DocId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DocId, :RequestId

        def initialize(docid=nil, requestid=nil)
          @DocId = docid
          @RequestId = requestid
        end

        def deserialize(params)
          @DocId = params['DocId']
          @RequestId = params['RequestId']
        end
      end

      # 消耗量
      class Usage < TencentCloud::Common::AbstractModel
        # @param TotalPages: 文档页数
        # @type TotalPages: Integer
        # @param InputTokens: 输入token数
        # @type InputTokens: Integer
        # @param OutputTokens: 输出token数
        # @type OutputTokens: Integer
        # @param TotalTokens: 总token数
        # @type TotalTokens: Integer

        attr_accessor :TotalPages, :InputTokens, :OutputTokens, :TotalTokens

        def initialize(totalpages=nil, inputtokens=nil, outputtokens=nil, totaltokens=nil)
          @TotalPages = totalpages
          @InputTokens = inputtokens
          @OutputTokens = outputtokens
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @TotalPages = params['TotalPages']
          @InputTokens = params['InputTokens']
          @OutputTokens = params['OutputTokens']
          @TotalTokens = params['TotalTokens']
        end
      end

    end
  end
end

