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
  module Vclm
    module V20240523
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
        # @param EnableBodyJoins: 是否对输入图采用加强检测方案。

        # 默认不加强检测（false），仅对输入图做必要的基础检测。

        # 开启加强检测（true）有助于提升效果稳定性，将根据选择的动作模板提取建议的人体关键点，并判断输入图中是否包含这些人体关键点。加强检测仅对人像输入图生效，对非人输入图不生效。
        # @type EnableBodyJoins: Boolean
        # @param EnableFace: 是否开启人脸检测。

        # 默认开启人脸检测（true），拦截主体为人像但无人脸、人脸不完整或被遮挡的输入图。可选关闭人脸检测（false）。
        # @type EnableFace: Boolean

        attr_accessor :TemplateId, :ImageUrl, :ImageBase64, :EnableBodyJoins, :EnableFace

        def initialize(templateid=nil, imageurl=nil, imagebase64=nil, enablebodyjoins=nil, enableface=nil)
          @TemplateId = templateid
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @EnableBodyJoins = enablebodyjoins
          @EnableFace = enableface
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @EnableBodyJoins = params['EnableBodyJoins']
          @EnableFace = params['EnableFace']
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

      # DescribeAigcVideoJob请求参数结构体
      class DescribeAigcVideoJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID。

        # 示例值：1194931538865782784
        # @type JobId: String

        attr_accessor :JobId

        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # DescribeAigcVideoJob返回参数结构体
      class DescribeAigcVideoJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # 示例值：RUN
        # @type Status: String
        # @param ErrorCode: 任务执行错误码。当任务状态不为 FAIL 时，该值为""。
        # 示例值：FailedOperation.DriverFailed
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息。当任务状态不为 FAIL 时，该值为""。
        # 示例值：驱动失败
        # @type ErrorMessage: String
        # @param ResultUrl: 结果视频 URL。有效期 24 小时。

        # 示例值：https://console.cloud.tencent.com/result.mp4
        # @type ResultUrl: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ErrorCode, :ErrorMessage, :ResultUrl, :RequestId

        def initialize(status=nil, errorcode=nil, errormessage=nil, resulturl=nil, requestid=nil)
          @Status = status
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @ResultUrl = resulturl
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @ResultUrl = params['ResultUrl']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHumanActorJob请求参数结构体
      class DescribeHumanActorJobRequest < TencentCloud::Common::AbstractModel
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

      # DescribeHumanActorJob返回参数结构体
      class DescribeHumanActorJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。  WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # @type Status: String
        # @param ResultVideoUrl: 结果视频URL。有效期 24 小时。
        # @type ResultVideoUrl: String
        # @param ErrorCode: 任务执行错误码。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ResultVideoUrl, :ErrorCode, :ErrorMessage, :RequestId

        def initialize(status=nil, resultvideourl=nil, errorcode=nil, errormessage=nil, requestid=nil)
          @Status = status
          @ResultVideoUrl = resultvideourl
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ResultVideoUrl = params['ResultVideoUrl']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHunyuanToVideoJob请求参数结构体
      class DescribeHunyuanToVideoJobRequest < TencentCloud::Common::AbstractModel
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

      # DescribeHunyuanToVideoJob返回参数结构体
      class DescribeHunyuanToVideoJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # @type Status: String
        # @param ErrorCode: 任务执行错误码。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorMessage: String
        # @param ResultVideoUrl: 结果视频 URL。有效期 24 小时。
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

      # DescribeImageToVideoGeneralJob请求参数结构体
      class DescribeImageToVideoGeneralJobRequest < TencentCloud::Common::AbstractModel
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

      # DescribeImageToVideoGeneralJob返回参数结构体
      class DescribeImageToVideoGeneralJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # @type Status: String
        # @param ErrorCode: 任务执行错误码。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorMessage: String
        # @param ResultVideoUrl: 结果视频 URL。有效期 24 小时。
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

      # DescribeTemplateToVideoJob请求参数结构体
      class DescribeTemplateToVideoJobRequest < TencentCloud::Common::AbstractModel
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

      # DescribeTemplateToVideoJob返回参数结构体
      class DescribeTemplateToVideoJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # @type Status: String
        # @param ErrorCode: 任务执行错误码。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorMessage: String
        # @param ResultVideoUrl: 结果视频 URL。有效期 24 小时。
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

      # DescribeVideoEditJob请求参数结构体
      class DescribeVideoEditJobRequest < TencentCloud::Common::AbstractModel
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

      # DescribeVideoEditJob返回参数结构体
      class DescribeVideoEditJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。  WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # @type Status: String
        # @param ResultVideoUrl: 结果视频URL。有效期 24 小时。
        # @type ResultVideoUrl: String
        # @param ErrorCode: 任务执行错误码。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ResultVideoUrl, :ErrorCode, :ErrorMessage, :RequestId

        def initialize(status=nil, resultvideourl=nil, errorcode=nil, errormessage=nil, requestid=nil)
          @Status = status
          @ResultVideoUrl = resultvideourl
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ResultVideoUrl = params['ResultVideoUrl']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeVideoFaceFusionJob请求参数结构体
      class DescribeVideoFaceFusionJobRequest < TencentCloud::Common::AbstractModel
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

      # DescribeVideoFaceFusionJob返回参数结构体
      class DescribeVideoFaceFusionJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # @type Status: String
        # @param ErrorCode: 任务执行错误码。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorMessage: String
        # @param ResultVideoUrl: 结果视频 URL。有效期 24 小时。
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

      # DescribeVideoVoiceJob请求参数结构体
      class DescribeVideoVoiceJobRequest < TencentCloud::Common::AbstractModel
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

      # DescribeVideoVoiceJob返回参数结构体
      class DescribeVideoVoiceJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。  WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # @type Status: String
        # @param ResultVideoUrl: 结果视频URL。有效期 24 小时。
        # @type ResultVideoUrl: String
        # @param ErrorCode: 任务执行错误码。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorCode: String
        # @param ErrorMessage: 任务执行错误信息。当任务状态不为 FAIL 时，该值为""。
        # @type ErrorMessage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ResultVideoUrl, :ErrorCode, :ErrorMessage, :RequestId

        def initialize(status=nil, resultvideourl=nil, errorcode=nil, errormessage=nil, requestid=nil)
          @Status = status
          @ResultVideoUrl = resultvideourl
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ResultVideoUrl = params['ResultVideoUrl']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          @RequestId = params['RequestId']
        end
      end

      # 扩展字段。
      class ExtraParam < TencentCloud::Common::AbstractModel
        # @param UserDesignatedUrl: <p>预签名的上传url，支持把视频直接传到客户指定的地址。</p>
        # @type UserDesignatedUrl: String
        # @param CallbackUrl: <p>回调地址<br>需要您在创建任务时主动设置 CallbackUrl，请求方法为 POST，当视频生成结束时，我们将向此地址发送生成结果。<br>数据格式如下：<br>{<br>    &quot;JobId&quot;: &quot;1397428070633955328&quot;,<br>    &quot;Status&quot;: &quot;DONE&quot;,<br>    &quot;ErrorCode&quot;: &quot;&quot;,<br>    &quot;ErrorMessage&quot;: &quot;&quot;,<br>    &quot;ResultVideoUrl&quot;: &quot;https://vcg.cos.tencentcos.cn/template_to_video/fa80b846-b933-4981-afad-8a39b46ef2ca.mp4&quot;<br>}</p>
        # @type CallbackUrl: String
        # @param BGMText: <p>BGM音频文本。</p>
        # @type BGMText: String

        attr_accessor :UserDesignatedUrl, :CallbackUrl, :BGMText

        def initialize(userdesignatedurl=nil, callbackurl=nil, bgmtext=nil)
          @UserDesignatedUrl = userdesignatedurl
          @CallbackUrl = callbackurl
          @BGMText = bgmtext
        end

        def deserialize(params)
          @UserDesignatedUrl = params['UserDesignatedUrl']
          @CallbackUrl = params['CallbackUrl']
          @BGMText = params['BGMText']
        end
      end

      # 人脸图片和待被融合的素材模板图的人脸位置信息。
      class FaceMergeInfo < TencentCloud::Common::AbstractModel
        # @param MergeFaceImage: 融合图片
        # @type MergeFaceImage: :class:`Tencentcloud::Vclm.v20240523.models.Image`
        # @param MergeFaceRect: 上传的图片人脸位置信息（人脸框）
        # Width、Height >= 30。
        # @type MergeFaceRect: :class:`Tencentcloud::Vclm.v20240523.models.FaceRect`
        # @param TemplateFaceID: 素材人脸ID，不填默认取上传图片中最大人脸。
        # @type TemplateFaceID: String

        attr_accessor :MergeFaceImage, :MergeFaceRect, :TemplateFaceID

        def initialize(mergefaceimage=nil, mergefacerect=nil, templatefaceid=nil)
          @MergeFaceImage = mergefaceimage
          @MergeFaceRect = mergefacerect
          @TemplateFaceID = templatefaceid
        end

        def deserialize(params)
          unless params['MergeFaceImage'].nil?
            @MergeFaceImage = Image.new
            @MergeFaceImage.deserialize(params['MergeFaceImage'])
          end
          unless params['MergeFaceRect'].nil?
            @MergeFaceRect = FaceRect.new
            @MergeFaceRect.deserialize(params['MergeFaceRect'])
          end
          @TemplateFaceID = params['TemplateFaceID']
        end
      end

      # 人脸框信息。
      class FaceRect < TencentCloud::Common::AbstractModel
        # @param X: <p>人脸框左上角横坐标。</p>
        # @type X: Integer
        # @param Y: <p>人脸框左上角纵坐标。</p>
        # @type Y: Integer
        # @param Width: <p>人脸框宽度。<br>单位：px</p>
        # @type Width: Integer
        # @param Height: <p>人脸框高度。<br>单位：px</p>
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

      # 模板信息
      class FaceTemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateFaceID: 角色ID。需要与MergeInfos中的TemplateFaceID依次对应。需要填数字，建议填"0"、"1"，依次累加。
        # @type TemplateFaceID: String
        # @param TemplateFaceImage: 视频模板中要替换的人脸图片
        # @type TemplateFaceImage: :class:`Tencentcloud::Vclm.v20240523.models.Image`
        # @param TemplateFaceRect: 视频模板中要替换的人脸图片的人脸框。不填默认取要替换的人脸图片中最大人脸。
        # @type TemplateFaceRect: :class:`Tencentcloud::Vclm.v20240523.models.FaceRect`

        attr_accessor :TemplateFaceID, :TemplateFaceImage, :TemplateFaceRect

        def initialize(templatefaceid=nil, templatefaceimage=nil, templatefacerect=nil)
          @TemplateFaceID = templatefaceid
          @TemplateFaceImage = templatefaceimage
          @TemplateFaceRect = templatefacerect
        end

        def deserialize(params)
          @TemplateFaceID = params['TemplateFaceID']
          unless params['TemplateFaceImage'].nil?
            @TemplateFaceImage = Image.new
            @TemplateFaceImage.deserialize(params['TemplateFaceImage'])
          end
          unless params['TemplateFaceRect'].nil?
            @TemplateFaceRect = FaceRect.new
            @TemplateFaceRect.deserialize(params['TemplateFaceRect'])
          end
        end
      end

      # 图片
      class Image < TencentCloud::Common::AbstractModel
        # @param Base64: 图片Base64
        # @type Base64: String
        # @param Url: 图片Url
        # @type Url: String

        attr_accessor :Base64, :Url

        def initialize(base64=nil, url=nil)
          @Base64 = base64
          @Url = url
        end

        def deserialize(params)
          @Base64 = params['Base64']
          @Url = params['Url']
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
        # @param X: <p>水印图框X坐标值。当值大于0时，坐标轴原点位于原图左侧，方向指右；当值小于0时，坐标轴原点位于原图右侧，方向指左。</p>
        # @type X: Integer
        # @param Y: <p>水印图框Y坐标值。当值大于0时，坐标轴原点位于原图上侧，方向指下；当值小于0时，坐标轴原点位于原图下侧，方向指上。</p>
        # @type Y: Integer
        # @param Width: <p>水印图框宽度。<br>单位：px</p>
        # @type Width: Integer
        # @param Height: <p>水印图框高度。<br>单位：px</p>
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

      # SubmitAigcVideoJob请求参数结构体
      class SubmitAigcVideoJobRequest < TencentCloud::Common::AbstractModel
        # @param Vendor: <p>模型名称。</p><p>枚举值：</p><p>● Vidu；</p><p>● Kling：可灵；</p><p>● HY：混元；</p><p>● YT：优图；</p><p>示例值：Vidu</p>
        # @type Vendor: String
        # @param Model: <p>模型版本。</p><p>枚举值：</p><p>● 当Vendor为Vidu时，可选值[q2, q2-pro, q2-turbo, q3-pro, q3-turbo]</p><p>● 当Vendor为Kling时，可选值[v1.6, v2.0, v2.1, v2.5, v2.6]</p><p>● 当Vendor为HY时，默认值：[v1.5]</p><p>● 当Vendor为YT时，默认值：[v2.0]</p>
        # @type Model: String
        # @param ModelParam: <p>模型参数Json-Format字符串<br> <a href="https://cloud.tencent.com/document/product/1616/128996">模型参数列表</a></p>
        # @type ModelParam: String
        # @param Prompt: <p>正向文本提示词。不能超过2000个字符</p><p>示例值：一只小猫在草地奔跑</p>
        # @type Prompt: String
        # @param LogoAdd: <p>为生成结果图添加显式水印标识的开关，默认为1。<br>1：添加。<br>0：不添加。<br>其他数值：默认按1处理。<br>建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。<br>示例值：1</p>
        # @type LogoAdd: Integer
        # @param LogoParam: <p>标识内容设置。<br>默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。</p>
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :Vendor, :Model, :ModelParam, :Prompt, :LogoAdd, :LogoParam

        def initialize(vendor=nil, model=nil, modelparam=nil, prompt=nil, logoadd=nil, logoparam=nil)
          @Vendor = vendor
          @Model = model
          @ModelParam = modelparam
          @Prompt = prompt
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Vendor = params['Vendor']
          @Model = params['Model']
          @ModelParam = params['ModelParam']
          @Prompt = params['Prompt']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitAigcVideoJob返回参数结构体
      class SubmitAigcVideoJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: <p>任务ID。</p>
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

      # SubmitHumanActorJob请求参数结构体
      class SubmitHumanActorJobRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文本提示词，不能超过5000字符。
        # 提示词支持全局和局部控制：

        # - 全局控制：正常输入提示词即可
        # - 局部控制：可用双井号进行特定时间的提示词约束，例如： "画面中的人物正在对着镜头讲话，偶尔做些手势匹配说话的内容。镜头保持固定。#3#画面中的人物正在对着镜头讲话，同时做出单手做向左方引导的手势。镜头保持固定。"（意思是第三秒的时候让人物做出左方引导手势）
        #  -- 局部控制时间建议整数，最大可读小数点后两位。
        # @type Prompt: String
        # @param AudioUrl: 传入音频URL地址，音频要求：
        # - 音频时长：2秒 - 60秒
        # - 音频格式：mp3、wav
        # - 音频大小：10M以内
        # @type AudioUrl: String
        # @param ImageUrl: 传入图片URL地址，图片要求：
        # - 图片格式：jpg、jpeg、png、bmp、webp
        # - 图片分辨率：192～4096
        # - 图片大小：不超过10M
        # - 图片宽高比：图片【宽：高】在1:4到4:1范围内
        # - 图片内容：避免上传无人脸、无宠物脸或脸部过小、不完整、不清晰、偏转角度过大、嘴部被遮挡的图片。
        # @type ImageUrl: String
        # @param ImageBase64: 传入图片Base64编码，编码后请求体大小不超过10M。
        # 图片Base64编码与URL地址必传其一，如果都传以ImageUrl为准。
        # @type ImageBase64: String
        # @param Resolution: 生成视频分辨率
        # 枚举值：720p，1080p
        # 默认1080p
        # @type Resolution: String
        # @param FrameRate: 生成视频帧数，单位fps。
        # 枚举值：25，50
        # 默认50帧
        # @type FrameRate: Integer
        # @param LogoAdd: 为生成视频添加标识的开关，默认为1。 1：添加标识。 0：不添加标识。 其他数值：默认按1处理。 建议您使用显著标识来提示，该视频是 AI 生成的视频。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。 默认在生成视频的右下角添加“视频由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :Prompt, :AudioUrl, :ImageUrl, :ImageBase64, :Resolution, :FrameRate, :LogoAdd, :LogoParam

        def initialize(prompt=nil, audiourl=nil, imageurl=nil, imagebase64=nil, resolution=nil, framerate=nil, logoadd=nil, logoparam=nil)
          @Prompt = prompt
          @AudioUrl = audiourl
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @Resolution = resolution
          @FrameRate = framerate
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @AudioUrl = params['AudioUrl']
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @Resolution = params['Resolution']
          @FrameRate = params['FrameRate']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitHumanActorJob返回参数结构体
      class SubmitHumanActorJobResponse < TencentCloud::Common::AbstractModel
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

      # SubmitHunyuanToVideoJob请求参数结构体
      class SubmitHunyuanToVideoJobRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 视频内容的描述，中文正向提示词。最多支持200个 utf-8 字符（首尾空格不计入字符数）。 示例值：一只猫在草原上奔跑，写实风格
        # @type Prompt: String
        # @param Image: 输入图片
        # 上传图url大小不超过 10M，base64不超过8M。
        # 支持jpg，png，jpeg，webp，bmp，tiff 格式
        # 单边分辨率不超过5000，不小于50，长宽限制1:4 ~ 4:1
        # @type Image: :class:`Tencentcloud::Vclm.v20240523.models.Image`
        # @param Resolution: 目前仅支持720p视频分辨率，默认720p。
        # @type Resolution: String
        # @param LogoAdd: 为生成视频添加标识的开关，默认为1，0 需前往 控制台 申请开启显示标识自主完成方可生效。
        #  1：添加标识； 0：不添加标识； 其他数值：默认按1处理。
        # @type LogoAdd: Integer
        # @param LogoParam: 默认在生成视频的右下角添加“ AI 生成”字样，如需替换为其他的标识图片，需前往 控制台 申请开启显示标识自主完成。
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :Prompt, :Image, :Resolution, :LogoAdd, :LogoParam

        def initialize(prompt=nil, image=nil, resolution=nil, logoadd=nil, logoparam=nil)
          @Prompt = prompt
          @Image = image
          @Resolution = resolution
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          unless params['Image'].nil?
            @Image = Image.new
            @Image.deserialize(params['Image'])
          end
          @Resolution = params['Resolution']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitHunyuanToVideoJob返回参数结构体
      class SubmitHunyuanToVideoJobResponse < TencentCloud::Common::AbstractModel
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
        # @param EnableBodyJoins: 是否对输入图采用加强检测方案。

        # 默认不加强检测（false），仅对输入图做必要的基础检测。

        # 开启加强检测（true）有助于提升效果稳定性，将根据选择的动作模板提取建议的人体关键点，并判断输入图中是否包含这些人体关键点。加强检测仅对人像输入图生效，对非人输入图不生效。
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
        # @param EnableFace: 是否开启人脸检测。

        # 默认开启人脸检测（true），拦截主体为人像但无人脸、人脸不完整或被遮挡的输入图。可选关闭人脸检测（false）。
        # @type EnableFace: Boolean

        attr_accessor :ImageUrl, :ImageBase64, :TemplateId, :EnableAudio, :EnableBodyJoins, :EnableSegment, :LogoAdd, :LogoParam, :EnableFace

        def initialize(imageurl=nil, imagebase64=nil, templateid=nil, enableaudio=nil, enablebodyjoins=nil, enablesegment=nil, logoadd=nil, logoparam=nil, enableface=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @TemplateId = templateid
          @EnableAudio = enableaudio
          @EnableBodyJoins = enablebodyjoins
          @EnableSegment = enablesegment
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @EnableFace = enableface
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
          @EnableFace = params['EnableFace']
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

      # SubmitImageToVideoGeneralJob请求参数结构体
      class SubmitImageToVideoGeneralJobRequest < TencentCloud::Common::AbstractModel
        # @param Image: 输入图片
        # Base64 和 Url 必须提供一个，如果都提供以ImageUrl为准。
        # 上传图url大小不超过 8M
        # 支持jpg，png，jpeg，webp，bmp，tiff 格式
        # 单边分辨率不超过5000，不小于50，长宽限制1:4 ~ 4:1
        # @type Image: :class:`Tencentcloud::Vclm.v20240523.models.Image`
        # @param Prompt: 视频内容的描述，中文正向提示词。最多支持200个 utf-8 字符（首尾空格不计入字符数）。
        # @type Prompt: String
        # @param Resolution: 输出视频分辨率。可选择：480p、720p、1080p。
        # @type Resolution: String
        # @param Fps: 生成视频的帧率，从16, 24, 30中选择。默认值：30
        # @type Fps: Integer
        # @param LogoAdd: 为生成视频添加标识的开关，默认为1，0 需前往 控制台 申请开启显示标识自主完成方可生效。  1：添加标识；  0：不添加标识；  其他数值：默认按1处理。
        # @type LogoAdd: Integer
        # @param LogoParam: 默认在生成视频的右下角添加“ AI 生成”字样，如需替换为其他的标识图片，需前往 控制台 申请开启显示标识自主完成。
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :Image, :Prompt, :Resolution, :Fps, :LogoAdd, :LogoParam

        def initialize(image=nil, prompt=nil, resolution=nil, fps=nil, logoadd=nil, logoparam=nil)
          @Image = image
          @Prompt = prompt
          @Resolution = resolution
          @Fps = fps
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          unless params['Image'].nil?
            @Image = Image.new
            @Image.deserialize(params['Image'])
          end
          @Prompt = params['Prompt']
          @Resolution = params['Resolution']
          @Fps = params['Fps']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitImageToVideoGeneralJob返回参数结构体
      class SubmitImageToVideoGeneralJobResponse < TencentCloud::Common::AbstractModel
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

      # SubmitImageToVideoViduJob请求参数结构体
      class SubmitImageToVideoViduJobRequest < TencentCloud::Common::AbstractModel
        # @param Images: <p>上传单张图时【首帧生视频】：</p><p>模型将以此参数中传入的图片为首帧画面来生成视频。<br>注1：支持传入图片 Base64 编码或图片URL（确保可访问）；<br>注2：支持上传1 张图；<br>注3：图片支持 png、jpeg、jpg、webp格式；<br>注4：图片比例需要小于 1:4 或者 4:1 ；<br>注5：图片大小不超过50M。</p><p>上传两张图时【首尾帧生视频】：<br>上传的第一张图片视作首帧图，第二张图片视作尾帧图，模型将以此参数中传入的图片来生成视频<br>注1: 首尾帧两张输入图的分辨率需相近，首帧图的分辨率/尾帧图的分辨率要在0.8～1.25之间。且图片比例需要小于1:4或者4:1；<br>注2: 支持传入图片 Base64 编码或图片URL（确保可访问）；<br>注3: 图片支持 png、jpeg、jpg、webp格式；<br>注4: 图片大小不超过50M；</p>
        # @type Images: Array
        # @param Model: <p>模型名称，可选值，默认值viduq2-turbo</p><ul><li>viduq2-pro：新模型，效果好，细节丰富</li><li>viduq2-turbo：新模型，效果好，生成快</li><li>viduq3-turbo：对比viduq3-pro，生成速度更快</li><li>viduq3-pro：高效生成优质音视频内容，让视频内容更生动、更形象、更立体，效果更好</li></ul>
        # @type Model: String
        # @param Prompt: <p>文本提示词<br>生成视频的文本描述。<br>注1：字符长度不能超过 2000 个字符<br>注2：若使用is_rec推荐提示词参数，模型将不考虑此参数所输入的提示词</p>
        # @type Prompt: String
        # @param IsRec: <p>是否使用推荐提示词，默认关闭<br>-true：是，由系统自动推荐提示词，并使用提示词内容生成视频，推荐提示词数量=1<br>-false：否，根据输入的prompt生成视频<br>注意：启用推荐提示词后，每个任务多消耗1积分</p>
        # @type IsRec: Boolean
        # @param Audio: <p>【首帧生视频】</p><p>是否使用音视频直出能力，默认关闭，枚举值为：</p><ul><li>false：不需要音视频直出，输出静音视频</li><li>true：需要音视频直出，输出带台词以及背景音的视频<br>注1：该参数为true时，voice_id参数才生效<br>注2：该参数为true时，仅q3模型支持错峰<br>注3：当model 为q3-pro或q3-turbo 时，该参数默认值为true</li></ul><p>【首尾帧生视频】</p><ul><li>false：不需要音视频直出，输出静音视频</li><li>true：需要音画同步，输出声音的视频（包括台词和音效）<br>注1：仅q3系列模型支持该参数</li></ul>
        # @type Audio: Boolean
        # @param VoiceId: <p>音色id<br>用来决定视频中的声音音色，为空时系统会自动推荐，可选枚举值参考列表：新音色列表<br>暂不支持声音复刻功能</p>
        # @type VoiceId: String
        # @param Duration: <p>视频时长参数：<br>【首帧生视频】：<br>viduq3-pro、viduq3-turboxa0默认为 5，可选：1 - 16<br>viduq2-pro、viduq2-turboxa0默认为 5，可选：1 - 10</p><p>【首尾帧生视频】：<br>viduq3-proxa0、viduq3-turbo默认为 5，可选：1 - 16<br>viduq2-pro、viduq2-turboxa0默认为 5，可选：1 - 8</p>
        # @type Duration: Integer
        # @param Resolution: <p>分辨率参数<br>【首帧生视频】：</p><ul><li>viduq3-pro 、viduq3-turbo 1-16秒：默认 720p，可选：540p、720p、1080p</li><li>viduq2-pro、viduq2-turbo 1-10秒：默认 720p，可选：720p、1080p<br>示例值：720p</li></ul><p>【首尾帧生视频】：<br>-xa0viduq3-proxa0、viduq3-turbo1-16秒：默认 720p，可选：540p、720p、1080p<br>-xa0viduq2-proxa0、xa0viduq2-turbo1-8秒：默认 720p，可选：540p、720p、1080p</p>
        # @type Resolution: String
        # @param MovementAmplitude: <p>运动幅度<br>默认 auto，可选值：auto、small、medium、large<br>注：q2、q3系列模型改参数不生效</p>
        # @type MovementAmplitude: String
        # @param Bgm: <p>bgm</p>
        # @type Bgm: Boolean
        # @param AudioType: <p>音频类型，audio为true时必填，默认为all<br>注：该参数目前仅支持q2、q1、2.0系列模型的音频拆分</p><p>枚举值：</p><ul><li>all： 音效+人声</li><li>speech_only： 仅人声</li><li>sound_effect_only： 仅音效</li></ul>
        # @type AudioType: String
        # @param MetaData: <p>元数据标识，json格式字符串，透传字段，您可以 自定义格式 或使用 示例格式 ，示例如下：<br>{<br>&quot;Label&quot;: &quot;your_label&quot;,<br>&quot;ContentProducer&quot;: &quot;your_content_producer&quot;,<br>&quot;ContentPropagator&quot;: &quot;your_content_propagator&quot;,<br>&quot;ProduceID&quot;: &quot;your_product_id&quot;,<br>&quot;PropagateID&quot;: &quot;your_propagate_id&quot;,<br>&quot;ReservedCode1&quot;: &quot;your_reserved_code1&quot;,<br>&quot;ReservedCode2&quot;: &quot;your_reserved_code2&quot;<br>}<br>该参数为空时，默认使用vidu生成的元数据标识</p>
        # @type MetaData: String
        # @param CallbackUrl: <p>Callback 协议<br>需要您在创建任务时主动设置 callback_url，请求方法为 POST，当视频生成完成时，将向此地址发送包含任务最新状态的回调请求。回调请求内容结构与查询任务API的返回体一致<br>回调返回的&quot;status&quot;包括以下状态：</p><ul><li>success 任务完成（如发送失败，回调三次）</li><li>failed 任务失败（如发送失败，回调三次）</li></ul>
        # @type CallbackUrl: String
        # @param Payload: <p>透传参数<br>不做任何处理，仅数据传输<br>注：最多 1048576个字符</p>
        # @type Payload: String
        # @param OffPeak: <p>错峰模式，默认为：false，可选值：</p><ul><li>true：错峰生成视频；</li><li>false：即时生成视频；<br>注1：错峰模式消耗的积分更低<br>注2：错峰模式下提交的任务，会在48小时内生成，未能完成的任务会被自动取消，并返还该任务的积分</li></ul>
        # @type OffPeak: Boolean
        # @param LogoAdd: <p>为生成结果图添加显式水印标识的开关，默认为1。<br>1：添加。<br>0：不添加。<br>其他数值：默认按1处理。<br>建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。<br>示例值：1</p>
        # @type LogoAdd: Integer
        # @param LogoParam: <p>标识内容设置。<br>默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。</p>
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :Images, :Model, :Prompt, :IsRec, :Audio, :VoiceId, :Duration, :Resolution, :MovementAmplitude, :Bgm, :AudioType, :MetaData, :CallbackUrl, :Payload, :OffPeak, :LogoAdd, :LogoParam

        def initialize(images=nil, model=nil, prompt=nil, isrec=nil, audio=nil, voiceid=nil, duration=nil, resolution=nil, movementamplitude=nil, bgm=nil, audiotype=nil, metadata=nil, callbackurl=nil, payload=nil, offpeak=nil, logoadd=nil, logoparam=nil)
          @Images = images
          @Model = model
          @Prompt = prompt
          @IsRec = isrec
          @Audio = audio
          @VoiceId = voiceid
          @Duration = duration
          @Resolution = resolution
          @MovementAmplitude = movementamplitude
          @Bgm = bgm
          @AudioType = audiotype
          @MetaData = metadata
          @CallbackUrl = callbackurl
          @Payload = payload
          @OffPeak = offpeak
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @Images = params['Images']
          @Model = params['Model']
          @Prompt = params['Prompt']
          @IsRec = params['IsRec']
          @Audio = params['Audio']
          @VoiceId = params['VoiceId']
          @Duration = params['Duration']
          @Resolution = params['Resolution']
          @MovementAmplitude = params['MovementAmplitude']
          @Bgm = params['Bgm']
          @AudioType = params['AudioType']
          @MetaData = params['MetaData']
          @CallbackUrl = params['CallbackUrl']
          @Payload = params['Payload']
          @OffPeak = params['OffPeak']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitImageToVideoViduJob返回参数结构体
      class SubmitImageToVideoViduJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: <p>任务ID。</p>
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
        # @param LogoAdd: 为生成视频添加标识的开关，默认为1。
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

      # SubmitTemplateToVideoJob请求参数结构体
      class SubmitTemplateToVideoJobRequest < TencentCloud::Common::AbstractModel
        # @param Template: <p>特效模板名称。请在 <a href="https://cloud.tencent.com/document/product/1616/119194">视频特效模板列表</a>  中选择想要生成的特效对应的 template 名称。</p>
        # @type Template: String
        # @param Images: <p>参考图像，不同特效输入图片的数量详见： <a href="https://cloud.tencent.com/document/product/1616/119194">视频特效模板-图片要求说明</a></p><ul><li>支持传入图片Base64编码或图片URL（确保可访问）</li><li>图片格式：支持png、jpg、jpeg、webp、bmp、tiff</li><li>图片文件：大小不能超过10MB（base64后），图片分辨率不小于300×300px，不大于4096×4096，图片宽高比应在1:4 ~ 4:1之间</li></ul>
        # @type Images: Array
        # @param LogoAdd: <p>为生成视频添加标识的开关，默认为1。传0 需前往  <a href="https://console.cloud.tencent.com/vtc/setting">控制台</a> 申请开启显式标识自主完成后方可生效。<br>1：添加标识；<br>0：不添加标识；<br>其他数值：默认按1处理。<br>建议您使用显著标识来提示，该视频是 AI 生成的视频。</p>
        # @type LogoAdd: Integer
        # @param LogoParam: <p>标识内容设置。<br>默认在生成视频的右下角添加“ AI 生成”或“视频由 AI 生成”字样，如需替换为其他的标识图片，需前往  <a href="https://console.cloud.tencent.com/vtc/setting">控制台</a> 申请开启显式标识自主完成。</p>
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`
        # @param Resolution: <p>视频输出分辨率，默认值：360p 。不同特效支持的清晰度及消耗积分数详见：<a href="https://cloud.tencent.com/document/product/1616/119194">视频特效模板-单次调用消耗积分数列</a></p>
        # @type Resolution: String
        # @param BGM: <p>是否为生成的视频添加背景音乐。默认：false，  传 true 时系统将从预设 BGM 库中自动挑选合适的音乐并添加；不传或为 false 则不添加 BGM。</p>
        # @type BGM: Boolean
        # @param ExtraParam: <p>扩展字段。</p>
        # @type ExtraParam: :class:`Tencentcloud::Vclm.v20240523.models.ExtraParam`

        attr_accessor :Template, :Images, :LogoAdd, :LogoParam, :Resolution, :BGM, :ExtraParam

        def initialize(template=nil, images=nil, logoadd=nil, logoparam=nil, resolution=nil, bgm=nil, extraparam=nil)
          @Template = template
          @Images = images
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @Resolution = resolution
          @BGM = bgm
          @ExtraParam = extraparam
        end

        def deserialize(params)
          @Template = params['Template']
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              image_tmp = Image.new
              image_tmp.deserialize(i)
              @Images << image_tmp
            end
          end
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @Resolution = params['Resolution']
          @BGM = params['BGM']
          unless params['ExtraParam'].nil?
            @ExtraParam = ExtraParam.new
            @ExtraParam.deserialize(params['ExtraParam'])
          end
        end
      end

      # SubmitTemplateToVideoJob返回参数结构体
      class SubmitTemplateToVideoJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: <p>任务ID。</p>
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

      # SubmitVideoEditJob请求参数结构体
      class SubmitVideoEditJobRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: <p>参考视频URL。默认为待编辑视频。</p><ul><li>视频格式：支持MP4</li><li>视频时长：输入视频时长≤10秒</li><li>视频大小：不超过200M</li><li>视频文件：输入的视频帧率及分辨率不做限制（建议输入16：9或9：16的视频；分辨率建议在2160px内，帧率建议在60fps内）；输出视频是帧率会≥16fps，分辨率为720p</li></ul>
        # @type VideoUrl: String
        # @param Prompt: <p>视频内容的描述，中文正向提示词。支持视频内容增加、删除、修改等能力</p><ul><li>最多支持200个 utf-8 字符（首尾空格不计入字符数）</li><li>不传prompt的时候，Images.N参考图列表必须要传图，且传的图片是经过图片编辑之后的结果图</li></ul>
        # @type Prompt: String
        # @param Images: <p>参考图列表。用于对视频内容做风格迁移、内容替换、内容删减、内容增加做参考。</p><ul><li>支持传入图片Base64编码或图片URL</li><li>图片格式：支持jpg，png，jpeg，webp，bmp，tiff 格式</li><li>图片文件：大小不能超过10MB（base64后）。单边分辨率不超过5000px，不小于50px，图片长宽限制1:4 ~ 4:1。<br>示例值：[{ &quot;Url&quot;: &quot;https://console.cloud.tencent.com/cos/image.png&quot;}]</li></ul>
        # @type Images: Array
        # @param Image: <p>图片base64或者图片url</p><ul><li>Base64 和 Url 必须提供一个，如果都提供以Url为准。</li><li>上传图url大小不超过 8M</li><li>支持jpg，png，jpeg，webp，bmp，tiff 格式</li><li>单边分辨率不超过5000，不小于50，长宽限制1:4 ~ 4:1</li></ul>
        # @type Image: :class:`Tencentcloud::Vclm.v20240523.models.Image`
        # @param VideoEditParam: <p>扩展字段。</p>
        # @type VideoEditParam: :class:`Tencentcloud::Vclm.v20240523.models.VideoEditParam`
        # @param LogoAdd: <p>为生成视频添加标识的开关，默认为1。传0 需前往  <a href="https://console.cloud.tencent.com/vtc/setting">控制台</a>  申请开启显式标识自主完成后方可生效。<br>1：添加标识；<br>0：不添加标识；<br>其他数值：默认按1处理。<br>建议您使用显著标识来提示，该视频是 AI 生成的视频。</p>
        # @type LogoAdd: Integer
        # @param LogoParam: <p>标识内容设置。<br>默认在生成视频的右下角添加“ AI 生成”或“视频由 AI 生成”字样，如需替换为其他的标识图片，需前往   <a href="https://console.cloud.tencent.com/vtc/setting">控制台</a>  申请开启显式标识自主完成。</p>
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :VideoUrl, :Prompt, :Images, :Image, :VideoEditParam, :LogoAdd, :LogoParam
        extend Gem::Deprecate
        deprecate :Image, :none, 2026, 4
        deprecate :Image=, :none, 2026, 4

        def initialize(videourl=nil, prompt=nil, images=nil, image=nil, videoeditparam=nil, logoadd=nil, logoparam=nil)
          @VideoUrl = videourl
          @Prompt = prompt
          @Images = images
          @Image = image
          @VideoEditParam = videoeditparam
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @Prompt = params['Prompt']
          unless params['Images'].nil?
            @Images = []
            params['Images'].each do |i|
              image_tmp = Image.new
              image_tmp.deserialize(i)
              @Images << image_tmp
            end
          end
          unless params['Image'].nil?
            @Image = Image.new
            @Image.deserialize(params['Image'])
          end
          unless params['VideoEditParam'].nil?
            @VideoEditParam = VideoEditParam.new
            @VideoEditParam.deserialize(params['VideoEditParam'])
          end
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitVideoEditJob返回参数结构体
      class SubmitVideoEditJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: <p>任务ID。</p>
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

      # SubmitVideoFaceFusionJob请求参数结构体
      class SubmitVideoFaceFusionJobRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 视频素材下载地址。用户自定义模板视频下载地址，使用前需要先调用视频审核接口进行内容审核。视频限制：分辨率≤4k，fps≤25，视频大小≤1G，时长≤20 秒，支持格式mp4。

        # 输入视频建议：
        # 姿态：人脸相对镜头水平方向角度转动不超过 90°,垂直方向角度转动不超过 20°。遮挡：脸部遮挡面积不超过 50%，不要完全遮挡五官，不要有半透明遮挡（强光，玻璃，透明眼镜等）、以及细碎离散的脸部遮挡（如飘落的花瓣）。妆容及光照：避免浓妆、复杂妆容，避免复杂光照、闪烁，这些属性无法完全恢复，并对稳定性有影响。针对特殊表情和微表情，针对局部肌肉控制下的微表情，以及过于夸张的特殊表情等不保证表情效果完全恢复。
        # @type VideoUrl: String
        # @param TemplateInfos: 视频素材模板的人脸位置信息。
        # 目前最多支持融合视频素材中的 6 张人脸
        # 输入图片要求：
        # 1、用户图限制大小不超过 10MB
        # 2、图片最大分辨率不超过 4k，建议最小为 128，  人脸框最小为 68
        # 3、支持格式 jpg，png
        # 4、如果用户图中未指定人脸且有多张人脸，  默认融合最大人脸
        # 输入图片建议：  包含上述视频中出现的人物的单人照，并且正面、清晰、无遮挡
        # @type TemplateInfos: Array
        # @param MergeInfos: 用户人脸图片位置信息。
        # 输入图片要求：
        # 1、用户图限制大小不超过 10MB
        # 2、图片最大分辨率不超过 4k，建议最小为 128，人脸框最小为 68
        # 3、支持格式 jpg，png
        # 4、如果未指定人脸且用户图中有多张人脸，
        # 默认融合最大人脸
        # 输入图建议：
        # 正脸无遮挡
        # @type MergeInfos: Array
        # @param LogoAdd: 为生成视频添加标识的开关，默认为1。
        # 1：添加标识。 0：不添加标识。 其他数值：默认按1处理。
        # 建议您使用显著标识来提示，该视频是 AI 生成的视频。
        # @type LogoAdd: Integer
        # @param LogoParam: 视频水印Logo参数标识内容设置。
        # 默认在融合结果图右下角添加“AI生成”类似字样，您可根据自身需要替换为其他的Logo图片。
        # 输入建议：输入水印图片宽高需小于视频宽高
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :VideoUrl, :TemplateInfos, :MergeInfos, :LogoAdd, :LogoParam

        def initialize(videourl=nil, templateinfos=nil, mergeinfos=nil, logoadd=nil, logoparam=nil)
          @VideoUrl = videourl
          @TemplateInfos = templateinfos
          @MergeInfos = mergeinfos
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          unless params['TemplateInfos'].nil?
            @TemplateInfos = []
            params['TemplateInfos'].each do |i|
              facetemplateinfo_tmp = FaceTemplateInfo.new
              facetemplateinfo_tmp.deserialize(i)
              @TemplateInfos << facetemplateinfo_tmp
            end
          end
          unless params['MergeInfos'].nil?
            @MergeInfos = []
            params['MergeInfos'].each do |i|
              facemergeinfo_tmp = FaceMergeInfo.new
              facemergeinfo_tmp.deserialize(i)
              @MergeInfos << facemergeinfo_tmp
            end
          end
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitVideoFaceFusionJob返回参数结构体
      class SubmitVideoFaceFusionJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 视频人脸融合任务的job id（job有效期24小时）
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

      # SubmitVideoVoiceJob请求参数结构体
      class SubmitVideoVoiceJobRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 输入视频的Url  上传视频时长限制：1-15s 视频格式：MP4，MOV 视频大小：不超过1 GB URL地址中不能包含中文字符。
        # @type VideoUrl: String
        # @param Prompt: 描述音效内容的正向提示词。输入上限50个字符。
        # @type Prompt: String
        # @param NegativePrompt: 音效内容的原始负向提示词。输入上限50个字符。
        # @type NegativePrompt: String
        # @param LogoAdd: 为生成视频添加标识的开关，默认为1。 1：添加标识。 0：不添加标识。 其他数值：默认按1处理。 建议您使用显著标识来提示，该视频是 AI 生成的视频。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。 默认在生成视频的右下角添加“视频由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :VideoUrl, :Prompt, :NegativePrompt, :LogoAdd, :LogoParam

        def initialize(videourl=nil, prompt=nil, negativeprompt=nil, logoadd=nil, logoparam=nil)
          @VideoUrl = videourl
          @Prompt = prompt
          @NegativePrompt = negativeprompt
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @Prompt = params['Prompt']
          @NegativePrompt = params['NegativePrompt']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
        end
      end

      # SubmitVideoVoiceJob返回参数结构体
      class SubmitVideoVoiceJobResponse < TencentCloud::Common::AbstractModel
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

      # 视频编辑参数
      class VideoEditParam < TencentCloud::Common::AbstractModel
        # @param Magic: 魔法词，针对特定场景生效。不同场景传不同的值。默认不传。
        # - 换人场景：1
        # @type Magic: String

        attr_accessor :Magic

        def initialize(magic=nil)
          @Magic = magic
        end

        def deserialize(params)
          @Magic = params['Magic']
        end
      end

    end
  end
end

