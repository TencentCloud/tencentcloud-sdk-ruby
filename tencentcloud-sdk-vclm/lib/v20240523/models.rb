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

    end
  end
end

