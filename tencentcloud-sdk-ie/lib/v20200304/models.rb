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
        # 注意：edaf：速度快，去毛刺效果强，保护边缘效果较弱；
        # wdaf：速度慢，保护边缘效果好
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

        attr_accessor :Bitrate, :Codec, :Channel, :SampleRate, :Denoise
        
        def initialize(bitrate=nil, codec=nil, channel=nil, samplerate=nil, denoise=nil)
          @Bitrate = bitrate
          @Codec = codec
          @Channel = channel
          @SampleRate = samplerate
          @Denoise = denoise
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @Codec = params['Codec']
          @Channel = params['Channel']
          @SampleRate = params['SampleRate']
          unless params['Denoise'].nil?
            @Denoise = Denoise.new.deserialize(params[Denoise])
          end
        end
      end

      # 任务结束后生成的文件音频信息
      class AudioInfoResultItem < TencentCloud::Common::AbstractModel
        # @param Stream: 音频流的流id
        # @type Stream: Integer
        # @param Sample: 音频采样率 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sample: Integer
        # @param Channel: 音频声道数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Channel: Integer
        # @param Codec: 编码格式，如aac, mp3等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Codec: String
        # @param Bitrate: 码率，单位：bps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bitrate: Integer
        # @param Duration: 音频时长，单位：ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
          @ItemSet = params['ItemSet']
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
        # 0：bucket授权，需要将对应bucket授权给本服务帐号（3020447271），否则会读写cos失败；
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
            @CosAuthMode = CosAuthMode.new.deserialize(params[CosAuthMode])
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
          @ItemSet = params['ItemSet']
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
            @EditingInfo = EditingInfo.new.deserialize(params[EditingInfo])
          end
          unless params['DownInfo'].nil?
            @DownInfo = DownInfo.new.deserialize(params[DownInfo])
          end
          unless params['SaveInfo'].nil?
            @SaveInfo = SaveInfo.new.deserialize(params[SaveInfo])
          end
          unless params['CallbackInfo'].nil?
            @CallbackInfo = CallbackInfo.new.deserialize(params[CallbackInfo])
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
            @MediaProcessInfo = MediaProcessInfo.new.deserialize(params[MediaProcessInfo])
          end
          @SourceInfoSet = params['SourceInfoSet']
          @SaveInfoSet = params['SaveInfoSet']
          @CallbackInfoSet = params['CallbackInfoSet']
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

        attr_accessor :DownInfo, :TransInfo, :SaveInfo, :CallbackInfo
        
        def initialize(downinfo=nil, transinfo=nil, saveinfo=nil, callbackinfo=nil)
          @DownInfo = downinfo
          @TransInfo = transinfo
          @SaveInfo = saveinfo
          @CallbackInfo = callbackinfo
        end

        def deserialize(params)
          unless params['DownInfo'].nil?
            @DownInfo = DownInfo.new.deserialize(params[DownInfo])
          end
          @TransInfo = params['TransInfo']
          unless params['SaveInfo'].nil?
            @SaveInfo = SaveInfo.new.deserialize(params[SaveInfo])
          end
          unless params['CallbackInfo'].nil?
            @CallbackInfo = CallbackInfo.new.deserialize(params[CallbackInfo])
          end
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
            @QualityControlInfo = QualityControlInfo.new.deserialize(params[QualityControlInfo])
          end
          unless params['DownInfo'].nil?
            @DownInfo = DownInfo.new.deserialize(params[DownInfo])
          end
          unless params['CallbackInfo'].nil?
            @CallbackInfo = CallbackInfo.new.deserialize(params[CallbackInfo])
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
            @TaskResult = EditingTaskResult.new.deserialize(params[TaskResult])
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
            @TaskResult = MediaProcessTaskResult.new.deserialize(params[TaskResult])
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
            @TaskResult = MediaQualityRestorationTaskResult.new.deserialize(params[TaskResult])
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
            @TaskResult = QualityControlInfoTaskResult.new.deserialize(params[TaskResult])
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
            @UrlInfo = UrlInfo.new.deserialize(params[UrlInfo])
          end
          unless params['CosInfo'].nil?
            @CosInfo = CosInfo.new.deserialize(params[CosInfo])
          end
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
            @TagEditingInfo = TagEditingInfo.new.deserialize(params[TagEditingInfo])
          end
          unless params['ClassificationEditingInfo'].nil?
            @ClassificationEditingInfo = ClassificationEditingInfo.new.deserialize(params[ClassificationEditingInfo])
          end
          unless params['StripEditingInfo'].nil?
            @StripEditingInfo = StripEditingInfo.new.deserialize(params[StripEditingInfo])
          end
          unless params['HighlightsEditingInfo'].nil?
            @HighlightsEditingInfo = HighlightsEditingInfo.new.deserialize(params[HighlightsEditingInfo])
          end
          unless params['CoverEditingInfo'].nil?
            @CoverEditingInfo = CoverEditingInfo.new.deserialize(params[CoverEditingInfo])
          end
          unless params['OpeningEndingEditingInfo'].nil?
            @OpeningEndingEditingInfo = OpeningEndingEditingInfo.new.deserialize(params[OpeningEndingEditingInfo])
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
            @TagTaskResult = TagTaskResult.new.deserialize(params[TagTaskResult])
          end
          unless params['ClassificationTaskResult'].nil?
            @ClassificationTaskResult = ClassificationTaskResult.new.deserialize(params[ClassificationTaskResult])
          end
          unless params['StripTaskResult'].nil?
            @StripTaskResult = StripTaskResult.new.deserialize(params[StripTaskResult])
          end
          unless params['HighlightsTaskResult'].nil?
            @HighlightsTaskResult = HighlightsTaskResult.new.deserialize(params[HighlightsTaskResult])
          end
          unless params['CoverTaskResult'].nil?
            @CoverTaskResult = CoverTaskResult.new.deserialize(params[CoverTaskResult])
          end
          unless params['OpeningEndingTaskResult'].nil?
            @OpeningEndingTaskResult = OpeningEndingTaskResult.new.deserialize(params[OpeningEndingTaskResult])
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
        # 注意：此字段可能返回 null，表示取不到有效值 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileSize: Integer
        # @param FileType: 任务结束后生成的文件格式，例如：mp4,flv等等。
        # 注意：此字段可能返回 null，表示取不到有效值 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileType: String
        # @param Bitrate: 任务结束后生成的文件整体码率，单位：bps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bitrate: Integer
        # @param Duration: 任务结束后生成的文件时长，单位：ms。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param VideoInfoResult: 任务结束后生成的文件视频信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoInfoResult: Array
        # @param AudioInfoResult: 任务结束后生成的文件音频信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
          @VideoInfoResult = params['VideoInfoResult']
          @AudioInfoResult = params['AudioInfoResult']
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
          @TagItems = params['TagItems']
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
          @FrameTagItems = params['FrameTagItems']
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
          @ItemSet = params['ItemSet']
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
          @SegmentSet = params['SegmentSet']
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

      # 编辑处理/剪切任务信息
      class MediaCuttingInfo < TencentCloud::Common::AbstractModel
        # @param TimeInfo: 截取时间信息。
        # @type TimeInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaCuttingTimeInfo`
        # @param TargetInfo: 输出结果信息。
        # @type TargetInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaTargetInfo`
        # @param OutForm: 截取结果形式信息。
        # @type OutForm: :class:`Tencentcloud::Ie.v20200304.models.MediaCuttingOutForm`
        # @param ResultListSaveType: 列表文件形式，存储到用户存储服务中，可选值：
        # UseSaveInfo：默认，结果列表和结果存储同一位置；
        # NoListFile：不存储结果列表。
        # @type ResultListSaveType: String

        attr_accessor :TimeInfo, :TargetInfo, :OutForm, :ResultListSaveType
        
        def initialize(timeinfo=nil, targetinfo=nil, outform=nil, resultlistsavetype=nil)
          @TimeInfo = timeinfo
          @TargetInfo = targetinfo
          @OutForm = outform
          @ResultListSaveType = resultlistsavetype
        end

        def deserialize(params)
          unless params['TimeInfo'].nil?
            @TimeInfo = MediaCuttingTimeInfo.new.deserialize(params[TimeInfo])
          end
          unless params['TargetInfo'].nil?
            @TargetInfo = MediaTargetInfo.new.deserialize(params[TargetInfo])
          end
          unless params['OutForm'].nil?
            @OutForm = MediaCuttingOutForm.new.deserialize(params[OutForm])
          end
          @ResultListSaveType = params['ResultListSaveType']
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
        # @param SpriteRowCount: Type=Sprite时有效，表示雪碧图行数，范围为 [1,200]，默认100。
        # @type SpriteRowCount: Integer
        # @param SpriteColumnCount: Type=Sprite时有效，表示雪碧图列数，范围为 [1,200]，默认100。
        # @type SpriteColumnCount: Integer

        attr_accessor :Type, :FillType, :SpriteRowCount, :SpriteColumnCount
        
        def initialize(type=nil, filltype=nil, spriterowcount=nil, spritecolumncount=nil)
          @Type = type
          @FillType = filltype
          @SpriteRowCount = spriterowcount
          @SpriteColumnCount = spritecolumncount
        end

        def deserialize(params)
          @Type = params['Type']
          @FillType = params['FillType']
          @SpriteRowCount = params['SpriteRowCount']
          @SpriteColumnCount = params['SpriteColumnCount']
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

        attr_accessor :ListFile, :ResultCount, :FirstFile, :LastFile
        
        def initialize(listfile=nil, resultcount=nil, firstfile=nil, lastfile=nil)
          @ListFile = listfile
          @ResultCount = resultcount
          @FirstFile = firstfile
          @LastFile = lastfile
        end

        def deserialize(params)
          unless params['ListFile'].nil?
            @ListFile = TaskResultFile.new.deserialize(params[ListFile])
          end
          @ResultCount = params['ResultCount']
          unless params['FirstFile'].nil?
            @FirstFile = TaskResultFile.new.deserialize(params[FirstFile])
          end
          unless params['LastFile'].nil?
            @LastFile = TaskResultFile.new.deserialize(params[LastFile])
          end
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
            @IntervalPoint = IntervalTime.new.deserialize(params[IntervalPoint])
          end
          @SectionSet = params['SectionSet']
        end
      end

      # 编辑处理/拼接任务信息
      class MediaJoiningInfo < TencentCloud::Common::AbstractModel
        # @param TargetInfo: 输出目标信息，拼接只采用FileName和Format，用于指定目标文件名和格式。
        # 其中Format只支持mp4.
        # @type TargetInfo: :class:`Tencentcloud::Ie.v20200304.models.MediaTargetInfo`

        attr_accessor :TargetInfo
        
        def initialize(targetinfo=nil)
          @TargetInfo = targetinfo
        end

        def deserialize(params)
          unless params['TargetInfo'].nil?
            @TargetInfo = MediaTargetInfo.new.deserialize(params[TargetInfo])
          end
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
            @File = TaskResultFile.new.deserialize(params[File])
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
            @MediaCuttingInfo = MediaCuttingInfo.new.deserialize(params[MediaCuttingInfo])
          end
          unless params['MediaJoiningInfo'].nil?
            @MediaJoiningInfo = MediaJoiningInfo.new.deserialize(params[MediaJoiningInfo])
          end
          unless params['MediaRecognitionInfo'].nil?
            @MediaRecognitionInfo = MediaRecognitionInfo.new.deserialize(params[MediaRecognitionInfo])
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
            @MediaCuttingTaskResult = MediaCuttingTaskResult.new.deserialize(params[MediaCuttingTaskResult])
          end
          unless params['MediaJoiningTaskResult'].nil?
            @MediaJoiningTaskResult = MediaJoiningTaskResult.new.deserialize(params[MediaJoiningTaskResult])
          end
          unless params['MediaRecognitionTaskResult'].nil?
            @MediaRecognitionTaskResult = MediaRecognitionTaskResult.new.deserialize(params[MediaRecognitionTaskResult])
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
          @SubTaskResult = params['SubTaskResult']
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
            @FrameTagRec = FrameTagRec.new.deserialize(params[FrameTagRec])
          end
          unless params['SubtitleRec'].nil?
            @SubtitleRec = SubtitleRec.new.deserialize(params[SubtitleRec])
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
            @FrameTagResults = FrameTagResult.new.deserialize(params[FrameTagResults])
          end
          unless params['SubtitleResults'].nil?
            @SubtitleResults = SubtitleResult.new.deserialize(params[SubtitleResults])
          end
        end
      end

      # 编辑处理的媒体源
      class MediaSourceInfo < TencentCloud::Common::AbstractModel
        # @param DownInfo: 媒体源资源下载信息。
        # @type DownInfo: :class:`Tencentcloud::Ie.v20200304.models.DownInfo`
        # @param Id: 媒体源ID标记，用于多个输入源时，请内媒体源的定位，对于多输入的任务，一般要求必选。
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
            @DownInfo = DownInfo.new.deserialize(params[DownInfo])
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
        # @param ResultListSaveType: 【不再使用】 对于多输出任务，部分子服务推荐结果信息以列表文件形式，存储到用户存储服务中，可选值：
        # UseSaveInfo：默认，结果列表和结果存储同一位置；
        # NoListFile：不存储结果列表。
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
            @TargetVideoInfo = TargetVideoInfo.new.deserialize(params[TargetVideoInfo])
          end
          @ResultListSaveType = params['ResultListSaveType']
        end
      end

      # 流封装信息
      class MuxInfo < TencentCloud::Common::AbstractModel
        # @param DeleteStream: 删除流，可选项：video,audio。
        # @type DeleteStream: String

        attr_accessor :DeleteStream
        
        def initialize(deletestream=nil)
          @DeleteStream = deletestream
        end

        def deserialize(params)
          @DeleteStream = params['DeleteStream']
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
            @Item = OpeningEndingTaskResultItem.new.deserialize(params[Item])
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
            @CosInfo = CosInfo.new.deserialize(params[CosInfo])
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
          @QualityEvaluationResults = params['QualityEvaluationResults']
          @JitterResults = params['JitterResults']
          @BlurResults = params['BlurResults']
          @AbnormalLightingResults = params['AbnormalLightingResults']
          @CrashScreenResults = params['CrashScreenResults']
          @BlackWhiteEdgeResults = params['BlackWhiteEdgeResults']
          @NoiseResults = params['NoiseResults']
          @MosaicResults = params['MosaicResults']
          @QRCodeResults = params['QRCodeResults']
          @VoiceResults = params['VoiceResults']
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
          @QualityControlItems = params['QualityControlItems']
        end
      end

      # 任务存储信息
      class SaveInfo < TencentCloud::Common::AbstractModel
        # @param Type: 存储类型，可选值：
        # 1：CosInfo。
        # @type Type: Integer
        # @param CosInfo: Cos形式存储信息，当Type等于1时必选。
        # @type CosInfo: :class:`Tencentcloud::Ie.v20200304.models.CosInfo`

        attr_accessor :Type, :CosInfo
        
        def initialize(type=nil, cosinfo=nil)
          @Type = type
          @CosInfo = cosinfo
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['CosInfo'].nil?
            @CosInfo = CosInfo.new.deserialize(params[CosInfo])
          end
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
          @ItemSet = params['ItemSet']
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
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProgressRate: Integer
        # @param DownloadUrl: 画质重生处理后文件的下载地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadUrl: String
        # @param Md5: 画质重生处理后文件的MD5。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Md5: String
        # @param FileInfo: 画质重生处理后文件的详细信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
            @FileInfo = FileInfo.new.deserialize(params[FileInfo])
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
            @TargetInfo = TargetInfo.new.deserialize(params[TargetInfo])
          end
          unless params['EditInfo'].nil?
            @EditInfo = EditInfo.new.deserialize(params[EditInfo])
          end
          unless params['VideoInfo'].nil?
            @VideoInfo = VideoInfo.new.deserialize(params[VideoInfo])
          end
          unless params['AudioInfo'].nil?
            @AudioInfo = AudioInfo.new.deserialize(params[AudioInfo])
          end
          unless params['MuxInfo'].nil?
            @MuxInfo = MuxInfo.new.deserialize(params[MuxInfo])
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
          @SubtitleItems = params['SubtitleItems']
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
          @ItemSet = params['ItemSet']
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
            @SegmentInfo = SegmentInfo.new.deserialize(params[SegmentInfo])
          end
        end
      end

      # 目标视频信息。
      class TargetVideoInfo < TencentCloud::Common::AbstractModel
        # @param Width: 视频宽度，单位像素
        # @type Width: Integer
        # @param Height: 视频高度，单位像素
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

        attr_accessor :Url
        
        def initialize(url=nil)
          @Url = url
        end

        def deserialize(params)
          @Url = params['Url']
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
        # @param Host: 指定请求资源时，HTTP头部host的值。
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

        attr_accessor :ArtifactReduction, :Denoising, :ColorEnhance, :Sharp, :WdSuperResolution, :FaceProtect, :WdFps, :ScratchRepair, :LowLightEnhance
        
        def initialize(artifactreduction=nil, denoising=nil, colorenhance=nil, sharp=nil, wdsuperresolution=nil, faceprotect=nil, wdfps=nil, scratchrepair=nil, lowlightenhance=nil)
          @ArtifactReduction = artifactreduction
          @Denoising = denoising
          @ColorEnhance = colorenhance
          @Sharp = sharp
          @WdSuperResolution = wdsuperresolution
          @FaceProtect = faceprotect
          @WdFps = wdfps
          @ScratchRepair = scratchrepair
          @LowLightEnhance = lowlightenhance
        end

        def deserialize(params)
          unless params['ArtifactReduction'].nil?
            @ArtifactReduction = ArtifactReduction.new.deserialize(params[ArtifactReduction])
          end
          unless params['Denoising'].nil?
            @Denoising = Denoising.new.deserialize(params[Denoising])
          end
          unless params['ColorEnhance'].nil?
            @ColorEnhance = ColorEnhance.new.deserialize(params[ColorEnhance])
          end
          unless params['Sharp'].nil?
            @Sharp = Sharp.new.deserialize(params[Sharp])
          end
          @WdSuperResolution = params['WdSuperResolution']
          unless params['FaceProtect'].nil?
            @FaceProtect = FaceProtect.new.deserialize(params[FaceProtect])
          end
          @WdFps = params['WdFps']
          unless params['ScratchRepair'].nil?
            @ScratchRepair = ScratchRepair.new.deserialize(params[ScratchRepair])
          end
          unless params['LowLightEnhance'].nil?
            @LowLightEnhance = LowLightEnhance.new.deserialize(params[LowLightEnhance])
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
        # av1
        # 。
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

        attr_accessor :Fps, :Width, :Height, :LongSide, :ShortSide, :Bitrate, :Gop, :VideoCodec, :PicMarkInfo, :DarInfo, :Hdr, :VideoEnhance
        
        def initialize(fps=nil, width=nil, height=nil, longside=nil, shortside=nil, bitrate=nil, gop=nil, videocodec=nil, picmarkinfo=nil, darinfo=nil, hdr=nil, videoenhance=nil)
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
          @PicMarkInfo = params['PicMarkInfo']
          unless params['DarInfo'].nil?
            @DarInfo = DarInfo.new.deserialize(params[DarInfo])
          end
          @Hdr = params['Hdr']
          unless params['VideoEnhance'].nil?
            @VideoEnhance = VideoEnhance.new.deserialize(params[VideoEnhance])
          end
        end
      end

      # 任务结束后生成的文件视频信息
      class VideoInfoResultItem < TencentCloud::Common::AbstractModel
        # @param Stream: 视频流的流id。
        # @type Stream: Integer
        # @param Width: 视频宽度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Width: Integer
        # @param Height: 视频高度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Height: Integer
        # @param Bitrate: 视频码率，单位：bps。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bitrate: Integer
        # @param Fps: 视频帧率，用分数格式表示，如：25/1, 99/32等等。
        # 注意：此字段可能返回 null，表示取不到有效值 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Fps: String
        # @param Codec: 编码格式，如h264,h265等等 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Codec: String
        # @param Rotate: 播放旋转角度，可选值0-360。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rotate: Integer
        # @param Duration: 视频时长，单位：ms 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Duration: Integer
        # @param PixFormat: 颜色空间，如yuv420p，yuv444p等等。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

    end
  end
end

