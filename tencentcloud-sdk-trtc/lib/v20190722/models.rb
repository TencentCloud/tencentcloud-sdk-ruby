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
  module Trtc
    module V20190722
      # 造成异常体验可能的异常事件类型
      class AbnormalEvent < TencentCloud::Common::AbstractModel
        # @param AbnormalEventId: 异常事件ID，具体值查看附录：异常体验ID映射表：https://cloud.tencent.com/document/product/647/44916
        # @type AbnormalEventId: Integer
        # @param PeerId: 远端用户ID,""：表示异常事件不是由远端用户产生
        # @type PeerId: String

        attr_accessor :AbnormalEventId, :PeerId

        def initialize(abnormaleventid=nil, peerid=nil)
          @AbnormalEventId = abnormaleventid
          @PeerId = peerid
        end

        def deserialize(params)
          @AbnormalEventId = params['AbnormalEventId']
          @PeerId = params['PeerId']
        end
      end

      # 用户的异常体验及可能的原因
      class AbnormalExperience < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID
        # @type UserId: String
        # @param ExperienceId: 异常体验ID
        # @type ExperienceId: Integer
        # @param RoomId: 字符串房间号
        # @type RoomId: String
        # @param AbnormalEventList: 异常事件数组
        # @type AbnormalEventList: Array
        # @param EventTime: 异常事件的上报时间
        # @type EventTime: Integer

        attr_accessor :UserId, :ExperienceId, :RoomId, :AbnormalEventList, :EventTime

        def initialize(userid=nil, experienceid=nil, roomid=nil, abnormaleventlist=nil, eventtime=nil)
          @UserId = userid
          @ExperienceId = experienceid
          @RoomId = roomid
          @AbnormalEventList = abnormaleventlist
          @EventTime = eventtime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @ExperienceId = params['ExperienceId']
          @RoomId = params['RoomId']
          unless params['AbnormalEventList'].nil?
            @AbnormalEventList = []
            params['AbnormalEventList'].each do |i|
              abnormalevent_tmp = AbnormalEvent.new
              abnormalevent_tmp.deserialize(i)
              @AbnormalEventList << abnormalevent_tmp
            end
          end
          @EventTime = params['EventTime']
        end
      end

      # 机器人参数
      class AgentConfig < TencentCloud::Common::AbstractModel
        # @param UserId: 机器人的UserId，用于进房发起任务。【注意】这个UserId不能与当前房间内的主播观众[UserId](https://cloud.tencent.com/document/product/647/46351#userid)重复。如果一个房间发起多个任务时，机器人的UserId也不能相互重复，否则会中断前一个任务。需要保证机器人UserId在房间内唯一。
        # @type UserId: String
        # @param UserSig: 机器人UserId对应的校验签名，即UserId和UserSig相当于机器人进房的登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        # @type UserSig: String
        # @param TargetUserId: 机器人拉流的UserId, 填写后，机器人会拉取该UserId的流进行实时处理
        # @type TargetUserId: String
        # @param MaxIdleTime: 房间内超过MaxIdleTime 没有推流，后台自动关闭任务，默认值是60s。
        # @type MaxIdleTime: Integer
        # @param WelcomeMessage: 机器人的欢迎语
        # @type WelcomeMessage: String
        # @param InterruptMode: 智能打断模式，默认为0，0表示服务端自动打断，1表示服务端不打断，由端上发送打断信令进行打断
        # @type InterruptMode: Integer
        # @param InterruptSpeechDuration: InterruptMode为0时使用，单位为毫秒，默认为500ms。表示服务端检测到持续InterruptSpeechDuration毫秒的人声则进行打断。
        # @type InterruptSpeechDuration: Integer
        # @param TurnDetectionMode: 控制新一轮对话的触发方式，默认为0。
        # - 0表示当服务端语音识别检测出的完整一句话后，自动触发一轮新的对话。
        # - 1表示客户端在收到字幕消息后，自行决定是否手动发送聊天信令触发一轮新的对话。
        # @type TurnDetectionMode: Integer
        # @param FilterOneWord: 是否过滤掉用户只说了一个字的句子，true表示过滤，false表示不过滤，默认值为true
        # @type FilterOneWord: Boolean
        # @param WelcomeMessagePriority: 欢迎消息优先级，0默认，1高优，高优不能被打断。
        # @type WelcomeMessagePriority: Integer
        # @param FilterBracketsContent: 用于过滤LLM返回内容，不播放括号中的内容。
        # 1：中文括号（）
        # 2：英文括号()
        # 3：中文方括号【】
        # 4：英文方括号[]
        # 5：英文花括号{}
        # 默认值为空，表示不进行过滤。
        # @type FilterBracketsContent: Integer
        # @param AmbientSound: 环境音设置
        # @type AmbientSound: :class:`Tencentcloud::Trtc.v20190722.models.AmbientSound`
        # @param VoicePrint: 声纹配置
        # @type VoicePrint: :class:`Tencentcloud::Trtc.v20190722.models.VoicePrint`
        # @param TurnDetection: 语义断句检测
        # @type TurnDetection: :class:`Tencentcloud::Trtc.v20190722.models.TurnDetection`
        # @param SubtitleMode: 机器人字幕显示模式。
        # - 0表示尽快显示，不会和音频播放进行同步。此时字幕全量下发，后面的字幕会包含前面的字幕。
        # - 1表示句子级别的实时显示，会和音频播放进行同步，只有当前句子对应的音频播放完后，下一条字幕才会下发。此时字幕增量下发，端上需要把前后的字幕进行拼接才是完整字幕。
        # @type SubtitleMode: Integer
        # @param InterruptWordList: 打断词列表，在AI说话期间，只有说出列表中的打断词才会打断AI说话。
        # 注意：打断词不会触发AI回复。
        # @type InterruptWordList: Array

        attr_accessor :UserId, :UserSig, :TargetUserId, :MaxIdleTime, :WelcomeMessage, :InterruptMode, :InterruptSpeechDuration, :TurnDetectionMode, :FilterOneWord, :WelcomeMessagePriority, :FilterBracketsContent, :AmbientSound, :VoicePrint, :TurnDetection, :SubtitleMode, :InterruptWordList

        def initialize(userid=nil, usersig=nil, targetuserid=nil, maxidletime=nil, welcomemessage=nil, interruptmode=nil, interruptspeechduration=nil, turndetectionmode=nil, filteroneword=nil, welcomemessagepriority=nil, filterbracketscontent=nil, ambientsound=nil, voiceprint=nil, turndetection=nil, subtitlemode=nil, interruptwordlist=nil)
          @UserId = userid
          @UserSig = usersig
          @TargetUserId = targetuserid
          @MaxIdleTime = maxidletime
          @WelcomeMessage = welcomemessage
          @InterruptMode = interruptmode
          @InterruptSpeechDuration = interruptspeechduration
          @TurnDetectionMode = turndetectionmode
          @FilterOneWord = filteroneword
          @WelcomeMessagePriority = welcomemessagepriority
          @FilterBracketsContent = filterbracketscontent
          @AmbientSound = ambientsound
          @VoicePrint = voiceprint
          @TurnDetection = turndetection
          @SubtitleMode = subtitlemode
          @InterruptWordList = interruptwordlist
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          @TargetUserId = params['TargetUserId']
          @MaxIdleTime = params['MaxIdleTime']
          @WelcomeMessage = params['WelcomeMessage']
          @InterruptMode = params['InterruptMode']
          @InterruptSpeechDuration = params['InterruptSpeechDuration']
          @TurnDetectionMode = params['TurnDetectionMode']
          @FilterOneWord = params['FilterOneWord']
          @WelcomeMessagePriority = params['WelcomeMessagePriority']
          @FilterBracketsContent = params['FilterBracketsContent']
          unless params['AmbientSound'].nil?
            @AmbientSound = AmbientSound.new
            @AmbientSound.deserialize(params['AmbientSound'])
          end
          unless params['VoicePrint'].nil?
            @VoicePrint = VoicePrint.new
            @VoicePrint.deserialize(params['VoicePrint'])
          end
          unless params['TurnDetection'].nil?
            @TurnDetection = TurnDetection.new
            @TurnDetection.deserialize(params['TurnDetection'])
          end
          @SubtitleMode = params['SubtitleMode']
          @InterruptWordList = params['InterruptWordList']
        end
      end

      # 转推服务加入TRTC房间的机器人参数。
      class AgentParams < TencentCloud::Common::AbstractModel
        # @param UserId: 转推服务在TRTC房间使用的[UserId](https://cloud.tencent.com/document/product/647/46351#userid)，注意这个userId不能与其他TRTC或者转推服务等已经使用的UserId重复，建议可以把房间ID作为userId的标识的一部分。
        # @type UserId: String
        # @param UserSig: 转推服务加入TRTC房间的用户签名，当前 UserId 对应的验证签名，相当于登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        # @type UserSig: String
        # @param MaxIdleTime: 所有参与混流转推的主播持续离开TRTC房间或切换成观众超过MaxIdleTime的时长，自动停止转推，单位：秒。默认值为 30 秒，该值需大于等于 5秒，且小于等于 86400秒(24小时)。
        # @type MaxIdleTime: Integer

        attr_accessor :UserId, :UserSig, :MaxIdleTime

        def initialize(userid=nil, usersig=nil, maxidletime=nil)
          @UserId = userid
          @UserSig = usersig
          @MaxIdleTime = maxidletime
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          @MaxIdleTime = params['MaxIdleTime']
        end
      end

      # 背景音设置，将在通话中添加环境音效，使体验更加逼真。目前支持以下选项：
      # coffee_shops: 咖啡店氛围，背景中有人聊天。
      # busy_office: 客服中心
      # street_traffic: 户外街道
      # evening_mountain: 户外山林
      class AmbientSound < TencentCloud::Common::AbstractModel
        # @param Scene: 环境场景选择
        # @type Scene: String
        # @param Volume: 控制环境音的音量。取值的范围是 [0,2]。值越低，环境音越小；值越高，环境音越响亮。如果未设置，则使用默认值 1。
        # @type Volume: Float

        attr_accessor :Scene, :Volume

        def initialize(scene=nil, volume=nil)
          @Scene = scene
          @Volume = volume
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Volume = params['Volume']
        end
      end

      # 音频编码参数。
      class AudioEncode < TencentCloud::Common::AbstractModel
        # @param SampleRate: 输出流音频采样率。取值为[48000, 44100, 32000, 24000, 16000, 8000]，单位是Hz。
        # @type SampleRate: Integer
        # @param Channel: 输出流音频声道数，取值范围[1,2]，1表示混流输出音频为单声道，2表示混流输出音频为双声道。
        # @type Channel: Integer
        # @param BitRate: 输出流音频码率。取值范围[8,500]，单位为kbps。
        # @type BitRate: Integer
        # @param Codec: 输出流音频编码类型，取值范围[0, 1, 2]，0为LC-AAC，1为HE-AAC，2为HE-AACv2。默认值为0。当音频编码设置为HE-AACv2时，只支持输出流音频声道数为双声道。HE-AAC和HE-AACv2支持的输出流音频采样率范围为[48000, 44100, 32000, 24000, 16000]。
        # @type Codec: Integer

        attr_accessor :SampleRate, :Channel, :BitRate, :Codec

        def initialize(samplerate=nil, channel=nil, bitrate=nil, codec=nil)
          @SampleRate = samplerate
          @Channel = channel
          @BitRate = bitrate
          @Codec = codec
        end

        def deserialize(params)
          @SampleRate = params['SampleRate']
          @Channel = params['Channel']
          @BitRate = params['BitRate']
          @Codec = params['Codec']
        end
      end

      # 音频转码参数
      class AudioEncodeParams < TencentCloud::Common::AbstractModel
        # @param SampleRate: 音频采样率，取值为[48000, 44100]，单位是Hz。
        # @type SampleRate: Integer
        # @param Channel: 音频声道数，取值范围[1,2]，1表示音频为单声道，2表示音频为双声道。
        # @type Channel: Integer
        # @param BitRate: 音频码率，取值范围[8,500]，单位为kbps。
        # @type BitRate: Integer
        # @param Volume: 音量，取值范围[0,300]。默认100，表示原始音量；0表示静音。
        # @type Volume: Integer

        attr_accessor :SampleRate, :Channel, :BitRate, :Volume

        def initialize(samplerate=nil, channel=nil, bitrate=nil, volume=nil)
          @SampleRate = samplerate
          @Channel = channel
          @BitRate = bitrate
          @Volume = volume
        end

        def deserialize(params)
          @SampleRate = params['SampleRate']
          @Channel = params['Channel']
          @BitRate = params['BitRate']
          @Volume = params['Volume']
        end
      end

      # TTS音频输出的格式
      class AudioFormat < TencentCloud::Common::AbstractModel
        # @param Format: 生成的音频格式，默认pcm，目前支持的格式列表：[pcm]。
        # @type Format: String

        attr_accessor :Format

        def initialize(format=nil)
          @Format = format
        end

        def deserialize(params)
          @Format = params['Format']
        end
      end

      # 录制音频转码参数。
      class AudioParams < TencentCloud::Common::AbstractModel
        # @param SampleRate: 音频采样率枚举值:(注意1 代表48000HZ, 2 代表44100HZ, 3 代表16000HZ)
        # 1：48000Hz（默认）;
        # 2：44100Hz
        # 3：16000Hz。
        # @type SampleRate: Integer
        # @param Channel: 声道数枚举值:
        # 1：单声道;
        # 2：双声道（默认）。
        # @type Channel: Integer
        # @param BitRate: 音频码率: 取值范围[32000, 128000] ，单位bps，默认64000bps。
        # @type BitRate: Integer

        attr_accessor :SampleRate, :Channel, :BitRate

        def initialize(samplerate=nil, channel=nil, bitrate=nil)
          @SampleRate = samplerate
          @Channel = channel
          @BitRate = bitrate
        end

        def deserialize(params)
          @SampleRate = params['SampleRate']
          @Channel = params['Channel']
          @BitRate = params['BitRate']
        end
      end

      # 审核存储参数
      class AuditStorageParams < TencentCloud::Common::AbstractModel
        # @param CloudAuditStorage: 腾讯云对象存储COS以及第三方云存储的账号信息
        # @type CloudAuditStorage: :class:`Tencentcloud::Trtc.v20190722.models.CloudAuditStorage`

        attr_accessor :CloudAuditStorage

        def initialize(cloudauditstorage=nil)
          @CloudAuditStorage = cloudauditstorage
        end

        def deserialize(params)
          unless params['CloudAuditStorage'].nil?
            @CloudAuditStorage = CloudAuditStorage.new
            @CloudAuditStorage.deserialize(params['CloudAuditStorage'])
          end
        end
      end

      # 腾讯云对象存储COS以及第三方云存储的账号信息
      class CloudAuditStorage < TencentCloud::Common::AbstractModel
        # @param Vendor: 腾讯云对象存储COS以及第三方云存储账号信息
        # 0：腾讯云对象存储 COS
        # 1：AWS
        # 【注意】目前第三方云存储仅支持AWS，更多第三方云存储陆续支持中
        # 示例值：0
        # @type Vendor: Integer
        # @param Region: 腾讯云对象存储的[地域信息]（https://cloud.tencent.com/document/product/436/6224#.E5.9C.B0.E5.9F.9F）。
        # 示例值：cn-shanghai-1

        # AWS S3[地域信息]（https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-regions）
        # 示例值：ap-southeast-3
        # @type Region: String
        # @param Bucket: 云存储桶名称。
        # @type Bucket: String
        # @param AccessKey: 云存储的access_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretId值。
        # 示例值：test-accesskey
        # @type AccessKey: String
        # @param SecretKey: 云存储的secret_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretKey值。
        # 示例值：test-secretkey
        # @type SecretKey: String
        # @param FileNamePrefix: 云存储bucket 的指定位置，由字符串数组组成。合法的字符串范围az,AZ,0~9,'_'和'-'，举个例子，录制文件xxx.m3u8在 ["prefix1", "prefix2"]作用下，会变成prefix1/prefix2/TaskId/xxx.m3u8。
        # 示例值：["prefix1", "prefix2"]
        # @type FileNamePrefix: Array

        attr_accessor :Vendor, :Region, :Bucket, :AccessKey, :SecretKey, :FileNamePrefix

        def initialize(vendor=nil, region=nil, bucket=nil, accesskey=nil, secretkey=nil, filenameprefix=nil)
          @Vendor = vendor
          @Region = region
          @Bucket = bucket
          @AccessKey = accesskey
          @SecretKey = secretkey
          @FileNamePrefix = filenameprefix
        end

        def deserialize(params)
          @Vendor = params['Vendor']
          @Region = params['Region']
          @Bucket = params['Bucket']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
          @FileNamePrefix = params['FileNamePrefix']
        end
      end

      # 腾讯云对象存储COS以及第三方云存储的账号信息
      class CloudModerationStorage < TencentCloud::Common::AbstractModel
        # @param Vendor: 腾讯云对象存储COS以及第三方云存储账号信息
        # 0：腾讯云对象存储 COS
        # 1：AWS S3
        # 2: 阿里云 OSS
        # 示例值：0
        # @type Vendor: Integer
        # @param Region: 腾讯云对象存储的[地域信息]（https://cloud.tencent.com/document/product/436/6224#.E5.9C.B0.E5.9F.9F）。
        # 示例值：cn-shanghai-1

        # AWS S3[地域信息]（https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-regions）
        # 示例值：ap-southeast-3
        # @type Region: String
        # @param Bucket: 云存储桶名称。
        # @type Bucket: String
        # @param AccessKey: 云存储的access_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretId值。
        # 示例值：test-accesskey
        # @type AccessKey: String
        # @param SecretKey: 云存储的secret_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretKey值。
        # 示例值：test-secretkey
        # @type SecretKey: String
        # @param FileNamePrefix: 云存储bucket 的指定位置，由字符串数组组成。合法的字符串范围az,AZ,0~9,'_'和'-'，举个例子，切片文件xxx.mp3在 ["prefix1", "prefix2"]作用下，音频切片文件会变成prefix1/prefix2/{taskId}/{userId}/audios/{sdkappid}_{roomId}_{userid}_{UTC时间}.ogg，视频截帧会变成prefix1/prefix2/{taskId}/{userId}/images/{sdkappid}_{roomId}_{userid}_{UTC时间}.png
        # @type FileNamePrefix: Array

        attr_accessor :Vendor, :Region, :Bucket, :AccessKey, :SecretKey, :FileNamePrefix

        def initialize(vendor=nil, region=nil, bucket=nil, accesskey=nil, secretkey=nil, filenameprefix=nil)
          @Vendor = vendor
          @Region = region
          @Bucket = bucket
          @AccessKey = accesskey
          @SecretKey = secretkey
          @FileNamePrefix = filenameprefix
        end

        def deserialize(params)
          @Vendor = params['Vendor']
          @Region = params['Region']
          @Bucket = params['Bucket']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
          @FileNamePrefix = params['FileNamePrefix']
        end
      end

      # 腾讯云对象存储COS以及第三方云存储的账号信息
      class CloudSliceStorage < TencentCloud::Common::AbstractModel
        # @param Vendor: 腾讯云对象存储COS以及第三方云存储账号信息
        # 0：腾讯云对象存储 COS
        # 1：AWS S3
        # 2: 阿里云 OSS
        # 示例值：0
        # @type Vendor: Integer
        # @param Region: 腾讯云对象存储的[地域信息]（https://cloud.tencent.com/document/product/436/6224#.E5.9C.B0.E5.9F.9F）。
        # 示例值：cn-shanghai-1

        # AWS S3[地域信息]（https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-regions）
        # 示例值：ap-southeast-3
        # @type Region: String
        # @param Bucket: 云存储桶名称。
        # @type Bucket: String
        # @param AccessKey: 云存储的access_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretId值。
        # 示例值：test-accesskey
        # @type AccessKey: String
        # @param SecretKey: 云存储的secret_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretKey值。
        # 示例值：test-secretkey
        # @type SecretKey: String
        # @param FileNamePrefix: 云存储bucket 的指定位置，由字符串数组组成。合法的字符串范围az,AZ,0~9,'_'和'-'，举个例子，切片文件xxx.mp3在 ["prefix1", "prefix2"]作用下，音频切片文件会变成prefix1/prefix2/{taskId}/{userId}/audios/{sdkappid}_{roomId}_{userid}_{UTC时间}.ogg，视频截帧会变成prefix1/prefix2/{taskId}/{userId}/images/{sdkappid}_{roomId}_{userid}_{UTC时间}.png
        # @type FileNamePrefix: Array

        attr_accessor :Vendor, :Region, :Bucket, :AccessKey, :SecretKey, :FileNamePrefix

        def initialize(vendor=nil, region=nil, bucket=nil, accesskey=nil, secretkey=nil, filenameprefix=nil)
          @Vendor = vendor
          @Region = region
          @Bucket = bucket
          @AccessKey = accesskey
          @SecretKey = secretkey
          @FileNamePrefix = filenameprefix
        end

        def deserialize(params)
          @Vendor = params['Vendor']
          @Region = params['Region']
          @Bucket = params['Bucket']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
          @FileNamePrefix = params['FileNamePrefix']
        end
      end

      # 腾讯云对象存储COS以及第三方云存储的账号信息
      class CloudStorage < TencentCloud::Common::AbstractModel
        # @param Vendor: 腾讯云对象存储COS以及第三方云存储账号信息
        # 0：腾讯云对象存储 COS
        # 1：AWS
        # 【注意】目前第三方云存储仅支持AWS，更多第三方云存储陆续支持中
        # @type Vendor: Integer
        # @param Region: 腾讯云对象存储的[地域信息]（https://cloud.tencent.com/document/product/436/6224#.E5.9C.B0.E5.9F.9F）。
        # 示例值：cn-shanghai-1

        # AWS S3[地域信息]（https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-regions）
        # @type Region: String
        # @param Bucket: 云存储桶名称。
        # @type Bucket: String
        # @param AccessKey: 云存储的access_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretId值。
        # @type AccessKey: String
        # @param SecretKey: 云存储的secret_key账号信息。
        # 若存储至腾讯云对象存储COS，请前往https://console.cloud.tencent.com/cam/capi 查看或创建，对应链接中密钥字段的SecretKey值。
        # @type SecretKey: String
        # @param FileNamePrefix: 云存储bucket 的指定位置，由字符串数组组成。合法的字符串范围az,AZ,0~9,'_'和'-'，举个例子，录制文件xxx.m3u8在 ["prefix1", "prefix2"]作用下，会变成prefix1/prefix2/TaskId/xxx.m3u8。
        # @type FileNamePrefix: Array

        attr_accessor :Vendor, :Region, :Bucket, :AccessKey, :SecretKey, :FileNamePrefix

        def initialize(vendor=nil, region=nil, bucket=nil, accesskey=nil, secretkey=nil, filenameprefix=nil)
          @Vendor = vendor
          @Region = region
          @Bucket = bucket
          @AccessKey = accesskey
          @SecretKey = secretkey
          @FileNamePrefix = filenameprefix
        end

        def deserialize(params)
          @Vendor = params['Vendor']
          @Region = params['Region']
          @Bucket = params['Bucket']
          @AccessKey = params['AccessKey']
          @SecretKey = params['SecretKey']
          @FileNamePrefix = params['FileNamePrefix']
        end
      end

      # 点播相关参数。
      class CloudVod < TencentCloud::Common::AbstractModel
        # @param TencentVod: 腾讯云点播相关参数。
        # @type TencentVod: :class:`Tencentcloud::Trtc.v20190722.models.TencentVod`

        attr_accessor :TencentVod

        def initialize(tencentvod=nil)
          @TencentVod = tencentvod
        end

        def deserialize(params)
          unless params['TencentVod'].nil?
            @TencentVod = TencentVod.new
            @TencentVod.deserialize(params['TencentVod'])
          end
        end
      end

      # ControlAIConversation请求参数结构体
      class ControlAIConversationRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一标识
        # @type TaskId: String
        # @param Command: 控制命令，目前支持命令如下：- ServerPushText，服务端发送文本给AI机器人，AI机器人会播报该文本. - InvokeLLM，服务端发送文本给大模型，触发对话
        # @type Command: String
        # @param ServerPushText: 服务端发送播报文本命令，当Command为ServerPushText时必填
        # @type ServerPushText: :class:`Tencentcloud::Trtc.v20190722.models.ServerPushText`
        # @param InvokeLLM: 服务端发送命令主动请求大模型,当Command为InvokeLLM时会把content请求到大模型,头部增加X-Invoke-LLM="1"
        # @type InvokeLLM: :class:`Tencentcloud::Trtc.v20190722.models.InvokeLLM`

        attr_accessor :TaskId, :Command, :ServerPushText, :InvokeLLM

        def initialize(taskid=nil, command=nil, serverpushtext=nil, invokellm=nil)
          @TaskId = taskid
          @Command = command
          @ServerPushText = serverpushtext
          @InvokeLLM = invokellm
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Command = params['Command']
          unless params['ServerPushText'].nil?
            @ServerPushText = ServerPushText.new
            @ServerPushText.deserialize(params['ServerPushText'])
          end
          unless params['InvokeLLM'].nil?
            @InvokeLLM = InvokeLLM.new
            @InvokeLLM.deserialize(params['InvokeLLM'])
          end
        end
      end

      # ControlAIConversation返回参数结构体
      class ControlAIConversationResponse < TencentCloud::Common::AbstractModel
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

      # CreateBasicModeration请求参数结构体
      class CreateBasicModerationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和TRTC的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: TRTC的[RoomId](https://cloud.tencent.com/document/product/647/46351#roomid)，为TRTC房间所对应的RoomId。
        # @type RoomId: String
        # @param UserId: 目标审核用户id
        # @type UserId: String
        # @param RoomIdType: TRTC房间号的类型。【*注意】必须和TRTC的房间所对应的RoomId类型相同:0: 字符串类型的RoomId1: 32位整型的RoomId（默认）
        # @type RoomIdType: Integer
        # @param AuditStorageParams: 音频文件上传到云存储的参数
        # @type AuditStorageParams: :class:`Tencentcloud::Trtc.v20190722.models.AuditStorageParams`

        attr_accessor :SdkAppId, :RoomId, :UserId, :RoomIdType, :AuditStorageParams

        def initialize(sdkappid=nil, roomid=nil, userid=nil, roomidtype=nil, auditstorageparams=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserId = userid
          @RoomIdType = roomidtype
          @AuditStorageParams = auditstorageparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @RoomIdType = params['RoomIdType']
          unless params['AuditStorageParams'].nil?
            @AuditStorageParams = AuditStorageParams.new
            @AuditStorageParams.deserialize(params['AuditStorageParams'])
          end
        end
      end

      # CreateBasicModeration返回参数结构体
      class CreateBasicModerationResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 审核服务分配的任务ID。任务ID是对一次审核任务生命周期过程的唯一标识，结束任务时会失去意义。任务ID需要业务保存下来，作为下次针对这个任务操作的参数
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudModeration请求参数结构体
      class CreateCloudModerationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和TRTC的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: TRTC的[RoomId](https://cloud.tencent.com/document/product/647/46351#roomid)，为TRTC房间所对应的RoomId。
        # @type RoomId: String
        # @param UserId: 机器人的UserId，用于进房发起审核任务。【*注意】这个UserId不能与当前房间内的主播观众UserId重复。如果一个房间发起多个切片任务时，机器人的userid也不能相互重复，否则会中断前一个切片任务。建议可以把房间ID作为UserId的标识的一部分，即机器人UserId在房间内唯一。
        # @type UserId: String
        # @param UserSig: 机器人UserId对应的校验签名，即UserId和UserSig相当于机器人进房的登录密码，具体计算方法请参考TRTC计算UserSig的方案。
        # @type UserSig: String
        # @param ModerationParams: 云端审核控制参数。
        # @type ModerationParams: :class:`Tencentcloud::Trtc.v20190722.models.ModerationParams`
        # @param ModerationStorageParams: 云端审核文件上传到云存储的参数
        # @type ModerationStorageParams: :class:`Tencentcloud::Trtc.v20190722.models.ModerationStorageParams`
        # @param RoomIdType: TRTC房间号的类型。 【*注意】必须和录制的房间所对应的RoomId类型相同: 0: 字符串类型的RoomId 1: 32位整型的RoomId（默认） 示例值：1
        # @type RoomIdType: Integer
        # @param ResourceExpiredHour: 任务ID可以调用的时效性，从成功开启任务并获得TaskID后开始计算，超时后无法调用查询、更新和停止等接口，但是切片任务不会停止。 参数的单位是小时，默认24小时（1天），最大可设置72小时（3天），最小设置6小时。举例说明：如果不设置该参数，那么开始切片成功后，查询、更新和停止切片的调用时效为24个小时。
        # @type ResourceExpiredHour: Integer

        attr_accessor :SdkAppId, :RoomId, :UserId, :UserSig, :ModerationParams, :ModerationStorageParams, :RoomIdType, :ResourceExpiredHour

        def initialize(sdkappid=nil, roomid=nil, userid=nil, usersig=nil, moderationparams=nil, moderationstorageparams=nil, roomidtype=nil, resourceexpiredhour=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserId = userid
          @UserSig = usersig
          @ModerationParams = moderationparams
          @ModerationStorageParams = moderationstorageparams
          @RoomIdType = roomidtype
          @ResourceExpiredHour = resourceexpiredhour
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          unless params['ModerationParams'].nil?
            @ModerationParams = ModerationParams.new
            @ModerationParams.deserialize(params['ModerationParams'])
          end
          unless params['ModerationStorageParams'].nil?
            @ModerationStorageParams = ModerationStorageParams.new
            @ModerationStorageParams.deserialize(params['ModerationStorageParams'])
          end
          @RoomIdType = params['RoomIdType']
          @ResourceExpiredHour = params['ResourceExpiredHour']
        end
      end

      # CreateCloudModeration返回参数结构体
      class CreateCloudModerationResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 云端审核服务分配的任务ID。任务ID是对一次切片任务生命周期过程的唯一标识，结束任务时会失去意义。任务ID需要业务保存下来，作为下次针对这个任务操作的参数
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudRecording请求参数结构体
      class CreateCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和录制的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: TRTC的[RoomId](https://cloud.tencent.com/document/product/647/46351#roomid)，录制的TRTC房间所对应的RoomId。
        # 注：房间号类型默认为整型，若房间号类型为字符串，请通过RoomIdType指定。
        # @type RoomId: String
        # @param UserId: 录制机器人的UserId，用于进房发起录制任务。
        # 【*注意】这个UserId不能与当前房间内的主播观众[UserId](https://cloud.tencent.com/document/product/647/46351#userid)重复。如果一个房间发起多个录制任务时，机器人的userid也不能相互重复，否则会中断前一个录制任务。建议可以把房间ID作为UserId的标识的一部分，即录制机器人UserId在房间内唯一。
        # @type UserId: String
        # @param UserSig: 录制机器人UserId对应的校验签名，即UserId和UserSig相当于录制机器人进房的登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        # @type UserSig: String
        # @param RecordParams: 云端录制控制参数。
        # @type RecordParams: :class:`Tencentcloud::Trtc.v20190722.models.RecordParams`
        # @param StorageParams: 云端录制文件上传到云存储的参数（不支持同时设置云点播VOD和对象存储COS）
        # @type StorageParams: :class:`Tencentcloud::Trtc.v20190722.models.StorageParams`
        # @param RoomIdType: TRTC房间号的类型。
        # 【*注意】必须和录制的房间所对应的RoomId类型相同:
        # 0: 字符串类型的RoomId
        # 1: 32位整型的RoomId（默认）
        # @type RoomIdType: Integer
        # @param MixTranscodeParams: 合流的转码参数，录制模式为合流的时候可以设置。
        # @type MixTranscodeParams: :class:`Tencentcloud::Trtc.v20190722.models.MixTranscodeParams`
        # @param MixLayoutParams: 合流的布局参数，录制模式为合流的时候可以设置。
        # @type MixLayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.MixLayoutParams`
        # @param ResourceExpiredHour: 接口可以调用的时效性，从成功开启录制并获得任务ID后开始计算，超时后无法调用查询、更新和停止等接口，但是录制任务不会停止。 参数的单位是小时，默认72小时（3天），最大可设置720小时（30天），最小设置6小时。举例说明：如果不设置该参数，那么开始录制成功后，查询、更新和停止录制的调用时效为72个小时。
        # @type ResourceExpiredHour: Integer
        # @param PrivateMapKey: TRTC房间权限加密串，只有在TRTC控制台启用了高级权限控制的时候需要携带，在TRTC控制台如果开启高级权限控制后，TRTC 的后台服务系统会校验一个叫做 [PrivateMapKey] 的“权限票据”，权限票据中包含了一个加密后的 RoomId 和一个加密后的“权限位列表”。由于 PrivateMapKey 中包含 RoomId，所以只提供了 UserSig 没有提供 PrivateMapKey 时，并不能进入指定的房间。
        # @type PrivateMapKey: String

        attr_accessor :SdkAppId, :RoomId, :UserId, :UserSig, :RecordParams, :StorageParams, :RoomIdType, :MixTranscodeParams, :MixLayoutParams, :ResourceExpiredHour, :PrivateMapKey

        def initialize(sdkappid=nil, roomid=nil, userid=nil, usersig=nil, recordparams=nil, storageparams=nil, roomidtype=nil, mixtranscodeparams=nil, mixlayoutparams=nil, resourceexpiredhour=nil, privatemapkey=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserId = userid
          @UserSig = usersig
          @RecordParams = recordparams
          @StorageParams = storageparams
          @RoomIdType = roomidtype
          @MixTranscodeParams = mixtranscodeparams
          @MixLayoutParams = mixlayoutparams
          @ResourceExpiredHour = resourceexpiredhour
          @PrivateMapKey = privatemapkey
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          unless params['RecordParams'].nil?
            @RecordParams = RecordParams.new
            @RecordParams.deserialize(params['RecordParams'])
          end
          unless params['StorageParams'].nil?
            @StorageParams = StorageParams.new
            @StorageParams.deserialize(params['StorageParams'])
          end
          @RoomIdType = params['RoomIdType']
          unless params['MixTranscodeParams'].nil?
            @MixTranscodeParams = MixTranscodeParams.new
            @MixTranscodeParams.deserialize(params['MixTranscodeParams'])
          end
          unless params['MixLayoutParams'].nil?
            @MixLayoutParams = MixLayoutParams.new
            @MixLayoutParams.deserialize(params['MixLayoutParams'])
          end
          @ResourceExpiredHour = params['ResourceExpiredHour']
          @PrivateMapKey = params['PrivateMapKey']
        end
      end

      # CreateCloudRecording返回参数结构体
      class CreateCloudRecordingResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。任务 ID需要业务保存下来，作为下次针对这个录制任务操作的参数。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCloudSliceTask请求参数结构体
      class CreateCloudSliceTaskRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和TRTC的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: TRTC的[RoomId](https://cloud.tencent.com/document/product/647/46351#roomid)，为TRTC房间所对应的RoomId。
        # @type RoomId: String
        # @param UserId: 机器人的UserId，用于进房发起切片任务。【*注意】这个UserId不能与当前房间内的主播观众UserId重复。如果一个房间发起多个切片任务时，机器人的userid也不能相互重复，否则会中断前一个切片任务。建议可以把房间ID作为UserId的标识的一部分，即机器人UserId在房间内唯一。
        # @type UserId: String
        # @param UserSig: 机器人UserId对应的校验签名，即UserId和UserSig相当于机器人进房的登录密码，具体计算方法请参考TRTC计算UserSig的方案。
        # @type UserSig: String
        # @param SliceParams: 云端切片控制参数。
        # @type SliceParams: :class:`Tencentcloud::Trtc.v20190722.models.SliceParams`
        # @param SliceStorageParams: 云端切片文件上传到云存储的参数
        # @type SliceStorageParams: :class:`Tencentcloud::Trtc.v20190722.models.SliceStorageParams`
        # @param RoomIdType: TRTC房间号的类型。 【*注意】必须和录制的房间所对应的RoomId类型相同: 0: 字符串类型的RoomId 1: 32位整型的RoomId（默认） 示例值：1
        # @type RoomIdType: Integer
        # @param ResourceExpiredHour: 接口可以调用的时效性，从成功开启录制并获得任务ID后开始计算，超时后无法调用查询、更新和停止等接口，但是录制任务不会停止。 参数的单位是小时，默认72小时（3天），最大可设置720小时（30天），最小设置6小时。举例说明：如果不设置该参数，那么开始录制成功后，查询、更新和停止录制的调用时效为72个小时。 示例值：24
        # @type ResourceExpiredHour: Integer
        # @param PrivateMapKey: TRTC房间权限加密串，只有在TRTC控制台启用了高级权限控制的时候需要携带，在TRTC控制台如果开启高级权限控制后，TRTC 的后台服务系统会校验一个叫做 [PrivateMapKey] 的“权限票据”，权限票据中包含了一个加密后的 RoomId 和一个加密后的“权限位列表”。由于 PrivateMapKey 中包含 RoomId，所以只提供了 UserSig 没有提供 PrivateMapKey 时，并不能进入指定的房间。 示例值：eJw1jcEKgkAURX9FZlvY****fL9rfNX4_
        # @type PrivateMapKey: String

        attr_accessor :SdkAppId, :RoomId, :UserId, :UserSig, :SliceParams, :SliceStorageParams, :RoomIdType, :ResourceExpiredHour, :PrivateMapKey

        def initialize(sdkappid=nil, roomid=nil, userid=nil, usersig=nil, sliceparams=nil, slicestorageparams=nil, roomidtype=nil, resourceexpiredhour=nil, privatemapkey=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserId = userid
          @UserSig = usersig
          @SliceParams = sliceparams
          @SliceStorageParams = slicestorageparams
          @RoomIdType = roomidtype
          @ResourceExpiredHour = resourceexpiredhour
          @PrivateMapKey = privatemapkey
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          unless params['SliceParams'].nil?
            @SliceParams = SliceParams.new
            @SliceParams.deserialize(params['SliceParams'])
          end
          unless params['SliceStorageParams'].nil?
            @SliceStorageParams = SliceStorageParams.new
            @SliceStorageParams.deserialize(params['SliceStorageParams'])
          end
          @RoomIdType = params['RoomIdType']
          @ResourceExpiredHour = params['ResourceExpiredHour']
          @PrivateMapKey = params['PrivateMapKey']
        end
      end

      # CreateCloudSliceTask返回参数结构体
      class CreateCloudSliceTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 云端切片服务分配的任务ID。任务ID是对一次切片任务生命周期过程的唯一标识，结束任务时会失去意义。任务ID需要业务保存下来，作为下次针对这个任务操作的参数
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePicture请求参数结构体
      class CreatePictureRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用id
        # @type SdkAppId: Integer
        # @param Content: 图片内容经base64编码后的string格式,最大长度为2M
        # @type Content: String
        # @param Suffix: 图片后缀名
        # @type Suffix: String
        # @param Height: 图片长度
        # @type Height: Integer
        # @param Width: 图片宽度
        # @type Width: Integer
        # @param XPosition: 显示位置x轴方向
        # @type XPosition: Integer
        # @param YPosition: 显示位置y轴方向
        # @type YPosition: Integer

        attr_accessor :SdkAppId, :Content, :Suffix, :Height, :Width, :XPosition, :YPosition

        def initialize(sdkappid=nil, content=nil, suffix=nil, height=nil, width=nil, xposition=nil, yposition=nil)
          @SdkAppId = sdkappid
          @Content = content
          @Suffix = suffix
          @Height = height
          @Width = width
          @XPosition = xposition
          @YPosition = yposition
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @Content = params['Content']
          @Suffix = params['Suffix']
          @Height = params['Height']
          @Width = params['Width']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
        end
      end

      # CreatePicture返回参数结构体
      class CreatePictureResponse < TencentCloud::Common::AbstractModel
        # @param PictureId: 图片id
        # @type PictureId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PictureId, :RequestId

        def initialize(pictureid=nil, requestid=nil)
          @PictureId = pictureid
          @RequestId = requestid
        end

        def deserialize(params)
          @PictureId = params['PictureId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteBasicModeration请求参数结构体
      class DeleteBasicModerationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和TRTC的房间所使用的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 审核任务的唯一Id，在启动审核任务成功后会返回。
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteBasicModeration返回参数结构体
      class DeleteBasicModerationResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 审核任务的唯一Id。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCloudModeration请求参数结构体
      class DeleteCloudModerationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和TRTC的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 审核任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteCloudModeration返回参数结构体
      class DeleteCloudModerationResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 审核任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCloudRecording请求参数结构体
      class DeleteCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 录制任务的唯一Id，在启动录制成功后会返回。
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteCloudRecording返回参数结构体
      class DeleteCloudRecordingResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCloudSliceTask请求参数结构体
      class DeleteCloudSliceTaskRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和TRTC的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 切片任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteCloudSliceTask返回参数结构体
      class DeleteCloudSliceTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 切片任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # DeletePicture请求参数结构体
      class DeletePictureRequest < TencentCloud::Common::AbstractModel
        # @param PictureId: 图片id
        # @type PictureId: Integer
        # @param SdkAppId: 应用id
        # @type SdkAppId: Integer

        attr_accessor :PictureId, :SdkAppId

        def initialize(pictureid=nil, sdkappid=nil)
          @PictureId = pictureid
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @PictureId = params['PictureId']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DeletePicture返回参数结构体
      class DeletePictureResponse < TencentCloud::Common::AbstractModel
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

      # DeleteVoicePrint请求参数结构体
      class DeleteVoicePrintRequest < TencentCloud::Common::AbstractModel
        # @param VoicePrintId: 声纹信息ID
        # @type VoicePrintId: String

        attr_accessor :VoicePrintId

        def initialize(voiceprintid=nil)
          @VoicePrintId = voiceprintid
        end

        def deserialize(params)
          @VoicePrintId = params['VoicePrintId']
        end
      end

      # DeleteVoicePrint返回参数结构体
      class DeleteVoicePrintResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAIConversation请求参数结构体
      class DescribeAIConversationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和开启转录任务的房间使用的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 唯一标识一次任务。
        # @type TaskId: String
        # @param SessionId: 开启任务时填写的SessionId，如果没写则不返回。
        # @type SessionId: String

        attr_accessor :SdkAppId, :TaskId, :SessionId

        def initialize(sdkappid=nil, taskid=nil, sessionid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @SessionId = sessionid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          @SessionId = params['SessionId']
        end
      end

      # DescribeAIConversation返回参数结构体
      class DescribeAIConversationResponse < TencentCloud::Common::AbstractModel
        # @param StartTime: 任务开始时间。
        # @type StartTime: String
        # @param Status: 任务状态。有4个值：1、Idle表示任务未开始2、Preparing表示任务准备中3、InProgress表示任务正在运行4、Stopped表示任务已停止，正在清理资源中
        # @type Status: String
        # @param TaskId: 任务的唯一标识，在启动任务时生成
        # @type TaskId: String
        # @param SessionId: 开启对话任务时填写的SessionId，如果没写则不返回。
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTime, :Status, :TaskId, :SessionId, :RequestId

        def initialize(starttime=nil, status=nil, taskid=nil, sessionid=nil, requestid=nil)
          @StartTime = starttime
          @Status = status
          @TaskId = taskid
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Status = params['Status']
          @TaskId = params['TaskId']
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAITranscription请求参数结构体
      class DescribeAITranscriptionRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 查询任务状态，不使用时传入空字符串。
        # 有两种查询方式：
        # 1、只填写TaskId，这种方式使用TaskId来查询任务
        # 2、TaskId为空字符串，填写SdkAppId和SessionId，这种方式不需要使用TaskId查询任务
        # @type TaskId: String
        # @param SdkAppId: TRTC的SdkAppId，和SessionId配合使用。
        # @type SdkAppId: Integer
        # @param SessionId: 开启转录任务时传入的SessionId，和SdkAppId配合使用。
        # @type SessionId: String

        attr_accessor :TaskId, :SdkAppId, :SessionId

        def initialize(taskid=nil, sdkappid=nil, sessionid=nil)
          @TaskId = taskid
          @SdkAppId = sdkappid
          @SessionId = sessionid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SdkAppId = params['SdkAppId']
          @SessionId = params['SessionId']
        end
      end

      # DescribeAITranscription返回参数结构体
      class DescribeAITranscriptionResponse < TencentCloud::Common::AbstractModel
        # @param StartTime: 任务开始时间。
        # @type StartTime: String
        # @param Status: 转录任务状态。
        # 有4个值：
        # 1、Idle表示任务未开始
        # 2、Preparing表示任务准备中
        # 3、InProgress表示任务正在运行
        # 4、Stopped表示任务已停止，正在清理资源中
        # @type Status: String
        # @param TaskId: 唯一标识一次任务。
        # @type TaskId: String
        # @param SessionId: 开启转录任务时填写的SessionId，如果没写则不返回。
        # @type SessionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StartTime, :Status, :TaskId, :SessionId, :RequestId

        def initialize(starttime=nil, status=nil, taskid=nil, sessionid=nil, requestid=nil)
          @StartTime = starttime
          @Status = status
          @TaskId = taskid
          @SessionId = sessionid
          @RequestId = requestid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Status = params['Status']
          @TaskId = params['TaskId']
          @SessionId = params['SessionId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCallDetailInfo请求参数结构体
      class DescribeCallDetailInfoRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： SdkAppId_RoomId（房间号）_ CreateTime（房间创建时间，unix时间戳，单位为s）例：1400xxxxxx_218695_1590065777。通过 DescribeRoomInfo（查询历史房间列表）接口获取（[查询历史房间列表](https://cloud.tencent.com/document/product/647/44050)）。
        # @type CommId: String
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777），
        # 注意：支持查询14天内的数据。
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        # 注意：查询起止时间需小于1小时，超过则返回null，即与StartTime间隔时间不超过1小时。
        # @type EndTime: Integer
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）。
        # @type SdkAppId: Integer
        # @param UserIds: 需查询的用户数组，默认不填返回6个用户。
        # @type UserIds: Array
        # @param DataType: 需查询的指标，不填则只返回用户列表，填all则返回所有指标。
        # appCpu：APP CPU使用率；
        # sysCpu：系统 CPU使用率；
        # aBit：上/下行音频码率；单位：bps
        # aBlock：音频卡顿时长；单位：ms
        # bigvBit：上/下行视频码率；单位：bps
        # bigvCapFps：视频采集帧率；
        # bigvEncFps：视频发送帧率；
        # bigvDecFps：渲染帧率；
        # bigvBlock：视频卡顿时长；单位：ms
        # aLoss：上/下行音频丢包率；
        # bigvLoss：上/下行视频丢包率；
        # bigvWidth：上/下行分辨率宽；
        # bigvHeight：上/下行分辨率高；
        # aCapEnergy：音频采集能量；
        # aPlayEnergy：音频播放能量；
        # rtt：SDK到云端的往返延时；单位: ms
        # bigvRecFps: 云端送达帧率；
        # @type DataType: Array
        # @param PageNumber: 当前页数，默认为0，
        # 注意：PageNumber和PageSize 其中一个不填均默认返回6条数据。
        # @type PageNumber: Integer
        # @param PageSize: 每页个数，默认为6，
        # 范围：[1，100]
        # 注意：DataType不为null，UserIds长度不能超过6，PageSize最大值不超过6；
        # DataType 为null，UserIds长度不超过100，PageSize最大不超过100。
        # @type PageSize: Integer

        attr_accessor :CommId, :StartTime, :EndTime, :SdkAppId, :UserIds, :DataType, :PageNumber, :PageSize

        def initialize(commid=nil, starttime=nil, endtime=nil, sdkappid=nil, userids=nil, datatype=nil, pagenumber=nil, pagesize=nil)
          @CommId = commid
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @UserIds = userids
          @DataType = datatype
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @CommId = params['CommId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @UserIds = params['UserIds']
          @DataType = params['DataType']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeCallDetailInfo返回参数结构体
      class DescribeCallDetailInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的用户总条数
        # @type Total: Integer
        # @param UserList: 用户信息列表
        # @type UserList: Array
        # @param Data: 质量数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :UserList, :Data, :RequestId

        def initialize(total=nil, userlist=nil, data=nil, requestid=nil)
          @Total = total
          @UserList = userlist
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              userinformation_tmp = UserInformation.new
              userinformation_tmp.deserialize(i)
              @UserList << userinformation_tmp
            end
          end
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              qualitydata_tmp = QualityData.new
              qualitydata_tmp.deserialize(i)
              @Data << qualitydata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudModeration请求参数结构体
      class DescribeCloudModerationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 云端审核任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeCloudModeration返回参数结构体
      class DescribeCloudModerationResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 切片任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String
        # @param Status: 云端切片任务的状态信息。Idle:表示当前任务空闲中,InProgress:表示当前任务正在进行中,Exited:表示当前任务正在退出的过程中。
        # @type Status: String
        # @param SubscribeStreamUserIds: 订阅黑白名单
        # @type SubscribeStreamUserIds: :class:`Tencentcloud::Trtc.v20190722.models.SubscribeModerationUserIds`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :SubscribeStreamUserIds, :RequestId

        def initialize(taskid=nil, status=nil, subscribestreamuserids=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @SubscribeStreamUserIds = subscribestreamuserids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          unless params['SubscribeStreamUserIds'].nil?
            @SubscribeStreamUserIds = SubscribeModerationUserIds.new
            @SubscribeStreamUserIds.deserialize(params['SubscribeStreamUserIds'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudRecording请求参数结构体
      class DescribeCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 录制任务的唯一Id，在启动录制成功后会返回。
        # @type TaskId: String
        # @param RecorderKey: 转推录制任务发起时所填，标识一次录制
        # @type RecorderKey: String

        attr_accessor :SdkAppId, :TaskId, :RecorderKey

        def initialize(sdkappid=nil, taskid=nil, recorderkey=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @RecorderKey = recorderkey
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          @RecorderKey = params['RecorderKey']
        end
      end

      # DescribeCloudRecording返回参数结构体
      class DescribeCloudRecordingResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 录制任务的唯一Id。
        # @type TaskId: String
        # @param Status: 云端录制任务的状态信息。
        # Idle：表示当前录制任务空闲中
        # InProgress：表示当前录制任务正在进行中。
        # Exited：表示当前录制任务正在退出的过程中。
        # @type Status: String
        # @param StorageFileList: 录制文件信息。
        # @type StorageFileList: Array
        # @param RecorderKey: 转推录制任务发起时所填，标识一次录制
        # @type RecorderKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :StorageFileList, :RecorderKey, :RequestId

        def initialize(taskid=nil, status=nil, storagefilelist=nil, recorderkey=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @StorageFileList = storagefilelist
          @RecorderKey = recorderkey
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          unless params['StorageFileList'].nil?
            @StorageFileList = []
            params['StorageFileList'].each do |i|
              storagefile_tmp = StorageFile.new
              storagefile_tmp.deserialize(i)
              @StorageFileList << storagefile_tmp
            end
          end
          @RecorderKey = params['RecorderKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCloudSliceTask请求参数结构体
      class DescribeCloudSliceTaskRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 切片任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeCloudSliceTask返回参数结构体
      class DescribeCloudSliceTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 切片任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String
        # @param Status: 云端切片任务的状态信息。Idle:表示当前任务空闲中,InProgress:表示当前任务正在进行中,Exited:表示当前任务正在退出的过程中。
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Status, :RequestId

        def initialize(taskid=nil, status=nil, requestid=nil)
          @TaskId = taskid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMixTranscodingUsage请求参数结构体
      class DescribeMixTranscodingUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: TRTC的SdkAppId，和房间所对应的SdkAppId相同。如果没有这个参数，返回用户下全部实时音视频应用的汇总。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeMixTranscodingUsage返回参数结构体
      class DescribeMixTranscodingUsageResponse < TencentCloud::Common::AbstractModel
        # @param UsageKey: 用量类型，与UsageValue中各个位置的值对应。
        # @type UsageKey: Array
        # @param UsageList: 各个时间点用量明细。
        # @type UsageList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsageKey, :UsageList, :RequestId

        def initialize(usagekey=nil, usagelist=nil, requestid=nil)
          @UsageKey = usagekey
          @UsageList = usagelist
          @RequestId = requestid
        end

        def deserialize(params)
          @UsageKey = params['UsageKey']
          unless params['UsageList'].nil?
            @UsageList = []
            params['UsageList'].each do |i|
              trtcusage_tmp = TrtcUsage.new
              trtcusage_tmp.deserialize(i)
              @UsageList << trtcusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePicture请求参数结构体
      class DescribePictureRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 应用ID
        # @type SdkAppId: Integer
        # @param PictureId: 图片ID，不填时返回该应用下所有图片
        # @type PictureId: Integer
        # @param PageSize: 每页数量，不填时默认为10
        # @type PageSize: Integer
        # @param PageNo: 页码，不填时默认为1
        # @type PageNo: Integer

        attr_accessor :SdkAppId, :PictureId, :PageSize, :PageNo

        def initialize(sdkappid=nil, pictureid=nil, pagesize=nil, pageno=nil)
          @SdkAppId = sdkappid
          @PictureId = pictureid
          @PageSize = pagesize
          @PageNo = pageno
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @PictureId = params['PictureId']
          @PageSize = params['PageSize']
          @PageNo = params['PageNo']
        end
      end

      # DescribePicture返回参数结构体
      class DescribePictureResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的图片记录数
        # @type Total: Integer
        # @param PictureInfo: 图片信息列表
        # @type PictureInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :PictureInfo, :RequestId

        def initialize(total=nil, pictureinfo=nil, requestid=nil)
          @Total = total
          @PictureInfo = pictureinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['PictureInfo'].nil?
            @PictureInfo = []
            params['PictureInfo'].each do |i|
              pictureinfo_tmp = PictureInfo.new
              pictureinfo_tmp.deserialize(i)
              @PictureInfo << pictureinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordStatistic请求参数结构体
      class DescribeRecordStatisticRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始日期，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束日期，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: 应用ID，可不传。传应用ID时返回的是该应用的用量，不传时返回多个应用的合计值。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeRecordStatistic返回参数结构体
      class DescribeRecordStatisticResponse < TencentCloud::Common::AbstractModel
        # @param SdkAppIdUsages: 应用的用量信息数组。
        # @type SdkAppIdUsages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SdkAppIdUsages, :RequestId

        def initialize(sdkappidusages=nil, requestid=nil)
          @SdkAppIdUsages = sdkappidusages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SdkAppIdUsages'].nil?
            @SdkAppIdUsages = []
            params['SdkAppIdUsages'].each do |i|
              sdkappidrecordusage_tmp = SdkAppIdRecordUsage.new
              sdkappidrecordusage_tmp.deserialize(i)
              @SdkAppIdUsages << sdkappidrecordusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordingUsage请求参数结构体
      class DescribeRecordingUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param MixType: 查询单流录制或合流录制，值为"single"或"multi"。
        # @type MixType: String
        # @param SdkAppId: TRTC的SdkAppId，和房间所对应的SdkAppId相同。如果没有这个参数，返回用户下全部实时音视频应用的汇总。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :MixType, :SdkAppId

        def initialize(starttime=nil, endtime=nil, mixtype=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MixType = mixtype
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MixType = params['MixType']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeRecordingUsage返回参数结构体
      class DescribeRecordingUsageResponse < TencentCloud::Common::AbstractModel
        # @param UsageKey: 用量类型，与UsageValue中各个位置的值对应。
        # @type UsageKey: Array
        # @param UsageList: 各个时间点用量明细。
        # @type UsageList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsageKey, :UsageList, :RequestId

        def initialize(usagekey=nil, usagelist=nil, requestid=nil)
          @UsageKey = usagekey
          @UsageList = usagelist
          @RequestId = requestid
        end

        def deserialize(params)
          @UsageKey = params['UsageKey']
          unless params['UsageList'].nil?
            @UsageList = []
            params['UsageList'].each do |i|
              trtcusage_tmp = TrtcUsage.new
              trtcusage_tmp.deserialize(i)
              @UsageList << trtcusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRelayUsage请求参数结构体
      class DescribeRelayUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: TRTC的SdkAppId，和房间所对应的SdkAppId相同。如果没有这个参数，返回用户下全部实时音视频应用的汇总。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeRelayUsage返回参数结构体
      class DescribeRelayUsageResponse < TencentCloud::Common::AbstractModel
        # @param UsageKey: 用量类型，与UsageValue中各个位置的值对应。
        # @type UsageKey: Array
        # @param UsageList: 各个时间点用量明细。
        # @type UsageList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsageKey, :UsageList, :RequestId

        def initialize(usagekey=nil, usagelist=nil, requestid=nil)
          @UsageKey = usagekey
          @UsageList = usagelist
          @RequestId = requestid
        end

        def deserialize(params)
          @UsageKey = params['UsageKey']
          unless params['UsageList'].nil?
            @UsageList = []
            params['UsageList'].each do |i|
              trtcusage_tmp = TrtcUsage.new
              trtcusage_tmp.deserialize(i)
              @UsageList << trtcusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoomInfo请求参数结构体
      class DescribeRoomInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）注意：最大支持查询14天内的数据
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        # 注意：与StartTime间隔时间不超过24小时。
        # @type EndTime: Integer
        # @param RoomId: 房间号（如：223)
        # @type RoomId: String
        # @param PageNumber: 当前页数，默认为0，
        # 注意：PageNumber和PageSize 其中一个不填均默认返回10条数据。
        # @type PageNumber: Integer
        # @param PageSize: 每页个数，默认为10，
        # 范围：[1，100]
        # @type PageSize: Integer

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId, :PageNumber, :PageSize

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil, pagenumber=nil, pagesize=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeRoomInfo返回参数结构体
      class DescribeRoomInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回当页数据总数
        # @type Total: Integer
        # @param RoomList: 房间信息列表
        # @type RoomList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :RoomList, :RequestId

        def initialize(total=nil, roomlist=nil, requestid=nil)
          @Total = total
          @RoomList = roomlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['RoomList'].nil?
            @RoomList = []
            params['RoomList'].each do |i|
              roomstate_tmp = RoomState.new
              roomstate_tmp.deserialize(i)
              @RoomList << roomstate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeScaleInfo请求参数结构体
      class DescribeScaleInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        # 注意：支持查询14天内的数据。
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877），建议与StartTime间隔时间超过24小时。
        # 注意：按天统计，结束时间大于前一天，否则查询数据为空（如：需查询20号数据，结束时间需晚于20号0点）。
        # @type EndTime: Integer

        attr_accessor :SdkAppId, :StartTime, :EndTime

        def initialize(sdkappid=nil, starttime=nil, endtime=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeScaleInfo返回参数结构体
      class DescribeScaleInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的数据条数
        # @type Total: Integer
        # @param ScaleList: 返回的数据
        # @type ScaleList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :ScaleList, :RequestId

        def initialize(total=nil, scalelist=nil, requestid=nil)
          @Total = total
          @ScaleList = scalelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['ScaleList'].nil?
            @ScaleList = []
            params['ScaleList'].each do |i|
              scaleinfomation_tmp = ScaleInfomation.new
              scaleinfomation_tmp.deserialize(i)
              @ScaleList << scaleinfomation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeStreamIngest请求参数结构体
      class DescribeStreamIngestRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和任务的房间所对应的SDKAppId相同
        # @type SdkAppId: Integer
        # @param TaskId: 任务的唯一Id，在启动任务成功后会返回。
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeStreamIngest返回参数结构体
      class DescribeStreamIngestResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务的状态信息。
        # InProgress：表示当前任务正在进行中。
        # NotExist：表示当前任务不存在。
        # 示例值：InProgress
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCMarketQualityData请求参数结构体
      class DescribeTRTCMarketQualityDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。（查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天）
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # @type EndTime: String
        # @param Period: 返回数据的粒度，支持设为以下值：
        # d：按天。此时返回查询时间范围内 UTC 时间为零点的数据。
        # h：按小时。此时返回查询时间范围内 UTC 时间为整小时的数据。
        # @type Period: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Period

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, period=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeTRTCMarketQualityData返回参数结构体
      class DescribeTRTCMarketQualityDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCMarketQualityMetricData请求参数结构体
      class DescribeTRTCMarketQualityMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。（查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天）
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # @type EndTime: String
        # @param Period: 返回数据的粒度，支持设为以下值：
        # d：按天。此时返回查询时间范围内 UTC 时间为零点的数据。
        # h：按小时。此时返回查询时间范围内 UTC 时间为整小时的数据。
        # @type Period: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Period

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, period=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeTRTCMarketQualityMetricData返回参数结构体
      class DescribeTRTCMarketQualityMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCMarketScaleData请求参数结构体
      class DescribeTRTCMarketScaleDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。（查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天）
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # @type EndTime: String
        # @param Period: 返回数据的粒度，支持设为以下值：
        # d：按天。此时返回查询时间范围内 UTC 时间为零点的数据。
        # h：按小时。此时返回查询时间范围内 UTC 时间为整小时的数据。
        # @type Period: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Period

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, period=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeTRTCMarketScaleData返回参数结构体
      class DescribeTRTCMarketScaleDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCMarketScaleMetricData请求参数结构体
      class DescribeTRTCMarketScaleMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId
        # @type SdkAppId: String
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。（查询时间范围根据监控仪表盘功能版本而定，【基础版】可查近30天，【进阶版】可查近60天）
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # @type EndTime: String
        # @param Period: 返回数据的粒度，支持设为以下值：
        # d：按天。此时返回查询时间范围内 UTC 时间为零点的数据。
        # h：按小时。此时返回查询时间范围内 UTC 时间为整小时的数据。
        # @type Period: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :Period

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, period=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @Period = period
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Period = params['Period']
        end
      end

      # DescribeTRTCMarketScaleMetricData返回参数结构体
      class DescribeTRTCMarketScaleMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCRealTimeQualityData请求参数结构体
      class DescribeTRTCRealTimeQualityDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 开始时间，unix时间戳，单位：秒（查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时）
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间戳，单位：秒
        # @type EndTime: Integer
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTRTCRealTimeQualityData返回参数结构体
      class DescribeTRTCRealTimeQualityDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCRealTimeQualityMetricData请求参数结构体
      class DescribeTRTCRealTimeQualityMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 开始时间，unix时间戳，单位：秒（查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时）
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间戳，单位：秒
        # @type EndTime: Integer
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTRTCRealTimeQualityMetricData返回参数结构体
      class DescribeTRTCRealTimeQualityMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCRealTimeScaleData请求参数结构体
      class DescribeTRTCRealTimeScaleDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 开始时间，unix时间戳，单位：秒（查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时）
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间戳，单位：秒
        # @type EndTime: Integer
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTRTCRealTimeScaleData返回参数结构体
      class DescribeTRTCRealTimeScaleDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTRTCRealTimeScaleMetricData请求参数结构体
      class DescribeTRTCRealTimeScaleMetricDataRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: String
        # @param StartTime: 开始时间，unix时间戳，单位：秒（查询时间范围根据监控仪表盘功能版本而定，基础版可查近3小时，进阶版可查近12小时）
        # @type StartTime: Integer
        # @param EndTime: 结束时间，unix时间戳，单位：秒
        # @type EndTime: Integer
        # @param RoomId: 房间ID
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTRTCRealTimeScaleMetricData返回参数结构体
      class DescribeTRTCRealTimeScaleMetricDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: TRTC监控数据出参
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Trtc.v20190722.models.TRTCDataResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TRTCDataResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrtcMcuTranscodeTime请求参数结构体
      class DescribeTrtcMcuTranscodeTimeRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: 应用ID，可不传。传应用ID时返回的是该应用的用量，不传时返回多个应用的合计值。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeTrtcMcuTranscodeTime返回参数结构体
      class DescribeTrtcMcuTranscodeTimeResponse < TencentCloud::Common::AbstractModel
        # @param Usages: 应用的用量信息数组。
        # @type Usages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Usages, :RequestId

        def initialize(usages=nil, requestid=nil)
          @Usages = usages
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Usages'].nil?
            @Usages = []
            params['Usages'].each do |i|
              onesdkappidtranscodetimeusagesinfo_tmp = OneSdkAppIdTranscodeTimeUsagesInfo.new
              onesdkappidtranscodetimeusagesinfo_tmp.deserialize(i)
              @Usages << onesdkappidtranscodetimeusagesinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrtcRoomUsage请求参数结构体
      class DescribeTrtcRoomUsageRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppid: TRTC的SdkAppId，和房间所对应的SdkAppId相同。
        # @type SdkAppid: Integer
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD HH:MM，精确到分钟级。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD HH:MM，单次查询不超过24h。
        # @type EndTime: String

        attr_accessor :SdkAppid, :StartTime, :EndTime

        def initialize(sdkappid=nil, starttime=nil, endtime=nil)
          @SdkAppid = sdkappid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @SdkAppid = params['SdkAppid']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeTrtcRoomUsage返回参数结构体
      class DescribeTrtcRoomUsageResponse < TencentCloud::Common::AbstractModel
        # @param Data: 房间维度用量数据，csv文件格式，单位：秒。
        # @type Data: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTrtcUsage请求参数结构体
      class DescribeTrtcUsageRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 查询开始时间，格式为YYYY-MM-DD。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，格式为YYYY-MM-DD。
        # 单次查询统计区间最多不能超过31天。
        # @type EndTime: String
        # @param SdkAppId: TRTC的SdkAppId，和房间所对应的SdkAppId相同。如果没有这个参数，返回用户下全部实时音视频应用的汇总。
        # @type SdkAppId: Integer

        attr_accessor :StartTime, :EndTime, :SdkAppId

        def initialize(starttime=nil, endtime=nil, sdkappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeTrtcUsage返回参数结构体
      class DescribeTrtcUsageResponse < TencentCloud::Common::AbstractModel
        # @param UsageKey: 用量类型，与UsageValue中各个位置的值对应。
        # @type UsageKey: Array
        # @param UsageList: 各个时间点用量明细，单位:分钟
        # @type UsageList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :UsageKey, :UsageList, :RequestId

        def initialize(usagekey=nil, usagelist=nil, requestid=nil)
          @UsageKey = usagekey
          @UsageList = usagelist
          @RequestId = requestid
        end

        def deserialize(params)
          @UsageKey = params['UsageKey']
          unless params['UsageList'].nil?
            @UsageList = []
            params['UsageList'].each do |i|
              trtcusage_tmp = TrtcUsage.new
              trtcusage_tmp.deserialize(i)
              @UsageList << trtcusage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUnusualEvent请求参数结构体
      class DescribeUnusualEventRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        # 注意：支持查询14天内的数据
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）注意：与StartTime间隔时间不超过1小时。
        # @type EndTime: Integer
        # @param RoomId: 房间号，查询房间内任意20条以内异常体验事件
        # @type RoomId: String

        attr_accessor :SdkAppId, :StartTime, :EndTime, :RoomId

        def initialize(sdkappid=nil, starttime=nil, endtime=nil, roomid=nil)
          @SdkAppId = sdkappid
          @StartTime = starttime
          @EndTime = endtime
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @RoomId = params['RoomId']
        end
      end

      # DescribeUnusualEvent返回参数结构体
      class DescribeUnusualEventResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的数据总条数
        # 范围：[0，20]
        # @type Total: Integer
        # @param AbnormalExperienceList: 异常体验列表
        # @type AbnormalExperienceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :AbnormalExperienceList, :RequestId

        def initialize(total=nil, abnormalexperiencelist=nil, requestid=nil)
          @Total = total
          @AbnormalExperienceList = abnormalexperiencelist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['AbnormalExperienceList'].nil?
            @AbnormalExperienceList = []
            params['AbnormalExperienceList'].each do |i|
              abnormalexperience_tmp = AbnormalExperience.new
              abnormalexperience_tmp.deserialize(i)
              @AbnormalExperienceList << abnormalexperience_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserEvent请求参数结构体
      class DescribeUserEventRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： SdkAppId_RoomId（房间号）_ CreateTime（房间创建时间，unix时间戳，单位为s）例：1400xxxxxx_218695_1590065777。通过 DescribeRoomInfo（查询历史房间列表）接口获取（[查询历史房间列表](https://cloud.tencent.com/document/product/647/44050)）。
        # @type CommId: String
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）
        # 注意：支持查询14天内的数据
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        # 注意：查询时间大于房间结束时间，以房间结束时间为准。
        # @type EndTime: Integer
        # @param UserId: 用户UserId
        # @type UserId: String
        # @param RoomId: 房间号（如：223）
        # @type RoomId: String
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer

        attr_accessor :CommId, :StartTime, :EndTime, :UserId, :RoomId, :SdkAppId

        def initialize(commid=nil, starttime=nil, endtime=nil, userid=nil, roomid=nil, sdkappid=nil)
          @CommId = commid
          @StartTime = starttime
          @EndTime = endtime
          @UserId = userid
          @RoomId = roomid
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          @CommId = params['CommId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @UserId = params['UserId']
          @RoomId = params['RoomId']
          @SdkAppId = params['SdkAppId']
        end
      end

      # DescribeUserEvent返回参数结构体
      class DescribeUserEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: 返回的事件列表，若没有数据，会返回空数组。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              eventlist_tmp = EventList.new
              eventlist_tmp.deserialize(i)
              @Data << eventlist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserInfo请求参数结构体
      class DescribeUserInfoRequest < TencentCloud::Common::AbstractModel
        # @param CommId: 通话 ID（唯一标识一次通话）： SdkAppId_RoomId（房间号）_ CreateTime（房间创建时间，unix时间戳，单位为s）例：1400xxxxxx_218695_1590065777。通过 DescribeRoomInfo（查询历史房间列表）接口获取（[查询历史房间列表](https://cloud.tencent.com/document/product/647/44050)）。
        # @type CommId: String
        # @param StartTime: 查询开始时间，本地unix时间戳，单位为秒（如：1590065777）注意：最大支持查询14天内的数据
        # @type StartTime: Integer
        # @param EndTime: 查询结束时间，本地unix时间戳，单位为秒（如：1590065877）
        # 注意：与StartTime间隔时间不超过4小时。
        # @type EndTime: Integer
        # @param SdkAppId: 用户SdkAppId（如：1400xxxxxx）
        # @type SdkAppId: Integer
        # @param UserIds: 需查询的用户数组，不填默认返回6个用户
        # 范围：[1，100]。
        # @type UserIds: Array
        # @param PageNumber: 当前页数，默认为0，
        # 注意：PageNumber和PageSize 其中一个不填均默认返回6条数据。
        # @type PageNumber: Integer
        # @param PageSize: 每页个数，默认为6，
        # 范围：[1，100]。
        # @type PageSize: Integer

        attr_accessor :CommId, :StartTime, :EndTime, :SdkAppId, :UserIds, :PageNumber, :PageSize

        def initialize(commid=nil, starttime=nil, endtime=nil, sdkappid=nil, userids=nil, pagenumber=nil, pagesize=nil)
          @CommId = commid
          @StartTime = starttime
          @EndTime = endtime
          @SdkAppId = sdkappid
          @UserIds = userids
          @PageNumber = pagenumber
          @PageSize = pagesize
        end

        def deserialize(params)
          @CommId = params['CommId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SdkAppId = params['SdkAppId']
          @UserIds = params['UserIds']
          @PageNumber = params['PageNumber']
          @PageSize = params['PageSize']
        end
      end

      # DescribeUserInfo返回参数结构体
      class DescribeUserInfoResponse < TencentCloud::Common::AbstractModel
        # @param Total: 返回的用户总条数
        # @type Total: Integer
        # @param UserList: 用户信息列表
        # @type UserList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Total, :UserList, :RequestId

        def initialize(total=nil, userlist=nil, requestid=nil)
          @Total = total
          @UserList = userlist
          @RequestId = requestid
        end

        def deserialize(params)
          @Total = params['Total']
          unless params['UserList'].nil?
            @UserList = []
            params['UserList'].each do |i|
              userinformation_tmp = UserInformation.new
              userinformation_tmp.deserialize(i)
              @UserList << userinformation_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVoicePrint请求参数结构体
      class DescribeVoicePrintRequest < TencentCloud::Common::AbstractModel
        # @param DescribeMode: 查询方式，0表示查询特定VoicePrintId，1表示分页查询
        # @type DescribeMode: Integer
        # @param VoicePrintIdList: 声纹ID
        # @type VoicePrintIdList: Array
        # @param PageIndex: 当前页码,从1开始,DescribeMode为1时填写
        # @type PageIndex: Integer
        # @param PageSize: 每页条数 最少20,DescribeMode为1时填写
        # @type PageSize: Integer

        attr_accessor :DescribeMode, :VoicePrintIdList, :PageIndex, :PageSize

        def initialize(describemode=nil, voiceprintidlist=nil, pageindex=nil, pagesize=nil)
          @DescribeMode = describemode
          @VoicePrintIdList = voiceprintidlist
          @PageIndex = pageindex
          @PageSize = pagesize
        end

        def deserialize(params)
          @DescribeMode = params['DescribeMode']
          @VoicePrintIdList = params['VoicePrintIdList']
          @PageIndex = params['PageIndex']
          @PageSize = params['PageSize']
        end
      end

      # DescribeVoicePrint返回参数结构体
      class DescribeVoicePrintResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总的条数
        # @type TotalCount: Integer
        # @param Data: 声纹信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              voiceprintinfo_tmp = VoicePrintInfo.new
              voiceprintinfo_tmp.deserialize(i)
              @Data << voiceprintinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebRecord请求参数结构体
      class DescribeWebRecordRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 开始页面录制时返回的任务id
        # @type TaskId: String
        # @param SdkAppId: 发起页面录制时传递的SdkAppId
        # @type SdkAppId: Integer
        # @param RecordId: 发起录制时传递的RecordId, 传入此值时需要传递SdkAppId
        # @type RecordId: String

        attr_accessor :TaskId, :SdkAppId, :RecordId

        def initialize(taskid=nil, sdkappid=nil, recordid=nil)
          @TaskId = taskid
          @SdkAppId = sdkappid
          @RecordId = recordid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SdkAppId = params['SdkAppId']
          @RecordId = params['RecordId']
        end
      end

      # DescribeWebRecord返回参数结构体
      class DescribeWebRecordResponse < TencentCloud::Common::AbstractModel
        # @param Status: 1: 正在录制中
        # @type Status: Integer
        # @param TaskId: 在使用RecordId查询时返回
        # @type TaskId: String
        # @param RecordId: 在使用TaskId查询时返回
        # @type RecordId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :TaskId, :RecordId, :RequestId

        def initialize(status=nil, taskid=nil, recordid=nil, requestid=nil)
          @Status = status
          @TaskId = taskid
          @RecordId = recordid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @TaskId = params['TaskId']
          @RecordId = params['RecordId']
          @RequestId = params['RequestId']
        end
      end

      # DismissRoomByStrRoomId请求参数结构体
      class DismissRoomByStrRoomIdRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 字符串类型房间号。
        # 本接口仅支持解散字符串类型房间号，如需解散数字类型房间号，请使用：DismissRoom
        # @type RoomId: String

        attr_accessor :SdkAppId, :RoomId

        def initialize(sdkappid=nil, roomid=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
        end
      end

      # DismissRoomByStrRoomId返回参数结构体
      class DismissRoomByStrRoomIdResponse < TencentCloud::Common::AbstractModel
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

      # DismissRoom请求参数结构体
      class DismissRoomRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 数字房间号。本接口仅支持解散数字类型房间号，如需解散字符串类型房间号，请使用DismissRoomByStrRoomId。
        # @type RoomId: Integer

        attr_accessor :SdkAppId, :RoomId

        def initialize(sdkappid=nil, roomid=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
        end
      end

      # DismissRoom返回参数结构体
      class DismissRoomResponse < TencentCloud::Common::AbstractModel
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

      # 渲染移动模式参数，不渲染移动模式时，请勿设置此参数。
      class EmulateMobileParams < TencentCloud::Common::AbstractModel
        # @param MobileDeviceType: 移动设备类型，
        # 0: 手机
        # 1: 平板
        # @type MobileDeviceType: Integer
        # @param ScreenOrientation: 屏幕方向，
        # 0: 竖屏，
        # 1: 横屏
        # @type ScreenOrientation: Integer

        attr_accessor :MobileDeviceType, :ScreenOrientation

        def initialize(mobiledevicetype=nil, screenorientation=nil)
          @MobileDeviceType = mobiledevicetype
          @ScreenOrientation = screenorientation
        end

        def deserialize(params)
          @MobileDeviceType = params['MobileDeviceType']
          @ScreenOrientation = params['ScreenOrientation']
        end
      end

      # MCU混流输出流编码参数
      class EncodeParams < TencentCloud::Common::AbstractModel
        # @param AudioSampleRate: 混流-输出流音频采样率。取值为[48000, 44100, 32000, 24000, 16000, 8000]，单位是Hz。混流任务发起过程中，为了保持CDN链接的稳定，不要修改音频参数（codec、采样率、码率、声道数）。
        # @type AudioSampleRate: Integer
        # @param AudioBitrate: 混流-输出流音频码率。取值范围[8,500]，单位为kbps。混流任务发起过程中，为了保持CDN链接的稳定，不要修改音频参数（codec、采样率、码率、声道数）。
        # @type AudioBitrate: Integer
        # @param AudioChannels: 混流-输出流音频声道数，取值范围[1,2]，1表示混流输出音频为单声道，2表示混流输出音频为双声道。混流任务发起过程中，为了保持CDN链接的稳定，不要修改音频参数（codec、采样率、码率、声道数）。
        # @type AudioChannels: Integer
        # @param VideoWidth: 混流-输出流宽，音视频输出时必填。取值范围[0,1920]，单位为像素值。
        # @type VideoWidth: Integer
        # @param VideoHeight: 混流-输出流高，音视频输出时必填。取值范围[0,1080]，单位为像素值。
        # @type VideoHeight: Integer
        # @param VideoBitrate: 混流-输出流码率，音视频输出时必填。取值范围[1,10000]，单位为kbps。
        # @type VideoBitrate: Integer
        # @param VideoFramerate: 混流-输出流帧率，音视频输出时必填。取值范围[1,60]，表示混流的输出帧率可选范围为1到60fps。
        # @type VideoFramerate: Integer
        # @param VideoGop: 混流-输出流gop，音视频输出时必填。取值范围[1,5]，单位为秒。
        # @type VideoGop: Integer
        # @param BackgroundColor: 混流-输出流背景色，取值是十进制整数。常用的颜色有：
        # 红色：0xff0000，对应的十进制整数是16724736。
        # 黄色：0xffff00。对应的十进制整数是16776960。
        # 绿色：0x33cc00。对应的十进制整数是3394560。
        # 蓝色：0x0066ff。对应的十进制整数是26367。
        # 黑色：0x000000。对应的十进制整数是0。
        # 白色：0xFFFFFF。对应的十进制整数是16777215。
        # 灰色：0x999999。对应的十进制整数是10066329。
        # @type BackgroundColor: Integer
        # @param BackgroundImageId: 混流-输出流背景图片，取值为实时音视频控制台上传的图片ID。
        # @type BackgroundImageId: Integer
        # @param AudioCodec: 混流-输出流音频编码类型，取值范围[0,1, 2]，0为LC-AAC，1为HE-AAC，2为HE-AACv2。默认值为0。当音频编码设置为HE-AACv2时，只支持输出流音频声道数为双声道。HE-AAC和HE-AACv2支持的输出流音频采样率范围为[48000, 44100, 32000, 24000, 16000]。混流任务发起过程中，为了保持CDN链接的稳定，不要修改音频参数（codec、采样率、码率、声道数）。
        # @type AudioCodec: Integer
        # @param BackgroundImageUrl: 混流-输出流背景图片URL地址，支持png、jpg、jpeg、bmp格式，暂不支持透明通道。URL链接长度限制为512字节。BackgroundImageUrl和BackgroundImageId参数都填时，以BackgroundImageUrl为准。图片大小限制不超过2MB。
        # @type BackgroundImageUrl: String

        attr_accessor :AudioSampleRate, :AudioBitrate, :AudioChannels, :VideoWidth, :VideoHeight, :VideoBitrate, :VideoFramerate, :VideoGop, :BackgroundColor, :BackgroundImageId, :AudioCodec, :BackgroundImageUrl

        def initialize(audiosamplerate=nil, audiobitrate=nil, audiochannels=nil, videowidth=nil, videoheight=nil, videobitrate=nil, videoframerate=nil, videogop=nil, backgroundcolor=nil, backgroundimageid=nil, audiocodec=nil, backgroundimageurl=nil)
          @AudioSampleRate = audiosamplerate
          @AudioBitrate = audiobitrate
          @AudioChannels = audiochannels
          @VideoWidth = videowidth
          @VideoHeight = videoheight
          @VideoBitrate = videobitrate
          @VideoFramerate = videoframerate
          @VideoGop = videogop
          @BackgroundColor = backgroundcolor
          @BackgroundImageId = backgroundimageid
          @AudioCodec = audiocodec
          @BackgroundImageUrl = backgroundimageurl
        end

        def deserialize(params)
          @AudioSampleRate = params['AudioSampleRate']
          @AudioBitrate = params['AudioBitrate']
          @AudioChannels = params['AudioChannels']
          @VideoWidth = params['VideoWidth']
          @VideoHeight = params['VideoHeight']
          @VideoBitrate = params['VideoBitrate']
          @VideoFramerate = params['VideoFramerate']
          @VideoGop = params['VideoGop']
          @BackgroundColor = params['BackgroundColor']
          @BackgroundImageId = params['BackgroundImageId']
          @AudioCodec = params['AudioCodec']
          @BackgroundImageUrl = params['BackgroundImageUrl']
        end
      end

      # sdk或webrtc的事件列表。
      class EventList < TencentCloud::Common::AbstractModel
        # @param Content: 数据内容
        # @type Content: Array
        # @param PeerId: 发送端的userId
        # @type PeerId: String

        attr_accessor :Content, :PeerId

        def initialize(content=nil, peerid=nil)
          @Content = content
          @PeerId = peerid
        end

        def deserialize(params)
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              eventmessage_tmp = EventMessage.new
              eventmessage_tmp.deserialize(i)
              @Content << eventmessage_tmp
            end
          end
          @PeerId = params['PeerId']
        end
      end

      # 事件信息，包括，事件时间戳，事件ID,
      class EventMessage < TencentCloud::Common::AbstractModel
        # @param Type: 视频流类型：
        # 0：与视频无关的事件；
        # 2：视频为大画面；
        # 3：视频为小画面；
        # 7：视频为旁路画面；
        # @type Type: Integer
        # @param Time: 事件上报的时间戳，unix时间（1589891188801ms)
        # @type Time: Integer
        # @param EventId: 事件Id：分为sdk的事件和webrtc的事件，详情见：附录/事件 ID 映射表：https://cloud.tencent.com/document/product/647/44916
        # @type EventId: Integer
        # @param ParamOne: 事件的第一个参数，如视频分辨率宽
        # @type ParamOne: Integer
        # @param ParamTwo: 事件的第二个参数，如视频分辨率高
        # @type ParamTwo: Integer

        attr_accessor :Type, :Time, :EventId, :ParamOne, :ParamTwo

        def initialize(type=nil, time=nil, eventid=nil, paramone=nil, paramtwo=nil)
          @Type = type
          @Time = time
          @EventId = eventid
          @ParamOne = paramone
          @ParamTwo = paramtwo
        end

        def deserialize(params)
          @Type = params['Type']
          @Time = params['Time']
          @EventId = params['EventId']
          @ParamOne = params['ParamOne']
          @ParamTwo = params['ParamTwo']
        end
      end

      # 调用服务端主动发起请求到LLM
      class InvokeLLM < TencentCloud::Common::AbstractModel
        # @param Content: 请求LLM的内容
        # @type Content: String
        # @param Interrupt: 是否允许该文本打断机器人说话
        # @type Interrupt: Boolean

        attr_accessor :Content, :Interrupt

        def initialize(content=nil, interrupt=nil)
          @Content = content
          @Interrupt = interrupt
        end

        def deserialize(params)
          @Content = params['Content']
          @Interrupt = params['Interrupt']
        end
      end

      # MCU混流布局参数
      class LayoutParams < TencentCloud::Common::AbstractModel
        # @param Template: 混流布局模板ID，0为悬浮模板(默认);1为九宫格模板;2为屏幕分享模板;3为画中画模板;4为自定义模板。
        # @type Template: Integer
        # @param MainVideoUserId: 屏幕分享模板、悬浮模板、画中画模板中有效，代表大画面对应的用户ID。
        # @type MainVideoUserId: String
        # @param MainVideoStreamType: 屏幕分享模板、悬浮模板、画中画模板中有效，代表大画面对应的流类型，0为摄像头，1为屏幕分享。左侧大画面为web用户时此值填0。
        # @type MainVideoStreamType: Integer
        # @param SmallVideoLayoutParams: 画中画模板中有效，代表小画面的布局参数。
        # @type SmallVideoLayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.SmallVideoLayoutParams`
        # @param MainVideoRightAlign: 屏幕分享模板有效。设置为1时代表大画面居右，小画面居左布局。默认为0。
        # @type MainVideoRightAlign: Integer
        # @param MixVideoUids: 指定混视频的用户ID列表。设置此参数后，输出流混合此参数中包含用户的音视频，以及其他用户的纯音频。悬浮模板、九宫格、屏幕分享模板有效，最多可设置16个用户。
        # @type MixVideoUids: Array
        # @param PresetLayoutConfig: 自定义模板中有效，指定用户视频在混合画面中的位置。
        # @type PresetLayoutConfig: Array
        # @param PlaceHolderMode: 自定义模板中有效，设置为1时代表启用占位图功能，0时代表不启用占位图功能，默认为0。启用占位图功能时，在预设位置的用户没有上行视频时可显示对应的占位图。
        # @type PlaceHolderMode: Integer
        # @param PureAudioHoldPlaceMode: 悬浮模板、九宫格、屏幕分享模板生效，用于控制纯音频上行是否占用画面布局位置。设置为0是代表后台默认处理方式，悬浮小画面占布局位置，九宫格画面占布局位置、屏幕分享小画面不占布局位置；设置为1时代表纯音频上行占布局位置；设置为2时代表纯音频上行不占布局位置。默认为0。
        # @type PureAudioHoldPlaceMode: Integer
        # @param WaterMarkParams: 水印参数。
        # @type WaterMarkParams: :class:`Tencentcloud::Trtc.v20190722.models.WaterMarkParams`
        # @param RenderMode: 屏幕分享模板、悬浮模板、九宫格模板、画中画模版有效，画面在输出时的显示模式：0为裁剪，1为缩放，2为缩放并显示黑底，不填采用后台的默认渲染方式（屏幕分享大画面为缩放，其他为裁剪）。若此参数不生效，请提交工单寻求帮助。
        # @type RenderMode: Integer

        attr_accessor :Template, :MainVideoUserId, :MainVideoStreamType, :SmallVideoLayoutParams, :MainVideoRightAlign, :MixVideoUids, :PresetLayoutConfig, :PlaceHolderMode, :PureAudioHoldPlaceMode, :WaterMarkParams, :RenderMode

        def initialize(template=nil, mainvideouserid=nil, mainvideostreamtype=nil, smallvideolayoutparams=nil, mainvideorightalign=nil, mixvideouids=nil, presetlayoutconfig=nil, placeholdermode=nil, pureaudioholdplacemode=nil, watermarkparams=nil, rendermode=nil)
          @Template = template
          @MainVideoUserId = mainvideouserid
          @MainVideoStreamType = mainvideostreamtype
          @SmallVideoLayoutParams = smallvideolayoutparams
          @MainVideoRightAlign = mainvideorightalign
          @MixVideoUids = mixvideouids
          @PresetLayoutConfig = presetlayoutconfig
          @PlaceHolderMode = placeholdermode
          @PureAudioHoldPlaceMode = pureaudioholdplacemode
          @WaterMarkParams = watermarkparams
          @RenderMode = rendermode
        end

        def deserialize(params)
          @Template = params['Template']
          @MainVideoUserId = params['MainVideoUserId']
          @MainVideoStreamType = params['MainVideoStreamType']
          unless params['SmallVideoLayoutParams'].nil?
            @SmallVideoLayoutParams = SmallVideoLayoutParams.new
            @SmallVideoLayoutParams.deserialize(params['SmallVideoLayoutParams'])
          end
          @MainVideoRightAlign = params['MainVideoRightAlign']
          @MixVideoUids = params['MixVideoUids']
          unless params['PresetLayoutConfig'].nil?
            @PresetLayoutConfig = []
            params['PresetLayoutConfig'].each do |i|
              presetlayoutconfig_tmp = PresetLayoutConfig.new
              presetlayoutconfig_tmp.deserialize(i)
              @PresetLayoutConfig << presetlayoutconfig_tmp
            end
          end
          @PlaceHolderMode = params['PlaceHolderMode']
          @PureAudioHoldPlaceMode = params['PureAudioHoldPlaceMode']
          unless params['WaterMarkParams'].nil?
            @WaterMarkParams = WaterMarkParams.new
            @WaterMarkParams.deserialize(params['WaterMarkParams'])
          end
          @RenderMode = params['RenderMode']
        end
      end

      # 指定动态布局中悬浮布局和屏幕分享布局的大画面信息，只在悬浮布局和屏幕分享布局有效。
      class MaxVideoUser < TencentCloud::Common::AbstractModel
        # @param UserMediaStream: 用户媒体流参数。
        # @type UserMediaStream: :class:`Tencentcloud::Trtc.v20190722.models.UserMediaStream`

        attr_accessor :UserMediaStream

        def initialize(usermediastream=nil)
          @UserMediaStream = usermediastream
        end

        def deserialize(params)
          unless params['UserMediaStream'].nil?
            @UserMediaStream = UserMediaStream.new
            @UserMediaStream.deserialize(params['UserMediaStream'])
          end
        end
      end

      # 混流转推的音频相关参数。
      class McuAudioParams < TencentCloud::Common::AbstractModel
        # @param AudioEncode: 音频编码参数。
        # @type AudioEncode: :class:`Tencentcloud::Trtc.v20190722.models.AudioEncode`
        # @param SubscribeAudioList: 音频用户白名单，start时，为空或不填表示混所有主播音频，填具体值表示混指定主播音频；update时，不填表示不更新，为空表示更新为混所有主播音频，填具体值表示更新为混指定主播音频。
        # 使用黑白名单时，黑白名单必须同时填写。都不填写时表示不更新。同一个用户同时在黑白名单时，以黑名单为主。
        # 注：如果是跨房pk时，跨房混流需要指定音频白名单，否则pk主播的的音频上行会被拉到两次，产生重音。
        # @type SubscribeAudioList: Array
        # @param UnSubscribeAudioList: 音频用户黑名单，为空或不填表示无黑名单，填具体值表示不混指定主播音频。update时，不填表示不更新，为空表示更新为清空黑名单，填具体值表示更新为不混指定主播音频。
        # 使用黑白名单时，黑白名单必须同时填写。都不填写时表示不更新。同一个用户同时在黑白名单时，以黑名单为主。
        # @type UnSubscribeAudioList: Array

        attr_accessor :AudioEncode, :SubscribeAudioList, :UnSubscribeAudioList

        def initialize(audioencode=nil, subscribeaudiolist=nil, unsubscribeaudiolist=nil)
          @AudioEncode = audioencode
          @SubscribeAudioList = subscribeaudiolist
          @UnSubscribeAudioList = unsubscribeaudiolist
        end

        def deserialize(params)
          unless params['AudioEncode'].nil?
            @AudioEncode = AudioEncode.new
            @AudioEncode.deserialize(params['AudioEncode'])
          end
          unless params['SubscribeAudioList'].nil?
            @SubscribeAudioList = []
            params['SubscribeAudioList'].each do |i|
              mcuuserinfoparams_tmp = McuUserInfoParams.new
              mcuuserinfoparams_tmp.deserialize(i)
              @SubscribeAudioList << mcuuserinfoparams_tmp
            end
          end
          unless params['UnSubscribeAudioList'].nil?
            @UnSubscribeAudioList = []
            params['UnSubscribeAudioList'].each do |i|
              mcuuserinfoparams_tmp = McuUserInfoParams.new
              mcuuserinfoparams_tmp.deserialize(i)
              @UnSubscribeAudioList << mcuuserinfoparams_tmp
            end
          end
        end
      end

      # 混流自定义渲染参数
      class McuBackgroundCustomRender < TencentCloud::Common::AbstractModel
        # @param Width: 自定义渲染画面的宽度，单位为像素值，需大于0，且不能超过子布局的宽。
        # @type Width: Integer
        # @param Height: 自定义渲染画面的高度，单位为像素值，需大于0，且不能超过子布局的高。
        # @type Height: Integer
        # @param Radius: 自定义渲染画面的圆角半径，单位为像素值，不能超过渲染画面Width和Height最小值的一半，不指定默认为0，表示直角。
        # @type Radius: Integer

        attr_accessor :Width, :Height, :Radius

        def initialize(width=nil, height=nil, radius=nil)
          @Width = width
          @Height = height
          @Radius = radius
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @Radius = params['Radius']
        end
      end

      # Mcu转推录制，点播相关参数。
      class McuCloudVod < TencentCloud::Common::AbstractModel
        # @param McuTencentVod: 腾讯云点播相关参数。
        # @type McuTencentVod: :class:`Tencentcloud::Trtc.v20190722.models.McuTencentVod`

        attr_accessor :McuTencentVod

        def initialize(mcutencentvod=nil)
          @McuTencentVod = mcutencentvod
        end

        def deserialize(params)
          unless params['McuTencentVod'].nil?
            @McuTencentVod = McuTencentVod.new
            @McuTencentVod.deserialize(params['McuTencentVod'])
          end
        end
      end

      # 混流自定义裁剪参数
      class McuCustomCrop < TencentCloud::Common::AbstractModel
        # @param LocationX: 自定义裁剪起始位置的X偏移，单位为像素值，大于等于0。
        # @type LocationX: Integer
        # @param LocationY: 自定义裁剪起始位置的Y偏移，单位为像素值，大于等于0。
        # @type LocationY: Integer
        # @param Width: 自定义裁剪画面的宽度，单位为像素值，大于0，且LocationX+Width不超过10000
        # @type Width: Integer
        # @param Height: 自定义裁剪画面的高度，单位为像素值，大于0，且LocationY+Height不超过10000
        # @type Height: Integer

        attr_accessor :LocationX, :LocationY, :Width, :Height

        def initialize(locationx=nil, locationy=nil, width=nil, height=nil)
          @LocationX = locationx
          @LocationY = locationy
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 回推房间参数。
      class McuFeedBackRoomParams < TencentCloud::Common::AbstractModel
        # @param RoomId: 回推房间的RoomId。
        # @type RoomId: String
        # @param RoomIdType: 房间类型，必须和回推房间所对应的RoomId类型相同，0为整形房间号，1为字符串房间号。
        # @type RoomIdType: Integer
        # @param UserId: 回推房间使用的UserId(https://cloud.tencent.com/document/product/647/46351#userid)，注意这个userId不能与其他TRTC或者转推服务等已经使用的UserId重复，建议可以把房间ID作为userId的标识的一部分。
        # @type UserId: String
        # @param UserSig: 回推房间UserId对应的用户签名，相当于登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        # @type UserSig: String

        attr_accessor :RoomId, :RoomIdType, :UserId, :UserSig

        def initialize(roomid=nil, roomidtype=nil, userid=nil, usersig=nil)
          @RoomId = roomid
          @RoomIdType = roomidtype
          @UserId = userid
          @UserSig = usersig
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @RoomIdType = params['RoomIdType']
          @UserId = params['UserId']
          @UserSig = params['UserSig']
        end
      end

      # 混流布局参数。
      class McuLayout < TencentCloud::Common::AbstractModel
        # @param UserMediaStream: 用户媒体流参数。不填时腾讯云后台按照上行主播的进房顺序自动填充。
        # @type UserMediaStream: :class:`Tencentcloud::Trtc.v20190722.models.UserMediaStream`
        # @param ImageWidth: 子画面在输出时的宽度，单位为像素值，不填默认为0。
        # @type ImageWidth: Integer
        # @param ImageHeight: 子画面在输出时的高度，单位为像素值，不填默认为0。
        # @type ImageHeight: Integer
        # @param LocationX: 子画面在输出时的X偏移，单位为像素值，LocationX与ImageWidth之和不能超过混流输出的总宽度，不填默认为0。
        # @type LocationX: Integer
        # @param LocationY: 子画面在输出时的Y偏移，单位为像素值，LocationY与ImageHeight之和不能超过混流输出的总高度，不填默认为0。
        # @type LocationY: Integer
        # @param ZOrder: 子画面在输出时的层级，不填默认为0。
        # @type ZOrder: Integer
        # @param RenderMode: 子画面在输出时的显示模式：0为裁剪，1为缩放并显示背景，2为缩放并显示黑底。不填默认为0。
        # @type RenderMode: Integer
        # @param BackGroundColor: 【此参数配置无效，暂不支持】子画面的背景颜色，常用的颜色有：
        # 红色：0xcc0033。
        # 黄色：0xcc9900。
        # 绿色：0xcccc33。
        # 蓝色：0x99CCFF。
        # 黑色：0x000000。
        # 白色：0xFFFFFF。
        # 灰色：0x999999。
        # @type BackGroundColor: String
        # @param BackgroundImageUrl: 子画面的占位图片url，填写该参数，当用户关闭摄像头或未进入TRTC房间时，会在布局位置填充为指定图片。若指定图片与布局位置尺寸比例不一致，则会对图片进行拉伸处理，优先级高于BackGroundColor。支持png、jpg、jpeg、bmp、gif、webm格式。图片大小限制不超过5MB。
        # 注：
        # 1，您需要确保图片链接的可访问性，后台单次下载超时时间为10秒，最多重试3次，若最终图片下载失败，占位图片将不会生效。
        # 2，url可支持字符集：【'0-9','a-z','A-Z','-', '.', '_', '~', ':', '/', '?', '#', '[', ']','@', '!', '&', '(', ')', '*', '+', ',', '%', '=', ';', '|'】，您需要确保url字符在可支持字符集内，若存在可支持字符集外的字符，占位图片将不会生效。
        # @type BackgroundImageUrl: String
        # @param CustomCrop: 客户自定义裁剪，针对原始输入流裁剪
        # @type CustomCrop: :class:`Tencentcloud::Trtc.v20190722.models.McuCustomCrop`
        # @param BackgroundRenderMode: 子背景图在输出时的显示模式：0为裁剪，1为缩放并显示背景，2为缩放并显示黑底，3为变比例伸缩，4为自定义渲染。不填默认为3。
        # @type BackgroundRenderMode: Integer
        # @param TransparentUrl: 子画面的透明模版url，指向一张包含透明通道的模板图片。填写该参数，后台混流时会提取该模板图片的透明通道，将其缩放作为目标画面的透明通道，再和其他画面进行混合。您可以通过透明模版实现目标画面的半透明效果和任意形状裁剪（如圆角、星形、心形等）。 支持png格式。图片大小限制不超过5MB。
        # 注：
        # 1，模板图片宽高比应接近目标画面宽高比，以避免缩放适配目标画面时出现模板效果变形；2，透明模版只有RenderMode为0（裁剪）时才生效；3，您需要确保图片链接的可访问性，后台单次下载超时时间为10秒，最多重试3次，若最终图片下载失败，透明模版将不会生效。
        # 2，url可支持字符集：【'0-9','a-z','A-Z','-', '.', '_', '~', ':', '/', '?', '#', '[', ']','@', '!', '&', '(', ')', '*', '+', ',', '%', '=', ';', '|'】，您需要确保url字符在可支持字符集内，若存在可支持字符集外的字符，透明模版将不会生效。
        # @type TransparentUrl: String
        # @param BackgroundCustomRender: 子背景图的自定义渲染参数，当BackgroundRenderMode为4时必须配置。
        # @type BackgroundCustomRender: :class:`Tencentcloud::Trtc.v20190722.models.McuBackgroundCustomRender`
        # @param BackGroundColorMode: 子背景色生效模式，默认值为0表示均不生效。
        # bit0:占位图缩放是否生效。
        # bit1:上行流缩放是否生效。
        # 您可以将相应bit位置1启动生效，例如：
        # 0(00)表示子背景色不生效。
        # 1(01)表示子背景色只在占位图缩放时生效。
        # 2(10)表示子背景色只在上行流缩放时生效。
        # 3(11)表示子背景色在占位图缩放和上行流缩放时均生效。
        # @type BackGroundColorMode: Integer

        attr_accessor :UserMediaStream, :ImageWidth, :ImageHeight, :LocationX, :LocationY, :ZOrder, :RenderMode, :BackGroundColor, :BackgroundImageUrl, :CustomCrop, :BackgroundRenderMode, :TransparentUrl, :BackgroundCustomRender, :BackGroundColorMode

        def initialize(usermediastream=nil, imagewidth=nil, imageheight=nil, locationx=nil, locationy=nil, zorder=nil, rendermode=nil, backgroundcolor=nil, backgroundimageurl=nil, customcrop=nil, backgroundrendermode=nil, transparenturl=nil, backgroundcustomrender=nil, backgroundcolormode=nil)
          @UserMediaStream = usermediastream
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @LocationX = locationx
          @LocationY = locationy
          @ZOrder = zorder
          @RenderMode = rendermode
          @BackGroundColor = backgroundcolor
          @BackgroundImageUrl = backgroundimageurl
          @CustomCrop = customcrop
          @BackgroundRenderMode = backgroundrendermode
          @TransparentUrl = transparenturl
          @BackgroundCustomRender = backgroundcustomrender
          @BackGroundColorMode = backgroundcolormode
        end

        def deserialize(params)
          unless params['UserMediaStream'].nil?
            @UserMediaStream = UserMediaStream.new
            @UserMediaStream.deserialize(params['UserMediaStream'])
          end
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @ZOrder = params['ZOrder']
          @RenderMode = params['RenderMode']
          @BackGroundColor = params['BackGroundColor']
          @BackgroundImageUrl = params['BackgroundImageUrl']
          unless params['CustomCrop'].nil?
            @CustomCrop = McuCustomCrop.new
            @CustomCrop.deserialize(params['CustomCrop'])
          end
          @BackgroundRenderMode = params['BackgroundRenderMode']
          @TransparentUrl = params['TransparentUrl']
          unless params['BackgroundCustomRender'].nil?
            @BackgroundCustomRender = McuBackgroundCustomRender.new
            @BackgroundCustomRender.deserialize(params['BackgroundCustomRender'])
          end
          @BackGroundColorMode = params['BackGroundColorMode']
        end
      end

      # 混流布局参数。
      class McuLayoutParams < TencentCloud::Common::AbstractModel
        # @param MixLayoutMode: 布局模式：动态布局（1：悬浮布局（默认），2：屏幕分享布局，3：九宫格布局），静态布局（4：自定义布局）。最多支持混入16路音视频流，如果用户只上行音频，也会被算作一路；自定义布局中，如果子画面只设置占位图，也被算作一路。
        # @type MixLayoutMode: Integer
        # @param PureAudioHoldPlaceMode: 纯音频上行是否占布局位置，只在动态布局中有效。0表示纯音频不占布局位置，1表示纯音频占布局位置，不填默认为0。
        # @type PureAudioHoldPlaceMode: Integer
        # @param MixLayoutList: 自定义模板中有效，指定用户视频在混合画面中的位置，最多支持设置16个输入流。
        # @type MixLayoutList: Array
        # @param MaxVideoUser: 指定动态布局中悬浮布局和屏幕分享布局的大画面信息，只在悬浮布局和屏幕分享布局有效。
        # @type MaxVideoUser: :class:`Tencentcloud::Trtc.v20190722.models.MaxVideoUser`
        # @param RenderMode: 屏幕分享模板、悬浮模板、九宫格模版有效，画面在输出时的显示模式：0为裁剪，1为缩放，2为缩放并显示黑底
        # @type RenderMode: Integer

        attr_accessor :MixLayoutMode, :PureAudioHoldPlaceMode, :MixLayoutList, :MaxVideoUser, :RenderMode

        def initialize(mixlayoutmode=nil, pureaudioholdplacemode=nil, mixlayoutlist=nil, maxvideouser=nil, rendermode=nil)
          @MixLayoutMode = mixlayoutmode
          @PureAudioHoldPlaceMode = pureaudioholdplacemode
          @MixLayoutList = mixlayoutlist
          @MaxVideoUser = maxvideouser
          @RenderMode = rendermode
        end

        def deserialize(params)
          @MixLayoutMode = params['MixLayoutMode']
          @PureAudioHoldPlaceMode = params['PureAudioHoldPlaceMode']
          unless params['MixLayoutList'].nil?
            @MixLayoutList = []
            params['MixLayoutList'].each do |i|
              mculayout_tmp = McuLayout.new
              mculayout_tmp.deserialize(i)
              @MixLayoutList << mculayout_tmp
            end
          end
          unless params['MaxVideoUser'].nil?
            @MaxVideoUser = MaxVideoUser.new
            @MaxVideoUser.deserialize(params['MaxVideoUser'])
          end
          @RenderMode = params['RenderMode']
        end
      end

      # 音量布局SEI参数，可以自定义AppData和PayloadType类型。
      # 该参数内容可以为空，表示携带默认的音量布局SEI。
      class McuLayoutVolume < TencentCloud::Common::AbstractModel
        # @param AppData: AppData的内容，会被写入自定义SEI中的app_data字段，长度需小于4096。
        # @type AppData: String
        # @param PayloadType: SEI消息的payload_type，默认值100，取值范围100-254（244除外，244为我们内部自定义的时间戳SEI）
        # @type PayloadType: Integer
        # @param Interval: SEI发送间隔，单位毫秒，默认值为1000。
        # @type Interval: Integer
        # @param FollowIdr: 取值范围[0,1]，填1：发送关键帧时会确保带SEI；填0：发送关键帧时不确保带SEI。默认值为0。
        # @type FollowIdr: Integer

        attr_accessor :AppData, :PayloadType, :Interval, :FollowIdr

        def initialize(appdata=nil, payloadtype=nil, interval=nil, followidr=nil)
          @AppData = appdata
          @PayloadType = payloadtype
          @Interval = interval
          @FollowIdr = followidr
        end

        def deserialize(params)
          @AppData = params['AppData']
          @PayloadType = params['PayloadType']
          @Interval = params['Interval']
          @FollowIdr = params['FollowIdr']
        end
      end

      # 自定义透传SEI
      class McuPassThrough < TencentCloud::Common::AbstractModel
        # @param PayloadContent: 透传SEI的payload内容。
        # @type PayloadContent: String
        # @param PayloadType: SEI消息的PayloadType，取值范围5、100-254（244除外，244为我们内部自定义的时间戳SEI）。
        # 注：部分播放器可能不支持PayloadType为5带PayloadUuid的标准类型，建议优先使用其他PayloadType。
        # @type PayloadType: Integer
        # @param PayloadUuid: PayloadType为5，PayloadUuid必须填写。PayloadType不是5时，不需要填写，填写会被后台忽略。该值必须是32长度的十六进制。
        # @type PayloadUuid: String
        # @param Interval: SEI发送间隔，单位毫秒，默认值为1000。
        # @type Interval: Integer
        # @param FollowIdr: 取值范围[0,1]，填1：发送关键帧时会确保带SEI；填0：发送关键帧时不确保带SEI。默认值为0。
        # @type FollowIdr: Integer

        attr_accessor :PayloadContent, :PayloadType, :PayloadUuid, :Interval, :FollowIdr

        def initialize(payloadcontent=nil, payloadtype=nil, payloaduuid=nil, interval=nil, followidr=nil)
          @PayloadContent = payloadcontent
          @PayloadType = payloadtype
          @PayloadUuid = payloaduuid
          @Interval = interval
          @FollowIdr = followidr
        end

        def deserialize(params)
          @PayloadContent = params['PayloadContent']
          @PayloadType = params['PayloadType']
          @PayloadUuid = params['PayloadUuid']
          @Interval = params['Interval']
          @FollowIdr = params['FollowIdr']
        end
      end

      # 转推参数。
      class McuPublishCdnParam < TencentCloud::Common::AbstractModel
        # @param PublishCdnUrl: CDN转推URL，只支持rtmp链接。
        # 注：若更新转推时，URL有任何变化，都会断流重推。
        # @type PublishCdnUrl: String
        # @param IsTencentCdn: 是否是腾讯云CDN，0为转推非腾讯云CDN，1为转推腾讯CDN，不携带该参数默认为1。注意：1，为避免误产生转推费用，该参数建议明确填写，转推非腾讯云CDN时会产生转推费用，详情参见接口文档说明；2，国内站默认只支持转推腾讯云CDN，如您有转推第三方CDN需求，请联系腾讯云技术支持。
        # @type IsTencentCdn: Integer

        attr_accessor :PublishCdnUrl, :IsTencentCdn

        def initialize(publishcdnurl=nil, istencentcdn=nil)
          @PublishCdnUrl = publishcdnurl
          @IsTencentCdn = istencentcdn
        end

        def deserialize(params)
          @PublishCdnUrl = params['PublishCdnUrl']
          @IsTencentCdn = params['IsTencentCdn']
        end
      end

      # 转推录制参数
      class McuRecordParams < TencentCloud::Common::AbstractModel
        # @param UniRecord: 转推录制模式，
        # 0/不填: 暂不支持，行为未定义；
        # 1: 不开启录制；
        # 2: 开启录制（使用控制台自动录制模板参数，参考：[跳转文档](https://cloud.tencent.com/document/product/647/111748#.E5.BD.95.E5.88.B6.E6.8E.A7.E5.88.B6.E6.96.B9.E6.A1.88)）；
        # 3: 开启录制（使用API指定参数）。
        # @type UniRecord: Integer
        # @param RecordKey: 录制任务 key，标识一个录制任务；您可以通过该参数，将多个转推任务录制成一个文件。不指定该参数时，只录制当前转推任务。
        # 【限制长度为128字节，只允许包含大小写英文字母（a-zA-Z）、数字（0-9）及下划线(_)和连词符(-)】
        # @type RecordKey: String
        # @param RecordWaitTime: 【仅当UniRecord=3时此参数有效】
        # 续录等待时间，对应录制模板“续录等待时长”，单位：秒。该值需大于等于 5，且小于等于 86400(24小时)，默认值为 30。启用续录时，录制任务空闲超过RecordWaitTime的时长，自动结束。
        # @type RecordWaitTime: Integer
        # @param RecordFormat: 【仅当UniRecord=3时此参数有效】
        # 录制输出文件格式列表，对应录制模板“文件格式”，支持“hls”、"mp4"、"aac"三种格式，默认值为"mp4"。其中"mp4"和"aac"格式，不能同时指定。
        # 只录制 mp4格式，示例值：["mp4"]。同时录制mp4 和 HLS 格式，示例值：["mp4","hls"]。
        # @type RecordFormat: Array
        # @param MaxMediaFileDuration: 【仅当UniRecord=3时此参数有效】
        # 单个文件录制时长，对应录制模板“单个录制文件时长”，单位：分钟。该值需大于等于 1，且小于等于 1440(24小时)，默认值为 1440。只对"mp4"或"aac"格式生效。实际单文件录制时长还受单文件大小不超过 2G 限制，超过2G则强制拆分。
        # @type MaxMediaFileDuration: Integer
        # @param StreamType: 【仅当UniRecord=3时此参数有效】
        # 录制的音视频类型，对应录制模板“录制格式”，0:音视频，1：纯音频，2：纯视频。最终录制文件内容是录制指定类型和转推内容的交集。
        # @type StreamType: Integer
        # @param UserDefineRecordPrefix: 录制文件名前缀，不超过64字符。只有存储为vod时生效。
        # 【限制长度为64字节，只允许包含大小写英文字母（a-zA-Z）、数字（0-9）及下划线(_)和连词符(-)】
        # @type UserDefineRecordPrefix: String
        # @param McuStorageParams: 【仅当UniRecord=3时此参数有效】
        # 录制文件存储参数，对应控制台“存储位置”及相关参数。目前支持云点播VOD和对象存储COS两种存储方式，只能填写一种。
        # @type McuStorageParams: :class:`Tencentcloud::Trtc.v20190722.models.McuStorageParams`

        attr_accessor :UniRecord, :RecordKey, :RecordWaitTime, :RecordFormat, :MaxMediaFileDuration, :StreamType, :UserDefineRecordPrefix, :McuStorageParams

        def initialize(unirecord=nil, recordkey=nil, recordwaittime=nil, recordformat=nil, maxmediafileduration=nil, streamtype=nil, userdefinerecordprefix=nil, mcustorageparams=nil)
          @UniRecord = unirecord
          @RecordKey = recordkey
          @RecordWaitTime = recordwaittime
          @RecordFormat = recordformat
          @MaxMediaFileDuration = maxmediafileduration
          @StreamType = streamtype
          @UserDefineRecordPrefix = userdefinerecordprefix
          @McuStorageParams = mcustorageparams
        end

        def deserialize(params)
          @UniRecord = params['UniRecord']
          @RecordKey = params['RecordKey']
          @RecordWaitTime = params['RecordWaitTime']
          @RecordFormat = params['RecordFormat']
          @MaxMediaFileDuration = params['MaxMediaFileDuration']
          @StreamType = params['StreamType']
          @UserDefineRecordPrefix = params['UserDefineRecordPrefix']
          unless params['McuStorageParams'].nil?
            @McuStorageParams = McuStorageParams.new
            @McuStorageParams.deserialize(params['McuStorageParams'])
          end
        end
      end

      # 混流SEI参数
      class McuSeiParams < TencentCloud::Common::AbstractModel
        # @param LayoutVolume: 音量布局SEI
        # @type LayoutVolume: :class:`Tencentcloud::Trtc.v20190722.models.McuLayoutVolume`
        # @param PassThrough: 透传SEI
        # @type PassThrough: :class:`Tencentcloud::Trtc.v20190722.models.McuPassThrough`

        attr_accessor :LayoutVolume, :PassThrough

        def initialize(layoutvolume=nil, passthrough=nil)
          @LayoutVolume = layoutvolume
          @PassThrough = passthrough
        end

        def deserialize(params)
          unless params['LayoutVolume'].nil?
            @LayoutVolume = McuLayoutVolume.new
            @LayoutVolume.deserialize(params['LayoutVolume'])
          end
          unless params['PassThrough'].nil?
            @PassThrough = McuPassThrough.new
            @PassThrough.deserialize(params['PassThrough'])
          end
        end
      end

      # Mcu转推录制，第三方存储参数。
      class McuStorageParams < TencentCloud::Common::AbstractModel
        # @param CloudStorage: 第三方云存储的账号信息（特别说明：若您选择存储至对象存储COS将会收取录制文件投递至COS的费用，详见云端录制收费说明，存储至VOD将不收取此项费用。）。
        # @type CloudStorage: :class:`Tencentcloud::Trtc.v20190722.models.CloudStorage`
        # @param McuCloudVod: 腾讯云云点播的账号信息。
        # @type McuCloudVod: :class:`Tencentcloud::Trtc.v20190722.models.McuCloudVod`

        attr_accessor :CloudStorage, :McuCloudVod

        def initialize(cloudstorage=nil, mcucloudvod=nil)
          @CloudStorage = cloudstorage
          @McuCloudVod = mcucloudvod
        end

        def deserialize(params)
          unless params['CloudStorage'].nil?
            @CloudStorage = CloudStorage.new
            @CloudStorage.deserialize(params['CloudStorage'])
          end
          unless params['McuCloudVod'].nil?
            @McuCloudVod = McuCloudVod.new
            @McuCloudVod.deserialize(params['McuCloudVod'])
          end
        end
      end

      # Mcu转推录制，腾讯云点播相关参数。
      class McuTencentVod < TencentCloud::Common::AbstractModel
        # @param Procedure: 媒体后续任务处理操作，即完成媒体上传后，可自动发起任务流操作。参数值为任务流模板名，云点播支持 创建任务流模板 并为模板命名。
        # @type Procedure: String
        # @param ExpireTime: 媒体文件过期时间，为当前时间的绝对过期时间；保存一天，就填"86400"，永久保存就填"0"，默认永久保存。
        # @type ExpireTime: Integer
        # @param StorageRegion: 指定上传园区，仅适用于对上传地域有特殊需求的用户。
        # @type StorageRegion: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 创建分类 接口，创建分类，获得分类 ID。
        # 默认值：0，表示其他分类。
        # @type ClassId: Integer
        # @param SubAppId: 点播 子应用 ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer
        # @param SessionContext: 任务流上下文，任务完成回调时透传。
        # @type SessionContext: String
        # @param SourceContext: 上传上下文，上传完成回调时透传。
        # @type SourceContext: String

        attr_accessor :Procedure, :ExpireTime, :StorageRegion, :ClassId, :SubAppId, :SessionContext, :SourceContext

        def initialize(procedure=nil, expiretime=nil, storageregion=nil, classid=nil, subappid=nil, sessioncontext=nil, sourcecontext=nil)
          @Procedure = procedure
          @ExpireTime = expiretime
          @StorageRegion = storageregion
          @ClassId = classid
          @SubAppId = subappid
          @SessionContext = sessioncontext
          @SourceContext = sourcecontext
        end

        def deserialize(params)
          @Procedure = params['Procedure']
          @ExpireTime = params['ExpireTime']
          @StorageRegion = params['StorageRegion']
          @ClassId = params['ClassId']
          @SubAppId = params['SubAppId']
          @SessionContext = params['SessionContext']
          @SourceContext = params['SourceContext']
        end
      end

      # 混流用户参数
      class McuUserInfoParams < TencentCloud::Common::AbstractModel
        # @param UserInfo: 用户参数。
        # @type UserInfo: :class:`Tencentcloud::Trtc.v20190722.models.MixUserInfo`
        # @param SoundLevel: 混音的音量调整：取值范围是0到100，100为原始上行音量，不填默认为100，值越小则音量越低。
        # 注：该参数只在音量白名单下配置生效，其他场景配置无效。
        # @type SoundLevel: Integer

        attr_accessor :UserInfo, :SoundLevel

        def initialize(userinfo=nil, soundlevel=nil)
          @UserInfo = userinfo
          @SoundLevel = soundlevel
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = MixUserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @SoundLevel = params['SoundLevel']
        end
      end

      # 混流转推的视频相关参数。
      class McuVideoParams < TencentCloud::Common::AbstractModel
        # @param VideoEncode: 输出流视频编码参数。
        # @type VideoEncode: :class:`Tencentcloud::Trtc.v20190722.models.VideoEncode`
        # @param LayoutParams: 混流布局参数。
        # @type LayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.McuLayoutParams`
        # @param BackGroundColor: 整个画布背景颜色，常用的颜色有：
        # 红色：0xcc0033。
        # 黄色：0xcc9900。
        # 绿色：0xcccc33。
        # 蓝色：0x99CCFF。
        # 黑色：0x000000。
        # 白色：0xFFFFFF。
        # 灰色：0x999999。
        # @type BackGroundColor: String
        # @param BackgroundImageUrl: 整个画布的背景图片url，优先级高于BackGroundColor。支持png、jpg、jpeg格式。图片大小限制不超过5MB。
        # 注：
        # 1，您需要确保图片链接的可访问性，后台单次下载超时时间为10秒，最多重试3次，若最终图片下载失败，背景图片将不会生效。
        # 2，url可支持字符集：【'0-9','a-z','A-Z','-', '.', '_', '~', ':', '/', '?', '#', '[', ']','@', '!', '&', '(', ')', '*', '+', ',', '%', '=', ';', '|'】，您需要确保url字符在可支持字符集内，若存在可支持字符集外的字符，背景图片将不会生效。
        # @type BackgroundImageUrl: String
        # @param WaterMarkList: 混流布局的水印参数。
        # @type WaterMarkList: Array
        # @param BackgroundRenderMode: 背景图在输出时的显示模式：0为裁剪，1为缩放并显示黑底，2为变比例伸缩。后台默认为变比例伸缩。
        # @type BackgroundRenderMode: Integer

        attr_accessor :VideoEncode, :LayoutParams, :BackGroundColor, :BackgroundImageUrl, :WaterMarkList, :BackgroundRenderMode

        def initialize(videoencode=nil, layoutparams=nil, backgroundcolor=nil, backgroundimageurl=nil, watermarklist=nil, backgroundrendermode=nil)
          @VideoEncode = videoencode
          @LayoutParams = layoutparams
          @BackGroundColor = backgroundcolor
          @BackgroundImageUrl = backgroundimageurl
          @WaterMarkList = watermarklist
          @BackgroundRenderMode = backgroundrendermode
        end

        def deserialize(params)
          unless params['VideoEncode'].nil?
            @VideoEncode = VideoEncode.new
            @VideoEncode.deserialize(params['VideoEncode'])
          end
          unless params['LayoutParams'].nil?
            @LayoutParams = McuLayoutParams.new
            @LayoutParams.deserialize(params['LayoutParams'])
          end
          @BackGroundColor = params['BackGroundColor']
          @BackgroundImageUrl = params['BackgroundImageUrl']
          unless params['WaterMarkList'].nil?
            @WaterMarkList = []
            params['WaterMarkList'].each do |i|
              mcuwatermarkparams_tmp = McuWaterMarkParams.new
              mcuwatermarkparams_tmp.deserialize(i)
              @WaterMarkList << mcuwatermarkparams_tmp
            end
          end
          @BackgroundRenderMode = params['BackgroundRenderMode']
        end
      end

      # 图片水印参数。
      class McuWaterMarkImage < TencentCloud::Common::AbstractModel
        # @param WaterMarkUrl: 水印图片URL地址，支持png、jpg、jpeg格式。图片大小限制不超过5MB。
        # 注：
        # 1，您需要确保图片链接的可访问性，后台单次下载超时时间为10秒，最多重试3次，若最终图片下载失败，水印图片将不会生效。
        # 2，url可支持字符集：【'0-9','a-z','A-Z','-', '.', '_', '~', ':', '/', '?', '#', '[', ']','@', '!', '&', '(', ')', '*', '+', ',', '%', '=', ';', '|'】，您需要确保url字符在可支持字符集内，若存在可支持字符集外的字符，水印图片将不会生效。
        # @type WaterMarkUrl: String
        # @param WaterMarkWidth: 水印在输出时的宽。单位为像素值。
        # @type WaterMarkWidth: Integer
        # @param WaterMarkHeight: 水印在输出时的高。单位为像素值。
        # @type WaterMarkHeight: Integer
        # @param LocationX: 水印在输出时的X偏移。单位为像素值。
        # @type LocationX: Integer
        # @param LocationY: 水印在输出时的Y偏移。单位为像素值。
        # @type LocationY: Integer
        # @param ZOrder: 水印在输出时的层级，不填默认为0。
        # @type ZOrder: Integer
        # @param DynamicPosType: 动态水印类型，默认为0。0:关闭；1:随机位置，每秒变动一次；2:边界扫描反弹，每帧变动一次。
        # @type DynamicPosType: Integer

        attr_accessor :WaterMarkUrl, :WaterMarkWidth, :WaterMarkHeight, :LocationX, :LocationY, :ZOrder, :DynamicPosType

        def initialize(watermarkurl=nil, watermarkwidth=nil, watermarkheight=nil, locationx=nil, locationy=nil, zorder=nil, dynamicpostype=nil)
          @WaterMarkUrl = watermarkurl
          @WaterMarkWidth = watermarkwidth
          @WaterMarkHeight = watermarkheight
          @LocationX = locationx
          @LocationY = locationy
          @ZOrder = zorder
          @DynamicPosType = dynamicpostype
        end

        def deserialize(params)
          @WaterMarkUrl = params['WaterMarkUrl']
          @WaterMarkWidth = params['WaterMarkWidth']
          @WaterMarkHeight = params['WaterMarkHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @ZOrder = params['ZOrder']
          @DynamicPosType = params['DynamicPosType']
        end
      end

      # 水印参数。
      class McuWaterMarkParams < TencentCloud::Common::AbstractModel
        # @param WaterMarkType: 水印类型，0为图片（默认），1为文字。
        # @type WaterMarkType: Integer
        # @param WaterMarkImage: 图片水印参数。WaterMarkType为0指定。
        # @type WaterMarkImage: :class:`Tencentcloud::Trtc.v20190722.models.McuWaterMarkImage`
        # @param WaterMarkText: 文字水印参数。WaterMarkType为1指定。
        # @type WaterMarkText: :class:`Tencentcloud::Trtc.v20190722.models.McuWaterMarkText`

        attr_accessor :WaterMarkType, :WaterMarkImage, :WaterMarkText

        def initialize(watermarktype=nil, watermarkimage=nil, watermarktext=nil)
          @WaterMarkType = watermarktype
          @WaterMarkImage = watermarkimage
          @WaterMarkText = watermarktext
        end

        def deserialize(params)
          @WaterMarkType = params['WaterMarkType']
          unless params['WaterMarkImage'].nil?
            @WaterMarkImage = McuWaterMarkImage.new
            @WaterMarkImage.deserialize(params['WaterMarkImage'])
          end
          unless params['WaterMarkText'].nil?
            @WaterMarkText = McuWaterMarkText.new
            @WaterMarkText.deserialize(params['WaterMarkText'])
          end
        end
      end

      # 文字水印参数。
      class McuWaterMarkText < TencentCloud::Common::AbstractModel
        # @param Text: 文字水印内容。
        # @type Text: String
        # @param WaterMarkWidth: 水印在输出时的宽。单位为像素值。
        # @type WaterMarkWidth: Integer
        # @param WaterMarkHeight: 水印在输出时的高。单位为像素值。
        # @type WaterMarkHeight: Integer
        # @param LocationX: 水印在输出时的X偏移。单位为像素值。
        # @type LocationX: Integer
        # @param LocationY: 水印在输出时的Y偏移。单位为像素值。
        # @type LocationY: Integer
        # @param FontSize: 字体大小
        # @type FontSize: Integer
        # @param FontColor: 字体颜色，默认为白色。常用的颜色有： 红色：0xcc0033。 黄色：0xcc9900。 绿色：0xcccc33。 蓝色：0x99CCFF。 黑色：0x000000。 白色：0xFFFFFF。 灰色：0x999999。
        # @type FontColor: String
        # @param BackGroundColor: 字体背景色，不配置默认为透明。常用的颜色有： 红色：0xcc0033。 黄色：0xcc9900。 绿色：0xcccc33。 蓝色：0x99CCFF。 黑色：0x000000。 白色：0xFFFFFF。 灰色：0x999999。
        # @type BackGroundColor: String
        # @param DynamicPosType: 动态水印类型，默认为0。0:关闭；1:随机位置，每秒变动一次；2:边界扫描反弹，每帧变动一次。
        # @type DynamicPosType: Integer
        # @param ZOrder: 水印在输出时的层级，不填默认为0。
        # @type ZOrder: Integer
        # @param Font: 水印字体，不填默认为Tencent。支持设置以下值： Tencent （默认） SourceHanSans
        # @type Font: String

        attr_accessor :Text, :WaterMarkWidth, :WaterMarkHeight, :LocationX, :LocationY, :FontSize, :FontColor, :BackGroundColor, :DynamicPosType, :ZOrder, :Font

        def initialize(text=nil, watermarkwidth=nil, watermarkheight=nil, locationx=nil, locationy=nil, fontsize=nil, fontcolor=nil, backgroundcolor=nil, dynamicpostype=nil, zorder=nil, font=nil)
          @Text = text
          @WaterMarkWidth = watermarkwidth
          @WaterMarkHeight = watermarkheight
          @LocationX = locationx
          @LocationY = locationy
          @FontSize = fontsize
          @FontColor = fontcolor
          @BackGroundColor = backgroundcolor
          @DynamicPosType = dynamicpostype
          @ZOrder = zorder
          @Font = font
        end

        def deserialize(params)
          @Text = params['Text']
          @WaterMarkWidth = params['WaterMarkWidth']
          @WaterMarkHeight = params['WaterMarkHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @FontSize = params['FontSize']
          @FontColor = params['FontColor']
          @BackGroundColor = params['BackGroundColor']
          @DynamicPosType = params['DynamicPosType']
          @ZOrder = params['ZOrder']
          @Font = params['Font']
        end
      end

      # 用户自定义混流布局参数列表。
      class MixLayout < TencentCloud::Common::AbstractModel
        # @param Top: 画布上该画面左上角的 y 轴坐标，取值范围 [0, 1920]，不能超过画布的高。
        # @type Top: Integer
        # @param Left: 画布上该画面左上角的 x 轴坐标，取值范围 [0, 1920]，不能超过画布的宽。
        # @type Left: Integer
        # @param Width: 画布上该画面宽度的相对值，取值范围 [0, 1920]，与Left相加不应超过画布的宽。
        # @type Width: Integer
        # @param Height: 画布上该画面高度的相对值，取值范围 [0, 1920]，与Top相加不应超过画布的高。
        # @type Height: Integer
        # @param UserId: 字符串内容为待显示在该画面的主播对应的UserId，如果不指定，会按照主播加入房间的顺序匹配。
        # @type UserId: String
        # @param Alpha: 画布的透明度值，取值范围[0, 255]。0表示不透明，255表示全透明。默认值为0。
        # @type Alpha: Integer
        # @param RenderMode: 0 ：拉伸模式，这个模式下整个视频内容会全部显示，并填满子画面，在源视频和目的视频宽高比不一致的时候，画面不会缺少内容，但是画面可能产生形变；

        # 1 ：剪裁模式（默认），这个模式下会严格按照目的视频的宽高比对源视频剪裁之后再拉伸，并填满子画面画布，在源视频和目的视频宽高比不一致的时候，画面保持不变形，但是会被剪裁；

        # 2 ：填黑模式，这个模式下会严格保持源视频的宽高比进行等比缩放，在源视频和目的视频宽高比不一致的时候，画面的上下侧边缘或者左右侧边缘会露出子画面画布的背景；

        # 3 ：智能拉伸模式，这个模式类似剪裁模式，区别是在源视频和目的视频宽高比不一致的时候，限制了最大剪裁比例为画面的宽度或者高度的20%；
        # @type RenderMode: Integer
        # @param MediaId: 对应订阅流的主辅路标识：
        # 0：主流（默认）；
        # 1：辅流；
        # @type MediaId: Integer
        # @param ImageLayer: 该画布的图层顺序, 这个值越小表示图层越靠后。默认值为0。
        # @type ImageLayer: Integer
        # @param SubBackgroundImage: 图片的url地址， 只支持jpg, png, jpeg，大小限制不超过5M。注意，url必须携带格式后缀，url内只支持特定的字符串, 范围是a-z A-Z 0-9 '-', '.', '_', '~', ':', '/', '?', '#', '[', ']' '@', '!', '&', '(', ')', '*', '+', ',', '%', '='
        # @type SubBackgroundImage: String

        attr_accessor :Top, :Left, :Width, :Height, :UserId, :Alpha, :RenderMode, :MediaId, :ImageLayer, :SubBackgroundImage

        def initialize(top=nil, left=nil, width=nil, height=nil, userid=nil, alpha=nil, rendermode=nil, mediaid=nil, imagelayer=nil, subbackgroundimage=nil)
          @Top = top
          @Left = left
          @Width = width
          @Height = height
          @UserId = userid
          @Alpha = alpha
          @RenderMode = rendermode
          @MediaId = mediaid
          @ImageLayer = imagelayer
          @SubBackgroundImage = subbackgroundimage
        end

        def deserialize(params)
          @Top = params['Top']
          @Left = params['Left']
          @Width = params['Width']
          @Height = params['Height']
          @UserId = params['UserId']
          @Alpha = params['Alpha']
          @RenderMode = params['RenderMode']
          @MediaId = params['MediaId']
          @ImageLayer = params['ImageLayer']
          @SubBackgroundImage = params['SubBackgroundImage']
        end
      end

      # 录制的混流布局参数。
      class MixLayoutParams < TencentCloud::Common::AbstractModel
        # @param MixLayoutMode: 布局模式:
        # 1：悬浮布局；
        # 2：屏幕分享布局；
        # 3：九宫格布局；
        # 4：自定义布局；

        # 悬浮布局：默认第一个进入房间的主播（也可以指定一个主播）的视频画面会铺满整个屏幕。其他主播的视频画面从左下角开始依次按照进房顺序水平排列，显示为小画面，小画面悬浮于大画面之上。当画面数量小于等于17个时，每行4个（4 x 4排列）。当画面数量大于17个时，重新布局小画面为每行5个（5 x 5）排列。最多支持25个画面，如果用户只发送音频，仍然会占用画面位置。

        # 屏幕分享布局：指定一个主播在屏幕左侧的大画面位置（如果不指定，那么大画面位置为背景色），其他主播自上而下依次垂直排列于右侧。当画面数量少于17个的时候，右侧每列最多8人，最多占据两列。当画面数量多于17个的时候，超过17个画面的主播从左下角开始依次水平排列。最多支持25个画面，如果主播只发送音频，仍然会占用画面位置。

        # 九宫格布局：根据主播的数量自动调整每个画面的大小，每个主播的画面大小一致，最多支持25个画面。

        # 自定义布局：根据需要在MixLayoutList内定制每个主播画面的布局。
        # @type MixLayoutMode: Integer
        # @param MixLayoutList: 如果MixLayoutMode 选择为4自定义布局模式的话，设置此参数为每个主播所对应的布局画面的详细信息，最大不超过25个。
        # @type MixLayoutList: Array
        # @param BackGroundColor: 录制背景颜色，RGB的颜色表的16进制表示，每个颜色通过8bit长度标识，默认为黑色。比如橙色对应的RGB为 R:255 G:165 B:0, 那么对应的字符串描述为#FFA500，格式规范：‘#‘开头，后面跟固定RGB的颜色值
        # @type BackGroundColor: String
        # @param MaxResolutionUserId: 在布局模式为1：悬浮布局和 2：屏幕分享布局时，设定为显示大视频画面的UserId。不填的话：悬浮布局默认是第一个进房间的主播，屏幕分享布局默认是背景色
        # @type MaxResolutionUserId: String
        # @param MediaId: 主辅路标识，
        # 0：主流（默认）；
        # 1：辅流（屏幕分享）；
        # 这个位置的MediaId代表的是对应MaxResolutionUserId的主辅路，MixLayoutList内代表的是自定义用户的主辅路。
        # @type MediaId: Integer
        # @param BackgroundImageUrl: 图片的url地址，只支持jpg, png, jpeg，大小限制不超过5M。注意，url必须携带格式后缀，url内只支持特定的字符串, 范围是a-z A-Z 0-9 '-', '.', '_', '~', ':', '/', '?', '#', '[', ']' '@', '!', '&', '(', ')', '*', '+', ',', '%', '='
        # @type BackgroundImageUrl: String
        # @param PlaceHolderMode: 设置为1时代表启用占位图功能，0时代表不启用占位图功能，默认为0。启用占位图功能时，在预设位置的用户没有上行音视频时可显示对应的占位图。
        # @type PlaceHolderMode: Integer
        # @param BackgroundImageRenderMode: 背景画面宽高比不一致的时候处理方案，与MixLayoutList定义的RenderMode一致。
        # @type BackgroundImageRenderMode: Integer
        # @param DefaultSubBackgroundImage: 子画面占位图url地址，只支持jpg, png, jpeg，大小限制不超过5M。注意，url必须携带格式后缀，url内只支持特定的字符串, 范围是a-z A-Z 0-9 '-', '.', '_', '~', ':', '/', '?', '#', '[', ']' '@', '!', '&', '(', ')', '*', '+', ',', '%', '='
        # @type DefaultSubBackgroundImage: String
        # @param WaterMarkList: 水印布局参数， 最多支持25个。
        # @type WaterMarkList: Array
        # @param RenderMode: 模板布局下，背景画面宽高比不一致的时候处理方案。自定义布局不生效，与MixLayoutList定义的RenderMode一致。
        # @type RenderMode: Integer
        # @param MaxResolutionUserAlign: 屏幕分享模板有效。设置为1时代表大画面居右，小画面居左布局。默认为0。
        # @type MaxResolutionUserAlign: Integer

        attr_accessor :MixLayoutMode, :MixLayoutList, :BackGroundColor, :MaxResolutionUserId, :MediaId, :BackgroundImageUrl, :PlaceHolderMode, :BackgroundImageRenderMode, :DefaultSubBackgroundImage, :WaterMarkList, :RenderMode, :MaxResolutionUserAlign

        def initialize(mixlayoutmode=nil, mixlayoutlist=nil, backgroundcolor=nil, maxresolutionuserid=nil, mediaid=nil, backgroundimageurl=nil, placeholdermode=nil, backgroundimagerendermode=nil, defaultsubbackgroundimage=nil, watermarklist=nil, rendermode=nil, maxresolutionuseralign=nil)
          @MixLayoutMode = mixlayoutmode
          @MixLayoutList = mixlayoutlist
          @BackGroundColor = backgroundcolor
          @MaxResolutionUserId = maxresolutionuserid
          @MediaId = mediaid
          @BackgroundImageUrl = backgroundimageurl
          @PlaceHolderMode = placeholdermode
          @BackgroundImageRenderMode = backgroundimagerendermode
          @DefaultSubBackgroundImage = defaultsubbackgroundimage
          @WaterMarkList = watermarklist
          @RenderMode = rendermode
          @MaxResolutionUserAlign = maxresolutionuseralign
        end

        def deserialize(params)
          @MixLayoutMode = params['MixLayoutMode']
          unless params['MixLayoutList'].nil?
            @MixLayoutList = []
            params['MixLayoutList'].each do |i|
              mixlayout_tmp = MixLayout.new
              mixlayout_tmp.deserialize(i)
              @MixLayoutList << mixlayout_tmp
            end
          end
          @BackGroundColor = params['BackGroundColor']
          @MaxResolutionUserId = params['MaxResolutionUserId']
          @MediaId = params['MediaId']
          @BackgroundImageUrl = params['BackgroundImageUrl']
          @PlaceHolderMode = params['PlaceHolderMode']
          @BackgroundImageRenderMode = params['BackgroundImageRenderMode']
          @DefaultSubBackgroundImage = params['DefaultSubBackgroundImage']
          unless params['WaterMarkList'].nil?
            @WaterMarkList = []
            params['WaterMarkList'].each do |i|
              watermark_tmp = WaterMark.new
              watermark_tmp.deserialize(i)
              @WaterMarkList << watermark_tmp
            end
          end
          @RenderMode = params['RenderMode']
          @MaxResolutionUserAlign = params['MaxResolutionUserAlign']
        end
      end

      # 录制的音视频转码参数。
      class MixTranscodeParams < TencentCloud::Common::AbstractModel
        # @param VideoParams: 录制视频转码参数，注意如果设置了这个参数，那么里面的字段都是必填的，没有默认值，如果不填这个参数，那么取值为默认值。
        # @type VideoParams: :class:`Tencentcloud::Trtc.v20190722.models.VideoParams`
        # @param AudioParams: 录制音频转码参数，注意如果设置了这个参数，那么里面的字段都是必填的，没有默认值，如果不填这个参数，那么取值为默认值。
        # @type AudioParams: :class:`Tencentcloud::Trtc.v20190722.models.AudioParams`

        attr_accessor :VideoParams, :AudioParams

        def initialize(videoparams=nil, audioparams=nil)
          @VideoParams = videoparams
          @AudioParams = audioparams
        end

        def deserialize(params)
          unless params['VideoParams'].nil?
            @VideoParams = VideoParams.new
            @VideoParams.deserialize(params['VideoParams'])
          end
          unless params['AudioParams'].nil?
            @AudioParams = AudioParams.new
            @AudioParams.deserialize(params['AudioParams'])
          end
        end
      end

      # TRTC用户参数。
      class MixUserInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID。
        # @type UserId: String
        # @param RoomId: 动态布局时房间信息必须和主房间信息保持一致，自定义布局时房间信息必须和MixLayoutList中对应用户的房间信息保持一致，不填时默认与主房间信息一致。
        # @type RoomId: String
        # @param RoomIdType: 房间号类型，0为整型房间号，1为字符串房间号。
        # @type RoomIdType: Integer

        attr_accessor :UserId, :RoomId, :RoomIdType

        def initialize(userid=nil, roomid=nil, roomidtype=nil)
          @UserId = userid
          @RoomId = roomid
          @RoomIdType = roomidtype
        end

        def deserialize(params)
          @UserId = params['UserId']
          @RoomId = params['RoomId']
          @RoomIdType = params['RoomIdType']
        end
      end

      # 云端审核的控制参数。
      class ModerationParams < TencentCloud::Common::AbstractModel
        # @param ModerationType: 审核任务类型， 1:音频切片审核，2:视频截帧审核，3:音视切片审核+视频截帧审核4:音频流式审核 5:音频流式+视频截帧审核  默认值1 （流式审核需要供应商支持才生效）
        # @type ModerationType: Integer
        # @param MaxIdleTime: 房间内持续没有用户（主播）上行推流的状态超过MaxIdleTime的时长，自动停止切片，单位：秒。默认值为 30 秒，该值需大于等于 5秒，且小于等于1800秒(0.5小时)。示例值：30
        # @type MaxIdleTime: Integer
        # @param SliceAudio: 音频切片时长，默认15s 示例值：15
        # @type SliceAudio: Integer
        # @param SliceVideo: 视频截帧间隔时长，默认5s
        # @type SliceVideo: Integer
        # @param ModerationSupplier: 供应商枚举，
        # tianyu : 天御内容安全 （支持 1:音频切片审核，2:视频截帧审核，3:音视切片审核+视频截帧审核）
        # ace  : ACE内容安全 （支持 1:音频切片审核，2:视频截帧审核，3:音视切片审核+视频截帧审核）
        # shumei : 数美审核（支持 1:音频切片审核，2:视频截帧审核，3:音视切片审核+视频截帧审核）
        # yidun : 网易易盾审核 （支持 1:音频切片审核，2:视频截帧审核，3:音视切片审核+视频截帧审核）
        # @type ModerationSupplier: String
        # @param ModerationSupplierParam: 第三方审核商送审需要配置信息
        # @type ModerationSupplierParam: :class:`Tencentcloud::Trtc.v20190722.models.ModerationSupplierParam`
        # @param SaveModerationFile: 是否保存文件  0不保存文件 1保存所有文件 2仅保存命中文件
        # @type SaveModerationFile: Integer
        # @param CallbackAllResults: 是否回调所有审核结果:
        # 0 默认回调所有结果
        # 1 仅回调命中结果
        # @type CallbackAllResults: Integer
        # @param SubscribeStreamUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeStreamUserIds: :class:`Tencentcloud::Trtc.v20190722.models.SubscribeModerationUserIds`

        attr_accessor :ModerationType, :MaxIdleTime, :SliceAudio, :SliceVideo, :ModerationSupplier, :ModerationSupplierParam, :SaveModerationFile, :CallbackAllResults, :SubscribeStreamUserIds

        def initialize(moderationtype=nil, maxidletime=nil, sliceaudio=nil, slicevideo=nil, moderationsupplier=nil, moderationsupplierparam=nil, savemoderationfile=nil, callbackallresults=nil, subscribestreamuserids=nil)
          @ModerationType = moderationtype
          @MaxIdleTime = maxidletime
          @SliceAudio = sliceaudio
          @SliceVideo = slicevideo
          @ModerationSupplier = moderationsupplier
          @ModerationSupplierParam = moderationsupplierparam
          @SaveModerationFile = savemoderationfile
          @CallbackAllResults = callbackallresults
          @SubscribeStreamUserIds = subscribestreamuserids
        end

        def deserialize(params)
          @ModerationType = params['ModerationType']
          @MaxIdleTime = params['MaxIdleTime']
          @SliceAudio = params['SliceAudio']
          @SliceVideo = params['SliceVideo']
          @ModerationSupplier = params['ModerationSupplier']
          unless params['ModerationSupplierParam'].nil?
            @ModerationSupplierParam = ModerationSupplierParam.new
            @ModerationSupplierParam.deserialize(params['ModerationSupplierParam'])
          end
          @SaveModerationFile = params['SaveModerationFile']
          @CallbackAllResults = params['CallbackAllResults']
          unless params['SubscribeStreamUserIds'].nil?
            @SubscribeStreamUserIds = SubscribeModerationUserIds.new
            @SubscribeStreamUserIds.deserialize(params['SubscribeStreamUserIds'])
          end
        end
      end

      # 审核存储参数
      class ModerationStorageParams < TencentCloud::Common::AbstractModel
        # @param CloudModerationStorage: 腾讯云对象存储COS以及第三方云存储的账号信息
        # @type CloudModerationStorage: :class:`Tencentcloud::Trtc.v20190722.models.CloudModerationStorage`

        attr_accessor :CloudModerationStorage

        def initialize(cloudmoderationstorage=nil)
          @CloudModerationStorage = cloudmoderationstorage
        end

        def deserialize(params)
          unless params['CloudModerationStorage'].nil?
            @CloudModerationStorage = CloudModerationStorage.new
            @CloudModerationStorage.deserialize(params['CloudModerationStorage'])
          end
        end
      end

      # 送审到第三方审核供应商需要参数
      class ModerationSupplierParam < TencentCloud::Common::AbstractModel
        # @param AppID: 供应审核商账号id，数美天御不为空，易盾为空
        # @type AppID: String
        # @param SecretId: 供应审核商秘钥id
        # @type SecretId: String
        # @param SecretKey: 供应审核商秘钥key
        # @type SecretKey: String
        # @param AudioBizType: 音频场景，策略id或者businessId
        # @type AudioBizType: String
        # @param ImageBizType: 图片场景，策略id或者businessId
        # @type ImageBizType: String

        attr_accessor :AppID, :SecretId, :SecretKey, :AudioBizType, :ImageBizType

        def initialize(appid=nil, secretid=nil, secretkey=nil, audiobiztype=nil, imagebiztype=nil)
          @AppID = appid
          @SecretId = secretid
          @SecretKey = secretkey
          @AudioBizType = audiobiztype
          @ImageBizType = imagebiztype
        end

        def deserialize(params)
          @AppID = params['AppID']
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @AudioBizType = params['AudioBizType']
          @ImageBizType = params['ImageBizType']
        end
      end

      # ModifyCloudModeration请求参数结构体
      class ModifyCloudModerationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和TRTC的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 审核任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String
        # @param SubscribeStreamUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeStreamUserIds: :class:`Tencentcloud::Trtc.v20190722.models.SubscribeStreamUserIds`

        attr_accessor :SdkAppId, :TaskId, :SubscribeStreamUserIds

        def initialize(sdkappid=nil, taskid=nil, subscribestreamuserids=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @SubscribeStreamUserIds = subscribestreamuserids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          unless params['SubscribeStreamUserIds'].nil?
            @SubscribeStreamUserIds = SubscribeStreamUserIds.new
            @SubscribeStreamUserIds.deserialize(params['SubscribeStreamUserIds'])
          end
        end
      end

      # ModifyCloudModeration返回参数结构体
      class ModifyCloudModerationResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 审核任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCloudRecording请求参数结构体
      class ModifyCloudRecordingRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 录制任务的唯一Id，在启动录制成功后会返回。
        # @type TaskId: String
        # @param MixLayoutParams: 需要更新的混流的布局参数。
        # @type MixLayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.MixLayoutParams`
        # @param SubscribeStreamUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeStreamUserIds: :class:`Tencentcloud::Trtc.v20190722.models.SubscribeStreamUserIds`

        attr_accessor :SdkAppId, :TaskId, :MixLayoutParams, :SubscribeStreamUserIds

        def initialize(sdkappid=nil, taskid=nil, mixlayoutparams=nil, subscribestreamuserids=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @MixLayoutParams = mixlayoutparams
          @SubscribeStreamUserIds = subscribestreamuserids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          unless params['MixLayoutParams'].nil?
            @MixLayoutParams = MixLayoutParams.new
            @MixLayoutParams.deserialize(params['MixLayoutParams'])
          end
          unless params['SubscribeStreamUserIds'].nil?
            @SubscribeStreamUserIds = SubscribeStreamUserIds.new
            @SubscribeStreamUserIds.deserialize(params['SubscribeStreamUserIds'])
          end
        end
      end

      # ModifyCloudRecording返回参数结构体
      class ModifyCloudRecordingResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCloudSliceTask请求参数结构体
      class ModifyCloudSliceTaskRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和TRTC的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 切片任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String
        # @param SubscribeStreamUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeStreamUserIds: :class:`Tencentcloud::Trtc.v20190722.models.SubscribeStreamUserIds`

        attr_accessor :SdkAppId, :TaskId, :SubscribeStreamUserIds

        def initialize(sdkappid=nil, taskid=nil, subscribestreamuserids=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @SubscribeStreamUserIds = subscribestreamuserids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          unless params['SubscribeStreamUserIds'].nil?
            @SubscribeStreamUserIds = SubscribeStreamUserIds.new
            @SubscribeStreamUserIds.deserialize(params['SubscribeStreamUserIds'])
          end
        end
      end

      # ModifyCloudSliceTask返回参数结构体
      class ModifyCloudSliceTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 切片任务的唯一Id，在启动切片任务成功后会返回。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyPicture请求参数结构体
      class ModifyPictureRequest < TencentCloud::Common::AbstractModel
        # @param PictureId: 图片id
        # @type PictureId: Integer
        # @param SdkAppId: 应用id
        # @type SdkAppId: Integer
        # @param Height: 图片长度
        # @type Height: Integer
        # @param Width: 图片宽度
        # @type Width: Integer
        # @param XPosition: 显示位置x轴方向
        # @type XPosition: Integer
        # @param YPosition: 显示位置y轴方向
        # @type YPosition: Integer

        attr_accessor :PictureId, :SdkAppId, :Height, :Width, :XPosition, :YPosition

        def initialize(pictureid=nil, sdkappid=nil, height=nil, width=nil, xposition=nil, yposition=nil)
          @PictureId = pictureid
          @SdkAppId = sdkappid
          @Height = height
          @Width = width
          @XPosition = xposition
          @YPosition = yposition
        end

        def deserialize(params)
          @PictureId = params['PictureId']
          @SdkAppId = params['SdkAppId']
          @Height = params['Height']
          @Width = params['Width']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
        end
      end

      # ModifyPicture返回参数结构体
      class ModifyPictureResponse < TencentCloud::Common::AbstractModel
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

      # 旁路转码时长的查询结果
      class OneSdkAppIdTranscodeTimeUsagesInfo < TencentCloud::Common::AbstractModel
        # @param SdkAppIdTranscodeTimeUsages: 旁路转码时长查询结果数组
        # @type SdkAppIdTranscodeTimeUsages: Array
        # @param TotalNum: 查询记录数量
        # @type TotalNum: Integer
        # @param SdkAppId: 所查询的应用ID，可能值为:1-应用的应用ID，2-total，显示为total则表示查询的是所有应用的用量合计值。
        # @type SdkAppId: String

        attr_accessor :SdkAppIdTranscodeTimeUsages, :TotalNum, :SdkAppId

        def initialize(sdkappidtranscodetimeusages=nil, totalnum=nil, sdkappid=nil)
          @SdkAppIdTranscodeTimeUsages = sdkappidtranscodetimeusages
          @TotalNum = totalnum
          @SdkAppId = sdkappid
        end

        def deserialize(params)
          unless params['SdkAppIdTranscodeTimeUsages'].nil?
            @SdkAppIdTranscodeTimeUsages = []
            params['SdkAppIdTranscodeTimeUsages'].each do |i|
              sdkappidtrtcmcutranscodetimeusage_tmp = SdkAppIdTrtcMcuTranscodeTimeUsage.new
              sdkappidtrtcmcutranscodetimeusage_tmp.deserialize(i)
              @SdkAppIdTranscodeTimeUsages << sdkappidtrtcmcutranscodetimeusage_tmp
            end
          end
          @TotalNum = params['TotalNum']
          @SdkAppId = params['SdkAppId']
        end
      end

      # MCU混流的输出参数
      class OutputParams < TencentCloud::Common::AbstractModel
        # @param StreamId: 直播流 ID，由用户自定义设置，该流 ID 不能与用户旁路的流 ID 相同，限制64字节。
        # @type StreamId: String
        # @param PureAudioStream: 取值范围[0,1]， 填0：直播流为音视频(默认); 填1：直播流为纯音频
        # @type PureAudioStream: Integer
        # @param RecordId: 自定义录制文件名称前缀。请先在实时音视频控制台开通录制功能，https://cloud.tencent.com/document/product/647/50768。
        # 【注意】该方式仅对旧版云端录制功能的应用生效，新版云端录制功能的应用请用接口CreateCloudRecording发起录制。新、旧云端录制类型判断方式请见：https://cloud.tencent.com/document/product/647/50768#record
        # @type RecordId: String
        # @param RecordAudioOnly: 取值范围[0,1]，填0无实际含义; 填1：指定录制文件格式为mp3。此参数不建议使用，建议在实时音视频控制台配置纯音频录制模板。
        # @type RecordAudioOnly: Integer

        attr_accessor :StreamId, :PureAudioStream, :RecordId, :RecordAudioOnly

        def initialize(streamid=nil, pureaudiostream=nil, recordid=nil, recordaudioonly=nil)
          @StreamId = streamid
          @PureAudioStream = pureaudiostream
          @RecordId = recordid
          @RecordAudioOnly = recordaudioonly
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @PureAudioStream = params['PureAudioStream']
          @RecordId = params['RecordId']
          @RecordAudioOnly = params['RecordAudioOnly']
        end
      end

      # 图片列表信息
      class PictureInfo < TencentCloud::Common::AbstractModel
        # @param Height: 图片长度
        # @type Height: Integer
        # @param Width: 图片宽度
        # @type Width: Integer
        # @param XPosition: 显示位置x轴方向
        # @type XPosition: Integer
        # @param YPosition: 显示位置y轴方向
        # @type YPosition: Integer
        # @param SdkAppId: 应用id
        # @type SdkAppId: Integer
        # @param PictureId: 图片id
        # @type PictureId: Integer

        attr_accessor :Height, :Width, :XPosition, :YPosition, :SdkAppId, :PictureId

        def initialize(height=nil, width=nil, xposition=nil, yposition=nil, sdkappid=nil, pictureid=nil)
          @Height = height
          @Width = width
          @XPosition = xposition
          @YPosition = yposition
          @SdkAppId = sdkappid
          @PictureId = pictureid
        end

        def deserialize(params)
          @Height = params['Height']
          @Width = params['Width']
          @XPosition = params['XPosition']
          @YPosition = params['YPosition']
          @SdkAppId = params['SdkAppId']
          @PictureId = params['PictureId']
        end
      end

      # 自定义模板中有效，指定用户视频在混合画面中的位置。
      class PresetLayoutConfig < TencentCloud::Common::AbstractModel
        # @param UserId: 指定显示在该画面上的用户ID。如果不指定用户ID，会按照用户加入房间的顺序自动匹配PresetLayoutConfig中的画面设置。
        # @type UserId: String
        # @param StreamType: 当该画面指定用户时，代表用户的流类型。0为摄像头，1为屏幕分享。小画面为web用户时此值填0。
        # @type StreamType: Integer
        # @param ImageWidth: 该画面在输出时的宽度，单位为像素值，不填默认为0。
        # @type ImageWidth: Integer
        # @param ImageHeight: 该画面在输出时的高度，单位为像素值，不填默认为0。
        # @type ImageHeight: Integer
        # @param LocationX: 该画面在输出时的X偏移，单位为像素值，LocationX与ImageWidth之和不能超过混流输出的总宽度，不填默认为0。
        # @type LocationX: Integer
        # @param LocationY: 该画面在输出时的Y偏移，单位为像素值，LocationY与ImageHeight之和不能超过混流输出的总高度，不填默认为0。
        # @type LocationY: Integer
        # @param ZOrder: 该画面在输出时的层级，不填默认为0。
        # @type ZOrder: Integer
        # @param RenderMode: 该画面在输出时的显示模式：0为裁剪，1为缩放，2为缩放并显示黑底。不填默认为0。
        # @type RenderMode: Integer
        # @param MixInputType: 该当前位置用户混入的流类型：0为混入音视频，1为只混入视频，2为只混入音频。默认为0，建议配合指定用户ID使用。
        # @type MixInputType: Integer
        # @param PlaceImageId: 占位图ID。启用占位图功能时，在当前位置的用户没有上行视频时显示占位图。占位图大小不能超过2M，在实时音视频控制台上传并生成，https://cloud.tencent.com/document/product/647/50769
        # @type PlaceImageId: Integer

        attr_accessor :UserId, :StreamType, :ImageWidth, :ImageHeight, :LocationX, :LocationY, :ZOrder, :RenderMode, :MixInputType, :PlaceImageId

        def initialize(userid=nil, streamtype=nil, imagewidth=nil, imageheight=nil, locationx=nil, locationy=nil, zorder=nil, rendermode=nil, mixinputtype=nil, placeimageid=nil)
          @UserId = userid
          @StreamType = streamtype
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @LocationX = locationx
          @LocationY = locationy
          @ZOrder = zorder
          @RenderMode = rendermode
          @MixInputType = mixinputtype
          @PlaceImageId = placeimageid
        end

        def deserialize(params)
          @UserId = params['UserId']
          @StreamType = params['StreamType']
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @ZOrder = params['ZOrder']
          @RenderMode = params['RenderMode']
          @MixInputType = params['MixInputType']
          @PlaceImageId = params['PlaceImageId']
        end
      end

      # 第三方CDN转推参数
      class PublishCdnParams < TencentCloud::Common::AbstractModel
        # @param BizId: 腾讯云直播BizId。
        # @type BizId: Integer
        # @param PublishCdnUrls: 第三方CDN转推的目的地址，同时只支持转推一个第三方CDN地址。
        # @type PublishCdnUrls: Array

        attr_accessor :BizId, :PublishCdnUrls

        def initialize(bizid=nil, publishcdnurls=nil)
          @BizId = bizid
          @PublishCdnUrls = publishcdnurls
        end

        def deserialize(params)
          @BizId = params['BizId']
          @PublishCdnUrls = params['PublishCdnUrls']
        end
      end

      # Es返回的质量数据
      class QualityData < TencentCloud::Common::AbstractModel
        # @param Content: 数据内容
        # @type Content: Array
        # @param UserId: 用户ID
        # @type UserId: String
        # @param PeerId: 对端Id,为空时表示上行数据
        # @type PeerId: String
        # @param DataType: 数据类型
        # @type DataType: String

        attr_accessor :Content, :UserId, :PeerId, :DataType

        def initialize(content=nil, userid=nil, peerid=nil, datatype=nil)
          @Content = content
          @UserId = userid
          @PeerId = peerid
          @DataType = datatype
        end

        def deserialize(params)
          unless params['Content'].nil?
            @Content = []
            params['Content'].each do |i|
              timevalue_tmp = TimeValue.new
              timevalue_tmp.deserialize(i)
              @Content << timevalue_tmp
            end
          end
          @UserId = params['UserId']
          @PeerId = params['PeerId']
          @DataType = params['DataType']
        end
      end

      # 语音识别使用的配置
      class RecognizeConfig < TencentCloud::Common::AbstractModel
        # @param Language: 语音转文字支持识别的语言，默认是"zh" 中文

        # 可通过购买「AI智能识别时长包」解锁或领取包月套餐体验版解锁不同语言. 详细说明参考：[AI智能识别计费说明](https://cloud.tencent.com/document/product/647/111976)

        # 语音转文本不同套餐版本支持的语言如下：

        # **基础版**：
        # - "zh": 中文（简体）
        # - "zh-TW": 中文（繁体）
        # - "en": 英语
        # - "16k_zh_edu"：中文教育
        # - "16k_zh_medical"：中文医疗
        # - "16k_zh_court"：中文法庭

        # **标准版：**
        # - "8k_zh_large": 普方大模型引擎. 当前模型同时支持中文等语言的识别，模型参数量极大，语言模型性能增强，针对电话音频中各类场景、各类中文方言的识别准确率极大提升.
        # - "16k_zh_large": 普方英大模型引擎. 当前模型同时支持中文、英文、多种中文方言等语言的识别，模型参数量极大，语言模型性能增强，针对噪声大、回音大、人声小、人声远等低质量音频的识别准确率极大提升.
        # - "16k_multi_lang": 多语种大模型引擎. 当前模型同时支持英语、日语、韩语、阿拉伯语、菲律宾语、法语、印地语、印尼语、马来语、葡萄牙语、西班牙语、泰语、土耳其语、越南语、德语的识别，可实现15个语种的自动识别(句子/段落级别).
        # - "16k_zh_en": 中英大模型引擎. 当前模型同时支持中文、英语识别，模型参数量极大，语言模型性能增强，针对噪声大、回音大、人声小、人声远等低质量音频的识别准确率极大提升.

        # **高级版：**
        # - "zh-dialect": 中国方言
        # - "zh-yue": 中国粤语
        # - "vi": 越南语
        # - "ja": 日语
        # - "ko": 韩语
        # - "id": 印度尼西亚语
        # - "th": 泰语
        # - "pt": 葡萄牙语
        # - "tr": 土耳其语
        # - "ar": 阿拉伯语
        # - "es": 西班牙语
        # - "hi": 印地语
        # - "fr": 法语
        # - "ms": 马来语
        # - "fil": 菲律宾语
        # - "de": 德语
        # - "it": 意大利语
        # - "ru": 俄语
        # - "sv": 瑞典语
        # - "da": 丹麦语
        # - "no": 挪威语

        # **注意：**
        # 如果缺少满足您需求的语言，请联系我们技术人员。
        # @type Language: String
        # @param AlternativeLanguage: **发起模糊识别为高级版能力,默认按照高级版收费,仅支持填写基础版和高级版语言.**
        # 注意：不支持填写"zh-dialect"
        # @type AlternativeLanguage: Array
        # @param Model: 目前已不支持
        # @type Model: String
        # @param TranslationLanguage: 填写则翻译，目前支持的语言：
        # 中文: zh
        # 英语: en
        # 越南语: vi
        # 日语: ja
        # 韩语: ko
        # 印度尼西亚语: id
        # 泰语: th
        # 葡萄牙语: pt
        # 土耳其语: tr
        # 阿拉伯语: ar
        # 西班牙语: es
        # 印地语: hi
        # 法语: fr
        # 马来语: ms
        # 菲律宾语: fil
        # 德语: de
        # 意大利语: it
        # 俄语: ru
        # 瑞典语: sv
        # 挪威语: no
        # 丹麦语: da
        # @type TranslationLanguage: String
        # @param HotWordList: 热词表：该参数用于提升识别准确率。 单个热词限制："热词|权重"，单个热词不超过30个字符（最多10个汉字），权重[1-11]或者100，如：“腾讯云|5” 或 “ASR|11”； 热词表限制：多个热词用英文逗号分割，最多支持300个热词，如：“腾讯云|10,语音识别|5,ASR|11”；
        # @type HotWordList: String
        # @param VadSilenceTime: 语音识别vad的时间，范围为240-2000，默认为1000，单位为ms。更小的值会让语音识别分句更快。
        # @type VadSilenceTime: Integer
        # @param VadLevel: vad的远场人声抑制能力（不会对asr识别效果造成影响），范围为[0, 3]，默认为0。推荐设置为2，有较好的远场人声抑制能力。
        # @type VadLevel: Integer

        attr_accessor :Language, :AlternativeLanguage, :Model, :TranslationLanguage, :HotWordList, :VadSilenceTime, :VadLevel
        extend Gem::Deprecate
        deprecate :Model, :none, 2025, 9
        deprecate :Model=, :none, 2025, 9
        deprecate :TranslationLanguage, :none, 2025, 9
        deprecate :TranslationLanguage=, :none, 2025, 9

        def initialize(language=nil, alternativelanguage=nil, model=nil, translationlanguage=nil, hotwordlist=nil, vadsilencetime=nil, vadlevel=nil)
          @Language = language
          @AlternativeLanguage = alternativelanguage
          @Model = model
          @TranslationLanguage = translationlanguage
          @HotWordList = hotwordlist
          @VadSilenceTime = vadsilencetime
          @VadLevel = vadlevel
        end

        def deserialize(params)
          @Language = params['Language']
          @AlternativeLanguage = params['AlternativeLanguage']
          @Model = params['Model']
          @TranslationLanguage = params['TranslationLanguage']
          @HotWordList = params['HotWordList']
          @VadSilenceTime = params['VadSilenceTime']
          @VadLevel = params['VadLevel']
        end
      end

      # 云端录制控制参数。
      class RecordParams < TencentCloud::Common::AbstractModel
        # @param RecordMode: 录制模式：
        # 1：单流录制，分别录制房间的订阅UserId的音频和视频，将录制文件上传至云存储；
        # 2：合流录制，将房间内订阅UserId的音视频混录成一个音视频文件，将录制文件上传至云存储；
        # @type RecordMode: Integer
        # @param MaxIdleTime: 房间内持续没有主播的状态超过MaxIdleTime的时长，自动停止录制，单位：秒。默认值为 30 秒，该值需大于等于 5秒，且小于等于 86400秒(24小时)。
        # @type MaxIdleTime: Integer
        # @param StreamType: 录制的媒体流类型：
        # 0：录制音频+视频流（默认）;
        # 1：仅录制音频流；
        # 2：仅录制视频流，
        # @type StreamType: Integer
        # @param SubscribeStreamUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeStreamUserIds: :class:`Tencentcloud::Trtc.v20190722.models.SubscribeStreamUserIds`
        # @param OutputFormat: 输出文件的格式（存储至COS等第三方存储时有效）。0：(默认)输出文件为hls格式。1：输出文件格式为hls+mp4。2：输出文件格式为hls+aac 。3：输出文件格式为mp4。4：输出文件格式为aac。

        # 存储到云点播VOD时此参数无效，存储到VOD时请通过TencentVod（https://cloud.tencent.com/document/api/647/44055#TencentVod）内的MediaType设置。
        # @type OutputFormat: Integer
        # @param AvMerge: 单流录制模式下，用户的音视频是否合并，0：单流音视频不合并（默认）。1：单流音视频合并成一个ts。合流录制此参数无需设置，默认音视频合并。
        # @type AvMerge: Integer
        # @param MaxMediaFileDuration: 如果是aac或者mp4文件格式，超过长度限制后，系统会自动拆分视频文件。单位：分钟。默认为1440min（24h），取值范围为1-1440。【单文件限制最大为2G，满足文件大小 >2G 或录制时长度 > 24h任意一个条件，文件都会自动切分】
        # Hls 格式录制此参数不生效。
        # @type MaxMediaFileDuration: Integer
        # @param MediaId: 指定录制主辅流，0：主流+辅流（默认）；1:主流；2:辅流。
        # @type MediaId: Integer
        # @param FillType: 上行视频停止时，录制的补帧类型，0：补最后一帧 1：补黑帧
        # @type FillType: Integer

        attr_accessor :RecordMode, :MaxIdleTime, :StreamType, :SubscribeStreamUserIds, :OutputFormat, :AvMerge, :MaxMediaFileDuration, :MediaId, :FillType

        def initialize(recordmode=nil, maxidletime=nil, streamtype=nil, subscribestreamuserids=nil, outputformat=nil, avmerge=nil, maxmediafileduration=nil, mediaid=nil, filltype=nil)
          @RecordMode = recordmode
          @MaxIdleTime = maxidletime
          @StreamType = streamtype
          @SubscribeStreamUserIds = subscribestreamuserids
          @OutputFormat = outputformat
          @AvMerge = avmerge
          @MaxMediaFileDuration = maxmediafileduration
          @MediaId = mediaid
          @FillType = filltype
        end

        def deserialize(params)
          @RecordMode = params['RecordMode']
          @MaxIdleTime = params['MaxIdleTime']
          @StreamType = params['StreamType']
          unless params['SubscribeStreamUserIds'].nil?
            @SubscribeStreamUserIds = SubscribeStreamUserIds.new
            @SubscribeStreamUserIds.deserialize(params['SubscribeStreamUserIds'])
          end
          @OutputFormat = params['OutputFormat']
          @AvMerge = params['AvMerge']
          @MaxMediaFileDuration = params['MaxMediaFileDuration']
          @MediaId = params['MediaId']
          @FillType = params['FillType']
        end
      end

      # 录制的使用信息。
      class RecordUsage < TencentCloud::Common::AbstractModel
        # @param TimeKey: 本组数据对应的时间点，格式如:2020-09-07或2020-09-07 00:05:05。
        # @type TimeKey: String
        # @param Class1VideoTime: 视频时长-标清SD，单位：秒。
        # @type Class1VideoTime: Integer
        # @param Class2VideoTime: 视频时长-高清HD，单位：秒。
        # @type Class2VideoTime: Integer
        # @param Class3VideoTime: 视频时长-超清HD，单位：秒。
        # @type Class3VideoTime: Integer
        # @param AudioTime: 语音时长，单位：秒。
        # @type AudioTime: Integer

        attr_accessor :TimeKey, :Class1VideoTime, :Class2VideoTime, :Class3VideoTime, :AudioTime

        def initialize(timekey=nil, class1videotime=nil, class2videotime=nil, class3videotime=nil, audiotime=nil)
          @TimeKey = timekey
          @Class1VideoTime = class1videotime
          @Class2VideoTime = class2videotime
          @Class3VideoTime = class3videotime
          @AudioTime = audiotime
        end

        def deserialize(params)
          @TimeKey = params['TimeKey']
          @Class1VideoTime = params['Class1VideoTime']
          @Class2VideoTime = params['Class2VideoTime']
          @Class3VideoTime = params['Class3VideoTime']
          @AudioTime = params['AudioTime']
        end
      end

      # RegisterVoicePrint请求参数结构体
      class RegisterVoicePrintRequest < TencentCloud::Common::AbstractModel
        # @param Audio: 整个wav音频文件的base64字符串,其中wav文件限定为16k采样率, 16bit位深, 单声道, 8到18秒音频时长,有效音频不小于6秒(不能有太多静音段),编码数据大小不超过2M
        # @type Audio: String
        # @param ReqTimestamp: 毫秒时间戳
        # @type ReqTimestamp: Integer
        # @param AudioFormat: 音频格式,目前只支持0,代表wav
        # @type AudioFormat: Integer
        # @param AudioName: 音频名称,长度不要超过32
        # @type AudioName: String
        # @param AudioMetaInfo: 和声纹绑定的MetaInfo，长度最大不超过512
        # @type AudioMetaInfo: String

        attr_accessor :Audio, :ReqTimestamp, :AudioFormat, :AudioName, :AudioMetaInfo

        def initialize(audio=nil, reqtimestamp=nil, audioformat=nil, audioname=nil, audiometainfo=nil)
          @Audio = audio
          @ReqTimestamp = reqtimestamp
          @AudioFormat = audioformat
          @AudioName = audioname
          @AudioMetaInfo = audiometainfo
        end

        def deserialize(params)
          @Audio = params['Audio']
          @ReqTimestamp = params['ReqTimestamp']
          @AudioFormat = params['AudioFormat']
          @AudioName = params['AudioName']
          @AudioMetaInfo = params['AudioMetaInfo']
        end
      end

      # RegisterVoicePrint返回参数结构体
      class RegisterVoicePrintResponse < TencentCloud::Common::AbstractModel
        # @param VoicePrintId: 声纹信息ID
        # @type VoicePrintId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VoicePrintId, :RequestId

        def initialize(voiceprintid=nil, requestid=nil)
          @VoicePrintId = voiceprintid
          @RequestId = requestid
        end

        def deserialize(params)
          @VoicePrintId = params['VoicePrintId']
          @RequestId = params['RequestId']
        end
      end

      # RemoveUserByStrRoomId请求参数结构体
      class RemoveUserByStrRoomIdRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: String
        # @param UserIds: 要移出的用户列表，最多10个。
        # @type UserIds: Array

        attr_accessor :SdkAppId, :RoomId, :UserIds

        def initialize(sdkappid=nil, roomid=nil, userids=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserIds = userids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserIds = params['UserIds']
        end
      end

      # RemoveUserByStrRoomId返回参数结构体
      class RemoveUserByStrRoomIdResponse < TencentCloud::Common::AbstractModel
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

      # RemoveUser请求参数结构体
      class RemoveUserRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer
        # @param UserIds: 要移出的用户列表，最多10个。
        # @type UserIds: Array

        attr_accessor :SdkAppId, :RoomId, :UserIds

        def initialize(sdkappid=nil, roomid=nil, userids=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @UserIds = userids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @UserIds = params['UserIds']
        end
      end

      # RemoveUser返回参数结构体
      class RemoveUserResponse < TencentCloud::Common::AbstractModel
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

      # 房间信息列表
      class RoomState < TencentCloud::Common::AbstractModel
        # @param CommId: 通话ID（唯一标识一次通话）
        # @type CommId: String
        # @param RoomString: 房间号
        # @type RoomString: String
        # @param CreateTime: 房间创建时间
        # @type CreateTime: Integer
        # @param DestroyTime: 房间销毁时间
        # @type DestroyTime: Integer
        # @param IsFinished: 房间是否已经结束
        # @type IsFinished: Boolean
        # @param UserId: 房间创建者Id
        # @type UserId: String

        attr_accessor :CommId, :RoomString, :CreateTime, :DestroyTime, :IsFinished, :UserId

        def initialize(commid=nil, roomstring=nil, createtime=nil, destroytime=nil, isfinished=nil, userid=nil)
          @CommId = commid
          @RoomString = roomstring
          @CreateTime = createtime
          @DestroyTime = destroytime
          @IsFinished = isfinished
          @UserId = userid
        end

        def deserialize(params)
          @CommId = params['CommId']
          @RoomString = params['RoomString']
          @CreateTime = params['CreateTime']
          @DestroyTime = params['DestroyTime']
          @IsFinished = params['IsFinished']
          @UserId = params['UserId']
        end
      end

      # SeriesInfo类型的二维数组
      class RowValues < TencentCloud::Common::AbstractModel
        # @param RowValue: 数据值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RowValue: Array

        attr_accessor :RowValue

        def initialize(rowvalue=nil)
          @RowValue = rowvalue
        end

        def deserialize(params)
          @RowValue = params['RowValue']
        end
      end

      # 语音转文字参数
      class STTConfig < TencentCloud::Common::AbstractModel
        # @param Language: 语音转文字支持识别的语言，默认是"zh" 中文

        # 可通过购买「AI智能识别时长包」解锁或领取包月套餐体验版解锁不同语言. 详细说明参考：[AI智能识别计费说明](https://cloud.tencent.com/document/product/647/111976)

        # 语音转文本不同套餐版本支持的语言如下：

        # **基础版**：
        # - "zh": 中文（简体）
        # - "zh-TW": 中文（繁体）
        # - "en": 英语
        # - "16k_zh_edu"：中文教育
        # - "16k_zh_medical"：中文医疗
        # - "16k_zh_court"：中文法庭

        # **标准版：**
        # - "8k_zh_large": 普方大模型引擎. 当前模型同时支持中文等语言的识别，模型参数量极大，语言模型性能增强，针对电话音频中各类场景、各类中文方言的识别准确率极大提升.
        # - "16k_zh_large": 普方英大模型引擎. 当前模型同时支持中文、英文、多种中文方言等语言的识别，模型参数量极大，语言模型性能增强，针对噪声大、回音大、人声小、人声远等低质量音频的识别准确率极大提升.
        # - "16k_multi_lang": 多语种大模型引擎. 当前模型同时支持英语、日语、韩语、阿拉伯语、菲律宾语、法语、印地语、印尼语、马来语、葡萄牙语、西班牙语、泰语、土耳其语、越南语、德语的识别，可实现15个语种的自动识别(句子/段落级别).
        # - "16k_zh_en": 中英大模型引擎. 当前模型同时支持中文、英语识别，模型参数量极大，语言模型性能增强，针对噪声大、回音大、人声小、人声远等低质量音频的识别准确率极大提升.

        # **高级版：**
        # - "zh-dialect": 中国方言
        # - "zh-yue": 中国粤语
        # - "vi": 越南语
        # - "ja": 日语
        # - "ko": 韩语
        # - "id": 印度尼西亚语
        # - "th": 泰语
        # - "pt": 葡萄牙语
        # - "tr": 土耳其语
        # - "ar": 阿拉伯语
        # - "es": 西班牙语
        # - "hi": 印地语
        # - "fr": 法语
        # - "ms": 马来语
        # - "fil": 菲律宾语
        # - "de": 德语
        # - "it": 意大利语
        # - "ru": 俄语
        # - "sv": 瑞典语
        # - "da": 丹麦语
        # - "no": 挪威语

        # **注意：**
        # 如果缺少满足您需求的语言，请联系我们技术人员。
        # @type Language: String
        # @param AlternativeLanguage: **发起模糊识别为高级版能力,默认按照高级版收费**
        # 注意：不支持填写"zh-dialect", "16k_zh_edu", "16k_zh_medical", "16k_zh_court", "8k_zh_large", "16k_zh_large","16k_multi_lang", "16k_zh_en"
        # @type AlternativeLanguage: Array
        # @param CustomParam: 自定义参数，联系后台使用
        # @type CustomParam: String
        # @param VadSilenceTime: 语音识别vad的时间，范围为240-2000，默认为1000，单位为ms。更小的值会让语音识别分句更快。
        # @type VadSilenceTime: Integer
        # @param HotWordList: 热词表：该参数用于提升识别准确率。 单个热词限制："热词|权重"，单个热词不超过30个字符（最多10个汉字），权重[1-11]或者100，如：“腾讯云|5” 或 “ASR|11”； 热词表限制：多个热词用英文逗号分割，最多支持128个热词，如：“腾讯云|10,语音识别|5,ASR|11”；
        # @type HotWordList: String
        # @param VadLevel: vad的远场人声抑制能力（不会对asr识别效果造成影响），范围为[0, 5]，默认为0，表示不开启远场人声抑制能力。推荐设置为2，有较好的远场人声抑制能力。嘈杂的办公室环境下可以设置为3，更为嘈杂的环境下可以使用4和5。注意较高的VadLevel可能会将单字当作噪声给过滤。
        # @type VadLevel: Integer

        attr_accessor :Language, :AlternativeLanguage, :CustomParam, :VadSilenceTime, :HotWordList, :VadLevel

        def initialize(language=nil, alternativelanguage=nil, customparam=nil, vadsilencetime=nil, hotwordlist=nil, vadlevel=nil)
          @Language = language
          @AlternativeLanguage = alternativelanguage
          @CustomParam = customparam
          @VadSilenceTime = vadsilencetime
          @HotWordList = hotwordlist
          @VadLevel = vadlevel
        end

        def deserialize(params)
          @Language = params['Language']
          @AlternativeLanguage = params['AlternativeLanguage']
          @CustomParam = params['CustomParam']
          @VadSilenceTime = params['VadSilenceTime']
          @HotWordList = params['HotWordList']
          @VadLevel = params['VadLevel']
        end
      end

      # 历史规模信息
      class ScaleInfomation < TencentCloud::Common::AbstractModel
        # @param Time: 每天开始的时间
        # @type Time: Integer
        # @param UserNumber: 房间人数，用户重复进入同一个房间为1次
        # @type UserNumber: Integer
        # @param UserCount: 房间人次，用户每次进入房间为一次
        # @type UserCount: Integer
        # @param RoomNumbers: sdkappid下一天内的房间数
        # @type RoomNumbers: Integer

        attr_accessor :Time, :UserNumber, :UserCount, :RoomNumbers

        def initialize(time=nil, usernumber=nil, usercount=nil, roomnumbers=nil)
          @Time = time
          @UserNumber = usernumber
          @UserCount = usercount
          @RoomNumbers = roomnumbers
        end

        def deserialize(params)
          @Time = params['Time']
          @UserNumber = params['UserNumber']
          @UserCount = params['UserCount']
          @RoomNumbers = params['RoomNumbers']
        end
      end

      # SdkAppId级别录制时长数据。
      class SdkAppIdRecordUsage < TencentCloud::Common::AbstractModel
        # @param SdkAppId: SdkAppId的值。
        # @type SdkAppId: String
        # @param Usages: 统计的时间点数据。
        # @type Usages: Array

        attr_accessor :SdkAppId, :Usages

        def initialize(sdkappid=nil, usages=nil)
          @SdkAppId = sdkappid
          @Usages = usages
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          unless params['Usages'].nil?
            @Usages = []
            params['Usages'].each do |i|
              recordusage_tmp = RecordUsage.new
              recordusage_tmp.deserialize(i)
              @Usages << recordusage_tmp
            end
          end
        end
      end

      # 查询旁路转码计费时长。
      # 查询时间小于等于1天时，返回每5分钟粒度的数据；查询时间大于1天时，返回按天汇总的数据。
      class SdkAppIdTrtcMcuTranscodeTimeUsage < TencentCloud::Common::AbstractModel
        # @param TimeKey: 本组数据对应的时间点，格式如：2020-09-07或2020-09-07 00:05:05。
        # @type TimeKey: String
        # @param AudioTime: 语音时长，单位：秒。
        # @type AudioTime: Integer
        # @param VideoTimeSd: 视频时长-标清SD，单位：秒。
        # @type VideoTimeSd: Integer
        # @param VideoTimeHd: 视频时长-高清HD，单位：秒。
        # @type VideoTimeHd: Integer
        # @param VideoTimeFhd: 视频时长-全高清FHD，单位：秒。
        # @type VideoTimeFhd: Integer
        # @param Flux: 带宽，单位：Mbps。
        # @type Flux: Float

        attr_accessor :TimeKey, :AudioTime, :VideoTimeSd, :VideoTimeHd, :VideoTimeFhd, :Flux

        def initialize(timekey=nil, audiotime=nil, videotimesd=nil, videotimehd=nil, videotimefhd=nil, flux=nil)
          @TimeKey = timekey
          @AudioTime = audiotime
          @VideoTimeSd = videotimesd
          @VideoTimeHd = videotimehd
          @VideoTimeFhd = videotimefhd
          @Flux = flux
        end

        def deserialize(params)
          @TimeKey = params['TimeKey']
          @AudioTime = params['AudioTime']
          @VideoTimeSd = params['VideoTimeSd']
          @VideoTimeHd = params['VideoTimeHd']
          @VideoTimeFhd = params['VideoTimeFhd']
          @Flux = params['Flux']
        end
      end

      # SeriesInfo类型
      class SeriesInfo < TencentCloud::Common::AbstractModel
        # @param Columns: 数据列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Values: 数据值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Columns, :Values

        def initialize(columns=nil, values=nil)
          @Columns = columns
          @Values = values
        end

        def deserialize(params)
          @Columns = params['Columns']
          @Values = params['Values']
        end
      end

      # SeriesInfos类型
      class SeriesInfos < TencentCloud::Common::AbstractModel
        # @param Columns: 数据列
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Columns: Array
        # @param Values: 数据值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Values: Array

        attr_accessor :Columns, :Values

        def initialize(columns=nil, values=nil)
          @Columns = columns
          @Values = values
        end

        def deserialize(params)
          @Columns = params['Columns']
          unless params['Values'].nil?
            @Values = []
            params['Values'].each do |i|
              rowvalues_tmp = RowValues.new
              rowvalues_tmp.deserialize(i)
              @Values << rowvalues_tmp
            end
          end
        end
      end

      # 服务端控制AI对话机器人播报指定文本
      class ServerPushText < TencentCloud::Common::AbstractModel
        # @param Text: 服务端推送播报文本
        # @type Text: String
        # @param Interrupt: 是否允许该文本打断机器人说话
        # @type Interrupt: Boolean
        # @param StopAfterPlay: 播报完文本后，是否自动关闭对话任务
        # @type StopAfterPlay: Boolean
        # @param Audio: 服务端推送播报音频
        #     格式说明：音频必须为单声道，采样率必须跟对应TTS的采样率保持一致，编码为Base64字符串。
        #     输入规则：当提供Audio字段时，将不接受Text字段的输入。系统将直接播放Audio字段中的音频内容。
        # @type Audio: String
        # @param DropMode: 默认为0，仅在Interrupt为false时有效
        # - 0表示当前有交互发生时，会丢弃Interrupt为false的消息
        # - 1表示当前有交互发生时，不会丢弃Interrupt为false的消息，而是缓存下来，等待当前交互结束后，再去处理

        # 注意：DropMode为1时，允许缓存多个消息，如果后续出现了打断，缓存的消息会被清空
        # @type DropMode: Integer
        # @param Priority: ServerPushText消息的优先级，0表示可被打断，1表示不会被打断。**目前仅支持传入0，如果需要传入1，请提工单联系我们添加权限。**
        # 注意：在接收到Priority=1的消息后，后续其他任何消息都会被忽略（包括Priority=1的消息），直到Priority=1的消息处理结束。该字段可与Interrupt、DropMode字段配合使用。
        # 例子：
        # - Priority=1、Interrupt=true，会打断现有交互，立刻播报，播报过程中不会被打断
        # - Priority=1、Interrupt=false、DropMode=1，会等待当前交互结束，再进行播报，播报过程中不会被打断
        # @type Priority: Integer
        # @param AddHistory: 是否将文本加入到llm历史上下文中
        # @type AddHistory: Boolean

        attr_accessor :Text, :Interrupt, :StopAfterPlay, :Audio, :DropMode, :Priority, :AddHistory

        def initialize(text=nil, interrupt=nil, stopafterplay=nil, audio=nil, dropmode=nil, priority=nil, addhistory=nil)
          @Text = text
          @Interrupt = interrupt
          @StopAfterPlay = stopafterplay
          @Audio = audio
          @DropMode = dropmode
          @Priority = priority
          @AddHistory = addhistory
        end

        def deserialize(params)
          @Text = params['Text']
          @Interrupt = params['Interrupt']
          @StopAfterPlay = params['StopAfterPlay']
          @Audio = params['Audio']
          @DropMode = params['DropMode']
          @Priority = params['Priority']
          @AddHistory = params['AddHistory']
        end
      end

      # 单流旁路转推的用户上行信息。
      class SingleSubscribeParams < TencentCloud::Common::AbstractModel
        # @param UserMediaStream: 用户媒体流参数。
        # @type UserMediaStream: :class:`Tencentcloud::Trtc.v20190722.models.UserMediaStream`

        attr_accessor :UserMediaStream

        def initialize(usermediastream=nil)
          @UserMediaStream = usermediastream
        end

        def deserialize(params)
          unless params['UserMediaStream'].nil?
            @UserMediaStream = UserMediaStream.new
            @UserMediaStream.deserialize(params['UserMediaStream'])
          end
        end
      end

      # 云端切片的控制参数。
      class SliceParams < TencentCloud::Common::AbstractModel
        # @param SliceType: 切片任务类型:
        # 1:音频切片；
        # 2:视频截帧；
        # 3:音视切片+视频截帧
        # 示例值：1
        # @type SliceType: Integer
        # @param MaxIdleTime: 房间内持续没有主播的状态超过MaxIdleTime的时长，自动停止录制，单位：秒。默认值为 30 秒，该值需大于等于 5秒，且小于等于 86400秒(24小时)。
        # 示例值：30
        # @type MaxIdleTime: Integer
        # @param SliceAudio: 音频切片时长，默认15s 示例值：15
        # 取值范围15-60s
        # @type SliceAudio: Integer
        # @param SliceVideo: 视频截帧间隔时长，默认5s， 示例值：5 取值范围5-60s
        # @type SliceVideo: Integer
        # @param SubscribeStreamUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeStreamUserIds: :class:`Tencentcloud::Trtc.v20190722.models.SubscribeStreamUserIds`
        # @param SliceCallbackUrl: 已废弃，从控制台配置回调url
        # @type SliceCallbackUrl: String

        attr_accessor :SliceType, :MaxIdleTime, :SliceAudio, :SliceVideo, :SubscribeStreamUserIds, :SliceCallbackUrl

        def initialize(slicetype=nil, maxidletime=nil, sliceaudio=nil, slicevideo=nil, subscribestreamuserids=nil, slicecallbackurl=nil)
          @SliceType = slicetype
          @MaxIdleTime = maxidletime
          @SliceAudio = sliceaudio
          @SliceVideo = slicevideo
          @SubscribeStreamUserIds = subscribestreamuserids
          @SliceCallbackUrl = slicecallbackurl
        end

        def deserialize(params)
          @SliceType = params['SliceType']
          @MaxIdleTime = params['MaxIdleTime']
          @SliceAudio = params['SliceAudio']
          @SliceVideo = params['SliceVideo']
          unless params['SubscribeStreamUserIds'].nil?
            @SubscribeStreamUserIds = SubscribeStreamUserIds.new
            @SubscribeStreamUserIds.deserialize(params['SubscribeStreamUserIds'])
          end
          @SliceCallbackUrl = params['SliceCallbackUrl']
        end
      end

      # 切片存储参数
      class SliceStorageParams < TencentCloud::Common::AbstractModel
        # @param CloudSliceStorage: 腾讯云对象存储COS以及第三方云存储的账号信息
        # @type CloudSliceStorage: :class:`Tencentcloud::Trtc.v20190722.models.CloudSliceStorage`

        attr_accessor :CloudSliceStorage

        def initialize(cloudslicestorage=nil)
          @CloudSliceStorage = cloudslicestorage
        end

        def deserialize(params)
          unless params['CloudSliceStorage'].nil?
            @CloudSliceStorage = CloudSliceStorage.new
            @CloudSliceStorage.deserialize(params['CloudSliceStorage'])
          end
        end
      end

      # 画中画模板中有效，代表小画面的布局参数
      class SmallVideoLayoutParams < TencentCloud::Common::AbstractModel
        # @param UserId: 代表小画面对应的用户ID。
        # @type UserId: String
        # @param StreamType: 代表小画面对应的流类型，0为摄像头，1为屏幕分享。小画面为web用户时此值填0。
        # @type StreamType: Integer
        # @param ImageWidth: 小画面在输出时的宽度，单位为像素值，不填默认为0。
        # @type ImageWidth: Integer
        # @param ImageHeight: 小画面在输出时的高度，单位为像素值，不填默认为0。
        # @type ImageHeight: Integer
        # @param LocationX: 小画面在输出时的X偏移，单位为像素值，LocationX与ImageWidth之和不能超过混流输出的总宽度，不填默认为0。
        # @type LocationX: Integer
        # @param LocationY: 小画面在输出时的Y偏移，单位为像素值，LocationY与ImageHeight之和不能超过混流输出的总高度，不填默认为0。
        # @type LocationY: Integer

        attr_accessor :UserId, :StreamType, :ImageWidth, :ImageHeight, :LocationX, :LocationY

        def initialize(userid=nil, streamtype=nil, imagewidth=nil, imageheight=nil, locationx=nil, locationy=nil)
          @UserId = userid
          @StreamType = streamtype
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @LocationX = locationx
          @LocationY = locationy
        end

        def deserialize(params)
          @UserId = params['UserId']
          @StreamType = params['StreamType']
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
        end
      end

      # StartAIConversation请求参数结构体
      class StartAIConversationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和开启转录任务的房间使用的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: TRTC的[RoomId](https://cloud.tencent.com/document/product/647/46351#roomid)，表示开启对话任务的房间号。
        # @type RoomId: String
        # @param AgentConfig: 机器人参数
        # @type AgentConfig: :class:`Tencentcloud::Trtc.v20190722.models.AgentConfig`
        # @param SessionId: 调用方传入的唯一Id，可用于客户侧防止重复发起任务以及可以通过该字段查询任务状态。
        # @type SessionId: String
        # @param RoomIdType: TRTC房间号的类型，0代表数字房间号，1代表字符串房间号。不填默认是数字房间号。
        # @type RoomIdType: Integer
        # @param STTConfig: 语音识别配置。
        # @type STTConfig: :class:`Tencentcloud::Trtc.v20190722.models.STTConfig`
        # @param LLMConfig: LLM配置。需符合openai规范，为JSON字符串，示例如下：
        # <pre> { <br> &emsp;  "LLMType": "大模型类型",  // String 必填，如："openai" <br> &emsp;  "Model": "您的模型名称", // String 必填，指定使用的模型<br>    "APIKey": "您的LLM API密钥", // String 必填 <br> &emsp;  "APIUrl": "https://api.xxx.com/chat/completions", // String 必填，LLM API访问的URL<br> &emsp;  "History": 10, // Integer 选填，设置 LLM 的上下文轮次，默认值为0，最大值50<br> &emsp;  "HistoryMode": 1, // Integer 选填，1表示LLM上下文中的内容会和播放音频做同步，没有播放的音频对应的文本不会出现在上下文中。0表示不会做同步，默认值为0<br> &emsp;  "Streaming": true // Boolean 非必填，指定是否使用流式传输<br> &emsp;} </pre>
        # @type LLMConfig: String
        # @param TTSConfig: TTS配置，为JSON字符串，腾讯云TTS示例如下： <pre>{ <br> &emsp; "AppId": 您的应用ID, // Integer 必填<br> &emsp; "TTSType": "TTS类型", // String TTS类型, 固定为"tencent"<br> &emsp; "SecretId": "您的密钥ID", // String 必填<br> &emsp; "SecretKey":  "您的密钥Key", // String 必填<br> &emsp; "VoiceType": 101001, // Integer  必填，音色 ID，包括标准音色与精品音色，精品音色拟真度更高，价格不同于标准音色，请参见<a href="https://cloud.tencent.com/document/product/1073/34112">语音合成计费概述</a>。完整的音色 ID 列表请参见<a href="https://cloud.tencent.com/document/product/1073/92668#55924b56-1a73-4663-a7a1-a8dd82d6e823">语音合成音色列表</a>。<br> &emsp; "Speed": 1.25, // Integer 非必填，语速，范围：[-2，6]，分别对应不同语速： -2: 代表0.6倍 -1: 代表0.8倍 0: 代表1.0倍（默认） 1: 代表1.2倍 2: 代表1.5倍  6: 代表2.5倍  如果需要更细化的语速，可以保留小数点后 2 位，例如0.5/1.25/2.81等。 参数值与实际语速转换，可参考 <a href="https://sdk-1300466766.cos.ap-shanghai.myqcloud.com/sample/speed_sample.tar.gz">语速转换</a><br> &emsp; "Volume": 5, // Integer 非必填，音量大小，范围：[0，10]，分别对应11个等级的音量，默认值为0，代表正常音量。<br> &emsp; "EmotionCategory":  "angry", // String 非必填 控制合成音频的情感，仅支持多情感音色使用。取值: neutral(中性)、sad(悲伤)、happy(高兴)、angry(生气)、fear(恐惧)、news(新闻)、story(故事)、radio(广播)、poetry(诗歌)、call(客服)、sajiao(撒娇)、disgusted(厌恶)、amaze(震惊)、peaceful(平静)、exciting(兴奋)、aojiao(傲娇)、jieshuo(解说)。<br> &emsp; "EmotionIntensity":  150 // Integer 非必填 控制合成音频情感程度，取值范围为 [50,200]，默认为 100；只有 EmotionCategory 不为空时生效。<br> &emsp; }</pre>
        # @type TTSConfig: String
        # @param AvatarConfig: 数字人配置，为JSON字符串。**数字人配置需要提工单加白后才能使用**
        # @type AvatarConfig: String
        # @param ExperimentalParams: 实验性参数,联系后台使用
        # @type ExperimentalParams: String

        attr_accessor :SdkAppId, :RoomId, :AgentConfig, :SessionId, :RoomIdType, :STTConfig, :LLMConfig, :TTSConfig, :AvatarConfig, :ExperimentalParams

        def initialize(sdkappid=nil, roomid=nil, agentconfig=nil, sessionid=nil, roomidtype=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, avatarconfig=nil, experimentalparams=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @AgentConfig = agentconfig
          @SessionId = sessionid
          @RoomIdType = roomidtype
          @STTConfig = sttconfig
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
          @AvatarConfig = avatarconfig
          @ExperimentalParams = experimentalparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          unless params['AgentConfig'].nil?
            @AgentConfig = AgentConfig.new
            @AgentConfig.deserialize(params['AgentConfig'])
          end
          @SessionId = params['SessionId']
          @RoomIdType = params['RoomIdType']
          unless params['STTConfig'].nil?
            @STTConfig = STTConfig.new
            @STTConfig.deserialize(params['STTConfig'])
          end
          @LLMConfig = params['LLMConfig']
          @TTSConfig = params['TTSConfig']
          @AvatarConfig = params['AvatarConfig']
          @ExperimentalParams = params['ExperimentalParams']
        end
      end

      # StartAIConversation返回参数结构体
      class StartAIConversationResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 用于唯一标识对话任务。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # StartAITranscription请求参数结构体
      class StartAITranscriptionRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和开启转录任务的房间使用的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: TRTC的[RoomId](https://cloud.tencent.com/document/product/647/46351#roomid)，表示开启转录任务的房间号。
        # @type RoomId: String
        # @param TranscriptionParams: 转录机器人的参数。
        # @type TranscriptionParams: :class:`Tencentcloud::Trtc.v20190722.models.TranscriptionParams`
        # @param SessionId: 调用方传入的唯一Id，服务端用来任务去重，重复的任务会发起失败。服务端固定使用SdkAppId+RoomId+RoomIdType+RobotUserId来去重，如果传入了SessionId，也会使用SessionId去重。
        # 注意：
        # TranscriptionMode为0时，需要保证一个房间内只发起一个任务，如果发起多个任务，则机器人之间会相互订阅，除非主动停止任务，否则只有10小时后任务才会超时退出，这种情况下建议填写SessionId，保证后续重复发起的任务失败。
        # @type SessionId: String
        # @param RoomIdType: TRTC房间号的类型，0代表数字房间号，1代表字符串房间号。不填默认是数字房间号。
        # @type RoomIdType: Integer
        # @param RecognizeConfig: 语音识别配置。
        # @type RecognizeConfig: :class:`Tencentcloud::Trtc.v20190722.models.RecognizeConfig`
        # @param TranslationConfig: 翻译相关配置
        # @type TranslationConfig: :class:`Tencentcloud::Trtc.v20190722.models.TranslationConfig`

        attr_accessor :SdkAppId, :RoomId, :TranscriptionParams, :SessionId, :RoomIdType, :RecognizeConfig, :TranslationConfig

        def initialize(sdkappid=nil, roomid=nil, transcriptionparams=nil, sessionid=nil, roomidtype=nil, recognizeconfig=nil, translationconfig=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @TranscriptionParams = transcriptionparams
          @SessionId = sessionid
          @RoomIdType = roomidtype
          @RecognizeConfig = recognizeconfig
          @TranslationConfig = translationconfig
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          unless params['TranscriptionParams'].nil?
            @TranscriptionParams = TranscriptionParams.new
            @TranscriptionParams.deserialize(params['TranscriptionParams'])
          end
          @SessionId = params['SessionId']
          @RoomIdType = params['RoomIdType']
          unless params['RecognizeConfig'].nil?
            @RecognizeConfig = RecognizeConfig.new
            @RecognizeConfig.deserialize(params['RecognizeConfig'])
          end
          unless params['TranslationConfig'].nil?
            @TranslationConfig = TranslationConfig.new
            @TranslationConfig.deserialize(params['TranslationConfig'])
          end
        end
      end

      # StartAITranscription返回参数结构体
      class StartAITranscriptionResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 用于唯一标识转录任务。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # StartMCUMixTranscodeByStrRoomId请求参数结构体
      class StartMCUMixTranscodeByStrRoomIdRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param StrRoomId: 字符串房间号。
        # @type StrRoomId: String
        # @param OutputParams: 混流输出控制参数。
        # @type OutputParams: :class:`Tencentcloud::Trtc.v20190722.models.OutputParams`
        # @param EncodeParams: 混流输出编码参数。
        # @type EncodeParams: :class:`Tencentcloud::Trtc.v20190722.models.EncodeParams`
        # @param LayoutParams: 混流输出布局参数。
        # @type LayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.LayoutParams`
        # @param PublishCdnParams: 第三方CDN转推参数。如需转推至腾讯云云直播，此参数无需填写，会默认转推
        # @type PublishCdnParams: :class:`Tencentcloud::Trtc.v20190722.models.PublishCdnParams`

        attr_accessor :SdkAppId, :StrRoomId, :OutputParams, :EncodeParams, :LayoutParams, :PublishCdnParams

        def initialize(sdkappid=nil, strroomid=nil, outputparams=nil, encodeparams=nil, layoutparams=nil, publishcdnparams=nil)
          @SdkAppId = sdkappid
          @StrRoomId = strroomid
          @OutputParams = outputparams
          @EncodeParams = encodeparams
          @LayoutParams = layoutparams
          @PublishCdnParams = publishcdnparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StrRoomId = params['StrRoomId']
          unless params['OutputParams'].nil?
            @OutputParams = OutputParams.new
            @OutputParams.deserialize(params['OutputParams'])
          end
          unless params['EncodeParams'].nil?
            @EncodeParams = EncodeParams.new
            @EncodeParams.deserialize(params['EncodeParams'])
          end
          unless params['LayoutParams'].nil?
            @LayoutParams = LayoutParams.new
            @LayoutParams.deserialize(params['LayoutParams'])
          end
          unless params['PublishCdnParams'].nil?
            @PublishCdnParams = PublishCdnParams.new
            @PublishCdnParams.deserialize(params['PublishCdnParams'])
          end
        end
      end

      # StartMCUMixTranscodeByStrRoomId返回参数结构体
      class StartMCUMixTranscodeByStrRoomIdResponse < TencentCloud::Common::AbstractModel
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

      # StartMCUMixTranscode请求参数结构体
      class StartMCUMixTranscodeRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer
        # @param OutputParams: 混流输出控制参数。
        # @type OutputParams: :class:`Tencentcloud::Trtc.v20190722.models.OutputParams`
        # @param EncodeParams: 混流输出编码参数。
        # @type EncodeParams: :class:`Tencentcloud::Trtc.v20190722.models.EncodeParams`
        # @param LayoutParams: 混流输出布局参数。
        # @type LayoutParams: :class:`Tencentcloud::Trtc.v20190722.models.LayoutParams`
        # @param PublishCdnParams: 第三方CDN转推参数。如需转推至腾讯云云直播，此参数无需填写，会默认转推
        # @type PublishCdnParams: :class:`Tencentcloud::Trtc.v20190722.models.PublishCdnParams`

        attr_accessor :SdkAppId, :RoomId, :OutputParams, :EncodeParams, :LayoutParams, :PublishCdnParams

        def initialize(sdkappid=nil, roomid=nil, outputparams=nil, encodeparams=nil, layoutparams=nil, publishcdnparams=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @OutputParams = outputparams
          @EncodeParams = encodeparams
          @LayoutParams = layoutparams
          @PublishCdnParams = publishcdnparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          unless params['OutputParams'].nil?
            @OutputParams = OutputParams.new
            @OutputParams.deserialize(params['OutputParams'])
          end
          unless params['EncodeParams'].nil?
            @EncodeParams = EncodeParams.new
            @EncodeParams.deserialize(params['EncodeParams'])
          end
          unless params['LayoutParams'].nil?
            @LayoutParams = LayoutParams.new
            @LayoutParams.deserialize(params['LayoutParams'])
          end
          unless params['PublishCdnParams'].nil?
            @PublishCdnParams = PublishCdnParams.new
            @PublishCdnParams.deserialize(params['PublishCdnParams'])
          end
        end
      end

      # StartMCUMixTranscode返回参数结构体
      class StartMCUMixTranscodeResponse < TencentCloud::Common::AbstractModel
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

      # StartPublishCdnStream请求参数结构体
      class StartPublishCdnStreamRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和转推的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: 主房间信息RoomId，转推的TRTC房间所对应的RoomId。
        # @type RoomId: String
        # @param RoomIdType: 主房间信息RoomType，必须和转推的房间所对应的RoomId类型相同，0为整型房间号，1为字符串房间号。
        # @type RoomIdType: Integer
        # @param AgentParams: 转推服务加入TRTC房间的机器人参数。
        # @type AgentParams: :class:`Tencentcloud::Trtc.v20190722.models.AgentParams`
        # @param WithTranscoding: 是否转码，0表示无需转码，1表示需要转码。是否收取转码费是由WithTranscoding参数决定的，WithTranscoding为0，表示旁路转推，不会收取转码费用，WithTranscoding为1，表示混流转推，会收取转码费用。
        # 注：混流是必须转码，这个参数需设置为1。
        # @type WithTranscoding: Integer
        # @param AudioParams: 转推流的音频编码参数。由于音频是必转码的（不会收取转码费用），所以启动任务的时候，必须填写。
        # @type AudioParams: :class:`Tencentcloud::Trtc.v20190722.models.McuAudioParams`
        # @param VideoParams: 转推流的视频编码参数，不填表示纯音频转推。
        # @type VideoParams: :class:`Tencentcloud::Trtc.v20190722.models.McuVideoParams`
        # @param SingleSubscribeParams: 需要单流旁路转推的用户上行参数，单流旁路转推时，WithTranscoding需要设置为0。
        # @type SingleSubscribeParams: :class:`Tencentcloud::Trtc.v20190722.models.SingleSubscribeParams`
        # @param PublishCdnParams: 转推的CDN参数，一个任务最多支持10个推流URL。和回推房间参数必须要有一个。
        # @type PublishCdnParams: Array
        # @param SeiParams: 混流SEI参数
        # @type SeiParams: :class:`Tencentcloud::Trtc.v20190722.models.McuSeiParams`
        # @param FeedBackRoomParams: 回推房间信息，一个任务最多支持回推10个房间，和转推CDN参数必须要有一个。注：回推房间需使用10.4及以上SDK版本，如您有需求，请联系腾讯云技术支持。
        # @type FeedBackRoomParams: Array
        # @param RecordParams: 转推录制参数，[参考文档](https://cloud.tencent.com/document/product/647/111748)。
        # @type RecordParams: :class:`Tencentcloud::Trtc.v20190722.models.McuRecordParams`

        attr_accessor :SdkAppId, :RoomId, :RoomIdType, :AgentParams, :WithTranscoding, :AudioParams, :VideoParams, :SingleSubscribeParams, :PublishCdnParams, :SeiParams, :FeedBackRoomParams, :RecordParams

        def initialize(sdkappid=nil, roomid=nil, roomidtype=nil, agentparams=nil, withtranscoding=nil, audioparams=nil, videoparams=nil, singlesubscribeparams=nil, publishcdnparams=nil, seiparams=nil, feedbackroomparams=nil, recordparams=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @RoomIdType = roomidtype
          @AgentParams = agentparams
          @WithTranscoding = withtranscoding
          @AudioParams = audioparams
          @VideoParams = videoparams
          @SingleSubscribeParams = singlesubscribeparams
          @PublishCdnParams = publishcdnparams
          @SeiParams = seiparams
          @FeedBackRoomParams = feedbackroomparams
          @RecordParams = recordparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @RoomIdType = params['RoomIdType']
          unless params['AgentParams'].nil?
            @AgentParams = AgentParams.new
            @AgentParams.deserialize(params['AgentParams'])
          end
          @WithTranscoding = params['WithTranscoding']
          unless params['AudioParams'].nil?
            @AudioParams = McuAudioParams.new
            @AudioParams.deserialize(params['AudioParams'])
          end
          unless params['VideoParams'].nil?
            @VideoParams = McuVideoParams.new
            @VideoParams.deserialize(params['VideoParams'])
          end
          unless params['SingleSubscribeParams'].nil?
            @SingleSubscribeParams = SingleSubscribeParams.new
            @SingleSubscribeParams.deserialize(params['SingleSubscribeParams'])
          end
          unless params['PublishCdnParams'].nil?
            @PublishCdnParams = []
            params['PublishCdnParams'].each do |i|
              mcupublishcdnparam_tmp = McuPublishCdnParam.new
              mcupublishcdnparam_tmp.deserialize(i)
              @PublishCdnParams << mcupublishcdnparam_tmp
            end
          end
          unless params['SeiParams'].nil?
            @SeiParams = McuSeiParams.new
            @SeiParams.deserialize(params['SeiParams'])
          end
          unless params['FeedBackRoomParams'].nil?
            @FeedBackRoomParams = []
            params['FeedBackRoomParams'].each do |i|
              mcufeedbackroomparams_tmp = McuFeedBackRoomParams.new
              mcufeedbackroomparams_tmp.deserialize(i)
              @FeedBackRoomParams << mcufeedbackroomparams_tmp
            end
          end
          unless params['RecordParams'].nil?
            @RecordParams = McuRecordParams.new
            @RecordParams.deserialize(params['RecordParams'])
          end
        end
      end

      # StartPublishCdnStream返回参数结构体
      class StartPublishCdnStreamResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 用于唯一标识转推任务，由腾讯云服务端生成，后续更新和停止请求都需要携带TaskID参数。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # StartStreamIngest请求参数结构体
      class StartStreamIngestRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和TRTC的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: TRTC的[RoomId](https://cloud.tencent.com/document/product/647/46351#roomid)，录制的TRTC房间所对应的RoomId。
        # @type RoomId: String
        # @param RoomIdType: TRTC房间号的类型。
        # 【*注意】必须和录制的房间所对应的RoomId类型相同:
        # 0: 字符串类型的RoomId
        # 1: 32位整型的RoomId（默认）
        # @type RoomIdType: Integer
        # @param UserId: 输入在线媒体流机器人的UserId，用于进房发起拉流转推任务。
        # @type UserId: String
        # @param UserSig: 输入在线媒体流机器人UserId对应的校验签名，即UserId和UserSig相当于机器人进房的登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        # @type UserSig: String
        # @param StreamUrl: 源流URL【必填】。如果是视频流，分辨率请保持不变。
        # @type StreamUrl: String
        # @param PrivateMapKey: TRTC房间权限加密串，只有在TRTC控制台启用了高级权限控制的时候需要携带，在TRTC控制台如果开启高级权限控制后，TRTC 的后台服务系统会校验一个叫做 [PrivateMapKey] 的“权限票据”，权限票据中包含了一个加密后的 RoomId 和一个加密后的“权限位列表”。由于 PrivateMapKey 中包含 RoomId，所以只提供了 UserSig 没有提供 PrivateMapKey 时，并不能进入指定的房间。
        # @type PrivateMapKey: String
        # @param VideoEncodeParams: 【本字段已废弃】视频编码参数。可选，如果不填，保持原始流的参数。
        # @type VideoEncodeParams: :class:`Tencentcloud::Trtc.v20190722.models.VideoEncodeParams`
        # @param AudioEncodeParams: 【本字段已废弃】音频编码参数。可选，如果不填，保持原始流的参数。
        # @type AudioEncodeParams: :class:`Tencentcloud::Trtc.v20190722.models.AudioEncodeParams`
        # @param SourceUrl: 【本字段已废弃，请使用 StreamUrl 字段】源流URL，支持一个地址。
        # @type SourceUrl: Array
        # @param SeekSecond: 指定视频从某个秒时间戳播放
        # @type SeekSecond: Integer
        # @param AutoPush: 开启自动旁路推流，请确认控制台已经开启该功能。
        # @type AutoPush: Boolean
        # @param RepeatNum: 循环播放次数, 取值范围[-1, 1000],  默认1次。
        #  - 0 无效值
        #  - -1 循环播放, 需要主动调用停止接口或设置MaxDuration
        # @type RepeatNum: Integer
        # @param MaxDuration: 循环播放最大时长,仅支持RepeatNum设置-1时生效，取值范围[1, 10080]，单位分钟。
        # @type MaxDuration: Integer
        # @param Volume: 音量，取值范围[0, 100]，默认100，表示原音量。
        # @type Volume: Integer

        attr_accessor :SdkAppId, :RoomId, :RoomIdType, :UserId, :UserSig, :StreamUrl, :PrivateMapKey, :VideoEncodeParams, :AudioEncodeParams, :SourceUrl, :SeekSecond, :AutoPush, :RepeatNum, :MaxDuration, :Volume
        extend Gem::Deprecate
        deprecate :VideoEncodeParams, :none, 2025, 9
        deprecate :VideoEncodeParams=, :none, 2025, 9
        deprecate :AudioEncodeParams, :none, 2025, 9
        deprecate :AudioEncodeParams=, :none, 2025, 9
        deprecate :SourceUrl, :none, 2025, 9
        deprecate :SourceUrl=, :none, 2025, 9

        def initialize(sdkappid=nil, roomid=nil, roomidtype=nil, userid=nil, usersig=nil, streamurl=nil, privatemapkey=nil, videoencodeparams=nil, audioencodeparams=nil, sourceurl=nil, seeksecond=nil, autopush=nil, repeatnum=nil, maxduration=nil, volume=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @RoomIdType = roomidtype
          @UserId = userid
          @UserSig = usersig
          @StreamUrl = streamurl
          @PrivateMapKey = privatemapkey
          @VideoEncodeParams = videoencodeparams
          @AudioEncodeParams = audioencodeparams
          @SourceUrl = sourceurl
          @SeekSecond = seeksecond
          @AutoPush = autopush
          @RepeatNum = repeatnum
          @MaxDuration = maxduration
          @Volume = volume
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
          @RoomIdType = params['RoomIdType']
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          @StreamUrl = params['StreamUrl']
          @PrivateMapKey = params['PrivateMapKey']
          unless params['VideoEncodeParams'].nil?
            @VideoEncodeParams = VideoEncodeParams.new
            @VideoEncodeParams.deserialize(params['VideoEncodeParams'])
          end
          unless params['AudioEncodeParams'].nil?
            @AudioEncodeParams = AudioEncodeParams.new
            @AudioEncodeParams.deserialize(params['AudioEncodeParams'])
          end
          @SourceUrl = params['SourceUrl']
          @SeekSecond = params['SeekSecond']
          @AutoPush = params['AutoPush']
          @RepeatNum = params['RepeatNum']
          @MaxDuration = params['MaxDuration']
          @Volume = params['Volume']
        end
      end

      # StartStreamIngest返回参数结构体
      class StartStreamIngestResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 输入在线媒体流的任务 ID。任务 ID 是对一次输入在线媒体流生命周期过程的唯一标识，结束任务时会失去意义。任务 ID 需要业务保存下来，作为下次针对这个任务操作的参数。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # StartWebRecord请求参数结构体
      class StartWebRecordRequest < TencentCloud::Common::AbstractModel
        # @param RecordUrl: 需要录制的网页URL
        # @type RecordUrl: String
        # @param MaxDurationLimit: 录制最大时长限制， 单位 s, 合法取值范围[1800, 36000], 默认 36000s(10 小时)
        # @type MaxDurationLimit: Integer
        # @param StorageParams: 【必填】云存储相关的参数，目前支持腾讯云对象存储以及腾讯云云点播VOD，不支持第三方云存储；输出文件的存储格式仅支持hls或mp4
        # @type StorageParams: :class:`Tencentcloud::Trtc.v20190722.models.StorageParams`
        # @param WebRecordVideoParams: 页面录制视频参数
        # @type WebRecordVideoParams: :class:`Tencentcloud::Trtc.v20190722.models.WebRecordVideoParams`
        # @param SdkAppId: 【必填】TRTC的SdkAppId
        # @type SdkAppId: Integer
        # @param RecordId: 当对重复任务敏感时，请关注此值： 为了避免任务在短时间内重复发起，导致任务重复
        # 传入录制RecordId来标识此次任务， 小于32字节，若携带RecordId发起两次以上的开始录制请求，任务只会启动一个，第二个报错FailedOperation.TaskExist。注意StartWebRecord调用失败时而非FailedOperation.TaskExist错误，请更换RecordId重新发起。
        # @type RecordId: String
        # @param PublishCdnParams: 若您想要推流到CDN，可以使用PublishCdnParams.N参数设置，支持最多同时推流到10个CDN地址。若转推地址是腾讯云CDN时，请将IsTencentCdn明确设置为1
        # @type PublishCdnParams: Array
        # @param ReadyTimeout: 录制页面资源加载的超时时间，单位：秒。默认值为 0 秒，该值需大于等于 0秒，且小于等于 60秒。录制页面未启用页面加载超时检测时，请勿设置此参数。
        # @type ReadyTimeout: Integer
        # @param EmulateMobileParams: 渲染移动模式参数；不准备渲染移动模式页面时，请勿设置此参数。
        # @type EmulateMobileParams: :class:`Tencentcloud::Trtc.v20190722.models.EmulateMobileParams`

        attr_accessor :RecordUrl, :MaxDurationLimit, :StorageParams, :WebRecordVideoParams, :SdkAppId, :RecordId, :PublishCdnParams, :ReadyTimeout, :EmulateMobileParams

        def initialize(recordurl=nil, maxdurationlimit=nil, storageparams=nil, webrecordvideoparams=nil, sdkappid=nil, recordid=nil, publishcdnparams=nil, readytimeout=nil, emulatemobileparams=nil)
          @RecordUrl = recordurl
          @MaxDurationLimit = maxdurationlimit
          @StorageParams = storageparams
          @WebRecordVideoParams = webrecordvideoparams
          @SdkAppId = sdkappid
          @RecordId = recordid
          @PublishCdnParams = publishcdnparams
          @ReadyTimeout = readytimeout
          @EmulateMobileParams = emulatemobileparams
        end

        def deserialize(params)
          @RecordUrl = params['RecordUrl']
          @MaxDurationLimit = params['MaxDurationLimit']
          unless params['StorageParams'].nil?
            @StorageParams = StorageParams.new
            @StorageParams.deserialize(params['StorageParams'])
          end
          unless params['WebRecordVideoParams'].nil?
            @WebRecordVideoParams = WebRecordVideoParams.new
            @WebRecordVideoParams.deserialize(params['WebRecordVideoParams'])
          end
          @SdkAppId = params['SdkAppId']
          @RecordId = params['RecordId']
          unless params['PublishCdnParams'].nil?
            @PublishCdnParams = []
            params['PublishCdnParams'].each do |i|
              mcupublishcdnparam_tmp = McuPublishCdnParam.new
              mcupublishcdnparam_tmp.deserialize(i)
              @PublishCdnParams << mcupublishcdnparam_tmp
            end
          end
          @ReadyTimeout = params['ReadyTimeout']
          unless params['EmulateMobileParams'].nil?
            @EmulateMobileParams = EmulateMobileParams.new
            @EmulateMobileParams.deserialize(params['EmulateMobileParams'])
          end
        end
      end

      # StartWebRecord返回参数结构体
      class StartWebRecordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 录制任务的唯一Id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # StopAIConversation请求参数结构体
      class StopAIConversationRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 唯一标识任务。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # StopAIConversation返回参数结构体
      class StopAIConversationResponse < TencentCloud::Common::AbstractModel
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

      # StopAITranscription请求参数结构体
      class StopAITranscriptionRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 唯一标识转录任务。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # StopAITranscription返回参数结构体
      class StopAITranscriptionResponse < TencentCloud::Common::AbstractModel
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

      # StopMCUMixTranscodeByStrRoomId请求参数结构体
      class StopMCUMixTranscodeByStrRoomIdRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param StrRoomId: 字符串房间号。
        # @type StrRoomId: String

        attr_accessor :SdkAppId, :StrRoomId

        def initialize(sdkappid=nil, strroomid=nil)
          @SdkAppId = sdkappid
          @StrRoomId = strroomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @StrRoomId = params['StrRoomId']
        end
      end

      # StopMCUMixTranscodeByStrRoomId返回参数结构体
      class StopMCUMixTranscodeByStrRoomIdResponse < TencentCloud::Common::AbstractModel
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

      # StopMCUMixTranscode请求参数结构体
      class StopMCUMixTranscodeRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId。
        # @type SdkAppId: Integer
        # @param RoomId: 房间号。
        # @type RoomId: Integer

        attr_accessor :SdkAppId, :RoomId

        def initialize(sdkappid=nil, roomid=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomId = params['RoomId']
        end
      end

      # StopMCUMixTranscode返回参数结构体
      class StopMCUMixTranscodeResponse < TencentCloud::Common::AbstractModel
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

      # StopPublishCdnStream请求参数结构体
      class StopPublishCdnStreamRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和转推的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 唯一标识转推任务。
        # @type TaskId: String
        # @param RecordKey: 录制任务 key，标识一个录制任务，对应转推任务发起时指定 RecordKey；
        # 如果填写该参数，表示调用者希望立即结束该录制任务。当RecordKey 指定的录制任务正在录制当前转推任务时，录制任务立即结束，否则录制任务不受影响。
        # 如果没有填写该参数，但是转推任务发起时填写了 RecordKey，则表示在续录等待时间结束后才结束录制任务，续录等待期间可以使用相同的 RecordKey 发起新的转推任务，和当前转推任务录制到同一文件。
        # @type RecordKey: String

        attr_accessor :SdkAppId, :TaskId, :RecordKey

        def initialize(sdkappid=nil, taskid=nil, recordkey=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @RecordKey = recordkey
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          @RecordKey = params['RecordKey']
        end
      end

      # StopPublishCdnStream返回参数结构体
      class StopPublishCdnStreamResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 转推任务唯一的String Id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # StopStreamIngest请求参数结构体
      class StopStreamIngestRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和任务的房间所对应的SDKAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 任务的唯一Id，在启动任务成功后会返回。
        # @type TaskId: String

        attr_accessor :SdkAppId, :TaskId

        def initialize(sdkappid=nil, taskid=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
        end
      end

      # StopStreamIngest返回参数结构体
      class StopStreamIngestResponse < TencentCloud::Common::AbstractModel
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

      # StopWebRecord请求参数结构体
      class StopWebRecordRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 需要停止的任务Id
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # StopWebRecord返回参数结构体
      class StopWebRecordResponse < TencentCloud::Common::AbstractModel
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

      # 云端录制查询接口，录制文件的信息
      class StorageFile < TencentCloud::Common::AbstractModel
        # @param UserId: 录制文件对应的UserId，如果是混流的话的这里返回的是空串。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param FileName: 录制索引文件名。
        # @type FileName: String
        # @param TrackType: 录制文件流信息。
        # video：视频录制文件
        # audio：音频录制文件
        # audio_video：音视频录制文件
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrackType: String
        # @param BeginTimeStamp: 录制文件开始Unix时间戳。
        # @type BeginTimeStamp: Integer

        attr_accessor :UserId, :FileName, :TrackType, :BeginTimeStamp

        def initialize(userid=nil, filename=nil, tracktype=nil, begintimestamp=nil)
          @UserId = userid
          @FileName = filename
          @TrackType = tracktype
          @BeginTimeStamp = begintimestamp
        end

        def deserialize(params)
          @UserId = params['UserId']
          @FileName = params['FileName']
          @TrackType = params['TrackType']
          @BeginTimeStamp = params['BeginTimeStamp']
        end
      end

      # 录制存储参数
      class StorageParams < TencentCloud::Common::AbstractModel
        # @param CloudStorage: 腾讯云对象存储COS以及第三方云存储的账号信息
        # @type CloudStorage: :class:`Tencentcloud::Trtc.v20190722.models.CloudStorage`
        # @param CloudVod: 腾讯云云点播Vod的存储信息
        # @type CloudVod: :class:`Tencentcloud::Trtc.v20190722.models.CloudVod`

        attr_accessor :CloudStorage, :CloudVod

        def initialize(cloudstorage=nil, cloudvod=nil)
          @CloudStorage = cloudstorage
          @CloudVod = cloudvod
        end

        def deserialize(params)
          unless params['CloudStorage'].nil?
            @CloudStorage = CloudStorage.new
            @CloudStorage.deserialize(params['CloudStorage'])
          end
          unless params['CloudVod'].nil?
            @CloudVod = CloudVod.new
            @CloudVod.deserialize(params['CloudVod'])
          end
        end
      end

      # 指定订阅流白名单或者黑名单，音频的白名单和音频黑名单不能同时设置，视频亦然。同时实际并发订阅的媒体流路数最大支持25路流，混流场景下视频的多画面最大支持24画面。支持通过设置".*$"通配符，来前缀匹配黑白名单的UserId，注意房间里不能有和通配符规则相同的用户，否则将视为订阅具体用户，前缀规则会失效。
      class SubscribeModerationUserIds < TencentCloud::Common::AbstractModel
        # @param SubscribeAudioUserIds: 订阅音频流白名单，指定订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表订阅UserId 1，2，3的音频流；["1.*$"], 代表订阅UserId前缀为1的音频流。默认不填订阅房间内所有的音频流，订阅列表用户数不超过32。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeAudioUserIds: Array
        # @param UnSubscribeAudioUserIds: 订阅音频流黑名单，指定不订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表不订阅UserId 1，2，3的音频流；["1.*$"], 代表不订阅UserId前缀为1的音频流。默认不填订阅房间内所有音频流，订阅列表用户数不超过32。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnSubscribeAudioUserIds: Array
        # @param SubscribeVideoUserIds: 订阅视频流白名单，指定订阅哪几个UserId的视频流，例如["1", "2", "3"], 代表订阅UserId  1，2，3的视频流；["1.*$"], 代表订阅UserId前缀为1的视频流。默认不填订阅房间内所有视频流，订阅列表用户数不超过32。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubscribeVideoUserIds: Array
        # @param UnSubscribeVideoUserIds: 订阅视频流黑名单，指定不订阅哪几个UserId的视频流，例如["1", "2", "3"], 代表不订阅UserId  1，2，3的视频流；["1.*$"], 代表不订阅UserId前缀为1的视频流。默认不填订阅房间内所有视频流，订阅列表用户数不超过32。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnSubscribeVideoUserIds: Array

        attr_accessor :SubscribeAudioUserIds, :UnSubscribeAudioUserIds, :SubscribeVideoUserIds, :UnSubscribeVideoUserIds

        def initialize(subscribeaudiouserids=nil, unsubscribeaudiouserids=nil, subscribevideouserids=nil, unsubscribevideouserids=nil)
          @SubscribeAudioUserIds = subscribeaudiouserids
          @UnSubscribeAudioUserIds = unsubscribeaudiouserids
          @SubscribeVideoUserIds = subscribevideouserids
          @UnSubscribeVideoUserIds = unsubscribevideouserids
        end

        def deserialize(params)
          @SubscribeAudioUserIds = params['SubscribeAudioUserIds']
          @UnSubscribeAudioUserIds = params['UnSubscribeAudioUserIds']
          @SubscribeVideoUserIds = params['SubscribeVideoUserIds']
          @UnSubscribeVideoUserIds = params['UnSubscribeVideoUserIds']
        end
      end

      # 指定订阅流白名单或者黑名单，音频的白名单和音频黑名单不能同时设置，视频亦然。同时实际并发订阅的媒体流路数最大支持25路流，混流场景下视频的多画面最大支持24画面。支持通过设置".*$"通配符，来前缀匹配黑白名单的UserId，注意房间里不能有和通配符规则相同的用户，否则将视为订阅具体用户，前缀规则会失效。
      class SubscribeStreamUserIds < TencentCloud::Common::AbstractModel
        # @param SubscribeAudioUserIds: 订阅音频流白名单，指定订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表订阅UserId 1，2，3的音频流；["1.*$"], 代表订阅UserId前缀为1的音频流。默认不填订阅房间内所有的音频流，订阅列表用户数不超过32。
        # @type SubscribeAudioUserIds: Array
        # @param UnSubscribeAudioUserIds: 订阅音频流黑名单，指定不订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表不订阅UserId 1，2，3的音频流；["1.*$"], 代表不订阅UserId前缀为1的音频流。默认不填订阅房间内所有音频流，订阅列表用户数不超过32。
        # @type UnSubscribeAudioUserIds: Array
        # @param SubscribeVideoUserIds: 订阅视频流白名单，指定订阅哪几个UserId的视频流，例如["1", "2", "3"], 代表订阅UserId  1，2，3的视频流；["1.*$"], 代表订阅UserId前缀为1的视频流。默认不填订阅房间内所有视频流，订阅列表用户数不超过32。
        # @type SubscribeVideoUserIds: Array
        # @param UnSubscribeVideoUserIds: 订阅视频流黑名单，指定不订阅哪几个UserId的视频流，例如["1", "2", "3"], 代表不订阅UserId  1，2，3的视频流；["1.*$"], 代表不订阅UserId前缀为1的视频流。默认不填订阅房间内所有视频流，订阅列表用户数不超过32。
        # @type UnSubscribeVideoUserIds: Array

        attr_accessor :SubscribeAudioUserIds, :UnSubscribeAudioUserIds, :SubscribeVideoUserIds, :UnSubscribeVideoUserIds

        def initialize(subscribeaudiouserids=nil, unsubscribeaudiouserids=nil, subscribevideouserids=nil, unsubscribevideouserids=nil)
          @SubscribeAudioUserIds = subscribeaudiouserids
          @UnSubscribeAudioUserIds = unsubscribeaudiouserids
          @SubscribeVideoUserIds = subscribevideouserids
          @UnSubscribeVideoUserIds = unsubscribevideouserids
        end

        def deserialize(params)
          @SubscribeAudioUserIds = params['SubscribeAudioUserIds']
          @UnSubscribeAudioUserIds = params['UnSubscribeAudioUserIds']
          @SubscribeVideoUserIds = params['SubscribeVideoUserIds']
          @UnSubscribeVideoUserIds = params['UnSubscribeVideoUserIds']
        end
      end

      # TRTC数据大盘/实时监控 API接口数据出参
      class TRTCDataResp < TencentCloud::Common::AbstractModel
        # @param StatementID: StatementID值，监控仪表盘下固定为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatementID: Integer
        # @param Series: 查询结果数据，以Columns-Values形式返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Series: Array
        # @param Total: Total值，监控仪表盘功能下固定为1。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :StatementID, :Series, :Total

        def initialize(statementid=nil, series=nil, total=nil)
          @StatementID = statementid
          @Series = series
          @Total = total
        end

        def deserialize(params)
          @StatementID = params['StatementID']
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              seriesinfo_tmp = SeriesInfo.new
              seriesinfo_tmp.deserialize(i)
              @Series << seriesinfo_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # TRTC数据大盘/实时监控 API接口数据出参
      class TRTCDataResult < TencentCloud::Common::AbstractModel
        # @param StatementID: StatementID值，监控仪表盘下固定为0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatementID: Integer
        # @param Series: 查询结果数据，以Columns-Values形式返回。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Series: Array
        # @param Total: Total值，监控仪表盘功能下固定为1。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Total: Integer

        attr_accessor :StatementID, :Series, :Total

        def initialize(statementid=nil, series=nil, total=nil)
          @StatementID = statementid
          @Series = series
          @Total = total
        end

        def deserialize(params)
          @StatementID = params['StatementID']
          unless params['Series'].nil?
            @Series = []
            params['Series'].each do |i|
              seriesinfos_tmp = SeriesInfos.new
              seriesinfos_tmp.deserialize(i)
              @Series << seriesinfos_tmp
            end
          end
          @Total = params['Total']
        end
      end

      # TTS相关配置
      class TTSConfig < TencentCloud::Common::AbstractModel
        # @param VoiceId: 音色ID
        # @type VoiceId: String

        attr_accessor :VoiceId

        def initialize(voiceid=nil)
          @VoiceId = voiceid
        end

        def deserialize(params)
          @VoiceId = params['VoiceId']
        end
      end

      # 腾讯云点播相关参数。
      class TencentVod < TencentCloud::Common::AbstractModel
        # @param Procedure: 媒体后续任务处理操作，即完成媒体上传后，可自动发起任务流操作。参数值为任务流模板名，云点播支持 创建任务流模板 并为模板命名。
        # @type Procedure: String
        # @param ExpireTime: 媒体文件过期时间，为当前时间的绝对过期时间；保存一天，就填"86400"，永久保存就填"0"，默认永久保存。
        # @type ExpireTime: Integer
        # @param StorageRegion: 指定上传园区，仅适用于对上传地域有特殊需求的用户。
        # @type StorageRegion: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 创建分类 接口，创建分类，获得分类 ID。
        # 默认值：0，表示其他分类。
        # @type ClassId: Integer
        # @param SubAppId: 点播 子应用 ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer
        # @param SessionContext: 任务流上下文，任务完成回调时透传。
        # @type SessionContext: String
        # @param SourceContext: 上传上下文，上传完成回调时透传。
        # @type SourceContext: String
        # @param MediaType: 上传到vod平台的录制文件格式类型，0：mp4(默认), 1: hls, 2:aac(StreamType=1纯音频录制时有效),
        # 3: hls+mp4, 4: hls+aac(StreamType=1纯音频录制时有效)。
        # @type MediaType: Integer
        # @param UserDefineRecordId: 仅支持API录制上传vod，该参数表示用户可以自定义录制文件名前缀，【限制长度为64字节，只允许包含大小写英文字母（a-zA-Z）、数字（0-9）及下划线和连词符】。前缀与自动生成的录制文件名之间用`__UserDefine_u_` 分开。
        # @type UserDefineRecordId: String

        attr_accessor :Procedure, :ExpireTime, :StorageRegion, :ClassId, :SubAppId, :SessionContext, :SourceContext, :MediaType, :UserDefineRecordId

        def initialize(procedure=nil, expiretime=nil, storageregion=nil, classid=nil, subappid=nil, sessioncontext=nil, sourcecontext=nil, mediatype=nil, userdefinerecordid=nil)
          @Procedure = procedure
          @ExpireTime = expiretime
          @StorageRegion = storageregion
          @ClassId = classid
          @SubAppId = subappid
          @SessionContext = sessioncontext
          @SourceContext = sourcecontext
          @MediaType = mediatype
          @UserDefineRecordId = userdefinerecordid
        end

        def deserialize(params)
          @Procedure = params['Procedure']
          @ExpireTime = params['ExpireTime']
          @StorageRegion = params['StorageRegion']
          @ClassId = params['ClassId']
          @SubAppId = params['SubAppId']
          @SessionContext = params['SessionContext']
          @SourceContext = params['SourceContext']
          @MediaType = params['MediaType']
          @UserDefineRecordId = params['UserDefineRecordId']
        end
      end

      # 翻译术语
      class Terminology < TencentCloud::Common::AbstractModel
        # @param Source: 源术语
        # @type Source: String
        # @param Target: 目标术语翻译结果
        # @type Target: String

        attr_accessor :Source, :Target

        def initialize(source=nil, target=nil)
          @Source = source
          @Target = target
        end

        def deserialize(params)
          @Source = params['Source']
          @Target = params['Target']
        end
      end

      # TextToSpeech请求参数结构体
      class TextToSpeechRequest < TencentCloud::Common::AbstractModel
        # @param Text: 需要转语音的文字内容，长度范围：[1, 255]
        # @type Text: String
        # @param Voice: 文本转语音的声音配置
        # @type Voice: :class:`Tencentcloud::Trtc.v20190722.models.Voice`
        # @param SdkAppId: TRTC的SdkAppId
        # @type SdkAppId: Integer
        # @param AudioFormat: 文本转语音的输出音频的格式
        # @type AudioFormat: :class:`Tencentcloud::Trtc.v20190722.models.AudioFormat`
        # @param APIKey: TTS的API密钥
        # @type APIKey: String

        attr_accessor :Text, :Voice, :SdkAppId, :AudioFormat, :APIKey

        def initialize(text=nil, voice=nil, sdkappid=nil, audioformat=nil, apikey=nil)
          @Text = text
          @Voice = voice
          @SdkAppId = sdkappid
          @AudioFormat = audioformat
          @APIKey = apikey
        end

        def deserialize(params)
          @Text = params['Text']
          unless params['Voice'].nil?
            @Voice = Voice.new
            @Voice.deserialize(params['Voice'])
          end
          @SdkAppId = params['SdkAppId']
          unless params['AudioFormat'].nil?
            @AudioFormat = AudioFormat.new
            @AudioFormat.deserialize(params['AudioFormat'])
          end
          @APIKey = params['APIKey']
        end
      end

      # TextToSpeech返回参数结构体
      class TextToSpeechResponse < TencentCloud::Common::AbstractModel
        # @param Audio: Base64编码的音频数据
        # @type Audio: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Audio, :RequestId

        def initialize(audio=nil, requestid=nil)
          @Audio = audio
          @RequestId = requestid
        end

        def deserialize(params)
          @Audio = params['Audio']
          @RequestId = params['RequestId']
        end
      end

      # TextToSpeechSSE请求参数结构体
      class TextToSpeechSSERequest < TencentCloud::Common::AbstractModel
        # @param Text: 需要转语音的文字内容，长度范围：[1, 255]
        # @type Text: String
        # @param Voice: 文本转语音的声音配置
        # @type Voice: :class:`Tencentcloud::Trtc.v20190722.models.Voice`
        # @param SdkAppId: TRTC的SdkAppId
        # @type SdkAppId: Integer
        # @param AudioFormat: 文本转语音的输出音频的格式
        # @type AudioFormat: :class:`Tencentcloud::Trtc.v20190722.models.AudioFormat`
        # @param APIKey: TTS的API密钥
        # @type APIKey: String

        attr_accessor :Text, :Voice, :SdkAppId, :AudioFormat, :APIKey

        def initialize(text=nil, voice=nil, sdkappid=nil, audioformat=nil, apikey=nil)
          @Text = text
          @Voice = voice
          @SdkAppId = sdkappid
          @AudioFormat = audioformat
          @APIKey = apikey
        end

        def deserialize(params)
          @Text = params['Text']
          unless params['Voice'].nil?
            @Voice = Voice.new
            @Voice.deserialize(params['Voice'])
          end
          @SdkAppId = params['SdkAppId']
          unless params['AudioFormat'].nil?
            @AudioFormat = AudioFormat.new
            @AudioFormat.deserialize(params['AudioFormat'])
          end
          @APIKey = params['APIKey']
        end
      end

      # TextToSpeechSSE返回参数结构体
      class TextToSpeechSSEResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。本接口为流式响应接口，当请求成功时，RequestId 会被放在 HTTP 响应的 Header "X-TC-RequestId" 中。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 返回的质量数据，时间:值
      class TimeValue < TencentCloud::Common::AbstractModel
        # @param Time: 时间，unix时间戳（1590065877s)
        # @type Time: Integer
        # @param Value: 当前时间返回参数取值，如（bigvCapFps在1590065877取值为0，则Value：0 ）
        # @type Value: Float

        attr_accessor :Time, :Value

        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # AI转录参数
      class TranscriptionParams < TencentCloud::Common::AbstractModel
        # @param UserId: 转录机器人的UserId，用于进房发起转录任务。【注意】这个UserId不能与当前房间内的主播观众[UserId](https://cloud.tencent.com/document/product/647/46351#userid)重复。如果一个房间发起多个转录任务时，机器人的userid也不能相互重复，否则会中断前一个任务。需要保证转录机器人UserId在房间内唯一。
        # @type UserId: String
        # @param UserSig: 转录机器人UserId对应的校验签名，即UserId和UserSig相当于转录机器人进房的登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        # @type UserSig: String
        # @param IMAdminUserId: IM[管理员账户](
        # https://cloud.tencent.com/document/product/269/31999#app-.E7.AE.A1.E7.90.86.E5.91.98)，如果填写，后台下发消息会使用IM通道，而不是TRTC自定义消息。
        # @type IMAdminUserId: String
        # @param IMAdminUserSig: IM管理员账户生成的签名，用于向特定群组发送消息。如果填写，后台下发消息会使用IM通道，而不是TRTC自定义消息。必须和IM管理员的UserId一起填写。
        # @type IMAdminUserSig: String
        # @param MaxIdleTime: 房间内推流用户全部退出后超过MaxIdleTime秒，后台自动关闭转录任务，默认值是60s。
        # @type MaxIdleTime: Integer
        # @param TranscriptionMode: 1表示机器人只订阅单个人的流，0表示机器人订阅整个房间的流，如果不填默认订阅整个房间的流。
        # @type TranscriptionMode: Integer
        # @param TargetUserId: TranscriptionMode为1时必填，机器人只会拉该userid的流，忽略房间里其他用户。
        # @type TargetUserId: String
        # @param TargetUserIdList: 机器人订阅的用户列表
        # 仅 TranscriptionMode 为 1或者 TranscriptionMode 为无限上麦模式支持传入多个用户列表
        # @type TargetUserIdList: Array
        # @param VoicePrint: 声纹配置
        # @type VoicePrint: :class:`Tencentcloud::Trtc.v20190722.models.VoicePrint`
        # @param TurnDetection: 语义断句检测
        # @type TurnDetection: :class:`Tencentcloud::Trtc.v20190722.models.TurnDetection`

        attr_accessor :UserId, :UserSig, :IMAdminUserId, :IMAdminUserSig, :MaxIdleTime, :TranscriptionMode, :TargetUserId, :TargetUserIdList, :VoicePrint, :TurnDetection
        extend Gem::Deprecate
        deprecate :IMAdminUserId, :none, 2025, 9
        deprecate :IMAdminUserId=, :none, 2025, 9
        deprecate :IMAdminUserSig, :none, 2025, 9
        deprecate :IMAdminUserSig=, :none, 2025, 9

        def initialize(userid=nil, usersig=nil, imadminuserid=nil, imadminusersig=nil, maxidletime=nil, transcriptionmode=nil, targetuserid=nil, targetuseridlist=nil, voiceprint=nil, turndetection=nil)
          @UserId = userid
          @UserSig = usersig
          @IMAdminUserId = imadminuserid
          @IMAdminUserSig = imadminusersig
          @MaxIdleTime = maxidletime
          @TranscriptionMode = transcriptionmode
          @TargetUserId = targetuserid
          @TargetUserIdList = targetuseridlist
          @VoicePrint = voiceprint
          @TurnDetection = turndetection
        end

        def deserialize(params)
          @UserId = params['UserId']
          @UserSig = params['UserSig']
          @IMAdminUserId = params['IMAdminUserId']
          @IMAdminUserSig = params['IMAdminUserSig']
          @MaxIdleTime = params['MaxIdleTime']
          @TranscriptionMode = params['TranscriptionMode']
          @TargetUserId = params['TargetUserId']
          @TargetUserIdList = params['TargetUserIdList']
          unless params['VoicePrint'].nil?
            @VoicePrint = VoicePrint.new
            @VoicePrint.deserialize(params['VoicePrint'])
          end
          unless params['TurnDetection'].nil?
            @TurnDetection = TurnDetection.new
            @TurnDetection.deserialize(params['TurnDetection'])
          end
        end
      end

      # 翻译相关配置
      class TranslationConfig < TencentCloud::Common::AbstractModel
        # @param TargetLanguages: 翻译的目标语言，目标语种列表（ISO 639-1）
        # @type TargetLanguages: Array
        # @param Mode:  1： 仅文字翻译，  2： 语音同传
        # @type Mode: Integer
        # @param TTSConfig: 语音同传配置，开启同传时，需要传递
        # @type TTSConfig: :class:`Tencentcloud::Trtc.v20190722.models.TTSConfig`
        # @param Terminology: 翻译术语集合
        # @type Terminology: Array

        attr_accessor :TargetLanguages, :Mode, :TTSConfig, :Terminology

        def initialize(targetlanguages=nil, mode=nil, ttsconfig=nil, terminology=nil)
          @TargetLanguages = targetlanguages
          @Mode = mode
          @TTSConfig = ttsconfig
          @Terminology = terminology
        end

        def deserialize(params)
          @TargetLanguages = params['TargetLanguages']
          @Mode = params['Mode']
          unless params['TTSConfig'].nil?
            @TTSConfig = TTSConfig.new
            @TTSConfig.deserialize(params['TTSConfig'])
          end
          unless params['Terminology'].nil?
            @Terminology = []
            params['Terminology'].each do |i|
              terminology_tmp = Terminology.new
              terminology_tmp.deserialize(i)
              @Terminology << terminology_tmp
            end
          end
        end
      end

      # 实时音视频用量在某一时间段的统计信息。
      class TrtcUsage < TencentCloud::Common::AbstractModel
        # @param TimeKey: 时间点，格式为YYYY-MM-DD HH:mm:ss。多天查询时，HH:mm:ss为00:00:00。
        # @type TimeKey: String
        # @param TimeStampKey: 时间点时间戳
        # @type TimeStampKey: Integer
        # @param UsageValue: 用量数组。每个数值含义与UsageKey对应。单位:分钟。
        # @type UsageValue: Array

        attr_accessor :TimeKey, :TimeStampKey, :UsageValue

        def initialize(timekey=nil, timestampkey=nil, usagevalue=nil)
          @TimeKey = timekey
          @TimeStampKey = timestampkey
          @UsageValue = usagevalue
        end

        def deserialize(params)
          @TimeKey = params['TimeKey']
          @TimeStampKey = params['TimeStampKey']
          @UsageValue = params['UsageValue']
        end
      end

      # 断句配置
      class TurnDetection < TencentCloud::Common::AbstractModel
        # @param SemanticEagerness: TurnDetectionMode为3时生效，语义断句的灵敏程度


        # 功能简介：根据用户所说的话来判断其已完成发言来分割音频


        # 可选: "low" | "medium" | "high" | "auto"


        # auto 是默认值，与 medium 相同。
        # low 将让用户有足够的时间说话。
        # high 将尽快对音频进行分块。


        # 如果您希望模型在对话模式下更频繁地响应，可以将 SemanticEagerness 设置为 high
        # 如果您希望在用户停顿时，AI能够等待片刻，可以将 SemanticEagerness 设置为 low
        # 无论什么模式，最终都会分割送个大模型进行回复
        # @type SemanticEagerness: String

        attr_accessor :SemanticEagerness

        def initialize(semanticeagerness=nil)
          @SemanticEagerness = semanticeagerness
        end

        def deserialize(params)
          @SemanticEagerness = params['SemanticEagerness']
        end
      end

      # UpdateAIConversation请求参数结构体
      class UpdateAIConversationRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 唯一标识一个任务
        # @type TaskId: String
        # @param WelcomeMessage: 不填写则不进行更新，机器人的欢迎语
        # @type WelcomeMessage: String
        # @param InterruptMode: 不填写则不进行更新。智能打断模式，0表示服务端自动打断，1表示服务端不打断，由端上发送打断信令进行打断
        # @type InterruptMode: Integer
        # @param InterruptSpeechDuration: 不填写则不进行更新。InterruptMode为0时使用，单位为毫秒，默认为500ms。表示服务端检测到持续InterruptSpeechDuration毫秒的人声则进行打断
        # @type InterruptSpeechDuration: Integer
        # @param LLMConfig: 不填写则不进行更新，LLM配置，详情见StartAIConversation接口
        # @type LLMConfig: String
        # @param TTSConfig: 不填写则不进行更新，TTS配置，详情见StartAIConversation接口
        # @type TTSConfig: String

        attr_accessor :TaskId, :WelcomeMessage, :InterruptMode, :InterruptSpeechDuration, :LLMConfig, :TTSConfig

        def initialize(taskid=nil, welcomemessage=nil, interruptmode=nil, interruptspeechduration=nil, llmconfig=nil, ttsconfig=nil)
          @TaskId = taskid
          @WelcomeMessage = welcomemessage
          @InterruptMode = interruptmode
          @InterruptSpeechDuration = interruptspeechduration
          @LLMConfig = llmconfig
          @TTSConfig = ttsconfig
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @WelcomeMessage = params['WelcomeMessage']
          @InterruptMode = params['InterruptMode']
          @InterruptSpeechDuration = params['InterruptSpeechDuration']
          @LLMConfig = params['LLMConfig']
          @TTSConfig = params['TTSConfig']
        end
      end

      # UpdateAIConversation返回参数结构体
      class UpdateAIConversationResponse < TencentCloud::Common::AbstractModel
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

      # UpdatePublishCdnStream请求参数结构体
      class UpdatePublishCdnStreamRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和转推的房间所对应的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 唯一标识转推任务。
        # @type TaskId: String
        # @param SequenceNumber: 客户保证同一个任务，每次更新请求中的SequenceNumber递增，防止请求乱序。
        # @type SequenceNumber: Integer
        # @param WithTranscoding: 是否转码，0表示无需转码，1表示需要转码。
        # 注：混流是必须转码，这个参数需设置为1。
        # @type WithTranscoding: Integer
        # @param AudioParams: 更新相关参数，只支持更新参与混音的主播列表参数，不支持更新Codec、采样率、码率和声道数。不填表示不更新此参数。
        # @type AudioParams: :class:`Tencentcloud::Trtc.v20190722.models.McuAudioParams`
        # @param VideoParams: 更新视频相关参数，转码时支持更新除编码类型之外的编码参数，视频布局参数，背景图片和背景颜色参数，水印参数。不填表示不更新此参数。
        # @type VideoParams: :class:`Tencentcloud::Trtc.v20190722.models.McuVideoParams`
        # @param SingleSubscribeParams: 更新单流转推的用户上行参数，仅在非转码时有效。不填表示不更新此参数。
        # @type SingleSubscribeParams: :class:`Tencentcloud::Trtc.v20190722.models.SingleSubscribeParams`
        # @param PublishCdnParams: 更新转推的CDN参数。不填表示不更新此参数。
        # @type PublishCdnParams: Array
        # @param SeiParams: 混流SEI参数
        # @type SeiParams: :class:`Tencentcloud::Trtc.v20190722.models.McuSeiParams`
        # @param FeedBackRoomParams: 回推房间信息
        # @type FeedBackRoomParams: Array

        attr_accessor :SdkAppId, :TaskId, :SequenceNumber, :WithTranscoding, :AudioParams, :VideoParams, :SingleSubscribeParams, :PublishCdnParams, :SeiParams, :FeedBackRoomParams

        def initialize(sdkappid=nil, taskid=nil, sequencenumber=nil, withtranscoding=nil, audioparams=nil, videoparams=nil, singlesubscribeparams=nil, publishcdnparams=nil, seiparams=nil, feedbackroomparams=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @SequenceNumber = sequencenumber
          @WithTranscoding = withtranscoding
          @AudioParams = audioparams
          @VideoParams = videoparams
          @SingleSubscribeParams = singlesubscribeparams
          @PublishCdnParams = publishcdnparams
          @SeiParams = seiparams
          @FeedBackRoomParams = feedbackroomparams
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          @SequenceNumber = params['SequenceNumber']
          @WithTranscoding = params['WithTranscoding']
          unless params['AudioParams'].nil?
            @AudioParams = McuAudioParams.new
            @AudioParams.deserialize(params['AudioParams'])
          end
          unless params['VideoParams'].nil?
            @VideoParams = McuVideoParams.new
            @VideoParams.deserialize(params['VideoParams'])
          end
          unless params['SingleSubscribeParams'].nil?
            @SingleSubscribeParams = SingleSubscribeParams.new
            @SingleSubscribeParams.deserialize(params['SingleSubscribeParams'])
          end
          unless params['PublishCdnParams'].nil?
            @PublishCdnParams = []
            params['PublishCdnParams'].each do |i|
              mcupublishcdnparam_tmp = McuPublishCdnParam.new
              mcupublishcdnparam_tmp.deserialize(i)
              @PublishCdnParams << mcupublishcdnparam_tmp
            end
          end
          unless params['SeiParams'].nil?
            @SeiParams = McuSeiParams.new
            @SeiParams.deserialize(params['SeiParams'])
          end
          unless params['FeedBackRoomParams'].nil?
            @FeedBackRoomParams = []
            params['FeedBackRoomParams'].each do |i|
              mcufeedbackroomparams_tmp = McuFeedBackRoomParams.new
              mcufeedbackroomparams_tmp.deserialize(i)
              @FeedBackRoomParams << mcufeedbackroomparams_tmp
            end
          end
        end
      end

      # UpdatePublishCdnStream返回参数结构体
      class UpdatePublishCdnStreamResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 转推任务唯一的String Id
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateStreamIngest请求参数结构体
      class UpdateStreamIngestRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SDKAppId，和任务的房间所对应的SDKAppId相同
        # @type SdkAppId: Integer
        # @param TaskId: 任务的唯一Id，在启动任务成功后会返回。
        # @type TaskId: String
        # @param StreamUrl: 源流URL。
        # @type StreamUrl: String
        # @param Volume: 音量，取值范围[0, 100]，默认100，表示原音量。
        # @type Volume: Integer
        # @param IsPause: 是否暂停，默认false表示不暂停。暂停期间任务仍在进行中仍会计费，暂停超过12小时会自动销毁任务, 建议主动调用停止任务接口。
        # @type IsPause: Boolean

        attr_accessor :SdkAppId, :TaskId, :StreamUrl, :Volume, :IsPause

        def initialize(sdkappid=nil, taskid=nil, streamurl=nil, volume=nil, ispause=nil)
          @SdkAppId = sdkappid
          @TaskId = taskid
          @StreamUrl = streamurl
          @Volume = volume
          @IsPause = ispause
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @TaskId = params['TaskId']
          @StreamUrl = params['StreamUrl']
          @Volume = params['Volume']
          @IsPause = params['IsPause']
        end
      end

      # UpdateStreamIngest返回参数结构体
      class UpdateStreamIngestResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务的状态信息。InProgress：表示当前任务正在进行中。NotExist：表示当前任务不存在。示例值：InProgress
        # @type Status: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId

        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # UpdateVoicePrint请求参数结构体
      class UpdateVoicePrintRequest < TencentCloud::Common::AbstractModel
        # @param VoicePrintId: 声纹信息ID
        # @type VoicePrintId: String
        # @param ReqTimestamp: 毫秒时间戳
        # @type ReqTimestamp: Integer
        # @param AudioFormat: 音频格式,目前只支持0,代表wav
        # @type AudioFormat: Integer
        # @param Audio: 整个wav音频文件的base64字符串,其中wav文件限定为16k采样率, 16bit位深, 单声道, 8到18秒音频时长,有效音频不小于6秒(不能有太多静音段),编码数据大小不超过2M
        # @type Audio: String
        # @param AudioMetaInfo: 和声纹绑定的MetaInfo，长度最大不超过512
        # @type AudioMetaInfo: String

        attr_accessor :VoicePrintId, :ReqTimestamp, :AudioFormat, :Audio, :AudioMetaInfo

        def initialize(voiceprintid=nil, reqtimestamp=nil, audioformat=nil, audio=nil, audiometainfo=nil)
          @VoicePrintId = voiceprintid
          @ReqTimestamp = reqtimestamp
          @AudioFormat = audioformat
          @Audio = audio
          @AudioMetaInfo = audiometainfo
        end

        def deserialize(params)
          @VoicePrintId = params['VoicePrintId']
          @ReqTimestamp = params['ReqTimestamp']
          @AudioFormat = params['AudioFormat']
          @Audio = params['Audio']
          @AudioMetaInfo = params['AudioMetaInfo']
        end
      end

      # UpdateVoicePrint返回参数结构体
      class UpdateVoicePrintResponse < TencentCloud::Common::AbstractModel
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

      # 用户信息，包括用户进房时间，退房时间等
      class UserInformation < TencentCloud::Common::AbstractModel
        # @param RoomStr: 房间号
        # @type RoomStr: String
        # @param UserId: 用户Id
        # @type UserId: String
        # @param JoinTs: 用户进房时间
        # @type JoinTs: Integer
        # @param LeaveTs: 用户退房时间，用户没有退房则返回当前时间
        # @type LeaveTs: Integer
        # @param DeviceType: 终端类型
        # @type DeviceType: String
        # @param SdkVersion: Sdk版本号
        # @type SdkVersion: String
        # @param ClientIp: 客户端IP地址
        # @type ClientIp: String
        # @param Finished: 判断用户是否已经离开房间
        # @type Finished: Boolean

        attr_accessor :RoomStr, :UserId, :JoinTs, :LeaveTs, :DeviceType, :SdkVersion, :ClientIp, :Finished

        def initialize(roomstr=nil, userid=nil, joints=nil, leavets=nil, devicetype=nil, sdkversion=nil, clientip=nil, finished=nil)
          @RoomStr = roomstr
          @UserId = userid
          @JoinTs = joints
          @LeaveTs = leavets
          @DeviceType = devicetype
          @SdkVersion = sdkversion
          @ClientIp = clientip
          @Finished = finished
        end

        def deserialize(params)
          @RoomStr = params['RoomStr']
          @UserId = params['UserId']
          @JoinTs = params['JoinTs']
          @LeaveTs = params['LeaveTs']
          @DeviceType = params['DeviceType']
          @SdkVersion = params['SdkVersion']
          @ClientIp = params['ClientIp']
          @Finished = params['Finished']
        end
      end

      # 用户媒体流参数。
      class UserMediaStream < TencentCloud::Common::AbstractModel
        # @param UserInfo: TRTC用户参数。
        # @type UserInfo: :class:`Tencentcloud::Trtc.v20190722.models.MixUserInfo`
        # @param StreamType: 主辅路流类型，0为摄像头，1为屏幕分享，不填默认为0。
        # @type StreamType: Integer

        attr_accessor :UserInfo, :StreamType

        def initialize(userinfo=nil, streamtype=nil)
          @UserInfo = userinfo
          @StreamType = streamtype
        end

        def deserialize(params)
          unless params['UserInfo'].nil?
            @UserInfo = MixUserInfo.new
            @UserInfo.deserialize(params['UserInfo'])
          end
          @StreamType = params['StreamType']
        end
      end

      # 视频编码参数。
      class VideoEncode < TencentCloud::Common::AbstractModel
        # @param Width: 输出流宽，音视频输出时必填。取值范围[0,1920]，单位为像素值。
        # @type Width: Integer
        # @param Height: 输出流高，音视频输出时必填。取值范围[0,1920]，单位为像素值。
        # @type Height: Integer
        # @param Fps: 输出流帧率，音视频输出时必填。取值范围[1,60]，表示混流的输出帧率可选范围为1到60fps。
        # @type Fps: Integer
        # @param BitRate: 输出流码率，音视频输出时必填。取值范围[1,10000]，单位为kbps。
        # @type BitRate: Integer
        # @param Gop: 输出流gop，音视频输出时必填。取值范围[1,5]，单位为秒。
        # @type Gop: Integer

        attr_accessor :Width, :Height, :Fps, :BitRate, :Gop

        def initialize(width=nil, height=nil, fps=nil, bitrate=nil, gop=nil)
          @Width = width
          @Height = height
          @Fps = fps
          @BitRate = bitrate
          @Gop = gop
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
          @BitRate = params['BitRate']
          @Gop = params['Gop']
        end
      end

      # 视频转码参数
      class VideoEncodeParams < TencentCloud::Common::AbstractModel
        # @param Width: 宽。取值范围[0,1920]，单位为像素值。
        # @type Width: Integer
        # @param Height: 高。取值范围[0,1080]，单位为像素值。
        # @type Height: Integer
        # @param Fps: 帧率。取值范围[1,60]，表示帧率可选范围为1到60fps。
        # @type Fps: Integer
        # @param BitRate: 码率。取值范围[1,10000]，单位为kbps。
        # @type BitRate: Integer
        # @param Gop: gop。取值范围[1,2]，单位为秒。
        # @type Gop: Integer

        attr_accessor :Width, :Height, :Fps, :BitRate, :Gop

        def initialize(width=nil, height=nil, fps=nil, bitrate=nil, gop=nil)
          @Width = width
          @Height = height
          @Fps = fps
          @BitRate = bitrate
          @Gop = gop
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
          @BitRate = params['BitRate']
          @Gop = params['Gop']
        end
      end

      # 录制视频转码参数。
      class VideoParams < TencentCloud::Common::AbstractModel
        # @param Width: 视频的宽度值，单位为像素，默认值360。不能超过1920，与height的乘积不能超过1920*1080。
        # @type Width: Integer
        # @param Height: 视频的高度值，单位为像素，默认值640。不能超过1920，与width的乘积不能超过1920*1080。
        # @type Height: Integer
        # @param Fps: 视频的帧率，范围[1, 60]，默认15。
        # @type Fps: Integer
        # @param BitRate: 视频的码率,单位是bps，范围[64000, 8192000]，默认550000bps。
        # @type BitRate: Integer
        # @param Gop: 视频关键帧时间间隔，单位秒，默认值10秒。
        # @type Gop: Integer

        attr_accessor :Width, :Height, :Fps, :BitRate, :Gop

        def initialize(width=nil, height=nil, fps=nil, bitrate=nil, gop=nil)
          @Width = width
          @Height = height
          @Fps = fps
          @BitRate = bitrate
          @Gop = gop
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
          @BitRate = params['BitRate']
          @Gop = params['Gop']
        end
      end

      # TTS的声音参数
      class Voice < TencentCloud::Common::AbstractModel
        # @param VoiceId: TTS的声音的ID
        # @type VoiceId: String

        attr_accessor :VoiceId

        def initialize(voiceid=nil)
          @VoiceId = voiceid
        end

        def deserialize(params)
          @VoiceId = params['VoiceId']
        end
      end

      # VoiceClone请求参数结构体
      class VoiceCloneRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: TRTC的SdkAppId
        # @type SdkAppId: Integer
        # @param APIKey: TTS的API密钥
        # @type APIKey: String
        # @param VoiceName: 声音克隆的名称, 只允许使用数字、字母、下划线，不能超过36位
        # @type VoiceName: String
        # @param PromptAudio: 声音克隆的参考音频，必须为16k单声道的wav的base64字符串， 长度在5秒～12秒之间
        # @type PromptAudio: String
        # @param PromptText: 声音克隆的参考文本，为参考音频对应的文字。
        # @type PromptText: String

        attr_accessor :SdkAppId, :APIKey, :VoiceName, :PromptAudio, :PromptText

        def initialize(sdkappid=nil, apikey=nil, voicename=nil, promptaudio=nil, prompttext=nil)
          @SdkAppId = sdkappid
          @APIKey = apikey
          @VoiceName = voicename
          @PromptAudio = promptaudio
          @PromptText = prompttext
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @APIKey = params['APIKey']
          @VoiceName = params['VoiceName']
          @PromptAudio = params['PromptAudio']
          @PromptText = params['PromptText']
        end
      end

      # VoiceClone返回参数结构体
      class VoiceCloneResponse < TencentCloud::Common::AbstractModel
        # @param VoiceId: 克隆出的音色ID，可以用此id进行语音合成
        # @type VoiceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VoiceId, :RequestId

        def initialize(voiceid=nil, requestid=nil)
          @VoiceId = voiceid
          @RequestId = requestid
        end

        def deserialize(params)
          @VoiceId = params['VoiceId']
          @RequestId = params['RequestId']
        end
      end

      # 声纹配置参数
      class VoicePrint < TencentCloud::Common::AbstractModel
        # @param Mode: 默认为0，表示不启用声纹。1表示启用声纹，此时需要填写voiceprint id。
        # @type Mode: Integer
        # @param IdList: VoicePrint Mode为1时需要填写，目前仅支持填写一个声纹id
        # @type IdList: Array

        attr_accessor :Mode, :IdList

        def initialize(mode=nil, idlist=nil)
          @Mode = mode
          @IdList = idlist
        end

        def deserialize(params)
          @Mode = params['Mode']
          @IdList = params['IdList']
        end
      end

      # 声纹查询数据
      class VoicePrintInfo < TencentCloud::Common::AbstractModel
        # @param VoicePrintId: 声纹ID
        # @type VoicePrintId: String
        # @param AppId: 应用id
        # @type AppId: Integer
        # @param VoicePrintMetaInfo: 和声纹绑定的MetaInfo
        # @type VoicePrintMetaInfo: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 更新时间
        # @type UpdateTime: String
        # @param AudioFormat: 音频格式,当前只有0(代表wav)
        # @type AudioFormat: Integer
        # @param AudioName: 音频名称
        # @type AudioName: String
        # @param ReqTimestamp: 请求毫秒时间戳
        # @type ReqTimestamp: Integer

        attr_accessor :VoicePrintId, :AppId, :VoicePrintMetaInfo, :CreateTime, :UpdateTime, :AudioFormat, :AudioName, :ReqTimestamp

        def initialize(voiceprintid=nil, appid=nil, voiceprintmetainfo=nil, createtime=nil, updatetime=nil, audioformat=nil, audioname=nil, reqtimestamp=nil)
          @VoicePrintId = voiceprintid
          @AppId = appid
          @VoicePrintMetaInfo = voiceprintmetainfo
          @CreateTime = createtime
          @UpdateTime = updatetime
          @AudioFormat = audioformat
          @AudioName = audioname
          @ReqTimestamp = reqtimestamp
        end

        def deserialize(params)
          @VoicePrintId = params['VoicePrintId']
          @AppId = params['AppId']
          @VoicePrintMetaInfo = params['VoicePrintMetaInfo']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @AudioFormat = params['AudioFormat']
          @AudioName = params['AudioName']
          @ReqTimestamp = params['ReqTimestamp']
        end
      end

      # 水印布局参数
      class WaterMark < TencentCloud::Common::AbstractModel
        # @param WaterMarkType: 水印类型，0为图片（默认），1为文字，2为时间戳。
        # @type WaterMarkType: Integer
        # @param WaterMarkImage: 水印为图片时的参数列表，水印为图片时校验必填。
        # @type WaterMarkImage: :class:`Tencentcloud::Trtc.v20190722.models.WaterMarkImage`
        # @param WaterMarkChar: 水印为文字时的参数列表，水印为文字时校验必填。
        # @type WaterMarkChar: :class:`Tencentcloud::Trtc.v20190722.models.WaterMarkChar`
        # @param WaterMarkTimestamp: 水印为时间戳时的参数列表，水印为时间戳时校验必填。
        # @type WaterMarkTimestamp: :class:`Tencentcloud::Trtc.v20190722.models.WaterMarkTimestamp`

        attr_accessor :WaterMarkType, :WaterMarkImage, :WaterMarkChar, :WaterMarkTimestamp

        def initialize(watermarktype=nil, watermarkimage=nil, watermarkchar=nil, watermarktimestamp=nil)
          @WaterMarkType = watermarktype
          @WaterMarkImage = watermarkimage
          @WaterMarkChar = watermarkchar
          @WaterMarkTimestamp = watermarktimestamp
        end

        def deserialize(params)
          @WaterMarkType = params['WaterMarkType']
          unless params['WaterMarkImage'].nil?
            @WaterMarkImage = WaterMarkImage.new
            @WaterMarkImage.deserialize(params['WaterMarkImage'])
          end
          unless params['WaterMarkChar'].nil?
            @WaterMarkChar = WaterMarkChar.new
            @WaterMarkChar.deserialize(params['WaterMarkChar'])
          end
          unless params['WaterMarkTimestamp'].nil?
            @WaterMarkTimestamp = WaterMarkTimestamp.new
            @WaterMarkTimestamp.deserialize(params['WaterMarkTimestamp'])
          end
        end
      end

      # 自定义文字水印数据结构
      class WaterMarkChar < TencentCloud::Common::AbstractModel
        # @param Top: 文字水印的起始坐标Y值，从左上角开始
        # @type Top: Integer
        # @param Left: 文字水印的起始坐标X值，从左上角开始
        # @type Left: Integer
        # @param Width: 文字水印的宽度，单位像素值
        # @type Width: Integer
        # @param Height: 文字水印的高度，单位像素值
        # @type Height: Integer
        # @param Chars: 水印文字的内容
        # @type Chars: String
        # @param FontSize: 水印文字的大小，单位像素，默认14
        # @type FontSize: Integer
        # @param FontColor: 水印文字的颜色，默认白色
        # @type FontColor: String
        # @param BackGroundColor: 水印文字的背景色，为空代表背景透明，默认为空
        # @type BackGroundColor: String
        # @param Font: 文字水印的字体，支持设置以下值：
        # 1. Tencent （默认）
        # 2. SourceHanSans
        # @type Font: String

        attr_accessor :Top, :Left, :Width, :Height, :Chars, :FontSize, :FontColor, :BackGroundColor, :Font

        def initialize(top=nil, left=nil, width=nil, height=nil, chars=nil, fontsize=nil, fontcolor=nil, backgroundcolor=nil, font=nil)
          @Top = top
          @Left = left
          @Width = width
          @Height = height
          @Chars = chars
          @FontSize = fontsize
          @FontColor = fontcolor
          @BackGroundColor = backgroundcolor
          @Font = font
        end

        def deserialize(params)
          @Top = params['Top']
          @Left = params['Left']
          @Width = params['Width']
          @Height = params['Height']
          @Chars = params['Chars']
          @FontSize = params['FontSize']
          @FontColor = params['FontColor']
          @BackGroundColor = params['BackGroundColor']
          @Font = params['Font']
        end
      end

      # 水印类型为图片的参数列表
      class WaterMarkImage < TencentCloud::Common::AbstractModel
        # @param WaterMarkUrl: 下载的url地址， 只支持jpg, png, jpeg，大小限制不超过5M。注意，url必须携带格式后缀，url内只支持特定的字符串, 范围是a-z A-Z 0-9 '-', '.', '_', '~', ':', '/', '?', '#', '[', ']' '@', '!', '&', '(', ')', '*', '+', ',', '%', '='
        # @type WaterMarkUrl: String
        # @param Top: 画布上该画面左上角的 y 轴坐标，取值范围 [0, 2560]，不能超过画布的高。
        # @type Top: Integer
        # @param Left: 画布上该画面左上角的 x 轴坐标，取值范围 [0, 2560]，不能超过画布的宽。
        # @type Left: Integer
        # @param Width: 画布上该画面宽度的相对值，取值范围 [0, 2560]，与Left相加不应超过画布的宽。
        # @type Width: Integer
        # @param Height: 画布上该画面高度的相对值，取值范围 [0, 2560]，与Top相加不应超过画布的高。
        # @type Height: Integer

        attr_accessor :WaterMarkUrl, :Top, :Left, :Width, :Height

        def initialize(watermarkurl=nil, top=nil, left=nil, width=nil, height=nil)
          @WaterMarkUrl = watermarkurl
          @Top = top
          @Left = left
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @WaterMarkUrl = params['WaterMarkUrl']
          @Top = params['Top']
          @Left = params['Left']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # MCU混流水印参数
      class WaterMarkParams < TencentCloud::Common::AbstractModel
        # @param WaterMarkId: 混流-水印图片ID。取值为实时音视频控制台上传的图片ID。
        # @type WaterMarkId: Integer
        # @param WaterMarkWidth: 混流-水印宽。单位为像素值。水印宽+X偏移不能超过整个画布宽。
        # @type WaterMarkWidth: Integer
        # @param WaterMarkHeight: 混流-水印高。单位为像素值。水印高+Y偏移不能超过整个画布高。
        # @type WaterMarkHeight: Integer
        # @param LocationX: 水印在输出时的X偏移。单位为像素值。水印宽+X偏移不能超过整个画布宽。
        # @type LocationX: Integer
        # @param LocationY: 水印在输出时的Y偏移。单位为像素值。水印高+Y偏移不能超过整个画布高。
        # @type LocationY: Integer
        # @param WaterMarkUrl: 混流-水印图片URL地址，支持png、jpg、jpeg、bmp格式，暂不支持透明通道。URL链接长度限制为512字节。WaterMarkUrl和WaterMarkId参数都填时，以WaterMarkUrl为准。图片大小限制不超过2MB。
        # @type WaterMarkUrl: String

        attr_accessor :WaterMarkId, :WaterMarkWidth, :WaterMarkHeight, :LocationX, :LocationY, :WaterMarkUrl

        def initialize(watermarkid=nil, watermarkwidth=nil, watermarkheight=nil, locationx=nil, locationy=nil, watermarkurl=nil)
          @WaterMarkId = watermarkid
          @WaterMarkWidth = watermarkwidth
          @WaterMarkHeight = watermarkheight
          @LocationX = locationx
          @LocationY = locationy
          @WaterMarkUrl = watermarkurl
        end

        def deserialize(params)
          @WaterMarkId = params['WaterMarkId']
          @WaterMarkWidth = params['WaterMarkWidth']
          @WaterMarkHeight = params['WaterMarkHeight']
          @LocationX = params['LocationX']
          @LocationY = params['LocationY']
          @WaterMarkUrl = params['WaterMarkUrl']
        end
      end

      # 时间戳水印数据结构
      class WaterMarkTimestamp < TencentCloud::Common::AbstractModel
        # @param Pos: 时间戳的位置，取值范围0-6，分别代表上左，上右，下左，下右，上居中，下居中，居中
        # @type Pos: Integer
        # @param TimeZone: 显示时间戳的时区，默认东八区
        # @type TimeZone: Integer
        # @param Font: 文字水印的字体，支持设置以下值：
        # 1. Tencent （默认）
        # 2. SourceHanSans
        # @type Font: String

        attr_accessor :Pos, :TimeZone, :Font

        def initialize(pos=nil, timezone=nil, font=nil)
          @Pos = pos
          @TimeZone = timezone
          @Font = font
        end

        def deserialize(params)
          @Pos = params['Pos']
          @TimeZone = params['TimeZone']
          @Font = params['Font']
        end
      end

      # 页面录制控制参数
      class WebRecordVideoParams < TencentCloud::Common::AbstractModel
        # @param Width: 录制画面宽度，默认为1280，取值范围[0, 1920]
        # @type Width: Integer
        # @param Height: 录制画面高度，默认为720，取值范围[0, 1080]
        # @type Height: Integer
        # @param Format: 指定输出格式，可选hls,mp4。存储到云点播VOD时此参数无效，存储到VOD时请通过TencentVod（https://cloud.tencent.com/document/api/647/44055#TencentVod）内的MediaType设置。
        # @type Format: String
        # @param MaxMediaFileDuration: 如果是aac或者mp4文件格式，超过长度限制后，系统会自动拆分视频文件。单位：分钟。默认为1440min（24h），取值范围为1-1440。【单文件限制最大为2G，满足文件大小 >2G 或录制时长度 > 24h任意一个条件，文件都会自动切分】
        # Hls 格式录制此参数不生效。
        # 示例值：1440
        # @type MaxMediaFileDuration: Integer

        attr_accessor :Width, :Height, :Format, :MaxMediaFileDuration

        def initialize(width=nil, height=nil, format=nil, maxmediafileduration=nil)
          @Width = width
          @Height = height
          @Format = format
          @MaxMediaFileDuration = maxmediafileduration
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @Format = params['Format']
          @MaxMediaFileDuration = params['MaxMediaFileDuration']
        end
      end

    end
  end
end

