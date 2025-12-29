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
        # @param UserDesignatedUrl: 预签名的上传url，支持把视频直接传到客户指定的地址。
        # @type UserDesignatedUrl: String

        attr_accessor :UserDesignatedUrl

        def initialize(userdesignatedurl=nil)
          @UserDesignatedUrl = userdesignatedurl
        end

        def deserialize(params)
          @UserDesignatedUrl = params['UserDesignatedUrl']
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
        # @param X: 人脸框左上角横坐标。
        # @type X: Integer
        # @param Y: 人脸框左上角纵坐标。
        # @type Y: Integer
        # @param Width: 人脸框宽度。
        # @type Width: Integer
        # @param Height: 人脸框高度。
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
        # @param LogoAdd: 为生成视频添加标识的开关，默认为1，0 需前往 控制台 申请开启显示标识自主完成方可生效。  1：添加标识；  0：不添加标识；  其他数值：默认按1处理。
        # @type LogoAdd: Integer
        # @param LogoParam: 默认在生成视频的右下角添加“ AI 生成”字样，如需替换为其他的标识图片，需前往 控制台 申请开启显示标识自主完成。
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :Image, :Prompt, :Resolution, :LogoAdd, :LogoParam

        def initialize(image=nil, prompt=nil, resolution=nil, logoadd=nil, logoparam=nil)
          @Image = image
          @Prompt = prompt
          @Resolution = resolution
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
        # @param Template: 特效模板名称。请在 [视频特效模板列表](https://cloud.tencent.com/document/product/1616/119194)  中选择想要生成的特效对应的 template 名称。
        # @type Template: String
        # @param Images: 参考图像，不同特效输入图片的数量详见： [视频特效模板-图片要求说明](https://cloud.tencent.com/document/product/1616/119194)
        # - 支持传入图片Base64编码或图片URL（确保可访问）
        # - 图片格式：支持png、jpg、jpeg、webp、bmp、tiff
        # - 图片文件：大小不能超过10MB（base64后），图片分辨率不小于300*300px，不大于4096*4096，图片宽高比应在1:4 ~ 4:1之间
        # @type Images: Array
        # @param LogoAdd: 为生成视频添加标识的开关，默认为1。传0 需前往  [控制台](https://console.cloud.tencent.com/vtc/setting) 申请开启显式标识自主完成后方可生效。
        # 1：添加标识；
        # 0：不添加标识；
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示，该视频是 AI 生成的视频。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在生成视频的右下角添加“ AI 生成”或“视频由 AI 生成”字样，如需替换为其他的标识图片，需前往  [控制台](https://console.cloud.tencent.com/vtc/setting) 申请开启显式标识自主完成。
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`
        # @param Resolution: 视频输出分辨率，默认值：360p 。不同特效支持的清晰度及消耗积分数详见：[视频特效模板-单次调用消耗积分数列](https://cloud.tencent.com/document/product/1616/119194 )
        # @type Resolution: String
        # @param BGM: 是否为生成的视频添加背景音乐。默认：false，  传 true 时系统将从预设 BGM 库中自动挑选合适的音乐并添加；不传或为 false 则不添加 BGM。
        # @type BGM: Boolean
        # @param ExtraParam: 扩展字段。
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

      # SubmitVideoEditJob请求参数结构体
      class SubmitVideoEditJobRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 输入视频

        # - 视频格式：MP4
        # - 视频时长：5s以内
        # - 视频分辨率：无限制（待验证是否可以无损输出）
        # @type VideoUrl: String
        # @param Prompt: 视频内容的描述，中文正向提示词。最多支持200个 utf-8 字符（首尾空格不计入字符数）。
        # 支持风格迁移、替换、元素增加、删除控制
        # @type Prompt: String
        # @param Image: 图片base64或者图片url

        # - Base64 和 Url 必须提供一个，如果都提供以Url为准。
        # - 上传图url大小不超过 8M
        # - 支持jpg，png，jpeg，webp，bmp，tiff 格式
        # - 单边分辨率不超过5000，不小于50，长宽限制1:4 ~ 4:1
        # @type Image: :class:`Tencentcloud::Vclm.v20240523.models.Image`
        # @param LogoAdd: 为生成视频添加标识的开关，默认为1。 1：添加标识。 0：不添加标识。 其他数值：默认按1处理。 建议您使用显著标识来提示，该视频是 AI 生成的视频。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。 默认在生成视频的右下角添加“视频由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        # @type LogoParam: :class:`Tencentcloud::Vclm.v20240523.models.LogoParam`

        attr_accessor :VideoUrl, :Prompt, :Image, :LogoAdd, :LogoParam

        def initialize(videourl=nil, prompt=nil, image=nil, logoadd=nil, logoparam=nil)
          @VideoUrl = videourl
          @Prompt = prompt
          @Image = image
          @LogoAdd = logoadd
          @LogoParam = logoparam
        end

        def deserialize(params)
          @VideoUrl = params['VideoUrl']
          @Prompt = params['Prompt']
          unless params['Image'].nil?
            @Image = Image.new
            @Image.deserialize(params['Image'])
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

      # SubmitVideoFaceFusionJob请求参数结构体
      class SubmitVideoFaceFusionJobRequest < TencentCloud::Common::AbstractModel
        # @param VideoUrl: 视频素材下载地址。用户自定义模版视频下载地址，使用前需要先调用视频审核接口进行内容审核。视频限制：分辨率≤4k，fps≤25，视频大小≤1G，时长≤20 秒，支持格式mp4。

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

    end
  end
end

