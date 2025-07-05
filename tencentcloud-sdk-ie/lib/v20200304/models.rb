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
  module Ie
    module V20200304
      # 去编码毛刺、伪影参数
      class ArtifactReduction < TencentCloud::Common::AbstractModel
        # @param Type: 去毛刺方式：weak,,strong
        # @type Type: String
        # @param Algorithm: 去毛刺算法，可选项：
        # edaf,
        # wdaf，
        # 默认edaf。
        # 注意：此参数已经弃用
        # @type Algorithm: String

        attr_accessor :Type, :Algorithm

        def initialize(type=nil, algorithm=nil)
          @Type = type
          @Algorithm = algorithm
        end

        def deserialize(params)
          @Type = params['Type']
          @Algorithm = params['Algorithm']
        end
      end

      # 音频音效增强，只支持无背景音的音频
      class AudioEnhance < TencentCloud::Common::AbstractModel
        # @param Type: 音效增强种类，可选项：normal
        # @type Type: String

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 音频参数信息
      class AudioInfo < TencentCloud::Common::AbstractModel
        # @param Bitrate: 音频码率，取值范围：0 和 [26, 256]，单位：kbps。
        # 注意：当取值为 0，表示音频码率和原始音频保持一致。
        # @type Bitrate: Integer
        # @param Codec: 音频编码器，可选项：aac,mp3,ac3,flac,mp2。
        # @type Codec: String
        # @param Channel: 声道数，可选项：
        # 1：单声道，
        # 2：双声道，
        # 6：立体声。
        # @type Channel: Integer
        # @param SampleRate: 采样率，单位：Hz。可选项：32000，44100,48000
        # @type SampleRate: Integer
        # @param Denoise: 音频降噪信息
        # @type Denoise: :class:`Tencentcloud::Ie.v20200304.models.Denoise`
        # @param EnableMuteAudio: 开启添加静音，可选项：
        # 0：不开启，
        # 1：开启，
        # 默认不开启
        # @type EnableMuteAudio: Integer
        # @param LoudnessInfo: 音频响度信息
        # @type LoudnessInfo: :class:`Tencentcloud::Ie.v20200304.models.LoudnessInfo`
        # @param AudioEnhance: 音频音效增强
        # @type AudioEnhance: :class:`Tencentcloud::Ie.v20200304.models.AudioEnhance`
        # @param RemoveReverb: 去除混音
        # @type RemoveReverb: :class:`Tencentcloud::Ie.v20200304.models.RemoveReverb`

        attr_accessor :Bitrate, :Codec, :Channel, :SampleRate, :Denoise, :EnableMuteAudio, :LoudnessInfo, :AudioEnhance, :RemoveReverb

        def initialize(bitrate=nil, codec=nil, channel=nil, samplerate=nil, denoise=nil, enablemuteaudio=nil, loudnessinfo=nil, audioenhance=nil, removereverb=nil)
          @Bitrate = bitrate
          @Codec = codec
          @Channel = channel
          @SampleRate = samplerate
          @Denoise = denoise
          @EnableMuteAudio = enablemuteaudio
          @LoudnessInfo = loudnessinfo
          @AudioEnhance = audioenhance
          @RemoveReverb = removereverb
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @Codec = params['Codec']
          @Channel = params['Channel']
          @SampleRate = params['SampleRate']
          unless params['Denoise'].nil?
            @Denoise = Denoise.new
            @Denoise.deserialize(params['Denoise'])
          end
          @EnableMuteAudio = params['EnableMuteAudio']
          unless params['LoudnessInfo'].nil?
            @LoudnessInfo = LoudnessInfo.new
            @LoudnessInfo.deserialize(params['LoudnessInfo'])
          end
          unless params['AudioEnhance'].nil?
            @AudioEnhance = AudioEnhance.new
            @AudioEnhance.deserialize(params['AudioEnhance'])
          end
          unless params['RemoveReverb'].nil?
            @RemoveReverb = RemoveReverb.new
            @RemoveReverb.deserialize(params['RemoveReverb'])
          end
        end
      end

      # 任务结束后生成的文件音频信息
      class AudioInfoResultItem < TencentCloud::Common::AbstractModel
        # @param Stream: 音频流的流id。
        # @type Stream: Integer
        # @param Sample: 音频采样率 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sample: Integer
        # @param Channel: 音频声道数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Channel: Integer
        # @param Codec: 编码格式，如aac, mp3等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Codec: String
        # @param Bitrate: 码率，单位：bps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bitrate: Integer
        # @param Duration: 音频时长，单位：ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer

        attr_accessor :Stream, :Sample, :Channel, :Codec, :Bitrate, :Duration

        def initialize(stream=nil, sample=nil, channel=nil, codec=nil, bitrate=nil, duration=nil)
          @Stream = stream
          @Sample = sample
          @Channel = channel
          @Codec = codec
          @Bitrate = bitrate
          @Duration = duration
        end

        def deserialize(params)
          @Stream = params['Stream']
          @Sample = params['Sample']
          @Channel = params['Channel']
          @Codec = params['Codec']
          @Bitrate = params['Bitrate']
          @Duration = params['Duration']
        end
      end

      # 任务结果回调地址信息
      class CallbackInfo < TencentCloud::Common::AbstractModel
        # @param Url: 回调URL。
        # @type Url: String

        attr_accessor :Url

        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
        end
      end

      # 视频分类识别任务参数信息
      class ClassificationEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启视频分类识别。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo

        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 视频分类识别结果信息
      class ClassificationTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 视频分类识别结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet

        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['ItemSet'].nil?
            @ItemSet = []
            params['ItemSet'].each do |i|
              classificationtaskresultitem_tmp = ClassificationTaskResultItem.new
              classificationtaskresultitem_tmp.deserialize(i)
              @ItemSet << classificationtaskresultitem_tmp
            end
          end
        end
      end

      # 视频分类识别结果项
      class ClassificationTaskResultItem < TencentCloud::Common::AbstractModel
        # @param Classification: 分类名称。
        # @type Classification: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Classification, :Confidence

        def initialize(classification=nil, confidence=nil)
          @Classification = classification
          @Confidence = confidence
        end

        def deserialize(params)
          @Classification = params['Classification']
          @Confidence = params['Confidence']
        end
      end

      # 颜色增强参数
      class ColorEnhance < TencentCloud::Common::AbstractModel
        # @param Type: 颜色增强类型，可选项：
        # 1.  tra；
        # 2.  weak；
        # 3.  normal;
        # 4.  strong;
        # 注意：tra不支持自适应调整，处理速度更快；weak,normal,strong支持基于画面颜色自适应，处理速度更慢。
        # @type Type: String

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 任务视频cos授权信息
      class CosAuthMode < TencentCloud::Common::AbstractModel
        # @param Type: 授权类型，可选值：
        # 0：bucket授权，需要将对应bucket授权给本服务帐号（3020447271和100012301793），否则会读写cos失败；
        # 1：key托管，把cos的账号id和key托管于本服务，本服务会提供一个托管id；
        # 3：临时key授权。
        # 注意：目前智能编辑还不支持临时key授权；画质重生目前只支持bucket授权
        # @type Type: Integer
        # @param HostedId: cos账号托管id，Type等于1时必选。
        # @type HostedId: String
        # @param SecretId: cos身份识别id，Type等于3时必选。
        # @type SecretId: String
        # @param SecretKey: cos身份秘钥，Type等于3时必选。
        # @type SecretKey: String
        # @param Token: 临时授权 token，Type等于3时必选。
        # @type Token: String

        attr_accessor :Type, :HostedId, :SecretId, :SecretKey, :Token

        def initialize(type=nil, hostedid=nil, secretid=nil, secretkey=nil, token=nil)
          @Type = type
          @HostedId = hostedid
          @SecretId = secretid
          @SecretKey = secretkey
          @Token = token
        end

        def deserialize(params)
          @Type = params['Type']
          @HostedId = params['HostedId']
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @Token = params['Token']
        end
      end

      # 任务视频cos信息
      class CosInfo < TencentCloud::Common::AbstractModel
        # @param Region: cos 区域值。例如：ap-beijing。
        # @type Region: String
        # @param Bucket: cos 存储桶，格式为BuketName-AppId。例如：test-123456。
        # @type Bucket: String
        # @param Path: cos 路径。
        # 对于写表示目录，例如：/test；
        # 对于读表示文件路径，例如：/test/test.mp4。
        # @type Path: String
        # @param CosAuthMode: cos 授权信息，不填默认为公有权限。
        # @type CosAuthMode: :class:`Tencentcloud::Ie.v20200304.models.CosAuthMode`

        attr_accessor :Region, :Bucket, :Path, :CosAuthMode

        def initialize(region=nil, bucket=nil, path=nil, cosauthmode=nil)
          @Region = region
          @Bucket = bucket
          @Path = path
          @CosAuthMode = cosauthmode
        end

        def deserialize(params)
          @Region = params['Region']
          @Bucket = params['Bucket']
          @Path = params['Path']
          unless params['CosAuthMode'].nil?
            @CosAuthMode = CosAuthMode.new
            @CosAuthMode.deserialize(params['CosAuthMode'])
          end
        end
      end

      # 智能封面任务参数信息
      class CoverEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启智能封面。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo

        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 智能封面结果信息
      class CoverTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 智能封面结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet

        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['ItemSet'].nil?
            @ItemSet = []
            params['ItemSet'].each do |i|
              covertaskresultitem_tmp = CoverTaskResultItem.new
              covertaskresultitem_tmp.deserialize(i)
              @ItemSet << covertaskresultitem_tmp
            end
          end
        end
      end

      # 智能封面结果项
      class CoverTaskResultItem < TencentCloud::Common::AbstractModel
        # @param CoverUrl: 智能封面地址。
        # @type CoverUrl: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :CoverUrl, :Confidence

        def initialize(coverurl=nil, confidence=nil)
          @CoverUrl = coverurl
          @Confidence = confidence
        end

        def deserialize(params)
          @CoverUrl = params['CoverUrl']
          @Confidence = params['Confidence']
        end
      end

      # CreateEditingTask请求参数结构体
      class CreateEditingTaskRequest < TencentCloud::Common::AbstractModel
        # @param EditingInfo: 智能编辑任务参数。
        # @type EditingInfo: :class:`Tencentcloud::Ie.v20200304.models.EditingInfo`
        # @param DownInfo: 视频源信息。
        # @type DownInfo: :class:`Tencentcloud::Ie.v20200304.models.DownInfo`
        # @param SaveInfo: 结果存储信息。对于包含智能拆条、智能集锦或者智能封面的任务必选。
        # @type SaveInfo: :class:`Tencentcloud::Ie.v20200304.models.SaveInfo`
        # @param CallbackInfo: 任务结果回调地址信息。
        # @type CallbackInfo: :class:`Tencentcloud::Ie.v20200304.models.CallbackInfo`

        attr_accessor :EditingInfo, :DownInfo, :SaveInfo, :CallbackInfo

        def initialize(editinginfo=nil, downinfo=nil, saveinfo=nil, callbackinfo=nil)
          @EditingInfo = editinginfo
          @DownInfo = downinfo
          @SaveInfo = saveinfo
          @CallbackInfo = callbackinfo
        end

        def deserialize(params)
          unless params['EditingInfo'].nil?
            @EditingInfo = EditingInfo.new
            @EditingInfo.deserialize(params['EditingInfo'])
          end
          unless params['DownInfo'].nil?
            @DownInfo = DownInfo.new
            @DownInfo.deserialize(params['DownInfo'])
          end
          unless params['SaveInfo'].nil?
            @SaveInfo = SaveInfo.new
            @SaveInfo.deserialize(params['SaveInfo'])
          end
          unless params['CallbackInfo'].nil?
            @CallbackInfo = CallbackInfo.new
            @CallbackInfo.deserialize(params['CallbackInfo'])
          end
        end
      end

      # CreateEditingTask返回参数结构体
      class CreateEditingTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑任务 ID，可以通过该 ID 查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateMediaProcessTask请求参数结构体
      class CreateMediaProcessTaskRequest < TencentCloud::Common::AbstractModel
        # @param MediaProcessInfo: 编辑处理任务参数。
        # @type MediaProcessInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaProcessInfo`
        # @param SourceInfoSet: 编辑处理任务输入源列表。
        # @type SourceInfoSet: Array
        # @param SaveInfoSet: 结果存储信息，对于涉及存储的请求必选。部子任务支持数组备份写，具体以对应任务文档为准。
        # @type SaveInfoSet: Array
        # @param CallbackInfoSet: 任务结果回调地址信息。部子任务支持数组备份回调，具体以对应任务文档为准。
        # @type CallbackInfoSet: Array

        attr_accessor :MediaProcessInfo, :SourceInfoSet, :SaveInfoSet, :CallbackInfoSet

        def initialize(mediaprocessinfo=nil, sourceinfoset=nil, saveinfoset=nil, callbackinfoset=nil)
          @MediaProcessInfo = mediaprocessinfo
          @SourceInfoSet = sourceinfoset
          @SaveInfoSet = saveinfoset
          @CallbackInfoSet = callbackinfoset
        end

        def deserialize(params)
          unless params['MediaProcessInfo'].nil?
            @MediaProcessInfo = MediaProcessInfo.new
            @MediaProcessInfo.deserialize(params['MediaProcessInfo'])
          end
          unless params['SourceInfoSet'].nil?
            @SourceInfoSet = []
            params['SourceInfoSet'].each do |i|
              mediasourceinfo_tmp = MediaSourceInfo.new
              mediasourceinfo_tmp.deserialize(i)
              @SourceInfoSet << mediasourceinfo_tmp
            end
          end
          unless params['SaveInfoSet'].nil?
            @SaveInfoSet = []
            params['SaveInfoSet'].each do |i|
              saveinfo_tmp = SaveInfo.new
              saveinfo_tmp.deserialize(i)
              @SaveInfoSet << saveinfo_tmp
            end
          end
          unless params['CallbackInfoSet'].nil?
            @CallbackInfoSet = []
            params['CallbackInfoSet'].each do |i|
              callbackinfo_tmp = CallbackInfo.new
              callbackinfo_tmp.deserialize(i)
              @CallbackInfoSet << callbackinfo_tmp
            end
          end
        end
      end

      # CreateMediaProcessTask返回参数结构体
      class CreateMediaProcessTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑任务 ID，可以通过该 ID 查询任务状态和结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateMediaQualityRestorationTask请求参数结构体
      class CreateMediaQualityRestorationTaskRequest < TencentCloud::Common::AbstractModel
        # @param DownInfo: 源文件地址。
        # @type DownInfo: :class:`Tencentcloud::Ie.v20200304.models.DownInfo`
        # @param TransInfo: 画质重生任务参数信息。
        # @type TransInfo: Array
        # @param SaveInfo: 任务结束后文件存储信息。
        # @type SaveInfo: :class:`Tencentcloud::Ie.v20200304.models.SaveInfo`
        # @param CallbackInfo: 任务结果回调地址信息。
        # @type CallbackInfo: :class:`Tencentcloud::Ie.v20200304.models.CallbackInfo`
        # @param TopSpeedCodecChannel: 极速高清体验馆渠道标志。
        # @type TopSpeedCodecChannel: Integer

        attr_accessor :DownInfo, :TransInfo, :SaveInfo, :CallbackInfo, :TopSpeedCodecChannel

        def initialize(downinfo=nil, transinfo=nil, saveinfo=nil, callbackinfo=nil, topspeedcodecchannel=nil)
          @DownInfo = downinfo
          @TransInfo = transinfo
          @SaveInfo = saveinfo
          @CallbackInfo = callbackinfo
          @TopSpeedCodecChannel = topspeedcodecchannel
        end

        def deserialize(params)
          unless params['DownInfo'].nil?
            @DownInfo = DownInfo.new
            @DownInfo.deserialize(params['DownInfo'])
          end
          unless params['TransInfo'].nil?
            @TransInfo = []
            params['TransInfo'].each do |i|
              subtasktranscodeinfo_tmp = SubTaskTranscodeInfo.new
              subtasktranscodeinfo_tmp.deserialize(i)
              @TransInfo << subtasktranscodeinfo_tmp
            end
          end
          unless params['SaveInfo'].nil?
            @SaveInfo = SaveInfo.new
            @SaveInfo.deserialize(params['SaveInfo'])
          end
          unless params['CallbackInfo'].nil?
            @CallbackInfo = CallbackInfo.new
            @CallbackInfo.deserialize(params['CallbackInfo'])
          end
          @TopSpeedCodecChannel = params['TopSpeedCodecChannel']
        end
      end

      # CreateMediaQualityRestorationTask返回参数结构体
      class CreateMediaQualityRestorationTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 画质重生任务ID，可以通过该ID查询任务状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # CreateQualityControlTask请求参数结构体
      class CreateQualityControlTaskRequest < TencentCloud::Common::AbstractModel
        # @param QualityControlInfo: 质检任务参数
        # @type QualityControlInfo: :class:`Tencentcloud::Ie.v20200304.models.QualityControlInfo`
        # @param DownInfo: 视频源信息
        # @type DownInfo: :class:`Tencentcloud::Ie.v20200304.models.DownInfo`
        # @param CallbackInfo: 任务结果回调地址信息
        # @type CallbackInfo: :class:`Tencentcloud::Ie.v20200304.models.CallbackInfo`

        attr_accessor :QualityControlInfo, :DownInfo, :CallbackInfo

        def initialize(qualitycontrolinfo=nil, downinfo=nil, callbackinfo=nil)
          @QualityControlInfo = qualitycontrolinfo
          @DownInfo = downinfo
          @CallbackInfo = callbackinfo
        end

        def deserialize(params)
          unless params['QualityControlInfo'].nil?
            @QualityControlInfo = QualityControlInfo.new
            @QualityControlInfo.deserialize(params['QualityControlInfo'])
          end
          unless params['DownInfo'].nil?
            @DownInfo = DownInfo.new
            @DownInfo.deserialize(params['DownInfo'])
          end
          unless params['CallbackInfo'].nil?
            @CallbackInfo = CallbackInfo.new
            @CallbackInfo.deserialize(params['CallbackInfo'])
          end
        end
      end

      # CreateQualityControlTask返回参数结构体
      class CreateQualityControlTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 质检任务 ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 视频Dar信息
      class DarInfo < TencentCloud::Common::AbstractModel
        # @param FillMode: 填充模式，可选值：
        # 1：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。
        # 2：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“。
        # 默认为2。
        # @type FillMode: Integer

        attr_accessor :FillMode

        def initialize(fillmode=nil)
          @FillMode = fillmode
        end

        def deserialize(params)
          @FillMode = params['FillMode']
        end
      end

      # 音频降噪
      class Denoise < TencentCloud::Common::AbstractModel
        # @param Type: 音频降噪强度，可选项：
        # 1. weak
        # 2.normal，
        # 3.strong
        # 默认为weak
        # @type Type: String

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 去噪参数
      class Denoising < TencentCloud::Common::AbstractModel
        # @param Type: 去噪方式，可选项：
        # templ：时域降噪；
        # spatial：空域降噪,
        # fast-spatial：快速空域降噪。
        # 注意：可选择组合方式：
        # 1.type:"templ,spatial" ;
        # 2.type:"templ,fast-spatial"。
        # @type Type: String
        # @param TemplStrength: 时域去噪强度，可选值：0.0-1.0 。小于0.0的默认为0.0，大于1.0的默认为1.0。
        # @type TemplStrength: Float
        # @param SpatialStrength: 空域去噪强度，可选值：0.0-1.0 。小于0.0的默认为0.0，大于1.0的默认为1.0。
        # @type SpatialStrength: Float

        attr_accessor :Type, :TemplStrength, :SpatialStrength

        def initialize(type=nil, templstrength=nil, spatialstrength=nil)
          @Type = type
          @TemplStrength = templstrength
          @SpatialStrength = spatialstrength
        end

        def deserialize(params)
          @Type = params['Type']
          @TemplStrength = params['TemplStrength']
          @SpatialStrength = params['SpatialStrength']
        end
      end

      # DescribeEditingTaskResult请求参数结构体
      class DescribeEditingTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑任务 ID。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeEditingTaskResult返回参数结构体
      class DescribeEditingTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskResult: 编辑任务结果信息。
        # @type TaskResult: :class:`Tencentcloud::Ie.v20200304.models.EditingTaskResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskResult, :RequestId

        def initialize(taskresult=nil, requestid=nil)
          @TaskResult = taskresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskResult'].nil?
            @TaskResult = EditingTaskResult.new
            @TaskResult.deserialize(params['TaskResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMediaProcessTaskResult请求参数结构体
      class DescribeMediaProcessTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑处理任务ID。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeMediaProcessTaskResult返回参数结构体
      class DescribeMediaProcessTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskResult: 任务处理结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskResult: :class:`Tencentcloud::Ie.v20200304.models.MediaProcessTaskResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskResult, :RequestId

        def initialize(taskresult=nil, requestid=nil)
          @TaskResult = taskresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskResult'].nil?
            @TaskResult = MediaProcessTaskResult.new
            @TaskResult.deserialize(params['TaskResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMediaQualityRestorationTaskRusult请求参数结构体
      class DescribeMediaQualityRestorationTaskRusultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 画质重生任务ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeMediaQualityRestorationTaskRusult返回参数结构体
      class DescribeMediaQualityRestorationTaskRusultResponse < TencentCloud::Common::AbstractModel
        # @param TaskResult: 画质重生任务结果信息
        # @type TaskResult: :class:`Tencentcloud::Ie.v20200304.models.MediaQualityRestorationTaskResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskResult, :RequestId

        def initialize(taskresult=nil, requestid=nil)
          @TaskResult = taskresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskResult'].nil?
            @TaskResult = MediaQualityRestorationTaskResult.new
            @TaskResult.deserialize(params['TaskResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeQualityControlTaskResult请求参数结构体
      class DescribeQualityControlTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 质检任务 ID
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # DescribeQualityControlTaskResult返回参数结构体
      class DescribeQualityControlTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param TaskResult: 质检任务结果信息
        # @type TaskResult: :class:`Tencentcloud::Ie.v20200304.models.QualityControlInfoTaskResult`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskResult, :RequestId

        def initialize(taskresult=nil, requestid=nil)
          @TaskResult = taskresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['TaskResult'].nil?
            @TaskResult = QualityControlInfoTaskResult.new
            @TaskResult.deserialize(params['TaskResult'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 视频源信息
      class DownInfo < TencentCloud::Common::AbstractModel
        # @param Type: 下载类型，可选值：
        # 0：UrlInfo；
        # 1：CosInfo。
        # @type Type: Integer
        # @param UrlInfo: Url形式下载信息，当Type等于0时必选。
        # @type UrlInfo: :class:`Tencentcloud::Ie.v20200304.models.UrlInfo`
        # @param CosInfo: Cos形式下载信息，当Type等于1时必选。
        # @type CosInfo: :class:`Tencentcloud::Ie.v20200304.models.CosInfo`

        attr_accessor :Type, :UrlInfo, :CosInfo

        def initialize(type=nil, urlinfo=nil, cosinfo=nil)
          @Type = type
          @UrlInfo = urlinfo
          @CosInfo = cosinfo
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['UrlInfo'].nil?
            @UrlInfo = UrlInfo.new
            @UrlInfo.deserialize(params['UrlInfo'])
          end
          unless params['CosInfo'].nil?
            @CosInfo = CosInfo.new
            @CosInfo.deserialize(params['CosInfo'])
          end
        end
      end

      # 动图参数
      class DynamicImageInfo < TencentCloud::Common::AbstractModel
        # @param Quality: 画面质量，范围：1~100。
        # <li>对于webp格式，默认：75</li>
        # <li>对于gif格式，小于10为低质量，大于50为高质量，其它为普通。默认：低质量。</li>
        # @type Quality: Integer

        attr_accessor :Quality

        def initialize(quality=nil)
          @Quality = quality
        end

        def deserialize(params)
          @Quality = params['Quality']
        end
      end

      # 画质重生子任务视频剪辑参数
      class EditInfo < TencentCloud::Common::AbstractModel
        # @param StartTime: 剪辑开始时间，单位：ms。
        # @type StartTime: Integer
        # @param EndTime: 剪辑结束时间，单位：ms
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

      # 智能编辑任务参数信息
      class EditingInfo < TencentCloud::Common::AbstractModel
        # @param TagEditingInfo: 视频标签识别任务参数，不填则不开启。
        # @type TagEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.TagEditingInfo`
        # @param ClassificationEditingInfo: 视频分类识别任务参数，不填则不开启。
        # @type ClassificationEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.ClassificationEditingInfo`
        # @param StripEditingInfo: 智能拆条任务参数，不填则不开启。
        # @type StripEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.StripEditingInfo`
        # @param HighlightsEditingInfo: 智能集锦任务参数，不填则不开启。
        # @type HighlightsEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.HighlightsEditingInfo`
        # @param CoverEditingInfo: 智能封面任务参数，不填则不开启。
        # @type CoverEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.CoverEditingInfo`
        # @param OpeningEndingEditingInfo: 片头片尾识别任务参数，不填则不开启。
        # @type OpeningEndingEditingInfo: :class:`Tencentcloud::Ie.v20200304.models.OpeningEndingEditingInfo`

        attr_accessor :TagEditingInfo, :ClassificationEditingInfo, :StripEditingInfo, :HighlightsEditingInfo, :CoverEditingInfo, :OpeningEndingEditingInfo

        def initialize(tageditinginfo=nil, classificationeditinginfo=nil, stripeditinginfo=nil, highlightseditinginfo=nil, covereditinginfo=nil, openingendingeditinginfo=nil)
          @TagEditingInfo = tageditinginfo
          @ClassificationEditingInfo = classificationeditinginfo
          @StripEditingInfo = stripeditinginfo
          @HighlightsEditingInfo = highlightseditinginfo
          @CoverEditingInfo = covereditinginfo
          @OpeningEndingEditingInfo = openingendingeditinginfo
        end

        def deserialize(params)
          unless params['TagEditingInfo'].nil?
            @TagEditingInfo = TagEditingInfo.new
            @TagEditingInfo.deserialize(params['TagEditingInfo'])
          end
          unless params['ClassificationEditingInfo'].nil?
            @ClassificationEditingInfo = ClassificationEditingInfo.new
            @ClassificationEditingInfo.deserialize(params['ClassificationEditingInfo'])
          end
          unless params['StripEditingInfo'].nil?
            @StripEditingInfo = StripEditingInfo.new
            @StripEditingInfo.deserialize(params['StripEditingInfo'])
          end
          unless params['HighlightsEditingInfo'].nil?
            @HighlightsEditingInfo = HighlightsEditingInfo.new
            @HighlightsEditingInfo.deserialize(params['HighlightsEditingInfo'])
          end
          unless params['CoverEditingInfo'].nil?
            @CoverEditingInfo = CoverEditingInfo.new
            @CoverEditingInfo.deserialize(params['CoverEditingInfo'])
          end
          unless params['OpeningEndingEditingInfo'].nil?
            @OpeningEndingEditingInfo = OpeningEndingEditingInfo.new
            @OpeningEndingEditingInfo.deserialize(params['OpeningEndingEditingInfo'])
          end
        end
      end

      # 智能识别任务结果信息
      class EditingTaskResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑任务 ID。
        # @type TaskId: String
        # @param Status: 编辑任务状态。
        # 1：执行中；2：已完成。
        # @type Status: Integer
        # @param TagTaskResult: 视频标签识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagTaskResult: :class:`Tencentcloud::Ie.v20200304.models.TagTaskResult`
        # @param ClassificationTaskResult: 视频分类识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationTaskResult: :class:`Tencentcloud::Ie.v20200304.models.ClassificationTaskResult`
        # @param StripTaskResult: 智能拆条结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StripTaskResult: :class:`Tencentcloud::Ie.v20200304.models.StripTaskResult`
        # @param HighlightsTaskResult: 智能集锦结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighlightsTaskResult: :class:`Tencentcloud::Ie.v20200304.models.HighlightsTaskResult`
        # @param CoverTaskResult: 智能封面结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverTaskResult: :class:`Tencentcloud::Ie.v20200304.models.CoverTaskResult`
        # @param OpeningEndingTaskResult: 片头片尾识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OpeningEndingTaskResult: :class:`Tencentcloud::Ie.v20200304.models.OpeningEndingTaskResult`

        attr_accessor :TaskId, :Status, :TagTaskResult, :ClassificationTaskResult, :StripTaskResult, :HighlightsTaskResult, :CoverTaskResult, :OpeningEndingTaskResult

        def initialize(taskid=nil, status=nil, tagtaskresult=nil, classificationtaskresult=nil, striptaskresult=nil, highlightstaskresult=nil, covertaskresult=nil, openingendingtaskresult=nil)
          @TaskId = taskid
          @Status = status
          @TagTaskResult = tagtaskresult
          @ClassificationTaskResult = classificationtaskresult
          @StripTaskResult = striptaskresult
          @HighlightsTaskResult = highlightstaskresult
          @CoverTaskResult = covertaskresult
          @OpeningEndingTaskResult = openingendingtaskresult
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          unless params['TagTaskResult'].nil?
            @TagTaskResult = TagTaskResult.new
            @TagTaskResult.deserialize(params['TagTaskResult'])
          end
          unless params['ClassificationTaskResult'].nil?
            @ClassificationTaskResult = ClassificationTaskResult.new
            @ClassificationTaskResult.deserialize(params['ClassificationTaskResult'])
          end
          unless params['StripTaskResult'].nil?
            @StripTaskResult = StripTaskResult.new
            @StripTaskResult.deserialize(params['StripTaskResult'])
          end
          unless params['HighlightsTaskResult'].nil?
            @HighlightsTaskResult = HighlightsTaskResult.new
            @HighlightsTaskResult.deserialize(params['HighlightsTaskResult'])
          end
          unless params['CoverTaskResult'].nil?
            @CoverTaskResult = CoverTaskResult.new
            @CoverTaskResult.deserialize(params['CoverTaskResult'])
          end
          unless params['OpeningEndingTaskResult'].nil?
            @OpeningEndingTaskResult = OpeningEndingTaskResult.new
            @OpeningEndingTaskResult.deserialize(params['OpeningEndingTaskResult'])
          end
        end
      end

      # 人脸保护参数
      class FaceProtect < TencentCloud::Common::AbstractModel
        # @param FaceUsmRatio: 人脸区域增强强度，可选项：0.0-1.0。小于0.0的默认为0.0，大于1.0的默认为1.0。
        # @type FaceUsmRatio: Float

        attr_accessor :FaceUsmRatio

        def initialize(faceusmratio=nil)
          @FaceUsmRatio = faceusmratio
        end

        def deserialize(params)
          @FaceUsmRatio = params['FaceUsmRatio']
        end
      end

      # 画质重生处理后文件的详细信息
      class FileInfo < TencentCloud::Common::AbstractModel
        # @param FileSize: 任务结束后生成的文件大小。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param FileType: 任务结束后生成的文件格式，例如：mp4,flv等等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param Bitrate: 任务结束后生成的文件整体码率，单位：bps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bitrate: Integer
        # @param Duration: 任务结束后生成的文件时长，单位：ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param VideoInfoResult: 任务结束后生成的文件视频信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoInfoResult: Array
        # @param AudioInfoResult: 任务结束后生成的文件音频信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioInfoResult: Array

        attr_accessor :FileSize, :FileType, :Bitrate, :Duration, :VideoInfoResult, :AudioInfoResult

        def initialize(filesize=nil, filetype=nil, bitrate=nil, duration=nil, videoinforesult=nil, audioinforesult=nil)
          @FileSize = filesize
          @FileType = filetype
          @Bitrate = bitrate
          @Duration = duration
          @VideoInfoResult = videoinforesult
          @AudioInfoResult = audioinforesult
        end

        def deserialize(params)
          @FileSize = params['FileSize']
          @FileType = params['FileType']
          @Bitrate = params['Bitrate']
          @Duration = params['Duration']
          unless params['VideoInfoResult'].nil?
            @VideoInfoResult = []
            params['VideoInfoResult'].each do |i|
              videoinforesultitem_tmp = VideoInfoResultItem.new
              videoinforesultitem_tmp.deserialize(i)
              @VideoInfoResult << videoinforesultitem_tmp
            end
          end
          unless params['AudioInfoResult'].nil?
            @AudioInfoResult = []
            params['AudioInfoResult'].each do |i|
              audioinforesultitem_tmp = AudioInfoResultItem.new
              audioinforesultitem_tmp.deserialize(i)
              @AudioInfoResult << audioinforesultitem_tmp
            end
          end
        end
      end

      # 帧标签
      class FrameTagItem < TencentCloud::Common::AbstractModel
        # @param StartPts: 标签起始时间戳PTS(ms)
        # @type StartPts: Integer
        # @param EndPts: 语句结束时间戳PTS(ms)
        # @type EndPts: Integer
        # @param Period: 字符串形式的起始结束时间
        # @type Period: String
        # @param TagItems: 标签数组
        # @type TagItems: Array

        attr_accessor :StartPts, :EndPts, :Period, :TagItems

        def initialize(startpts=nil, endpts=nil, period=nil, tagitems=nil)
          @StartPts = startpts
          @EndPts = endpts
          @Period = period
          @TagItems = tagitems
        end

        def deserialize(params)
          @StartPts = params['StartPts']
          @EndPts = params['EndPts']
          @Period = params['Period']
          unless params['TagItems'].nil?
            @TagItems = []
            params['TagItems'].each do |i|
              tagitem_tmp = TagItem.new
              tagitem_tmp.deserialize(i)
              @TagItems << tagitem_tmp
            end
          end
        end
      end

      # 帧标签任务参数
      class FrameTagRec < TencentCloud::Common::AbstractModel
        # @param TagType: 标签类型：
        # "Common": 通用类型
        # "Game":游戏类型
        # @type TagType: String
        # @param GameExtendType: 游戏具体类型:
        # "HonorOfKings_AnchorViews":王者荣耀主播视角
        # "HonorOfKings_GameViews":王者荣耀比赛视角
        # "LOL_AnchorViews":英雄联盟主播视角
        # "LOL_GameViews":英雄联盟比赛视角
        # "PUBG_AnchorViews":和平精英主播视角
        # "PUBG_GameViews":和平精英比赛视角
        # @type GameExtendType: String

        attr_accessor :TagType, :GameExtendType

        def initialize(tagtype=nil, gameextendtype=nil)
          @TagType = tagtype
          @GameExtendType = gameextendtype
        end

        def deserialize(params)
          @TagType = params['TagType']
          @GameExtendType = params['GameExtendType']
        end
      end

      # 帧标签结果
      class FrameTagResult < TencentCloud::Common::AbstractModel
        # @param FrameTagItems: 帧标签结果数组
        # @type FrameTagItems: Array

        attr_accessor :FrameTagItems

        def initialize(frametagitems=nil)
          @FrameTagItems = frametagitems
        end

        def deserialize(params)
          unless params['FrameTagItems'].nil?
            @FrameTagItems = []
            params['FrameTagItems'].each do |i|
              frametagitem_tmp = FrameTagItem.new
              frametagitem_tmp.deserialize(i)
              @FrameTagItems << frametagitem_tmp
            end
          end
        end
      end

      # 数字水印
      class HiddenMarkInfo < TencentCloud::Common::AbstractModel
        # @param Path: 数字水印路径,，如果不从Cos拉取水印，则必填
        # @type Path: String
        # @param Frequency: 数字水印频率，可选值：[1,256]，默认值为30
        # @type Frequency: Integer
        # @param Strength: 数字水印强度，可选值：[32,128]，默认值为64
        # @type Strength: Integer
        # @param CosInfo: 数字水印的Cos 信息，从Cos上拉取图片水印时必填。
        # @type CosInfo: :class:`Tencentcloud::Ie.v20200304.models.CosInfo`

        attr_accessor :Path, :Frequency, :Strength, :CosInfo

        def initialize(path=nil, frequency=nil, strength=nil, cosinfo=nil)
          @Path = path
          @Frequency = frequency
          @Strength = strength
          @CosInfo = cosinfo
        end

        def deserialize(params)
          @Path = params['Path']
          @Frequency = params['Frequency']
          @Strength = params['Strength']
          unless params['CosInfo'].nil?
            @CosInfo = CosInfo.new
            @CosInfo.deserialize(params['CosInfo'])
          end
        end
      end

      # 智能集锦任务参数信息
      class HighlightsEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启智能集锦。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo

        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 智能集锦结果信息
      class HighlightsTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 智能集锦结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet

        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['ItemSet'].nil?
            @ItemSet = []
            params['ItemSet'].each do |i|
              highlightstaskresultitem_tmp = HighlightsTaskResultItem.new
              highlightstaskresultitem_tmp.deserialize(i)
              @ItemSet << highlightstaskresultitem_tmp
            end
          end
        end
      end

      # 智能集锦结果项
      class HighlightsTaskResultItem < TencentCloud::Common::AbstractModel
        # @param HighlightUrl: 智能集锦地址。
        # @type HighlightUrl: String
        # @param CovImgUrl: 智能集锦封面地址。
        # @type CovImgUrl: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float
        # @param Duration: 智能集锦持续时间，单位：秒。
        # @type Duration: Float
        # @param SegmentSet: 智能集锦子片段结果集，集锦片段由这些子片段拼接生成。
        # @type SegmentSet: Array

        attr_accessor :HighlightUrl, :CovImgUrl, :Confidence, :Duration, :SegmentSet

        def initialize(highlighturl=nil, covimgurl=nil, confidence=nil, duration=nil, segmentset=nil)
          @HighlightUrl = highlighturl
          @CovImgUrl = covimgurl
          @Confidence = confidence
          @Duration = duration
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @HighlightUrl = params['HighlightUrl']
          @CovImgUrl = params['CovImgUrl']
          @Confidence = params['Confidence']
          @Duration = params['Duration']
          unless params['SegmentSet'].nil?
            @SegmentSet = []
            params['SegmentSet'].each do |i|
              highlightstaskresultitemsegment_tmp = HighlightsTaskResultItemSegment.new
              highlightstaskresultitemsegment_tmp.deserialize(i)
              @SegmentSet << highlightstaskresultitemsegment_tmp
            end
          end
        end
      end

      # 智能集锦结果片段
      class HighlightsTaskResultItemSegment < TencentCloud::Common::AbstractModel
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float
        # @param StartTimeOffset: 集锦片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 集锦片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float

        attr_accessor :Confidence, :StartTimeOffset, :EndTimeOffset

        def initialize(confidence=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 周期时间点信息。
      class IntervalTime < TencentCloud::Common::AbstractModel
        # @param Interval: 间隔周期，单位ms
        # @type Interval: Integer
        # @param StartTime: 开始时间点，单位ms
        # @type StartTime: Integer

        attr_accessor :Interval, :StartTime

        def initialize(interval=nil, starttime=nil)
          @Interval = interval
          @StartTime = starttime
        end

        def deserialize(params)
          @Interval = params['Interval']
          @StartTime = params['StartTime']
        end
      end

      # 音频响度信息
      class LoudnessInfo < TencentCloud::Common::AbstractModel
        # @param Loudness: 音频整体响度
        # @type Loudness: Float
        # @param LoudnessRange: 音频响度范围
        # @type LoudnessRange: Float

        attr_accessor :Loudness, :LoudnessRange

        def initialize(loudness=nil, loudnessrange=nil)
          @Loudness = loudness
          @LoudnessRange = loudnessrange
        end

        def deserialize(params)
          @Loudness = params['Loudness']
          @LoudnessRange = params['LoudnessRange']
        end
      end

      # 低光照增强参数
      class LowLightEnhance < TencentCloud::Common::AbstractModel
        # @param Type: 低光照增强类型，可选项：normal。
        # @type Type: String

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 编辑处理/剪切任务信息。
      # 截图结果默认存在 SaveInfoSet 的第一个存储位置。
      class MediaCuttingInfo < TencentCloud::Common::AbstractModel
        # @param TimeInfo: 截取时间信息。
        # @type TimeInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaCuttingTimeInfo`
        # @param TargetInfo: 输出结果信息。
        # @type TargetInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaTargetInfo`
        # @param OutForm: 截取结果形式信息。
        # @type OutForm: :class:`Tencentcloud::Ie.v20200304.models.MediaCuttingOutForm`
        # @param ResultListSaveType: 列表文件形式，存储到用户存储服务中，可选值：
        # <li>NoListFile：不存储结果列表; </li>
        # <li>UseSaveInfo：默认，结果列表和结果存储同一位置（即SaveInfoSet 的第一个存储位置）；</li>
        # <li>SaveInfoSet 存储的Id：存储在指定的存储位置。</li>
        # @type ResultListSaveType: String
        # @param WatermarkInfoSet: 水印信息，最多支持 10 个水印。
        # @type WatermarkInfoSet: Array
        # @param DropPureColor: 是否去除纯色截图，如果值为 True ，对应时间点的截图如果是纯色，将略过。
        # @type DropPureColor: String

        attr_accessor :TimeInfo, :TargetInfo, :OutForm, :ResultListSaveType, :WatermarkInfoSet, :DropPureColor

        def initialize(timeinfo=nil, targetinfo=nil, outform=nil, resultlistsavetype=nil, watermarkinfoset=nil, droppurecolor=nil)
          @TimeInfo = timeinfo
          @TargetInfo = targetinfo
          @OutForm = outform
          @ResultListSaveType = resultlistsavetype
          @WatermarkInfoSet = watermarkinfoset
          @DropPureColor = droppurecolor
        end

        def deserialize(params)
          unless params['TimeInfo'].nil?
            @TimeInfo = MediaCuttingTimeInfo.new
            @TimeInfo.deserialize(params['TimeInfo'])
          end
          unless params['TargetInfo'].nil?
            @TargetInfo = MediaTargetInfo.new
            @TargetInfo.deserialize(params['TargetInfo'])
          end
          unless params['OutForm'].nil?
            @OutForm = MediaCuttingOutForm.new
            @OutForm.deserialize(params['OutForm'])
          end
          @ResultListSaveType = params['ResultListSaveType']
          unless params['WatermarkInfoSet'].nil?
            @WatermarkInfoSet = []
            params['WatermarkInfoSet'].each do |i|
              mediacuttingwatermark_tmp = MediaCuttingWatermark.new
              mediacuttingwatermark_tmp.deserialize(i)
              @WatermarkInfoSet << mediacuttingwatermark_tmp
            end
          end
          @DropPureColor = params['DropPureColor']
        end
      end

      # 编辑处理/剪切任务/输出形式信息
      class MediaCuttingOutForm < TencentCloud::Common::AbstractModel
        # @param Type: 输出类型，可选值：
        # Static：静态图；
        # Dynamic：动态图；
        # Sprite：雪碧图；
        # Video：视频。

        # 注1：不同类型时，对应的 TargetInfo.Format 格式支持如下：
        # Static：jpg、png；
        # Dynamic：gif；
        # Sprite：jpg、png；
        # Video：mp4。

        # 注2：当 Type=Sprite时，TargetInfo指定的尺寸表示小图的大小，最终结果尺寸以输出为准。
        # @type Type: String
        # @param FillType: 背景填充方式，可选值：
        # White：白色填充；
        # Black：黑色填充；
        # Stretch：拉伸；
        # Gaussian：高斯模糊；
        # 默认White。
        # @type FillType: String
        # @param SpriteRowCount: 【废弃】参考SpriteInfo
        # @type SpriteRowCount: Integer
        # @param SpriteColumnCount: 【废弃】参考SpriteInfo
        # @type SpriteColumnCount: Integer
        # @param SpriteInfo: Type=Sprite时有效，表示雪碧图参数信息。
        # @type SpriteInfo: :class:`Tencentcloud::Ie.v20200304.models.SpriteImageInfo`
        # @param DynamicInfo: Type=Dynamic时有效，表示动图参数信息。
        # @type DynamicInfo: :class:`Tencentcloud::Ie.v20200304.models.DynamicImageInfo`

        attr_accessor :Type, :FillType, :SpriteRowCount, :SpriteColumnCount, :SpriteInfo, :DynamicInfo

        def initialize(type=nil, filltype=nil, spriterowcount=nil, spritecolumncount=nil, spriteinfo=nil, dynamicinfo=nil)
          @Type = type
          @FillType = filltype
          @SpriteRowCount = spriterowcount
          @SpriteColumnCount = spritecolumncount
          @SpriteInfo = spriteinfo
          @DynamicInfo = dynamicinfo
        end

        def deserialize(params)
          @Type = params['Type']
          @FillType = params['FillType']
          @SpriteRowCount = params['SpriteRowCount']
          @SpriteColumnCount = params['SpriteColumnCount']
          unless params['SpriteInfo'].nil?
            @SpriteInfo = SpriteImageInfo.new
            @SpriteInfo.deserialize(params['SpriteInfo'])
          end
          unless params['DynamicInfo'].nil?
            @DynamicInfo = DynamicImageInfo.new
            @DynamicInfo.deserialize(params['DynamicInfo'])
          end
        end
      end

      # 编辑处理/剪切任务/处理结果
      class MediaCuttingTaskResult < TencentCloud::Common::AbstractModel
        # @param ListFile: 如果ResultListType不为NoListFile时，结果（TaskResultFile）列表文件的存储位置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListFile: :class:`Tencentcloud::Ie.v20200304.models.TaskResultFile`
        # @param ResultCount: 结果个数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultCount: Integer
        # @param FirstFile: 第一个结果文件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstFile: :class:`Tencentcloud::Ie.v20200304.models.TaskResultFile`
        # @param LastFile: 最后一个结果文件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LastFile: :class:`Tencentcloud::Ie.v20200304.models.TaskResultFile`
        # @param ImageCount: 任务结果包含的图片总数。
        # 静态图：总数即为文件数；
        # 雪碧图：所有小图总数；
        # 动图、视频：不计算图片数，为 0。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageCount: Integer

        attr_accessor :ListFile, :ResultCount, :FirstFile, :LastFile, :ImageCount

        def initialize(listfile=nil, resultcount=nil, firstfile=nil, lastfile=nil, imagecount=nil)
          @ListFile = listfile
          @ResultCount = resultcount
          @FirstFile = firstfile
          @LastFile = lastfile
          @ImageCount = imagecount
        end

        def deserialize(params)
          unless params['ListFile'].nil?
            @ListFile = TaskResultFile.new
            @ListFile.deserialize(params['ListFile'])
          end
          @ResultCount = params['ResultCount']
          unless params['FirstFile'].nil?
            @FirstFile = TaskResultFile.new
            @FirstFile.deserialize(params['FirstFile'])
          end
          unless params['LastFile'].nil?
            @LastFile = TaskResultFile.new
            @LastFile.deserialize(params['LastFile'])
          end
          @ImageCount = params['ImageCount']
        end
      end

      # 编辑处理/剪切任务/时间信息
      class MediaCuttingTimeInfo < TencentCloud::Common::AbstractModel
        # @param Type: 时间类型，可选值：
        # PointSet：时间点集合；
        # IntervalPoint：周期采样点；
        # SectionSet：时间片段集合。
        # @type Type: String
        # @param PointSet: 截取时间点集合，单位毫秒，Type=PointSet时必选。
        # @type PointSet: Array
        # @param IntervalPoint: 周期采样点信息，Type=IntervalPoint时必选。
        # @type IntervalPoint: :class:`Tencentcloud::Ie.v20200304.models.IntervalTime`
        # @param SectionSet: 时间区间集合信息，Type=SectionSet时必选。
        # @type SectionSet: Array

        attr_accessor :Type, :PointSet, :IntervalPoint, :SectionSet

        def initialize(type=nil, pointset=nil, intervalpoint=nil, sectionset=nil)
          @Type = type
          @PointSet = pointset
          @IntervalPoint = intervalpoint
          @SectionSet = sectionset
        end

        def deserialize(params)
          @Type = params['Type']
          @PointSet = params['PointSet']
          unless params['IntervalPoint'].nil?
            @IntervalPoint = IntervalTime.new
            @IntervalPoint.deserialize(params['IntervalPoint'])
          end
          unless params['SectionSet'].nil?
            @SectionSet = []
            params['SectionSet'].each do |i|
              sectiontime_tmp = SectionTime.new
              sectiontime_tmp.deserialize(i)
              @SectionSet << sectiontime_tmp
            end
          end
        end
      end

      # 媒体剪切水印信息。
      class MediaCuttingWatermark < TencentCloud::Common::AbstractModel
        # @param Type: 水印类型，可选值：
        # <li>Image：图像水印；</li>
        # <li>Text：文字水印。</li>
        # @type Type: String
        # @param Image: 图像水印信息，当 Type=Image 时必选。
        # @type Image: :class:`Tencentcloud::Ie.v20200304.models.MediaCuttingWatermarkImage`
        # @param Text: 文字水印信息，当 Type=Text 时必选。
        # @type Text: :class:`Tencentcloud::Ie.v20200304.models.MediaCuttingWatermarkText`

        attr_accessor :Type, :Image, :Text

        def initialize(type=nil, image=nil, text=nil)
          @Type = type
          @Image = image
          @Text = text
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Image'].nil?
            @Image = MediaCuttingWatermarkImage.new
            @Image.deserialize(params['Image'])
          end
          unless params['Text'].nil?
            @Text = MediaCuttingWatermarkText.new
            @Text.deserialize(params['Text'])
          end
        end
      end

      # 媒体剪切图像水印参数。
      class MediaCuttingWatermarkImage < TencentCloud::Common::AbstractModel
        # @param SourceId: 水印源的ID，对应SourceInfoSet内的源。
        # 注意1：对应的 MediaSourceInfo.Type需要为Image。
        # 注意2：对于动图，只取第一帧图像作为水印源。
        # @type SourceId: String
        # @param PosX: 水印水平坐标，单位像素，默认：0。
        # @type PosX: Integer
        # @param PosY: 水印垂直坐标，单位像素，默认：0。
        # @type PosY: Integer
        # @param Width: 水印宽度，单位像素，默认：0。
        # @type Width: Integer
        # @param Height: 水印高度，单位像素，默认：0。
        # 注意：对于宽高符合以下规则：
        # 1、Width>0 且 Height>0，按指定宽高拉伸；
        # 2、Width=0 且 Height>0，以Height为基准等比缩放；
        # 3、Width>0 且 Height=0，以Width为基准等比缩放；
        # 4、Width=0 且 Height=0，采用源的宽高。
        # @type Height: Integer
        # @param PosOriginType: 指定坐标原点，可选值：
        # <li>LeftTop：PosXY 表示水印左上点到图片左上点的相对位置</li>
        # <li>RightTop：PosXY 表示水印右上点到图片右上点的相对位置</li>
        # <li>LeftBottom：PosXY 表示水印左下点到图片左下点的相对位置</li>
        # <li>RightBottom：PosXY 表示水印右下点到图片右下点的相对位置</li>
        # <li>Center：PosXY 表示水印中心点到图片中心点的相对位置</li>
        # 默认：LeftTop。
        # @type PosOriginType: String

        attr_accessor :SourceId, :PosX, :PosY, :Width, :Height, :PosOriginType

        def initialize(sourceid=nil, posx=nil, posy=nil, width=nil, height=nil, posorigintype=nil)
          @SourceId = sourceid
          @PosX = posx
          @PosY = posy
          @Width = width
          @Height = height
          @PosOriginType = posorigintype
        end

        def deserialize(params)
          @SourceId = params['SourceId']
          @PosX = params['PosX']
          @PosY = params['PosY']
          @Width = params['Width']
          @Height = params['Height']
          @PosOriginType = params['PosOriginType']
        end
      end

      # 媒体剪切文字水印参数。
      class MediaCuttingWatermarkText < TencentCloud::Common::AbstractModel
        # @param Text: 水印文字。
        # @type Text: String
        # @param FontSize: 文字大小
        # @type FontSize: Integer
        # @param PosX: 水印水平坐标，单位像素，默认：0。
        # @type PosX: Integer
        # @param PosY: 水印垂直坐标，单位像素，默认：0。
        # @type PosY: Integer
        # @param FontColor: 文字颜色，格式为：#RRGGBBAA，默认值：#000000。
        # @type FontColor: String
        # @param FontAlpha: 文字透明度，范围：0~100，默认值：100。
        # @type FontAlpha: Integer
        # @param PosOriginType: 指定坐标原点，可选值：
        # <li>LeftTop：PosXY 表示水印左上点到图片左上点的相对位置</li>
        # <li>RightTop：PosXY 表示水印右上点到图片右上点的相对位置</li>
        # <li>LeftBottom：PosXY 表示水印左下点到图片左下点的相对位置</li>
        # <li>RightBottom：PosXY 表示水印右下点到图片右下点的相对位置</li>
        # <li>Center：PosXY 表示水印中心点到图片中心点的相对位置</li>
        # 默认：LeftTop。
        # @type PosOriginType: String
        # @param Font: 字体，可选值：
        # <li>SimHei</li>
        # <li>SimKai</li>
        # <li>Arial</li>
        # 默认 SimHei。
        # @type Font: String

        attr_accessor :Text, :FontSize, :PosX, :PosY, :FontColor, :FontAlpha, :PosOriginType, :Font

        def initialize(text=nil, fontsize=nil, posx=nil, posy=nil, fontcolor=nil, fontalpha=nil, posorigintype=nil, font=nil)
          @Text = text
          @FontSize = fontsize
          @PosX = posx
          @PosY = posy
          @FontColor = fontcolor
          @FontAlpha = fontalpha
          @PosOriginType = posorigintype
          @Font = font
        end

        def deserialize(params)
          @Text = params['Text']
          @FontSize = params['FontSize']
          @PosX = params['PosX']
          @PosY = params['PosY']
          @FontColor = params['FontColor']
          @FontAlpha = params['FontAlpha']
          @PosOriginType = params['PosOriginType']
          @Font = params['Font']
        end
      end

      # 编辑处理/拼接任务信息
      class MediaJoiningInfo < TencentCloud::Common::AbstractModel
        # @param TargetInfo: 输出目标信息，拼接只采用FileName和Format，用于指定目标文件名和格式。
        # 其中Format只支持mp4.
        # @type TargetInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaTargetInfo`
        # @param Mode: 拼接模式：
        # Fast：快速；
        # Normal：正常；
        # @type Mode: String

        attr_accessor :TargetInfo, :Mode

        def initialize(targetinfo=nil, mode=nil)
          @TargetInfo = targetinfo
          @Mode = mode
        end

        def deserialize(params)
          unless params['TargetInfo'].nil?
            @TargetInfo = MediaTargetInfo.new
            @TargetInfo.deserialize(params['TargetInfo'])
          end
          @Mode = params['Mode']
        end
      end

      # 编辑处理/拼接任务/处理结果
      class MediaJoiningTaskResult < TencentCloud::Common::AbstractModel
        # @param File: 拼接结果文件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type File: :class:`Tencentcloud::Ie.v20200304.models.TaskResultFile`

        attr_accessor :File

        def initialize(file=nil)
          @File = file
        end

        def deserialize(params)
          unless params['File'].nil?
            @File = TaskResultFile.new
            @File.deserialize(params['File'])
          end
        end
      end

      # 编辑处理/任务信息
      class MediaProcessInfo < TencentCloud::Common::AbstractModel
        # @param Type: 编辑处理任务类型，可选值：
        # MediaEditing：媒体编辑（待上线）；
        # MediaCutting：媒体剪切；
        # MediaJoining：媒体拼接。
        # MediaRecognition: 媒体识别。
        # @type Type: String
        # @param MediaCuttingInfo: 视频剪切任务参数，Type=MediaCutting时必选。
        # @type MediaCuttingInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaCuttingInfo`
        # @param MediaJoiningInfo: 视频拼接任务参数，Type=MediaJoining时必选。
        # @type MediaJoiningInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaJoiningInfo`
        # @param MediaRecognitionInfo: 媒体识别任务参数，Type=MediaRecognition时必选
        # @type MediaRecognitionInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaRecognitionInfo`

        attr_accessor :Type, :MediaCuttingInfo, :MediaJoiningInfo, :MediaRecognitionInfo

        def initialize(type=nil, mediacuttinginfo=nil, mediajoininginfo=nil, mediarecognitioninfo=nil)
          @Type = type
          @MediaCuttingInfo = mediacuttinginfo
          @MediaJoiningInfo = mediajoininginfo
          @MediaRecognitionInfo = mediarecognitioninfo
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['MediaCuttingInfo'].nil?
            @MediaCuttingInfo = MediaCuttingInfo.new
            @MediaCuttingInfo.deserialize(params['MediaCuttingInfo'])
          end
          unless params['MediaJoiningInfo'].nil?
            @MediaJoiningInfo = MediaJoiningInfo.new
            @MediaJoiningInfo.deserialize(params['MediaJoiningInfo'])
          end
          unless params['MediaRecognitionInfo'].nil?
            @MediaRecognitionInfo = MediaRecognitionInfo.new
            @MediaRecognitionInfo.deserialize(params['MediaRecognitionInfo'])
          end
        end
      end

      # 编辑处理/任务处理结果
      class MediaProcessTaskResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑处理任务ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param Type: 编辑处理任务类型，取值：
        # MediaEditing：视频编辑（待上线）；
        # MediaCutting：视频剪切；
        # MediaJoining：视频拼接。
        # MediaRecognition：媒体识别；
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param Progress: 处理进度，范围：[0,100]
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Progress: Integer
        # @param Status: 任务状态：
        # 1100：等待中；
        # 1200：执行中；
        # 2000：成功；
        # 5000：失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param ErrCode: 任务错误码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrCode: Integer
        # @param ErrMsg: 任务错误信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String
        # @param MediaCuttingTaskResult: 剪切任务处理结果，当Type=MediaCutting时才有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaCuttingTaskResult: :class:`Tencentcloud::Ie.v20200304.models.MediaCuttingTaskResult`
        # @param MediaJoiningTaskResult: 拼接任务处理结果，当Type=MediaJoining时才有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaJoiningTaskResult: :class:`Tencentcloud::Ie.v20200304.models.MediaJoiningTaskResult`
        # @param MediaRecognitionTaskResult: 媒体识别任务处理结果，当Type=MediaRecognition时才有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaRecognitionTaskResult: :class:`Tencentcloud::Ie.v20200304.models.MediaRecognitionTaskResult`

        attr_accessor :TaskId, :Type, :Progress, :Status, :ErrCode, :ErrMsg, :MediaCuttingTaskResult, :MediaJoiningTaskResult, :MediaRecognitionTaskResult

        def initialize(taskid=nil, type=nil, progress=nil, status=nil, errcode=nil, errmsg=nil, mediacuttingtaskresult=nil, mediajoiningtaskresult=nil, mediarecognitiontaskresult=nil)
          @TaskId = taskid
          @Type = type
          @Progress = progress
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @MediaCuttingTaskResult = mediacuttingtaskresult
          @MediaJoiningTaskResult = mediajoiningtaskresult
          @MediaRecognitionTaskResult = mediarecognitiontaskresult
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Type = params['Type']
          @Progress = params['Progress']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['MediaCuttingTaskResult'].nil?
            @MediaCuttingTaskResult = MediaCuttingTaskResult.new
            @MediaCuttingTaskResult.deserialize(params['MediaCuttingTaskResult'])
          end
          unless params['MediaJoiningTaskResult'].nil?
            @MediaJoiningTaskResult = MediaJoiningTaskResult.new
            @MediaJoiningTaskResult.deserialize(params['MediaJoiningTaskResult'])
          end
          unless params['MediaRecognitionTaskResult'].nil?
            @MediaRecognitionTaskResult = MediaRecognitionTaskResult.new
            @MediaRecognitionTaskResult.deserialize(params['MediaRecognitionTaskResult'])
          end
        end
      end

      # 画质重生任务结果
      class MediaQualityRestorationTaskResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 画质重生任务ID
        # @type TaskId: String
        # @param SubTaskResult: 画质重生处理后文件的详细信息。
        # @type SubTaskResult: Array

        attr_accessor :TaskId, :SubTaskResult

        def initialize(taskid=nil, subtaskresult=nil)
          @TaskId = taskid
          @SubTaskResult = subtaskresult
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['SubTaskResult'].nil?
            @SubTaskResult = []
            params['SubTaskResult'].each do |i|
              subtaskresultitem_tmp = SubTaskResultItem.new
              subtaskresultitem_tmp.deserialize(i)
              @SubTaskResult << subtaskresultitem_tmp
            end
          end
        end
      end

      # 媒体识别任务参数
      class MediaRecognitionInfo < TencentCloud::Common::AbstractModel
        # @param FrameTagRec: 帧标签识别
        # @type FrameTagRec: :class:`Tencentcloud::Ie.v20200304.models.FrameTagRec`
        # @param SubtitleRec: 语音字幕识别
        # @type SubtitleRec: :class:`Tencentcloud::Ie.v20200304.models.SubtitleRec`

        attr_accessor :FrameTagRec, :SubtitleRec

        def initialize(frametagrec=nil, subtitlerec=nil)
          @FrameTagRec = frametagrec
          @SubtitleRec = subtitlerec
        end

        def deserialize(params)
          unless params['FrameTagRec'].nil?
            @FrameTagRec = FrameTagRec.new
            @FrameTagRec.deserialize(params['FrameTagRec'])
          end
          unless params['SubtitleRec'].nil?
            @SubtitleRec = SubtitleRec.new
            @SubtitleRec.deserialize(params['SubtitleRec'])
          end
        end
      end

      # 媒体识别任务处理结果
      class MediaRecognitionTaskResult < TencentCloud::Common::AbstractModel
        # @param FrameTagResults: 帧标签识别结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameTagResults: :class:`Tencentcloud::Ie.v20200304.models.FrameTagResult`
        # @param SubtitleResults: 语音字幕识别结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubtitleResults: :class:`Tencentcloud::Ie.v20200304.models.SubtitleResult`

        attr_accessor :FrameTagResults, :SubtitleResults

        def initialize(frametagresults=nil, subtitleresults=nil)
          @FrameTagResults = frametagresults
          @SubtitleResults = subtitleresults
        end

        def deserialize(params)
          unless params['FrameTagResults'].nil?
            @FrameTagResults = FrameTagResult.new
            @FrameTagResults.deserialize(params['FrameTagResults'])
          end
          unless params['SubtitleResults'].nil?
            @SubtitleResults = SubtitleResult.new
            @SubtitleResults.deserialize(params['SubtitleResults'])
          end
        end
      end

      # 结果文件媒体信息
      class MediaResultInfo < TencentCloud::Common::AbstractModel
        # @param Duration: 媒体时长，单位：毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param ResultVideoInfoSet: 视频流信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultVideoInfoSet: Array
        # @param ResultAudioInfoSet: 音频流信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResultAudioInfoSet: Array

        attr_accessor :Duration, :ResultVideoInfoSet, :ResultAudioInfoSet

        def initialize(duration=nil, resultvideoinfoset=nil, resultaudioinfoset=nil)
          @Duration = duration
          @ResultVideoInfoSet = resultvideoinfoset
          @ResultAudioInfoSet = resultaudioinfoset
        end

        def deserialize(params)
          @Duration = params['Duration']
          unless params['ResultVideoInfoSet'].nil?
            @ResultVideoInfoSet = []
            params['ResultVideoInfoSet'].each do |i|
              resultvideoinfo_tmp = ResultVideoInfo.new
              resultvideoinfo_tmp.deserialize(i)
              @ResultVideoInfoSet << resultvideoinfo_tmp
            end
          end
          unless params['ResultAudioInfoSet'].nil?
            @ResultAudioInfoSet = []
            params['ResultAudioInfoSet'].each do |i|
              resultaudioinfo_tmp = ResultAudioInfo.new
              resultaudioinfo_tmp.deserialize(i)
              @ResultAudioInfoSet << resultaudioinfo_tmp
            end
          end
        end
      end

      # 编辑处理的媒体源
      class MediaSourceInfo < TencentCloud::Common::AbstractModel
        # @param DownInfo: 媒体源资源下载信息。
        # @type DownInfo: :class:`Tencentcloud::Ie.v20200304.models.DownInfo`
        # @param Id: 媒体源ID标记，用于多个输入源时，请内媒体源的定位，对于多输入的任务，一般要求必选。
        # ID只能包含字母、数字、下划线、中划线，长读不能超过128。
        # @type Id: String
        # @param Type: 媒体源类型，具体类型如下：
        # Video：视频
        # Image：图片
        # Audio：音频
        # @type Type: String

        attr_accessor :DownInfo, :Id, :Type

        def initialize(downinfo=nil, id=nil, type=nil)
          @DownInfo = downinfo
          @Id = id
          @Type = type
        end

        def deserialize(params)
          unless params['DownInfo'].nil?
            @DownInfo = DownInfo.new
            @DownInfo.deserialize(params['DownInfo'])
          end
          @Id = params['Id']
          @Type = params['Type']
        end
      end

      # 目标媒体信息。
      class MediaTargetInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 目标文件名，不能带特殊字符（如/等），无需后缀名，最长200字符。

        # 注1：部分子服务支持占位符，形式为： {parameter}
        # 预设parameter有：
        # index：序号；
        # @type FileName: String
        # @param Format: 媒体封装格式，最长5字符，具体格式支持根据子任务确定。
        # @type Format: String
        # @param TargetVideoInfo: 视频流信息。
        # @type TargetVideoInfo: :class:`Tencentcloud::Ie.v20200304.models.TargetVideoInfo`
        # @param ResultListSaveType: 【不再使用】
        # @type ResultListSaveType: String

        attr_accessor :FileName, :Format, :TargetVideoInfo, :ResultListSaveType

        def initialize(filename=nil, format=nil, targetvideoinfo=nil, resultlistsavetype=nil)
          @FileName = filename
          @Format = format
          @TargetVideoInfo = targetvideoinfo
          @ResultListSaveType = resultlistsavetype
        end

        def deserialize(params)
          @FileName = params['FileName']
          @Format = params['Format']
          unless params['TargetVideoInfo'].nil?
            @TargetVideoInfo = TargetVideoInfo.new
            @TargetVideoInfo.deserialize(params['TargetVideoInfo'])
          end
          @ResultListSaveType = params['ResultListSaveType']
        end
      end

      # 流封装信息
      class MuxInfo < TencentCloud::Common::AbstractModel
        # @param DeleteStream: 删除流，可选项：video,audio。
        # @type DeleteStream: String
        # @param FlvFlags: Flv 参数，目前支持add_keyframe_index
        # @type FlvFlags: String

        attr_accessor :DeleteStream, :FlvFlags

        def initialize(deletestream=nil, flvflags=nil)
          @DeleteStream = deletestream
          @FlvFlags = flvflags
        end

        def deserialize(params)
          @DeleteStream = params['DeleteStream']
          @FlvFlags = params['FlvFlags']
        end
      end

      # 片头片尾识别任务参数信息
      class OpeningEndingEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启片头片尾识别。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo

        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 片头片尾识别结果信息
      class OpeningEndingTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param Item: 片头片尾识别结果项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Item: :class:`Tencentcloud::Ie.v20200304.models.OpeningEndingTaskResultItem`

        attr_accessor :Status, :ErrCode, :ErrMsg, :Item

        def initialize(status=nil, errcode=nil, errmsg=nil, item=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @Item = item
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['Item'].nil?
            @Item = OpeningEndingTaskResultItem.new
            @Item.deserialize(params['Item'])
          end
        end
      end

      # 片头片尾识别结果项
      class OpeningEndingTaskResultItem < TencentCloud::Common::AbstractModel
        # @param OpeningTimeOffset: 视频片头的结束时间点，单位：秒。
        # @type OpeningTimeOffset: Float
        # @param OpeningConfidence: 片头识别置信度，取值范围是 0 到 100。
        # @type OpeningConfidence: Float
        # @param EndingTimeOffset: 视频片尾的开始时间点，单位：秒。
        # @type EndingTimeOffset: Float
        # @param EndingConfidence: 片尾识别置信度，取值范围是 0 到 100。
        # @type EndingConfidence: Float

        attr_accessor :OpeningTimeOffset, :OpeningConfidence, :EndingTimeOffset, :EndingConfidence

        def initialize(openingtimeoffset=nil, openingconfidence=nil, endingtimeoffset=nil, endingconfidence=nil)
          @OpeningTimeOffset = openingtimeoffset
          @OpeningConfidence = openingconfidence
          @EndingTimeOffset = endingtimeoffset
          @EndingConfidence = endingconfidence
        end

        def deserialize(params)
          @OpeningTimeOffset = params['OpeningTimeOffset']
          @OpeningConfidence = params['OpeningConfidence']
          @EndingTimeOffset = params['EndingTimeOffset']
          @EndingConfidence = params['EndingConfidence']
        end
      end

      # 图片水印信息
      class PicMarkInfoItem < TencentCloud::Common::AbstractModel
        # @param PosX: 图片水印的X坐标。
        # @type PosX: Integer
        # @param PosY: 图片水印的Y坐标 。
        # @type PosY: Integer
        # @param Path: 图片水印路径,，如果不从Cos拉取水印，则必填
        # @type Path: String
        # @param CosInfo: 图片水印的Cos 信息，从Cos上拉取图片水印时必填。
        # @type CosInfo: :class:`Tencentcloud::Ie.v20200304.models.CosInfo`
        # @param Width: 图片水印宽度，不填为图片原始宽度。
        # @type Width: Integer
        # @param Height: 图片水印高度，不填为图片原始高度。
        # @type Height: Integer
        # @param StartTime: 添加图片水印的开始时间,单位：ms。
        # @type StartTime: Integer
        # @param EndTime: 添加图片水印的结束时间,单位：ms。
        # @type EndTime: Integer

        attr_accessor :PosX, :PosY, :Path, :CosInfo, :Width, :Height, :StartTime, :EndTime

        def initialize(posx=nil, posy=nil, path=nil, cosinfo=nil, width=nil, height=nil, starttime=nil, endtime=nil)
          @PosX = posx
          @PosY = posy
          @Path = path
          @CosInfo = cosinfo
          @Width = width
          @Height = height
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @PosX = params['PosX']
          @PosY = params['PosY']
          @Path = params['Path']
          unless params['CosInfo'].nil?
            @CosInfo = CosInfo.new
            @CosInfo.deserialize(params['CosInfo'])
          end
          @Width = params['Width']
          @Height = params['Height']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 媒体质检任务参数信息
      class QualityControlInfo < TencentCloud::Common::AbstractModel
        # @param Interval: 对流进行截图的间隔ms，默认1000ms
        # @type Interval: Integer
        # @param VideoShot: 是否保存截图
        # @type VideoShot: Boolean
        # @param Jitter: 是否检测抖动重影
        # @type Jitter: Boolean
        # @param Blur: 是否检测模糊
        # @type Blur: Boolean
        # @param AbnormalLighting: 是否检测低光照、过曝
        # @type AbnormalLighting: Boolean
        # @param CrashScreen: 是否检测花屏
        # @type CrashScreen: Boolean
        # @param BlackWhiteEdge: 是否检测黑边、白边、黑屏、白屏、绿屏
        # @type BlackWhiteEdge: Boolean
        # @param Noise: 是否检测噪点
        # @type Noise: Boolean
        # @param Mosaic: 是否检测马赛克
        # @type Mosaic: Boolean
        # @param QRCode: 是否检测二维码，包括小程序码、条形码
        # @type QRCode: Boolean
        # @param QualityEvaluation: 是否开启画面质量评价
        # @type QualityEvaluation: Boolean
        # @param QualityEvalScore: 画面质量评价过滤阈值，结果只返回低于阈值的时间段，默认60
        # @type QualityEvalScore: Integer
        # @param Voice: 是否检测视频音频，包含静音、低音、爆音
        # @type Voice: Boolean

        attr_accessor :Interval, :VideoShot, :Jitter, :Blur, :AbnormalLighting, :CrashScreen, :BlackWhiteEdge, :Noise, :Mosaic, :QRCode, :QualityEvaluation, :QualityEvalScore, :Voice

        def initialize(interval=nil, videoshot=nil, jitter=nil, blur=nil, abnormallighting=nil, crashscreen=nil, blackwhiteedge=nil, noise=nil, mosaic=nil, qrcode=nil, qualityevaluation=nil, qualityevalscore=nil, voice=nil)
          @Interval = interval
          @VideoShot = videoshot
          @Jitter = jitter
          @Blur = blur
          @AbnormalLighting = abnormallighting
          @CrashScreen = crashscreen
          @BlackWhiteEdge = blackwhiteedge
          @Noise = noise
          @Mosaic = mosaic
          @QRCode = qrcode
          @QualityEvaluation = qualityevaluation
          @QualityEvalScore = qualityevalscore
          @Voice = voice
        end

        def deserialize(params)
          @Interval = params['Interval']
          @VideoShot = params['VideoShot']
          @Jitter = params['Jitter']
          @Blur = params['Blur']
          @AbnormalLighting = params['AbnormalLighting']
          @CrashScreen = params['CrashScreen']
          @BlackWhiteEdge = params['BlackWhiteEdge']
          @Noise = params['Noise']
          @Mosaic = params['Mosaic']
          @QRCode = params['QRCode']
          @QualityEvaluation = params['QualityEvaluation']
          @QualityEvalScore = params['QualityEvalScore']
          @Voice = params['Voice']
        end
      end

      # 媒体质检结果信息
      class QualityControlInfoTaskResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 质检任务 ID
        # @type TaskId: String
        # @param Status: 质检任务状态。
        # 1：执行中；2：成功；3：失败
        # @type Status: Integer
        # @param Progress: 表示处理进度百分比
        # @type Progress: Integer
        # @param UsedTime: 处理时长(s)
        # @type UsedTime: Integer
        # @param Duration: 计费时长(s)
        # @type Duration: Integer
        # @param NoAudio: 为true时表示视频无音频轨
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoAudio: Boolean
        # @param NoVideo: 为true时表示视频无视频轨
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoVideo: Boolean
        # @param QualityEvaluationScore: 视频无参考质量打分，百分制
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QualityEvaluationScore: Integer
        # @param QualityEvaluationResults: 视频画面无参考评分低于阈值的时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QualityEvaluationResults: Array
        # @param JitterResults: 视频画面抖动时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JitterResults: Array
        # @param BlurResults: 视频画面模糊时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlurResults: Array
        # @param AbnormalLightingResults: 视频画面低光、过曝时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AbnormalLightingResults: Array
        # @param CrashScreenResults: 视频画面花屏时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CrashScreenResults: Array
        # @param BlackWhiteEdgeResults: 视频画面黑边、白边、黑屏、白屏、纯色屏时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlackWhiteEdgeResults: Array
        # @param NoiseResults: 视频画面有噪点时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoiseResults: Array
        # @param MosaicResults: 视频画面有马赛克时间段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MosaicResults: Array
        # @param QRCodeResults: 视频画面有二维码的时间段，包括小程序码、条形码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QRCodeResults: Array
        # @param VoiceResults: 视频音频异常时间段，包括静音、低音、爆音
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VoiceResults: Array
        # @param ErrCode: 任务错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrCode: Integer
        # @param ErrMsg: 任务错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrMsg: String

        attr_accessor :TaskId, :Status, :Progress, :UsedTime, :Duration, :NoAudio, :NoVideo, :QualityEvaluationScore, :QualityEvaluationResults, :JitterResults, :BlurResults, :AbnormalLightingResults, :CrashScreenResults, :BlackWhiteEdgeResults, :NoiseResults, :MosaicResults, :QRCodeResults, :VoiceResults, :ErrCode, :ErrMsg

        def initialize(taskid=nil, status=nil, progress=nil, usedtime=nil, duration=nil, noaudio=nil, novideo=nil, qualityevaluationscore=nil, qualityevaluationresults=nil, jitterresults=nil, blurresults=nil, abnormallightingresults=nil, crashscreenresults=nil, blackwhiteedgeresults=nil, noiseresults=nil, mosaicresults=nil, qrcoderesults=nil, voiceresults=nil, errcode=nil, errmsg=nil)
          @TaskId = taskid
          @Status = status
          @Progress = progress
          @UsedTime = usedtime
          @Duration = duration
          @NoAudio = noaudio
          @NoVideo = novideo
          @QualityEvaluationScore = qualityevaluationscore
          @QualityEvaluationResults = qualityevaluationresults
          @JitterResults = jitterresults
          @BlurResults = blurresults
          @AbnormalLightingResults = abnormallightingresults
          @CrashScreenResults = crashscreenresults
          @BlackWhiteEdgeResults = blackwhiteedgeresults
          @NoiseResults = noiseresults
          @MosaicResults = mosaicresults
          @QRCodeResults = qrcoderesults
          @VoiceResults = voiceresults
          @ErrCode = errcode
          @ErrMsg = errmsg
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @Progress = params['Progress']
          @UsedTime = params['UsedTime']
          @Duration = params['Duration']
          @NoAudio = params['NoAudio']
          @NoVideo = params['NoVideo']
          @QualityEvaluationScore = params['QualityEvaluationScore']
          unless params['QualityEvaluationResults'].nil?
            @QualityEvaluationResults = []
            params['QualityEvaluationResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @QualityEvaluationResults << qualitycontrolresultitems_tmp
            end
          end
          unless params['JitterResults'].nil?
            @JitterResults = []
            params['JitterResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @JitterResults << qualitycontrolresultitems_tmp
            end
          end
          unless params['BlurResults'].nil?
            @BlurResults = []
            params['BlurResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @BlurResults << qualitycontrolresultitems_tmp
            end
          end
          unless params['AbnormalLightingResults'].nil?
            @AbnormalLightingResults = []
            params['AbnormalLightingResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @AbnormalLightingResults << qualitycontrolresultitems_tmp
            end
          end
          unless params['CrashScreenResults'].nil?
            @CrashScreenResults = []
            params['CrashScreenResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @CrashScreenResults << qualitycontrolresultitems_tmp
            end
          end
          unless params['BlackWhiteEdgeResults'].nil?
            @BlackWhiteEdgeResults = []
            params['BlackWhiteEdgeResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @BlackWhiteEdgeResults << qualitycontrolresultitems_tmp
            end
          end
          unless params['NoiseResults'].nil?
            @NoiseResults = []
            params['NoiseResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @NoiseResults << qualitycontrolresultitems_tmp
            end
          end
          unless params['MosaicResults'].nil?
            @MosaicResults = []
            params['MosaicResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @MosaicResults << qualitycontrolresultitems_tmp
            end
          end
          unless params['QRCodeResults'].nil?
            @QRCodeResults = []
            params['QRCodeResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @QRCodeResults << qualitycontrolresultitems_tmp
            end
          end
          unless params['VoiceResults'].nil?
            @VoiceResults = []
            params['VoiceResults'].each do |i|
              qualitycontrolresultitems_tmp = QualityControlResultItems.new
              qualitycontrolresultitems_tmp.deserialize(i)
              @VoiceResults << qualitycontrolresultitems_tmp
            end
          end
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
        end
      end

      # 质检结果项
      class QualityControlItem < TencentCloud::Common::AbstractModel
        # @param Confidence: 置信度，取值范围是 0 到 100
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Confidence: Integer
        # @param StartTimeOffset: 出现的起始时间戳，秒
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 出现的结束时间戳，秒
        # @type EndTimeOffset: Float
        # @param AreaCoordsSet: 区域坐标(px)，即左上角坐标、右下角坐标
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AreaCoordsSet: Array

        attr_accessor :Confidence, :StartTimeOffset, :EndTimeOffset, :AreaCoordsSet

        def initialize(confidence=nil, starttimeoffset=nil, endtimeoffset=nil, areacoordsset=nil)
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @AreaCoordsSet = areacoordsset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @AreaCoordsSet = params['AreaCoordsSet']
        end
      end

      # 质检结果项数组
      class QualityControlResultItems < TencentCloud::Common::AbstractModel
        # @param Id: 异常类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param QualityControlItems: 质检结果项
        # @type QualityControlItems: Array

        attr_accessor :Id, :QualityControlItems

        def initialize(id=nil, qualitycontrolitems=nil)
          @Id = id
          @QualityControlItems = qualitycontrolitems
        end

        def deserialize(params)
          @Id = params['Id']
          unless params['QualityControlItems'].nil?
            @QualityControlItems = []
            params['QualityControlItems'].each do |i|
              qualitycontrolitem_tmp = QualityControlItem.new
              qualitycontrolitem_tmp.deserialize(i)
              @QualityControlItems << qualitycontrolitem_tmp
            end
          end
        end
      end

      # 音频去除混响
      class RemoveReverb < TencentCloud::Common::AbstractModel
        # @param Type: 去混响类型，可选项：normal
        # @type Type: String

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 结果媒体文件的视频流信息
      class ResultAudioInfo < TencentCloud::Common::AbstractModel
        # @param StreamId: 流在媒体文件中的流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamId: Integer
        # @param Duration: 流的时长，单位：毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer

        attr_accessor :StreamId, :Duration

        def initialize(streamid=nil, duration=nil)
          @StreamId = streamid
          @Duration = duration
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @Duration = params['Duration']
        end
      end

      # 结果媒体文件的视频流信息
      class ResultVideoInfo < TencentCloud::Common::AbstractModel
        # @param StreamId: 流在媒体文件中的流ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StreamId: Integer
        # @param Duration: 流的时长，单位：毫秒
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param Width: 画面宽度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 画面高度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param Fps: 视频帧率，如果高于原始帧率，部分服务将无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fps: Integer

        attr_accessor :StreamId, :Duration, :Width, :Height, :Fps

        def initialize(streamid=nil, duration=nil, width=nil, height=nil, fps=nil)
          @StreamId = streamid
          @Duration = duration
          @Width = width
          @Height = height
          @Fps = fps
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @Duration = params['Duration']
          @Width = params['Width']
          @Height = params['Height']
          @Fps = params['Fps']
        end
      end

      # 任务存储信息
      class SaveInfo < TencentCloud::Common::AbstractModel
        # @param Type: 存储类型，可选值：
        # 1：CosInfo。
        # @type Type: Integer
        # @param CosInfo: Cos形式存储信息，当Type等于1时必选。
        # @type CosInfo: :class:`Tencentcloud::Ie.v20200304.models.CosInfo`
        # @param Id: 存储信息ID标记，用于多个输出场景。部分任务支持多输出时，一般要求必选。
        # ID只能包含字母、数字、下划线、中划线，长读不能超过128。
        # @type Id: String

        attr_accessor :Type, :CosInfo, :Id

        def initialize(type=nil, cosinfo=nil, id=nil)
          @Type = type
          @CosInfo = cosinfo
          @Id = id
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['CosInfo'].nil?
            @CosInfo = CosInfo.new
            @CosInfo.deserialize(params['CosInfo'])
          end
          @Id = params['Id']
        end
      end

      # 去划痕参数
      class ScratchRepair < TencentCloud::Common::AbstractModel
        # @param Type: 去划痕方式，取值：normal。
        # @type Type: String
        # @param Ratio: 去划痕强度， 可选项：0.0-1.0。小于0.0的默认为0.0，大于1.0的默认为1.0。
        # @type Ratio: Float

        attr_accessor :Type, :Ratio

        def initialize(type=nil, ratio=nil)
          @Type = type
          @Ratio = ratio
        end

        def deserialize(params)
          @Type = params['Type']
          @Ratio = params['Ratio']
        end
      end

      # 时间区间。
      class SectionTime < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间点，单位ms
        # @type StartTime: Integer
        # @param Duration: 时间区间时长，单位ms
        # @type Duration: Integer

        attr_accessor :StartTime, :Duration

        def initialize(starttime=nil, duration=nil)
          @StartTime = starttime
          @Duration = duration
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @Duration = params['Duration']
        end
      end

      # 输出文件切片信息
      class SegmentInfo < TencentCloud::Common::AbstractModel
        # @param FragmentTime: 每个切片平均时长，默认10s。
        # @type FragmentTime: Integer
        # @param SegmentType: 切片类型，可选项：hls，不填时默认hls。
        # @type SegmentType: String
        # @param FragmentName: 切片文件名字。注意：
        # 1.不填切片文件名时，默认按照按照如下格式命名：m3u8文件名{order}。
        # 2.若填了切片文件名字，则会按照如下格式命名：用户指定文件名{order}。
        # @type FragmentName: String

        attr_accessor :FragmentTime, :SegmentType, :FragmentName

        def initialize(fragmenttime=nil, segmenttype=nil, fragmentname=nil)
          @FragmentTime = fragmenttime
          @SegmentType = segmenttype
          @FragmentName = fragmentname
        end

        def deserialize(params)
          @FragmentTime = params['FragmentTime']
          @SegmentType = params['SegmentType']
          @FragmentName = params['FragmentName']
        end
      end

      # 细节增强参数
      class Sharp < TencentCloud::Common::AbstractModel
        # @param Type: 细节增强方式,取值：normal。
        # @type Type: String
        # @param Ratio: 细节增强强度，可选项：0.0-1.0。小于0.0的默认为0.0，大于1.0的默认为1.0。
        # @type Ratio: Float

        attr_accessor :Type, :Ratio

        def initialize(type=nil, ratio=nil)
          @Type = type
          @Ratio = ratio
        end

        def deserialize(params)
          @Type = params['Type']
          @Ratio = params['Ratio']
        end
      end

      # 雪碧图参数信息
      # 注意：雪碧图大图整体的宽和高都不能大于 15000 像素。
      class SpriteImageInfo < TencentCloud::Common::AbstractModel
        # @param RowCount: 表示雪碧图行数，默认：10。
        # @type RowCount: Integer
        # @param ColumnCount: 表示雪碧图列数，默认：10。
        # @type ColumnCount: Integer
        # @param MarginTop: 第一行元素与顶部像素距离，默认：0。
        # @type MarginTop: Integer
        # @param MarginBottom: 最后一行元素与底部像素距离，默认：0。
        # @type MarginBottom: Integer
        # @param MarginLeft: 最左一行元素与左边像素距离，默认：0。
        # @type MarginLeft: Integer
        # @param MarginRight: 最右一行元素与右边像素距离，默认：0。
        # @type MarginRight: Integer
        # @param PaddingTop: 小图与元素顶部像素距离，默认：0。
        # @type PaddingTop: Integer
        # @param PaddingBottom: 小图与元素底部像素距离，默认：0。
        # @type PaddingBottom: Integer
        # @param PaddingLeft: 小图与元素左边像素距离，默认：0。
        # @type PaddingLeft: Integer
        # @param PaddingRight: 小图与元素右边像素距离，默认：0。
        # @type PaddingRight: Integer
        # @param BackgroundColor: 背景颜色，格式：#RRGGBB，默认：#FFFFFF。
        # @type BackgroundColor: String

        attr_accessor :RowCount, :ColumnCount, :MarginTop, :MarginBottom, :MarginLeft, :MarginRight, :PaddingTop, :PaddingBottom, :PaddingLeft, :PaddingRight, :BackgroundColor

        def initialize(rowcount=nil, columncount=nil, margintop=nil, marginbottom=nil, marginleft=nil, marginright=nil, paddingtop=nil, paddingbottom=nil, paddingleft=nil, paddingright=nil, backgroundcolor=nil)
          @RowCount = rowcount
          @ColumnCount = columncount
          @MarginTop = margintop
          @MarginBottom = marginbottom
          @MarginLeft = marginleft
          @MarginRight = marginright
          @PaddingTop = paddingtop
          @PaddingBottom = paddingbottom
          @PaddingLeft = paddingleft
          @PaddingRight = paddingright
          @BackgroundColor = backgroundcolor
        end

        def deserialize(params)
          @RowCount = params['RowCount']
          @ColumnCount = params['ColumnCount']
          @MarginTop = params['MarginTop']
          @MarginBottom = params['MarginBottom']
          @MarginLeft = params['MarginLeft']
          @MarginRight = params['MarginRight']
          @PaddingTop = params['PaddingTop']
          @PaddingBottom = params['PaddingBottom']
          @PaddingLeft = params['PaddingLeft']
          @PaddingRight = params['PaddingRight']
          @BackgroundColor = params['BackgroundColor']
        end
      end

      # StopMediaProcessTask请求参数结构体
      class StopMediaProcessTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑处理任务ID。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # StopMediaProcessTask返回参数结构体
      class StopMediaProcessTaskResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # StopMediaQualityRestorationTask请求参数结构体
      class StopMediaQualityRestorationTaskRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 要删除的画质重生任务ID。
        # @type TaskId: String

        attr_accessor :TaskId

        def initialize(taskid=nil)
          @TaskId = taskid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
        end
      end

      # StopMediaQualityRestorationTask返回参数结构体
      class StopMediaQualityRestorationTaskResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 智能拆条任务参数信息
      class StripEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启智能拆条。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo

        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 智能拆条结果信息
      class StripTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 智能拆条结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet

        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['ItemSet'].nil?
            @ItemSet = []
            params['ItemSet'].each do |i|
              striptaskresultitem_tmp = StripTaskResultItem.new
              striptaskresultitem_tmp.deserialize(i)
              @ItemSet << striptaskresultitem_tmp
            end
          end
        end
      end

      # 智能拆条结果项
      class StripTaskResultItem < TencentCloud::Common::AbstractModel
        # @param SegmentUrl: 视频拆条片段地址。
        # @type SegmentUrl: String
        # @param CovImgUrl: 拆条封面图片地址。
        # @type CovImgUrl: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float
        # @param StartTimeOffset: 拆条片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 拆条片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float

        attr_accessor :SegmentUrl, :CovImgUrl, :Confidence, :StartTimeOffset, :EndTimeOffset

        def initialize(segmenturl=nil, covimgurl=nil, confidence=nil, starttimeoffset=nil, endtimeoffset=nil)
          @SegmentUrl = segmenturl
          @CovImgUrl = covimgurl
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @SegmentUrl = params['SegmentUrl']
          @CovImgUrl = params['CovImgUrl']
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 画质重生子任务结果
      class SubTaskResultItem < TencentCloud::Common::AbstractModel
        # @param TaskName: 子任务名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskName: String
        # @param StatusCode: 子任务状态。
        # 0：成功；
        # 1：执行中；
        # 其他值：失败。
        # @type StatusCode: Integer
        # @param StatusMsg: 子任务状态描述。
        # @type StatusMsg: String
        # @param ProgressRate: 子任务进度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgressRate: Integer
        # @param DownloadUrl: 画质重生处理后文件的下载地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param Md5: 画质重生处理后文件的MD5。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String
        # @param FileInfo: 画质重生处理后文件的详细信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileInfo: :class:`Tencentcloud::Ie.v20200304.models.FileInfo`

        attr_accessor :TaskName, :StatusCode, :StatusMsg, :ProgressRate, :DownloadUrl, :Md5, :FileInfo

        def initialize(taskname=nil, statuscode=nil, statusmsg=nil, progressrate=nil, downloadurl=nil, md5=nil, fileinfo=nil)
          @TaskName = taskname
          @StatusCode = statuscode
          @StatusMsg = statusmsg
          @ProgressRate = progressrate
          @DownloadUrl = downloadurl
          @Md5 = md5
          @FileInfo = fileinfo
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          @StatusCode = params['StatusCode']
          @StatusMsg = params['StatusMsg']
          @ProgressRate = params['ProgressRate']
          @DownloadUrl = params['DownloadUrl']
          @Md5 = params['Md5']
          unless params['FileInfo'].nil?
            @FileInfo = FileInfo.new
            @FileInfo.deserialize(params['FileInfo'])
          end
        end
      end

      # 画质重生子任务参数信息
      class SubTaskTranscodeInfo < TencentCloud::Common::AbstractModel
        # @param TaskName: 子任务名称。
        # @type TaskName: String
        # @param TargetInfo: 目标文件信息。
        # @type TargetInfo: :class:`Tencentcloud::Ie.v20200304.models.TargetInfo`
        # @param EditInfo: 视频剪辑信息。注意：如果填写了EditInfo，则VideoInfo和AudioInfo必填
        # @type EditInfo: :class:`Tencentcloud::Ie.v20200304.models.EditInfo`
        # @param VideoInfo: 视频转码信息，不填保持和源文件一致。
        # @type VideoInfo: :class:`Tencentcloud::Ie.v20200304.models.VideoInfo`
        # @param AudioInfo: 音频转码信息，不填保持和源文件一致。
        # @type AudioInfo: :class:`Tencentcloud::Ie.v20200304.models.AudioInfo`
        # @param MuxInfo: 指定封装信息。
        # @type MuxInfo: :class:`Tencentcloud::Ie.v20200304.models.MuxInfo`

        attr_accessor :TaskName, :TargetInfo, :EditInfo, :VideoInfo, :AudioInfo, :MuxInfo

        def initialize(taskname=nil, targetinfo=nil, editinfo=nil, videoinfo=nil, audioinfo=nil, muxinfo=nil)
          @TaskName = taskname
          @TargetInfo = targetinfo
          @EditInfo = editinfo
          @VideoInfo = videoinfo
          @AudioInfo = audioinfo
          @MuxInfo = muxinfo
        end

        def deserialize(params)
          @TaskName = params['TaskName']
          unless params['TargetInfo'].nil?
            @TargetInfo = TargetInfo.new
            @TargetInfo.deserialize(params['TargetInfo'])
          end
          unless params['EditInfo'].nil?
            @EditInfo = EditInfo.new
            @EditInfo.deserialize(params['EditInfo'])
          end
          unless params['VideoInfo'].nil?
            @VideoInfo = VideoInfo.new
            @VideoInfo.deserialize(params['VideoInfo'])
          end
          unless params['AudioInfo'].nil?
            @AudioInfo = AudioInfo.new
            @AudioInfo.deserialize(params['AudioInfo'])
          end
          unless params['MuxInfo'].nil?
            @MuxInfo = MuxInfo.new
            @MuxInfo.deserialize(params['MuxInfo'])
          end
        end
      end

      # 语音字幕识别项
      class SubtitleItem < TencentCloud::Common::AbstractModel
        # @param Id: 语音识别结果
        # @type Id: String
        # @param Zh: 中文翻译结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Zh: String
        # @param En: 英文翻译结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type En: String
        # @param StartPts: 语句起始时间戳PTS(ms)
        # @type StartPts: Integer
        # @param EndPts: 语句结束时间戳PTS(ms)
        # @type EndPts: Integer
        # @param Period: 字符串形式的起始结束时间
        # @type Period: String
        # @param Confidence: 结果的置信度（百分制）
        # @type Confidence: Integer
        # @param EndFlag: 当前语句是否结束
        # @type EndFlag: Boolean
        # @param PuncEndTs: 语句分割时间戳
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PuncEndTs: String

        attr_accessor :Id, :Zh, :En, :StartPts, :EndPts, :Period, :Confidence, :EndFlag, :PuncEndTs

        def initialize(id=nil, zh=nil, en=nil, startpts=nil, endpts=nil, period=nil, confidence=nil, endflag=nil, puncendts=nil)
          @Id = id
          @Zh = zh
          @En = en
          @StartPts = startpts
          @EndPts = endpts
          @Period = period
          @Confidence = confidence
          @EndFlag = endflag
          @PuncEndTs = puncendts
        end

        def deserialize(params)
          @Id = params['Id']
          @Zh = params['Zh']
          @En = params['En']
          @StartPts = params['StartPts']
          @EndPts = params['EndPts']
          @Period = params['Period']
          @Confidence = params['Confidence']
          @EndFlag = params['EndFlag']
          @PuncEndTs = params['PuncEndTs']
        end
      end

      # 语音字幕任务参数
      class SubtitleRec < TencentCloud::Common::AbstractModel
        # @param AsrDst: 语音识别：
        # zh：中文
        # en：英文
        # @type AsrDst: String
        # @param TransDst: 翻译识别：
        # zh：中文
        # en：英文
        # @type TransDst: String

        attr_accessor :AsrDst, :TransDst

        def initialize(asrdst=nil, transdst=nil)
          @AsrDst = asrdst
          @TransDst = transdst
        end

        def deserialize(params)
          @AsrDst = params['AsrDst']
          @TransDst = params['TransDst']
        end
      end

      # 语音字幕识别结果
      class SubtitleResult < TencentCloud::Common::AbstractModel
        # @param SubtitleItems: 语音字幕数组
        # @type SubtitleItems: Array

        attr_accessor :SubtitleItems

        def initialize(subtitleitems=nil)
          @SubtitleItems = subtitleitems
        end

        def deserialize(params)
          unless params['SubtitleItems'].nil?
            @SubtitleItems = []
            params['SubtitleItems'].each do |i|
              subtitleitem_tmp = SubtitleItem.new
              subtitleitem_tmp.deserialize(i)
              @SubtitleItems << subtitleitem_tmp
            end
          end
        end
      end

      # 视频标签识别任务参数信息
      class TagEditingInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启视频标签识别。0为关闭，1为开启。其他非0非1值默认为0。
        # @type Switch: Integer
        # @param CustomInfo: 额外定制化服务参数。参数为序列化的Json字符串，例如：{"k1":"v1"}。
        # @type CustomInfo: String

        attr_accessor :Switch, :CustomInfo

        def initialize(switch=nil, custominfo=nil)
          @Switch = switch
          @CustomInfo = custominfo
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CustomInfo = params['CustomInfo']
        end
      end

      # 标签项
      class TagItem < TencentCloud::Common::AbstractModel
        # @param Id: 标签内容
        # @type Id: String
        # @param Confidence: 结果的置信度（百分制）
        # @type Confidence: Integer
        # @param Categorys: 分级数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Categorys: Array
        # @param Ext: 标签备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ext: String

        attr_accessor :Id, :Confidence, :Categorys, :Ext

        def initialize(id=nil, confidence=nil, categorys=nil, ext=nil)
          @Id = id
          @Confidence = confidence
          @Categorys = categorys
          @Ext = ext
        end

        def deserialize(params)
          @Id = params['Id']
          @Confidence = params['Confidence']
          @Categorys = params['Categorys']
          @Ext = params['Ext']
        end
      end

      # 视频标签识别结果信息
      class TagTaskResult < TencentCloud::Common::AbstractModel
        # @param Status: 编辑任务状态。
        # 1：执行中；2：成功；3：失败。
        # @type Status: Integer
        # @param ErrCode: 编辑任务失败错误码。
        # 0：成功；其他值：失败。
        # @type ErrCode: Integer
        # @param ErrMsg: 编辑任务失败错误描述。
        # @type ErrMsg: String
        # @param ItemSet: 视频标签识别结果集。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ItemSet: Array

        attr_accessor :Status, :ErrCode, :ErrMsg, :ItemSet

        def initialize(status=nil, errcode=nil, errmsg=nil, itemset=nil)
          @Status = status
          @ErrCode = errcode
          @ErrMsg = errmsg
          @ItemSet = itemset
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @ErrMsg = params['ErrMsg']
          unless params['ItemSet'].nil?
            @ItemSet = []
            params['ItemSet'].each do |i|
              tagtaskresultitem_tmp = TagTaskResultItem.new
              tagtaskresultitem_tmp.deserialize(i)
              @ItemSet << tagtaskresultitem_tmp
            end
          end
        end
      end

      # 视频标签识别结果项
      class TagTaskResultItem < TencentCloud::Common::AbstractModel
        # @param Tag: 标签名称。
        # @type Tag: String
        # @param Confidence: 置信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Tag, :Confidence

        def initialize(tag=nil, confidence=nil)
          @Tag = tag
          @Confidence = confidence
        end

        def deserialize(params)
          @Tag = params['Tag']
          @Confidence = params['Confidence']
        end
      end

      # 输出文件信息
      class TargetInfo < TencentCloud::Common::AbstractModel
        # @param FileName: 目标文件名
        # @type FileName: String
        # @param SegmentInfo: 目标文件切片信息
        # @type SegmentInfo: :class:`Tencentcloud::Ie.v20200304.models.SegmentInfo`

        attr_accessor :FileName, :SegmentInfo

        def initialize(filename=nil, segmentinfo=nil)
          @FileName = filename
          @SegmentInfo = segmentinfo
        end

        def deserialize(params)
          @FileName = params['FileName']
          unless params['SegmentInfo'].nil?
            @SegmentInfo = SegmentInfo.new
            @SegmentInfo.deserialize(params['SegmentInfo'])
          end
        end
      end

      # 目标视频信息。
      class TargetVideoInfo < TencentCloud::Common::AbstractModel
        # @param Width: 视频宽度，单位像素，一般要求是偶数，否则会向下对齐。
        # @type Width: Integer
        # @param Height: 视频高度，单位像素，一般要求是偶数，否则会向下对齐。
        # @type Height: Integer
        # @param FrameRate: 视频帧率，范围在1到120之间
        # @type FrameRate: Integer

        attr_accessor :Width, :Height, :FrameRate

        def initialize(width=nil, height=nil, framerate=nil)
          @Width = width
          @Height = height
          @FrameRate = framerate
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @FrameRate = params['FrameRate']
        end
      end

      # 任务结果文件信息
      class TaskResultFile < TencentCloud::Common::AbstractModel
        # @param Url: 文件链接。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Url: String
        # @param FileSize: 文件大小，部分任务支持，单位：字节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param MediaInfo: 媒体信息，对于媒体文件，部分任务支持返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaResultInfo`
        # @param Md5: 文件对应的md5。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String

        attr_accessor :Url, :FileSize, :MediaInfo, :Md5

        def initialize(url=nil, filesize=nil, mediainfo=nil, md5=nil)
          @Url = url
          @FileSize = filesize
          @MediaInfo = mediainfo
          @Md5 = md5
        end

        def deserialize(params)
          @Url = params['Url']
          @FileSize = params['FileSize']
          unless params['MediaInfo'].nil?
            @MediaInfo = MediaResultInfo.new
            @MediaInfo.deserialize(params['MediaInfo'])
          end
          @Md5 = params['Md5']
        end
      end

      # 画质重生子任务文字水印信息
      class TextMarkInfoItem < TencentCloud::Common::AbstractModel
        # @param Text: 文字内容。
        # @type Text: String
        # @param PosX: 文字水印X坐标。
        # @type PosX: Integer
        # @param PosY: 文字水印Y坐标。
        # @type PosY: Integer
        # @param FontSize: 文字大小
        # @type FontSize: Integer
        # @param FontFile: 字体，可选项：hei,song，simkai,arial；默认hei(黑体）。
        # @type FontFile: String
        # @param FontColor: 字体颜色，颜色见附录，不填默认black。
        # @type FontColor: String
        # @param FontAlpha: 文字透明度，可选值0-1。0：不透明，1：全透明。默认为0
        # @type FontAlpha: Float

        attr_accessor :Text, :PosX, :PosY, :FontSize, :FontFile, :FontColor, :FontAlpha

        def initialize(text=nil, posx=nil, posy=nil, fontsize=nil, fontfile=nil, fontcolor=nil, fontalpha=nil)
          @Text = text
          @PosX = posx
          @PosY = posy
          @FontSize = fontsize
          @FontFile = fontfile
          @FontColor = fontcolor
          @FontAlpha = fontalpha
        end

        def deserialize(params)
          @Text = params['Text']
          @PosX = params['PosX']
          @PosY = params['PosY']
          @FontSize = params['FontSize']
          @FontFile = params['FontFile']
          @FontColor = params['FontColor']
          @FontAlpha = params['FontAlpha']
        end
      end

      # 任务视频Url形式下载信息。
      class UrlInfo < TencentCloud::Common::AbstractModel
        # @param Url: 视频 URL。
        # 注意：编辑理解仅支持mp4、flv等格式的点播文件，不支持hls；
        # @type Url: String
        # @param Format: 视频地址格式，可选值：
        # 0：音视频 ;
        # 1：直播流。
        # 默认为0。其他非0非1值默认为0。画质重生任务只支持0。
        # @type Format: Integer
        # @param Host: 【不再支持】指定请求资源时，HTTP头部host的值。
        # @type Host: String

        attr_accessor :Url, :Format, :Host

        def initialize(url=nil, format=nil, host=nil)
          @Url = url
          @Format = format
          @Host = host
        end

        def deserialize(params)
          @Url = params['Url']
          @Format = params['Format']
          @Host = params['Host']
        end
      end

      # 画质增强参数信息
      class VideoEnhance < TencentCloud::Common::AbstractModel
        # @param ArtifactReduction: 去编码毛刺、伪影参数。
        # @type ArtifactReduction: :class:`Tencentcloud::Ie.v20200304.models.ArtifactReduction`
        # @param Denoising: 去噪声参数。
        # @type Denoising: :class:`Tencentcloud::Ie.v20200304.models.Denoising`
        # @param ColorEnhance: 颜色增强参数。
        # @type ColorEnhance: :class:`Tencentcloud::Ie.v20200304.models.ColorEnhance`
        # @param Sharp: 细节增强参数。
        # @type Sharp: :class:`Tencentcloud::Ie.v20200304.models.Sharp`
        # @param WdSuperResolution: 超分参数，可选项：2，目前仅支持2倍超分。
        # 注意：此参数已经弃用，超分可以使用VideoSuperResolution参数
        # @type WdSuperResolution: Integer
        # @param FaceProtect: 人脸保护信息。
        # @type FaceProtect: :class:`Tencentcloud::Ie.v20200304.models.FaceProtect`
        # @param WdFps: 插帧，取值范围：[0, 60]，单位：Hz。
        # 注意：当取值为 0，表示帧率和原始视频保持一致。
        # @type WdFps: Integer
        # @param ScratchRepair: 去划痕参数
        # @type ScratchRepair: :class:`Tencentcloud::Ie.v20200304.models.ScratchRepair`
        # @param LowLightEnhance: 低光照增强参数
        # @type LowLightEnhance: :class:`Tencentcloud::Ie.v20200304.models.LowLightEnhance`
        # @param VideoSuperResolution: 视频超分参数
        # @type VideoSuperResolution: :class:`Tencentcloud::Ie.v20200304.models.VideoSuperResolution`
        # @param VideoRepair: 视频画质修复参数
        # @type VideoRepair: :class:`Tencentcloud::Ie.v20200304.models.VideoRepair`

        attr_accessor :ArtifactReduction, :Denoising, :ColorEnhance, :Sharp, :WdSuperResolution, :FaceProtect, :WdFps, :ScratchRepair, :LowLightEnhance, :VideoSuperResolution, :VideoRepair

        def initialize(artifactreduction=nil, denoising=nil, colorenhance=nil, sharp=nil, wdsuperresolution=nil, faceprotect=nil, wdfps=nil, scratchrepair=nil, lowlightenhance=nil, videosuperresolution=nil, videorepair=nil)
          @ArtifactReduction = artifactreduction
          @Denoising = denoising
          @ColorEnhance = colorenhance
          @Sharp = sharp
          @WdSuperResolution = wdsuperresolution
          @FaceProtect = faceprotect
          @WdFps = wdfps
          @ScratchRepair = scratchrepair
          @LowLightEnhance = lowlightenhance
          @VideoSuperResolution = videosuperresolution
          @VideoRepair = videorepair
        end

        def deserialize(params)
          unless params['ArtifactReduction'].nil?
            @ArtifactReduction = ArtifactReduction.new
            @ArtifactReduction.deserialize(params['ArtifactReduction'])
          end
          unless params['Denoising'].nil?
            @Denoising = Denoising.new
            @Denoising.deserialize(params['Denoising'])
          end
          unless params['ColorEnhance'].nil?
            @ColorEnhance = ColorEnhance.new
            @ColorEnhance.deserialize(params['ColorEnhance'])
          end
          unless params['Sharp'].nil?
            @Sharp = Sharp.new
            @Sharp.deserialize(params['Sharp'])
          end
          @WdSuperResolution = params['WdSuperResolution']
          unless params['FaceProtect'].nil?
            @FaceProtect = FaceProtect.new
            @FaceProtect.deserialize(params['FaceProtect'])
          end
          @WdFps = params['WdFps']
          unless params['ScratchRepair'].nil?
            @ScratchRepair = ScratchRepair.new
            @ScratchRepair.deserialize(params['ScratchRepair'])
          end
          unless params['LowLightEnhance'].nil?
            @LowLightEnhance = LowLightEnhance.new
            @LowLightEnhance.deserialize(params['LowLightEnhance'])
          end
          unless params['VideoSuperResolution'].nil?
            @VideoSuperResolution = VideoSuperResolution.new
            @VideoSuperResolution.deserialize(params['VideoSuperResolution'])
          end
          unless params['VideoRepair'].nil?
            @VideoRepair = VideoRepair.new
            @VideoRepair.deserialize(params['VideoRepair'])
          end
        end
      end

      # 视频转码信息
      class VideoInfo < TencentCloud::Common::AbstractModel
        # @param Fps: 视频帧率，取值范围：[0, 60]，单位：Hz。
        # 注意：当取值为 0，表示帧率和原始视频保持一致。
        # @type Fps: Integer
        # @param Width: 宽度，取值范围：0 和 [128, 4096]
        # 注意：
        # 当 Width、Height 均为 0，则分辨率同源；
        # 当 Width 为 0，Height 非 0，则 Width 按比例缩放；
        # 当 Width 非 0，Height 为 0，则 Height 按比例缩放；
        # 当 Width、Height 均非 0，则分辨率按用户指定。
        # @type Width: Integer
        # @param Height: 高度，取值范围：0 和 [128, 4096]
        # 注意：
        # 当 Width、Height 均为 0，则分辨率同源；
        # 当 Width 为 0，Height 非 0，则 Width 按比例缩放；
        # 当 Width 非 0，Height 为 0，则 Height 按比例缩放；
        # 当 Width、Height 均非 0，则分辨率按用户指定。
        # @type Height: Integer
        # @param LongSide: 长边分辨率，取值范围：0 和 [128, 4096]
        # 注意：
        # 当 LongSide、ShortSide 均为 0，则分辨率按照Width，Height；
        # 当 LongSide 为 0，ShortSide 非 0，则 LongSide 按比例缩放；
        # 当 LongSide非 0，ShortSide为 0，则 ShortSide 按比例缩放；
        # 当 LongSide、ShortSide 均非 0，则分辨率按用户指定。
        # 长短边优先级高于Weight,Height,设置长短边则忽略宽高。
        # @type LongSide: Integer
        # @param ShortSide: 短边分辨率，取值范围：0 和 [128, 4096]
        # 注意：
        # 当 LongSide、ShortSide 均为 0，则分辨率按照Width，Height；
        # 当 LongSide 为 0，ShortSide 非 0，则 LongSide 按比例缩放；
        # 当 LongSide非 0，ShortSide为 0，则 ShortSide 按比例缩放；
        # 当 LongSide、ShortSide 均非 0，则分辨率按用户指定。
        # 长短边优先级高于Weight,Height,设置长短边则忽略宽高。
        # @type ShortSide: Integer
        # @param Bitrate: 视频流的码率，取值范围：0 和 [128, 35000]，单位：kbps。当取值为 0，表示视频码率和原始视频保持一致。
        # @type Bitrate: Integer
        # @param Gop: 固定I帧之间，视频帧数量，取值范围： [25, 2500]，如果不填，使用编码默认最优序列。
        # @type Gop: Integer
        # @param VideoCodec: 编码器支持选项，可选值：
        # h264,
        # h265,
        # av1。
        # 不填默认h264。
        # @type VideoCodec: String
        # @param PicMarkInfo: 图片水印。
        # @type PicMarkInfo: Array
        # @param DarInfo: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。
        # @type DarInfo: :class:`Tencentcloud::Ie.v20200304.models.DarInfo`
        # @param Hdr: 支持hdr,可选项：
        # hdr10,
        # hlg。
        # 此时，VideoCodec会强制设置为h265, 编码位深为10
        # @type Hdr: String
        # @param VideoEnhance: 画质增强参数信息。
        # @type VideoEnhance: :class:`Tencentcloud::Ie.v20200304.models.VideoEnhance`
        # @param HiddenMarkInfo: 数字水印参数信息。
        # @type HiddenMarkInfo: :class:`Tencentcloud::Ie.v20200304.models.HiddenMarkInfo`
        # @param TextMarkInfo: 文本水印参数信息。
        # @type TextMarkInfo: Array

        attr_accessor :Fps, :Width, :Height, :LongSide, :ShortSide, :Bitrate, :Gop, :VideoCodec, :PicMarkInfo, :DarInfo, :Hdr, :VideoEnhance, :HiddenMarkInfo, :TextMarkInfo

        def initialize(fps=nil, width=nil, height=nil, longside=nil, shortside=nil, bitrate=nil, gop=nil, videocodec=nil, picmarkinfo=nil, darinfo=nil, hdr=nil, videoenhance=nil, hiddenmarkinfo=nil, textmarkinfo=nil)
          @Fps = fps
          @Width = width
          @Height = height
          @LongSide = longside
          @ShortSide = shortside
          @Bitrate = bitrate
          @Gop = gop
          @VideoCodec = videocodec
          @PicMarkInfo = picmarkinfo
          @DarInfo = darinfo
          @Hdr = hdr
          @VideoEnhance = videoenhance
          @HiddenMarkInfo = hiddenmarkinfo
          @TextMarkInfo = textmarkinfo
        end

        def deserialize(params)
          @Fps = params['Fps']
          @Width = params['Width']
          @Height = params['Height']
          @LongSide = params['LongSide']
          @ShortSide = params['ShortSide']
          @Bitrate = params['Bitrate']
          @Gop = params['Gop']
          @VideoCodec = params['VideoCodec']
          unless params['PicMarkInfo'].nil?
            @PicMarkInfo = []
            params['PicMarkInfo'].each do |i|
              picmarkinfoitem_tmp = PicMarkInfoItem.new
              picmarkinfoitem_tmp.deserialize(i)
              @PicMarkInfo << picmarkinfoitem_tmp
            end
          end
          unless params['DarInfo'].nil?
            @DarInfo = DarInfo.new
            @DarInfo.deserialize(params['DarInfo'])
          end
          @Hdr = params['Hdr']
          unless params['VideoEnhance'].nil?
            @VideoEnhance = VideoEnhance.new
            @VideoEnhance.deserialize(params['VideoEnhance'])
          end
          unless params['HiddenMarkInfo'].nil?
            @HiddenMarkInfo = HiddenMarkInfo.new
            @HiddenMarkInfo.deserialize(params['HiddenMarkInfo'])
          end
          unless params['TextMarkInfo'].nil?
            @TextMarkInfo = []
            params['TextMarkInfo'].each do |i|
              textmarkinfoitem_tmp = TextMarkInfoItem.new
              textmarkinfoitem_tmp.deserialize(i)
              @TextMarkInfo << textmarkinfoitem_tmp
            end
          end
        end
      end

      # 任务结束后生成的文件视频信息
      class VideoInfoResultItem < TencentCloud::Common::AbstractModel
        # @param Stream: 视频流的流id。
        # @type Stream: Integer
        # @param Width: 视频宽度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 视频高度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param Bitrate: 视频码率，单位：bps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bitrate: Integer
        # @param Fps: 视频帧率，用分数格式表示，如：25/1, 99/32等等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fps: String
        # @param Codec: 编码格式，如h264,h265等等 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Codec: String
        # @param Rotate: 播放旋转角度，可选值0-360。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rotate: Integer
        # @param Duration: 视频时长，单位：ms 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param PixFormat: 颜色空间，如yuv420p，yuv444p等等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PixFormat: String

        attr_accessor :Stream, :Width, :Height, :Bitrate, :Fps, :Codec, :Rotate, :Duration, :PixFormat

        def initialize(stream=nil, width=nil, height=nil, bitrate=nil, fps=nil, codec=nil, rotate=nil, duration=nil, pixformat=nil)
          @Stream = stream
          @Width = width
          @Height = height
          @Bitrate = bitrate
          @Fps = fps
          @Codec = codec
          @Rotate = rotate
          @Duration = duration
          @PixFormat = pixformat
        end

        def deserialize(params)
          @Stream = params['Stream']
          @Width = params['Width']
          @Height = params['Height']
          @Bitrate = params['Bitrate']
          @Fps = params['Fps']
          @Codec = params['Codec']
          @Rotate = params['Rotate']
          @Duration = params['Duration']
          @PixFormat = params['PixFormat']
        end
      end

      # 综合画质修复，包括：去噪，去毛刺，细节增强，主观画质提升。
      class VideoRepair < TencentCloud::Common::AbstractModel
        # @param Type: 画质修复类型，可选值：weak，normal，strong;
        # 默认值: weak
        # @type Type: String

        attr_accessor :Type

        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 视频超分
      class VideoSuperResolution < TencentCloud::Common::AbstractModel
        # @param Type: 超分视频类型：可选值：lq,hq
        # lq: 针对低清晰度有较多噪声视频的超分;
        # hq: 针对高清晰度视频超分;
        # 默认取值：lq。
        # @type Type: String
        # @param Size: 超分倍数，可选值：2。
        # 注意：当前只支持两倍超分。
        # @type Size: Integer

        attr_accessor :Type, :Size

        def initialize(type=nil, size=nil)
          @Type = type
          @Size = size
        end

        def deserialize(params)
          @Type = params['Type']
          @Size = params['Size']
        end
      end

    end
  end
end

