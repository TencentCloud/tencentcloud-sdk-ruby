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
    module V20181201
      # DescribeMaterialList请求参数结构体
      class DescribeMaterialListRequest < TencentCloud::Common::AbstractModel
        # @param ActivityId: 活动Id
        # @type ActivityId: Integer
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

      # FaceFusionLite请求参数结构体
      class FaceFusionLiteRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 活动 ID，请在人脸融合控制台查看。
        # @type ProjectId: String
        # @param ModelId: 素材 ID，请在人脸融合控制台查看。
        # @type ModelId: String
        # @param MergeInfos: 用户人脸图片、素材模板图的人脸位置信息。
        # @type MergeInfos: Array
        # @param RspImgType: 返回图像方式（url 或 base64) ，二选一。默认url, url有效期为30天。
        # @type RspImgType: String
        # @param CelebrityIdentify: 请注意，鉴政服务开启后，您需要根据返回结果自行判断是否调整您的业务逻辑。例如提示您的用户图片非法，请更换图片。
        # @type CelebrityIdentify: Integer
        # @param Engine: 算法引擎参数:  1）选脸版 - youturecreat; 2）优享版 - youtu1vN； 3）畅享版 - ptu； 4）随机 - ALL;  默认为活动选择的算法
        # @type Engine: String

        attr_accessor :ProjectId, :ModelId, :MergeInfos, :RspImgType, :CelebrityIdentify, :Engine
        
        def initialize(projectid=nil, modelid=nil, mergeinfos=nil, rspimgtype=nil, celebrityidentify=nil, engine=nil)
          @ProjectId = projectid
          @ModelId = modelid
          @MergeInfos = mergeinfos
          @RspImgType = rspimgtype
          @CelebrityIdentify = celebrityidentify
          @Engine = engine
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ModelId = params['ModelId']
          unless params['MergeInfos'].nil?
            @MergeInfos = []
            params['MergeInfos'].each do |i|
              mergeinfo_tmp = MergeInfo.new
              mergeinfo_tmp.deserialize(i)
              @MergeInfos << mergeinfo_tmp
            end
          end
          @RspImgType = params['RspImgType']
          @CelebrityIdentify = params['CelebrityIdentify']
          @Engine = params['Engine']
        end
      end

      # FaceFusionLite返回参数结构体
      class FaceFusionLiteResponse < TencentCloud::Common::AbstractModel
        # @param Image: RspImgType 为 url 时，返回结果的 url， RspImgType 为 base64 时返回 base64 数据。
        # @type Image: String
        # @param ReviewResultSet: 鉴政结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReviewResultSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Image, :ReviewResultSet, :RequestId
        
        def initialize(image=nil, reviewresultset=nil, requestid=nil)
          @Image = image
          @ReviewResultSet = reviewresultset
          @RequestId = requestid
        end

        def deserialize(params)
          @Image = params['Image']
          unless params['ReviewResultSet'].nil?
            @ReviewResultSet = []
            params['ReviewResultSet'].each do |i|
              fusefacereviewresult_tmp = FuseFaceReviewResult.new
              fusefacereviewresult_tmp.deserialize(i)
              @ReviewResultSet << fusefacereviewresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # FaceFusion请求参数结构体
      class FaceFusionRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 活动 ID，请在人脸融合控制台查看。
        # @type ProjectId: String
        # @param ModelId: 素材 ID，请在人脸融合控制台查看。
        # @type ModelId: String
        # @param Image: 图片 base64 数据。请确保人脸为正脸，无旋转。若某些手机拍摄后人脸被旋转，请使用图片的 EXIF 信息对图片进行旋转处理；请勿在 base64 数据中包含头部，如“data:image/jpeg;base64,”。
        # @type Image: String
        # @param RspImgType: 返回图像方式（url 或 base64) ，二选一。url有效期为30天。
        # @type RspImgType: String
        # @param PornDetect: 历史遗留字段，无需填写。因为融合只需提取人脸特征，不需要鉴黄。
        # @type PornDetect: Integer
        # @param CelebrityIdentify: 0表示不需要不适宜内容识别，1表示需要不适宜内容识别。默认值为0。
        # 请注意，不适宜内容识别服务开启后，您需要根据返回结果自行判断是否调整您的业务逻辑。例如提示您的用户图片非法，请更换图片。
        # @type CelebrityIdentify: Integer

        attr_accessor :ProjectId, :ModelId, :Image, :RspImgType, :PornDetect, :CelebrityIdentify
        
        def initialize(projectid=nil, modelid=nil, image=nil, rspimgtype=nil, porndetect=nil, celebrityidentify=nil)
          @ProjectId = projectid
          @ModelId = modelid
          @Image = image
          @RspImgType = rspimgtype
          @PornDetect = porndetect
          @CelebrityIdentify = celebrityidentify
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ModelId = params['ModelId']
          @Image = params['Image']
          @RspImgType = params['RspImgType']
          @PornDetect = params['PornDetect']
          @CelebrityIdentify = params['CelebrityIdentify']
        end
      end

      # FaceFusion返回参数结构体
      class FaceFusionResponse < TencentCloud::Common::AbstractModel
        # @param Image: RspImgType 为 url 时，返回结果的 url， RspImgType 为 base64 时返回 base64 数据。
        # @type Image: String
        # @param ReviewResultSet: 不适宜内容识别结果
        # @type ReviewResultSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Image, :ReviewResultSet, :RequestId
        
        def initialize(image=nil, reviewresultset=nil, requestid=nil)
          @Image = image
          @ReviewResultSet = reviewresultset
          @RequestId = requestid
        end

        def deserialize(params)
          @Image = params['Image']
          unless params['ReviewResultSet'].nil?
            @ReviewResultSet = []
            params['ReviewResultSet'].each do |i|
              fusefacereviewresult_tmp = FuseFaceReviewResult.new
              fusefacereviewresult_tmp.deserialize(i)
              @ReviewResultSet << fusefacereviewresult_tmp
            end
          end
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
        # @param ProjectId: 活动 ID，请在人脸融合控制台查看。
        # @type ProjectId: String
        # @param ModelId: 素材 ID，请在人脸融合控制台查看。
        # @type ModelId: String
        # @param RspImgType: 返回图像方式（url 或 base64) ，二选一。url有效期为30天。
        # @type RspImgType: String
        # @param MergeInfos: 用户人脸图片、素材模板图的人脸位置信息。
        # @type MergeInfos: Array
        # @param FuseProfileDegree: 脸型融合比例，数值越高，融合后的脸型越像素材人物。取值范围[0,100]
        # 若此参数不填写，则使用人脸融合控制台中脸型参数数值。（换脸版算法暂不支持此参数调整）
        # @type FuseProfileDegree: Integer
        # @param FuseFaceDegree: 五官融合比例，数值越高，融合后的五官越像素材人物。取值范围[0,100]
        # 若此参数不填写，则使用人脸融合控制台中五官参数数值。（换脸版算法暂不支持此参数调整）
        # @type FuseFaceDegree: Integer
        # @param CelebrityIdentify: 0表示不需要不适宜内容识别，1表示需要不适宜内容识别。默认值为0。
        # 请注意，不适宜内容识别服务开启后，您需要根据返回结果自行判断是否调整您的业务逻辑。例如提示您的用户图片非法，请更换图片。
        # @type CelebrityIdentify: Integer

        attr_accessor :ProjectId, :ModelId, :RspImgType, :MergeInfos, :FuseProfileDegree, :FuseFaceDegree, :CelebrityIdentify
        
        def initialize(projectid=nil, modelid=nil, rspimgtype=nil, mergeinfos=nil, fuseprofiledegree=nil, fusefacedegree=nil, celebrityidentify=nil)
          @ProjectId = projectid
          @ModelId = modelid
          @RspImgType = rspimgtype
          @MergeInfos = mergeinfos
          @FuseProfileDegree = fuseprofiledegree
          @FuseFaceDegree = fusefacedegree
          @CelebrityIdentify = celebrityidentify
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
          @CelebrityIdentify = params['CelebrityIdentify']
        end
      end

      # FuseFace返回参数结构体
      class FuseFaceResponse < TencentCloud::Common::AbstractModel
        # @param FusedImage: RspImgType 为 url 时，返回结果的 url， RspImgType 为 base64 时返回 base64 数据。
        # @type FusedImage: String
        # @param ReviewResultSet: 不适宜内容识别结果。该数组的顺序和请求中mergeinfo的顺序一致，一一对应
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReviewResultSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FusedImage, :ReviewResultSet, :RequestId
        
        def initialize(fusedimage=nil, reviewresultset=nil, requestid=nil)
          @FusedImage = fusedimage
          @ReviewResultSet = reviewresultset
          @RequestId = requestid
        end

        def deserialize(params)
          @FusedImage = params['FusedImage']
          unless params['ReviewResultSet'].nil?
            @ReviewResultSet = []
            params['ReviewResultSet'].each do |i|
              fusefacereviewresult_tmp = FuseFaceReviewResult.new
              fusefacereviewresult_tmp.deserialize(i)
              @ReviewResultSet << fusefacereviewresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 人脸融合不适宜内容识别人脸信息
      class FuseFaceReviewDetail < TencentCloud::Common::AbstractModel
        # @param Field: 保留字段
        # @type Field: String
        # @param Label: 人员名称
        # @type Label: String
        # @param Confidence: 对应识别label的置信度，分数越高意味涉政可能性越大。
        # 0到70，Suggestion建议为PASS；
        # 70到80，Suggestion建议为REVIEW；
        # 80到100，Suggestion建议为BLOCK。
        # @type Confidence: Float
        # @param Suggestion: 识别场景的审核结论：
        # PASS：正常
        # REVIEW：疑似
        # BLOCK：违规
        # @type Suggestion: String

        attr_accessor :Field, :Label, :Confidence, :Suggestion
        
        def initialize(field=nil, label=nil, confidence=nil, suggestion=nil)
          @Field = field
          @Label = label
          @Confidence = confidence
          @Suggestion = suggestion
        end

        def deserialize(params)
          @Field = params['Field']
          @Label = params['Label']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
        end
      end

      # 人脸融合不适宜内容识别返回参数item
      class FuseFaceReviewResult < TencentCloud::Common::AbstractModel
        # @param Category: 保留字段
        # @type Category: String
        # @param Code: 状态码， 0为处理成功，其他值为处理失败
        # @type Code: String
        # @param CodeDescription: 对应状态码信息描述
        # @type CodeDescription: String
        # @param Confidence: 保留字段
        # @type Confidence: Float
        # @param Suggestion: 保留字段
        # @type Suggestion: String
        # @param DetailSet: 审核详细内容
        # @type DetailSet: Array

        attr_accessor :Category, :Code, :CodeDescription, :Confidence, :Suggestion, :DetailSet
        
        def initialize(category=nil, code=nil, codedescription=nil, confidence=nil, suggestion=nil, detailset=nil)
          @Category = category
          @Code = code
          @CodeDescription = codedescription
          @Confidence = confidence
          @Suggestion = suggestion
          @DetailSet = detailset
        end

        def deserialize(params)
          @Category = params['Category']
          @Code = params['Code']
          @CodeDescription = params['CodeDescription']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          unless params['DetailSet'].nil?
            @DetailSet = []
            params['DetailSet'].each do |i|
              fusefacereviewdetail_tmp = FuseFaceReviewDetail.new
              fusefacereviewdetail_tmp.deserialize(i)
              @DetailSet << fusefacereviewdetail_tmp
            end
          end
        end
      end

      # 人脸信息
      class MaterialFaceList < TencentCloud::Common::AbstractModel
        # @param FaceId: 人脸序号
        # @type FaceId: String
        # @param FaceInfo: 人脸框信息
        # @type FaceInfo: :class:`Tencentcloud::Facefusion.v20181201.models.FaceInfo`

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
        # @type InputImageFaceRect: :class:`Tencentcloud::Facefusion.v20181201.models.FaceRect`
        # @param TemplateFaceID: 控制台上传的素材人脸ID
        # @type TemplateFaceID: String

        attr_accessor :Image, :Url, :InputImageFaceRect, :TemplateFaceID
        
        def initialize(image=nil, url=nil, inputimagefacerect=nil, templatefaceid=nil)
          @Image = image
          @Url = url
          @InputImageFaceRect = inputimagefacerect
          @TemplateFaceID = templatefaceid
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
          unless params['InputImageFaceRect'].nil?
            @InputImageFaceRect = FaceRect.new
            @InputImageFaceRect.deserialize(params['InputImageFaceRect'])
          end
          @TemplateFaceID = params['TemplateFaceID']
        end
      end

      # 素材信息
      class PublicMaterialInfos < TencentCloud::Common::AbstractModel
        # @param MaterialId: 素材Id
        # @type MaterialId: String
        # @param MaterialStatus: 素材状态
        # @type MaterialStatus: Integer
        # @param BlendParamPtu: 脸型参数P图
        # @type BlendParamPtu: Integer
        # @param PositionParamPtu: 五官参数P图
        # @type PositionParamPtu: Integer
        # @param BlendParamYoutu: 脸型参数优图
        # @type BlendParamYoutu: Integer
        # @param PositionParamYoutu: 五官参数优图
        # @type PositionParamYoutu: Integer
        # @param Url: 素材COS地址
        # @type Url: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param UpdateTime: 修改时间
        # @type UpdateTime: String
        # @param MaterialFaceList: 人脸信息
        # @type MaterialFaceList: Array

        attr_accessor :MaterialId, :MaterialStatus, :BlendParamPtu, :PositionParamPtu, :BlendParamYoutu, :PositionParamYoutu, :Url, :CreateTime, :UpdateTime, :MaterialFaceList
        
        def initialize(materialid=nil, materialstatus=nil, blendparamptu=nil, positionparamptu=nil, blendparamyoutu=nil, positionparamyoutu=nil, url=nil, createtime=nil, updatetime=nil, materialfacelist=nil)
          @MaterialId = materialid
          @MaterialStatus = materialstatus
          @BlendParamPtu = blendparamptu
          @PositionParamPtu = positionparamptu
          @BlendParamYoutu = blendparamyoutu
          @PositionParamYoutu = positionparamyoutu
          @Url = url
          @CreateTime = createtime
          @UpdateTime = updatetime
          @MaterialFaceList = materialfacelist
        end

        def deserialize(params)
          @MaterialId = params['MaterialId']
          @MaterialStatus = params['MaterialStatus']
          @BlendParamPtu = params['BlendParamPtu']
          @PositionParamPtu = params['PositionParamPtu']
          @BlendParamYoutu = params['BlendParamYoutu']
          @PositionParamYoutu = params['PositionParamYoutu']
          @Url = params['Url']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          unless params['MaterialFaceList'].nil?
            @MaterialFaceList = []
            params['MaterialFaceList'].each do |i|
              materialfacelist_tmp = MaterialFaceList.new
              materialfacelist_tmp.deserialize(i)
              @MaterialFaceList << materialfacelist_tmp
            end
          end
        end
      end

    end
  end
end

