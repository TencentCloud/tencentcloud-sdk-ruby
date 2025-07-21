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
  module Tts
    module V20190823
      # CreateTtsTask请求参数结构体
      class CreateTtsTaskRequest < TencentCloud::Common::AbstractModel
        # @param Text: 合成语音的源文本，按UTF-8编码统一计算，最多支持10万字符
        # @type Text: String
        # @param Volume: 音量大小，范围[-10，10]，对应音量大小。默认为0，代表正常音量，值越大音量越高。
        # @type Volume: Float
        # @param Speed: 语速，范围：[-2，6]，分别对应不同语速：<li>-2代表0.6倍</li><li>-1代表0.8倍</li><li>0代表1.0倍（默认）</li><li>1代表1.2倍</li><li>2代表1.5倍</li><li>6代表2.5倍</li>如果需要更细化的语速，可以保留小数点后 2 位，例如0.5/1.25/2.81等。<br>参数值与实际语速转换，可参考[代码示例](https://sdk-1300466766.cos.ap-shanghai.myqcloud.com/sample/speed_sample.tar.gz)
        # @type Speed: Float
        # @param ProjectId: 项目id，用户自定义，默认为0。
        # @type ProjectId: Integer
        # @param ModelType: 模型类型，1-默认模型。
        # @type ModelType: Integer
        # @param VoiceType: 音色 ID，包括标准音色与精品音色，精品音色拟真度更高，价格不同于标准音色，请参见[购买指南](https://cloud.tencent.com/document/product/1073/34112)。完整的音色 ID 列表请参见[音色列表](https://cloud.tencent.com/document/product/1073/92668)。
        # @type VoiceType: Integer
        # @param PrimaryLanguage: 主语言类型：<li>1-中文（默认）</li><li>2-英文</li><li>3-日文</li>
        # @type PrimaryLanguage: Integer
        # @param SampleRate: 音频采样率：<li>16000：16k（默认）</li><li>8000：8k</li>
        # @type SampleRate: Integer
        # @param Codec: 返回音频格式，可取值：mp3（默认），wav，pcm
        # @type Codec: String
        # @param CallbackUrl: 回调 URL，用户自行搭建的用于接收识别结果的服务URL。如果用户使用轮询方式获取识别结果，则无需提交该参数。[回调说明](https://cloud.tencent.com/document/product/1073/55746)
        # @type CallbackUrl: String
        # @param EnableSubtitle: 是否开启时间戳功能，默认为false。
        # @type EnableSubtitle: Boolean
        # @param VoiceoverDialogueSplit: 旁白与对白文本解析，分别合成相应风格（仅适用于旁对白音色10510000、100510000），默认 false
        # @type VoiceoverDialogueSplit: Boolean
        # @param EmotionCategory: 控制合成音频的情感，仅支持多情感音色使用。取值: neutral(中性)、sad(悲伤)、happy(高兴)、angry(生气)、fear(恐惧)、news(新闻)、story(故事)、radio(广播)、poetry(诗歌)、call(客服)、sajiao(撒娇)、disgusted(厌恶)、amaze(震惊)、peaceful(平静)、exciting(兴奋)、aojiao(傲娇)、jieshuo(解说)
        # @type EmotionCategory: String
        # @param EmotionIntensity: 控制合成音频情感程度，取值范围为[50,200],默认为100；只有EmotionCategory不为空时生效。
        # @type EmotionIntensity: Integer

        attr_accessor :Text, :Volume, :Speed, :ProjectId, :ModelType, :VoiceType, :PrimaryLanguage, :SampleRate, :Codec, :CallbackUrl, :EnableSubtitle, :VoiceoverDialogueSplit, :EmotionCategory, :EmotionIntensity

        def initialize(text=nil, volume=nil, speed=nil, projectid=nil, modeltype=nil, voicetype=nil, primarylanguage=nil, samplerate=nil, codec=nil, callbackurl=nil, enablesubtitle=nil, voiceoverdialoguesplit=nil, emotioncategory=nil, emotionintensity=nil)
          @Text = text
          @Volume = volume
          @Speed = speed
          @ProjectId = projectid
          @ModelType = modeltype
          @VoiceType = voicetype
          @PrimaryLanguage = primarylanguage
          @SampleRate = samplerate
          @Codec = codec
          @CallbackUrl = callbackurl
          @EnableSubtitle = enablesubtitle
          @VoiceoverDialogueSplit = voiceoverdialoguesplit
          @EmotionCategory = emotioncategory
          @EmotionIntensity = emotionintensity
        end

        def deserialize(params)
          @Text = params['Text']
          @Volume = params['Volume']
          @Speed = params['Speed']
          @ProjectId = params['ProjectId']
          @ModelType = params['ModelType']
          @VoiceType = params['VoiceType']
          @PrimaryLanguage = params['PrimaryLanguage']
          @SampleRate = params['SampleRate']
          @Codec = params['Codec']
          @CallbackUrl = params['CallbackUrl']
          @EnableSubtitle = params['EnableSubtitle']
          @VoiceoverDialogueSplit = params['VoiceoverDialogueSplit']
          @EmotionCategory = params['EmotionCategory']
          @EmotionIntensity = params['EmotionIntensity']
        end
      end

      # 异步合成请求的返回数据
      class CreateTtsTaskRespData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，可通过此ID在轮询接口获取合成状态与结果。注意：TaskId数据类型为string
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CreateTtsTask返回参数结构体
      class CreateTtsTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务 id
        # @type Data: :class:`Tencentcloud::Tts.v20190823.models.CreateTtsTaskRespData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateTtsTaskRespData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTtsTaskStatus请求参数结构体
      class DescribeTtsTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务id
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # 获取异步合成结果的返回参数
      class DescribeTtsTaskStatusRespData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务标识。
        # @type TaskId: String
        # @param Status: 任务状态码，0：任务等待，1：任务执行中，2：任务成功，3：任务失败。
        # @type Status: Integer
        # @param StatusStr: 任务状态，waiting：任务等待，doing：任务执行中，success：任务成功，failed：任务失败。
        # @type StatusStr: String
        # @param ResultUrl: 合成音频COS地址（链接有效期1天）。
        # @type ResultUrl: String
        # @param Subtitles: 时间戳信息，若未开启时间戳，则返回空数组。
        # @type Subtitles: Array
        # @param ErrorMsg: 失败原因说明。
        # @type ErrorMsg: String

        attr_accessor :TaskId, :Status, :StatusStr, :ResultUrl, :Subtitles, :ErrorMsg

        def initialize(taskid=nil, status=nil, statusstr=nil, resulturl=nil, subtitles=nil, errormsg=nil)
          @TaskId = taskid
          @Status = status
          @StatusStr = statusstr
          @ResultUrl = resulturl
          @Subtitles = subtitles
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @StatusStr = params['StatusStr']
          @ResultUrl = params['ResultUrl']
          unless params['Subtitles'].nil?
            @Subtitles = []
            params['Subtitles'].each do |i|
              subtitle_tmp = Subtitle.new
              subtitle_tmp.deserialize(i)
              @Subtitles << subtitle_tmp
            end
          end
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # DescribeTtsTaskStatus返回参数结构体
      class DescribeTtsTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务状态返回
        # @type Data: :class:`Tencentcloud::Tts.v20190823.models.DescribeTtsTaskStatusRespData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeTtsTaskStatusRespData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 时间戳信息。
      class Subtitle < TencentCloud::Common::AbstractModel
        # @param Text: ⽂本信息。
        # @type Text: String
        # @param BeginTime: ⽂本对应tts语⾳开始时间戳，单位ms。
        # @type BeginTime: Integer
        # @param EndTime: ⽂本对应tts语⾳结束时间戳，单位ms。
        # @type EndTime: Integer
        # @param BeginIndex: 该文本在时间戳数组中的开始位置，从0开始。
        # @type BeginIndex: Integer
        # @param EndIndex: 该文本在时间戳数组中的结束位置，从0开始。
        # @type EndIndex: Integer
        # @param Phoneme: 该字的音素。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Phoneme: String

        attr_accessor :Text, :BeginTime, :EndTime, :BeginIndex, :EndIndex, :Phoneme

        def initialize(text=nil, begintime=nil, endtime=nil, beginindex=nil, endindex=nil, phoneme=nil)
          @Text = text
          @BeginTime = begintime
          @EndTime = endtime
          @BeginIndex = beginindex
          @EndIndex = endindex
          @Phoneme = phoneme
        end

        def deserialize(params)
          @Text = params['Text']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @BeginIndex = params['BeginIndex']
          @EndIndex = params['EndIndex']
          @Phoneme = params['Phoneme']
        end
      end

      # TextToVoice请求参数结构体
      class TextToVoiceRequest < TencentCloud::Common::AbstractModel
        # @param Text: 合成语音的源文本，按UTF-8编码统一计算。
        # 中文最大支持150个汉字（全角标点符号算一个汉字）；英文最大支持500个字母（半角标点符号算一个字母）。
        # @type Text: String
        # @param SessionId: 一次请求对应一个SessionId，会原样返回，建议传入类似于uuid的字符串防止重复。
        # @type SessionId: String
        # @param Volume: 音量大小，范围[-10，10]，对应音量大小。默认为0，代表正常音量，值越大音量越高。
        # @type Volume: Float
        # @param Speed: 语速，范围：[-2，6]，分别对应不同语速：<li>-2代表0.6倍</li><li>-1代表0.8倍</li><li>0代表1.0倍（默认）</li><li>1代表1.2倍</li><li>2代表1.5倍</li><li>6代表2.5倍</li>如果需要更细化的语速，可以保留小数点后 2 位，例如0.5/1.25/2.81等。<br>参数值与实际语速转换，可参考[代码示例](https://sdk-1300466766.cos.ap-shanghai.myqcloud.com/sample/speed_sample.tar.gz)
        # @type Speed: Float
        # @param ProjectId: 项目id，用户自定义，默认为0。
        # @type ProjectId: Integer
        # @param ModelType: 模型类型，1-默认模型。
        # @type ModelType: Integer
        # @param VoiceType: 音色 ID，包括标准音色、精品音色、大模型音色与基础版复刻音色。不同音色价格有差异，详情请参见[购买指南](https://cloud.tencent.com/document/product/1073/34112)。完整的音色 ID 列表请参见[音色列表](https://cloud.tencent.com/document/product/1073/92668)。<br>若使用一句话版声音复刻，请填入固定值“200000000”。
        # @type VoiceType: Integer
        # @param FastVoiceType: 一句话版声音复刻音色ID，使用一句话版声音复刻音色时需填写。
        # @type FastVoiceType: String
        # @param PrimaryLanguage: 主语言类型：<li>1-中文（默认）</li><li>2-英文</li><li>3-日文</li>
        # @type PrimaryLanguage: Integer
        # @param SampleRate: 音频采样率：
        # <li>24000：24k（部分音色支持，请参见[音色列表](https://cloud.tencent.com/document/product/1073/92668)）</li>
        # <li>16000：16k（默认）</li>
        # <li>8000：8k</li>
        # @type SampleRate: Integer
        # @param Codec: 返回音频格式，可取值：wav（默认），mp3，pcm
        # @type Codec: String
        # @param EnableSubtitle: 是否开启时间戳功能，默认为false。
        # @type EnableSubtitle: Boolean
        # @param SegmentRate: 断句敏感阈值，默认值为：0，取值范围：[0,1,2]。该值越大越不容易断句，模型会更倾向于仅按照标点符号断句。此参数建议不要随意调整，可能会影响合成效果。
        # @type SegmentRate: Integer
        # @param EmotionCategory: 控制合成音频的情感，仅支持多情感音色使用。取值: neutral(中性)、sad(悲伤)、happy(高兴)、angry(生气)、fear(恐惧)、news(新闻)、story(故事)、radio(广播)、poetry(诗歌)、call(客服)、sajiao(撒娇)、disgusted(厌恶)、amaze(震惊)、peaceful(平静)、exciting(兴奋)、aojiao(傲娇)、jieshuo(解说)
        # 示例值：neutral
        # @type EmotionCategory: String
        # @param EmotionIntensity: 控制合成音频情感程度，取值范围为[50,200],默认为100；只有EmotionCategory不为空时生效；
        # @type EmotionIntensity: Integer

        attr_accessor :Text, :SessionId, :Volume, :Speed, :ProjectId, :ModelType, :VoiceType, :FastVoiceType, :PrimaryLanguage, :SampleRate, :Codec, :EnableSubtitle, :SegmentRate, :EmotionCategory, :EmotionIntensity

        def initialize(text=nil, sessionid=nil, volume=nil, speed=nil, projectid=nil, modeltype=nil, voicetype=nil, fastvoicetype=nil, primarylanguage=nil, samplerate=nil, codec=nil, enablesubtitle=nil, segmentrate=nil, emotioncategory=nil, emotionintensity=nil)
          @Text = text
          @SessionId = sessionid
          @Volume = volume
          @Speed = speed
          @ProjectId = projectid
          @ModelType = modeltype
          @VoiceType = voicetype
          @FastVoiceType = fastvoicetype
          @PrimaryLanguage = primarylanguage
          @SampleRate = samplerate
          @Codec = codec
          @EnableSubtitle = enablesubtitle
          @SegmentRate = segmentrate
          @EmotionCategory = emotioncategory
          @EmotionIntensity = emotionintensity
        end

        def deserialize(params)
          @Text = params['Text']
          @SessionId = params['SessionId']
          @Volume = params['Volume']
          @Speed = params['Speed']
          @ProjectId = params['ProjectId']
          @ModelType = params['ModelType']
          @VoiceType = params['VoiceType']
          @FastVoiceType = params['FastVoiceType']
          @PrimaryLanguage = params['PrimaryLanguage']
          @SampleRate = params['SampleRate']
          @Codec = params['Codec']
          @EnableSubtitle = params['EnableSubtitle']
          @SegmentRate = params['SegmentRate']
          @EmotionCategory = params['EmotionCategory']
          @EmotionIntensity = params['EmotionIntensity']
        end
      end

      # TextToVoice返回参数结构体
      class TextToVoiceResponse < TencentCloud::Common::AbstractModel
        # @param Audio: base64编码的wav/mp3音频数据
        # @type Audio: String
        # @param SessionId: 一次请求对应一个SessionId
        # @type SessionId: String
        # @param Subtitles: 时间戳信息，若未开启时间戳，则返回空数组。
        # @type Subtitles: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Audio, :SessionId, :Subtitles, :RequestId

        def initialize(audio=nil, sessionid=nil, subtitles=nil, requestid=nil)
          @Audio = audio
          @SessionId = sessionid
          @Subtitles = subtitles
          @RequestId = requestid
        end

        def deserialize(params)
          @Audio = params['Audio']
          @SessionId = params['SessionId']
          unless params['Subtitles'].nil?
            @Subtitles = []
            params['Subtitles'].each do |i|
              subtitle_tmp = Subtitle.new
              subtitle_tmp.deserialize(i)
              @Subtitles << subtitle_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

