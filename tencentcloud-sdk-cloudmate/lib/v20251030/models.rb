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
  module Cloudmate
    module V20251030
      # 智能诊断结果内容结构
      class ChatContent < TencentCloud::Common::AbstractModel
        # @param Role: 角色，可选值：
        #  - user
        #  - model_thinking
        #  - model_output
        #  - knowledge
        # @type Role: String
        # @param Parts: 内容分片
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Parts: Array

        attr_accessor :Role, :Parts

        def initialize(role=nil, parts=nil)
          @Role = role
          @Parts = parts
        end

        def deserialize(params)
          @Role = params['Role']
          unless params['Parts'].nil?
            @Parts = []
            params['Parts'].each do |i|
              chateventcontentpart_tmp = ChatEventContentPart.new
              chateventcontentpart_tmp.deserialize(i)
              @Parts << chateventcontentpart_tmp
            end
          end
        end
      end

      # 智能诊断时间内容分片结构
      class ChatEventContentPart < TencentCloud::Common::AbstractModel
        # @param Text: 文本内容（流式或完整）
        # @type Text: String
        # @param FunctionCall: 函数调用信息
        # @type FunctionCall: String
        # @param FunctionResponse: 函数返回结果
        # @type FunctionResponse: String

        attr_accessor :Text, :FunctionCall, :FunctionResponse

        def initialize(text=nil, functioncall=nil, functionresponse=nil)
          @Text = text
          @FunctionCall = functioncall
          @FunctionResponse = functionresponse
        end

        def deserialize(params)
          @Text = params['Text']
          @FunctionCall = params['FunctionCall']
          @FunctionResponse = params['FunctionResponse']
        end
      end

      # CloudMateAgent请求参数结构体
      class CloudMateAgentRequest < TencentCloud::Common::AbstractModel
        # @param WorkspaceId: 空间 ID
        # @type WorkspaceId: String
        # @param Message: 用户提问内容
        # @type Message: String
        # @param ScenarioId: 场景 ID
        # @type ScenarioId: String
        # @param SessionId: 会话 ID

        # - 填写上一次接口调用返回的会话 ID（SessionId），可在原有会话基础上继续对话
        # - 未填写会话 ID 时，创建新会话
        # @type SessionId: String
        # @param Streaming: 是否使用流式响应，默认为 false，不启用流式响应
        # @type Streaming: Boolean

        attr_accessor :WorkspaceId, :Message, :ScenarioId, :SessionId, :Streaming

        def initialize(workspaceid=nil, message=nil, scenarioid=nil, sessionid=nil, streaming=nil)
          @WorkspaceId = workspaceid
          @Message = message
          @ScenarioId = scenarioid
          @SessionId = sessionid
          @Streaming = streaming
        end

        def deserialize(params)
          @WorkspaceId = params['WorkspaceId']
          @Message = params['Message']
          @ScenarioId = params['ScenarioId']
          @SessionId = params['SessionId']
          @Streaming = params['Streaming']
        end
      end

      # CloudMateAgent返回参数结构体
      class CloudMateAgentResponse < TencentCloud::Common::AbstractModel
        # @param SessionId: 会话ID，用于后续继续对话
        # @type SessionId: String
        # @param Timestamp: Unix 时间戳
        # @type Timestamp: Integer
        # @param Content: 诊断内容
        # @type Content: :class:`Tencentcloud::Cloudmate.v20251030.models.ChatContent`
        # @param Partial: 是否为部分内容（流式场景）
        # @type Partial: Boolean
        # @param TurnComplete: 本轮对话是否完成
        # @type TurnComplete: Boolean
        # @param ErrorCode: 错误代码，无错误时无该字段
        # @type ErrorCode: String
        # @param ErrorMessage: 错误详细信息，无错误时无该字段
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :SessionId, :Timestamp, :Content, :Partial, :TurnComplete, :ErrorCode, :ErrorMessage, :RequestId

        def initialize(sessionid=nil, timestamp=nil, content=nil, partial=nil, turncomplete=nil, errorcode=nil, errormessage=nil, requestid=nil)
          @SessionId = sessionid
          @Timestamp = timestamp
          @Content = content
          @Partial = partial
          @TurnComplete = turncomplete
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @Timestamp = params['Timestamp']
          unless params['Content'].nil?
            @Content = ChatContent.new
            @Content.deserialize(params['Content'])
          end
          @Partial = params['Partial']
          @TurnComplete = params['TurnComplete']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

