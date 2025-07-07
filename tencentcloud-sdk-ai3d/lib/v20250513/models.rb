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
  module Ai3d
    module V20250513
      # 3D文件
      class File3D < TencentCloud::Common::AbstractModel
        # @param Type: 3D文件的格式。取值范围：OBJ
        # @type Type: String
        # @param Url: 文件的Url（有效期24小时）
        # @type Url: String
        # @param PreviewImageUrl: 预览图片Url
        # @type PreviewImageUrl: String

        attr_accessor :Type, :Url, :PreviewImageUrl

        def initialize(type=nil, url=nil, previewimageurl=nil)
          @Type = type
          @Url = url
          @PreviewImageUrl = previewimageurl
        end

        def deserialize(params)
          @Type = params['Type']
          @Url = params['Url']
          @PreviewImageUrl = params['PreviewImageUrl']
        end
      end

      # QueryHunyuanTo3DJob请求参数结构体
      class QueryHunyuanTo3DJobRequest < TencentCloud::Common::AbstractModel
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

      # QueryHunyuanTo3DJob返回参数结构体
      class QueryHunyuanTo3DJobResponse < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态。WAIT：等待中，RUN：执行中，FAIL：任务失败，DONE：任务成功
        # @type Status: String
        # @param ErrorCode: 错误码
        # @type ErrorCode: String
        # @param ErrorMessage: 错误信息
        # @type ErrorMessage: String
        # @param ResultFile3Ds: 生成的3D文件数组。
        # @type ResultFile3Ds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ErrorCode, :ErrorMessage, :ResultFile3Ds, :RequestId

        def initialize(status=nil, errorcode=nil, errormessage=nil, resultfile3ds=nil, requestid=nil)
          @Status = status
          @ErrorCode = errorcode
          @ErrorMessage = errormessage
          @ResultFile3Ds = resultfile3ds
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrorCode = params['ErrorCode']
          @ErrorMessage = params['ErrorMessage']
          unless params['ResultFile3Ds'].nil?
            @ResultFile3Ds = []
            params['ResultFile3Ds'].each do |i|
              file3d_tmp = File3D.new
              file3d_tmp.deserialize(i)
              @ResultFile3Ds << file3d_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # SubmitHunyuanTo3DJob请求参数结构体
      class SubmitHunyuanTo3DJobRequest < TencentCloud::Common::AbstractModel
        # @param Prompt: 文生3D，3D内容的描述，中文正向提示词。
        # 最多支持200个 utf-8 字符。
        # 文生3D, image、image_url和 prompt必填其一，且prompt和image/image_url不能同时存在。
        # @type Prompt: String
        # @param ImageBase64: 输入图 Base64 数据。
        # 大小：单边分辨率要求不小于128，不大于5000。大小不超过8m（base64编码后会大30%左右，建议实际输入图片不超过6m）
        # 格式：jpg，png，jpeg，webp。
        # ImageBase64、ImageUrl和 Prompt必填其一，且Prompt和ImageBase64/ImageUrl不能同时存在。
        # @type ImageBase64: String
        # @param ImageUrl: 输入图Url。
        # 大小：单边分辨率要求不小于128，不大于5000。大小不超过8m（base64编码后会大30%左右，建议实际输入图片不超过6m）
        # 格式：jpg，png，jpeg，webp。
        # ImageBase64/ImageUrl和 Prompt必填其一，且Prompt和ImageBase64/ImageUrl不能同时存在。
        # @type ImageUrl: String
        # @param MultiViewImages: 多视角的模型图片，视角参考值：
        # left：左视图；
        # right：右视图；
        # back：后视图；

        # 每个视角仅限制一张图片。
        # ●图片大小限制：编码后大小不可超过8M。
        # ●图片分辨率限制：单边分辨率小于5000且大于128。
        # ●支持图片格式：支持jpg或png
        # @type MultiViewImages: Array
        # @param ResultFormat: 生成模型的格式，仅限制生成一种格式。
        # 生成模型文件组默认返回obj格式。
        # 可选值：OBJ，GLB，STL，USDZ，FBX，MP4。
        # @type ResultFormat: String
        # @param EnablePBR: 是否开启 PBR材质生成，默认 false。
        # @type EnablePBR: Boolean

        attr_accessor :Prompt, :ImageBase64, :ImageUrl, :MultiViewImages, :ResultFormat, :EnablePBR

        def initialize(prompt=nil, imagebase64=nil, imageurl=nil, multiviewimages=nil, resultformat=nil, enablepbr=nil)
          @Prompt = prompt
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @MultiViewImages = multiviewimages
          @ResultFormat = resultformat
          @EnablePBR = enablepbr
        end

        def deserialize(params)
          @Prompt = params['Prompt']
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          unless params['MultiViewImages'].nil?
            @MultiViewImages = []
            params['MultiViewImages'].each do |i|
              viewimage_tmp = ViewImage.new
              viewimage_tmp.deserialize(i)
              @MultiViewImages << viewimage_tmp
            end
          end
          @ResultFormat = params['ResultFormat']
          @EnablePBR = params['EnablePBR']
        end
      end

      # SubmitHunyuanTo3DJob返回参数结构体
      class SubmitHunyuanTo3DJobResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务ID（有效期24小时）
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

      # 多视角图片
      class ViewImage < TencentCloud::Common::AbstractModel
        # @param ViewType: 视角类型。
        # 取值：back、left、right
        # @type ViewType: String
        # @param ViewImageUrl: 图片Url地址
        # @type ViewImageUrl: String

        attr_accessor :ViewType, :ViewImageUrl

        def initialize(viewtype=nil, viewimageurl=nil)
          @ViewType = viewtype
          @ViewImageUrl = viewimageurl
        end

        def deserialize(params)
          @ViewType = params['ViewType']
          @ViewImageUrl = params['ViewImageUrl']
        end
      end

    end
  end
end

