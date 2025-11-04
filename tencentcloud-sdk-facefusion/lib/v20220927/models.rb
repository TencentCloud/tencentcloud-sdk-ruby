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
  module Facefusion
    module V20220927
      # DescribeMaterialList请求参数结构体
      class DescribeMaterialListRequest < TencentCloud::Common::AbstractModel
        # @param ActivityId: 活动Id
        # @type ActivityId: String
        # @param MaterialId: 素材Id
        # @type MaterialId: String
        # @param Limit: 每次拉取条数。
        # 每次拉取素材最多可支持拉取20条素材信息，如果需要拉取全部素材信息，可以分多次请求拉取全部素材信息。
        # @type Limit: Integer
        # @param Offset: 偏移量
        # @type Offset: Integer

        attr_accessor :ActivityId, :MaterialId, :Limit, :Offset

        def initialize(activityid=nil, materialid=nil, limit=nil, offset=nil)
          @ActivityId = activityid
          @MaterialId = materialid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ActivityId = params['ActivityId']
          @MaterialId = params['MaterialId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeMaterialList返回参数结构体
      class DescribeMaterialListResponse < TencentCloud::Common::AbstractModel
        # @param MaterialInfos: 素材列表数据
        # @type MaterialInfos: Array
        # @param Count: 素材条数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MaterialInfos, :Count, :RequestId

        def initialize(materialinfos=nil, count=nil, requestid=nil)
          @MaterialInfos = materialinfos
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MaterialInfos'].nil?
            @MaterialInfos = []
            params['MaterialInfos'].each do |i|
              publicmaterialinfos_tmp = PublicMaterialInfos.new
              publicmaterialinfos_tmp.deserialize(i)
              @MaterialInfos << publicmaterialinfos_tmp
            end
          end
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # 人脸信息
      class FaceInfo < TencentCloud::Common::AbstractModel
        # @param X: 人脸框的横坐标
        # @type X: Integer
        # @param Y: 人脸框的纵坐标
        # @type Y: Integer
        # @param Width: 人脸框的宽度
        # @type Width: Integer
        # @param Height: 人脸框的高度
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

      # 人脸框信息
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

      # FuseFace请求参数结构体
      class FuseFaceRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 活动 ID，请在<a href="https://console.cloud.tencent.com/facefusion" target="_blank">人脸融合控制台</a>查看。
        # @type ProjectId: String
        # @param ModelId: 素材 ID，请在<a href="https://console.cloud.tencent.com/facefusion" target="_blank">人脸融合控制台</a>查看。
        # @type ModelId: String
        # @param RspImgType: 返回图像方式（url 或 base64) ，二选一。url有效期为7天。
        # @type RspImgType: String
        # @param MergeInfos: 用户人脸图片、素材模板图的人脸位置信息。不能超过6个。
        # ●图片分辨率限制：图片中面部尺寸大于34 * 34；图片尺寸大于64 * 64，小于4096*4096（单边限制）。
        # ●图片大小限制：base64 编码后大小不可超过5M， url不超过10M。
        # ●支持图片格式：支持jpg或png
        # @type MergeInfos: Array
        # @param FuseProfileDegree: 脸型融合比例，数值越高，融合后的脸型越像素材人物。取值范围[0,100]
        # 若此参数不填写，则使用人脸融合控制台中脸型参数数值。（换脸版算法暂不支持此参数调整）
        # @type FuseProfileDegree: Integer
        # @param FuseFaceDegree: 五官融合比例，数值越高，融合后的五官越像素材人物。取值范围[0,100]
        # 若此参数不填写，则使用人脸融合控制台中五官参数数值。（换脸版算法暂不支持此参数调整）
        # @type FuseFaceDegree: Integer
        # @param LogoAdd: 为融合结果图添加合成标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了人脸融合技术，是AI合成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在融合结果图右下角添加“本图片为AI合成图片”字样，您可根据自身需要替换为其他的Logo图片。
        # @type LogoParam: :class:`Tencentcloud::Facefusion.v20220927.models.LogoParam`
        # @param FuseParam: 融合参数。
        # @type FuseParam: :class:`Tencentcloud::Facefusion.v20220927.models.FuseParam`

        attr_accessor :ProjectId, :ModelId, :RspImgType, :MergeInfos, :FuseProfileDegree, :FuseFaceDegree, :LogoAdd, :LogoParam, :FuseParam

        def initialize(projectid=nil, modelid=nil, rspimgtype=nil, mergeinfos=nil, fuseprofiledegree=nil, fusefacedegree=nil, logoadd=nil, logoparam=nil, fuseparam=nil)
          @ProjectId = projectid
          @ModelId = modelid
          @RspImgType = rspimgtype
          @MergeInfos = mergeinfos
          @FuseProfileDegree = fuseprofiledegree
          @FuseFaceDegree = fusefacedegree
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @FuseParam = fuseparam
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ModelId = params['ModelId']
          @RspImgType = params['RspImgType']
          unless params['MergeInfos'].nil?
            @MergeInfos = []
            params['MergeInfos'].each do |i|
              mergeinfo_tmp = MergeInfo.new
              mergeinfo_tmp.deserialize(i)
              @MergeInfos << mergeinfo_tmp
            end
          end
          @FuseProfileDegree = params['FuseProfileDegree']
          @FuseFaceDegree = params['FuseFaceDegree']
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          unless params['FuseParam'].nil?
            @FuseParam = FuseParam.new
            @FuseParam.deserialize(params['FuseParam'])
          end
        end
      end

      # FuseFace返回参数结构体
      class FuseFaceResponse < TencentCloud::Common::AbstractModel
        # @param FusedImage: RspImgType 为 url 时，返回结果的 url（有效期7天）， RspImgType 为 base64 时返回 base64 数据。
        # @type FusedImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FusedImage, :RequestId

        def initialize(fusedimage=nil, requestid=nil)
          @FusedImage = fusedimage
          @RequestId = requestid
        end

        def deserialize(params)
          @FusedImage = params['FusedImage']
          @RequestId = params['RequestId']
        end
      end

      # FuseFaceUltra请求参数结构体
      class FuseFaceUltraRequest < TencentCloud::Common::AbstractModel
        # @param RspImgType: 返回融合结果图片方式（url 或 base64) ，二选一。url有效期为1天。
        # @type RspImgType: String
        # @param MergeInfos: 用户人脸图片、素材模板图的人脸位置信息。主要用于素材模版中人脸以及用作融合的用户人脸相关信息，两种人脸都需要提供人脸图片，可选择提供人脸框位置，具体见MergeInfo说明
        # 目前最多支持融合模板图片中的6张人脸。
        # @type MergeInfos: Array
        # @param ModelUrl: 素材模版图片的url地址。
        # ●base64 和 url 必须提供一个，如果都提供以 url 为准。
        # ●图片分辨率限制：图片中面部尺寸大于34 * 34；图片尺寸大于64 * 64，小于8000 * 8000（单边限制）。
        # ●图片大小限制：base64 编码后大小不可超过10M， url不超过20M。
        # ●图片格式：支持jpg或png
        # @type ModelUrl: String
        # @param ModelImage: 素材模版图片base64数据。
        # ●base64 和 url 必须提供一个，如果都提供以 url 为准。
        # ●素材图片限制：图片中面部尺寸大于34 * 34；图片尺寸大于64 * 64，小于8000*8000（单边限制）。
        # ●图片大小限制：base64 编码后大小不可超过10M， url不超过20M。
        # ●支持图片格式：支持jpg或png
        # @type ModelImage: String
        # @param FusionUltraParam: 图片人脸融合（专业版）效果参数。可用于设置拉脸、人脸增强、磨皮、牙齿增强、妆容迁移等融合效果参数，生成理想的融合效果。不传默认使用接口推荐值。具体见FusionUltraParam说明
        # @type FusionUltraParam: :class:`Tencentcloud::Facefusion.v20220927.models.FusionUltraParam`
        # @param LogoAdd: 为融合结果图添加合成标识的开关，默认为1。
        # 1：添加标识。
        # 0：不添加标识。
        # 其他数值：默认按1处理。
        # 建议您使用显著标识来提示结果图使用了人脸融合技术，是AI合成的图片。
        # @type LogoAdd: Integer
        # @param LogoParam: 标识内容设置。
        # 默认在融合结果图右下角添加“本图片为AI合成图片”字样，您可根据自身需要替换为其他的Logo图片。
        # @type LogoParam: :class:`Tencentcloud::Facefusion.v20220927.models.LogoParam`
        # @param SwapModelType: 融合模型类型参数：默认为1。
        # 图片人脸融合（专业版）针对不同场景，提供多种模型供选择。如您的产品是泛娱乐场景，推荐使用1；如您主要用于影像场景，推荐使用4、5。其他模型类型也可以结合您的产品使用场景进行选择，也许会有意想不到的效果
        # 1：默认泛娱乐场景，画面偏锐。
        # 2：影视级场景，画面偏自然。
        # 3：影视级场景，高分辨率，画面偏自然。
        # 4：影视级场景，高分辦率，高人脸相似度，画面偏自然，可用于证件照等场景。
        # 5：影视级场景，高分辨率，对闭眼和遮挡更友好。
        # 6：影视级场景，高分辨率，极高人脸相似度，可用于电商照片、证件照、文旅照片等场景。
        # @type SwapModelType: Integer

        attr_accessor :RspImgType, :MergeInfos, :ModelUrl, :ModelImage, :FusionUltraParam, :LogoAdd, :LogoParam, :SwapModelType

        def initialize(rspimgtype=nil, mergeinfos=nil, modelurl=nil, modelimage=nil, fusionultraparam=nil, logoadd=nil, logoparam=nil, swapmodeltype=nil)
          @RspImgType = rspimgtype
          @MergeInfos = mergeinfos
          @ModelUrl = modelurl
          @ModelImage = modelimage
          @FusionUltraParam = fusionultraparam
          @LogoAdd = logoadd
          @LogoParam = logoparam
          @SwapModelType = swapmodeltype
        end

        def deserialize(params)
          @RspImgType = params['RspImgType']
          unless params['MergeInfos'].nil?
            @MergeInfos = []
            params['MergeInfos'].each do |i|
              mergeinfo_tmp = MergeInfo.new
              mergeinfo_tmp.deserialize(i)
              @MergeInfos << mergeinfo_tmp
            end
          end
          @ModelUrl = params['ModelUrl']
          @ModelImage = params['ModelImage']
          unless params['FusionUltraParam'].nil?
            @FusionUltraParam = FusionUltraParam.new
            @FusionUltraParam.deserialize(params['FusionUltraParam'])
          end
          @LogoAdd = params['LogoAdd']
          unless params['LogoParam'].nil?
            @LogoParam = LogoParam.new
            @LogoParam.deserialize(params['LogoParam'])
          end
          @SwapModelType = params['SwapModelType']
        end
      end

      # FuseFaceUltra返回参数结构体
      class FuseFaceUltraResponse < TencentCloud::Common::AbstractModel
        # @param FusedImage: RspImgType 为 url 时，返回结果的 url， RspImgType 为 base64 时返回 base64 数据。url有效期为1天。
        # @type FusedImage: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FusedImage, :RequestId

        def initialize(fusedimage=nil, requestid=nil)
          @FusedImage = fusedimage
          @RequestId = requestid
        end

        def deserialize(params)
          @FusedImage = params['FusedImage']
          @RequestId = params['RequestId']
        end
      end

      # 融合参数
      class FuseParam < TencentCloud::Common::AbstractModel
        # @param ImageCodecParam: 图片编码参数
        # @type ImageCodecParam: :class:`Tencentcloud::Facefusion.v20220927.models.ImageCodecParam`

        attr_accessor :ImageCodecParam

        def initialize(imagecodecparam=nil)
          @ImageCodecParam = imagecodecparam
        end

        def deserialize(params)
          unless params['ImageCodecParam'].nil?
            @ImageCodecParam = ImageCodecParam.new
            @ImageCodecParam.deserialize(params['ImageCodecParam'])
          end
        end
      end

      # 高精度融合参数
      class FusionUltraParam < TencentCloud::Common::AbstractModel
        # @param WarpRadio: 拉脸强度。主要用于调整生成结果人脸脸型更像素材模板还是用户人脸。取值越大越像用户人脸。
        # 取值范围：0-1之间。默认取值0.7。

        # 该参数仅对SwapModelType（模型类型）取值1-5生效
        # @type WarpRadio: Float
        # @param EnhanceRadio: 人脸增强强度。对整个人脸进行增强，增加清晰度，改善质量。当生成的人脸不够清晰，质感不够好的时候可以设置。取值越大增强强度越大。
        # 取值范围：0-1之间。默认取值0.5。

        # 该参数仅对SwapModelType（模型类型）取值1-5生效
        # @type EnhanceRadio: Float
        # @param MpRadio: 磨皮强度。当生成脸的图像面部显脏时，可进行设置。
        # 取值范围：0-1之间。默认取值0.5。

        # 该参数仅对SwapModelType（模型类型）取值1-5生效
        # @type MpRadio: Float
        # @param BlurRadio: 人脸模糊开关（暂不支持）
        # 当生成人脸比较清晰时，将人脸模糊到接近模板的清晰度的程度

        # 该参数仅对SwapModelType（模型类型）取值1-5生效
        # @type BlurRadio: Float
        # @param TeethEnhanceRadio: 牙齿增强开关，默认取值为1
        # 牙齿增强，修复牙齿。当生成牙齿不好（如牙齿裂开）可以打开此开关
        # 0：牙齿增强关闭
        # 1：牙齿增强打开
        # 该参数仅对SwapModelType（模型类型）取值1-5生效
        # @type TeethEnhanceRadio: Float
        # @param MakeupTransferRadio: 妆容迁移开关，默认取值为0。
        # 将素材模板的妆容迁移到融合结果上。即：如果希望妆容效果与模板图保持一致，可以打开此开关。
        # 0：妆容迁移关闭
        # 1：妆容迁移打开
        # 该参数仅对SwapModelType（模型类型）取值1-5生效
        # @type MakeupTransferRadio: Float

        attr_accessor :WarpRadio, :EnhanceRadio, :MpRadio, :BlurRadio, :TeethEnhanceRadio, :MakeupTransferRadio

        def initialize(warpradio=nil, enhanceradio=nil, mpradio=nil, blurradio=nil, teethenhanceradio=nil, makeuptransferradio=nil)
          @WarpRadio = warpradio
          @EnhanceRadio = enhanceradio
          @MpRadio = mpradio
          @BlurRadio = blurradio
          @TeethEnhanceRadio = teethenhanceradio
          @MakeupTransferRadio = makeuptransferradio
        end

        def deserialize(params)
          @WarpRadio = params['WarpRadio']
          @EnhanceRadio = params['EnhanceRadio']
          @MpRadio = params['MpRadio']
          @BlurRadio = params['BlurRadio']
          @TeethEnhanceRadio = params['TeethEnhanceRadio']
          @MakeupTransferRadio = params['MakeupTransferRadio']
        end
      end

      # 图片编码参数
      class ImageCodecParam < TencentCloud::Common::AbstractModel
        # @param MetaData: 元数据是描述媒体文件的附加信息。通过添加自定义的元数据，可以将一些附加信息嵌入到文件中。这些信息可以用于版权、描述、标识等目的，并在后续的媒体处理或管理过程中使用。
        # 个数不能大于1。
        # @type MetaData: Array

        attr_accessor :MetaData

        def initialize(metadata=nil)
          @MetaData = metadata
        end

        def deserialize(params)
          unless params['MetaData'].nil?
            @MetaData = []
            params['MetaData'].each do |i|
              metadata_tmp = MetaData.new
              metadata_tmp.deserialize(i)
              @MetaData << metadata_tmp
            end
          end
        end
      end

      # logo参数
      class LogoParam < TencentCloud::Common::AbstractModel
        # @param LogoRect: 标识图片位于融合结果图中的坐标，将按照坐标对标识图片进行位置和大小的拉伸匹配。
        # Width、Height <= 2160。
        # @type LogoRect: :class:`Tencentcloud::Facefusion.v20220927.models.FaceRect`
        # @param LogoUrl: 标识图片Url地址

        # ●base64 和 url 必须提供一个，如果都提供以 url 为准。
        # ●支持图片格式：支持jpg或png
        # 专业版：base64 编码后大小不超过10M。
        # 非专业版：base64 编码后大小不超过5M。
        # @type LogoUrl: String
        # @param LogoImage: 输入图片base64。
        # ●base64 和 url 必须提供一个，如果都提供以 url 为准。
        # ●支持图片格式：支持jpg或png
        # 专业版：base64 编码后大小不超过10M。
        # 非专业版：base64 编码后大小不超过5M。
        # @type LogoImage: String

        attr_accessor :LogoRect, :LogoUrl, :LogoImage

        def initialize(logorect=nil, logourl=nil, logoimage=nil)
          @LogoRect = logorect
          @LogoUrl = logourl
          @LogoImage = logoimage
        end

        def deserialize(params)
          unless params['LogoRect'].nil?
            @LogoRect = FaceRect.new
            @LogoRect.deserialize(params['LogoRect'])
          end
          @LogoUrl = params['LogoUrl']
          @LogoImage = params['LogoImage']
        end
      end

      # 人脸信息
      class MaterialFaces < TencentCloud::Common::AbstractModel
        # @param FaceId: 人脸序号
        # @type FaceId: String
        # @param FaceInfo: 人脸框信息
        # @type FaceInfo: :class:`Tencentcloud::Facefusion.v20220927.models.FaceInfo`

        attr_accessor :FaceId, :FaceInfo

        def initialize(faceid=nil, faceinfo=nil)
          @FaceId = faceid
          @FaceInfo = faceinfo
        end

        def deserialize(params)
          @FaceId = params['FaceId']
          unless params['FaceInfo'].nil?
            @FaceInfo = FaceInfo.new
            @FaceInfo.deserialize(params['FaceInfo'])
          end
        end
      end

      # 人脸图片和待被融合的素材模板图的人脸位置信息。
      class MergeInfo < TencentCloud::Common::AbstractModel
        # @param Image: 输入图片base64。
        # ●base64 和 url 必须提供一个，如果都提供以 url 为准。
        # ●素材图片限制：图片中面部尺寸大于34 * 34；图片尺寸大于64 * 64。（图片编码之后可能会大30%左右，建议合理控制图片大小）。
        # ●支持图片格式：支持jpg或png
        # @type Image: String
        # @param Url: 输入图片url。
        # ●base64 和 url 必须提供一个，如果都提供以 url 为准。
        # ●素材图片限制：图片中面部尺寸大于34 * 34；图片尺寸大于64 * 64。（图片编码之后可能会大30%左右，建议合理控制图片大小）。
        # ●支持图片格式：支持jpg或png
        # @type Url: String
        # @param InputImageFaceRect: 上传的图片人脸位置信息（人脸框）
        # Width、Height >= 30。
        # @type InputImageFaceRect: :class:`Tencentcloud::Facefusion.v20220927.models.FaceRect`
        # @param TemplateFaceID: 素材人脸ID，不填默认取最大人脸。
        # @type TemplateFaceID: String
        # @param TemplateFaceRect: 模板中人脸位置信息(人脸框)，不填默认取最大人脸。此字段仅适用于图片融合自定义模板素材场景。
        # Width、Height >= 30。
        # @type TemplateFaceRect: :class:`Tencentcloud::Facefusion.v20220927.models.FaceRect`

        attr_accessor :Image, :Url, :InputImageFaceRect, :TemplateFaceID, :TemplateFaceRect

        def initialize(image=nil, url=nil, inputimagefacerect=nil, templatefaceid=nil, templatefacerect=nil)
          @Image = image
          @Url = url
          @InputImageFaceRect = inputimagefacerect
          @TemplateFaceID = templatefaceid
          @TemplateFaceRect = templatefacerect
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
          unless params['InputImageFaceRect'].nil?
            @InputImageFaceRect = FaceRect.new
            @InputImageFaceRect.deserialize(params['InputImageFaceRect'])
          end
          @TemplateFaceID = params['TemplateFaceID']
          unless params['TemplateFaceRect'].nil?
            @TemplateFaceRect = FaceRect.new
            @TemplateFaceRect.deserialize(params['TemplateFaceRect'])
          end
        end
      end

      # MetaData数据结构，Key/Value格式
      class MetaData < TencentCloud::Common::AbstractModel
        # @param MetaKey: MetaData的Key，字符长度不能超过32
        # @type MetaKey: String
        # @param MetaValue: MetaData的Value，字符长度不能超过256
        # @type MetaValue: String

        attr_accessor :MetaKey, :MetaValue

        def initialize(metakey=nil, metavalue=nil)
          @MetaKey = metakey
          @MetaValue = metavalue
        end

        def deserialize(params)
          @MetaKey = params['MetaKey']
          @MetaValue = params['MetaValue']
        end
      end

      # 素材信息
      class PublicMaterialInfos < TencentCloud::Common::AbstractModel
        # @param MaterialId: 素材Id
        # @type MaterialId: String
        # @param MaterialStatus: 素材状态

        # 字段取值:
        # 0   审核中
        # 1   人工审核通过
        # 2   人工审核失败
        # 3   申诉中
        # 11  申诉成功
        # 12  申诉失败
        # 21  机器审核通过
        # 22  机器审核失败
        # 31  视频素材预处理成功，素材可用
        # 32  视频素材预处理失败
        # 33  角色不在视频中
        # @type MaterialStatus: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String
        # @param MaterialFaceList: 人脸信息
        # @type MaterialFaceList: Array
        # @param MaterialName: 素材名
        # @type MaterialName: String
        # @param AuditResult: 审核原因
        # @type AuditResult: String

        attr_accessor :MaterialId, :MaterialStatus, :CreateTime, :UpdateTime, :MaterialFaceList, :MaterialName, :AuditResult

        def initialize(materialid=nil, materialstatus=nil, createtime=nil, updatetime=nil, materialfacelist=nil, materialname=nil, auditresult=nil)
          @MaterialId = materialid
          @MaterialStatus = materialstatus
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MaterialFaceList = materialfacelist
          @MaterialName = materialname
          @AuditResult = auditresult
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @MaterialStatus = params['MaterialStatus']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['MaterialFaceList'].nil?
            @MaterialFaceList = []
            params['MaterialFaceList'].each do |i|
              materialfaces_tmp = MaterialFaces.new
              materialfaces_tmp.deserialize(i)
              @MaterialFaceList << materialfaces_tmp
            end
          end
          @MaterialName = params['MaterialName']
          @AuditResult = params['AuditResult']
        end
      end

    end
  end
end

