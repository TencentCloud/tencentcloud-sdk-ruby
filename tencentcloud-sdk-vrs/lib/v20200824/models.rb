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
  module Vrs
    module V20200824
      # CancelVRSTask请求参数结构体
      class CancelVRSTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CancelVRSTask返回参数结构体
      class CancelVRSTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 任务ID
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.CancelVRSTaskRsp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CancelVRSTaskRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 取消任务响应
      class CancelVRSTaskRsp < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # CreateVRSTask请求参数结构体
      class CreateVRSTaskRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 唯一请求 ID
        # @type SessionId: String
        # @param VoiceName: 音色名称
        # @type VoiceName: String
        # @param SampleRate: 音频采样率：

        # 16000：16k
        # @type SampleRate: Integer
        # @param VoiceGender: 音色性别:

        # 1-male

        # 2-female
        # @type VoiceGender: Integer
        # @param VoiceLanguage: 语言类型：

        # 1-中文
        # @type VoiceLanguage: Integer
        # @param Codec: 音频格式，音频类型(wav,mp3,aac,m4a)
        # @type Codec: String
        # @param AudioIdList: 音频ID集合
        # @type AudioIdList: Array
        # @param CallbackUrl: 回调 URL，用户自行搭建的用于接收结果的服务URL。如果用户使用轮询方式获取识别结果，则无需提交该参数。
        # 回调采用POST请求方式，Content-Type为application/json，回调数据格式如下:{"TaskId":"xxxxxxxxxxxxxx","Status":2,"StatusStr":"success","VoiceType":xxxxx,"ErrorMsg":""}
        # @type CallbackUrl: String
        # @param ModelType: 模型类型 1:在线 2:离线  默认为1
        # @type ModelType: Integer
        # @param TaskType: 任务类型 0:轻量版复刻
        # 默认为0
        # @type TaskType: Integer
        # @param VPRAudioId: 校验音频ID
        # @type VPRAudioId: String

        attr_accessor :SessionId, :VoiceName, :SampleRate, :VoiceGender, :VoiceLanguage, :Codec, :AudioIdList, :CallbackUrl, :ModelType, :TaskType, :VPRAudioId

        def initialize(sessionid=nil, voicename=nil, samplerate=nil, voicegender=nil, voicelanguage=nil, codec=nil, audioidlist=nil, callbackurl=nil, modeltype=nil, tasktype=nil, vpraudioid=nil)
          @SessionId = sessionid
          @VoiceName = voicename
          @SampleRate = samplerate
          @VoiceGender = voicegender
          @VoiceLanguage = voicelanguage
          @Codec = codec
          @AudioIdList = audioidlist
          @CallbackUrl = callbackurl
          @ModelType = modeltype
          @TaskType = tasktype
          @VPRAudioId = vpraudioid
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @VoiceName = params['VoiceName']
          @SampleRate = params['SampleRate']
          @VoiceGender = params['VoiceGender']
          @VoiceLanguage = params['VoiceLanguage']
          @Codec = params['Codec']
          @AudioIdList = params['AudioIdList']
          @CallbackUrl = params['CallbackUrl']
          @ModelType = params['ModelType']
          @TaskType = params['TaskType']
          @VPRAudioId = params['VPRAudioId']
        end
      end

      # 声音复刻任务创建响应
      class CreateVRSTaskRespData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # CreateVRSTask返回参数结构体
      class CreateVRSTaskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 创建任务结果
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.CreateVRSTaskRespData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = CreateVRSTaskRespData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeVRSTaskStatus请求参数结构体
      class DescribeVRSTaskStatusRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # 任务结果
      class DescribeVRSTaskStatusRespData < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Status: 任务状态码，0：任务等待，1：任务执行中，2：任务成功，3：任务失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusStr: 任务状态，waiting：任务等待，doing：任务执行中，success：任务成功，failed：任务失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusStr: String
        # @param VoiceType: 音色id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceType: Integer
        # @param ErrorMsg: 失败原因说明。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String

        attr_accessor :TaskId, :Status, :StatusStr, :VoiceType, :ErrorMsg

        def initialize(taskid=nil, status=nil, statusstr=nil, voicetype=nil, errormsg=nil)
          @TaskId = taskid
          @Status = status
          @StatusStr = statusstr
          @VoiceType = voicetype
          @ErrorMsg = errormsg
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @StatusStr = params['StatusStr']
          @VoiceType = params['VoiceType']
          @ErrorMsg = params['ErrorMsg']
        end
      end

      # DescribeVRSTaskStatus返回参数结构体
      class DescribeVRSTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 声音复刻任务结果
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.DescribeVRSTaskStatusRespData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeVRSTaskStatusRespData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DetectEnvAndSoundQuality请求参数结构体
      class DetectEnvAndSoundQualityRequest < TencentCloud::Common::AbstractModel
        # @param TextId: 标注文本信息 ID
        # @type TextId: String
        # @param AudioData: 语音数据 要使用base64编码(采用python语言时注意读取文件时需要转成base64字符串编码，例如：str(base64.b64encode(open("input.aac", mode="rb").read()), encoding='utf-8') )。
        # @type AudioData: String
        # @param Codec: 音频格式，音频类型(wav,mp3,aac,m4a)
        # @type Codec: String
        # @param TypeId: 1:环境检测 2:音质检测
        # @type TypeId: Integer
        # @param SampleRate: 音频采样率：

        # 16000：16k（默认）
        # @type SampleRate: Integer

        attr_accessor :TextId, :AudioData, :Codec, :TypeId, :SampleRate

        def initialize(textid=nil, audiodata=nil, codec=nil, typeid=nil, samplerate=nil)
          @TextId = textid
          @AudioData = audiodata
          @Codec = codec
          @TypeId = typeid
          @SampleRate = samplerate
        end

        def deserialize(params)
          @TextId = params['TextId']
          @AudioData = params['AudioData']
          @Codec = params['Codec']
          @TypeId = params['TypeId']
          @SampleRate = params['SampleRate']
        end
      end

      # DetectEnvAndSoundQuality返回参数结构体
      class DetectEnvAndSoundQualityResponse < TencentCloud::Common::AbstractModel
        # @param Data: 检测结果
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.DetectionEnvAndSoundQualityRespData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DetectionEnvAndSoundQualityRespData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 环境检测和音频检测响应
      class DetectionEnvAndSoundQualityRespData < TencentCloud::Common::AbstractModel
        # @param AudioId: 音频ID （用于创建任务接口AudioIds）,环境检测该值为空，仅在音质检测情况下返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioId: String
        # @param DetectionCode: 检测code

        # 0 表示当前语音通过
        # -1 表示检测失败，需要重试
        # -2 表示语音检测不通过，提示用户再重新录制一下（通常漏读，错读，或多读）
        # -3 表示语音中噪声较大，不通过
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectionCode: Integer
        # @param DetectionMsg: 检测提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectionMsg: String
        # @param DetectionTip: 检测提示信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DetectionTip: Array

        attr_accessor :AudioId, :DetectionCode, :DetectionMsg, :DetectionTip

        def initialize(audioid=nil, detectioncode=nil, detectionmsg=nil, detectiontip=nil)
          @AudioId = audioid
          @DetectionCode = detectioncode
          @DetectionMsg = detectionmsg
          @DetectionTip = detectiontip
        end

        def deserialize(params)
          @AudioId = params['AudioId']
          @DetectionCode = params['DetectionCode']
          @DetectionMsg = params['DetectionMsg']
          unless params['DetectionTip'].nil?
            @DetectionTip = []
            params['DetectionTip'].each do |i|
              words_tmp = Words.new
              words_tmp.deserialize(i)
              @DetectionTip << words_tmp
            end
          end
        end
      end

      # DownloadVRSModel请求参数结构体
      class DownloadVRSModelRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DownloadVRSModel返回参数结构体
      class DownloadVRSModelResponse < TencentCloud::Common::AbstractModel
        # @param Data: 响应
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.DownloadVRSModelRsp`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DownloadVRSModelRsp.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 离线声音复刻模型下载响应
      class DownloadVRSModelRsp < TencentCloud::Common::AbstractModel
        # @param Model: 模型cos地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Model: String
        # @param VoiceName: 音色名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceName: String
        # @param VoiceGender: 音色性别:
        # 1-male
        # 2-female
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceGender: Integer
        # @param VoiceLanguage: 语言类型：
        # 1-中文
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceLanguage: Integer
        # @param TaskId: 任务ID
        # @type TaskId: String

        attr_accessor :Model, :VoiceName, :VoiceGender, :VoiceLanguage, :TaskId

        def initialize(model=nil, voicename=nil, voicegender=nil, voicelanguage=nil, taskid=nil)
          @Model = model
          @VoiceName = voicename
          @VoiceGender = voicegender
          @VoiceLanguage = voicelanguage
          @TaskId = taskid
        end

        def deserialize(params)
          @Model = params['Model']
          @VoiceName = params['VoiceName']
          @VoiceGender = params['VoiceGender']
          @VoiceLanguage = params['VoiceLanguage']
          @TaskId = params['TaskId']
        end
      end

      # GetTrainingText请求参数结构体
      class GetTrainingTextRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetTrainingText返回参数结构体
      class GetTrainingTextResponse < TencentCloud::Common::AbstractModel
        # @param Data: 文本列表
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.TrainingTexts`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = TrainingTexts.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 训练文本
      class TrainingText < TencentCloud::Common::AbstractModel
        # @param TextId: 文本ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextId: String
        # @param Text: 文本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String

        attr_accessor :TextId, :Text

        def initialize(textid=nil, text=nil)
          @TextId = textid
          @Text = text
        end

        def deserialize(params)
          @TextId = params['TextId']
          @Text = params['Text']
        end
      end

      # 训练文本列表
      class TrainingTexts < TencentCloud::Common::AbstractModel
        # @param TrainingTextList: 训练文本列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TrainingTextList: Array

        attr_accessor :TrainingTextList

        def initialize(trainingtextlist=nil)
          @TrainingTextList = trainingtextlist
        end

        def deserialize(params)
          unless params['TrainingTextList'].nil?
            @TrainingTextList = []
            params['TrainingTextList'].each do |i|
              trainingtext_tmp = TrainingText.new
              trainingtext_tmp.deserialize(i)
              @TrainingTextList << trainingtext_tmp
            end
          end
        end
      end

      # 音频检测提示信息：
      # 1.检测字是否存在多读、 少读、 错读等
      # 2.检测准确度和流畅度
      class Words < TencentCloud::Common::AbstractModel
        # @param PronAccuracy: 准确度 (<75则认为不合格)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PronAccuracy: Float
        # @param PronFluency: 流畅度 (<0.95则认为不合格)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PronFluency: Float
        # @param Tag: tag:
        # 0: match  匹配
        # 1: insert   多读
        # 2: delete  少读
        # 3: replace 错读
        # 4: oov  待评估字不在发音评估的词库
        # 5: unknown 未知错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: Integer
        # @param Word: 字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Word: String

        attr_accessor :PronAccuracy, :PronFluency, :Tag, :Word

        def initialize(pronaccuracy=nil, pronfluency=nil, tag=nil, word=nil)
          @PronAccuracy = pronaccuracy
          @PronFluency = pronfluency
          @Tag = tag
          @Word = word
        end

        def deserialize(params)
          @PronAccuracy = params['PronAccuracy']
          @PronFluency = params['PronFluency']
          @Tag = params['Tag']
          @Word = params['Word']
        end
      end

    end
  end
end

