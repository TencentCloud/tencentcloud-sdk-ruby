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
    module V20190627
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

      # 从TBP-RTS服务v1.3版本起，机器人以消息组列表的形式响应，消息组列表GroupList包含多组消息，用户根据需要对部分或全部消息组进行组合使用。
      class ResponseMessage < TencentCloud::Common::AbstractModel
        # @param GroupList: 消息组列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupList: Array

        attr_accessor :GroupList
        
        def initialize(grouplist=nil)
          @GroupList = grouplist
        end

        def deserialize(params)
          @GroupList = params['GroupList']
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
        # @param BotEnv: 机器人版本，取值"dev"或"release"，{调试版本：dev；线上版本：release}。
        # @type BotEnv: String
        # @param TerminalId: 终端标识，每个终端(或线程)对应一个，区分并发多用户。
        # @type TerminalId: String
        # @param InputText: 请求的文本。
        # @type InputText: String
        # @param SessionAttributes: 透传字段，透传给用户自定义的WebService服务。
        # @type SessionAttributes: String
        # @param PlatformType: 平台类型，{小程序：MiniProgram；小微：XiaoWei；公众号：OfficialAccount；企业微信: WXWork}。
        # @type PlatformType: String
        # @param PlatformId: 当PlatformType为微信公众号或企业微信时，传递对应微信公众号或企业微信的唯一标识
        # @type PlatformId: String

        attr_accessor :BotId, :BotEnv, :TerminalId, :InputText, :SessionAttributes, :PlatformType, :PlatformId
        
        def initialize(botid=nil, botenv=nil, terminalid=nil, inputtext=nil, sessionattributes=nil, platformtype=nil, platformid=nil)
          @BotId = botid
          @BotEnv = botenv
          @TerminalId = terminalid
          @InputText = inputtext
          @SessionAttributes = sessionattributes
          @PlatformType = platformtype
          @PlatformId = platformid
        end

        def deserialize(params)
          @BotId = params['BotId']
          @BotEnv = params['BotEnv']
          @TerminalId = params['TerminalId']
          @InputText = params['InputText']
          @SessionAttributes = params['SessionAttributes']
          @PlatformType = params['PlatformType']
          @PlatformId = params['PlatformId']
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
        # @param ResponseMessage: 机器人应答。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseMessage: :class:`Tencentcloud::Tbp.v20190627.models.ResponseMessage`
        # @param SessionAttributes: 透传字段，由用户自定义的WebService服务返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionAttributes: String
        # @param ResultType: 结果类型 {中间逻辑出错:0; 任务型机器人:1; 问答型机器人:2; 闲聊型机器人:3; 未匹配上，返回预设兜底话术:5; 未匹配上，返回相似问题列表:6}。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DialogStatus, :BotName, :IntentName, :SlotInfoList, :InputText, :ResponseMessage, :SessionAttributes, :ResultType, :RequestId
        
        def initialize(dialogstatus=nil, botname=nil, intentname=nil, slotinfolist=nil, inputtext=nil, responsemessage=nil, sessionattributes=nil, resulttype=nil, requestid=nil)
          @DialogStatus = dialogstatus
          @BotName = botname
          @IntentName = intentname
          @SlotInfoList = slotinfolist
          @InputText = inputtext
          @ResponseMessage = responsemessage
          @SessionAttributes = sessionattributes
          @ResultType = resulttype
          @RequestId = requestid
        end

        def deserialize(params)
          @DialogStatus = params['DialogStatus']
          @BotName = params['BotName']
          @IntentName = params['IntentName']
          @SlotInfoList = params['SlotInfoList']
          @InputText = params['InputText']
          unless params['ResponseMessage'].nil?
            @ResponseMessage = ResponseMessage.new.deserialize(params[ResponseMessage])
          end
          @SessionAttributes = params['SessionAttributes']
          @ResultType = params['ResultType']
          @RequestId = params['RequestId']
        end
      end

      # TextReset请求参数结构体
      class TextResetRequest < TencentCloud::Common::AbstractModel
        # @param BotId: 机器人标识，用于定义抽象机器人。
        # @type BotId: String
        # @param BotEnv: 机器人版本，取值"dev"或"release"，{调试版本：dev；线上版本：release}。
        # @type BotEnv: String
        # @param TerminalId: 终端标识，每个终端(或线程)对应一个，区分并发多用户。
        # @type TerminalId: String
        # @param PlatformType: 平台类型，{小程序：MiniProgram；小微：XiaoWei；公众号：OfficialAccount；企业微信: WXWork}。
        # @type PlatformType: String
        # @param PlatformId: 当PlatformType为微信公众号或企业微信时，传递对应微信公众号或企业微信的唯一标识
        # @type PlatformId: String

        attr_accessor :BotId, :BotEnv, :TerminalId, :PlatformType, :PlatformId
        
        def initialize(botid=nil, botenv=nil, terminalid=nil, platformtype=nil, platformid=nil)
          @BotId = botid
          @BotEnv = botenv
          @TerminalId = terminalid
          @PlatformType = platformtype
          @PlatformId = platformid
        end

        def deserialize(params)
          @BotId = params['BotId']
          @BotEnv = params['BotEnv']
          @TerminalId = params['TerminalId']
          @PlatformType = params['PlatformType']
          @PlatformId = params['PlatformId']
        end
      end

      # TextReset返回参数结构体
      class TextResetResponse < TencentCloud::Common::AbstractModel
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
        # @param ResponseMessage: 机器人应答。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseMessage: :class:`Tencentcloud::Tbp.v20190627.models.ResponseMessage`
        # @param SessionAttributes: 透传字段，由用户自定义的WebService服务返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionAttributes: String
        # @param ResultType: 结果类型 {中间逻辑出错:0; 任务型机器人:1; 问答型机器人:2; 闲聊型机器人:3; 未匹配上，返回预设兜底话术:5; 未匹配上，返回相似问题列表:6}。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DialogStatus, :BotName, :IntentName, :SlotInfoList, :InputText, :ResponseMessage, :SessionAttributes, :ResultType, :RequestId
        
        def initialize(dialogstatus=nil, botname=nil, intentname=nil, slotinfolist=nil, inputtext=nil, responsemessage=nil, sessionattributes=nil, resulttype=nil, requestid=nil)
          @DialogStatus = dialogstatus
          @BotName = botname
          @IntentName = intentname
          @SlotInfoList = slotinfolist
          @InputText = inputtext
          @ResponseMessage = responsemessage
          @SessionAttributes = sessionattributes
          @ResultType = resulttype
          @RequestId = requestid
        end

        def deserialize(params)
          @DialogStatus = params['DialogStatus']
          @BotName = params['BotName']
          @IntentName = params['IntentName']
          @SlotInfoList = params['SlotInfoList']
          @InputText = params['InputText']
          unless params['ResponseMessage'].nil?
            @ResponseMessage = ResponseMessage.new.deserialize(params[ResponseMessage])
          end
          @SessionAttributes = params['SessionAttributes']
          @ResultType = params['ResultType']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

