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
      # ActivateService请求参数结构体
      class ActivateServiceRequest < TencentCloud::Common::AbstractModel
        # @param PayMode: 开通之后，是否关闭后付费；默认为0，不关闭；1为关闭
        # @type PayMode: Integer

        attr_accessor :PayMode

        def initialize(paymode=nil)
          @PayMode = paymode
        end

        def deserialize(params)
          @PayMode = params['PayMode']
        end
      end

      # ActivateService返回参数结构体
      class ActivateServiceResponse < TencentCloud::Common::AbstractModel
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
        # @param Model: 模型名称，可选值包括 hunyuan-lite、hunyuan-standard、hunyuan-standard-256K、hunyuan-pro、 hunyuan-code、 hunyuan-role、 hunyuan-functioncall、 hunyuan-vision、 hunyuan-turbo、 hunyuan-turbo-latest。
        # 各模型介绍请阅读 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 中的说明。

        # 注意：
        # 不同的模型计费不同，请根据 [购买指南](https://cloud.tencent.com/document/product/1729/97731) 按需调用。
        # @type Model: String
        # @param Messages: 聊天上下文信息。
        # 说明：
        # 1. 长度最多为 40，按对话时间从旧到新在数组中排列。
        # 2. Message.Role 可选值：system、user、assistant、 tool（functioncall场景）。
        # 其中，system 角色可选，如存在则必须位于列表的最开始。user（tool） 和 assistant 需交替出现（一问一答），以 user 提问开始，user（tool）提问结束，其中tool可以连续出现多次，且 Content 不能为空。Role 的顺序示例：[system（可选） user assistant user（tool tool ...） assistant user（tool tool ...） ...]。
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
        # 1. 影响输出文本的多样性。模型已有默认参数，不传值时使用各模型推荐值，不推荐用户修改。
        # 2. 取值区间为 [0.0, 1.0]。取值越大，生成文本的多样性越强。
        # @type TopP: Float
        # @param Temperature: 说明：
        # 1. 影响模型输出多样性，模型已有默认参数，不传值时使用各模型推荐值，不推荐用户修改。
        # 2. 取值区间为 [0.0, 2.0]。较高的数值会使输出更加多样化和不可预测，而较低的数值会使其更加集中和确定。
        # @type Temperature: Float
        # @param EnableEnhancement: 功能增强（如搜索）开关。
        # 说明：
        # 1. hunyuan-lite 无功能增强（如搜索）能力，该参数对 hunyuan-lite 版本不生效。
        # 2. 未传值时默认打开开关。
        # 3. 关闭时将直接由主模型生成回复内容，可以降低响应时延（对于流式输出时的首字时延尤为明显）。但在少数场景里，回复效果可能会下降。
        # 4. 安全审核能力不属于功能增强范围，不受此字段影响。
        # @type EnableEnhancement: Boolean
        # @param Tools: 可调用的工具列表，仅对 hunyuan-pro、hunyuan-turbo、hunyuan-functioncall 模型生效。
        # @type Tools: Array
        # @param ToolChoice: 工具使用选项，可选值包括 none、auto、custom。
        # 说明：
        # 1. 仅对 hunyuan-pro、hunyuan-turbo、hunyuan-functioncall 模型生效。
        # 2. none：不调用工具；auto：模型自行选择生成回复或调用工具；custom：强制模型调用指定的工具。
        # 3. 未设置时，默认值为auto
        # @type ToolChoice: String
        # @param CustomTool: 强制模型调用指定的工具，当参数ToolChoice为custom时，此参数为必填
        # @type CustomTool: :class:`Tencentcloud::Hunyuan.v20230901.models.Tool`
        # @param SearchInfo: 默认是false，在值为true且命中搜索时，接口会返回SearchInfo
        # @type SearchInfo: Boolean
        # @param Citation: 搜索引文角标开关。
        # 说明：
        # 1. 配合EnableEnhancement和SearchInfo参数使用。打开后，回答中命中搜索的结果会在片段后增加角标标志，对应SearchInfo列表中的链接。
        # 2. false：开关关闭，true：开关打开。
        # 3. 未传值时默认开关关闭（false）。
        # @type Citation: Boolean
        # @param EnableSpeedSearch: 是否开启极速版搜索，默认false，不开启；在开启且命中搜索时，会启用极速版搜索，流式输出首字返回更快。
        # @type EnableSpeedSearch: Boolean
        # @param EnableMultimedia: 多媒体开关。
        # 详细介绍请阅读 [多媒体介绍](https://cloud.tencent.com/document/product/1729/111178) 中的说明。
        # 说明：
        # 1. 该参数目前仅对白名单内用户生效，如您想体验该功能请 [联系我们](https://cloud.tencent.com/act/event/Online_service)。
        # 2. 该参数仅在功能增强（如搜索）开关开启（EnableEnhancement=true）并且极速版搜索开关关闭（EnableSpeedSearch=false）时生效。
        # 3. hunyuan-lite 无多媒体能力，该参数对 hunyuan-lite 版本不生效。
        # 4. 未传值时默认关闭。
        # 5. 开启并搜索到对应的多媒体信息时，会输出对应的多媒体地址，可以定制个性化的图文消息。
        # @type EnableMultimedia: Boolean
        # @param EnableDeepSearch: 是否开启搜索深度模式，默认是false，在值为true且命中搜索时，会请求深度搜索。
        # @type EnableDeepSearch: Boolean
        # @param Seed: 说明： 1. 确保模型的输出是可复现的。 2. 取值区间为非0正整数，最大值10000。 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type Seed: Integer

        attr_accessor :Model, :Messages, :Stream, :StreamModeration, :TopP, :Temperature, :EnableEnhancement, :Tools, :ToolChoice, :CustomTool, :SearchInfo, :Citation, :EnableSpeedSearch, :EnableMultimedia, :EnableDeepSearch, :Seed

        def initialize(model=nil, messages=nil, stream=nil, streammoderation=nil, topp=nil, temperature=nil, enableenhancement=nil, tools=nil, toolchoice=nil, customtool=nil, searchinfo=nil, citation=nil, enablespeedsearch=nil, enablemultimedia=nil, enabledeepsearch=nil, seed=nil)
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
          @SearchInfo = searchinfo
          @Citation = citation
          @EnableSpeedSearch = enablespeedsearch
          @EnableMultimedia = enablemultimedia
          @EnableDeepSearch = enabledeepsearch
          @Seed = seed
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
          @SearchInfo = params['SearchInfo']
          @Citation = params['Citation']
          @EnableSpeedSearch = params['EnableSpeedSearch']
          @EnableMultimedia = params['EnableMultimedia']
          @EnableDeepSearch = params['EnableDeepSearch']
          @Seed = params['Seed']
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
        # @param Id: 本次请求的 RequestId。
        # @type Id: String
        # @param Choices: 回复内容。
        # @type Choices: Array
        # @param ErrorMsg: 错误信息。
        # 如果流式返回中服务处理异常，返回该错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: :class:`Tencentcloud::Hunyuan.v20230901.models.ErrorMsg`
        # @param ModerationLevel: 多轮会话风险审核，值为1时，表明存在信息安全风险，建议终止客户多轮会话。
        # @type ModerationLevel: String
        # @param SearchInfo: 搜索结果信息
        # @type SearchInfo: :class:`Tencentcloud::Hunyuan.v20230901.models.SearchInfo`
        # @param Replaces: 多媒体信息。
        # 说明：
        # 1. 可以用多媒体信息替换回复内容里的占位符，得到完整的消息。
        # 2. 可能会出现回复内容里存在占位符，但是因为审核等原因没有返回多媒体信息。
        # @type Replaces: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :Created, :Usage, :Note, :Id, :Choices, :ErrorMsg, :ModerationLevel, :SearchInfo, :Replaces, :RequestId

        def initialize(created=nil, usage=nil, note=nil, id=nil, choices=nil, errormsg=nil, moderationlevel=nil, searchinfo=nil, replaces=nil, requestid=nil)
          @Created = created
          @Usage = usage
          @Note = note
          @Id = id
          @Choices = choices
          @ErrorMsg = errormsg
          @ModerationLevel = moderationlevel
          @SearchInfo = searchinfo
          @Replaces = replaces
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
          @ModerationLevel = params['ModerationLevel']
          unless params['SearchInfo'].nil?
            @SearchInfo = SearchInfo.new
            @SearchInfo.deserialize(params['SearchInfo'])
          end
          unless params['Replaces'].nil?
            @Replaces = []
            params['Replaces'].each do |i|
              replace_tmp = Replace.new
              replace_tmp.deserialize(i)
              @Replaces << replace_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 返回的回复, 支持多个
      class Choice < TencentCloud::Common::AbstractModel
        # @param FinishReason: 结束标志位，可能为 stop、 sensitive或者tool_calls。
        # stop 表示输出正常结束。
        # sensitive 只在开启流式输出审核时会出现，表示安全审核未通过。
        # tool_calls 标识函数调用。
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
        # @param ImageUrl: 图片的url，当 Type 为 image_url 时使用，表示具体的图片内容
        # 如"https://example.com/1.png" 或 图片的base64（注意 "data:image/jpeg;base64," 为必要部分）："data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAA......"
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

      # 混元生图多轮对话历史记录。
      class History < TencentCloud::Common::AbstractModel
        # @param ChatId: 对话的 ID，用于唯一标识一轮对话
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ChatId: String
        # @param Prompt: 原始输入的 Prompt 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Prompt: String
        # @param RevisedPrompt: 扩写后的 Prompt 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RevisedPrompt: String
        # @param Seed: 生成图的随机种子
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Seed: Integer

        attr_accessor :ChatId, :Prompt, :RevisedPrompt, :Seed

        def initialize(chatid=nil, prompt=nil, revisedprompt=nil, seed=nil)
          @ChatId = chatid
          @Prompt = prompt
          @RevisedPrompt = revisedprompt
          @Seed = seed
        end

        def deserialize(params)
          @ChatId = params['ChatId']
          @Prompt = params['Prompt']
          @RevisedPrompt = params['RevisedPrompt']
          @Seed = params['Seed']
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

      # logo参数
      class LogoParam < TencentCloud::Common::AbstractModel
        # @param LogoUrl: 水印url
        # @type LogoUrl: String
        # @param LogoImage: 水印base64，url和base64二选一传入
        # @type LogoImage: String
        # @param LogoRect: 水印图片位于融合结果图中的坐标，将按照坐标对标识图片进行位置和大小的拉伸匹配
        # @type LogoRect: :class:`Tencentcloud::Hunyuan.v20230901.models.LogoRect`

        attr_accessor :LogoUrl, :LogoImage, :LogoRect

        def initialize(logourl=nil, logoimage=nil, logorect=nil)
          @LogoUrl = logourl
          @LogoImage = logoimage
          @LogoRect = logorect
        end

        def deserialize(params)
          @LogoUrl = params['LogoUrl']
          @LogoImage = params['LogoImage']
          unless params['LogoRect'].nil?
            @LogoRect = LogoRect.new
            @LogoRect.deserialize(params['LogoRect'])
          end
        end
      end

      # 输入框
      class LogoRect < TencentCloud::Common::AbstractModel
        # @param X: 左上角X坐标
        # @type X: Integer
        # @param Y: 左上角Y坐标
        # @type Y: Integer
        # @param Width: 方框宽度
        # @type Width: Integer
        # @param Height: 方框高度
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
        # @param ToolCalls: 模型生成的工具调用，仅 hunyuan-pro 或者 hunyuan-functioncall 模型支持
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

      # 多媒体详情
      class Multimedia < TencentCloud::Common::AbstractModel
        # @param Type: 多媒体类型，可选值包括 image、music、album、playlist。
        # 说明：
        # 1. image：图片；music：单曲，类型为单曲时，会返回详细歌手和歌曲信息；album：专辑；playlist：歌单。
        # 2. 当 type 为 music、album、playlist 时，需要配合 [QQ音乐SDK](https://developer.y.qq.com/) 使用。
        # @type Type: String
        # @param Url: 多媒体地址。
        # 说明：
        # 1. type 为 image 时，地址为图片的预览地址；其他类型时，地址为封面图地址。
        # @type Url: String
        # @param JumpUrl: 多媒体详情地址。
        # 说明：
        # 1. 仅 type 为 image 时，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JumpUrl: String
        # @param Title: 名称。
        # 说明：
        # 1. type 为 image 时，该字段为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Desc: 描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Desc: String
        # @param Singer: 歌手名称。
        # 说明：
        # 1. 仅 type 为 music 时，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Singer: String
        # @param Ext: 歌曲详情。
        # 说明：
        # 1. 仅 type 为 music 时，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ext: :class:`Tencentcloud::Hunyuan.v20230901.models.SongExt`

        attr_accessor :Type, :Url, :JumpUrl, :Title, :Desc, :Singer, :Ext

        def initialize(type=nil, url=nil, jumpurl=nil, title=nil, desc=nil, singer=nil, ext=nil)
          @Type = type
          @Url = url
          @JumpUrl = jumpurl
          @Title = title
          @Desc = desc
          @Singer = singer
          @Ext = ext
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          @JumpUrl = params['JumpUrl']
          @Title = params['Title']
          @Desc = params['Desc']
          @Singer = params['Singer']
          unless params['Ext'].nil?
            @Ext = SongExt.new
            @Ext.deserialize(params['Ext'])
          end
        end
      end

      # QueryHunyuanImageChatJob请求参数结构体
      class QueryHunyuanImageChatJobRequest < TencentCloud::Common::AbstractModel
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

      # QueryHunyuanImageChatJob返回参数结构体
      class QueryHunyuanImageChatJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatusCode: 当前任务状态码：
        # 1：等待中、2：运行中、4：处理失败、5：处理完成。
        # @type JobStatusCode: String
        # @param JobStatusMsg: 当前任务状态：排队中、处理中、处理失败或者处理完成。
        # @type JobStatusMsg: String
        # @param JobErrorCode: 任务处理失败错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务处理失败错误信息。
        # @type JobErrorMsg: String
        # @param ChatId: 本轮对话的 ChatId，ChatId 用于唯一标识一轮对话。
        # 一个对话组中，最多支持进行100轮对话。
        # 每轮对话数据有效期为7天，到期后 ChatId 失效，有效期内的历史对话数据可通过 History 查询，如有长期使用需求请及时保存输入输出数据。
        # @type ChatId: String
        # @param ResultImage: 生成图 URL 列表，有效期7天，请及时保存。
        # @type ResultImage: Array
        # @param ResultDetails: 结果 detail 数组，Success 代表成功。
        # @type ResultDetails: Array
        # @param History: 本轮对话前置的历史对话数据（不含生成图）。
        # @type History: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatusCode, :JobStatusMsg, :JobErrorCode, :JobErrorMsg, :ChatId, :ResultImage, :ResultDetails, :History, :RequestId

        def initialize(jobstatuscode=nil, jobstatusmsg=nil, joberrorcode=nil, joberrormsg=nil, chatid=nil, resultimage=nil, resultdetails=nil, history=nil, requestid=nil)
          @JobStatusCode = jobstatuscode
          @JobStatusMsg = jobstatusmsg
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ChatId = chatid
          @ResultImage = resultimage
          @ResultDetails = resultdetails
          @History = history
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatusCode = params['JobStatusCode']
          @JobStatusMsg = params['JobStatusMsg']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ChatId = params['ChatId']
          @ResultImage = params['ResultImage']
          @ResultDetails = params['ResultDetails']
          unless params['History'].nil?
            @History = []
            params['History'].each do |i|
              history_tmp = History.new
              history_tmp.deserialize(i)
              @History << history_tmp
            end
          end
          @RequestId = params['RequestId']
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

      # 多媒体占位符替换信息
      class Replace < TencentCloud::Common::AbstractModel
        # @param Id: 占位符序号
        # @type Id: String
        # @param Multimedia: 多媒体详情
        # @type Multimedia: Array

        attr_accessor :Id, :Multimedia

        def initialize(id=nil, multimedia=nil)
          @Id = id
          @Multimedia = multimedia
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['Multimedia'].nil?
            @Multimedia = []
            params['Multimedia'].each do |i|
              multimedia_tmp = Multimedia.new
              multimedia_tmp.deserialize(i)
              @Multimedia << multimedia_tmp
            end
          end
        end
      end

      # 搜索结果信息
      class SearchInfo < TencentCloud::Common::AbstractModel
        # @param SearchResults: 搜索引文信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SearchResults: Array

        attr_accessor :SearchResults

        def initialize(searchresults=nil)
          @SearchResults = searchresults
        end

        def deserialize(params)
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

      # 搜索引文信息
      class SearchResult < TencentCloud::Common::AbstractModel
        # @param Index: 搜索引文序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param Title: 搜索引文标题
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Title: String
        # @param Url: 搜索引文链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String

        attr_accessor :Index, :Title, :Url

        def initialize(index=nil, title=nil, url=nil)
          @Index = index
          @Title = title
          @Url = url
        end

        def deserialize(params)
          @Index = params['Index']
          @Title = params['Title']
          @Url = params['Url']
        end
      end

      # SetPayMode请求参数结构体
      class SetPayModeRequest < TencentCloud::Common::AbstractModel
        # @param PayMode: 设置后付费状态，0：后付费；1：预付费
        # @type PayMode: Integer

        attr_accessor :PayMode

        def initialize(paymode=nil)
          @PayMode = paymode
        end

        def deserialize(params)
          @PayMode = params['PayMode']
        end
      end

      # SetPayMode返回参数结构体
      class SetPayModeResponse < TencentCloud::Common::AbstractModel
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

      # 歌曲详情。具体含义参考  [QQ音乐SDK](https://developer.y.qq.com/)
      class SongExt < TencentCloud::Common::AbstractModel
        # @param SongId: 歌曲id
        # @type SongId: Integer
        # @param SongMid: 歌曲mid
        # @type SongMid: String
        # @param Vip: 歌曲是否为vip。1：vip歌曲； 0：普通歌曲。
        # @type Vip: Integer

        attr_accessor :SongId, :SongMid, :Vip

        def initialize(songid=nil, songmid=nil, vip=nil)
          @SongId = songid
          @SongMid = songmid
          @Vip = vip
        end

        def deserialize(params)
          @SongId = params['SongId']
          @SongMid = params['SongMid']
          @Vip = params['Vip']
        end
      end

      # SubmitHunyuanImageChatJob请求参数结构体
      class SubmitHunyuanImageChatJobRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 本轮对话的文本描述。
        # 提交一个任务请求对应发起一轮生图对话，每轮对话中可输入一条 Prompt，生成一张图像，支持通过多轮输入 Prompt 来不断调整图像内容。
        # 推荐使用中文，最多可传1024个 utf-8 字符。
        # 输入示例：
        # <li> 第一轮对话：一颗红色的苹果 </li>
        # <li> 第二轮对话：将苹果改为绿色 </li>
        # <li> 第三轮对话：苹果放在桌子上 </li>
        # @type Prompt: String
        # @param ChatId: 上传上一轮对话的 ChatId，本轮对话将在指定的上一轮对话结果基础上继续生成图像。
        # 如果不传代表新建一个对话组，重新开启一轮新的对话。
        # 一个对话组中，最多支持进行100轮对话。
        # @type ChatId: String
        # @param LogoAdd: 为生成结果图添加显式水印标识的开关，默认为1。
        # 1：添加。
        # 0：不添加。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Hunyuan.v20230901.models.LogoParam`

        attr_accessor :Prompt, :ChatId, :LogoAdd, :LogoParam

        def initialize(prompt=nil, chatid=nil, logoadd=nil, logoparam=nil)
          @Prompt = prompt
          @ChatId = chatid
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @ChatId = params['ChatId']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitHunyuanImageChatJob返回参数结构体
      class SubmitHunyuanImageChatJobResponse < TencentCloud::Common::AbstractModel
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

      # SubmitHunyuanImageJob请求参数结构体
      class SubmitHunyuanImageJobRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本描述。
        # 算法将根据输入的文本智能生成与之相关的图像。
        # 不能为空，推荐使用中文。最多可传1024个 utf-8 字符。
        # @type Prompt: String
        # @param Style: 绘画风格。
        # 请在 [混元生图风格列表](https://cloud.tencent.com/document/product/1729/105846) 中选择期望的风格，传入风格编号。
        # 不传默认不指定风格。
        # @type Style: String
        # @param Resolution: 生成图分辨率。
        # 支持生成以下分辨率的图片：768:768（1:1）、768:1024（3:4）、1024:768（4:3）、1024:1024（1:1）、720:1280（9:16）、1280:720（16:9）、768:1280（3:5）、1280:768（5:3），不传默认使用1024:1024。
        # @type Resolution: String
        # @param Num: 图片生成数量。
        # 支持1 ~ 4张，默认生成1张。
        # @type Num: Integer
        # @param Seed: 随机种子，默认随机。
        # 不传：随机种子生成。
        # 正数：固定种子生成。
        # @type Seed: Integer
        # @param Revise: prompt 扩写开关。1为开启，0为关闭，不传默认开启。
        # 开启扩写后，将自动扩写原始输入的 prompt 并使用扩写后的 prompt 生成图片，返回生成图片结果时将一并返回扩写后的 prompt 文本。
        # 如果关闭扩写，将直接使用原始输入的 prompt 生成图片。
        # 建议开启，在多数场景下可提升生成图片效果、丰富生成图片细节。
        # @type Revise: Integer
        # @param LogoAdd: 为生成结果图添加显式水印标识的开关，默认为1。
        # 1：添加。
        # 0：不添加。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Hunyuan.v20230901.models.LogoParam`

        attr_accessor :Prompt, :Style, :Resolution, :Num, :Seed, :Revise, :LogoAdd, :LogoParam

        def initialize(prompt=nil, style=nil, resolution=nil, num=nil, seed=nil, revise=nil, logoadd=nil, logoparam=nil)
          @Prompt = prompt
          @Style = style
          @Resolution = resolution
          @Num = num
          @Seed = seed
          @Revise = revise
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @Style = params['Style']
          @Resolution = params['Resolution']
          @Num = params['Num']
          @Seed = params['Seed']
          @Revise = params['Revise']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
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

      # TextToImageLite请求参数结构体
      class TextToImageLiteRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本描述。
        # 算法将根据输入的文本智能生成与之相关的图像。建议详细描述画面主体、细节、场景等，文本描述越丰富，生成效果越精美。
        # 不能为空，推荐使用中文。最多可传256个 utf-8 字符。
        # @type Prompt: String
        # @param NegativePrompt: 反向文本描述。
        # 用于一定程度上从反面引导模型生成的走向，减少生成结果中出现描述内容的可能，但不能完全杜绝。
        # 推荐使用中文。最多可传256个 utf-8 字符。
        # @type NegativePrompt: String
        # @param Style: 绘画风格。
        # 请在 [文生图轻量版风格列表](https://cloud.tencent.com/document/product/1729/108992) 中选择期望的风格，传入风格编号。不传默认使用201（日系动漫风格）。
        # @type Style: String
        # @param Resolution: 生成图分辨率。
        # 支持生成以下分辨率的图片：768:768（1:1）、768:1024（3:4）、1024:768（4:3）、1024:1024（1:1）、720:1280（9:16）、1280:720（16:9）、768:1280（3:5）、1280:768（5:3）、1080:1920（9:16）、1920:1080（16:9），不传默认使用768:768。
        # @type Resolution: String
        # @param LogoAdd: 为生成结果图添加标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按0处理。
        # 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Hunyuan.v20230901.models.LogoParam`
        # @param RspImgType: 返回图像方式（base64 或 url) ，二选一，默认为 base64。url 有效期为1小时。
        # @type RspImgType: String

        attr_accessor :Prompt, :NegativePrompt, :Style, :Resolution, :LogoAdd, :LogoParam, :RspImgType

        def initialize(prompt=nil, negativeprompt=nil, style=nil, resolution=nil, logoadd=nil, logoparam=nil, rspimgtype=nil)
          @Prompt = prompt
          @NegativePrompt = negativeprompt
          @Style = style
          @Resolution = resolution
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @NegativePrompt = params['NegativePrompt']
          @Style = params['Style']
          @Resolution = params['Resolution']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @RspImgType = params['RspImgType']
        end
      end

      # TextToImageLite返回参数结构体
      class TextToImageLiteResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 根据入参 RspImgType 填入不同，返回不同的内容。
        # 如果传入 base64 则返回生成图 Base64 编码。
        # 如果传入 url 则返回的生成图 URL , 有效期1小时，请及时保存。
        # @type ResultImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :RequestId

        def initialize(resultimage=nil, requestid=nil)
          @ResultImage = resultimage
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
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

