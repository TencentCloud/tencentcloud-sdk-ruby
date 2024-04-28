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
        # @param Model: 模型名称，可选值包括 hunyuan-lite、hunyuan-standard、hunyuan-pro。
        # 各模型介绍请阅读 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 中的说明。

        # 注意：
        # 不同的模型计费不同，请根据 [购买指南](https://cloud.tencent.com/document/product/1729/97731) 按需调用。
        # @type Model: String
        # @param Messages: 聊天上下文信息。
        # 说明：
        # 1. 长度最多为 40，按对话时间从旧到新在数组中排列。
        # 2. Message.Role 可选值：system、user、assistant。
        # 其中，system 角色可选，如存在则必须位于列表的最开始。user 和 assistant 需交替出现（一问一答），以 user 提问开始和结束，且 Content 不能为空。Role 的顺序示例：[system（可选） user assistant user assistant user ...]。
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
        # 2. 默认 1.0，取值区间为 [0.0, 1.0]。
        # 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type TopP: Float
        # @param Temperature: 说明：
        # 1. 较高的数值会使输出更加随机，而较低的数值会使其更加集中和确定。
        # 2. 默认 1.0，取值区间为 [0.0, 2.0]。
        # 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type Temperature: Float

        attr_accessor :Model, :Messages, :Stream, :StreamModeration, :TopP, :Temperature

        def initialize(model=nil, messages=nil, stream=nil, streammoderation=nil, topp=nil, temperature=nil)
          @Model = model
          @Messages = messages
          @Stream = stream
          @StreamModeration = streammoderation
          @TopP = topp
          @Temperature = temperature
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

      # ChatPro请求参数结构体
      class ChatProRequest < TencentCloud::Common::AbstractModel
        # @param Messages: 聊天上下文信息。
        # 说明：
        # 1. 长度最多为 40，按对话时间从旧到新在数组中排列。
        # 2. Message.Role 可选值：system、user、assistant。
        # 其中，system 角色可选，如存在则必须位于列表的最开始。user 和 assistant 需交替出现（一问一答），以 user 提问开始和结束，且 Content 不能为空。Role 的顺序示例：[system（可选） user assistant user assistant user ...]。
        # 3. Messages 中 Content 总长度不能超过 hunyuan-pro 模型输入长度上限（可参考 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 文档），超过则会截断最前面的内容，只保留尾部内容。
        # @type Messages: Array
        # @param TopP: 说明：
        # 1. 影响输出文本的多样性，取值越大，生成文本的多样性越强。
        # 2. 默认 1.0，取值区间为 [0.0, 1.0]。
        # 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type TopP: Float
        # @param Temperature: 说明：
        # 1. 较高的数值会使输出更加随机，而较低的数值会使其更加集中和确定。
        # 2. 默认 1.0，取值区间为 [0.0, 2.0]。
        # 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type Temperature: Float
        # @param Stream: 流式调用开关。
        # 说明：
        # 1. 未传值时默认为流式调用。
        # 2. 流式调用时以 SSE 协议增量返回结果。
        # 3. 非流式调用时接口响应耗时较长，非必要不建议使用。
        # 4. 非流式调用时只返回一次最终结果，调用方式与普通 HTTP 请求无异。

        # 注意：
        # 通过 SDK 调用时，流式和非流式调用需要用**不同的方式**获取返回值，具体参考 SDK 中的注释或示例（在各语言 SDK 代码仓库的 examples/hunyuan/v20230901/ 目录中）。
        # @type Stream: Boolean
        # @param StreamModeration: 流式输出审核开关。
        # 说明：
        # 1. 输出审核有流式和同步两种模式，**流式模式首包响应更快**。
        # 2. 当使用流式输出（Stream 字段值为 true）时，该字段生效。
        # 3. 如果值为 true，将对输出内容进行分段审核，审核通过的内容流式输出返回。如果出现审核不过，响应中的 FinishReason 值为 sensitive。
        # 4. 如果未传值或值为 false，则不使用流式输出审核，需要审核完所有输出内容后再返回结果。

        # 注意：
        # 当选择流式输出审核时，可能会出现部分内容已输出，但中间某一段响应中的 FinishReason 值为 sensitive，此时说明安全审核未通过。如果业务场景有实时文字上屏的需求，需要自行撤回已上屏的内容，并建议自定义替换为一条提示语，如 “这个问题我不方便回答，不如我们换个话题试试”，以保障终端体验。
        # @type StreamModeration: Boolean

        attr_accessor :Messages, :TopP, :Temperature, :Stream, :StreamModeration

        def initialize(messages=nil, topp=nil, temperature=nil, stream=nil, streammoderation=nil)
          @Messages = messages
          @TopP = topp
          @Temperature = temperature
          @Stream = stream
          @StreamModeration = streammoderation
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
          @TopP = params['TopP']
          @Temperature = params['Temperature']
          @Stream = params['Stream']
          @StreamModeration = params['StreamModeration']
        end
      end

      # ChatPro返回参数结构体
      class ChatProResponse < TencentCloud::Common::AbstractModel
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

      # ChatStd请求参数结构体
      class ChatStdRequest < TencentCloud::Common::AbstractModel
        # @param Messages: 聊天上下文信息。
        # 说明：
        # 1. 长度最多为 40，按对话时间从旧到新在数组中排列。
        # 2. Message 的 Role 当前可选值：user、assistant。
        # 其中，user 和 assistant 需交替出现（一问一答），以 user 提问开始和结束，且 Content 不能为空。Role 的顺序示例：[user assistant user assistant user ...]。
        # 3. Messages 中 Content 总长度不能超过 hunyuan-standard 模型输入长度上限（可参考 [产品概述](https://cloud.tencent.com/document/product/1729/104753) 文档），超过则会截断最前面的内容，只保留尾部内容。
        # @type Messages: Array
        # @param TopP: 说明：
        # 1. 影响输出文本的多样性，取值越大，生成文本的多样性越强。
        # 2. 默认 1.0，取值区间为 [0.0, 1.0]。
        # 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type TopP: Float
        # @param Temperature: 说明：
        # 1. 较高的数值会使输出更加随机，而较低的数值会使其更加集中和确定。
        # 2. 默认 1.0，取值区间为 [0.0, 2.0]。
        # 3. 非必要不建议使用，不合理的取值会影响效果。
        # @type Temperature: Float
        # @param Stream: 流式调用开关。
        # 说明：
        # 1. 未传值时默认为流式调用。
        # 2. 流式调用时以 SSE 协议增量返回结果。
        # 3. 非流式调用时接口响应耗时较长，非必要不建议使用。
        # 4. 非流式调用时只返回一次最终结果，调用方式与普通 HTTP 请求无异。

        # 注意：
        # 通过 SDK 调用时，流式和非流式调用需要用**不同的方式**获取返回值，具体参考 SDK 中的注释或示例（在各语言 SDK 代码仓库的 examples/hunyuan/v20230901/ 目录中）。
        # @type Stream: Boolean
        # @param StreamModeration: 流式输出审核开关。
        # 说明：
        # 1. 输出审核有流式和同步两种模式，**流式模式首包响应更快**。
        # 2. 当使用流式输出（Stream 字段值为 true）时，该字段生效。
        # 3. 如果值为 true，将对输出内容进行分段审核，审核通过的内容流式输出返回。如果出现审核不过，响应中的 FinishReason 值为 sensitive。
        # 4. 如果未传值或值为 false，则不使用流式输出审核，需要审核完所有输出内容后再返回结果。

        # 注意：
        # 当选择流式输出审核时，可能会出现部分内容已输出，但中间某一段响应中的 FinishReason 值为 sensitive，此时说明安全审核未通过。如果业务场景有实时文字上屏的需求，需要自行撤回已上屏的内容，并建议自定义替换为一条提示语，如 “这个问题我不方便回答，不如我们换个话题试试”，以保障终端体验。
        # @type StreamModeration: Boolean

        attr_accessor :Messages, :TopP, :Temperature, :Stream, :StreamModeration

        def initialize(messages=nil, topp=nil, temperature=nil, stream=nil, streammoderation=nil)
          @Messages = messages
          @TopP = topp
          @Temperature = temperature
          @Stream = stream
          @StreamModeration = streammoderation
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
          @TopP = params['TopP']
          @Temperature = params['Temperature']
          @Stream = params['Stream']
          @StreamModeration = params['StreamModeration']
        end
      end

      # ChatStd返回参数结构体
      class ChatStdResponse < TencentCloud::Common::AbstractModel
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

      # 返回的内容（流式返回）
      class Delta < TencentCloud::Common::AbstractModel
        # @param Role: 角色名称。
        # @type Role: String
        # @param Content: 内容详情。
        # @type Content: String

        attr_accessor :Role, :Content

        def initialize(role=nil, content=nil)
          @Role = role
          @Content = content
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
        end
      end

      # Embedding 信息。
      class EmbeddingData < TencentCloud::Common::AbstractModel
        # @param Embedding: embedding 信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Embedding: Array
        # @param Index: 下标。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Index: Integer
        # @param Object: embedding
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

      # 单条消息
      class Message < TencentCloud::Common::AbstractModel
        # @param Role: 角色
        # @type Role: String
        # @param Content: 文本内容
        # @type Content: String

        attr_accessor :Role, :Content

        def initialize(role=nil, content=nil)
          @Role = role
          @Content = content
        end

        def deserialize(params)
          @Role = params['Role']
          @Content = params['Content']
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

