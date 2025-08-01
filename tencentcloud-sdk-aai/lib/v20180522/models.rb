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
  module Aai
    module V20180522
      # Chat请求参数结构体
      class ChatRequest < TencentCloud::Common::AbstractModel
        # @param Text: 聊天输入文本
        # @type Text: String
        # @param ProjectId: 腾讯云项目 ID，可填 0，总长度不超过 1024 字节。
        # @type ProjectId: Integer
        # @param User: json格式，比如 {"id":"test","gender":"male"}。记录当前与机器人交互的用户id，非必须但强烈建议传入，否则多轮聊天功能会受影响
        # @type User: String

        attr_accessor :Text, :ProjectId, :User

        def initialize(text=nil, projectid=nil, user=nil)
          @Text = text
          @ProjectId = projectid
          @User = user
        end

        def deserialize(params)
          @Text = params['Text']
          @ProjectId = params['ProjectId']
          @User = params['User']
        end
      end

      # Chat返回参数结构体
      class ChatResponse < TencentCloud::Common::AbstractModel
        # @param Answer: 聊天输出文本
        # @type Answer: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Answer, :RequestId

        def initialize(answer=nil, requestid=nil)
          @Answer = answer
          @RequestId = requestid
        end

        def deserialize(params)
          @Answer = params['Answer']
          @RequestId = params['RequestId']
        end
      end

      # SentenceRecognition请求参数结构体
      class SentenceRecognitionRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 腾讯云项目 ID，可填 0，总长度不超过 1024 字节。
        # @type ProjectId: Integer
        # @param SubServiceType: 子服务类型。2，一句话识别。
        # @type SubServiceType: Integer
        # @param EngSerViceType: 引擎类型。8k：电话 8k 通用模型；16k：16k 通用模型。只支持单声道音频识别。
        # @type EngSerViceType: String
        # @param SourceType: 语音数据来源。0：语音 URL；1：语音数据（post body）。
        # @type SourceType: Integer
        # @param VoiceFormat: 识别音频的音频格式（支持mp3,wav）。
        # @type VoiceFormat: String
        # @param UsrAudioKey: 用户端对此任务的唯一标识，用户自助生成，用于用户查找识别结果。
        # @type UsrAudioKey: String
        # @param Url: 语音 URL，公网可下载。当 SourceType 值为 0 时须填写该字段，为 1 时不填；URL 的长度大于 0，小于 2048，需进行urlencode编码。音频时间长度要小于60s。
        # @type Url: String
        # @param Data: 语音数据，当SourceType 值为1时必须填写，为0可不写。要base64编码(采用python语言时注意读取文件应该为string而不是byte，以byte格式读取后要decode()。编码后的数据不可带有回车换行符)。音频数据要小于600kB。
        # @type Data: String
        # @param DataLen: 数据长度，当 SourceType 值为1时必须填写，为0可不写（此数据长度为数据未进行base64编码时的数据长度）。
        # @type DataLen: Integer

        attr_accessor :ProjectId, :SubServiceType, :EngSerViceType, :SourceType, :VoiceFormat, :UsrAudioKey, :Url, :Data, :DataLen

        def initialize(projectid=nil, subservicetype=nil, engservicetype=nil, sourcetype=nil, voiceformat=nil, usraudiokey=nil, url=nil, data=nil, datalen=nil)
          @ProjectId = projectid
          @SubServiceType = subservicetype
          @EngSerViceType = engservicetype
          @SourceType = sourcetype
          @VoiceFormat = voiceformat
          @UsrAudioKey = usraudiokey
          @Url = url
          @Data = data
          @DataLen = datalen
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SubServiceType = params['SubServiceType']
          @EngSerViceType = params['EngSerViceType']
          @SourceType = params['SourceType']
          @VoiceFormat = params['VoiceFormat']
          @UsrAudioKey = params['UsrAudioKey']
          @Url = params['Url']
          @Data = params['Data']
          @DataLen = params['DataLen']
        end
      end

      # SentenceRecognition返回参数结构体
      class SentenceRecognitionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 识别结果。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # SimultaneousInterpreting请求参数结构体
      class SimultaneousInterpretingRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 腾讯云项目 ID，可填 0，总长度不超过 1024 字节。
        # @type ProjectId: Integer
        # @param SubServiceType: 子服务类型。0：离线语音识别。1：实时流式识别，2，一句话识别。3：同传。
        # @type SubServiceType: Integer
        # @param RecEngineModelType: 识别引擎类型。8k_zh： 8k 中文会场模型；16k_zh：16k 中文会场模型，8k_en： 8k 英文会场模型；16k_en：16k 英文会场模型。当前仅支持16K。
        # @type RecEngineModelType: String
        # @param Data: 语音数据，要base64编码。
        # @type Data: String
        # @param DataLen: 数据长度。
        # @type DataLen: Integer
        # @param VoiceId: 声音id，标识一句话。
        # @type VoiceId: String
        # @param IsEnd: 是否是一句话的结束。
        # @type IsEnd: Integer
        # @param VoiceFormat: 声音编码的格式1:pcm，4:speex，6:silk，默认为1。
        # @type VoiceFormat: Integer
        # @param OpenTranslate: 是否需要翻译结果，1表示需要翻译，0是不需要。
        # @type OpenTranslate: Integer
        # @param SourceLanguage: 如果需要翻译，表示源语言类型，可取值：zh，en。
        # @type SourceLanguage: String
        # @param TargetLanguage: 如果需要翻译，表示目标语言类型，可取值：zh，en。
        # @type TargetLanguage: String
        # @param Seq: 表明当前语音分片的索引，从0开始
        # @type Seq: Integer

        attr_accessor :ProjectId, :SubServiceType, :RecEngineModelType, :Data, :DataLen, :VoiceId, :IsEnd, :VoiceFormat, :OpenTranslate, :SourceLanguage, :TargetLanguage, :Seq

        def initialize(projectid=nil, subservicetype=nil, recenginemodeltype=nil, data=nil, datalen=nil, voiceid=nil, isend=nil, voiceformat=nil, opentranslate=nil, sourcelanguage=nil, targetlanguage=nil, seq=nil)
          @ProjectId = projectid
          @SubServiceType = subservicetype
          @RecEngineModelType = recenginemodeltype
          @Data = data
          @DataLen = datalen
          @VoiceId = voiceid
          @IsEnd = isend
          @VoiceFormat = voiceformat
          @OpenTranslate = opentranslate
          @SourceLanguage = sourcelanguage
          @TargetLanguage = targetlanguage
          @Seq = seq
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SubServiceType = params['SubServiceType']
          @RecEngineModelType = params['RecEngineModelType']
          @Data = params['Data']
          @DataLen = params['DataLen']
          @VoiceId = params['VoiceId']
          @IsEnd = params['IsEnd']
          @VoiceFormat = params['VoiceFormat']
          @OpenTranslate = params['OpenTranslate']
          @SourceLanguage = params['SourceLanguage']
          @TargetLanguage = params['TargetLanguage']
          @Seq = params['Seq']
        end
      end

      # SimultaneousInterpreting返回参数结构体
      class SimultaneousInterpretingResponse < TencentCloud::Common::AbstractModel
        # @param AsrText: 语音识别的结果
        # @type AsrText: String
        # @param NmtText: 机器翻译的结果
        # @type NmtText: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AsrText, :NmtText, :RequestId

        def initialize(asrtext=nil, nmttext=nil, requestid=nil)
          @AsrText = asrtext
          @NmtText = nmttext
          @RequestId = requestid
        end

        def deserialize(params)
          @AsrText = params['AsrText']
          @NmtText = params['NmtText']
          @RequestId = params['RequestId']
        end
      end

      # TextToVoice请求参数结构体
      class TextToVoiceRequest < TencentCloud::Common::AbstractModel
        # @param Text: 合成语音的源文本，按UTF-8编码统一计算。
        # 中文最大支持100个汉字（全角标点符号算一个汉字）；英文最大支持400个字母（半角标点符号算一个字母）。包含空格等字符时需要url encode再传输。
        # @type Text: String
        # @param SessionId: 一次请求对应一个SessionId，会原样返回，建议传入类似于uuid的字符串防止重复。
        # @type SessionId: String
        # @param ModelType: 模型类型，1-默认模型。
        # @type ModelType: Integer
        # @param Volume: 音量大小，范围：[0，10]，分别对应11个等级的音量，默认为0，代表正常音量。没有静音选项。
        # 输入除以上整数之外的其他参数不生效，按默认值处理。
        # @type Volume: Float
        # @param Speed: 语速，范围：[-2，2]，分别对应不同语速：<li>-2代表0.6倍</li><li>-1代表0.8倍</li><li>0代表1.0倍（默认）</li><li>1代表1.2倍</li><li>2代表1.5倍</li>输入除以上整数之外的其他参数不生效，按默认值处理。
        # @type Speed: Float
        # @param ProjectId: 项目id，用户自定义，默认为0。
        # @type ProjectId: Integer
        # @param VoiceType: 音色<li>0-亲和女声(默认)</li><li>1-亲和男声</li><li>2-成熟男声</li><li>3-活力男声</li><li>4-温暖女声</li><li>5-情感女声</li><li>6-情感男声</li>
        # @type VoiceType: Integer
        # @param PrimaryLanguage: 主语言类型：<li>1-中文（默认）</li><li>2-英文</li>
        # @type PrimaryLanguage: Integer
        # @param SampleRate: 音频采样率：<li>16000：16k（默认）</li><li>8000：8k</li>
        # @type SampleRate: Integer
        # @param Codec: 返回音频格式，可取值：wav（默认），mp3
        # @type Codec: String

        attr_accessor :Text, :SessionId, :ModelType, :Volume, :Speed, :ProjectId, :VoiceType, :PrimaryLanguage, :SampleRate, :Codec

        def initialize(text=nil, sessionid=nil, modeltype=nil, volume=nil, speed=nil, projectid=nil, voicetype=nil, primarylanguage=nil, samplerate=nil, codec=nil)
          @Text = text
          @SessionId = sessionid
          @ModelType = modeltype
          @Volume = volume
          @Speed = speed
          @ProjectId = projectid
          @VoiceType = voicetype
          @PrimaryLanguage = primarylanguage
          @SampleRate = samplerate
          @Codec = codec
        end

        def deserialize(params)
          @Text = params['Text']
          @SessionId = params['SessionId']
          @ModelType = params['ModelType']
          @Volume = params['Volume']
          @Speed = params['Speed']
          @ProjectId = params['ProjectId']
          @VoiceType = params['VoiceType']
          @PrimaryLanguage = params['PrimaryLanguage']
          @SampleRate = params['SampleRate']
          @Codec = params['Codec']
        end
      end

      # TextToVoice返回参数结构体
      class TextToVoiceResponse < TencentCloud::Common::AbstractModel
        # @param Audio: base64编码的wav/mp3音频数据
        # @type Audio: String
        # @param SessionId: 一次请求对应一个SessionId
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Audio, :SessionId, :RequestId

        def initialize(audio=nil, sessionid=nil, requestid=nil)
          @Audio = audio
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @Audio = params['Audio']
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

