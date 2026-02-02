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
  module Gme
    module V20180711
      # 年龄语音识别子任务
      class AgeDetectTask < TencentCloud::Common::AbstractModel
        # @param DataId: 数据唯一ID
        # @type DataId: String
        # @param Url: 数据文件的url，为 urlencode 编码,音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg
        # @type Url: String

        attr_accessor :DataId, :Url

        def initialize(dataid=nil, url=nil)
          @DataId = dataid
          @Url = url
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Url = params['Url']
        end
      end

      # 年龄语音任务结果
      class AgeDetectTaskResult < TencentCloud::Common::AbstractModel
        # @param DataId: 数据唯一ID
        # @type DataId: String
        # @param Url: 数据文件的url
        # @type Url: String
        # @param Status: 任务状态，0: 已创建，1:运行中，2:正常结束，3:异常结束，4:运行超时
        # @type Status: Integer
        # @param Age: 任务结果：0: 成年，1:未成年，100:未知
        # @type Age: Integer

        attr_accessor :DataId, :Url, :Status, :Age

        def initialize(dataid=nil, url=nil, status=nil, age=nil)
          @DataId = dataid
          @Url = url
          @Status = status
          @Age = age
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Url = params['Url']
          @Status = params['Status']
          @Age = params['Age']
        end
      end

      # 机器人参数
      class AgentConfig < TencentCloud::Common::AbstractModel
        # @param UserId: 机器人的UserId，用于进房发起任务。【注意】这个UserId不能与当前房间内的主播观众UserId重复。如果一个房间发起多个任务时，机器人的UserId也不能相互重复，否则会中断前一个任务。需要保证机器人UserId在房间内唯一。
        # @type UserId: String
        # @param UserSig: 机器人UserId对应的校验签名，即UserId和UserSig相当于机器人进房的登录密码。
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
        # @type AmbientSound: :class:`Tencentcloud::Gme.v20180711.models.AmbientSound`
        # @param VoicePrint: 声纹配置
        # @type VoicePrint: :class:`Tencentcloud::Gme.v20180711.models.VoicePrint`
        # @param InitLLMMessage: 与WelcomeMessage参数互斥，当该参数有值时，WelcomeMessage将失效。\n在对话开始后把该消息送到大模型来获取欢迎语。
        # @type InitLLMMessage: String
        # @param TurnDetection: 语义断句检测
        # @type TurnDetection: :class:`Tencentcloud::Gme.v20180711.models.TurnDetection`
        # @param SubtitleMode: 机器人字幕显示模式。 - 0表示尽快显示，不会和音频播放进行同步。此时字幕全量下发，后面的字幕会包含前面的字幕。 - 1表示句子级别的实时显示，会和音频播放进行同步，只有当前句子对应的音频播放完后，下一条字幕才会下发。此时字幕增量下发，端上需要把前后的字幕进行拼接才是完整字幕。
        # @type SubtitleMode: Integer

        attr_accessor :UserId, :UserSig, :TargetUserId, :MaxIdleTime, :WelcomeMessage, :InterruptMode, :InterruptSpeechDuration, :TurnDetectionMode, :FilterOneWord, :WelcomeMessagePriority, :FilterBracketsContent, :AmbientSound, :VoicePrint, :InitLLMMessage, :TurnDetection, :SubtitleMode

        def initialize(userid=nil, usersig=nil, targetuserid=nil, maxidletime=nil, welcomemessage=nil, interruptmode=nil, interruptspeechduration=nil, turndetectionmode=nil, filteroneword=nil, welcomemessagepriority=nil, filterbracketscontent=nil, ambientsound=nil, voiceprint=nil, initllmmessage=nil, turndetection=nil, subtitlemode=nil)
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
          @InitLLMMessage = initllmmessage
          @TurnDetection = turndetection
          @SubtitleMode = subtitlemode
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
          @InitLLMMessage = params['InitLLMMessage']
          unless params['TurnDetection'].nil?
            @TurnDetection = TurnDetection.new
            @TurnDetection.deserialize(params['TurnDetection'])
          end
          @SubtitleMode = params['SubtitleMode']
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

      # 应用用量统计数据
      class AppStatisticsItem < TencentCloud::Common::AbstractModel
        # @param RealtimeSpeechStatisticsItem: 实时语音统计数据
        # @type RealtimeSpeechStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.RealTimeSpeechStatisticsItem`
        # @param VoiceMessageStatisticsItem: 语音消息统计数据
        # @type VoiceMessageStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.VoiceMessageStatisticsItem`
        # @param VoiceFilterStatisticsItem: 语音过滤统计数据
        # @type VoiceFilterStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.VoiceFilterStatisticsItem`
        # @param Date: 统计时间
        # @type Date: String
        # @param AudioTextStatisticsItem: 录音转文本用量统计数据
        # @type AudioTextStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.AudioTextStatisticsItem`
        # @param StreamTextStatisticsItem: 流式转文本用量数据
        # @type StreamTextStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.StreamTextStatisticsItem`
        # @param OverseaTextStatisticsItem: 海外转文本用量数据
        # @type OverseaTextStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.OverseaTextStatisticsItem`
        # @param RealtimeTextStatisticsItem: 实时语音转文本用量数据
        # @type RealtimeTextStatisticsItem: :class:`Tencentcloud::Gme.v20180711.models.RealtimeTextStatisticsItem`

        attr_accessor :RealtimeSpeechStatisticsItem, :VoiceMessageStatisticsItem, :VoiceFilterStatisticsItem, :Date, :AudioTextStatisticsItem, :StreamTextStatisticsItem, :OverseaTextStatisticsItem, :RealtimeTextStatisticsItem

        def initialize(realtimespeechstatisticsitem=nil, voicemessagestatisticsitem=nil, voicefilterstatisticsitem=nil, date=nil, audiotextstatisticsitem=nil, streamtextstatisticsitem=nil, overseatextstatisticsitem=nil, realtimetextstatisticsitem=nil)
          @RealtimeSpeechStatisticsItem = realtimespeechstatisticsitem
          @VoiceMessageStatisticsItem = voicemessagestatisticsitem
          @VoiceFilterStatisticsItem = voicefilterstatisticsitem
          @Date = date
          @AudioTextStatisticsItem = audiotextstatisticsitem
          @StreamTextStatisticsItem = streamtextstatisticsitem
          @OverseaTextStatisticsItem = overseatextstatisticsitem
          @RealtimeTextStatisticsItem = realtimetextstatisticsitem
        end

        def deserialize(params)
          unless params['RealtimeSpeechStatisticsItem'].nil?
            @RealtimeSpeechStatisticsItem = RealTimeSpeechStatisticsItem.new
            @RealtimeSpeechStatisticsItem.deserialize(params['RealtimeSpeechStatisticsItem'])
          end
          unless params['VoiceMessageStatisticsItem'].nil?
            @VoiceMessageStatisticsItem = VoiceMessageStatisticsItem.new
            @VoiceMessageStatisticsItem.deserialize(params['VoiceMessageStatisticsItem'])
          end
          unless params['VoiceFilterStatisticsItem'].nil?
            @VoiceFilterStatisticsItem = VoiceFilterStatisticsItem.new
            @VoiceFilterStatisticsItem.deserialize(params['VoiceFilterStatisticsItem'])
          end
          @Date = params['Date']
          unless params['AudioTextStatisticsItem'].nil?
            @AudioTextStatisticsItem = AudioTextStatisticsItem.new
            @AudioTextStatisticsItem.deserialize(params['AudioTextStatisticsItem'])
          end
          unless params['StreamTextStatisticsItem'].nil?
            @StreamTextStatisticsItem = StreamTextStatisticsItem.new
            @StreamTextStatisticsItem.deserialize(params['StreamTextStatisticsItem'])
          end
          unless params['OverseaTextStatisticsItem'].nil?
            @OverseaTextStatisticsItem = OverseaTextStatisticsItem.new
            @OverseaTextStatisticsItem.deserialize(params['OverseaTextStatisticsItem'])
          end
          unless params['RealtimeTextStatisticsItem'].nil?
            @RealtimeTextStatisticsItem = RealtimeTextStatisticsItem.new
            @RealtimeTextStatisticsItem.deserialize(params['RealtimeTextStatisticsItem'])
          end
        end
      end

      # 应用统计数据
      class ApplicationDataStatistics < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param DauDataNum: Dau统计项数目
        # @type DauDataNum: Integer
        # @param DauDataMainland: 大陆地区Dau统计数据，单位人
        # @type DauDataMainland: Array
        # @param DauDataOversea: 海外地区Dau统计数据，单位人
        # @type DauDataOversea: Array
        # @param DauDataSum: 大陆和海外地区Dau统计数据汇总，单位人
        # @type DauDataSum: Array
        # @param DurationDataNum: 实时语音时长统计项数目
        # @type DurationDataNum: Integer
        # @param DurationDataMainland: 大陆地区实时语音时长统计数据，单位分钟
        # @type DurationDataMainland: Array
        # @param DurationDataOversea: 海外地区实时语音时长统计数据，单位分钟
        # @type DurationDataOversea: Array
        # @param DurationDataSum: 大陆和海外地区实时语音时长统计数据汇总，单位分钟
        # @type DurationDataSum: Array
        # @param PcuDataNum: Pcu统计项数目
        # @type PcuDataNum: Integer
        # @param PcuDataMainland: 大陆地区Pcu统计数据，单位人
        # @type PcuDataMainland: Array
        # @param PcuDataOversea: 海外地区Pcu统计数据，单位人
        # @type PcuDataOversea: Array
        # @param PcuDataSum: 大陆和海外地区Pcu统计数据汇总，单位人
        # @type PcuDataSum: Array
        # @param MiniGameDataNum: 小游戏时长统计项数目
        # @type MiniGameDataNum: Integer
        # @param MiniGameDataMainland: 大陆地区小游戏时长统计数据，单位分钟
        # @type MiniGameDataMainland: Array
        # @param MiniGameDataOversea: 海外地区小游戏时长统计数据，单位分钟
        # @type MiniGameDataOversea: Array
        # @param MiniGameDataSum: 大陆和海外地区小游戏时长统计数据汇总，单位分钟
        # @type MiniGameDataSum: Array

        attr_accessor :BizId, :DauDataNum, :DauDataMainland, :DauDataOversea, :DauDataSum, :DurationDataNum, :DurationDataMainland, :DurationDataOversea, :DurationDataSum, :PcuDataNum, :PcuDataMainland, :PcuDataOversea, :PcuDataSum, :MiniGameDataNum, :MiniGameDataMainland, :MiniGameDataOversea, :MiniGameDataSum

        def initialize(bizid=nil, daudatanum=nil, daudatamainland=nil, daudataoversea=nil, daudatasum=nil, durationdatanum=nil, durationdatamainland=nil, durationdataoversea=nil, durationdatasum=nil, pcudatanum=nil, pcudatamainland=nil, pcudataoversea=nil, pcudatasum=nil, minigamedatanum=nil, minigamedatamainland=nil, minigamedataoversea=nil, minigamedatasum=nil)
          @BizId = bizid
          @DauDataNum = daudatanum
          @DauDataMainland = daudatamainland
          @DauDataOversea = daudataoversea
          @DauDataSum = daudatasum
          @DurationDataNum = durationdatanum
          @DurationDataMainland = durationdatamainland
          @DurationDataOversea = durationdataoversea
          @DurationDataSum = durationdatasum
          @PcuDataNum = pcudatanum
          @PcuDataMainland = pcudatamainland
          @PcuDataOversea = pcudataoversea
          @PcuDataSum = pcudatasum
          @MiniGameDataNum = minigamedatanum
          @MiniGameDataMainland = minigamedatamainland
          @MiniGameDataOversea = minigamedataoversea
          @MiniGameDataSum = minigamedatasum
        end

        def deserialize(params)
          @BizId = params['BizId']
          @DauDataNum = params['DauDataNum']
          unless params['DauDataMainland'].nil?
            @DauDataMainland = []
            params['DauDataMainland'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DauDataMainland << statisticsitem_tmp
            end
          end
          unless params['DauDataOversea'].nil?
            @DauDataOversea = []
            params['DauDataOversea'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DauDataOversea << statisticsitem_tmp
            end
          end
          unless params['DauDataSum'].nil?
            @DauDataSum = []
            params['DauDataSum'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DauDataSum << statisticsitem_tmp
            end
          end
          @DurationDataNum = params['DurationDataNum']
          unless params['DurationDataMainland'].nil?
            @DurationDataMainland = []
            params['DurationDataMainland'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DurationDataMainland << statisticsitem_tmp
            end
          end
          unless params['DurationDataOversea'].nil?
            @DurationDataOversea = []
            params['DurationDataOversea'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DurationDataOversea << statisticsitem_tmp
            end
          end
          unless params['DurationDataSum'].nil?
            @DurationDataSum = []
            params['DurationDataSum'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @DurationDataSum << statisticsitem_tmp
            end
          end
          @PcuDataNum = params['PcuDataNum']
          unless params['PcuDataMainland'].nil?
            @PcuDataMainland = []
            params['PcuDataMainland'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @PcuDataMainland << statisticsitem_tmp
            end
          end
          unless params['PcuDataOversea'].nil?
            @PcuDataOversea = []
            params['PcuDataOversea'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @PcuDataOversea << statisticsitem_tmp
            end
          end
          unless params['PcuDataSum'].nil?
            @PcuDataSum = []
            params['PcuDataSum'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @PcuDataSum << statisticsitem_tmp
            end
          end
          @MiniGameDataNum = params['MiniGameDataNum']
          unless params['MiniGameDataMainland'].nil?
            @MiniGameDataMainland = []
            params['MiniGameDataMainland'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @MiniGameDataMainland << statisticsitem_tmp
            end
          end
          unless params['MiniGameDataOversea'].nil?
            @MiniGameDataOversea = []
            params['MiniGameDataOversea'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @MiniGameDataOversea << statisticsitem_tmp
            end
          end
          unless params['MiniGameDataSum'].nil?
            @MiniGameDataSum = []
            params['MiniGameDataSum'].each do |i|
              statisticsitem_tmp = StatisticsItem.new
              statisticsitem_tmp.deserialize(i)
              @MiniGameDataSum << statisticsitem_tmp
            end
          end
        end
      end

      # 获取应用列表返回
      class ApplicationList < TencentCloud::Common::AbstractModel
        # @param ServiceConf: 服务开关状态
        # @type ServiceConf: :class:`Tencentcloud::Gme.v20180711.models.ServiceStatus`
        # @param BizId: 应用ID(AppID)
        # @type BizId: Integer
        # @param AppName: 应用名称
        # @type AppName: String
        # @param ProjectId: 项目ID，默认为0
        # @type ProjectId: Integer
        # @param AppStatus: 应用状态，返回0表示正常，1表示关闭，2表示欠费停服，3表示欠费回收
        # @type AppStatus: Integer
        # @param CreateTime: 创建时间，Unix时间戳格式
        # @type CreateTime: Integer
        # @param AppType: 应用类型，无需关注此数值
        # @type AppType: Integer

        attr_accessor :ServiceConf, :BizId, :AppName, :ProjectId, :AppStatus, :CreateTime, :AppType

        def initialize(serviceconf=nil, bizid=nil, appname=nil, projectid=nil, appstatus=nil, createtime=nil, apptype=nil)
          @ServiceConf = serviceconf
          @BizId = bizid
          @AppName = appname
          @ProjectId = projectid
          @AppStatus = appstatus
          @CreateTime = createtime
          @AppType = apptype
        end

        def deserialize(params)
          unless params['ServiceConf'].nil?
            @ServiceConf = ServiceStatus.new
            @ServiceConf.deserialize(params['ServiceConf'])
          end
          @BizId = params['BizId']
          @AppName = params['AppName']
          @ProjectId = params['ProjectId']
          @AppStatus = params['AppStatus']
          @CreateTime = params['CreateTime']
          @AppType = params['AppType']
        end
      end

      # 语音转文本配置数据
      class AsrConf < TencentCloud::Common::AbstractModel
        # @param Status: 语音转文本服务开关，取值：open/close
        # @type Status: String

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
        end
      end

      # 录音转文本用量统计数据
      class AudioTextStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Data: 统计值，单位：秒
        # @type Data: Float

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # 审核结果明细（对外）
      class AuditResultDetailExternal < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param RoomId: 房间 ID
        # @type RoomId: String
        # @param OpenId: UserID
        # @type OpenId: String
        # @param Label: 标签
        # @type Label: String
        # @param Rate: 恶意分数
        # @type Rate: Float
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param Url: 音频 Url
        # @type Url: String
        # @param FileId: 文件Id
        # @type FileId: String
        # @param Info: ASR结果
        # @type Info: String

        attr_accessor :TaskId, :RoomId, :OpenId, :Label, :Rate, :CreateTime, :Url, :FileId, :Info

        def initialize(taskid=nil, roomid=nil, openid=nil, label=nil, rate=nil, createtime=nil, url=nil, fileid=nil, info=nil)
          @TaskId = taskid
          @RoomId = roomid
          @OpenId = openid
          @Label = label
          @Rate = rate
          @CreateTime = createtime
          @Url = url
          @FileId = fileid
          @Info = info
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RoomId = params['RoomId']
          @OpenId = params['OpenId']
          @Label = params['Label']
          @Rate = params['Rate']
          @CreateTime = params['CreateTime']
          @Url = params['Url']
          @FileId = params['FileId']
          @Info = params['Info']
        end
      end

      # ControlAIConversation请求参数结构体
      class ControlAIConversationRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务唯一标识
        # @type TaskId: String
        # @param Command: 控制命令，目前支持命令如下：- ServerPushText，服务端发送文本给AI机器人，AI机器人会播报该文本. - InvokeLLM，服务端发送文本给大模型，触发对话
        # @type Command: String
        # @param ServerPushText: 服务端发送播报文本命令，当Command为ServerPushText时必填
        # @type ServerPushText: :class:`Tencentcloud::Gme.v20180711.models.ServerPushText`
        # @param InvokeLLM: 服务端发送命令主动请求大模型,当Command为InvokeLLM时会把content请求到大模型,头部增加X-Invoke-LLM="1"
        # @type InvokeLLM: :class:`Tencentcloud::Gme.v20180711.models.InvokeLLM`

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

      # CreateAgeDetectTask请求参数结构体
      class CreateAgeDetectTaskRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用id
        # @type BizId: Integer
        # @param Tasks: 语音检测子任务列表，列表最多支持100个检测子任务。结构体中包含：
        # <li>DataId：数据的唯一ID</li>
        # <li>Url：数据文件的url，为 urlencode 编码，流式则为拉流地址</li>
        # @type Tasks: Array
        # @param Callback: 任务结束时gme后台会自动触发回调
        # @type Callback: String

        attr_accessor :BizId, :Tasks, :Callback

        def initialize(bizid=nil, tasks=nil, callback=nil)
          @BizId = bizid
          @Tasks = tasks
          @Callback = callback
        end

        def deserialize(params)
          @BizId = params['BizId']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              agedetecttask_tmp = AgeDetectTask.new
              agedetecttask_tmp.deserialize(i)
              @Tasks << agedetecttask_tmp
            end
          end
          @Callback = params['Callback']
        end
      end

      # CreateAgeDetectTask返回参数结构体
      class CreateAgeDetectTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 本次任务提交后唯一id，用于获取任务运行结果
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

      # CreateApp请求参数结构体
      class CreateAppRequest < TencentCloud::Common::AbstractModel
        # @param AppName: 应用名称
        # @type AppName: String
        # @param ProjectId: 腾讯云项目ID，默认为0，表示默认项目
        # @type ProjectId: Integer
        # @param EngineList: 需要支持的引擎列表，默认全选。
        # 取值：android/ios/unity/cocos/unreal/windows
        # @type EngineList: Array
        # @param RegionList: 服务区域列表，默认全选。
        # 取值：mainland-大陆地区，hmt-港澳台，sea-东南亚，na-北美，eu-欧洲，jpkr-日韩亚太，sa-南美，oc-澳洲，me-中东
        # @type RegionList: Array
        # @param RealtimeSpeechConf: 实时语音服务配置数据
        # @type RealtimeSpeechConf: :class:`Tencentcloud::Gme.v20180711.models.RealtimeSpeechConf`
        # @param VoiceMessageConf: 语音消息服务配置数据
        # @type VoiceMessageConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceMessageConf`
        # @param VoiceFilterConf: 语音分析服务配置数据
        # @type VoiceFilterConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceFilterConf`
        # @param AsrConf: 语音转文本配置数据
        # @type AsrConf: :class:`Tencentcloud::Gme.v20180711.models.AsrConf`
        # @param Tags: 需要添加的标签列表
        # @type Tags: Array

        attr_accessor :AppName, :ProjectId, :EngineList, :RegionList, :RealtimeSpeechConf, :VoiceMessageConf, :VoiceFilterConf, :AsrConf, :Tags

        def initialize(appname=nil, projectid=nil, enginelist=nil, regionlist=nil, realtimespeechconf=nil, voicemessageconf=nil, voicefilterconf=nil, asrconf=nil, tags=nil)
          @AppName = appname
          @ProjectId = projectid
          @EngineList = enginelist
          @RegionList = regionlist
          @RealtimeSpeechConf = realtimespeechconf
          @VoiceMessageConf = voicemessageconf
          @VoiceFilterConf = voicefilterconf
          @AsrConf = asrconf
          @Tags = tags
        end

        def deserialize(params)
          @AppName = params['AppName']
          @ProjectId = params['ProjectId']
          @EngineList = params['EngineList']
          @RegionList = params['RegionList']
          unless params['RealtimeSpeechConf'].nil?
            @RealtimeSpeechConf = RealtimeSpeechConf.new
            @RealtimeSpeechConf.deserialize(params['RealtimeSpeechConf'])
          end
          unless params['VoiceMessageConf'].nil?
            @VoiceMessageConf = VoiceMessageConf.new
            @VoiceMessageConf.deserialize(params['VoiceMessageConf'])
          end
          unless params['VoiceFilterConf'].nil?
            @VoiceFilterConf = VoiceFilterConf.new
            @VoiceFilterConf.deserialize(params['VoiceFilterConf'])
          end
          unless params['AsrConf'].nil?
            @AsrConf = AsrConf.new
            @AsrConf.deserialize(params['AsrConf'])
          end
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateApp的输出参数
      class CreateAppResp < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，由后台自动生成。
        # @type BizId: Integer
        # @param AppName: 应用名称，透传输入参数的AppName
        # @type AppName: String
        # @param ProjectId: 项目ID，透传输入的ProjectId
        # @type ProjectId: Integer
        # @param SecretKey: 应用密钥，GME SDK初始化时使用
        # @type SecretKey: String
        # @param CreateTime: 服务创建时间戳
        # @type CreateTime: Integer
        # @param RealtimeSpeechConf: 实时语音服务配置数据
        # @type RealtimeSpeechConf: :class:`Tencentcloud::Gme.v20180711.models.RealtimeSpeechConf`
        # @param VoiceMessageConf: 语音消息服务配置数据
        # @type VoiceMessageConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceMessageConf`
        # @param VoiceFilterConf: 语音分析服务配置数据
        # @type VoiceFilterConf: :class:`Tencentcloud::Gme.v20180711.models.VoiceFilterConf`
        # @param AsrConf: 语音转文本服务配置数据
        # @type AsrConf: :class:`Tencentcloud::Gme.v20180711.models.AsrConf`

        attr_accessor :BizId, :AppName, :ProjectId, :SecretKey, :CreateTime, :RealtimeSpeechConf, :VoiceMessageConf, :VoiceFilterConf, :AsrConf

        def initialize(bizid=nil, appname=nil, projectid=nil, secretkey=nil, createtime=nil, realtimespeechconf=nil, voicemessageconf=nil, voicefilterconf=nil, asrconf=nil)
          @BizId = bizid
          @AppName = appname
          @ProjectId = projectid
          @SecretKey = secretkey
          @CreateTime = createtime
          @RealtimeSpeechConf = realtimespeechconf
          @VoiceMessageConf = voicemessageconf
          @VoiceFilterConf = voicefilterconf
          @AsrConf = asrconf
        end

        def deserialize(params)
          @BizId = params['BizId']
          @AppName = params['AppName']
          @ProjectId = params['ProjectId']
          @SecretKey = params['SecretKey']
          @CreateTime = params['CreateTime']
          unless params['RealtimeSpeechConf'].nil?
            @RealtimeSpeechConf = RealtimeSpeechConf.new
            @RealtimeSpeechConf.deserialize(params['RealtimeSpeechConf'])
          end
          unless params['VoiceMessageConf'].nil?
            @VoiceMessageConf = VoiceMessageConf.new
            @VoiceMessageConf.deserialize(params['VoiceMessageConf'])
          end
          unless params['VoiceFilterConf'].nil?
            @VoiceFilterConf = VoiceFilterConf.new
            @VoiceFilterConf.deserialize(params['VoiceFilterConf'])
          end
          unless params['AsrConf'].nil?
            @AsrConf = AsrConf.new
            @AsrConf.deserialize(params['AsrConf'])
          end
        end
      end

      # CreateApp返回参数结构体
      class CreateAppResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建应用返回数据
        # @type Data: :class:`Tencentcloud::Gme.v20180711.models.CreateAppResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateAppResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCustomization请求参数结构体
      class CreateCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer
        # @param TextUrl: 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        # @type TextUrl: String
        # @param ModelName: 模型名称，名称长度不超过36，默认为BizId。
        # @type ModelName: String

        attr_accessor :BizId, :TextUrl, :ModelName

        def initialize(bizid=nil, texturl=nil, modelname=nil)
          @BizId = bizid
          @TextUrl = texturl
          @ModelName = modelname
        end

        def deserialize(params)
          @BizId = params['BizId']
          @TextUrl = params['TextUrl']
          @ModelName = params['ModelName']
        end
      end

      # CreateCustomization返回参数结构体
      class CreateCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :RequestId

        def initialize(modelid=nil, requestid=nil)
          @ModelId = modelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @RequestId = params['RequestId']
        end
      end

      # CreateScanUser请求参数结构体
      class CreateScanUserRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，登录控制台 - 服务管理创建应用得到的AppID
        # @type BizId: Integer
        # @param UserId: 需要新增送检的用户号。示例：1234
        # (若UserId不填，则UserIdString必填；两者选其一；两者都填以UserIdString为准)
        # @type UserId: Integer
        # @param UserIdString: 需要新增送检的用户号，长度不超过1024字符。示例："1234"(若UserIdString不填，则UserId必填；两者选其一；两者都填以UserIdString为准)
        # @type UserIdString: String
        # @param ExpirationTime: 当前用户送检过期时间，单位：秒。
        # 若参数不为0，则在过期时间之后，用户不会被送检。
        # 若参数为0，则送检配置不会自动失效。
        # @type ExpirationTime: Integer

        attr_accessor :BizId, :UserId, :UserIdString, :ExpirationTime

        def initialize(bizid=nil, userid=nil, useridstring=nil, expirationtime=nil)
          @BizId = bizid
          @UserId = userid
          @UserIdString = useridstring
          @ExpirationTime = expirationtime
        end

        def deserialize(params)
          @BizId = params['BizId']
          @UserId = params['UserId']
          @UserIdString = params['UserIdString']
          @ExpirationTime = params['ExpirationTime']
        end
      end

      # CreateScanUser返回参数结构体
      class CreateScanUserResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # 语音消息转文本热句模型配置
      class CustomizationConfigs < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ModelState: 模型状态，-1下线状态，1上线状态, 0训练中, -2训练失败, 3上线中, 4下线中
        # @type ModelState: Integer
        # @param ModelName: 模型名称
        # @type ModelName: String
        # @param TextUrl: 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        # @type TextUrl: String
        # @param UpdateTime: 更新时间，11位时间戳
        # @type UpdateTime: Integer

        attr_accessor :BizId, :ModelId, :ModelState, :ModelName, :TextUrl, :UpdateTime

        def initialize(bizid=nil, modelid=nil, modelstate=nil, modelname=nil, texturl=nil, updatetime=nil)
          @BizId = bizid
          @ModelId = modelid
          @ModelState = modelstate
          @ModelName = modelname
          @TextUrl = texturl
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @BizId = params['BizId']
          @ModelId = params['ModelId']
          @ModelState = params['ModelState']
          @ModelName = params['ModelName']
          @TextUrl = params['TextUrl']
          @UpdateTime = params['UpdateTime']
        end
      end

      # DeleteCustomization请求参数结构体
      class DeleteCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 删除的模型ID
        # @type ModelId: String
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer

        attr_accessor :ModelId, :BizId

        def initialize(modelid=nil, bizid=nil)
          @ModelId = modelid
          @BizId = bizid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @BizId = params['BizId']
        end
      end

      # DeleteCustomization返回参数结构体
      class DeleteCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回值。0为成功，非0为失败。
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # 剔除房间操作结果
      class DeleteResult < TencentCloud::Common::AbstractModel
        # @param Code: 错误码，0-剔除成功 其他-剔除失败
        # @type Code: Integer
        # @param ErrorMsg: 错误描述
        # @type ErrorMsg: String

        attr_accessor :Code, :ErrorMsg

        def initialize(code=nil, errormsg=nil)
          @Code = code
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @Code = params['Code']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # DeleteRoomMember请求参数结构体
      class DeleteRoomMemberRequest < TencentCloud::Common::AbstractModel
        # @param RoomId: <p>要操作的房间id</p>
        # @type RoomId: String
        # @param DeleteType: <p>剔除类型 1-删除房间 2-剔除用户</p>
        # @type DeleteType: Integer
        # @param BizId: <p>应用id</p>
        # @type BizId: Integer
        # @param Uids: <p>要剔除的用户列表（整型）</p>
        # @type Uids: Array
        # @param StrUids: <p>要剔除的用户列表（字符串类型）</p>
        # @type StrUids: Array

        attr_accessor :RoomId, :DeleteType, :BizId, :Uids, :StrUids

        def initialize(roomid=nil, deletetype=nil, bizid=nil, uids=nil, struids=nil)
          @RoomId = roomid
          @DeleteType = deletetype
          @BizId = bizid
          @Uids = uids
          @StrUids = struids
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @DeleteType = params['DeleteType']
          @BizId = params['BizId']
          @Uids = params['Uids']
          @StrUids = params['StrUids']
        end
      end

      # DeleteRoomMember返回参数结构体
      class DeleteRoomMemberResponse < TencentCloud::Common::AbstractModel
        # @param DeleteResult: <p>剔除房间或成员的操作结果</p>
        # @type DeleteResult: :class:`Tencentcloud::Gme.v20180711.models.DeleteResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteResult, :RequestId

        def initialize(deleteresult=nil, requestid=nil)
          @DeleteResult = deleteresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeleteResult'].nil?
            @DeleteResult = DeleteResult.new
            @DeleteResult.deserialize(params['DeleteResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeleteScanUser请求参数结构体
      class DeleteScanUserRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，登录控制台 - 服务管理创建应用得到的AppID
        # @type BizId: Integer
        # @param UserId: 需要删除送检的用户号。示例：1234
        # (若UserId不填，则UserIdString必填；两者选其一；两者都填以UserIdString为准)
        # @type UserId: Integer
        # @param UserIdString: 需要删除送检的用户号，长度不超过1024字符。示例："1234"(若UserIdString不填，则UserId必填；两者选其一；两者都填以UserIdString为准)
        # @type UserIdString: String

        attr_accessor :BizId, :UserId, :UserIdString

        def initialize(bizid=nil, userid=nil, useridstring=nil)
          @BizId = bizid
          @UserId = userid
          @UserIdString = useridstring
        end

        def deserialize(params)
          @BizId = params['BizId']
          @UserId = params['UserId']
          @UserIdString = params['UserIdString']
        end
      end

      # DeleteScanUser返回参数结构体
      class DeleteScanUserResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
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
        # @param SdkAppId: GME的SdkAppId，和开启转录任务的房间使用的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param TaskId: 唯一标识一次任务。
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

      # DescribeAIConversation返回参数结构体
      class DescribeAIConversationResponse < TencentCloud::Common::AbstractModel
        # @param StartTime: 任务开始时间。
        # @type StartTime: String
        # @param Status: 任务状态。有4个值：1、Idle表示任务未开始2、Preparing表示任务准备中3、InProgress表示任务正在运行4、Stopped表示任务已停止，正在清理资源中
        # @type Status: String
        # @param TaskId: 唯一标识一次任务。
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

      # DescribeAgeDetectTask请求参数结构体
      class DescribeAgeDetectTaskRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用id
        # @type BizId: Integer
        # @param TaskId: [创建年龄语音识别任务](https://cloud.tencent.com/document/product/607/60620)时返回的taskid
        # @type TaskId: String

        attr_accessor :BizId, :TaskId

        def initialize(bizid=nil, taskid=nil)
          @BizId = bizid
          @TaskId = taskid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeAgeDetectTask返回参数结构体
      class DescribeAgeDetectTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param Results: 语音检测返回。Results 字段是 JSON 数组，每一个元素包含：
        # DataId： 请求中对应的 DataId。
        # Url ：该请求中对应的 Url。
        # Status ：子任务状态，0:已创建，1:运行中，2:已完成，3:任务异常，4:任务超时。
        # Age ：子任务完成后的结果，0:成年人，1:未成年人，100:未知结果。
        # @type Results: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :Results, :RequestId

        def initialize(taskid=nil, results=nil, requestid=nil)
          @TaskId = taskid
          @Results = results
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              agedetecttaskresult_tmp = AgeDetectTaskResult.new
              agedetecttaskresult_tmp.deserialize(i)
              @Results << agedetecttaskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAppStatistics请求参数结构体
      class DescribeAppStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param BizId: <p>GME应用ID</p>
        # @type BizId: Integer
        # @param StartDate: <p>数据开始时间，东八区时间，格式: 年-月-日，如: 2018-07-13</p>
        # @type StartDate: String
        # @param EndDate: <p>数据结束时间，东八区时间，格式: 年-月-日，如: 2018-07-13</p>
        # @type EndDate: String
        # @param Services: <p>要查询的服务列表，取值：RealTimeSpeech/VoiceMessage/VoiceFilter/SpeechToText</p>
        # @type Services: Array

        attr_accessor :BizId, :StartDate, :EndDate, :Services

        def initialize(bizid=nil, startdate=nil, enddate=nil, services=nil)
          @BizId = bizid
          @StartDate = startdate
          @EndDate = enddate
          @Services = services
        end

        def deserialize(params)
          @BizId = params['BizId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
          @Services = params['Services']
        end
      end

      # 获取应用用量统计数据输出参数
      class DescribeAppStatisticsResp < TencentCloud::Common::AbstractModel
        # @param AppStatistics: 应用用量统计数据
        # @type AppStatistics: Array

        attr_accessor :AppStatistics

        def initialize(appstatistics=nil)
          @AppStatistics = appstatistics
        end

        def deserialize(params)
          unless params['AppStatistics'].nil?
            @AppStatistics = []
            params['AppStatistics'].each do |i|
              appstatisticsitem_tmp = AppStatisticsItem.new
              appstatisticsitem_tmp.deserialize(i)
              @AppStatistics << appstatisticsitem_tmp
            end
          end
        end
      end

      # DescribeAppStatistics返回参数结构体
      class DescribeAppStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>应用用量统计数据</p>
        # @type Data: :class:`Tencentcloud::Gme.v20180711.models.DescribeAppStatisticsResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeAppStatisticsResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationData请求参数结构体
      class DescribeApplicationDataRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param StartDate: 数据开始时间，格式为 年-月-日，如: 2018-07-13
        # @type StartDate: String
        # @param EndDate: 数据结束时间，格式为 年-月-日，如: 2018-07-13
        # @type EndDate: String

        attr_accessor :BizId, :StartDate, :EndDate

        def initialize(bizid=nil, startdate=nil, enddate=nil)
          @BizId = bizid
          @StartDate = startdate
          @EndDate = enddate
        end

        def deserialize(params)
          @BizId = params['BizId']
          @StartDate = params['StartDate']
          @EndDate = params['EndDate']
        end
      end

      # DescribeApplicationData返回参数结构体
      class DescribeApplicationDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 应用统计数据
        # @type Data: :class:`Tencentcloud::Gme.v20180711.models.ApplicationDataStatistics`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ApplicationDataStatistics.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationList请求参数结构体
      class DescribeApplicationListRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID，0表示默认项目，-1表示所有项目，如果需要查找具体项目下的应用列表，请填入具体项目ID，项目ID在项目管理中查看 https://console.cloud.tencent.com/project
        # @type ProjectId: Integer
        # @param PageNo: 页码ID，0表示第一页，以此后推。默认填0
        # @type PageNo: Integer
        # @param PageSize: 每页展示应用数量。默认填200
        # @type PageSize: Integer
        # @param SearchText: 所查找应用名称的关键字，支持模糊匹配查找。空串表示查询所有应用
        # @type SearchText: String
        # @param TagSet: 标签列表
        # @type TagSet: Array
        # @param Filters: 查找过滤关键字列表
        # @type Filters: Array

        attr_accessor :ProjectId, :PageNo, :PageSize, :SearchText, :TagSet, :Filters

        def initialize(projectid=nil, pageno=nil, pagesize=nil, searchtext=nil, tagset=nil, filters=nil)
          @ProjectId = projectid
          @PageNo = pageno
          @PageSize = pagesize
          @SearchText = searchtext
          @TagSet = tagset
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @SearchText = params['SearchText']
          unless params['TagSet'].nil?
            @TagSet = []
            params['TagSet'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @TagSet << tag_tmp
            end
          end
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeApplicationList返回参数结构体
      class DescribeApplicationListResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationList: 获取应用列表返回
        # @type ApplicationList: Array
        # @param Total: 应用总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationList, :Total, :RequestId

        def initialize(applicationlist=nil, total=nil, requestid=nil)
          @ApplicationList = applicationlist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplicationList'].nil?
            @ApplicationList = []
            params['ApplicationList'].each do |i|
              applicationlist_tmp = ApplicationList.new
              applicationlist_tmp.deserialize(i)
              @ApplicationList << applicationlist_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuditResultExternal请求参数结构体
      class DescribeAuditResultExternalRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID
        # @type BizId: Integer
        # @param PageNo: 页数  取值范围：>=1
        # @type PageNo: Integer
        # @param PageSize: 每页大小
        # @type PageSize: Integer
        # @param BeginTime: 起始时间戳（秒）
        # @type BeginTime: Integer
        # @param EndTime: 截止时间戳（秒）
        # @type EndTime: Integer
        # @param MinRate: 最小恶意分数
        # @type MinRate: Integer
        # @param MaxRate: 最大恶意分数
        # @type MaxRate: Integer
        # @param OpenId: UserID
        # @type OpenId: String
        # @param Label: 恶意分类
        # @type Label: String
        # @param RoomId: 房间 ID
        # @type RoomId: String

        attr_accessor :BizId, :PageNo, :PageSize, :BeginTime, :EndTime, :MinRate, :MaxRate, :OpenId, :Label, :RoomId

        def initialize(bizid=nil, pageno=nil, pagesize=nil, begintime=nil, endtime=nil, minrate=nil, maxrate=nil, openid=nil, label=nil, roomid=nil)
          @BizId = bizid
          @PageNo = pageno
          @PageSize = pagesize
          @BeginTime = begintime
          @EndTime = endtime
          @MinRate = minrate
          @MaxRate = maxrate
          @OpenId = openid
          @Label = label
          @RoomId = roomid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @PageNo = params['PageNo']
          @PageSize = params['PageSize']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @MinRate = params['MinRate']
          @MaxRate = params['MaxRate']
          @OpenId = params['OpenId']
          @Label = params['Label']
          @RoomId = params['RoomId']
        end
      end

      # DescribeAuditResultExternal返回参数结构体
      class DescribeAuditResultExternalResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param Data: 明细列表
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
              auditresultdetailexternal_tmp = AuditResultDetailExternal.new
              auditresultdetailexternal_tmp.deserialize(i)
              @Data << auditresultdetailexternal_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealtimeScanConfig请求参数结构体
      class DescribeRealtimeScanConfigRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID。
        # @type BizId: Integer

        attr_accessor :BizId

        def initialize(bizid=nil)
          @BizId = bizid
        end

        def deserialize(params)
          @BizId = params['BizId']
        end
      end

      # DescribeRealtimeScanConfig返回参数结构体
      class DescribeRealtimeScanConfigResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码，0正常，非0失败
        # @type ErrorCode: Integer
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param AuditType: 送检类型，0: 全量送审，1: 自定义送审
        # @type AuditType: Integer
        # @param UserIdRegex: 用户号正则表达式。
        # 符合此正则表达式规则的用户号将被送检。示例：^6.*（表示所有以6开头的用户号将被送检）
        # @type UserIdRegex: Array
        # @param RoomIdRegex: 房间号正则表达式。
        # 符合此正则表达式规则的房间号将被送检。示例：^6.*（表示所有以6开头的房间号将被送检）
        # @type RoomIdRegex: Array
        # @param UserIdString: 用户号字符串，逗号分隔，示例："0001,0002,0003"
        # @type UserIdString: String
        # @param RoomIdString: 房间号字符串，逗号分隔，示例："0001,0002,0003"
        # @type RoomIdString: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :BizId, :AuditType, :UserIdRegex, :RoomIdRegex, :UserIdString, :RoomIdString, :RequestId

        def initialize(errorcode=nil, bizid=nil, audittype=nil, useridregex=nil, roomidregex=nil, useridstring=nil, roomidstring=nil, requestid=nil)
          @ErrorCode = errorcode
          @BizId = bizid
          @AuditType = audittype
          @UserIdRegex = useridregex
          @RoomIdRegex = roomidregex
          @UserIdString = useridstring
          @RoomIdString = roomidstring
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @BizId = params['BizId']
          @AuditType = params['AuditType']
          @UserIdRegex = params['UserIdRegex']
          @RoomIdRegex = params['RoomIdRegex']
          @UserIdString = params['UserIdString']
          @RoomIdString = params['RoomIdString']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRecordInfo请求参数结构体
      class DescribeRecordInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 进行中的任务taskid（StartRecord接口返回）。
        # @type TaskId: Integer
        # @param BizId: 应用ID。
        # @type BizId: Integer

        attr_accessor :TaskId, :BizId

        def initialize(taskid=nil, bizid=nil)
          @TaskId = taskid
          @BizId = bizid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @BizId = params['BizId']
        end
      end

      # DescribeRecordInfo返回参数结构体
      class DescribeRecordInfoResponse < TencentCloud::Common::AbstractModel
        # @param RecordInfo: 录制信息。
        # @type RecordInfo: Array
        # @param RecordMode: 录制类型：1代表单流 2代表混流 3代表单流和混流。
        # @type RecordMode: Integer
        # @param RoomId: 房间ID。
        # @type RoomId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordInfo, :RecordMode, :RoomId, :RequestId

        def initialize(recordinfo=nil, recordmode=nil, roomid=nil, requestid=nil)
          @RecordInfo = recordinfo
          @RecordMode = recordmode
          @RoomId = roomid
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RecordInfo'].nil?
            @RecordInfo = []
            params['RecordInfo'].each do |i|
              recordinfo_tmp = RecordInfo.new
              recordinfo_tmp.deserialize(i)
              @RecordInfo << recordinfo_tmp
            end
          end
          @RecordMode = params['RecordMode']
          @RoomId = params['RoomId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRoomInfo请求参数结构体
      class DescribeRoomInfoRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: <p>应用ID，登录<a href="https://console.cloud.tencent.com/gamegme">控制台 - 服务管理</a>创建应用得到的AppID</p>
        # @type SdkAppId: Integer
        # @param RoomIds: <p>房间号列表，最大不能超过10个（RoomIds、StrRoomIds必须填一个）</p>
        # @type RoomIds: Array
        # @param StrRoomIds: <p>字符串类型房间号列表，最大不能超过10个（RoomIds、StrRoomIds必须填一个）</p>
        # @type StrRoomIds: Array

        attr_accessor :SdkAppId, :RoomIds, :StrRoomIds

        def initialize(sdkappid=nil, roomids=nil, strroomids=nil)
          @SdkAppId = sdkappid
          @RoomIds = roomids
          @StrRoomIds = strroomids
        end

        def deserialize(params)
          @SdkAppId = params['SdkAppId']
          @RoomIds = params['RoomIds']
          @StrRoomIds = params['StrRoomIds']
        end
      end

      # DescribeRoomInfo返回参数结构体
      class DescribeRoomInfoResponse < TencentCloud::Common::AbstractModel
        # @param Result: <p>操作结果, 0成功, 非0失败</p>
        # @type Result: Integer
        # @param RoomUsers: <p>房间用户信息</p>
        # @type RoomUsers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RoomUsers, :RequestId

        def initialize(result=nil, roomusers=nil, requestid=nil)
          @Result = result
          @RoomUsers = roomusers
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          unless params['RoomUsers'].nil?
            @RoomUsers = []
            params['RoomUsers'].each do |i|
              roomuser_tmp = RoomUser.new
              roomuser_tmp.deserialize(i)
              @RoomUsers << roomuser_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 语音检测结果返回
      class DescribeScanResult < TencentCloud::Common::AbstractModel
        # @param Code: 业务返回码
        # @type Code: Integer
        # @param DataId: 数据唯一 ID
        # @type DataId: String
        # @param ScanFinishTime: 检测完成的时间戳
        # @type ScanFinishTime: Integer
        # @param HitFlag: 是否违规
        # @type HitFlag: Boolean
        # @param Live: 是否为流
        # @type Live: Boolean
        # @param Msg: 业务返回描述
        # @type Msg: String
        # @param ScanPiece: 检测结果，Code 为 0 时返回
        # @type ScanPiece: Array
        # @param ScanStartTime: 提交检测的时间戳
        # @type ScanStartTime: Integer
        # @param Scenes: 语音检测场景，对应请求时的 Scene
        # @type Scenes: Array
        # @param TaskId: 语音检测任务 ID，由后台分配
        # @type TaskId: String
        # @param Url: 文件或接流地址
        # @type Url: String
        # @param Status: 检测任务执行结果状态，分别为：
        # <li>Start: 任务开始</li>
        # <li>Success: 成功结束</li>
        # <li>Error: 异常</li>
        # @type Status: String
        # @param BizId: 提交检测的应用 ID
        # @type BizId: Integer

        attr_accessor :Code, :DataId, :ScanFinishTime, :HitFlag, :Live, :Msg, :ScanPiece, :ScanStartTime, :Scenes, :TaskId, :Url, :Status, :BizId

        def initialize(code=nil, dataid=nil, scanfinishtime=nil, hitflag=nil, live=nil, msg=nil, scanpiece=nil, scanstarttime=nil, scenes=nil, taskid=nil, url=nil, status=nil, bizid=nil)
          @Code = code
          @DataId = dataid
          @ScanFinishTime = scanfinishtime
          @HitFlag = hitflag
          @Live = live
          @Msg = msg
          @ScanPiece = scanpiece
          @ScanStartTime = scanstarttime
          @Scenes = scenes
          @TaskId = taskid
          @Url = url
          @Status = status
          @BizId = bizid
        end

        def deserialize(params)
          @Code = params['Code']
          @DataId = params['DataId']
          @ScanFinishTime = params['ScanFinishTime']
          @HitFlag = params['HitFlag']
          @Live = params['Live']
          @Msg = params['Msg']
          unless params['ScanPiece'].nil?
            @ScanPiece = []
            params['ScanPiece'].each do |i|
              scanpiece_tmp = ScanPiece.new
              scanpiece_tmp.deserialize(i)
              @ScanPiece << scanpiece_tmp
            end
          end
          @ScanStartTime = params['ScanStartTime']
          @Scenes = params['Scenes']
          @TaskId = params['TaskId']
          @Url = params['Url']
          @Status = params['Status']
          @BizId = params['BizId']
        end
      end

      # DescribeScanResultList请求参数结构体
      class DescribeScanResultListRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录[控制台](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        # @type BizId: Integer
        # @param TaskIdList: 查询的任务 ID 列表，任务 ID 列表最多支持 100 个。
        # @type TaskIdList: Array
        # @param Limit: 任务返回结果数量，默认10，上限500。大文件任务忽略此参数，返回全量结果
        # @type Limit: Integer

        attr_accessor :BizId, :TaskIdList, :Limit

        def initialize(bizid=nil, taskidlist=nil, limit=nil)
          @BizId = bizid
          @TaskIdList = taskidlist
          @Limit = limit
        end

        def deserialize(params)
          @BizId = params['BizId']
          @TaskIdList = params['TaskIdList']
          @Limit = params['Limit']
        end
      end

      # DescribeScanResultList返回参数结构体
      class DescribeScanResultListResponse < TencentCloud::Common::AbstractModel
        # @param Data: 要查询的语音检测任务的结果
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
              describescanresult_tmp = DescribeScanResult.new
              describescanresult_tmp.deserialize(i)
              @Data << describescanresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskInfo请求参数结构体
      class DescribeTaskInfoRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID。
        # @type BizId: Integer
        # @param RoomId: 房间ID。
        # @type RoomId: String

        attr_accessor :BizId, :RoomId

        def initialize(bizid=nil, roomid=nil)
          @BizId = bizid
          @RoomId = roomid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomId = params['RoomId']
        end
      end

      # DescribeTaskInfo返回参数结构体
      class DescribeTaskInfoResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 进行中的任务taskid（StartRecord接口返回）。
        # @type TaskId: Integer
        # @param RecordMode: 录制类型：1代表单流 2代表混流 3代表单流和混流。
        # @type RecordMode: Integer
        # @param SubscribeRecordUserIds: 指定订阅流白名单或者黑名单。
        # @type SubscribeRecordUserIds: :class:`Tencentcloud::Gme.v20180711.models.SubscribeRecordUserIds`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RecordMode, :SubscribeRecordUserIds, :RequestId

        def initialize(taskid=nil, recordmode=nil, subscriberecorduserids=nil, requestid=nil)
          @TaskId = taskid
          @RecordMode = recordmode
          @SubscribeRecordUserIds = subscriberecorduserids
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RecordMode = params['RecordMode']
          unless params['SubscribeRecordUserIds'].nil?
            @SubscribeRecordUserIds = SubscribeRecordUserIds.new
            @SubscribeRecordUserIds.deserialize(params['SubscribeRecordUserIds'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeUserInAndOutTime请求参数结构体
      class DescribeUserInAndOutTimeRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param RoomId: 房间ID
        # @type RoomId: Integer
        # @param UserId: 用户ID
        # @type UserId: Integer
        # @param UserIdStr: 字符串类型用户ID
        # @type UserIdStr: String
        # @param RoomIdStr: 字符串类型房间ID
        # @type RoomIdStr: String

        attr_accessor :BizId, :RoomId, :UserId, :UserIdStr, :RoomIdStr

        def initialize(bizid=nil, roomid=nil, userid=nil, useridstr=nil, roomidstr=nil)
          @BizId = bizid
          @RoomId = roomid
          @UserId = userid
          @UserIdStr = useridstr
          @RoomIdStr = roomidstr
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomId = params['RoomId']
          @UserId = params['UserId']
          @UserIdStr = params['UserIdStr']
          @RoomIdStr = params['RoomIdStr']
        end
      end

      # DescribeUserInAndOutTime返回参数结构体
      class DescribeUserInAndOutTimeResponse < TencentCloud::Common::AbstractModel
        # @param InOutList: 用户在房间得进出时间列表
        # @type InOutList: Array
        # @param Duration: 用户在房间中总时长
        # @type Duration: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InOutList, :Duration, :RequestId

        def initialize(inoutlist=nil, duration=nil, requestid=nil)
          @InOutList = inoutlist
          @Duration = duration
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InOutList'].nil?
            @InOutList = []
            params['InOutList'].each do |i|
              inouttimeinfo_tmp = InOutTimeInfo.new
              inouttimeinfo_tmp.deserialize(i)
              @InOutList << inouttimeinfo_tmp
            end
          end
          @Duration = params['Duration']
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

      # 查找过滤
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 要过滤的字段名, 比如"AppName"
        # @type Name: String
        # @param Values: 多个关键字
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # GetCustomizationList请求参数结构体
      class GetCustomizationListRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer

        attr_accessor :BizId

        def initialize(bizid=nil)
          @BizId = bizid
        end

        def deserialize(params)
          @BizId = params['BizId']
        end
      end

      # GetCustomizationList返回参数结构体
      class GetCustomizationListResponse < TencentCloud::Common::AbstractModel
        # @param CustomizationConfigs: 语音消息转文本热句模型配置
        # @type CustomizationConfigs: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CustomizationConfigs, :RequestId

        def initialize(customizationconfigs=nil, requestid=nil)
          @CustomizationConfigs = customizationconfigs
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CustomizationConfigs'].nil?
            @CustomizationConfigs = []
            params['CustomizationConfigs'].each do |i|
              customizationconfigs_tmp = CustomizationConfigs.new
              customizationconfigs_tmp.deserialize(i)
              @CustomizationConfigs << customizationconfigs_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 房间内的事件
      class InOutTimeInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 进入房间时间
        # @type StartTime: Integer
        # @param EndTime: 退出房间时间
        # @type EndTime: Integer

        attr_accessor :StartTime, :EndTime

        def initialize(starttime=nil, endtime=nil)
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
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

      # ModifyAppStatus请求参数结构体
      class ModifyAppStatusRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID，创建应用后由后台生成并返回。
        # @type BizId: Integer
        # @param Status: 应用状态，取值：open/close
        # @type Status: String

        attr_accessor :BizId, :Status

        def initialize(bizid=nil, status=nil)
          @BizId = bizid
          @Status = status
        end

        def deserialize(params)
          @BizId = params['BizId']
          @Status = params['Status']
        end
      end

      # ModifyAppStatus接口输出参数
      class ModifyAppStatusResp < TencentCloud::Common::AbstractModel
        # @param BizId: GME应用ID
        # @type BizId: Integer
        # @param Status: 应用状态，取值：open/close
        # @type Status: String

        attr_accessor :BizId, :Status

        def initialize(bizid=nil, status=nil)
          @BizId = bizid
          @Status = status
        end

        def deserialize(params)
          @BizId = params['BizId']
          @Status = params['Status']
        end
      end

      # ModifyAppStatus返回参数结构体
      class ModifyAppStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 修改应用开关状态返回数据
        # @type Data: :class:`Tencentcloud::Gme.v20180711.models.ModifyAppStatusResp`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = ModifyAppStatusResp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # ModifyCustomization请求参数结构体
      class ModifyCustomizationRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer
        # @param TextUrl: 文本文件的下载地址，服务会从该地址下载文件，目前仅支持腾讯云cos
        # @type TextUrl: String
        # @param ModelId: 修改的模型ID
        # @type ModelId: String

        attr_accessor :BizId, :TextUrl, :ModelId

        def initialize(bizid=nil, texturl=nil, modelid=nil)
          @BizId = bizid
          @TextUrl = texturl
          @ModelId = modelid
        end

        def deserialize(params)
          @BizId = params['BizId']
          @TextUrl = params['TextUrl']
          @ModelId = params['ModelId']
        end
      end

      # ModifyCustomization返回参数结构体
      class ModifyCustomizationResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回值。0为成功，非0为失败。
        # @type ErrorCode: Integer
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :ModelId, :RequestId

        def initialize(errorcode=nil, modelid=nil, requestid=nil)
          @ErrorCode = errorcode
          @ModelId = modelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @ModelId = params['ModelId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCustomizationState请求参数结构体
      class ModifyCustomizationStateRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ToState: 想要变换的模型状态，-1代表下线，1代表上线
        # @type ToState: Integer
        # @param BizId: 应用 ID，登录控制台创建应用得到的AppID
        # @type BizId: Integer

        attr_accessor :ModelId, :ToState, :BizId

        def initialize(modelid=nil, tostate=nil, bizid=nil)
          @ModelId = modelid
          @ToState = tostate
          @BizId = bizid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ToState = params['ToState']
          @BizId = params['BizId']
        end
      end

      # ModifyCustomizationState返回参数结构体
      class ModifyCustomizationStateResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 模型ID
        # @type ModelId: String
        # @param ErrorCode: 返回值。0为成功，非0为失败。
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :ErrorCode, :RequestId

        def initialize(modelid=nil, errorcode=nil, requestid=nil)
          @ModelId = modelid
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # ModifyRecordInfo请求参数结构体
      class ModifyRecordInfoRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>进行中的任务taskid（StartRecord接口返回）。</p>
        # @type TaskId: Integer
        # @param RecordMode: <p>录制类型：1代表单流 2代表混流 3代表单流和混流。</p>
        # @type RecordMode: Integer
        # @param BizId: <p>应用ID。</p>
        # @type BizId: Integer
        # @param SubscribeRecordUserIds: <p>指定订阅流白名单或者黑名单。</p>
        # @type SubscribeRecordUserIds: :class:`Tencentcloud::Gme.v20180711.models.SubscribeRecordUserIds`

        attr_accessor :TaskId, :RecordMode, :BizId, :SubscribeRecordUserIds

        def initialize(taskid=nil, recordmode=nil, bizid=nil, subscriberecorduserids=nil)
          @TaskId = taskid
          @RecordMode = recordmode
          @BizId = bizid
          @SubscribeRecordUserIds = subscriberecorduserids
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RecordMode = params['RecordMode']
          @BizId = params['BizId']
          unless params['SubscribeRecordUserIds'].nil?
            @SubscribeRecordUserIds = SubscribeRecordUserIds.new
            @SubscribeRecordUserIds.deserialize(params['SubscribeRecordUserIds'])
          end
        end
      end

      # ModifyRecordInfo返回参数结构体
      class ModifyRecordInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyUserMicStatus请求参数结构体
      class ModifyUserMicStatusRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 来自 [腾讯云控制台](https://console.cloud.tencent.com/gamegme) 的 GME 服务提供的 AppID，获取请参考 [语音服务开通指引](https://cloud.tencent.com/document/product/607/10782#.E9.87.8D.E7.82.B9.E5.8F.82.E6.95.B0)。
        # @type BizId: Integer
        # @param RoomId: 实时语音房间号。
        # @type RoomId: String
        # @param Users: 需要操作的房间内用户以及该用户的目标麦克风状态。
        # @type Users: Array

        attr_accessor :BizId, :RoomId, :Users

        def initialize(bizid=nil, roomid=nil, users=nil)
          @BizId = bizid
          @RoomId = roomid
          @Users = users
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomId = params['RoomId']
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              usermicstatus_tmp = UserMicStatus.new
              usermicstatus_tmp.deserialize(i)
              @Users << usermicstatus_tmp
            end
          end
        end
      end

      # ModifyUserMicStatus返回参数结构体
      class ModifyUserMicStatusResponse < TencentCloud::Common::AbstractModel
        # @param Result: 返回结果：0为成功，非0为失败。
        # @type Result: Integer
        # @param ErrMsg: 错误信息。
        # @type ErrMsg: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :ErrMsg, :RequestId

        def initialize(result=nil, errmsg=nil, requestid=nil)
          @Result = result
          @ErrMsg = errmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @ErrMsg = params['ErrMsg']
          @RequestId = params['RequestId']
        end
      end

      # 海外转文本用量数据
      class OverseaTextStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Data: 统计值，单位：秒
        # @type Data: Float

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # 实时语音用量统计数据
      class RealTimeSpeechStatisticsItem < TencentCloud::Common::AbstractModel
        # @param MainLandDau: 大陆地区DAU
        # @type MainLandDau: Integer
        # @param MainLandPcu: 大陆地区PCU
        # @type MainLandPcu: Integer
        # @param MainLandDuration: 大陆地区总使用时长，单位为min
        # @type MainLandDuration: Integer
        # @param OverseaDau: 海外地区DAU
        # @type OverseaDau: Integer
        # @param OverseaPcu: 海外地区PCU
        # @type OverseaPcu: Integer
        # @param OverseaDuration: 海外地区总使用时长，单位为min
        # @type OverseaDuration: Integer

        attr_accessor :MainLandDau, :MainLandPcu, :MainLandDuration, :OverseaDau, :OverseaPcu, :OverseaDuration

        def initialize(mainlanddau=nil, mainlandpcu=nil, mainlandduration=nil, overseadau=nil, overseapcu=nil, overseaduration=nil)
          @MainLandDau = mainlanddau
          @MainLandPcu = mainlandpcu
          @MainLandDuration = mainlandduration
          @OverseaDau = overseadau
          @OverseaPcu = overseapcu
          @OverseaDuration = overseaduration
        end

        def deserialize(params)
          @MainLandDau = params['MainLandDau']
          @MainLandPcu = params['MainLandPcu']
          @MainLandDuration = params['MainLandDuration']
          @OverseaDau = params['OverseaDau']
          @OverseaPcu = params['OverseaPcu']
          @OverseaDuration = params['OverseaDuration']
        end
      end

      # 实时语音配置数据
      class RealtimeSpeechConf < TencentCloud::Common::AbstractModel
        # @param Status: 实时语音服务开关，取值：open/close
        # @type Status: String
        # @param Quality: 实时语音音质类型，取值：high-高音质 ordinary-普通音质
        # @type Quality: String

        attr_accessor :Status, :Quality

        def initialize(status=nil, quality=nil)
          @Status = status
          @Quality = quality
        end

        def deserialize(params)
          @Status = params['Status']
          @Quality = params['Quality']
        end
      end

      # 实时语音转文本用量数据
      class RealtimeTextStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Data: 统计值，单位：秒
        # @type Data: Float

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # 房间内录制信息。
      # 注意：此字段可能返回 null，表示取不到有效值。
      class RecordInfo < TencentCloud::Common::AbstractModel
        # @param UserId: 用户ID（当混流模式时，取值为0）。
        # @type UserId: String
        # @param FileName: 录制文件名。
        # @type FileName: String
        # @param RecordBeginTime: 录制开始时间（unix时间戳如：1234567868）。
        # @type RecordBeginTime: Integer
        # @param RecordStatus: 录制状态：2代表正在录制  10代表等待转码  11代表正在转码  12正在上传  13代表上传完成  14代表通知用户完成。
        # @type RecordStatus: Integer

        attr_accessor :UserId, :FileName, :RecordBeginTime, :RecordStatus

        def initialize(userid=nil, filename=nil, recordbegintime=nil, recordstatus=nil)
          @UserId = userid
          @FileName = filename
          @RecordBeginTime = recordbegintime
          @RecordStatus = recordstatus
        end

        def deserialize(params)
          @UserId = params['UserId']
          @FileName = params['FileName']
          @RecordBeginTime = params['RecordBeginTime']
          @RecordStatus = params['RecordStatus']
        end
      end

      # RegisterVoicePrint请求参数结构体
      class RegisterVoicePrintRequest < TencentCloud::Common::AbstractModel
        # @param Audio: 整个wav音频文件的base64字符串,其中wav文件限定为16k采样率, 16bit位深, 单声道, 4到18秒音频时长,有效音频不小于3秒(不能有太多静音段), 编码数据大小不超过2M, 为了识别准确率，建议音频长度为8秒
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

      # 房间内用户信息
      class RoomUser < TencentCloud::Common::AbstractModel
        # @param RoomId: 房间id
        # @type RoomId: Integer
        # @param Uins: 房间里用户uin列表
        # @type Uins: Array
        # @param StrRoomId: 字符串房间id
        # @type StrRoomId: String
        # @param StrUins: 房间里用户字符串uin列表
        # @type StrUins: Array

        attr_accessor :RoomId, :Uins, :StrRoomId, :StrUins

        def initialize(roomid=nil, uins=nil, strroomid=nil, struins=nil)
          @RoomId = roomid
          @Uins = uins
          @StrRoomId = strroomid
          @StrUins = struins
        end

        def deserialize(params)
          @RoomId = params['RoomId']
          @Uins = params['Uins']
          @StrRoomId = params['StrRoomId']
          @StrUins = params['StrUins']
        end
      end

      # 语音转文字参数
      class STTConfig < TencentCloud::Common::AbstractModel
        # @param Language: 语音转文字支持识别的语言，默认是"zh" 中文

        # 可通过购买「AI智能识别时长包」解锁或领取包月套餐体验版解锁不同语言.

        # 语音转文本不同套餐版本支持的语言如下：

        # **基础版**：
        # - "zh": 中文（简体）
        # - "zh-TW": 中文（繁体）
        # - "en": 英语

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
        # @param CustomParam: 自定义参数，联系后台使用
        # @type CustomParam: String
        # @param VadSilenceTime: 语音识别vad的时间，范围为240-2000，默认为1000，单位为ms。更小的值会让语音识别分句更快。
        # @type VadSilenceTime: Integer
        # @param HotWordList: 热词表：该参数用于提升识别准确率。 单个热词限制："热词|权重"，单个热词不超过30个字符（最多10个汉字），权重[1-11]或者100，如：“腾讯云|5” 或 “ASR|11”； 热词表限制：多个热词用英文逗号分割，最多支持128个热词，如：“腾讯云|10,语音识别|5,ASR|11”；
        # @type HotWordList: String
        # @param VadLevel: vad的远场人声抑制能力（不会对asr识别效果造成影响），范围为[0, 3]，默认为0。推荐设置为2，有较好的远场人声抑制能力。
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

      # 语音检测详情
      class ScanDetail < TencentCloud::Common::AbstractModel
        # @param Label: 违规场景，参照<a href="https://cloud.tencent.com/document/product/607/37622#Label_Value">Label</a>定义
        # @type Label: String
        # @param Rate: 该场景下概率[0.00,100.00],分值越大违规概率越高
        # @type Rate: String
        # @param KeyWord: 违规关键字
        # @type KeyWord: String
        # @param StartTime: 关键字在音频的开始时间，从0开始的偏移量，单位为毫秒，Label=moan时有效
        # @type StartTime: Integer
        # @param EndTime: 关键字在音频的结束时间，从0开始的偏移量,，单位为毫秒，Label=moan时有效
        # @type EndTime: Integer

        attr_accessor :Label, :Rate, :KeyWord, :StartTime, :EndTime

        def initialize(label=nil, rate=nil, keyword=nil, starttime=nil, endtime=nil)
          @Label = label
          @Rate = rate
          @KeyWord = keyword
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Label = params['Label']
          @Rate = params['Rate']
          @KeyWord = params['KeyWord']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 语音检测结果，Code 为 0 时返回
      class ScanPiece < TencentCloud::Common::AbstractModel
        # @param DumpUrl: 流检测时返回，音频转存地址，保留30min
        # @type DumpUrl: String
        # @param HitFlag: 是否违规
        # @type HitFlag: Boolean
        # @param MainType: 违规主要类型
        # @type MainType: String
        # @param ScanDetail: 语音检测详情
        # @type ScanDetail: Array
        # @param RoomId: gme实时语音房间ID，透传任务传入时的RoomId
        # @type RoomId: String
        # @param OpenId: gme实时语音用户ID，透传任务传入时的OpenId
        # @type OpenId: String
        # @param Info: 备注
        # @type Info: String
        # @param Offset: 流检测时分片在流中的偏移时间，单位毫秒
        # @type Offset: Integer
        # @param Duration: 流检测时分片时长
        # @type Duration: Integer
        # @param PieceStartTime: 分片开始检测时间
        # @type PieceStartTime: Integer

        attr_accessor :DumpUrl, :HitFlag, :MainType, :ScanDetail, :RoomId, :OpenId, :Info, :Offset, :Duration, :PieceStartTime

        def initialize(dumpurl=nil, hitflag=nil, maintype=nil, scandetail=nil, roomid=nil, openid=nil, info=nil, offset=nil, duration=nil, piecestarttime=nil)
          @DumpUrl = dumpurl
          @HitFlag = hitflag
          @MainType = maintype
          @ScanDetail = scandetail
          @RoomId = roomid
          @OpenId = openid
          @Info = info
          @Offset = offset
          @Duration = duration
          @PieceStartTime = piecestarttime
        end

        def deserialize(params)
          @DumpUrl = params['DumpUrl']
          @HitFlag = params['HitFlag']
          @MainType = params['MainType']
          unless params['ScanDetail'].nil?
            @ScanDetail = []
            params['ScanDetail'].each do |i|
              scandetail_tmp = ScanDetail.new
              scandetail_tmp.deserialize(i)
              @ScanDetail << scandetail_tmp
            end
          end
          @RoomId = params['RoomId']
          @OpenId = params['OpenId']
          @Info = params['Info']
          @Offset = params['Offset']
          @Duration = params['Duration']
          @PieceStartTime = params['PieceStartTime']
        end
      end

      # ScanVoice请求参数结构体
      class ScanVoiceRequest < TencentCloud::Common::AbstractModel
        # @param BizId: <p>应用ID，登录<a href="https://console.cloud.tencent.com/gamegme">控制台 - 服务管理</a>创建应用得到的AppID</p>
        # @type BizId: Integer
        # @param Scenes: <p>语音检测场景，参数值目前要求为 default。 预留场景设置： 谩骂、色情、广告、违禁等场景，<a href="#Label_Value">具体取值见上述 Label 说明。</a></p>
        # @type Scenes: Array
        # @param Live: <p>是否为直播流。值为 false 时表示普通语音文件检测；为 true 时表示语音流检测。</p>
        # @type Live: Boolean
        # @param Tasks: <p>语音检测任务列表，列表最多支持100个检测任务。结构体中包含：</p><li>DataId：数据的唯一ID</li><li>Url：数据文件的url，为 urlencode 编码，流式则为拉流地址</li>
        # @type Tasks: Array
        # @param Callback: <p>异步检测结果回调地址，具体见上述<a href="#Callback_Declare">回调相关说明</a>。（说明：该字段为空时，必须通过接口(查询语音检测结果)获取检测结果）。</p>
        # @type Callback: String
        # @param Lang: <p>语种，不传默认中文</p>
        # @type Lang: String

        attr_accessor :BizId, :Scenes, :Live, :Tasks, :Callback, :Lang

        def initialize(bizid=nil, scenes=nil, live=nil, tasks=nil, callback=nil, lang=nil)
          @BizId = bizid
          @Scenes = scenes
          @Live = live
          @Tasks = tasks
          @Callback = callback
          @Lang = lang
        end

        def deserialize(params)
          @BizId = params['BizId']
          @Scenes = params['Scenes']
          @Live = params['Live']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @Callback = params['Callback']
          @Lang = params['Lang']
        end
      end

      # ScanVoice返回参数结构体
      class ScanVoiceResponse < TencentCloud::Common::AbstractModel
        # @param Data: <p>语音检测返回。Data 字段是 JSON 数组，每一个元素包含：<li>DataId： 请求中对应的 DataId。</li></p><li>TaskID ：该检测任务的 ID，用于轮询语音检测结果。</li>
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
              scanvoiceresult_tmp = ScanVoiceResult.new
              scanvoiceresult_tmp.deserialize(i)
              @Data << scanvoiceresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 语音检测返回结果
      class ScanVoiceResult < TencentCloud::Common::AbstractModel
        # @param DataId: 数据ID
        # @type DataId: String
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :DataId, :TaskId

        def initialize(dataid=nil, taskid=nil)
          @DataId = dataid
          @TaskId = taskid
        end

        def deserialize(params)
          @DataId = params['DataId']
          @TaskId = params['TaskId']
        end
      end

      # SceneInfo场景信息
      # 'RealTime','实时语音分析',
      # 'VoiceMessage','语音消息',
      # 'GMECloudApi':'GME云API接口'
      class SceneInfo < TencentCloud::Common::AbstractModel
        # @param SceneId: 'RealTime','实时语音分析',
        # 'VoiceMessage','语音消息',
        # 'GMECloudApi':'GME云API接口'
        # @type SceneId: String
        # @param Status: 开关状态，true开启/false关闭
        # @type Status: Boolean
        # @param CallbackUrl: 用户回调地址
        # @type CallbackUrl: String

        attr_accessor :SceneId, :Status, :CallbackUrl

        def initialize(sceneid=nil, status=nil, callbackurl=nil)
          @SceneId = sceneid
          @Status = status
          @CallbackUrl = callbackurl
        end

        def deserialize(params)
          @SceneId = params['SceneId']
          @Status = params['Status']
          @CallbackUrl = params['CallbackUrl']
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

        attr_accessor :Text, :Interrupt, :StopAfterPlay, :Audio, :DropMode, :Priority

        def initialize(text=nil, interrupt=nil, stopafterplay=nil, audio=nil, dropmode=nil, priority=nil)
          @Text = text
          @Interrupt = interrupt
          @StopAfterPlay = stopafterplay
          @Audio = audio
          @DropMode = dropmode
          @Priority = priority
        end

        def deserialize(params)
          @Text = params['Text']
          @Interrupt = params['Interrupt']
          @StopAfterPlay = params['StopAfterPlay']
          @Audio = params['Audio']
          @DropMode = params['DropMode']
          @Priority = params['Priority']
        end
      end

      # 服务开关状态
      class ServiceStatus < TencentCloud::Common::AbstractModel
        # @param RealTimeSpeech: 实时语音服务开关状态
        # @type RealTimeSpeech: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param VoiceMessage: 语音消息服务开关状态
        # @type VoiceMessage: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param Porn: 语音内容安全服务开关状态
        # @type Porn: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param Live: 语音录制服务开关状态
        # @type Live: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param RealTimeAsr: 语音转文本服务开关状态
        # @type RealTimeAsr: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`
        # @param TextTranslate: 文本翻译服务开关状态
        # @type TextTranslate: :class:`Tencentcloud::Gme.v20180711.models.StatusInfo`

        attr_accessor :RealTimeSpeech, :VoiceMessage, :Porn, :Live, :RealTimeAsr, :TextTranslate

        def initialize(realtimespeech=nil, voicemessage=nil, porn=nil, live=nil, realtimeasr=nil, texttranslate=nil)
          @RealTimeSpeech = realtimespeech
          @VoiceMessage = voicemessage
          @Porn = porn
          @Live = live
          @RealTimeAsr = realtimeasr
          @TextTranslate = texttranslate
        end

        def deserialize(params)
          unless params['RealTimeSpeech'].nil?
            @RealTimeSpeech = StatusInfo.new
            @RealTimeSpeech.deserialize(params['RealTimeSpeech'])
          end
          unless params['VoiceMessage'].nil?
            @VoiceMessage = StatusInfo.new
            @VoiceMessage.deserialize(params['VoiceMessage'])
          end
          unless params['Porn'].nil?
            @Porn = StatusInfo.new
            @Porn.deserialize(params['Porn'])
          end
          unless params['Live'].nil?
            @Live = StatusInfo.new
            @Live.deserialize(params['Live'])
          end
          unless params['RealTimeAsr'].nil?
            @RealTimeAsr = StatusInfo.new
            @RealTimeAsr.deserialize(params['RealTimeAsr'])
          end
          unless params['TextTranslate'].nil?
            @TextTranslate = StatusInfo.new
            @TextTranslate.deserialize(params['TextTranslate'])
          end
        end
      end

      # StartAIConversation请求参数结构体
      class StartAIConversationRequest < TencentCloud::Common::AbstractModel
        # @param SdkAppId: GME的SdkAppId和开启转录任务的房间使用的SdkAppId相同。
        # @type SdkAppId: Integer
        # @param RoomId: GME的RoomId表示开启对话任务的房间号。
        # @type RoomId: String
        # @param AgentConfig: 机器人参数
        # @type AgentConfig: :class:`Tencentcloud::Gme.v20180711.models.AgentConfig`
        # @param STTConfig: 语音识别配置。
        # @type STTConfig: :class:`Tencentcloud::Gme.v20180711.models.STTConfig`
        # @param LLMConfig: LLM配置。需符合openai规范，为JSON字符串，示例如下：
        # <pre> { <br> &emsp;  "LLMType": "大模型类型",  // String 必填，如："openai" <br> &emsp;  "Model": "您的模型名称", // String 必填，指定使用的模型<br>    "APIKey": "您的LLM API密钥", // String 必填 <br> &emsp;  "APIUrl": "https://api.xxx.com/chat/completions", // String 必填，LLM API访问的URL<br> &emsp;  "Streaming": true // Boolean 非必填，指定是否使用流式传输<br> &emsp;} </pre>
        # @type LLMConfig: String
        # @param TTSConfig:                                         "description": "TTS配置，为JSON字符串，腾讯云TTS示例如下： <pre>{ <br> &emsp; \"AppId\": 您的应用ID, // Integer 必填<br> &emsp; \"TTSType\": \"TTS类型\", // String TTS类型, 固定为\"tencent\"<br> &emsp; \"SecretId\": \"您的密钥ID\", // String 必填<br> &emsp; \"SecretKey\":  \"您的密钥Key\", // String 必填<br> &emsp; \"VoiceType\": 101001, // Integer  必填，音色 ID，包括标准音色与精品音色，精品音色拟真度更高，价格不同于标准音色。<br> &emsp; \"Speed\": 1.25, // Integer 非必填，语速，范围：[-2，6]，分别对应不同语速： -2: 代表0.6倍 -1: 代表0.8倍 0: 代表1.0倍（默认） 1: 代表1.2倍 2: 代表1.5倍  6: 代表2.5倍  如果需要更细化的语速，可以保留小数点后 2 位，例如0.5/1.25/2.81等。 参数值与实际语速转换\"Volume\": 5, // Integer 非必填，音量大小，范围：[0，10]，分别对应11个等级的音量，默认值为0，代表正常音量。<br> &emsp; \"EmotionCategory\":  \"angry\", // String 非必填 控制合成音频的情感，仅支持多情感音色使用。取值: neutral(中性)、sad(悲伤)、happy(高兴)、angry(生气)、fear(恐惧)、news(新闻)、story(故事)、radio(广播)、poetry(诗歌)、call(客服)、sajiao(撒娇)、disgusted(厌恶)、amaze(震惊)、peaceful(平静)、exciting(兴奋)、aojiao(傲娇)、jieshuo(解说)。<br> &emsp; \"EmotionIntensity\":  150 // Integer 非必填 控制合成音频情感程度，取值范围为 [50,200]，默认为 100；只有 EmotionCategory 不为空时生效。<br> &emsp; }</pre>",
        # @type TTSConfig: String
        # @param AvatarConfig: 数字人配置，为JSON字符串。**数字人配置需要提工单加白后才能使用**
        # @type AvatarConfig: String
        # @param ExperimentalParams: 实验性参数,联系后台使用
        # @type ExperimentalParams: String

        attr_accessor :SdkAppId, :RoomId, :AgentConfig, :STTConfig, :LLMConfig, :TTSConfig, :AvatarConfig, :ExperimentalParams

        def initialize(sdkappid=nil, roomid=nil, agentconfig=nil, sttconfig=nil, llmconfig=nil, ttsconfig=nil, avatarconfig=nil, experimentalparams=nil)
          @SdkAppId = sdkappid
          @RoomId = roomid
          @AgentConfig = agentconfig
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

      # StartRecord请求参数结构体
      class StartRecordRequest < TencentCloud::Common::AbstractModel
        # @param BizId: <p>应用ID。</p>
        # @type BizId: Integer
        # @param RoomId: <p>房间ID。</p>
        # @type RoomId: String
        # @param RecordMode: <p>录制类型：1代表单流 2代表混流 3代表单流和混流。</p>
        # @type RecordMode: Integer
        # @param SubscribeRecordUserIds: <p>指定订阅流白名单或者黑名单（不传默认订阅房间内所有音频流）。</p>
        # @type SubscribeRecordUserIds: :class:`Tencentcloud::Gme.v20180711.models.SubscribeRecordUserIds`

        attr_accessor :BizId, :RoomId, :RecordMode, :SubscribeRecordUserIds

        def initialize(bizid=nil, roomid=nil, recordmode=nil, subscriberecorduserids=nil)
          @BizId = bizid
          @RoomId = roomid
          @RecordMode = recordmode
          @SubscribeRecordUserIds = subscriberecorduserids
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomId = params['RoomId']
          @RecordMode = params['RecordMode']
          unless params['SubscribeRecordUserIds'].nil?
            @SubscribeRecordUserIds = SubscribeRecordUserIds.new
            @SubscribeRecordUserIds.deserialize(params['SubscribeRecordUserIds'])
          end
        end
      end

      # StartRecord返回参数结构体
      class StartRecordResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: <p>任务taskid。</p>
        # @type TaskId: Integer
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

      # 用量数据单元
      class StatisticsItem < TencentCloud::Common::AbstractModel
        # @param StatDate: 日期，格式为年-月-日，如2018-07-13
        # @type StatDate: String
        # @param Data: 统计值
        # @type Data: Integer

        attr_accessor :StatDate, :Data

        def initialize(statdate=nil, data=nil)
          @StatDate = statdate
          @Data = data
        end

        def deserialize(params)
          @StatDate = params['StatDate']
          @Data = params['Data']
        end
      end

      # 服务开关状态
      class StatusInfo < TencentCloud::Common::AbstractModel
        # @param Status: 服务开关状态， 0-正常，1-关闭
        # @type Status: Integer

        attr_accessor :Status

        def initialize(status=nil)
          @Status = status
        end

        def deserialize(params)
          @Status = params['Status']
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

      # StopRecord请求参数结构体
      class StopRecordRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID。
        # @type TaskId: Integer
        # @param BizId: 应用ID。
        # @type BizId: Integer

        attr_accessor :TaskId, :BizId

        def initialize(taskid=nil, bizid=nil)
          @TaskId = taskid
          @BizId = bizid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @BizId = params['BizId']
        end
      end

      # StopRecord返回参数结构体
      class StopRecordResponse < TencentCloud::Common::AbstractModel
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

      # 流式转文本用量数据
      class StreamTextStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Data: 统计值，单位：秒
        # @type Data: Float

        attr_accessor :Data

        def initialize(data=nil)
          @Data = data
        end

        def deserialize(params)
          @Data = params['Data']
        end
      end

      # 指定订阅流白名单或者黑名单。
      class SubscribeRecordUserIds < TencentCloud::Common::AbstractModel
        # @param UnSubscribeUserIds: 订阅音频流黑名单，指定不订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表不订阅UserId 1，2，3的音频流。默认不填订阅房间内所有音频流，订阅列表用户数不超过20。
        # 注意：只能同时设置UnSubscribeAudioUserIds、SubscribeAudioUserIds 其中1个参数
        # @type UnSubscribeUserIds: Array
        # @param SubscribeUserIds: 订阅音频流白名单，指定订阅哪几个UserId的音频流，例如["1", "2", "3"], 代表订阅UserId 1，2，3的音频流。默认不填订阅房间内所有音频流，订阅列表用户数不超过20。
        # 注意：只能同时设置UnSubscribeAudioUserIds、SubscribeAudioUserIds 其中1个参数。
        # @type SubscribeUserIds: Array

        attr_accessor :UnSubscribeUserIds, :SubscribeUserIds

        def initialize(unsubscribeuserids=nil, subscribeuserids=nil)
          @UnSubscribeUserIds = unsubscribeuserids
          @SubscribeUserIds = subscribeuserids
        end

        def deserialize(params)
          @UnSubscribeUserIds = params['UnSubscribeUserIds']
          @SubscribeUserIds = params['SubscribeUserIds']
        end
      end

      # 标签列表
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue

        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 语音检测任务列表
      class Task < TencentCloud::Common::AbstractModel
        # @param DataId: 数据的唯一ID
        # @type DataId: String
        # @param Url: 数据文件的url，为 urlencode 编码，流式则为拉流地址
        # @type Url: String
        # @param RoomId: gme实时语音房间ID，通过gme实时语音进行语音分析时输入
        # @type RoomId: String
        # @param OpenId: gme实时语音用户ID，通过gme实时语音进行语音分析时输入
        # @type OpenId: String

        attr_accessor :DataId, :Url, :RoomId, :OpenId

        def initialize(dataid=nil, url=nil, roomid=nil, openid=nil)
          @DataId = dataid
          @Url = url
          @RoomId = roomid
          @OpenId = openid
        end

        def deserialize(params)
          @DataId = params['DataId']
          @Url = params['Url']
          @RoomId = params['RoomId']
          @OpenId = params['OpenId']
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

      # UpdateScanRooms请求参数结构体
      class UpdateScanRoomsRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param RoomIdString: 需要送检的所有房间号。多个房间号之间用","分隔，长度不超过1024字符。示例："0001,0002,0003"
        # @type RoomIdString: String
        # @param RoomIdRegex: 符合此正则表达式规则的房间号将被送检，最大不能超过10个。示例：^6.*（表示所有以6开头的房间号将被送检）
        # @type RoomIdRegex: Array

        attr_accessor :BizId, :RoomIdString, :RoomIdRegex

        def initialize(bizid=nil, roomidstring=nil, roomidregex=nil)
          @BizId = bizid
          @RoomIdString = roomidstring
          @RoomIdRegex = roomidregex
        end

        def deserialize(params)
          @BizId = params['BizId']
          @RoomIdString = params['RoomIdString']
          @RoomIdRegex = params['RoomIdRegex']
        end
      end

      # UpdateScanRooms返回参数结构体
      class UpdateScanRoomsResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
          @RequestId = params['RequestId']
        end
      end

      # UpdateScanUsers请求参数结构体
      class UpdateScanUsersRequest < TencentCloud::Common::AbstractModel
        # @param BizId: 应用ID
        # @type BizId: Integer
        # @param UserIdString: 需要送检的所有用户号。多个用户号之间用","分隔，长度不超过1024字符。示例："0001,0002,0003"
        # @type UserIdString: String
        # @param UserIdRegex: 符合此正则表达式规则的用户号将被送检，最大不能超过10个。示例：["^6.*"] 表示所有以6开头的用户号将被送检
        # @type UserIdRegex: Array

        attr_accessor :BizId, :UserIdString, :UserIdRegex

        def initialize(bizid=nil, useridstring=nil, useridregex=nil)
          @BizId = bizid
          @UserIdString = useridstring
          @UserIdRegex = useridregex
        end

        def deserialize(params)
          @BizId = params['BizId']
          @UserIdString = params['UserIdString']
          @UserIdRegex = params['UserIdRegex']
        end
      end

      # UpdateScanUsers返回参数结构体
      class UpdateScanUsersResponse < TencentCloud::Common::AbstractModel
        # @param ErrorCode: 返回结果码
        # @type ErrorCode: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorCode, :RequestId

        def initialize(errorcode=nil, requestid=nil)
          @ErrorCode = errorcode
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorCode = params['ErrorCode']
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

      # 用户麦克风状态
      class UserMicStatus < TencentCloud::Common::AbstractModel
        # @param EnableMic: 开麦状态。1表示关闭麦克风，2表示打开麦克风。
        # @type EnableMic: Integer
        # @param Uid: 客户端用于标识用户的Openid。（Uid、StrUid必须填一个，优先处理StrUid。）
        # @type Uid: Integer
        # @param StrUid: 客户端用于标识字符串型用户的Openid。（Uid、StrUid必须填一个，优先处理StrUid。）
        # @type StrUid: String

        attr_accessor :EnableMic, :Uid, :StrUid

        def initialize(enablemic=nil, uid=nil, struid=nil)
          @EnableMic = enablemic
          @Uid = uid
          @StrUid = struid
        end

        def deserialize(params)
          @EnableMic = params['EnableMic']
          @Uid = params['Uid']
          @StrUid = params['StrUid']
        end
      end

      # 语音过滤服务配置数据
      class VoiceFilterConf < TencentCloud::Common::AbstractModel
        # @param Status: 语音过滤服务开关，取值：open/close
        # @type Status: String
        # @param SceneInfos: 场景配置信息，如开关状态，回调地址。
        # @type SceneInfos: Array

        attr_accessor :Status, :SceneInfos

        def initialize(status=nil, sceneinfos=nil)
          @Status = status
          @SceneInfos = sceneinfos
        end

        def deserialize(params)
          @Status = params['Status']
          unless params['SceneInfos'].nil?
            @SceneInfos = []
            params['SceneInfos'].each do |i|
              sceneinfo_tmp = SceneInfo.new
              sceneinfo_tmp.deserialize(i)
              @SceneInfos << sceneinfo_tmp
            end
          end
        end
      end

      # 语音过滤用量统计数据
      class VoiceFilterStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Duration: 语音过滤总时长，单位为min
        # @type Duration: Integer

        attr_accessor :Duration

        def initialize(duration=nil)
          @Duration = duration
        end

        def deserialize(params)
          @Duration = params['Duration']
        end
      end

      # 离线语音服务配置数据
      class VoiceMessageConf < TencentCloud::Common::AbstractModel
        # @param Status: 离线语音服务开关，取值：open/close
        # @type Status: String
        # @param Language: 离线语音支持语种，取值： all-全部，cnen-中英文。默认为中英文
        # @type Language: String

        attr_accessor :Status, :Language

        def initialize(status=nil, language=nil)
          @Status = status
          @Language = language
        end

        def deserialize(params)
          @Status = params['Status']
          @Language = params['Language']
        end
      end

      # 语音消息用量统计信息
      class VoiceMessageStatisticsItem < TencentCloud::Common::AbstractModel
        # @param Dau: 离线语音DAU
        # @type Dau: Integer

        attr_accessor :Dau

        def initialize(dau=nil)
          @Dau = dau
        end

        def deserialize(params)
          @Dau = params['Dau']
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

    end
  end
end

