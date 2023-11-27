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
      # ChatPro请求参数结构体
      class ChatProRequest < TencentCloud::Common::AbstractModel
        # @param Messages: 聊天上下文信息。
        # 说明：
        # 1.长度最多为40, 按对话时间从旧到新在数组中排列。
        # 2.Message的Role当前可选值：user、assistant，其中，user和assistant需要交替出现(一问一答)，最后一个为user提问, 且Content不能为空。
        # 3.Messages中Content总长度不超过16000 token，超过则会截断最前面的内容，只保留尾部内容。建议不超过4000 token。
        # @type Messages: Array
        # @param TopP: 说明：
        # 1.影响输出文本的多样性，取值越大，生成文本的多样性越强。
        # 2.默认1.0，取值区间为[0.0, 1.0]。
        # 3.非必要不建议使用, 不合理的取值会影响效果。
        # @type TopP: Float
        # @param Temperature: 说明：
        # 1.较高的数值会使输出更加随机，而较低的数值会使其更加集中和确定。
        # 2.默认1.0，取值区间为[0.0，2.0]。
        # 3.非必要不建议使用,不合理的取值会影响效果。
        # @type Temperature: Float

        attr_accessor :Messages, :TopP, :Temperature

        def initialize(messages=nil, topp=nil, temperature=nil)
          @Messages = messages
          @TopP = topp
          @Temperature = temperature
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
        end
      end

      # ChatPro返回参数结构体
      class ChatProResponse < TencentCloud::Common::AbstractModel
        # @param Created: unix 时间戳，单位为秒。
        # @type Created: Integer
        # @param Usage: token统计信息。
        # 按照总token数量计费。
        # @type Usage: :class:`Tencentcloud::Hunyuan.v20230901.models.Usage`
        # @param Note: 免责声明。
        # @type Note: String
        # @param Id: 本轮对话的id。
        # @type Id: String
        # @param Choices: 回复内容。
        # @type Choices: Array
        # @param ErrorMsg: 错误信息。
        # 如果流式返回中服务处理异常，返回该错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: :class:`Tencentcloud::Hunyuan.v20230901.models.ErrorMsg`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
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
        # 1.长度最多为40, 按对话时间从旧到新在数组中排列。
        # 2.Message的Role当前可选值：user、assistant，其中，user和assistant需要交替出现(一问一答)，最后一个为user提问, 且Content不能为空。
        # 3.Messages中Content总长度不超过16000 token，超过则会截断最前面的内容，只保留尾部内容。建议不超过4000 token。
        # @type Messages: Array
        # @param TopP: 说明：
        # 1.影响输出文本的多样性，取值越大，生成文本的多样性越强。
        # 2.默认1.0，取值区间为[0.0, 1.0]。
        # 3.非必要不建议使用, 不合理的取值会影响效果。
        # @type TopP: Float
        # @param Temperature: 说明：
        # 1.较高的数值会使输出更加随机，而较低的数值会使其更加集中和确定。
        # 2.默认1.0，取值区间为[0.0，2.0]。
        # 3.非必要不建议使用,不合理的取值会影响效果。
        # @type Temperature: Float

        attr_accessor :Messages, :TopP, :Temperature

        def initialize(messages=nil, topp=nil, temperature=nil)
          @Messages = messages
          @TopP = topp
          @Temperature = temperature
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
        end
      end

      # ChatStd返回参数结构体
      class ChatStdResponse < TencentCloud::Common::AbstractModel
        # @param Created: unix 时间戳，单位为秒。
        # @type Created: Integer
        # @param Usage: token统计信息。
        # 按照总token数量计费。
        # @type Usage: :class:`Tencentcloud::Hunyuan.v20230901.models.Usage`
        # @param Note: 免责声明。
        # @type Note: String
        # @param Id: 本轮对话的id。
        # @type Id: String
        # @param Choices: 回复内容。
        # @type Choices: Array
        # @param ErrorMsg: 错误信息。
        # 如果流式返回中服务处理异常，返回该错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: :class:`Tencentcloud::Hunyuan.v20230901.models.ErrorMsg`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
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
        # @param FinishReason: 流式结束标志位，为 stop 则表示尾包。
        # @type FinishReason: String
        # @param Delta: 返回值。
        # @type Delta: :class:`Tencentcloud::Hunyuan.v20230901.models.Delta`

        attr_accessor :FinishReason, :Delta

        def initialize(finishreason=nil, delta=nil)
          @FinishReason = finishreason
          @Delta = delta
        end

        def deserialize(params)
          @FinishReason = params['FinishReason']
          unless params['Delta'].nil?
            @Delta = Delta.new
            @Delta.deserialize(params['Delta'])
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 会话内容,  按对话时间序排列，长度最多为40
      class Message < TencentCloud::Common::AbstractModel
        # @param Role: 角色
        # @type Role: String
        # @param Content: 消息的内容
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

      # token 数量
      class Usage < TencentCloud::Common::AbstractModel
        # @param PromptTokens: 输入 token 数量。
        # @type PromptTokens: Integer
        # @param CompletionTokens: 输出 token 数量。
        # @type CompletionTokens: Integer
        # @param TotalTokens: 总 token 数量。
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

