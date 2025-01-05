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

      # CheckAnimateImageJob请求参数结构体
      class CheckAnimateImageJobRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 动作模板ID。
        # @type TemplateId: String
        # @param ImageUrl: 图片格式：支持PNG、JPG、JPEG、BMP、WEBP格式；
        # 图片分辨率：长边分辨率范围【192，4096】；
        # 图片大小：不超过10M；
        # 图片宽高比：【宽：高】数值在 1:2 到 1:1.2 范围内
        # @type ImageUrl: String
        # @param ImageBase64: 图片base64数据。
        # 图片格式：支持PNG、JPG、JPEG、BMP、WEBP格式；
        # 图片分辨率：长边分辨率范围【192，4096】；
        # 图片大小：不超过10M；
        # 图片宽高比：【宽：高】数值在 1:2 到 1:1.2 范围内
        # @type ImageBase64: String
        # @param EnableBodyJoins: 是否检测输入图人体12个身体部位（头部、颈部、右肩、右肘、右腕、左肩、左肘、左腕、右髋、左髋,、左膝、右膝）。默认不检测。
        # @type EnableBodyJoins: Boolean

        attr_accessor :TemplateId, :ImageUrl, :ImageBase64, :EnableBodyJoins

        def initialize(templateid=nil, imageurl=nil, imagebase64=nil, enablebodyjoins=nil)
          @TemplateId = templateid
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @EnableBodyJoins = enablebodyjoins
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @EnableBodyJoins = params['EnableBodyJoins']
        end
      end

      # CheckAnimateImageJob返回参数结构体
      class CheckAnimateImageJobResponse < TencentCloud::Common::AbstractModel
        # @param CheckPass: 输入图是否通过校验。
        # @type CheckPass: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckPass, :RequestId

        def initialize(checkpass=nil, requestid=nil)
          @CheckPass = checkpass
          @RequestId = requestid
        end

        def deserialize(params)
          @CheckPass = params['CheckPass']
          @RequestId = params['RequestId']
        end
      end

      # ConfirmVideoTranslateJob请求参数结构体
      class ConfirmVideoTranslateJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 视频转译任务 ID
        # @type JobId: String
        # @param TranslateResults: 待确认文本。
        # 如果文本中含有数字，支持将数字配置为SSML语言
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
        # @param JobId: 视频转译任务 ID。
        # @type JobId: String
        # @param TaskId: 音频转译任务 ID。
        # @type TaskId: String
        # @param SessionId: 音频转译结果确认 session。
        # @type SessionId: String
        # @param Status: 任务状态。0：任务初始化。1：音频翻译中。 2：音频翻译失败。 3：音频翻译成功。 4：音频结果待确认。 5：音频结果已确认完毕。6：视频翻译中。 7：视频翻译失败。 8：视频翻译成功。
        # @type Status: Integer
        # @param Message: 视频转译任务信息。
        # @type Message: String
        # @param JobStatus: 任务状态。0：任务初始化。1：音频翻译中。 2：音频翻译失败。 3：音频翻译成功。 4：音频结果待确认。 5：音频结果已确认完毕。6：视频翻译中。 7：视频翻译失败。 8：视频翻译成功。
        # @type JobStatus: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :TaskId, :SessionId, :Status, :Message, :JobStatus, :RequestId
        extend Gem::Deprecate
        deprecate :TaskId, :none, 2025, 1
        deprecate :TaskId=, :none, 2025, 1
        deprecate :SessionId, :none, 2025, 1
        deprecate :SessionId=, :none, 2025, 1
        deprecate :Status, :none, 2025, 1
        deprecate :Status=, :none, 2025, 1
        deprecate :Message, :none, 2025, 1
        deprecate :Message=, :none, 2025, 1

        def initialize(jobid=nil, taskid=nil, sessionid=nil, status=nil, message=nil, jobstatus=nil, requestid=nil)
          @JobId = jobid
          @TaskId = taskid
          @SessionId = sessionid
          @Status = status
          @Message = message
          @JobStatus = jobstatus
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @TaskId = params['TaskId']
          @SessionId = params['SessionId']
          @Status = params['Status']
          @Message = params['Message']
          @JobStatus = params['JobStatus']
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
        # @param MaskVideoUrl: 掩码视频链接
        # @type MaskVideoUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ErrorCode, :ErrorMessage, :ResultVideoUrl, :MaskVideoUrl, :RequestId

        def initialize(status=nil, errorcode=nil, errormessage=nil, resultvideourl=nil, maskvideourl=nil, requestid=nil)
          @Status = status
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @ResultVideoUrl = resultvideourl
          @MaskVideoUrl = maskvideourl
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @ResultVideoUrl = params['ResultVideoUrl']
          @MaskVideoUrl = params['MaskVideoUrl']
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
        # @param ErrorCode: 任务执行错误码。当任务状态不为FAIL时，该值为""。
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息。当任务状态不为FAIL时，该值为""。
        # @type ErrorMessage: String
        # @param ResultVideoUrl: 生成视频的URL地址。有效期24小时。
        # @type ResultVideoUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :StatusCode, :StatusMsg, :ErrorCode, :ErrorMessage, :ResultVideoUrl, :RequestId

        def initialize(jobid=nil, statuscode=nil, statusmsg=nil, errorcode=nil, errormessage=nil, resultvideourl=nil, requestid=nil)
          @JobId = jobid
          @StatusCode = statuscode
          @StatusMsg = statusmsg
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @ResultVideoUrl = resultvideourl
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @StatusCode = params['StatusCode']
          @StatusMsg = params['StatusMsg']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
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
        # @param StatusCode: 任务状态码。取值说明：
        # JobInit:  "初始化中"；
        # JobModerationFailed: "审核失败"；
        # JobRunning: "处理中"；
        # JobFailed: "处理失败"；
        # JobSuccess: "处理完成"。
        # @type StatusCode: String
        # @param StatusMsg: 任务状态描述。取值说明：
        # JobInit:  "初始化中"；
        # JobModerationFailed: "审核失败"；
        # JobRunning: "处理中"；
        # JobFailed: "处理失败"；
        # JobSuccess: "处理完成"。
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
        # @param JobStatus: 任务状态。0: 任务初始化。 1：音频转译中。 2：音频转译失败。 3：音频转译成功。 4：音频结果待确认。 5：音频结果已确认完毕。6：视频转译中。 7：视频转译失败。 8：视频转译成功。
        # @type JobStatus: Integer
        # @param JobErrorCode: 本次任务出错的错误码，用来定位问题原因。
        # @type JobErrorCode: String
        # @param JobErrorMsg: 任务错误信息，错误码出现的原因。
        # @type JobErrorMsg: String
        # @param ResultVideoUrl: 视频转译生成结果视频url，有效期1天。当JobStatus为8时，该字段返回视频Url。
        # @type ResultVideoUrl: String
        # @param TranslateResults: 音频转译后分句翻译内容，包含分句起始时间、源识别文本以及翻译后文本。
        # 当JobStatus为3、4时，该字段返回分句翻译数据。
        # @type TranslateResults: Array
        # @param JobConfirm: 是否需要确认翻译结果。0：不需要，1：需要。
        # @type JobConfirm: Integer
        # @param JobAudioTaskId: 音频任务 ID。
        # @type JobAudioTaskId: String
        # @param JobVideoModerationId: 视频审核任务ID。
        # @type JobVideoModerationId: String
        # @param JobAudioModerationId: 音频审核任务 ID。
        # @type JobAudioModerationId: String
        # @param JobVideoId: 口型驱动任务 ID。
        # @type JobVideoId: String
        # @param OriginalVideoUrl: 视频素材原始 URL。
        # @type OriginalVideoUrl: String
        # @param AsrTimestamps: 文本片段及其时间戳。
        # @type AsrTimestamps: Array
        # @param JobSubmitReqId: 提交视频转译任务时的 requestId。
        # @type JobSubmitReqId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatus, :JobErrorCode, :JobErrorMsg, :ResultVideoUrl, :TranslateResults, :JobConfirm, :JobAudioTaskId, :JobVideoModerationId, :JobAudioModerationId, :JobVideoId, :OriginalVideoUrl, :AsrTimestamps, :JobSubmitReqId, :RequestId
        extend Gem::Deprecate
        deprecate :JobConfirm, :none, 2025, 1
        deprecate :JobConfirm=, :none, 2025, 1
        deprecate :JobAudioTaskId, :none, 2025, 1
        deprecate :JobAudioTaskId=, :none, 2025, 1
        deprecate :JobVideoModerationId, :none, 2025, 1
        deprecate :JobVideoModerationId=, :none, 2025, 1
        deprecate :JobAudioModerationId, :none, 2025, 1
        deprecate :JobAudioModerationId=, :none, 2025, 1
        deprecate :JobVideoId, :none, 2025, 1
        deprecate :JobVideoId=, :none, 2025, 1
        deprecate :OriginalVideoUrl, :none, 2025, 1
        deprecate :OriginalVideoUrl=, :none, 2025, 1
        deprecate :JobSubmitReqId, :none, 2025, 1
        deprecate :JobSubmitReqId=, :none, 2025, 1

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

      # logo参数
      class LogoParam < TencentCloud::Common::AbstractModel
        # @param LogoUrl: 水印 Url
        # @type LogoUrl: String
        # @param LogoImage: 水印 Base64，Url 和 Base64 二选一传入，如果都提供以 Url 为准
        # @type LogoImage: String
        # @param LogoRect: 水印图片位于生成结果图中的坐标及宽高，将按照坐标对标识图片进行位置和大小的拉伸匹配。
        # @type LogoRect: :class:`Tencentcloud::Vclm.v20240523.models.LogoRect`

        attr_accessor :LogoUrl, :LogoImage, :LogoRect

        def initialize(logourl=nil, logoimage=nil, logorect=nil)
          @LogoUrl = logourl
          @LogoImage = logoimage
          @LogoRect = logorect
        end

        def deserialize(params)
          @LogoUrl = params['LogoUrl']
          @LogoImage = params['LogoImage']
          unless params['LogoRect'].nil?
            @LogoRect = LogoRect.new
            @LogoRect.deserialize(params['LogoRect'])
          end
        end
      end

      # 水印图输入框
      class LogoRect < TencentCloud::Common::AbstractModel
        # @param X: 水印图框X坐标值。当值大于0时，坐标轴原点位于原图左侧，方向指右；当值小于0时，坐标轴原点位于原图右侧，方向指左。
        # @type X: Integer
        # @param Y: 水印图框Y坐标值。当值大于0时，坐标轴原点位于原图上侧，方向指下；当值小于0时，坐标轴原点位于原图下侧，方向指上。
        # @type Y: Integer
        # @param Width: 水印图框宽度。
        # @type Width: Integer
        # @param Height: 水印图框高度。
        # @type Height: Integer

        attr_accessor :X, :Y, :Width, :Height

        def initialize(x=nil, y=nil, width=nil, height=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # SubmitImageAnimateJob请求参数结构体
      class SubmitImageAnimateJobRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片格式：支持PNG、JPG、JPEG、BMP、WEBP格式；
        # 图片分辨率：长边分辨率范围【192，4096】；
        # 图片大小：不超过10M；
        # 图片宽高比：【宽：高】数值在 1:2 到 1:1.2 范围内
        # @type ImageUrl: String
        # @param ImageBase64: 图片base64数据。
        # 图片格式：支持PNG、JPG、JPEG、BMP、WEBP格式；
        # 图片分辨率：长边分辨率范围【192，4096】；
        # 图片大小：不超过10M；
        # 图片宽高比：【宽：高】数值在 1:2 到 1:1.2 范围内
        # @type ImageBase64: String
        # @param TemplateId: 动作模板ID。取值说明：ke3 科目三；tuziwu 兔子舞；huajiangwu 划桨舞。
        # @type TemplateId: String
        # @param EnableAudio: 结果视频是否保留模板音频。默认为true
        # @type EnableAudio: Boolean
        # @param EnableBodyJoins: 是否检测输入图人体12个身体部位（头部、颈部、右肩、右肘、右腕、左肩、左肘、左腕、右髋、左髋,、左膝、右膝）。默认不检测。
        # @type EnableBodyJoins: Boolean
        # @param EnableSegment: 是否对结果视频背景进行分割，默认值为false。
        # true：分割结果视频，结果视频（ResultVideoUrl）将为去除背景的绿幕视频，并返回掩码视频（MaskVideoUrl）；
        # false：不分割结果视频，结果视频（ResultVideoUrl）为带背景的视频，掩码视频（MaskVideoUrl）为空字符串。
        # @type EnableSegment: Boolean
        # @param LogoAdd: 为生成视频添加标识的开关，默认为0。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示，该视频是 AI 生成的视频。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成视频的右下角添加“视频由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :ImageUrl, :ImageBase64, :TemplateId, :EnableAudio, :EnableBodyJoins, :EnableSegment, :LogoAdd, :LogoParam

        def initialize(imageurl=nil, imagebase64=nil, templateid=nil, enableaudio=nil, enablebodyjoins=nil, enablesegment=nil, logoadd=nil, logoparam=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @TemplateId = templateid
          @EnableAudio = enableaudio
          @EnableBodyJoins = enablebodyjoins
          @EnableSegment = enablesegment
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @TemplateId = params['TemplateId']
          @EnableAudio = params['EnableAudio']
          @EnableBodyJoins = params['EnableBodyJoins']
          @EnableSegment = params['EnableSegment']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitImageAnimateJob返回参数结构体
      class SubmitImageAnimateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 图片跳舞任务ID。
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
        # @param AudioUrl: 传入音频URL地址，音频要求：
        # - 音频时长：2秒 - 60秒
        # - 音频格式：mp3、wav、m4a
        # @type AudioUrl: String
        # @param ImageUrl: 传入图片URL地址，图片要求：
        # - 图片格式：jpg、jpeg、png、bmp、webp
        # - 图片分辨率：192～4096
        # - 图片大小：不超过10M
        # - 图片宽高比：图片【宽：高】在1:2到2:1范围内
        # - 图片内容：避免上传无人脸、无宠物脸或脸部过小、不完整、不清晰、偏转角度过大、嘴部被遮挡的图片。
        # @type ImageUrl: String
        # @param ImageBase64: 传入图片Base64编码，编码后请求体大小不超过10M。
        # 图片Base64编码与URL地址必传其一，如果都传以ImageBase64为准。
        # @type ImageBase64: String
        # @param Mode: 唱演模式，默认使用人像模式。
        # Person：人像模式，仅支持上传人像图片，人像生成效果更好，如果图中未检测到有效人脸将被拦截，生成时会将视频短边分辨率放缩至512。
        # Pet：宠物模式，支持宠物等非人像图片，固定生成512:512分辨率视频。
        # @type Mode: String
        # @param Resolution: 生成视频尺寸。可选取值："512:512"。

        # 人像模式下，如果不传该参数，默认生成视频的短边分辨率为512，长边分辨率不固定、由模型根据生成效果自动适配得到。如需固定生成分辨率可传入512:512。

        # 宠物模式下，如果不传该参数，默认将脸部唱演视频回贴原图，生成视频分辨率与原图一致。如不需要脸部回贴，仅保留脸部唱演视频，可传入512:512。
        # @type Resolution: String
        # @param LogoAdd: 为生成视频添加标识的开关，默认为0。
        # 1：添加标识；
        #  0：不添加标识；
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示，该视频是 AI 生成的视频。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。 默认在生成视频的右下角添加“视频由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :AudioUrl, :ImageUrl, :ImageBase64, :Mode, :Resolution, :LogoAdd, :LogoParam

        def initialize(audiourl=nil, imageurl=nil, imagebase64=nil, mode=nil, resolution=nil, logoadd=nil, logoparam=nil)
          @AudioUrl = audiourl
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @Mode = mode
          @Resolution = resolution
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @AudioUrl = params['AudioUrl']
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @Mode = params['Mode']
          @Resolution = params['Resolution']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitPortraitSingJob返回参数结构体
      class SubmitPortraitSingJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID。任务有效期为48小时。
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
        # @param StyleId: 风格ID。取值说明：
        # 2d_anime：2D动漫；
        # 3d_cartoon：3D卡通；
        # 3d_china：3D国潮；
        # pixel_art：像素风。
        # @type StyleId: String
        # @param VideoUrl: 输入视频URL。视频要求：
        # - 视频格式：mp4、mov；
        # - 视频时长：1～60秒；
        # - 视频分辨率：540P~2056P，即长宽像素数均在540px～2056px范围内；
        # - 视频大小：不超过200M；
        # - 视频FPS：15～60fps。
        # @type VideoUrl: String
        # @param StyleStrength: 风格化强度。取值说明：
        # low：风格化强度弱；
        # medium：风格化强度中等；
        # high：风格化强度强。
        # 默认值为medium。
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
        # @param JobId: 任务ID。任务有效期为48小时。
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
        # 格式要求：支持 mp4、mov、avi 。
        # 时长要求：【5-600】秒。
        # fps 要求：【15-60】fps
        # 分辨率要求：单边像素要求在 【360~4096】 之间。
        # 大小要求：不超过500MB
        # 请保证文件的下载速度，否则会下载失败。
        # @type VideoUrl: String
        # @param SrcLang: 输入视频中音频语种
        # 目前支持语种范围：zh(中文), en(英文)
        # @type SrcLang: String
        # @param AudioUrl: 当音频 URL 不为空时，不经过语音AI处理，直接以视频为素材用音频内容做视频口型驱动。
        # 格式要求：支持 mp3、m4a、aac、wav 格式。
        # 时长要求：【5~600】秒，音频时长要匹配视频时长。
        # 大小要求：不超过 100MB。
        # 请保证文件的下载速度，否则会下载失败。
        # @type AudioUrl: String
        # @param DstLang: 输出视频中翻译语种。默认是en(英语)。
        # 目前支持语种范围：zh(简体中文)、en(英语)、ar(阿拉伯语)、de(德语)、es(西班牙语)、fr(法语)、id(印尼语)、it(意大利语)、ja(日语)、ko(韩语)、ms(马来语)、pt(葡萄牙语)、ru(俄语)、th(泰语)、tr(土耳其语)、vi(越南语)
        # @type DstLang: String
        # @param VoiceType: 翻译语种匹配音色种别，其他说明如下：
        # 1）默认不填代表克隆输入视频中音频音色；
        # 2）翻译语种非中英（即zh、en），该项必填；

        # 具体音色种别详见说明“支持音色种别列表”，每个音色都支持 15 个目标语种。
        # @type VoiceType: String
        # @param Confirm: 是否需要纠正视频中音频识别与翻译内容，取值范围：0-不需要，1-需要，默认0。
        # @type Confirm: Integer
        # @param RemoveVocal: 是否需要去除VideoUrl或AudioUrl中背景音，取值范围：0-不需要，1-需要，默认0 。
        # @type RemoveVocal: Integer
        # @param LipSync: 是否开启口型驱动，0-不开启，1-开启。默认0。
        # @type LipSync: Integer
        # @param VideoLoop: 当 AudioUrl 字段有输入音频时，如果输入音频时长大于输入视频时长，会拼接视频（ 0-正向拼接、1-反向拼接 ）对齐音频时长。默认 0。
        # @type VideoLoop: Integer

        attr_accessor :VideoUrl, :SrcLang, :AudioUrl, :DstLang, :VoiceType, :Confirm, :RemoveVocal, :LipSync, :VideoLoop

        def initialize(videourl=nil, srclang=nil, audiourl=nil, dstlang=nil, voicetype=nil, confirm=nil, removevocal=nil, lipsync=nil, videoloop=nil)
          @VideoUrl = videourl
          @SrcLang = srclang
          @AudioUrl = audiourl
          @DstLang = dstlang
          @VoiceType = voicetype
          @Confirm = confirm
          @RemoveVocal = removevocal
          @LipSync = lipsync
          @VideoLoop = videoloop
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @SrcLang = params['SrcLang']
          @AudioUrl = params['AudioUrl']
          @DstLang = params['DstLang']
          @VoiceType = params['VoiceType']
          @Confirm = params['Confirm']
          @RemoveVocal = params['RemoveVocal']
          @LipSync = params['LipSync']
          @VideoLoop = params['VideoLoop']
        end
      end

      # SubmitVideoTranslateJob返回参数结构体
      class SubmitVideoTranslateJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 视频转译任务的ID
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

