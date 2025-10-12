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
  module Es
    module V20250101
      # ChatCompletions请求参数结构体
      class ChatCompletionsRequest < TencentCloud::Common::AbstractModel
        # @param Messages: 会话内容，按对话时间从旧到新在数组中排列，长度受模型窗口大小限制。
        # @type Messages: Array
        # @param ModelName: 模型名称，可选模型列表：hunyuan-turbo，hunyuan-large，hunyuan-large-longcontext，hunyuan-standard，hunyuan-standard-256K，deepseek-r1，deepseek-v3，deepseek-r1-distill-qwen-32b。
        # @type ModelName: String
        # @param Stream: 是否以流式接口的形式返回数据，默认true。
        # @type Stream: Boolean
        # @param TopP: 取值区间为[0.0, 1.0], 非必要不建议使用, 不合理的取值会影响效果 。
        # @type TopP: Float
        # @param Temperature: 取值区间为[0.0, 2.0], 非必要不建议使用, 不合理的取值会影响效果 。
        # @type Temperature: Float
        # @param OnlineSearch: 是否开启联网搜索。默认为 false。
        # @type OnlineSearch: Boolean
        # @param OnlineSearchOptions: 当 OnlineSearch 为 true 时，指定的搜索引擎，默认为 bing。
        # @type OnlineSearchOptions: :class:`Tencentcloud::Es.v20250101.models.OnlineSearchOptions`
        # @param Tools: 可调用的工具列表，当前支持模型：hunyuan-turbo, deepseek-v3。
        # @type Tools: Array
        # @param ToolChoice: 工具使用选项，可选值包括 none、auto、custom。说明：1. 仅对 hunyuan-turbo、deepseek-v3 模型生效。2. none：不调用工具；auto：模型自行选择生成回复或调用工具；custom：强制模型调用指定的工具。3. 未设置时，默认值为auto
        # @type ToolChoice: String
        # @param CustomTool: 强制模型调用指定的工具，当参数ToolChoice为custom时，此参数为必填
        # @type CustomTool: :class:`Tencentcloud::Es.v20250101.models.Tool`

        attr_accessor :Messages, :ModelName, :Stream, :TopP, :Temperature, :OnlineSearch, :OnlineSearchOptions, :Tools, :ToolChoice, :CustomTool

        def initialize(messages=nil, modelname=nil, stream=nil, topp=nil, temperature=nil, onlinesearch=nil, onlinesearchoptions=nil, tools=nil, toolchoice=nil, customtool=nil)
          @Messages = messages
          @ModelName = modelname
          @Stream = stream
          @TopP = topp
          @Temperature = temperature
          @OnlineSearch = onlinesearch
          @OnlineSearchOptions = onlinesearchoptions
          @Tools = tools
          @ToolChoice = toolchoice
          @CustomTool = customtool
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
          @ModelName = params['ModelName']
          @Stream = params['Stream']
          @TopP = params['TopP']
          @Temperature = params['Temperature']
          @OnlineSearch = params['OnlineSearch']
          unless params['OnlineSearchOptions'].nil?
            @OnlineSearchOptions = OnlineSearchOptions.new
            @OnlineSearchOptions.deserialize(params['OnlineSearchOptions'])
          end
          unless params['Tools'].nil?
            @Tools = []
            params['Tools'].each do |i|
              tool_tmp = Tool.new
              tool_tmp.deserialize(i)
              @Tools << tool_tmp
            end
          end
          @ToolChoice = params['ToolChoice']
          unless params['CustomTool'].nil?
            @CustomTool = Tool.new
            @CustomTool.deserialize(params['CustomTool'])
          end
        end
      end

      # ChatCompletions返回参数结构体
      class ChatCompletionsResponse < TencentCloud::Common::AbstractModel
        # @param Id: 此次请求的id
        # @type Id: String
        # @param Choices: 回复内容
        # @type Choices: Array
        # @param Usage: token使用量
        # @type Usage: :class:`Tencentcloud::Es.v20250101.models.TokenUsage`
        # @param OnlineSearchContent: 联网搜索结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OnlineSearchContent: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Id, :Choices, :Usage, :OnlineSearchContent, :RequestId

        def initialize(id=nil, choices=nil, usage=nil, onlinesearchcontent=nil, requestid=nil)
          @Id = id
          @Choices = choices
          @Usage = usage
          @OnlineSearchContent = onlinesearchcontent
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['Choices'].nil?
            @Choices = []
            params['Choices'].each do |i|
              choice_tmp = Choice.new
              choice_tmp.deserialize(i)
              @Choices << choice_tmp
            end
          end
          unless params['Usage'].nil?
            @Usage = TokenUsage.new
            @Usage.deserialize(params['Usage'])
          end
          unless params['OnlineSearchContent'].nil?
            @OnlineSearchContent = []
            params['OnlineSearchContent'].each do |i|
              webcontent_tmp = WebContent.new
              webcontent_tmp.deserialize(i)
              @OnlineSearchContent << webcontent_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 返回的回复, 支持多个。
      class Choice < TencentCloud::Common::AbstractModel
        # @param Message: 返回的回复。
        # @type Message: :class:`Tencentcloud::Es.v20250101.models.OutputMessage`

        attr_accessor :Message

        def initialize(message=nil)
          @Message = message
        end

        def deserialize(params)
          unless params['Message'].nil?
            @Message = OutputMessage.new
            @Message.deserialize(params['Message'])
          end
        end
      end

      # 切片对象信息
      class Chunk < TencentCloud::Common::AbstractModel
        # @param Index: chunk索引。切片顺序 id。
        # @type Index: Integer
        # @param Content: chunk内容。
        # @type Content: String

        attr_accessor :Index, :Content

        def initialize(index=nil, content=nil)
          @Index = index
          @Content = content
        end

        def deserialize(params)
          @Index = params['Index']
          @Content = params['Content']
        end
      end

      # 文档分片配置
      class ChunkConfig < TencentCloud::Common::AbstractModel
        # @param MaxChunkSize: 最大分片长度
        # @type MaxChunkSize: Integer
        # @param Delimiters: 分隔符列表
        # @type Delimiters: Array
        # @param ChunkOverlap: 相邻切片重合字符数，需要小于分片长度
        # @type ChunkOverlap: Integer

        attr_accessor :MaxChunkSize, :Delimiters, :ChunkOverlap

        def initialize(maxchunksize=nil, delimiters=nil, chunkoverlap=nil)
          @MaxChunkSize = maxchunksize
          @Delimiters = delimiters
          @ChunkOverlap = chunkoverlap
        end

        def deserialize(params)
          @MaxChunkSize = params['MaxChunkSize']
          @Delimiters = params['Delimiters']
          @ChunkOverlap = params['ChunkOverlap']
        end
      end

      # 文档切片异步任务
      class ChunkConfigAsync < TencentCloud::Common::AbstractModel
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

      # 切片文档信息
      class ChunkDocument < TencentCloud::Common::AbstractModel
        # @param FileType: 文件类型，支持 MD，TXT 格式。
        # @type FileType: String
        # @param FileContent: 文本原文，使用字符串格式输入。
        # @type FileContent: String

        attr_accessor :FileType, :FileContent

        def initialize(filetype=nil, filecontent=nil)
          @FileType = filetype
          @FileContent = filecontent
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileContent = params['FileContent']
        end
      end

      # ChunkDocumentAsync请求参数结构体
      class ChunkDocumentAsyncRequest < TencentCloud::Common::AbstractModel
        # @param Document: 文件信息。
        # @type Document: :class:`Tencentcloud::Es.v20250101.models.Document`
        # @param ModelName: 模型名称，可选模型列表：doc-tree-chunk。
        # @type ModelName: String
        # @param Config: 文件切片配置。
        # @type Config: :class:`Tencentcloud::Es.v20250101.models.ChunkConfigAsync`

        attr_accessor :Document, :ModelName, :Config

        def initialize(document=nil, modelname=nil, config=nil)
          @Document = document
          @ModelName = modelname
          @Config = config
        end

        def deserialize(params)
          unless params['Document'].nil?
            @Document = Document.new
            @Document.deserialize(params['Document'])
          end
          @ModelName = params['ModelName']
          unless params['Config'].nil?
            @Config = ChunkConfigAsync.new
            @Config.deserialize(params['Config'])
          end
        end
      end

      # ChunkDocumentAsync返回参数结构体
      class ChunkDocumentAsyncResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
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

      # ChunkDocument请求参数结构体
      class ChunkDocumentRequest < TencentCloud::Common::AbstractModel
        # @param Document: 切片文件信息。
        # @type Document: :class:`Tencentcloud::Es.v20250101.models.ChunkDocument`
        # @param ModelName: 模型名称，可选模型列表：doc-chunk。
        # @type ModelName: String
        # @param Config: 文件切片配置。
        # @type Config: :class:`Tencentcloud::Es.v20250101.models.ChunkConfig`

        attr_accessor :Document, :ModelName, :Config

        def initialize(document=nil, modelname=nil, config=nil)
          @Document = document
          @ModelName = modelname
          @Config = config
        end

        def deserialize(params)
          unless params['Document'].nil?
            @Document = ChunkDocument.new
            @Document.deserialize(params['Document'])
          end
          @ModelName = params['ModelName']
          unless params['Config'].nil?
            @Config = ChunkConfig.new
            @Config.deserialize(params['Config'])
          end
        end
      end

      # ChunkDocument返回参数结构体
      class ChunkDocumentResponse < TencentCloud::Common::AbstractModel
        # @param Chunks: 无
        # @type Chunks: Array
        # @param Usage: token消耗量
        # @type Usage: :class:`Tencentcloud::Es.v20250101.models.Usage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Chunks, :Usage, :RequestId

        def initialize(chunks=nil, usage=nil, requestid=nil)
          @Chunks = chunks
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Chunks'].nil?
            @Chunks = []
            params['Chunks'].each do |i|
              chunk_tmp = Chunk.new
              chunk_tmp.deserialize(i)
              @Chunks << chunk_tmp
            end
          end
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 文档信息
      class Document < TencentCloud::Common::AbstractModel
        # @param FileType: 支持的文件类型：PDF、DOC、DOCX、PPT、PPTX、MD、TXT、XLS、
        # XLSX、CSV、PNG、JPG、JPEG、BMP、GIF、WEBP、HEIC、EPS、ICNS、
        # IM、PCX、PPM、TIFF、XBM、HEIF、JP2

        # 文档解析支持的文件大小：
        # -PDF、DOC、DOCX、PPT、PPTX支持100M
        # -MD、TXT、XLS、XLSX、CSV支特10M
        # -其他支持20M

        # 文本切片支持的文件大小：
        # -PDF最大300M
        # -D0CX、D0C、PPT、PPTX最大200M
        # -TXT、MD最大10M
        # -其他最大20M
        # @type FileType: String
        # @param FileUrl: 文件存储于腾讯云的 URL 可保障更高的下载速度和稳定性，使用腾讯云COS 文件地址。
        # @type FileUrl: String
        # @param FileContent: 文件的 base64 值，携带 MineType前缀信息。编码后的后的文件不超过 10M。
        # 支持的文件大小：所下载文件经Base64编码后不超过 8M。文件下载时间不超过3秒。
        # 支持的图片像素：单边介于20-10000px之间。
        # @type FileContent: String
        # @param FileName: 文件名称，当使用 base64上传的时候使用。
        # @type FileName: String
        # @param FileStartPageNumber: 文档的起始页码
        # @type FileStartPageNumber: Integer
        # @param FileEndPageNumber: 文档的结束页码
        # @type FileEndPageNumber: Integer

        attr_accessor :FileType, :FileUrl, :FileContent, :FileName, :FileStartPageNumber, :FileEndPageNumber

        def initialize(filetype=nil, fileurl=nil, filecontent=nil, filename=nil, filestartpagenumber=nil, fileendpagenumber=nil)
          @FileType = filetype
          @FileUrl = fileurl
          @FileContent = filecontent
          @FileName = filename
          @FileStartPageNumber = filestartpagenumber
          @FileEndPageNumber = fileendpagenumber
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          @FileContent = params['FileContent']
          @FileName = params['FileName']
          @FileStartPageNumber = params['FileStartPageNumber']
          @FileEndPageNumber = params['FileEndPageNumber']
        end
      end

      # 文档切片用量
      class DocumentChunkUsage < TencentCloud::Common::AbstractModel
        # @param PageNumber:  解析页面数量
        # @type PageNumber: Integer
        # @param TotalTokens: 消耗 token数量
        # @type TotalTokens: Integer

        attr_accessor :PageNumber, :TotalTokens

        def initialize(pagenumber=nil, totaltokens=nil)
          @PageNumber = pagenumber
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @PageNumber = params['PageNumber']
          @TotalTokens = params['TotalTokens']
        end
      end

      # 文档解析配置
      class DocumentParseConfig < TencentCloud::Common::AbstractModel
        # @param ImageResponseType: 0:图片以链接形式返回
        # 1:返回图片中提取的文本内容
        # @type ImageResponseType: Integer

        attr_accessor :ImageResponseType

        def initialize(imageresponsetype=nil)
          @ImageResponseType = imageresponsetype
        end

        def deserialize(params)
          @ImageResponseType = params['ImageResponseType']
        end
      end

      # 向量内容
      class EmbeddingData < TencentCloud::Common::AbstractModel
        # @param Embedding: embedding 内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Embedding: Array
        # @param Index: 索引序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer

        attr_accessor :Embedding, :Index

        def initialize(embedding=nil, index=nil)
          @Embedding = embedding
          @Index = index
        end

        def deserialize(params)
          @Embedding = params['Embedding']
          @Index = params['Index']
        end
      end

      # GetDocumentChunkResult请求参数结构体
      class GetDocumentChunkResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId:  任务 ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # GetDocumentChunkResult返回参数结构体
      class GetDocumentChunkResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，-1：失败，0：运行中，1：成功。
        # @type Status: Integer
        # @param DocumentChunkResultUrl: 切片结果文件。
        # @type DocumentChunkResultUrl: String
        # @param Usage: Token用量。
        # @type Usage: :class:`Tencentcloud::Es.v20250101.models.DocumentChunkUsage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :DocumentChunkResultUrl, :Usage, :RequestId

        def initialize(status=nil, documentchunkresulturl=nil, usage=nil, requestid=nil)
          @Status = status
          @DocumentChunkResultUrl = documentchunkresulturl
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @DocumentChunkResultUrl = params['DocumentChunkResultUrl']
          unless params['Usage'].nil?
            @Usage = DocumentChunkUsage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetDocumentParseResult请求参数结构体
      class GetDocumentParseResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 Id
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # GetDocumentParseResult返回参数结构体
      class GetDocumentParseResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，-1：失败，0：运行中，1：成功。
        # @type Status: Integer
        # @param DocumentParseResultUrl: 结果文件。
        # @type DocumentParseResultUrl: String
        # @param FailedPages: 失败的页码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedPages: Array
        # @param Usage: 消耗页数
        # @type Usage: :class:`Tencentcloud::Es.v20250101.models.PageUsage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :DocumentParseResultUrl, :FailedPages, :Usage, :RequestId

        def initialize(status=nil, documentparseresulturl=nil, failedpages=nil, usage=nil, requestid=nil)
          @Status = status
          @DocumentParseResultUrl = documentparseresulturl
          @FailedPages = failedpages
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @DocumentParseResultUrl = params['DocumentParseResultUrl']
          @FailedPages = params['FailedPages']
          unless params['Usage'].nil?
            @Usage = PageUsage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTextEmbedding请求参数结构体
      class GetTextEmbeddingRequest < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型名称，可选模型列表：bge-base-zh-v1.5,Conan-embedding-v1,bge-m3,KaLM-embedding-multilingual-mini-v1,Qwen3-Embedding-0.6B。
        # @type ModelName: String
        # @param Texts: 需进行向量化的文本集。
        # @type Texts: Array

        attr_accessor :ModelName, :Texts

        def initialize(modelname=nil, texts=nil)
          @ModelName = modelname
          @Texts = texts
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @Texts = params['Texts']
        end
      end

      # GetTextEmbedding返回参数结构体
      class GetTextEmbeddingResponse < TencentCloud::Common::AbstractModel
        # @param Data: 结果集
        # @type Data: Array
        # @param Usage: 向量化消耗的token数量。
        # @type Usage: :class:`Tencentcloud::Es.v20250101.models.Usage`
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
              embeddingdata_tmp = EmbeddingData.new
              embeddingdata_tmp.deserialize(i)
              @Data << embeddingdata_tmp
            end
          end
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 会话内容，按对话时间从旧到新在数组中排列，长度受模型窗口大小限制。
      class Message < TencentCloud::Common::AbstractModel
        # @param Role: 角色，可选值包括 system、user、assistant、 tool。
        # @type Role: String
        # @param Content: 具体文本内容
        # @type Content: String
        # @param ToolCallId: 当role为tool时传入，标识具体的函数调用
        # @type ToolCallId: String
        # @param ToolCalls: 模型生成的工具调用
        # @type ToolCalls: Array

        attr_accessor :Role, :Content, :ToolCallId, :ToolCalls

        def initialize(role=nil, content=nil, toolcallid=nil, toolcalls=nil)
          @Role = role
          @Content = content
          @ToolCallId = toolcallid
          @ToolCalls = toolcalls
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          @ToolCallId = params['ToolCallId']
          unless params['ToolCalls'].nil?
            @ToolCalls = []
            params['ToolCalls'].each do |i|
              toolcall_tmp = ToolCall.new
              toolcall_tmp.deserialize(i)
              @ToolCalls << toolcall_tmp
            end
          end
        end
      end

      # 联网搜索选项。
      class OnlineSearchOptions < TencentCloud::Common::AbstractModel
        # @param Engine: 搜索引擎。支持 bing 和 sogou。
        # @type Engine: String

        attr_accessor :Engine

        def initialize(engine=nil)
          @Engine = engine
        end

        def deserialize(params)
          @Engine = params['Engine']
        end
      end

      # 会话内容，按对话时间从旧到新在数组中排列，长度受模型窗口大小限制。
      class OutputMessage < TencentCloud::Common::AbstractModel
        # @param Role: 角色
        # @type Role: String
        # @param Content: 文本内容
        # @type Content: String
        # @param ReasoningContent: 推理内容
        # @type ReasoningContent: String
        # @param ToolCalls: 模型生成的工具调用
        # @type ToolCalls: Array

        attr_accessor :Role, :Content, :ReasoningContent, :ToolCalls

        def initialize(role=nil, content=nil, reasoningcontent=nil, toolcalls=nil)
          @Role = role
          @Content = content
          @ReasoningContent = reasoningcontent
          @ToolCalls = toolcalls
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          @ReasoningContent = params['ReasoningContent']
          unless params['ToolCalls'].nil?
            @ToolCalls = []
            params['ToolCalls'].each do |i|
              toolcall_tmp = ToolCall.new
              toolcall_tmp.deserialize(i)
              @ToolCalls << toolcall_tmp
            end
          end
        end
      end

      # 消耗页数
      class PageUsage < TencentCloud::Common::AbstractModel
        # @param TotalPages: 消耗总页数
        # @type TotalPages: Integer

        attr_accessor :TotalPages

        def initialize(totalpages=nil)
          @TotalPages = totalpages
        end

        def deserialize(params)
          @TotalPages = params['TotalPages']
        end
      end

      # 文档信息
      class ParseDocument < TencentCloud::Common::AbstractModel
        # @param FileType: 支持的文件类型：PDF、DOC、DOCX、PPT、PPTX、MD、TXT、XLS、
        # XLSX、CSV、PNG、JPG、JPEG、BMP、GIF、WEBP、HEIC、EPS、ICNS、
        # IM、PCX、PPM、TIFF、XBM、HEIF、JP2

        # 文档解析支持的文件大小：
        # -PDF、DOC、DOCX、PPT、PPTX支持100M
        # -MD、TXT、XLS、XLSX、CSV支特10M
        # -其他支持20M

        # 文本切片支持的文件大小：
        # -PDF最大300M
        # -D0CX、D0C、PPT、PPTX最大200M
        # -TXT、MD最大10M
        # -其他最大20M
        # @type FileType: String
        # @param FileUrl: 文件存储于腾讯云的 URL 可保障更高的下载速度和稳定性，使用腾讯云COS 文件地址。
        # @type FileUrl: String
        # @param FileContent: 文件的 base64 值，携带 MineType前缀信息。编码后的后的文件不超过 10M。
        # 支持的文件大小：所下载文件经Base64编码后不超过 8M。文件下载时间不超过3秒。
        # 支持的图片像素：单边介于20-10000px之间。
        # 文件的 FileUrl、FileContent必须提供一个，如果都提供只使用 FileUrl。
        # @type FileContent: String
        # @param DocumentParseConfig: 文档解析配置
        # @type DocumentParseConfig: :class:`Tencentcloud::Es.v20250101.models.DocumentParseConfig`
        # @param FileStartPageNumber: 文档的起始页码
        # @type FileStartPageNumber: Integer
        # @param FileEndPageNumber: 文档的结束页码
        # @type FileEndPageNumber: Integer

        attr_accessor :FileType, :FileUrl, :FileContent, :DocumentParseConfig, :FileStartPageNumber, :FileEndPageNumber

        def initialize(filetype=nil, fileurl=nil, filecontent=nil, documentparseconfig=nil, filestartpagenumber=nil, fileendpagenumber=nil)
          @FileType = filetype
          @FileUrl = fileurl
          @FileContent = filecontent
          @DocumentParseConfig = documentparseconfig
          @FileStartPageNumber = filestartpagenumber
          @FileEndPageNumber = fileendpagenumber
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          @FileContent = params['FileContent']
          unless params['DocumentParseConfig'].nil?
            @DocumentParseConfig = DocumentParseConfig.new
            @DocumentParseConfig.deserialize(params['DocumentParseConfig'])
          end
          @FileStartPageNumber = params['FileStartPageNumber']
          @FileEndPageNumber = params['FileEndPageNumber']
        end
      end

      # ParseDocumentAsync请求参数结构体
      class ParseDocumentAsyncRequest < TencentCloud::Common::AbstractModel
        # @param Document: 文件信息。
        # @type Document: :class:`Tencentcloud::Es.v20250101.models.Document`
        # @param ModelName: 模型名称，可选模型列表：doc-llm。
        # @type ModelName: String

        attr_accessor :Document, :ModelName

        def initialize(document=nil, modelname=nil)
          @Document = document
          @ModelName = modelname
        end

        def deserialize(params)
          unless params['Document'].nil?
            @Document = Document.new
            @Document.deserialize(params['Document'])
          end
          @ModelName = params['ModelName']
        end
      end

      # ParseDocumentAsync返回参数结构体
      class ParseDocumentAsyncResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 id
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

      # ParseDocument请求参数结构体
      class ParseDocumentRequest < TencentCloud::Common::AbstractModel
        # @param Document: 文件信息
        # @type Document: :class:`Tencentcloud::Es.v20250101.models.ParseDocument`
        # @param ModelName: 模型名称，doc-llm。
        # @type ModelName: String

        attr_accessor :Document, :ModelName

        def initialize(document=nil, modelname=nil)
          @Document = document
          @ModelName = modelname
        end

        def deserialize(params)
          unless params['Document'].nil?
            @Document = ParseDocument.new
            @Document.deserialize(params['Document'])
          end
          @ModelName = params['ModelName']
        end
      end

      # ParseDocument返回参数结构体
      class ParseDocumentResponse < TencentCloud::Common::AbstractModel
        # @param Progress: 进度：0-100。
        # @type Progress: String
        # @param DocumentParseResultUrl:  解析文件结果。
        # @type DocumentParseResultUrl: String
        # @param FailedPages: 失败页码。
        # @type FailedPages: Array
        # @param Usage: 消耗页数
        # @type Usage: :class:`Tencentcloud::Es.v20250101.models.PageUsage`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Progress, :DocumentParseResultUrl, :FailedPages, :Usage, :RequestId

        def initialize(progress=nil, documentparseresulturl=nil, failedpages=nil, usage=nil, requestid=nil)
          @Progress = progress
          @DocumentParseResultUrl = documentparseresulturl
          @FailedPages = failedpages
          @Usage = usage
          @RequestId = requestid
        end

        def deserialize(params)
          @Progress = params['Progress']
          @DocumentParseResultUrl = params['DocumentParseResultUrl']
          @FailedPages = params['FailedPages']
          unless params['Usage'].nil?
            @Usage = PageUsage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 输出结果
      class RerankResult < TencentCloud::Common::AbstractModel
        # @param Index: 对应的doc在输入候选doc数组中的位置索引值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param RelevanceScore: 相似度分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelevanceScore: Float
        # @param Document: doc原文内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Document: String

        attr_accessor :Index, :RelevanceScore, :Document

        def initialize(index=nil, relevancescore=nil, document=nil)
          @Index = index
          @RelevanceScore = relevancescore
          @Document = document
        end

        def deserialize(params)
          @Index = params['Index']
          @RelevanceScore = params['RelevanceScore']
          @Document = params['Document']
        end
      end

      # RunRerank请求参数结构体
      class RunRerankRequest < TencentCloud::Common::AbstractModel
        # @param ModelName: 模型名称，可选模型列表：bge-reranker-large，bge-reranker-v2-m3。
        # @type ModelName: String
        # @param Query: 查询文本。
        # @type Query: String
        # @param Documents: 待排序的候选doc列表。
        # @type Documents: Array
        # @param TopN: 排序返回的top文档数量, 如果没有指定则返回全部候选doc，如果指定的top_n值大于输入的候选doc数量，返回全部doc。
        # @type TopN: Integer
        # @param ReturnDocuments: 返回的排序结果列表里面是否返回每一条document原文，默认值False。
        # @type ReturnDocuments: Boolean

        attr_accessor :ModelName, :Query, :Documents, :TopN, :ReturnDocuments

        def initialize(modelname=nil, query=nil, documents=nil, topn=nil, returndocuments=nil)
          @ModelName = modelname
          @Query = query
          @Documents = documents
          @TopN = topn
          @ReturnDocuments = returndocuments
        end

        def deserialize(params)
          @ModelName = params['ModelName']
          @Query = params['Query']
          @Documents = params['Documents']
          @TopN = params['TopN']
          @ReturnDocuments = params['ReturnDocuments']
        end
      end

      # RunRerank返回参数结构体
      class RunRerankResponse < TencentCloud::Common::AbstractModel
        # @param Data: 输出结果集。
        # @type Data: Array
        # @param Usage: 消耗token数量。
        # @type Usage: :class:`Tencentcloud::Es.v20250101.models.Usage`
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
              rerankresult_tmp = RerankResult.new
              rerankresult_tmp.deserialize(i)
              @Data << rerankresult_tmp
            end
          end
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # token使用量
      class TokenUsage < TencentCloud::Common::AbstractModel
        # @param PromptTokens: 表示prompt的tokens数，多次返回中保持不变
        # @type PromptTokens: Integer
        # @param CompletionTokens: 回答的token总数，在流式返回中，表示到目前为止所有completion的tokens总数，多次返回中持续累加
        # @type CompletionTokens: Integer
        # @param TotalTokens: 表示prompt_tokens和completion_tokens之和
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

      # 用户指定模型使用的工具
      class Tool < TencentCloud::Common::AbstractModel
        # @param Type: 工具类型，当前只支持function
        # @type Type: String
        # @param Function: 具体要调用的function
        # @type Function: :class:`Tencentcloud::Es.v20250101.models.ToolFunction`

        attr_accessor :Type, :Function

        def initialize(type=nil, function=nil)
          @Type = type
          @Function = function
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Function'].nil?
            @Function = ToolFunction.new
            @Function.deserialize(params['Function'])
          end
        end
      end

      # 模型生成的工具调用
      class ToolCall < TencentCloud::Common::AbstractModel
        # @param Id: 工具调用id
        # @type Id: String
        # @param Type: 工具调用类型，当前只支持function
        # @type Type: String
        # @param Function: 具体的function调用
        # @type Function: :class:`Tencentcloud::Es.v20250101.models.ToolCallFunction`
        # @param Index: 索引值
        # @type Index: Integer

        attr_accessor :Id, :Type, :Function, :Index

        def initialize(id=nil, type=nil, function=nil, index=nil)
          @Id = id
          @Type = type
          @Function = function
          @Index = index
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          unless params['Function'].nil?
            @Function = ToolCallFunction.new
            @Function.deserialize(params['Function'])
          end
          @Index = params['Index']
        end
      end

      # 具体的function调用
      class ToolCallFunction < TencentCloud::Common::AbstractModel
        # @param Name: function名称
        # @type Name: String
        # @param Arguments: function参数，一般为json字符串
        # @type Arguments: String

        attr_accessor :Name, :Arguments

        def initialize(name=nil, arguments=nil)
          @Name = name
          @Arguments = arguments
        end

        def deserialize(params)
          @Name = params['Name']
          @Arguments = params['Arguments']
        end
      end

      # function定义
      class ToolFunction < TencentCloud::Common::AbstractModel
        # @param Name: function名称，只能包含a-z，A-Z，0-9，_或-
        # @type Name: String
        # @param Parameters: function参数，一般为json字符串
        # @type Parameters: String
        # @param Description: function的简单描述
        # @type Description: String

        attr_accessor :Name, :Parameters, :Description

        def initialize(name=nil, parameters=nil, description=nil)
          @Name = name
          @Parameters = parameters
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Parameters = params['Parameters']
          @Description = params['Description']
        end
      end

      # token消耗总数
      class Usage < TencentCloud::Common::AbstractModel
        # @param TotalTokens: tokens总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalTokens: Integer

        attr_accessor :TotalTokens

        def initialize(totaltokens=nil)
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @TotalTokens = params['TotalTokens']
        end
      end

      # 搜索结果网页信息。
      class WebContent < TencentCloud::Common::AbstractModel
        # @param Query: 搜素问题
        # @type Query: String
        # @param Title: 标题
        # @type Title: String
        # @param Url: 链接
        # @type Url: String
        # @param Time: 时间
        # @type Time: String
        # @param Content: 网页内容
        # @type Content: String
        # @param ChunkIndex: 切片索引
        # @type ChunkIndex: String
        # @param Score: 分数
        # @type Score: String

        attr_accessor :Query, :Title, :Url, :Time, :Content, :ChunkIndex, :Score

        def initialize(query=nil, title=nil, url=nil, time=nil, content=nil, chunkindex=nil, score=nil)
          @Query = query
          @Title = title
          @Url = url
          @Time = time
          @Content = content
          @ChunkIndex = chunkindex
          @Score = score
        end

        def deserialize(params)
          @Query = params['Query']
          @Title = params['Title']
          @Url = params['Url']
          @Time = params['Time']
          @Content = params['Content']
          @ChunkIndex = params['ChunkIndex']
          @Score = params['Score']
        end
      end

    end
  end
end

