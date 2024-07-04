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
  module Hunyuan
    module V20230901
      # ChatCompletions请求参数结构体
      class ChatCompletionsRequest < TencentCloud::Common::AbstractModel
        # @param Model: 模型名称，可选值包括 hunyuan-lite、hunyuan-standard、hunyuan-standard-256K、hunyuan-pro、 hunyuan-code、 hunyuan-role、 hunyuan-functioncall、 hunyuan-vision。
        # 各模型介绍请阅读 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 中的说明。

        # 注意：
        # 不同的模型计费不同，请根据 [购买指南](https://cloud.tencent.com/document/product/1729/97731) 按需调用。
        # @type Model: String
        # @param Messages: 聊天上下文信息。
        # 说明：
        # 1. 长度最多为 40，按对话时间从旧到新在数组中排列。
        # 2. Message.Role 可选值：system、user、assistant、 tool。
        # 其中，system 角色可选，如存在则必须位于列表的最开始。user（tool） 和 assistant 需交替出现（一问一答），以 user 提问开始，user（tool）提问结束，且 Content 不能为空。Role 的顺序示例：[system（可选） user assistant user assistant user ...]。
        # 3. Messages 中 Content 总长度不能超过模型输入长度上限（可参考 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 文档），超过则会截断最前面的内容，只保留尾部内容。
        # @type Messages: Array
        # @param Stream: 流式调用开关。
        # 说明：
        # 1. 未传值时默认为非流式调用（false）。
        # 2. 流式调用时以 SSE 协议增量返回结果（返回值取 Choices[n].Delta 中的值，需要拼接增量数据才能获得完整结果）。
        # 3. 非流式调用时：
        # 调用方式与普通 HTTP 请求无异。
        # 接口响应耗时较长，**如需更低时延建议设置为 true**。
        # 只返回一次最终结果（返回值取 Choices[n].Message 中的值）。

        # 注意：
        # 通过 SDK 调用时，流式和非流式调用需用**不同的方式**获取返回值，具体参考 SDK 中的注释或示例（在各语言 SDK 代码仓库的 examples/hunyuan/v20230901/ 目录中）。
        # @type Stream: Boolean
        # @param StreamModeration: 流式输出审核开关。
        # 说明：
        # 1. 当使用流式输出（Stream 字段值为 true）时，该字段生效。
        # 2. 输出审核有流式和同步两种模式，**流式模式首包响应更快**。未传值时默认为流式模式（true）。
        # 3. 如果值为 true，将对输出内容进行分段审核，审核通过的内容流式输出返回。如果出现审核不过，响应中的 FinishReason 值为 sensitive。
        # 4. 如果值为 false，则不使用流式输出审核，需要审核完所有输出内容后再返回结果。

        # 注意：
        # 当选择流式输出审核时，可能会出现部分内容已输出，但中间某一段响应中的 FinishReason 值为 sensitive，此时说明安全审核未通过。如果业务场景有实时文字上屏的需求，需要自行撤回已上屏的内容，并建议自定义替换为一条提示语，如 “这个问题我不方便回答，不如我们换个话题试试”，以保障终端体验。
        # @type StreamModeration: Boolean
        # @param TopP: 说明：
        # 1. 影响输出文本的多样性，取值越大，生成文本的多样性越强。
        # 2. 取值区间为 [0.0, 1.0]，未传值时使用各模型推荐值。
        # 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type TopP: Float
        # @param Temperature: 说明：
        # 1. 较高的数值会使输出更加随机，而较低的数值会使其更加集中和确定。
        # 2. 取值区间为 [0.0, 2.0]，未传值时使用各模型推荐值。
        # 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type Temperature: Float
        # @param EnableEnhancement: 功能增强（如搜索）开关。
        # 说明：
        # 1. hunyuan-lite 无功能增强（如搜索）能力，该参数对 hunyuan-lite 版本不生效。
        # 2. 未传值时默认打开开关。
        # 3. 关闭时将直接由主模型生成回复内容，可以降低响应时延（对于流式输出时的首字时延尤为明显）。但在少数场景里，回复效果可能会下降。
        # 4. 安全审核能力不属于功能增强范围，不受此字段影响。
        # @type EnableEnhancement: Boolean
        # @param Tools: 可调用的工具列表，仅对 hunyuan-functioncall 模型生效。
        # @type Tools: Array
        # @param ToolChoice: 工具使用选项，可选值包括 none、auto、custom。
        # 说明：
        # 1. 仅对 hunyuan-functioncall 模型生效。
        # 2. none：不调用工具；auto：模型自行选择生成回复或调用工具；custom：强制模型调用指定的工具。
        # 3. 未设置时，默认值为auto
        # @type ToolChoice: String
        # @param CustomTool: 强制模型调用指定的工具，当参数ToolChoice为custom时，此参数为必填
        # @type CustomTool: :class:`Tencentcloud::Hunyuan.v20230901.models.Tool`

        attr_accessor :Model, :Messages, :Stream, :StreamModeration, :TopP, :Temperature, :EnableEnhancement, :Tools, :ToolChoice, :CustomTool

        def initialize(model=nil, messages=nil, stream=nil, streammoderation=nil, topp=nil, temperature=nil, enableenhancement=nil, tools=nil, toolchoice=nil, customtool=nil)
          @Model = model
          @Messages = messages
          @Stream = stream
          @StreamModeration = streammoderation
          @TopP = topp
          @Temperature = temperature
          @EnableEnhancement = enableenhancement
          @Tools = tools
          @ToolChoice = toolchoice
          @CustomTool = customtool
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
          @StreamModeration = params['StreamModeration']
          @TopP = params['TopP']
          @Temperature = params['Temperature']
          @EnableEnhancement = params['EnableEnhancement']
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
        # @param Created: Unix 时间戳，单位为秒。
        # @type Created: Integer
        # @param Usage: Token 统计信息。
        # 按照总 Token 数量计费。
        # @type Usage: :class:`Tencentcloud::Hunyuan.v20230901.models.Usage`
        # @param Note: 免责声明。
        # @type Note: String
        # @param Id: 本轮对话的 ID。
        # @type Id: String
        # @param Choices: 回复内容。
        # @type Choices: Array
        # @param ErrorMsg: 错误信息。
        # 如果流式返回中服务处理异常，返回该错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: :class:`Tencentcloud::Hunyuan.v20230901.models.ErrorMsg`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Created, :Usage, :Note, :Id, :Choices, :ErrorMsg, :RequestId

        def initialize(created=nil, usage=nil, note=nil, id=nil, choices=nil, errormsg=nil, requestid=nil)
          @Created = created
          @Usage = usage
          @Note = note
          @Id = id
          @Choices = choices
          @ErrorMsg = errormsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Created = params['Created']
          unless params['Usage'].nil?
            @Usage = Usage.new
            @Usage.deserialize(params['Usage'])
          end
          @Note = params['Note']
          @Id = params['Id']
          unless params['Choices'].nil?
            @Choices = []
            params['Choices'].each do |i|
              choice_tmp = Choice.new
              choice_tmp.deserialize(i)
              @Choices << choice_tmp
            end
          end
          unless params['ErrorMsg'].nil?
            @ErrorMsg = ErrorMsg.new
            @ErrorMsg.deserialize(params['ErrorMsg'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 返回的回复, 支持多个
      class Choice < TencentCloud::Common::AbstractModel
        # @param FinishReason: 结束标志位，可能为 stop 或 sensitive。
        # stop 表示输出正常结束，sensitive 只在开启流式输出审核时会出现，表示安全审核未通过。
        # @type FinishReason: String
        # @param Delta: 增量返回值，流式调用时使用该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Delta: :class:`Tencentcloud::Hunyuan.v20230901.models.Delta`
        # @param Message: 返回值，非流式调用时使用该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: :class:`Tencentcloud::Hunyuan.v20230901.models.Message`

        attr_accessor :FinishReason, :Delta, :Message

        def initialize(finishreason=nil, delta=nil, message=nil)
          @FinishReason = finishreason
          @Delta = delta
          @Message = message
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
        end
      end

      # 可以传入多种类型的内容，如图片或文本。当前只支持传入单张图片，传入多张图片时，以第一个图片为准。
      class Content < TencentCloud::Common::AbstractModel
        # @param Type: 内容类型
        # 注意：
        # 当前只支持传入单张图片，传入多张图片时，以第一个图片为准。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Text: 当 Type 为 text 时使用，表示具体的文本内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param ImageUrl: 当 Type 为 image_url 时使用，表示具体的图片内容
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageUrl: :class:`Tencentcloud::Hunyuan.v20230901.models.ImageUrl`

        attr_accessor :Type, :Text, :ImageUrl

        def initialize(type=nil, text=nil, imageurl=nil)
          @Type = type
          @Text = text
          @ImageUrl = imageurl
        end

        def deserialize(params)
          @Type = params['Type']
          @Text = params['Text']
          unless params['ImageUrl'].nil?
            @ImageUrl = ImageUrl.new
            @ImageUrl.deserialize(params['ImageUrl'])
          end
        end
      end

      # 返回的内容（流式返回）
      class Delta < TencentCloud::Common::AbstractModel
        # @param Role: 角色名称。
        # @type Role: String
        # @param Content: 内容详情。
        # @type Content: String
        # @param ToolCalls: 模型生成的工具调用，仅 hunyuan-functioncall 模型支持
        # 说明：
        # 对于每一次的输出值应该以Id为标识对Type、Name、Arguments字段进行合并。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolCalls: Array

        attr_accessor :Role, :Content, :ToolCalls

        def initialize(role=nil, content=nil, toolcalls=nil)
          @Role = role
          @Content = content
          @ToolCalls = toolcalls
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
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

      # Embedding 信息。
      class EmbeddingData < TencentCloud::Common::AbstractModel
        # @param Embedding: Embedding 信息，目前为 1024 维浮点数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Embedding: Array
        # @param Index: 下标，目前不支持批量，因此固定为 0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param Object: 目前固定为 "embedding"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Object: String

        attr_accessor :Embedding, :Index, :Object

        def initialize(embedding=nil, index=nil, object=nil)
          @Embedding = embedding
          @Index = index
          @Object = object
        end

        def deserialize(params)
          @Embedding = params['Embedding']
          @Index = params['Index']
          @Object = params['Object']
        end
      end

      # Token 使用计数。
      class EmbeddingUsage < TencentCloud::Common::AbstractModel
        # @param PromptTokens: 输入 Token 数。
        # @type PromptTokens: Integer
        # @param TotalTokens: 总 Token 数。
        # @type TotalTokens: Integer

        attr_accessor :PromptTokens, :TotalTokens

        def initialize(prompttokens=nil, totaltokens=nil)
          @PromptTokens = prompttokens
          @TotalTokens = totaltokens
        end

        def deserialize(params)
          @PromptTokens = params['PromptTokens']
          @TotalTokens = params['TotalTokens']
        end
      end

      # 运行时异常信息。
      class ErrorMsg < TencentCloud::Common::AbstractModel
        # @param Msg: 错误提示信息。
        # @type Msg: String
        # @param Code: 错误码。
        # 4000 服务内部异常。
        # 4001 请求模型超时。
        # @type Code: Integer

        attr_accessor :Msg, :Code

        def initialize(msg=nil, code=nil)
          @Msg = msg
          @Code = code
        end

        def deserialize(params)
          @Msg = params['Msg']
          @Code = params['Code']
        end
      end

      # GetEmbedding请求参数结构体
      class GetEmbeddingRequest < TencentCloud::Common::AbstractModel
        # @param Input: 输入文本。总长度不超过 1024 个 Token，超过则会截断最后面的内容。
        # @type Input: String

        attr_accessor :Input

        def initialize(input=nil)
          @Input = input
        end

        def deserialize(params)
          @Input = params['Input']
        end
      end

      # GetEmbedding返回参数结构体
      class GetEmbeddingResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的 Embedding 信息。当前不支持批量，所以数组元素数目为 1。
        # @type Data: Array
        # @param Usage: Token 使用计数，按照总 Token 数量收费。
        # @type Usage: :class:`Tencentcloud::Hunyuan.v20230901.models.EmbeddingUsage`
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
            @Usage = EmbeddingUsage.new
            @Usage.deserialize(params['Usage'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetTokenCount请求参数结构体
      class GetTokenCountRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 输入文本
        # @type Prompt: String

        attr_accessor :Prompt

        def initialize(prompt=nil)
          @Prompt = prompt
        end

        def deserialize(params)
          @Prompt = params['Prompt']
        end
      end

      # GetTokenCount返回参数结构体
      class GetTokenCountResponse < TencentCloud::Common::AbstractModel
        # @param TokenCount: token计数
        # @type TokenCount: Integer
        # @param CharacterCount: 字符计数
        # @type CharacterCount: Integer
        # @param Tokens: 切分后的列表
        # @type Tokens: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TokenCount, :CharacterCount, :Tokens, :RequestId

        def initialize(tokencount=nil, charactercount=nil, tokens=nil, requestid=nil)
          @TokenCount = tokencount
          @CharacterCount = charactercount
          @Tokens = tokens
          @RequestId = requestid
        end

        def deserialize(params)
          @TokenCount = params['TokenCount']
          @CharacterCount = params['CharacterCount']
          @Tokens = params['Tokens']
          @RequestId = params['RequestId']
        end
      end

      # 具体的图片内容
      class ImageUrl < TencentCloud::Common::AbstractModel
        # @param Url: 图片的 Url（以 http:// 或 https:// 开头）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :Url

        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # 会话内容
      class Message < TencentCloud::Common::AbstractModel
        # @param Role: 角色，可选值包括 system、user、assistant、 tool。
        # @type Role: String
        # @param Content: 文本内容
        # @type Content: String
        # @param Contents: 多种类型内容（目前支持图片和文本），仅 hunyuan-vision 模型支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Contents: Array
        # @param ToolCallId: 当role为tool时传入，标识具体的函数调用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolCallId: String
        # @param ToolCalls: 模型生成的工具调用，仅 hunyuan-functioncall 模型支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ToolCalls: Array

        attr_accessor :Role, :Content, :Contents, :ToolCallId, :ToolCalls

        def initialize(role=nil, content=nil, contents=nil, toolcallid=nil, toolcalls=nil)
          @Role = role
          @Content = content
          @Contents = contents
          @ToolCallId = toolcallid
          @ToolCalls = toolcalls
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
          unless params['Contents'].nil?
            @Contents = []
            params['Contents'].each do |i|
              content_tmp = Content.new
              content_tmp.deserialize(i)
              @Contents << content_tmp
            end
          end
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

      # QueryHunyuanImageJob请求参数结构体
      class QueryHunyuanImageJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # QueryHunyuanImageJob返回参数结构体
      class QueryHunyuanImageJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatusCode: 当前任务状态码：
        # 1：等待中、2：运行中、4：处理失败、5：处理完成。
        # @type JobStatusCode: String
        # @param JobStatusMsg: 当前任务状态：排队中、处理中、处理失败或者处理完成。
        # @type JobStatusMsg: String
        # @param JobErrorCode: 任务处理失败错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务处理失败错误信息。
        # @type JobErrorMsg: String
        # @param ResultImage: 生成图 URL 列表，有效期1小时，请及时保存。
        # @type ResultImage: Array
        # @param ResultDetails: 结果 detail 数组，Success 代表成功。
        # @type ResultDetails: Array
        # @param RevisedPrompt: 对应 SubmitTextToImageProJob 接口中 Revise 参数。开启扩写时，返回扩写后的 prompt 文本。 如果关闭扩写，将直接返回原始输入的 prompt。
        # @type RevisedPrompt: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatusCode, :JobStatusMsg, :JobErrorCode, :JobErrorMsg, :ResultImage, :ResultDetails, :RevisedPrompt, :RequestId

        def initialize(jobstatuscode=nil, jobstatusmsg=nil, joberrorcode=nil, joberrormsg=nil, resultimage=nil, resultdetails=nil, revisedprompt=nil, requestid=nil)
          @JobStatusCode = jobstatuscode
          @JobStatusMsg = jobstatusmsg
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ResultImage = resultimage
          @ResultDetails = resultdetails
          @RevisedPrompt = revisedprompt
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatusCode = params['JobStatusCode']
          @JobStatusMsg = params['JobStatusMsg']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ResultImage = params['ResultImage']
          @ResultDetails = params['ResultDetails']
          @RevisedPrompt = params['RevisedPrompt']
          @RequestId = params['RequestId']
        end
      end

      # SubmitHunyuanImageJob请求参数结构体
      class SubmitHunyuanImageJobRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本描述。 算法将根据输入的文本智能生成与之相关的图像。 不能为空，推荐使用中文。最多可传100个 utf-8 字符。
        # @type Prompt: String
        # @param Style: 绘画风格。
        # 请在 [混元生图风格列表](https://cloud.tencent.com/document/product/1729/105846) 中选择期望的风格，传入风格编号。
        # 不传默认不指定风格。
        # @type Style: String
        # @param Resolution: 生成图分辨率。
        # 支持生成以下分辨率的图片：768:768（1:1）、768:1024（3:4）、1024:768（4:3）、1024:1024（1:1）、720:1280（9:16）、1280:720（16:9）、768:1280（3:5）、1280:768（5:3），不传默认使用1024:1024。
        # @type Resolution: String
        # @param LogoAdd: 为生成结果图添加显式水印标识的开关，默认为1。
        # 1：添加。
        # 0：不添加。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param Revise: prompt 扩写开关。1为开启，0为关闭，不传默认开启。
        # 开启扩写后，将自动扩写原始输入的 prompt 并使用扩写后的 prompt 生成图片，返回生成图片结果时将一并返回扩写后的 prompt 文本。
        # 如果关闭扩写，将直接使用原始输入的 prompt 生成图片。
        # 建议开启，在多数场景下可提升生成图片效果、丰富生成图片细节。
        # @type Revise: Integer

        attr_accessor :Prompt, :Style, :Resolution, :LogoAdd, :Revise

        def initialize(prompt=nil, style=nil, resolution=nil, logoadd=nil, revise=nil)
          @Prompt = prompt
          @Style = style
          @Resolution = resolution
          @LogoAdd = logoadd
          @Revise = revise
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @Style = params['Style']
          @Resolution = params['Resolution']
          @LogoAdd = params['LogoAdd']
          @Revise = params['Revise']
        end
      end

      # SubmitHunyuanImageJob返回参数结构体
      class SubmitHunyuanImageJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # 用户指定模型使用的工具
      class Tool < TencentCloud::Common::AbstractModel
        # @param Type: 工具类型，当前只支持function
        # @type Type: String
        # @param Function: 具体要调用的function
        # @type Function: :class:`Tencentcloud::Hunyuan.v20230901.models.ToolFunction`

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
        # @type Function: :class:`Tencentcloud::Hunyuan.v20230901.models.ToolCallFunction`

        attr_accessor :Id, :Type, :Function

        def initialize(id=nil, type=nil, function=nil)
          @Id = id
          @Type = type
          @Function = function
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          unless params['Function'].nil?
            @Function = ToolCallFunction.new
            @Function.deserialize(params['Function'])
          end
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
        # @param Name: function名称，只能包含a-z，A-Z，0-9，\_或-
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

      # Token 数量
      class Usage < TencentCloud::Common::AbstractModel
        # @param PromptTokens: 输入 Token 数量。
        # @type PromptTokens: Integer
        # @param CompletionTokens: 输出 Token 数量。
        # @type CompletionTokens: Integer
        # @param TotalTokens: 总 Token 数量。
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

    end
  end
end

