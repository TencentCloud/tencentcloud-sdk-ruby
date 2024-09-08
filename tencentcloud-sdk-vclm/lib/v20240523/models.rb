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
  module Vclm
    module V20240523
      # 文本片段及其时间戳
      class AsrTimestamps < TencentCloud::Common::AbstractModel
        # @param Text: 文本片段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Text: String
        # @param StartMs: 开始时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StartMs: Integer
        # @param EndMs: 结束时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndMs: Integer

        attr_accessor :Text, :StartMs, :EndMs

        def initialize(text=nil, startms=nil, endms=nil)
          @Text = text
          @StartMs = startms
          @EndMs = endms
        end

        def deserialize(params)
          @Text = params['Text']
          @StartMs = params['StartMs']
          @EndMs = params['EndMs']
        end
      end

      # ConfirmVideoTranslateJob请求参数结构体
      class ConfirmVideoTranslateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 视频翻译任务 ID
        # @type JobId: String
        # @param TranslateResults: 待确认文本
        # @type TranslateResults: Array

        attr_accessor :JobId, :TranslateResults

        def initialize(jobid=nil, translateresults=nil)
          @JobId = jobid
          @TranslateResults = translateresults
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['TranslateResults'].nil?
            @TranslateResults = []
            params['TranslateResults'].each do |i|
              translateresult_tmp = TranslateResult.new
              translateresult_tmp.deserialize(i)
              @TranslateResults << translateresult_tmp
            end
          end
        end
      end

      # ConfirmVideoTranslateJob返回参数结构体
      class ConfirmVideoTranslateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 视频翻译任务 ID
        # @type JobId: String
        # @param TaskId: 音频转换任务 ID
        # @type TaskId: String
        # @param SessionId: 音频翻译结果确认 session
        # @type SessionId: String
        # @param Status: 视频转译任务状态
        # @type Status: Integer
        # @param Message: 视频转译任务信息
        # @type Message: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :TaskId, :SessionId, :Status, :Message, :RequestId

        def initialize(jobid=nil, taskid=nil, sessionid=nil, status=nil, message=nil, requestid=nil)
          @JobId = jobid
          @TaskId = taskid
          @SessionId = sessionid
          @Status = status
          @Message = message
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TaskId = params['TaskId']
          @SessionId = params['SessionId']
          @Status = params['Status']
          @Message = params['Message']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageAnimateJob请求参数结构体
      class DescribeImageAnimateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID。
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeImageAnimateJob返回参数结构体
      class DescribeImageAnimateJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # @type Status: String
        # @param ErrorCode: 错误码。
        # @type ErrorCode: String
        # @param ErrorMessage: 错误信息。
        # @type ErrorMessage: String
        # @param ResultVideoUrl: 结果视频URL。有效期 24 小时。
        # @type ResultVideoUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ErrorCode, :ErrorMessage, :ResultVideoUrl, :RequestId

        def initialize(status=nil, errorcode=nil, errormessage=nil, resultvideourl=nil, requestid=nil)
          @Status = status
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @ResultVideoUrl = resultvideourl
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @ResultVideoUrl = params['ResultVideoUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribePortraitSingJob请求参数结构体
      class DescribePortraitSingJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribePortraitSingJob返回参数结构体
      class DescribePortraitSingJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param StatusCode: 任务状态码
        # —RUN：处理中
        # —FAIL：处理失败
        # —STOP：处理终止
        # —DONE：处理完成
        # @type StatusCode: String
        # @param StatusMsg: 任务状态信息
        # @type StatusMsg: String
        # @param ResultVideoUrl: 生成视频的URL地址
        # 有效期24小时
        # @type ResultVideoUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :StatusCode, :StatusMsg, :ResultVideoUrl, :RequestId

        def initialize(jobid=nil, statuscode=nil, statusmsg=nil, resultvideourl=nil, requestid=nil)
          @JobId = jobid
          @StatusCode = statuscode
          @StatusMsg = statusmsg
          @ResultVideoUrl = resultvideourl
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StatusCode = params['StatusCode']
          @StatusMsg = params['StatusMsg']
          @ResultVideoUrl = params['ResultVideoUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoStylizationJob请求参数结构体
      class DescribeVideoStylizationJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeVideoStylizationJob返回参数结构体
      class DescribeVideoStylizationJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID。
        # @type JobId: String
        # @param StatusCode: 任务状态码：
        # JobInit:  "初始化中"
        # JobModerationFailed: "审核失败",
        # JobRunning: "处理中",
        # JobFailed: "处理失败",
        # JobSuccess: "处理完成"。
        # @type StatusCode: String
        # @param StatusMsg: 任务状态描述。
        # @type StatusMsg: String
        # @param ResultVideoUrl: 处理结果视频Url。URL有效期为24小时。
        # @type ResultVideoUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :StatusCode, :StatusMsg, :ResultVideoUrl, :RequestId

        def initialize(jobid=nil, statuscode=nil, statusmsg=nil, resultvideourl=nil, requestid=nil)
          @JobId = jobid
          @StatusCode = statuscode
          @StatusMsg = statusmsg
          @ResultVideoUrl = resultvideourl
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StatusCode = params['StatusCode']
          @StatusMsg = params['StatusMsg']
          @ResultVideoUrl = params['ResultVideoUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoTranslateJob请求参数结构体
      class DescribeVideoTranslateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 视频转译任务 ID
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeVideoTranslateJob返回参数结构体
      class DescribeVideoTranslateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatus: 任务状态。 1：音频翻译中。 2：音频翻译失败。 3：音频翻译成功。 4：音频结果待确认。 5：音频结果已确认完毕。6：视频翻译中。 7：视频翻译失败。 8：视频翻译成功。
        # @type JobStatus: Integer
        # @param JobErrorCode: 任务错误码。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务错误信息。
        # @type JobErrorMsg: String
        # @param ResultVideoUrl: 视频翻译结果。
        # @type ResultVideoUrl: String
        # @param TranslateResults: 音频翻译结果。
        # @type TranslateResults: Array
        # @param JobConfirm: 是否需要确认翻译结果。0：不需要，1：需要
        # @type JobConfirm: Integer
        # @param JobAudioTaskId: 音频任务 ID
        # @type JobAudioTaskId: String
        # @param JobVideoModerationId: 视频审核任务ID
        # @type JobVideoModerationId: String
        # @param JobAudioModerationId: 音频审核任务 ID
        # @type JobAudioModerationId: String
        # @param JobVideoId: 口型驱动任务 ID
        # @type JobVideoId: String
        # @param OriginalVideoUrl: 视频素材原始 URL
        # @type OriginalVideoUrl: String
        # @param AsrTimestamps: 文本片段及其时间戳
        # @type AsrTimestamps: Array
        # @param JobSubmitReqId: 提交视频翻译任务时的 requestId
        # @type JobSubmitReqId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatus, :JobErrorCode, :JobErrorMsg, :ResultVideoUrl, :TranslateResults, :JobConfirm, :JobAudioTaskId, :JobVideoModerationId, :JobAudioModerationId, :JobVideoId, :OriginalVideoUrl, :AsrTimestamps, :JobSubmitReqId, :RequestId

        def initialize(jobstatus=nil, joberrorcode=nil, joberrormsg=nil, resultvideourl=nil, translateresults=nil, jobconfirm=nil, jobaudiotaskid=nil, jobvideomoderationid=nil, jobaudiomoderationid=nil, jobvideoid=nil, originalvideourl=nil, asrtimestamps=nil, jobsubmitreqid=nil, requestid=nil)
          @JobStatus = jobstatus
          @JobErrorCode = joberrorcode
          @JobErrorMsg = joberrormsg
          @ResultVideoUrl = resultvideourl
          @TranslateResults = translateresults
          @JobConfirm = jobconfirm
          @JobAudioTaskId = jobaudiotaskid
          @JobVideoModerationId = jobvideomoderationid
          @JobAudioModerationId = jobaudiomoderationid
          @JobVideoId = jobvideoid
          @OriginalVideoUrl = originalvideourl
          @AsrTimestamps = asrtimestamps
          @JobSubmitReqId = jobsubmitreqid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatus = params['JobStatus']
          @JobErrorCode = params['JobErrorCode']
          @JobErrorMsg = params['JobErrorMsg']
          @ResultVideoUrl = params['ResultVideoUrl']
          unless params['TranslateResults'].nil?
            @TranslateResults = []
            params['TranslateResults'].each do |i|
              translateresult_tmp = TranslateResult.new
              translateresult_tmp.deserialize(i)
              @TranslateResults << translateresult_tmp
            end
          end
          @JobConfirm = params['JobConfirm']
          @JobAudioTaskId = params['JobAudioTaskId']
          @JobVideoModerationId = params['JobVideoModerationId']
          @JobAudioModerationId = params['JobAudioModerationId']
          @JobVideoId = params['JobVideoId']
          @OriginalVideoUrl = params['OriginalVideoUrl']
          unless params['AsrTimestamps'].nil?
            @AsrTimestamps = []
            params['AsrTimestamps'].each do |i|
              asrtimestamps_tmp = AsrTimestamps.new
              asrtimestamps_tmp.deserialize(i)
              @AsrTimestamps << asrtimestamps_tmp
            end
          end
          @JobSubmitReqId = params['JobSubmitReqId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitImageAnimateJob请求参数结构体
      class SubmitImageAnimateJobRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片格式：支持PNG、JPG、JPEG格式；
        # 图片分辨率：长边分辨率不超过2056；
        # 图片大小：不超过10M；
        # 图片宽高比：【宽：高】数值在 1:2 到 1:1.2 范围内
        # @type ImageUrl: String
        # @param ImageBase64: 图片base64数据。图片格式：支持PNG、JPG、JPEG格式；图片分辨率：长边分辨率不超过2056；图片大小：不超过10M；图片宽高比：【宽：高】数值在 1:2 到 1:1.2 范围内
        # @type ImageBase64: String
        # @param TemplateId: 动作模板ID。取值说明：ke3 科目三；tuziwu 兔子舞；huajiangwu 划桨舞。
        # @type TemplateId: String
        # @param EnableAudio: 结果视频是否保留模板音频。默认为true
        # @type EnableAudio: Boolean
        # @param EnableBodyJoins: 是否检测输入图人体12个身体部位（头部、颈部、右肩、右肘、右腕、左肩、左肘、左腕、右髋、左髋,、左膝、右膝）。默认不检测。
        # @type EnableBodyJoins: Boolean

        attr_accessor :ImageUrl, :ImageBase64, :TemplateId, :EnableAudio, :EnableBodyJoins

        def initialize(imageurl=nil, imagebase64=nil, templateid=nil, enableaudio=nil, enablebodyjoins=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @TemplateId = templateid
          @EnableAudio = enableaudio
          @EnableBodyJoins = enablebodyjoins
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @TemplateId = params['TemplateId']
          @EnableAudio = params['EnableAudio']
          @EnableBodyJoins = params['EnableBodyJoins']
        end
      end

      # SubmitImageAnimateJob返回参数结构体
      class SubmitImageAnimateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitPortraitSingJob请求参数结构体
      class SubmitPortraitSingJobRequest < TencentCloud::Common::AbstractModel
        # @param AudioUrl: 传入音频URL地址。音频要求：
        # —音频时长：不超过60秒
        # —音频格式：mp3、wav、m4a
        # @type AudioUrl: String
        # @param ImageUrl: 传入图片URL地址，图片要求：
        # —图片格式：jpg、jpeg、png
        # —图片分辨率：长边不超过2560
        # —图片大小：不超过6M
        # —图片宽高比：图片【宽：高】在1:2到2:1范围内
        # @type ImageUrl: String
        # @param ImageBase64: 传入图片Base64编码。
        # —图片Base64编码与URL地址必传其一
        # @type ImageBase64: String

        attr_accessor :AudioUrl, :ImageUrl, :ImageBase64

        def initialize(audiourl=nil, imageurl=nil, imagebase64=nil)
          @AudioUrl = audiourl
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @AudioUrl = params['AudioUrl']
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # SubmitPortraitSingJob返回参数结构体
      class SubmitPortraitSingJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitVideoStylizationJob请求参数结构体
      class SubmitVideoStylizationJobRequest < TencentCloud::Common::AbstractModel
        # @param StyleId: 风格ID，取值说明：2d_anime 2D动漫；3d_cartoon 3D卡通；3d_china 3D国潮；pixel_art	像素风。
        # @type StyleId: String
        # @param VideoUrl: 输入视频URL。视频要求：
        # - 视频格式：mp4、mov；
        # - 视频时长：1～60秒；
        # - 视频分辨率：540P~2056P，即长宽像素数均在540px～2056px范围内；
        # - 视频大小：不超过200M；
        # - 视频FPS：15～60fps。
        # @type VideoUrl: String
        # @param StyleStrength: 风格化强度 可选参数["low","medium","high"]
        # "low":风格化强度弱,"medium":"风格化强度中等","high":"风格化强度强"
        # 默认为medium
        # @type StyleStrength: String

        attr_accessor :StyleId, :VideoUrl, :StyleStrength

        def initialize(styleid=nil, videourl=nil, stylestrength=nil)
          @StyleId = styleid
          @VideoUrl = videourl
          @StyleStrength = stylestrength
        end

        def deserialize(params)
          @StyleId = params['StyleId']
          @VideoUrl = params['VideoUrl']
          @StyleStrength = params['StyleStrength']
        end
      end

      # SubmitVideoStylizationJob返回参数结构体
      class SubmitVideoStylizationJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitVideoTranslateJob请求参数结构体
      class SubmitVideoTranslateJobRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 视频地址URL。
        # 格式要求：支持 mp4、mov 。
        # 时长要求：【10-300】秒。
        # fps 要求：【15-60】fps
        # 分辨率要求：单边像素要求在 【540~1920】 之间。
        # @type VideoUrl: String
        # @param SrcLang: 源语言：zh(中文), en(英文)
        # @type SrcLang: String
        # @param DstLang: 目标语种：
        # zh(简体中文)、en(英语)、ar(阿拉伯语)、de(德语)、es(西班牙语)、fr(法语)、id(印尼语)、it(意大利语)、ja(日语)、ko(韩语)、ms(马来语)、pt(葡萄牙语)、ru(俄语)、th(泰语)、tr(土耳其语)、vi(越南语)
        # @type DstLang: String
        # @param AudioUrl: 当音频 URL 不为空时，默认以音频驱动视频任务口型。
        # 格式要求：支持 mp3、m4a、acc、wav 格式。
        # 时长要求：【10~300】秒
        # 大小要求：不超过 100M。
        # @type AudioUrl: String
        # @param Confirm: 是否需要确认翻译结果0：不需要，1：需要
        # @type Confirm: Integer
        # @param LipSync: 是否开启口型驱动，0：不开启，1：开启。默认开启。
        # @type LipSync: Integer
        # @param VoiceType: 音色种别：一种音色种别对应一种不同区域的音色
        # 1）目标语种为小语种(非zh,en)时，该项为必填
        # 2）目标语种为zh,en时，该项为非必填，若填入，则对应填入的音色

        # 具体音色包含请见“支持音色种别列表”
        # @type VoiceType: String

        attr_accessor :VideoUrl, :SrcLang, :DstLang, :AudioUrl, :Confirm, :LipSync, :VoiceType

        def initialize(videourl=nil, srclang=nil, dstlang=nil, audiourl=nil, confirm=nil, lipsync=nil, voicetype=nil)
          @VideoUrl = videourl
          @SrcLang = srclang
          @DstLang = dstlang
          @AudioUrl = audiourl
          @Confirm = confirm
          @LipSync = lipsync
          @VoiceType = voicetype
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @SrcLang = params['SrcLang']
          @DstLang = params['DstLang']
          @AudioUrl = params['AudioUrl']
          @Confirm = params['Confirm']
          @LipSync = params['LipSync']
          @VoiceType = params['VoiceType']
        end
      end

      # SubmitVideoTranslateJob返回参数结构体
      class SubmitVideoTranslateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :RequestId

        def initialize(jobid=nil, requestid=nil)
          @JobId = jobid
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @RequestId = params['RequestId']
        end
      end

      # 音频翻译结果
      class TranslateResult < TencentCloud::Common::AbstractModel
        # @param SourceText: 翻译源文字
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceText: String
        # @param TargetText: 翻译后文字。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TargetText: String

        attr_accessor :SourceText, :TargetText

        def initialize(sourcetext=nil, targettext=nil)
          @SourceText = sourcetext
          @TargetText = targettext
        end

        def deserialize(params)
          @SourceText = params['SourceText']
          @TargetText = params['TargetText']
        end
      end

    end
  end
end

