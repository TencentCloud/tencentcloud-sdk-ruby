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
  module Tbp
    module V20190311
      # CreateBot请求参数结构体
      class CreateBotRequest < TencentCloud::Common::AbstractModel
        # @param BotName: 机器人名称
        # @type BotName: String
        # @param BotCnName: 机器人中文名称
        # @type BotCnName: String

        attr_accessor :BotName, :BotCnName

        def initialize(botname=nil, botcnname=nil)
          @BotName = botname
          @BotCnName = botcnname
        end

        def deserialize(params)
          @BotName = params['BotName']
          @BotCnName = params['BotCnName']
        end
      end

      # CreateBot返回参数结构体
      class CreateBotResponse < TencentCloud::Common::AbstractModel
        # @param TaskRequestId: 任务ID
        # @type TaskRequestId: String
        # @param Msg: 任务信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskRequestId, :Msg, :RequestId

        def initialize(taskrequestid=nil, msg=nil, requestid=nil)
          @TaskRequestId = taskrequestid
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskRequestId = params['TaskRequestId']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # Group是消息组的具体定义，当前包含ContentType、Url、Content三个字段。其中，具体的ContentType字段定义，参考互联网MIME类型标准。
      class Group < TencentCloud::Common::AbstractModel
        # @param ContentType: 消息类型参考互联网MIME类型标准，当前仅支持"text/plain"。
        # @type ContentType: String
        # @param Url: 返回内容以链接形式提供。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param Content: 普通文本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String

        attr_accessor :ContentType, :Url, :Content

        def initialize(contenttype=nil, url=nil, content=nil)
          @ContentType = contenttype
          @Url = url
          @Content = content
        end

        def deserialize(params)
          @ContentType = params['ContentType']
          @Url = params['Url']
          @Content = params['Content']
        end
      end

      # Reset请求参数结构体
      class ResetRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 机器人标识
        # @type BotId: String
        # @param UserId: 子账户id，每个终端对应一个
        # @type UserId: String
        # @param BotVersion: 机器人版本号。BotVersion/BotEnv二选一：二者均填，仅BotVersion有效；二者均不填，默认BotEnv=dev
        # @type BotVersion: String
        # @param BotEnv: 机器人环境{dev:测试;release:线上}。BotVersion/BotEnv二选一：二者均填，仅BotVersion有效；二者均不填，默认BotEnv=dev
        # @type BotEnv: String

        attr_accessor :BotId, :UserId, :BotVersion, :BotEnv

        def initialize(botid=nil, userid=nil, botversion=nil, botenv=nil)
          @BotId = botid
          @UserId = userid
          @BotVersion = botversion
          @BotEnv = botenv
        end

        def deserialize(params)
          @BotId = params['BotId']
          @UserId = params['UserId']
          @BotVersion = params['BotVersion']
          @BotEnv = params['BotEnv']
        end
      end

      # Reset返回参数结构体
      class ResetResponse < TencentCloud::Common::AbstractModel
        # @param DialogStatus: 当前会话状态。取值:"start"/"continue"/"complete"
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DialogStatus: String
        # @param BotName: 匹配到的机器人名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotName: String
        # @param IntentName: 匹配到的意图名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentName: String
        # @param ResponseText: 机器人回答
        # @type ResponseText: String
        # @param SlotInfoList: 语义解析的槽位结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlotInfoList: Array
        # @param SessionAttributes: 透传字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionAttributes: String
        # @param Question: 用户说法。该说法是用户原生说法或ASR识别结果，未经过语义优化
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Question: String
        # @param WaveUrl: tts合成pcm音频存储链接。仅当请求参数NeedTts=true时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaveUrl: String
        # @param WaveData: tts合成的pcm音频。二进制数组经过base64编码(暂时不返回)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WaveData: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DialogStatus, :BotName, :IntentName, :ResponseText, :SlotInfoList, :SessionAttributes, :Question, :WaveUrl, :WaveData, :RequestId

        def initialize(dialogstatus=nil, botname=nil, intentname=nil, responsetext=nil, slotinfolist=nil, sessionattributes=nil, question=nil, waveurl=nil, wavedata=nil, requestid=nil)
          @DialogStatus = dialogstatus
          @BotName = botname
          @IntentName = intentname
          @ResponseText = responsetext
          @SlotInfoList = slotinfolist
          @SessionAttributes = sessionattributes
          @Question = question
          @WaveUrl = waveurl
          @WaveData = wavedata
          @RequestId = requestid
        end

        def deserialize(params)
          @DialogStatus = params['DialogStatus']
          @BotName = params['BotName']
          @IntentName = params['IntentName']
          @ResponseText = params['ResponseText']
          unless params['SlotInfoList'].nil?
            @SlotInfoList = []
            params['SlotInfoList'].each do |i|
              slotinfo_tmp = SlotInfo.new
              slotinfo_tmp.deserialize(i)
              @SlotInfoList << slotinfo_tmp
            end
          end
          @SessionAttributes = params['SessionAttributes']
          @Question = params['Question']
          @WaveUrl = params['WaveUrl']
          @WaveData = params['WaveData']
          @RequestId = params['RequestId']
        end
      end

      # 从TBP-RTS服务v1.3版本起，机器人以消息组列表的形式响应，消息组列表GroupList包含多组消息，用户根据需要对部分或全部消息组进行组合使用。
      class ResponseMessage < TencentCloud::Common::AbstractModel
        # @param GroupList: 消息组列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupList: :class:`Tencentcloud::Tbp.v20190311.models.Group`

        attr_accessor :GroupList

        def initialize(grouplist=nil)
          @GroupList = grouplist
        end

        def deserialize(params)
          unless params['GroupList'].nil?
            @GroupList = Group.new
            @GroupList.deserialize(params['GroupList'])
          end
        end
      end

      # 槽位信息
      class SlotInfo < TencentCloud::Common::AbstractModel
        # @param SlotName: 槽位名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlotName: String
        # @param SlotValue: 槽位值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlotValue: String

        attr_accessor :SlotName, :SlotValue

        def initialize(slotname=nil, slotvalue=nil)
          @SlotName = slotname
          @SlotValue = slotvalue
        end

        def deserialize(params)
          @SlotName = params['SlotName']
          @SlotValue = params['SlotValue']
        end
      end

      # TextProcess请求参数结构体
      class TextProcessRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 机器人标识，用于定义抽象机器人。
        # @type BotId: String
        # @param TerminalId: 终端标识，每个终端(或线程)对应一个，区分并发多用户。
        # @type TerminalId: String
        # @param InputText: 请求的文本。
        # @type InputText: String
        # @param BotEnv: 机器人版本，取值"dev"或"release"，{调试版本：dev；线上版本：release}。
        # @type BotEnv: String
        # @param SessionAttributes: 透传字段，透传给用户自定义的WebService服务。
        # @type SessionAttributes: String

        attr_accessor :BotId, :TerminalId, :InputText, :BotEnv, :SessionAttributes

        def initialize(botid=nil, terminalid=nil, inputtext=nil, botenv=nil, sessionattributes=nil)
          @BotId = botid
          @TerminalId = terminalid
          @InputText = inputtext
          @BotEnv = botenv
          @SessionAttributes = sessionattributes
        end

        def deserialize(params)
          @BotId = params['BotId']
          @TerminalId = params['TerminalId']
          @InputText = params['InputText']
          @BotEnv = params['BotEnv']
          @SessionAttributes = params['SessionAttributes']
        end
      end

      # TextProcess返回参数结构体
      class TextProcessResponse < TencentCloud::Common::AbstractModel
        # @param DialogStatus: 当前会话状态{会话开始: START; 会话中: COUTINUE; 会话结束: COMPLETE}。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DialogStatus: String
        # @param BotName: 匹配到的机器人名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotName: String
        # @param IntentName: 匹配到的意图名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentName: String
        # @param SlotInfoList: 槽位信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlotInfoList: Array
        # @param InputText: 原始的用户说法。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputText: String
        # @param SessionAttributes: 透传字段，由用户自定义的WebService服务返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionAttributes: String
        # @param ResponseText: 机器人对话的应答文本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseText: String
        # @param ResponseMessage: 机器人应答。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseMessage: :class:`Tencentcloud::Tbp.v20190311.models.ResponseMessage`
        # @param ResultType: 结果类型 {中间逻辑出错:0; 任务型机器人:1; 问答型机器人:2; 闲聊型机器人:3; 未匹配上，返回预设兜底话术:5; 未匹配上，返回相似问题列表:6}。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DialogStatus, :BotName, :IntentName, :SlotInfoList, :InputText, :SessionAttributes, :ResponseText, :ResponseMessage, :ResultType, :RequestId

        def initialize(dialogstatus=nil, botname=nil, intentname=nil, slotinfolist=nil, inputtext=nil, sessionattributes=nil, responsetext=nil, responsemessage=nil, resulttype=nil, requestid=nil)
          @DialogStatus = dialogstatus
          @BotName = botname
          @IntentName = intentname
          @SlotInfoList = slotinfolist
          @InputText = inputtext
          @SessionAttributes = sessionattributes
          @ResponseText = responsetext
          @ResponseMessage = responsemessage
          @ResultType = resulttype
          @RequestId = requestid
        end

        def deserialize(params)
          @DialogStatus = params['DialogStatus']
          @BotName = params['BotName']
          @IntentName = params['IntentName']
          unless params['SlotInfoList'].nil?
            @SlotInfoList = []
            params['SlotInfoList'].each do |i|
              slotinfo_tmp = SlotInfo.new
              slotinfo_tmp.deserialize(i)
              @SlotInfoList << slotinfo_tmp
            end
          end
          @InputText = params['InputText']
          @SessionAttributes = params['SessionAttributes']
          @ResponseText = params['ResponseText']
          unless params['ResponseMessage'].nil?
            @ResponseMessage = ResponseMessage.new
            @ResponseMessage.deserialize(params['ResponseMessage'])
          end
          @ResultType = params['ResultType']
          @RequestId = params['RequestId']
        end
      end

      # TextReset请求参数结构体
      class TextResetRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 机器人标识，用于定义抽象机器人。
        # @type BotId: String
        # @param TerminalId: 终端标识，每个终端(或线程)对应一个，区分并发多用户。
        # @type TerminalId: String
        # @param BotEnv: 机器人版本，取值"dev"或"release"，{调试版本：dev；线上版本：release}。
        # @type BotEnv: String

        attr_accessor :BotId, :TerminalId, :BotEnv

        def initialize(botid=nil, terminalid=nil, botenv=nil)
          @BotId = botid
          @TerminalId = terminalid
          @BotEnv = botenv
        end

        def deserialize(params)
          @BotId = params['BotId']
          @TerminalId = params['TerminalId']
          @BotEnv = params['BotEnv']
        end
      end

      # TextReset返回参数结构体
      class TextResetResponse < TencentCloud::Common::AbstractModel
        # @param DialogStatus: 当前会话状态，取值："START"/"COUTINUE"/"COMPLETE"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DialogStatus: String
        # @param BotName: 匹配到的机器人名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BotName: String
        # @param IntentName: 匹配到的意图名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IntentName: String
        # @param SlotInfoList: 槽位信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SlotInfoList: Array
        # @param InputText: 原始的用户说法。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InputText: String
        # @param SessionAttributes: 透传字段，由用户自定义的WebService服务返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionAttributes: String
        # @param ResponseText: 机器人对话的应答文本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseText: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DialogStatus, :BotName, :IntentName, :SlotInfoList, :InputText, :SessionAttributes, :ResponseText, :RequestId

        def initialize(dialogstatus=nil, botname=nil, intentname=nil, slotinfolist=nil, inputtext=nil, sessionattributes=nil, responsetext=nil, requestid=nil)
          @DialogStatus = dialogstatus
          @BotName = botname
          @IntentName = intentname
          @SlotInfoList = slotinfolist
          @InputText = inputtext
          @SessionAttributes = sessionattributes
          @ResponseText = responsetext
          @RequestId = requestid
        end

        def deserialize(params)
          @DialogStatus = params['DialogStatus']
          @BotName = params['BotName']
          @IntentName = params['IntentName']
          unless params['SlotInfoList'].nil?
            @SlotInfoList = []
            params['SlotInfoList'].each do |i|
              slotinfo_tmp = SlotInfo.new
              slotinfo_tmp.deserialize(i)
              @SlotInfoList << slotinfo_tmp
            end
          end
          @InputText = params['InputText']
          @SessionAttributes = params['SessionAttributes']
          @ResponseText = params['ResponseText']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

