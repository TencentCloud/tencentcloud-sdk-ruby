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
  module Vms
    module V20200902
      # SendCodeVoice请求参数结构体
      class SendCodeVoiceRequest < TencentCloud::Common::AbstractModel
        # @param CodeMessage: 验证码，仅支持填写数字，实际播报语音时，会自动在数字前补充语音文本"您的验证码是"。
        # @type CodeMessage: String
        # @param CalledNumber: 被叫手机号码，采用 e.164 标准，格式为+[国家或地区码][用户号码]。
        # 例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # @type CalledNumber: String
        # @param VoiceSdkAppid: 在[语音控制台](https://console.cloud.tencent.com/vms)添加应用后生成的实际SdkAppid，示例如1400006666。
        # @type VoiceSdkAppid: String
        # @param PlayTimes: 播放次数，可选，最多3次，默认2次。
        # @type PlayTimes: Integer
        # @param SessionContext: 用户的 session 内容，腾讯 server 回包中会原样返回。
        # @type SessionContext: String

        attr_accessor :CodeMessage, :CalledNumber, :VoiceSdkAppid, :PlayTimes, :SessionContext
        
        def initialize(codemessage=nil, callednumber=nil, voicesdkappid=nil, playtimes=nil, sessioncontext=nil)
          @CodeMessage = codemessage
          @CalledNumber = callednumber
          @VoiceSdkAppid = voicesdkappid
          @PlayTimes = playtimes
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @CodeMessage = params['CodeMessage']
          @CalledNumber = params['CalledNumber']
          @VoiceSdkAppid = params['VoiceSdkAppid']
          @PlayTimes = params['PlayTimes']
          @SessionContext = params['SessionContext']
        end
      end

      # SendCodeVoice返回参数结构体
      class SendCodeVoiceResponse < TencentCloud::Common::AbstractModel
        # @param SendStatus: 语音验证码发送状态。
        # @type SendStatus: :class:`Tencentcloud::Vms.v20200902.models.SendStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SendStatus, :RequestId
        
        def initialize(sendstatus=nil, requestid=nil)
          @SendStatus = sendstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SendStatus'].nil?
            @SendStatus = SendStatus.new
            @SendStatus.deserialize(params['SendStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 语音验证码发送状态
      class SendStatus < TencentCloud::Common::AbstractModel
        # @param CallId: 标识本次发送 ID，标识一次下发记录。
        # @type CallId: String
        # @param SessionContext: 用户的 session 内容，腾讯 server 回包中会原样返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SessionContext: String

        attr_accessor :CallId, :SessionContext
        
        def initialize(callid=nil, sessioncontext=nil)
          @CallId = callid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @CallId = params['CallId']
          @SessionContext = params['SessionContext']
        end
      end

      # SendTtsVoice请求参数结构体
      class SendTtsVoiceRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板 ID，在控制台审核通过的模板 ID。
        # @type TemplateId: String
        # @param CalledNumber: 被叫手机号码，采用 e.164 标准，格式为+[国家或地区码][用户号码]。
        # 例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        # @type CalledNumber: String
        # @param VoiceSdkAppid: 在[语音控制台](https://console.cloud.tencent.com/vms)添加应用后生成的实际SdkAppid，示例如1400006666。
        # @type VoiceSdkAppid: String
        # @param TemplateParamSet: 模板参数，若模板没有参数，请提供为空数组。
        # 注：语音消息的内容长度不超过350字。
        # @type TemplateParamSet: Array
        # @param PlayTimes: 播放次数，可选，最多3次，默认2次。
        # @type PlayTimes: Integer
        # @param SessionContext: 用户的 session 内容，腾讯 server 回包中会原样返回。
        # @type SessionContext: String

        attr_accessor :TemplateId, :CalledNumber, :VoiceSdkAppid, :TemplateParamSet, :PlayTimes, :SessionContext
        
        def initialize(templateid=nil, callednumber=nil, voicesdkappid=nil, templateparamset=nil, playtimes=nil, sessioncontext=nil)
          @TemplateId = templateid
          @CalledNumber = callednumber
          @VoiceSdkAppid = voicesdkappid
          @TemplateParamSet = templateparamset
          @PlayTimes = playtimes
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @CalledNumber = params['CalledNumber']
          @VoiceSdkAppid = params['VoiceSdkAppid']
          @TemplateParamSet = params['TemplateParamSet']
          @PlayTimes = params['PlayTimes']
          @SessionContext = params['SessionContext']
        end
      end

      # SendTtsVoice返回参数结构体
      class SendTtsVoiceResponse < TencentCloud::Common::AbstractModel
        # @param SendStatus: 语音通知发送状态。
        # @type SendStatus: :class:`Tencentcloud::Vms.v20200902.models.SendStatus`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SendStatus, :RequestId
        
        def initialize(sendstatus=nil, requestid=nil)
          @SendStatus = sendstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SendStatus'].nil?
            @SendStatus = SendStatus.new
            @SendStatus.deserialize(params['SendStatus'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

