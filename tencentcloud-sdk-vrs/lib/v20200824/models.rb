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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CreateVRSTask请求参数结构体
      class CreateVRSTaskRequest < TencentCloud::Common::AbstractModel
        # @param SessionId: 唯一请求 ID
        # @type SessionId: String
        # @param VoiceName: 音色名称
        # @type VoiceName: String
        # @param VoiceGender: 音色性别:

        # 1-male

        # 2-female
        # @type VoiceGender: Integer
        # @param VoiceLanguage: 语言类型：

        # 1-中文
        # @type VoiceLanguage: Integer
        # @param AudioIdList: 音频ID集合。（一句话声音复刻仅需填写一个音质检测接口返回的AudioId）
        # @type AudioIdList: Array
        # @param SampleRate: 音频采样率：

        # 16000：16k
        # @type SampleRate: Integer
        # @param Codec: 音频格式，音频类型(wav,mp3,aac,m4a)
        # @type Codec: String
        # @param CallbackUrl: 回调 URL，用户自行搭建的用于接收结果的服务URL。如果用户使用轮询方式获取识别结果，则无需提交该参数。（注意：回调方式暂不支持一句话版声音复刻）
        # 回调采用POST请求方式，Content-Type为application/json，回调数据格式如下:{"TaskId":"xxxxxxxxxxxxxx","Status":2,"StatusStr":"success","VoiceType":xxxxx,"ErrorMsg":""}
        # @type CallbackUrl: String
        # @param ModelType: 模型类型 1:在线 2:离线  默认为1
        # @type ModelType: Integer
        # @param TaskType: 复刻类型。
        # 5 - 一句话声音复刻。
        # @type TaskType: Integer
        # @param VPRAudioId: 校验音频ID。（仅基础版声音复刻使用）
        # @type VPRAudioId: String
        # @param EnableVoiceEnhance: 是否开启语音增强，0 - 关闭，1 - 开启 。默认关闭
        # 语音增强仅适用于一句话复刻场景
        # @type EnableVoiceEnhance: Integer

        attr_accessor :SessionId, :VoiceName, :VoiceGender, :VoiceLanguage, :AudioIdList, :SampleRate, :Codec, :CallbackUrl, :ModelType, :TaskType, :VPRAudioId, :EnableVoiceEnhance

        def initialize(sessionid=nil, voicename=nil, voicegender=nil, voicelanguage=nil, audioidlist=nil, samplerate=nil, codec=nil, callbackurl=nil, modeltype=nil, tasktype=nil, vpraudioid=nil, enablevoiceenhance=nil)
          @SessionId = sessionid
          @VoiceName = voicename
          @VoiceGender = voicegender
          @VoiceLanguage = voicelanguage
          @AudioIdList = audioidlist
          @SampleRate = samplerate
          @Codec = codec
          @CallbackUrl = callbackurl
          @ModelType = modeltype
          @TaskType = tasktype
          @VPRAudioId = vpraudioid
          @EnableVoiceEnhance = enablevoiceenhance
        end

        def deserialize(params)
          @SessionId = params['SessionId']
          @VoiceName = params['VoiceName']
          @VoiceGender = params['VoiceGender']
          @VoiceLanguage = params['VoiceLanguage']
          @AudioIdList = params['AudioIdList']
          @SampleRate = params['SampleRate']
          @Codec = params['Codec']
          @CallbackUrl = params['CallbackUrl']
          @ModelType = params['ModelType']
          @TaskType = params['TaskType']
          @VPRAudioId = params['VPRAudioId']
          @EnableVoiceEnhance = params['EnableVoiceEnhance']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param VoiceType: 音色id。（若为一句话复刻时，该值为固定值“200000000”）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceType: Integer
        # @param ErrorMsg: 失败原因说明。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param ExpireTime: 任务过期时间。（当复刻类型为一句话复刻时展示）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param FastVoiceType: 快速复刻音色ID。（当复刻类型为一句话复刻时展示）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FastVoiceType: String

        attr_accessor :TaskId, :Status, :StatusStr, :VoiceType, :ErrorMsg, :ExpireTime, :FastVoiceType

        def initialize(taskid=nil, status=nil, statusstr=nil, voicetype=nil, errormsg=nil, expiretime=nil, fastvoicetype=nil)
          @TaskId = taskid
          @Status = status
          @StatusStr = statusstr
          @VoiceType = voicetype
          @ErrorMsg = errormsg
          @ExpireTime = expiretime
          @FastVoiceType = fastvoicetype
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @StatusStr = params['StatusStr']
          @VoiceType = params['VoiceType']
          @ErrorMsg = params['ErrorMsg']
          @ExpireTime = params['ExpireTime']
          @FastVoiceType = params['FastVoiceType']
        end
      end

      # DescribeVRSTaskStatus返回参数结构体
      class DescribeVRSTaskStatusResponse < TencentCloud::Common::AbstractModel
        # @param Data: 声音复刻任务结果
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.DescribeVRSTaskStatusRespData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TypeId: 1:环境检测 2:音质检测
        # @type TypeId: Integer
        # @param Codec: 音频格式，音频类型(wav,mp3,aac,m4a)
        # @type Codec: String
        # @param SampleRate: 音频采样率。
        # 16000：16k（默认）；
        # 24000：24k（仅一句话声音复刻支持）；
        # 48000：48k（仅一句话声音复刻支持）。
        # @type SampleRate: Integer
        # @param TaskType: 复刻类型。5 - 一句话声音复刻。
        # @type TaskType: Integer

        attr_accessor :TextId, :AudioData, :TypeId, :Codec, :SampleRate, :TaskType

        def initialize(textid=nil, audiodata=nil, typeid=nil, codec=nil, samplerate=nil, tasktype=nil)
          @TextId = textid
          @AudioData = audiodata
          @TypeId = typeid
          @Codec = codec
          @SampleRate = samplerate
          @TaskType = tasktype
        end

        def deserialize(params)
          @TextId = params['TextId']
          @AudioData = params['AudioData']
          @TypeId = params['TypeId']
          @Codec = params['Codec']
          @SampleRate = params['SampleRate']
          @TaskType = params['TaskType']
        end
      end

      # DetectEnvAndSoundQuality返回参数结构体
      class DetectEnvAndSoundQualityResponse < TencentCloud::Common::AbstractModel
        # @param Data: 检测结果
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.DetectionEnvAndSoundQualityRespData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param TaskType: 复刻类型。
        # 5 - 一句话声音复刻。
        # @type TaskType: Integer
        # @param Domain: 音色场景。（仅支持一句话声音复刻，其余复刻类型不生效）
        # 0 - 通用场景（默认）；
        # 1 - 聊天场景；
        # 2 - 阅读场景；
        # 3 - 资讯播报场景。
        # @type Domain: Integer
        # @param TextLanguage: 文本语种。（仅支持一句话声音复刻，其余复刻类型不生效）
        # 1 - 中文（默认）。
        # @type TextLanguage: Integer

        attr_accessor :TaskType, :Domain, :TextLanguage

        def initialize(tasktype=nil, domain=nil, textlanguage=nil)
          @TaskType = tasktype
          @Domain = domain
          @TextLanguage = textlanguage
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Domain = params['Domain']
          @TextLanguage = params['TextLanguage']
        end
      end

      # GetTrainingText返回参数结构体
      class GetTrainingTextResponse < TencentCloud::Common::AbstractModel
        # @param Data: 文本列表
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.TrainingTexts`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # GetVRSVoiceTypeInfo请求参数结构体
      class GetVRSVoiceTypeInfoRequest < TencentCloud::Common::AbstractModel
        # @param VoiceType: 音色id。
        # @type VoiceType: Integer
        # @param TaskType: 0 - 除快速声音复刻外其他复刻类型（默认）； 5 - 快速声音复刻。 默认为0。
        # @type TaskType: Integer
        # @param FastVoiceType: 快速复刻音色id。
        # @type FastVoiceType: String

        attr_accessor :VoiceType, :TaskType, :FastVoiceType

        def initialize(voicetype=nil, tasktype=nil, fastvoicetype=nil)
          @VoiceType = voicetype
          @TaskType = tasktype
          @FastVoiceType = fastvoicetype
        end

        def deserialize(params)
          @VoiceType = params['VoiceType']
          @TaskType = params['TaskType']
          @FastVoiceType = params['FastVoiceType']
        end
      end

      # GetVRSVoiceTypeInfo返回参数结构体
      class GetVRSVoiceTypeInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 音色信息
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.VoiceTypeInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VoiceTypeInfo.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # GetVRSVoiceTypes请求参数结构体
      class GetVRSVoiceTypesRequest < TencentCloud::Common::AbstractModel
        # @param TaskType: 复刻类型。
        # 0 - 除快速声音复刻外其他复刻类型（默认）；
        # 5 - 一句话声音复刻。
        # @type TaskType: Integer

        attr_accessor :TaskType

        def initialize(tasktype=nil)
          @TaskType = tasktype
        end

        def deserialize(params)
          @TaskType = params['TaskType']
        end
      end

      # GetVRSVoiceTypes返回参数结构体
      class GetVRSVoiceTypesResponse < TencentCloud::Common::AbstractModel
        # @param Data: 复刻音色信息
        # @type Data: :class:`Tencentcloud::Vrs.v20200824.models.VoiceTypeListData`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = VoiceTypeListData.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 训练文本
      class TrainingText < TencentCloud::Common::AbstractModel
        # @param TextId: 文本ID
        # 当复刻类型为一句话声音复刻时，生成的TextId有效期为7天，且在成功创建一次复刻任务后失效。
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

      # 复刻音色详情
      class VoiceTypeInfo < TencentCloud::Common::AbstractModel
        # @param VoiceType: 音色id。（若为一句话复刻时，该值为固定值“200000000”）
        # @type VoiceType: Integer
        # @param VoiceName: 音色名称
        # @type VoiceName: String
        # @param VoiceGender: 音色性别: 1-male 2-female
        # @type VoiceGender: Integer
        # @param TaskType: 复刻类型: 1-基础版复刻
        # @type TaskType: Integer
        # @param TaskID: 复刻任务 ID
        # @type TaskID: String
        # @param DateCreated: 创建时间
        # @type DateCreated: String
        # @param IsDeployed: 部署状态。若已部署，则可通过语音合成接口调用该音色
        # @type IsDeployed: Boolean
        # @param ExpireTime: 任务过期时间。（当复刻类型为一句话复刻时展示）

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param FastVoiceType: 快速复刻音色ID。（当复刻类型为一句话复刻时展示）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FastVoiceType: String

        attr_accessor :VoiceType, :VoiceName, :VoiceGender, :TaskType, :TaskID, :DateCreated, :IsDeployed, :ExpireTime, :FastVoiceType

        def initialize(voicetype=nil, voicename=nil, voicegender=nil, tasktype=nil, taskid=nil, datecreated=nil, isdeployed=nil, expiretime=nil, fastvoicetype=nil)
          @VoiceType = voicetype
          @VoiceName = voicename
          @VoiceGender = voicegender
          @TaskType = tasktype
          @TaskID = taskid
          @DateCreated = datecreated
          @IsDeployed = isdeployed
          @ExpireTime = expiretime
          @FastVoiceType = fastvoicetype
        end

        def deserialize(params)
          @VoiceType = params['VoiceType']
          @VoiceName = params['VoiceName']
          @VoiceGender = params['VoiceGender']
          @TaskType = params['TaskType']
          @TaskID = params['TaskID']
          @DateCreated = params['DateCreated']
          @IsDeployed = params['IsDeployed']
          @ExpireTime = params['ExpireTime']
          @FastVoiceType = params['FastVoiceType']
        end
      end

      # 音色信息列表
      class VoiceTypeListData < TencentCloud::Common::AbstractModel
        # @param VoiceTypeList: 音色信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceTypeList: Array

        attr_accessor :VoiceTypeList

        def initialize(voicetypelist=nil)
          @VoiceTypeList = voicetypelist
        end

        def deserialize(params)
          unless params['VoiceTypeList'].nil?
            @VoiceTypeList = []
            params['VoiceTypeList'].each do |i|
              voicetypeinfo_tmp = VoiceTypeInfo.new
              voicetypeinfo_tmp.deserialize(i)
              @VoiceTypeList << voicetypeinfo_tmp
            end
          end
        end
      end

      # 音频检测提示信息：
      # 1.检测字是否存在多读、 少读、 错读等
      # 2.检测准确度和流畅度
      class Words < TencentCloud::Common::AbstractModel
        # @param PronAccuracy: 准确度 (小于75则认为不合格)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PronAccuracy: Float
        # @param PronFluency: 流畅度 (小于0.95则认为不合格)
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

