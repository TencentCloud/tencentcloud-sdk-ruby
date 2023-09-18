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
  module Facefusion
    module V20220927
      # DescribeMaterialList请求参数结构体
      class DescribeMaterialListRequest < TencentCloud::Common::AbstractModel
        # @param ActivityId: 活动Id
        # @type ActivityId: String
        # @param MaterialId: 素材Id
        # @type MaterialId: String
        # @param Limit: 每次拉取条数
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
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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
        # @param MergeInfos: 用户人脸图片、素材模板图的人脸位置信息。
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
        # @param FusedImage: RspImgType 为 url 时，返回结果的 url， RspImgType 为 base64 时返回 base64 数据。
        # @type FusedImage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 图片编码参数
      class ImageCodecParam < TencentCloud::Common::AbstractModel
        # @param MetaData: 元数据
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
        # @param LogoRect: 标识图片位于融合结果图中的坐标，将按照坐标对标识图片进行位置和大小的拉伸匹配
        # @type LogoRect: :class:`Tencentcloud::Facefusion.v20220927.models.FaceRect`
        # @param LogoUrl: 标识图片Url地址
        # @type LogoUrl: String
        # @param LogoImage: 标识图片base64
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
        # @param Image: 输入图片base64
        # @type Image: String
        # @param Url: 输入图片url
        # @type Url: String
        # @param InputImageFaceRect: 上传的图片人脸位置信息（人脸框）
        # @type InputImageFaceRect: :class:`Tencentcloud::Facefusion.v20220927.models.FaceRect`
        # @param TemplateFaceID: 控制台上传的素材人脸ID，不填默认取最大人脸。此字段仅适用于控制台上传素材的有素材场景。
        # @type TemplateFaceID: String
        # @param TemplateFaceRect: 模版图片人脸位置信息(人脸框)，不填默认取最大人脸。此字段仅适用于自定义模版素材场景。
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
        # @param MetaKey: MetaData的Key
        # @type MetaKey: String
        # @param MetaValue: MetaData的Value
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
        # 注意：此字段可能返回 null，表示取不到有效值。
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

