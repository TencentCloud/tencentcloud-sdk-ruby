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
      # CancelTask请求参数结构体
      class CancelTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 取消任务的任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CancelTask返回参数结构体
      class CancelTaskResponse < TencentCloud::Common::AbstractModel
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
        # @param MaxTokens: 模型最大输出长度（单位 token），不包含思维链内容。
        # 默认为4096，取值范围：各个模型不同，参考各个模型最大输出长度（示例：4k，即4096）。
        # 输出 token 的总长度受模型的上下文长度限制。
        # @type MaxTokens: Integer
        # @param EnableSearch: 是否启用联网搜索
        # @type EnableSearch: Boolean
        # @param Thinking: 思维链开关，本参数仅在deepseek v3.1时生效
        # @type Thinking: :class:`Tencentcloud::Lkeap.v20240522.models.Thinking`

        attr_accessor :Model, :Messages, :Stream, :Temperature, :MaxTokens, :EnableSearch, :Thinking

        def initialize(model=nil, messages=nil, stream=nil, temperature=nil, maxtokens=nil, enablesearch=nil, thinking=nil)
          @Model = model
          @Messages = messages
          @Stream = stream
          @Temperature = temperature
          @MaxTokens = maxtokens
          @EnableSearch = enablesearch
          @Thinking = thinking
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
          unless params['Thinking'].nil?
            @Thinking = Thinking.new
            @Thinking.deserialize(params['Thinking'])
          end
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

      # 创建智能文档解析任务的配置信息
      class CreateReconstructDocumentFlowConfig < TencentCloud::Common::AbstractModel
        # @param TableResultType: <p>Markdown文件中表格返回的形式<br>0，表格以MD形式返回<br>1，表格以HTML形式返回<br>默认为0</p>
        # @type TableResultType: String
        # @param ResultType: <p>智能文档解析返回结果的格式<br>0：只返回全文MD；<br>1：只返回每一页的OCR原始Json；<br>2：只返回每一页的MD，<br>3：返回全文MD + 每一页的OCR原始Json；<br>4：返回全文MD + 每一页的MD<br>5: 返回全文md，每一页ocr原始json，每一页md<br>默认值为0</p>
        # @type ResultType: String
        # @param IgnoreFailedPage: <p>是否忽略失败页，返回已成功的页数据。默认为true。</p>
        # @type IgnoreFailedPage: Boolean
        # @param ReturnPageFormat: <p>Markdown文件中是否包含页码信息</p>
        # @type ReturnPageFormat: Boolean
        # @param PageFormat: <p>自定义输出页码样式,{{p}}为页码占位符，开启ReturnPageFormat生效。未填默认样式:<page_num>page {{p}}</page_num></p>
        # @type PageFormat: String

        attr_accessor :TableResultType, :ResultType, :IgnoreFailedPage, :ReturnPageFormat, :PageFormat

        def initialize(tableresulttype=nil, resulttype=nil, ignorefailedpage=nil, returnpageformat=nil, pageformat=nil)
          @TableResultType = tableresulttype
          @ResultType = resulttype
          @IgnoreFailedPage = ignorefailedpage
          @ReturnPageFormat = returnpageformat
          @PageFormat = pageformat
        end

        def deserialize(params)
          @TableResultType = params['TableResultType']
          @ResultType = params['ResultType']
          @IgnoreFailedPage = params['IgnoreFailedPage']
          @ReturnPageFormat = params['ReturnPageFormat']
          @PageFormat = params['PageFormat']
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
        # @param TableResultType: <p>Markdown文件中表格返回的形式<br>0，表格以MD形式返回<br>1，表格以HTML形式返回<br>默认为</p>
        # @type TableResultType: String
        # @param ResultType: <p>智能文档解析返回结果的格式<br>0：只返回全文MD；<br>1：只返回每一页的OCR原始Json；<br>2：只返回每一页的MD；<br>3：返回全文MD + 每一页的OCR原始Json；<br>4：返回全文MD + 每一页的MD；<br>5：返回全文md，每一页ocr原始json，每一页md。</p>
        # @type ResultType: String
        # @param EnableMllm: <p>是否开启mllm</p>
        # @type EnableMllm: Boolean
        # @param MaxChunkSize: <p>最大分片长度</p>
        # @type MaxChunkSize: Integer
        # @param IgnoreFailedPage: <p>是否忽略返回失败页码</p>
        # @type IgnoreFailedPage: Boolean
        # @param SplitResultType: <p>智能文档解析返回结果的格式<br>0：只返回全文MD；<br>1：只返回每一页的OCR原始Json；<br>2：只返回每一页的MD；<br>3：返回全文MD + 每一页的OCR原始Json；<br>4：返回全文MD + 每一页的MD；<br>5：返回全文md，每一页ocr原始json，每一页md。</p>
        # @type SplitResultType: String
        # @param SplitTableResultType: <p>Markdown文件中表格返回的形式<br>0，表格以MD形式返回<br>1，表格以HTML形式返回<br>默认为</p>
        # @type SplitTableResultType: String
        # @param ReturnPageFormat: <p>Markdown文件中是否包含页码信息</p>
        # @type ReturnPageFormat: Boolean
        # @param PageFormat: <p>自定义输出页码样式,{{p}}为页码占位符，开启ReturnPageFormat生效。未填默认样式:<page_num>page {{p}}</page_num></p>
        # @type PageFormat: String

        attr_accessor :TableResultType, :ResultType, :EnableMllm, :MaxChunkSize, :IgnoreFailedPage, :SplitResultType, :SplitTableResultType, :ReturnPageFormat, :PageFormat
        extend Gem::Deprecate
        deprecate :TableResultType, :none, 2026, 5
        deprecate :TableResultType=, :none, 2026, 5
        deprecate :ResultType, :none, 2026, 5
        deprecate :ResultType=, :none, 2026, 5

        def initialize(tableresulttype=nil, resulttype=nil, enablemllm=nil, maxchunksize=nil, ignorefailedpage=nil, splitresulttype=nil, splittableresulttype=nil, returnpageformat=nil, pageformat=nil)
          @TableResultType = tableresulttype
          @ResultType = resulttype
          @EnableMllm = enablemllm
          @MaxChunkSize = maxchunksize
          @IgnoreFailedPage = ignorefailedpage
          @SplitResultType = splitresulttype
          @SplitTableResultType = splittableresulttype
          @ReturnPageFormat = returnpageformat
          @PageFormat = pageformat
        end

        def deserialize(params)
          @TableResultType = params['TableResultType']
          @ResultType = params['ResultType']
          @EnableMllm = params['EnableMllm']
          @MaxChunkSize = params['MaxChunkSize']
          @IgnoreFailedPage = params['IgnoreFailedPage']
          @SplitResultType = params['SplitResultType']
          @SplitTableResultType = params['SplitTableResultType']
          @ReturnPageFormat = params['ReturnPageFormat']
          @PageFormat = params['PageFormat']
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
        deprecate :FileBase64, :none, 2026, 5
        deprecate :FileBase64=, :none, 2026, 5

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
        # @param FileSize: 文件大小，单位：字节
        # @type FileSize: Integer

        attr_accessor :PageNumber, :TotalToken, :TotalTokens, :SplitTokens, :MllmTokens, :SuccessPageNum, :FailPageNum, :FileSize
        extend Gem::Deprecate
        deprecate :TotalToken, :none, 2026, 5
        deprecate :TotalToken=, :none, 2026, 5

        def initialize(pagenumber=nil, totaltoken=nil, totaltokens=nil, splittokens=nil, mllmtokens=nil, successpagenum=nil, failpagenum=nil, filesize=nil)
          @PageNumber = pagenumber
          @TotalToken = totaltoken
          @TotalTokens = totaltokens
          @SplitTokens = splittokens
          @MllmTokens = mllmtokens
          @SuccessPageNum = successpagenum
          @FailPageNum = failpagenum
          @FileSize = filesize
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @TotalToken = params['TotalToken']
          @TotalTokens = params['TotalTokens']
          @SplitTokens = params['SplitTokens']
          @MllmTokens = params['MllmTokens']
          @SuccessPageNum = params['SuccessPageNum']
          @FailPageNum = params['FailPageNum']
          @FileSize = params['FileSize']
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

      # 错误信息
      class ErrorInfo < TencentCloud::Common::AbstractModel
        # @param Code: 错误码
        # @type Code: String
        # @param Message: 错误信息
        # @type Message: String

        attr_accessor :Code, :Message

        def initialize(code=nil, message=nil)
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
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
        # @param Model: <p>说明：选择生成向量的模型</p><p>枚举值：</p><ul><li>lke-text-embedding-v1： 文本embedding v1</li><li>lke-text-embedding-v2： 文本embedding v2</li></ul>
        # @type Model: String
        # @param Inputs: <p>说明：需要 embedding 的文本<br>备注：单条query最多2000个字符，总条数最多7条</p>
        # @type Inputs: Array
        # @param TextType: <p>说明：文本向量化的类型，为使得检索任务有更好的检索效果，建议区分查询文本（query）和文档文本（document）类型, 聚类、分类等对称任务可以不用特殊指定，采用系统默认值document即可。</p>
        # @type TextType: String
        # @param Instruction: <p>说明：自定义任务指令词，当且仅当TextType=query且Model为lke-text-embedding-v1时，生效</p>
        # @type Instruction: String

        attr_accessor :Model, :Inputs, :TextType, :Instruction

        def initialize(model=nil, inputs=nil, texttype=nil, instruction=nil)
          @Model = model
          @Inputs = inputs
          @TextType = texttype
          @Instruction = instruction
        end

        def deserialize(params)
          @Model = params['Model']
          @Inputs = params['Inputs']
          @TextType = params['TextType']
          @Instruction = params['Instruction']
        end
      end

      # GetEmbedding返回参数结构体
      class GetEmbeddingResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>特征</p>
        # @type Data: Array
        # @param Usage: <p>消耗量，返回TotalToken</p>
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
        # @param Error: 文档解析任务失败错误信息，当文档解析任务失败会返回具体的错误信息
        # @type Error: :class:`Tencentcloud::Lkeap.v20240522.models.ErrorInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :DocumentRecognizeResultUrl, :FailedPages, :Usage, :Error, :RequestId

        def initialize(status=nil, documentrecognizeresulturl=nil, failedpages=nil, usage=nil, error=nil, requestid=nil)
          @Status = status
          @DocumentRecognizeResultUrl = documentrecognizeresulturl
          @FailedPages = failedpages
          @Usage = usage
          @Error = error
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
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
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
        # @param Error: 文档拆分失败的错误信息，当拆分任务失败时返回该错误信息
        # @type Error: :class:`Tencentcloud::Lkeap.v20240522.models.ErrorInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :DocumentRecognizeResultUrl, :FailedPages, :Usage, :Error, :RequestId
        extend Gem::Deprecate
        deprecate :FailedPages, :none, 2026, 5
        deprecate :FailedPages=, :none, 2026, 5

        def initialize(status=nil, documentrecognizeresulturl=nil, failedpages=nil, usage=nil, error=nil, requestid=nil)
          @Status = status
          @DocumentRecognizeResultUrl = documentrecognizeresulturl
          @FailedPages = failedpages
          @Usage = usage
          @Error = error
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
          unless params['Error'].nil?
            @Error = ErrorInfo.new
            @Error.deserialize(params['Error'])
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

      # QueryRewrite请求参数结构体
      class QueryRewriteRequest < TencentCloud::Common::AbstractModel
        # @param Messages: 说明：需要改写的多轮历史会话，每轮历史对话需要包含user（问）和assistant（答）成对输入
        # 备注：由于模型字符限制，最多提供4轮对话。针对最后一轮对话进行改写。四轮对话最多包含3600个字符。
        # @type Messages: Array
        # @param Model: 说明：模型名称
        # 备注：仅一个模型可选
        # 默认值：lke-query-rewrite-base
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
        # @param FileEndPageNumber: 说明：文档的结束页码。备注：当传入文件是PDF、PDF、PPT、PPTX、DOC类型时，用来指定识别的结束页码，识别的页码包含当前值，文档页码大于100页建议使用异步解析接入。默认值：无
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

      # RunRerank请求参数结构体
      class RunRerankRequest < TencentCloud::Common::AbstractModel
        # @param Query: 说明：查询内容
        # 备注：用于匹配的query
        # @type Query: String
        # @param Docs: 说明：文档列表
        # 备注：最多60个，Query字段和Docs字段的总长度上限为2000字符
        # @type Docs: Array
        # @param Model: 说明：模型名称
        # 备注：仅一个模型可选
        # 默认值：lke-reranker-base
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

      # 思维链开关类型
      class Thinking < TencentCloud::Common::AbstractModel
        # @param Type: 控制开启思维链，默认disabled

        # enabled：开启思维链
        # disabled：关闭思维链
        # @type Type: String

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
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

