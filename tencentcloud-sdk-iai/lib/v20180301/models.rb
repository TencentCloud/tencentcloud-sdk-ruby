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
  module Iai
    module V20180301
      # AnalyzeDenseLandmarks请求参数结构体
      class AnalyzeDenseLandmarksRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 检测模式。0 为检测所有出现的人脸， 1 为检测面积最大的人脸。
        # 默认为 0。
        # 最多返回 5 张人脸的五官定位（人脸关键点）具体信息。
        # @type Mode: Integer
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。本接口仅支持 “3.0“ 输入。
        # @type FaceModelVersion: String
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :Mode, :Image, :Url, :FaceModelVersion, :NeedRotateDetection
        
        def initialize(mode=nil, image=nil, url=nil, facemodelversion=nil, needrotatedetection=nil)
          @Mode = mode
          @Image = image
          @Url = url
          @FaceModelVersion = facemodelversion
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @Mode = params['Mode']
          @Image = params['Image']
          @Url = params['Url']
          @FaceModelVersion = params['FaceModelVersion']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # AnalyzeDenseLandmarks返回参数结构体
      class AnalyzeDenseLandmarksResponse < TencentCloud::Common::AbstractModel
        # @param ImageWidth: 请求的图片宽度。
        # @type ImageWidth: Integer
        # @param ImageHeight: 请求的图片高度。
        # @type ImageHeight: Integer
        # @param DenseFaceShapeSet: 稠密人脸关键点具体信息。
        # @type DenseFaceShapeSet: Array
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。本接口仅支持 “3.0“ 输入。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageWidth, :ImageHeight, :DenseFaceShapeSet, :FaceModelVersion, :RequestId
        
        def initialize(imagewidth=nil, imageheight=nil, densefaceshapeset=nil, facemodelversion=nil, requestid=nil)
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @DenseFaceShapeSet = densefaceshapeset
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          unless params['DenseFaceShapeSet'].nil?
            @DenseFaceShapeSet = []
            params['DenseFaceShapeSet'].each do |i|
              densefaceshape_tmp = DenseFaceShape.new
              densefaceshape_tmp.deserialize(i)
              @DenseFaceShapeSet << densefaceshape_tmp
            end
          end
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # AnalyzeFace请求参数结构体
      class AnalyzeFaceRequest < TencentCloud::Common::AbstractModel
        # @param Mode: 检测模式。0 为检测所有出现的人脸， 1 为检测面积最大的人脸。默认为 0。最多返回 10 张人脸的五官定位（人脸关键点）具体信息。
        # @type Mode: Integer
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。

        # 目前入参支持 “2.0”和“3.0“ 两个输入。

        # 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。

        # 2020年11月26日后开通服务的账号仅支持输入“3.0”。

        # 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        # @type FaceModelVersion: String
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :Mode, :Image, :Url, :FaceModelVersion, :NeedRotateDetection
        
        def initialize(mode=nil, image=nil, url=nil, facemodelversion=nil, needrotatedetection=nil)
          @Mode = mode
          @Image = image
          @Url = url
          @FaceModelVersion = facemodelversion
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @Mode = params['Mode']
          @Image = params['Image']
          @Url = params['Url']
          @FaceModelVersion = params['FaceModelVersion']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # AnalyzeFace返回参数结构体
      class AnalyzeFaceResponse < TencentCloud::Common::AbstractModel
        # @param ImageWidth: 请求的图片宽度。
        # @type ImageWidth: Integer
        # @param ImageHeight: 请求的图片高度。
        # @type ImageHeight: Integer
        # @param FaceShapeSet: 五官定位（人脸关键点）具体信息。
        # @type FaceShapeSet: Array
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageWidth, :ImageHeight, :FaceShapeSet, :FaceModelVersion, :RequestId
        
        def initialize(imagewidth=nil, imageheight=nil, faceshapeset=nil, facemodelversion=nil, requestid=nil)
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @FaceShapeSet = faceshapeset
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          unless params['FaceShapeSet'].nil?
            @FaceShapeSet = []
            params['FaceShapeSet'].each do |i|
              faceshape_tmp = FaceShape.new
              faceshape_tmp.deserialize(i)
              @FaceShapeSet << faceshape_tmp
            end
          end
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # 人脸属性信息
      class AttributeItem < TencentCloud::Common::AbstractModel
        # @param Type: 属性值
        # @type Type: Integer
        # @param Probability: Type识别概率值，【0,1】,代表判断正确的概率。
        # @type Probability: Float

        attr_accessor :Type, :Probability
        
        def initialize(type=nil, probability=nil)
          @Type = type
          @Probability = probability
        end

        def deserialize(params)
          @Type = params['Type']
          @Probability = params['Probability']
        end
      end

      # 识别出的最相似候选人
      class Candidate < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID
        # @type PersonId: String
        # @param FaceId: 人脸ID，仅在SearchFaces/SearchFacesReturnsByGroup接口返回时有效。人员搜索类接口采用融合特征方式检索，该字段无意义
        # @type FaceId: String
        # @param Score: 候选者的匹配得分。

        # 1万大小人脸底库下，误识率百分之一对应分数为70分，误识率千分之一对应分数为80分，误识率万分之一对应分数为90分；
        # 10万大小人脸底库下，误识率百分之一对应分数为80分，误识率千分之一对应分数为90分，误识率万分之一对应分数为100分；
        # 30万大小人脸底库下，误识率百分之一对应分数为85分，误识率千分之一对应分数为95分。

        # 一般80分左右可适用大部分场景，建议分数不要超过90分。您可以根据实际情况选择合适的分数。
        # @type Score: Float
        # @param PersonName: 人员名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonName: String
        # @param Gender: 人员性别
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Gender: Integer
        # @param PersonGroupInfos: 包含此人员的人员库及描述字段内容列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonGroupInfos: Array

        attr_accessor :PersonId, :FaceId, :Score, :PersonName, :Gender, :PersonGroupInfos
        
        def initialize(personid=nil, faceid=nil, score=nil, personname=nil, gender=nil, persongroupinfos=nil)
          @PersonId = personid
          @FaceId = faceid
          @Score = score
          @PersonName = personname
          @Gender = gender
          @PersonGroupInfos = persongroupinfos
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @FaceId = params['FaceId']
          @Score = params['Score']
          @PersonName = params['PersonName']
          @Gender = params['Gender']
          unless params['PersonGroupInfos'].nil?
            @PersonGroupInfos = []
            params['PersonGroupInfos'].each do |i|
              persongroupinfo_tmp = PersonGroupInfo.new
              persongroupinfo_tmp.deserialize(i)
              @PersonGroupInfos << persongroupinfo_tmp
            end
          end
        end
      end

      # CompareFace请求参数结构体
      class CompareFaceRequest < TencentCloud::Common::AbstractModel
        # @param ImageA: A 图片 base64 数据，base64 编码后大小不可超过5M。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type ImageA: String
        # @param ImageB: B 图片 base64 数据，base64 编码后大小不可超过5M。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type ImageB: String
        # @param UrlA: A 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        # A 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type UrlA: String
        # @param UrlB: B 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        # B 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type UrlB: String
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。

        # 目前入参支持 “2.0”和“3.0“ 两个输入。

        # 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。

        # 2020年11月26日后开通服务的账号仅支持输入“3.0”。

        # 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        # @type FaceModelVersion: String
        # @param QualityControl: 图片质量控制。
        # 0: 不进行控制；
        # 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        # 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        # 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        # 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        # 默认 0。
        # 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        # @type QualityControl: Integer
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :ImageA, :ImageB, :UrlA, :UrlB, :FaceModelVersion, :QualityControl, :NeedRotateDetection
        
        def initialize(imagea=nil, imageb=nil, urla=nil, urlb=nil, facemodelversion=nil, qualitycontrol=nil, needrotatedetection=nil)
          @ImageA = imagea
          @ImageB = imageb
          @UrlA = urla
          @UrlB = urlb
          @FaceModelVersion = facemodelversion
          @QualityControl = qualitycontrol
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @ImageA = params['ImageA']
          @ImageB = params['ImageB']
          @UrlA = params['UrlA']
          @UrlB = params['UrlB']
          @FaceModelVersion = params['FaceModelVersion']
          @QualityControl = params['QualityControl']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # CompareFace返回参数结构体
      class CompareFaceResponse < TencentCloud::Common::AbstractModel
        # @param Score: 两张图片中人脸的相似度分数。
        # 不同算法版本返回的相似度分数不同。
        # 若需要验证两张图片中人脸是否为同一人，3.0版本误识率千分之一对应分数为40分，误识率万分之一对应分数为50分，误识率十万分之一对应分数为60分。  一般超过50分则可认定为同一人。
        # 2.0版本误识率千分之一对应分数为70分，误识率万分之一对应分数为80分，误识率十万分之一对应分数为90分。 一般超过80分则可认定为同一人。
        # 若需要验证两张图片中的人脸是否为同一人，建议使用人脸验证接口。
        # @type Score: Float
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Score, :FaceModelVersion, :RequestId
        
        def initialize(score=nil, facemodelversion=nil, requestid=nil)
          @Score = score
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @Score = params['Score']
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # CopyPerson请求参数结构体
      class CopyPersonRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID
        # @type PersonId: String
        # @param GroupIds: 待加入的人员库列表
        # @type GroupIds: Array

        attr_accessor :PersonId, :GroupIds
        
        def initialize(personid=nil, groupids=nil)
          @PersonId = personid
          @GroupIds = groupids
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @GroupIds = params['GroupIds']
        end
      end

      # CopyPerson返回参数结构体
      class CopyPersonResponse < TencentCloud::Common::AbstractModel
        # @param SucGroupNum: 成功加入的人员库数量
        # @type SucGroupNum: Integer
        # @param SucGroupIds: 成功加入的人员库列表
        # @type SucGroupIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SucGroupNum, :SucGroupIds, :RequestId
        
        def initialize(sucgroupnum=nil, sucgroupids=nil, requestid=nil)
          @SucGroupNum = sucgroupnum
          @SucGroupIds = sucgroupids
          @RequestId = requestid
        end

        def deserialize(params)
          @SucGroupNum = params['SucGroupNum']
          @SucGroupIds = params['SucGroupIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateFace请求参数结构体
      class CreateFaceRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID。
        # @type PersonId: String
        # @param Images: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 人员人脸总数量不可超过5张。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Images: Array
        # @param Urls: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # 人员人脸总数量不可超过5张。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # @type Urls: Array
        # @param FaceMatchThreshold: 只有和该人员已有的人脸相似度超过FaceMatchThreshold值的人脸，才能增加人脸成功。
        # 默认值60分。取值范围[0,100] 。
        # @type FaceMatchThreshold: Float
        # @param QualityControl: 图片质量控制。
        # 0: 不进行控制；
        # 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        # 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        # 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        # 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        # 默认 0。
        # 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        # @type QualityControl: Integer
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :PersonId, :Images, :Urls, :FaceMatchThreshold, :QualityControl, :NeedRotateDetection
        
        def initialize(personid=nil, images=nil, urls=nil, facematchthreshold=nil, qualitycontrol=nil, needrotatedetection=nil)
          @PersonId = personid
          @Images = images
          @Urls = urls
          @FaceMatchThreshold = facematchthreshold
          @QualityControl = qualitycontrol
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Images = params['Images']
          @Urls = params['Urls']
          @FaceMatchThreshold = params['FaceMatchThreshold']
          @QualityControl = params['QualityControl']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # CreateFace返回参数结构体
      class CreateFaceResponse < TencentCloud::Common::AbstractModel
        # @param SucFaceNum: 加入成功的人脸数量
        # @type SucFaceNum: Integer
        # @param SucFaceIds: 加入成功的人脸ID列表
        # @type SucFaceIds: Array
        # @param RetCode: 每张人脸图片添加结果，-1101 代表未检测到人脸，-1102 代表图片解码失败，
        # -1601代表不符合图片质量控制要求, -1604 代表人脸相似度没有超过FaceMatchThreshold。
        # 其他非 0 值代表算法服务异常。
        # RetCode的顺序和入参中 Images 或 Urls 的顺序一致。
        # @type RetCode: Array
        # @param SucIndexes: 加入成功的人脸索引。索引顺序和入参中 Images 或 Urls 的顺序一致。
        # 例， Urls 中 有 3 个 url，第二个 url 失败，则 SucIndexes 值为 [0,2] 。
        # @type SucIndexes: Array
        # @param SucFaceRects: 加入成功的人脸框位置。顺序和入参中 Images 或 Urls 的顺序一致。
        # @type SucFaceRects: Array
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SucFaceNum, :SucFaceIds, :RetCode, :SucIndexes, :SucFaceRects, :FaceModelVersion, :RequestId
        
        def initialize(sucfacenum=nil, sucfaceids=nil, retcode=nil, sucindexes=nil, sucfacerects=nil, facemodelversion=nil, requestid=nil)
          @SucFaceNum = sucfacenum
          @SucFaceIds = sucfaceids
          @RetCode = retcode
          @SucIndexes = sucindexes
          @SucFaceRects = sucfacerects
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @SucFaceNum = params['SucFaceNum']
          @SucFaceIds = params['SucFaceIds']
          @RetCode = params['RetCode']
          @SucIndexes = params['SucIndexes']
          unless params['SucFaceRects'].nil?
            @SucFaceRects = []
            params['SucFaceRects'].each do |i|
              facerect_tmp = FaceRect.new
              facerect_tmp.deserialize(i)
              @SucFaceRects << facerect_tmp
            end
          end
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # CreateGroup请求参数结构体
      class CreateGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupName: 人员库名称，[1,60]个字符，可修改，不可重复。
        # @type GroupName: String
        # @param GroupId: 人员库 ID，不可修改，不可重复。支持英文、数字、-%@#&_，长度限制64B。
        # @type GroupId: String
        # @param GroupExDescriptions: 人员库自定义描述字段，用于描述人员库中人员属性，该人员库下所有人员将拥有此描述字段。
        # 最多可以创建5个。
        # 每个自定义描述字段支持[1,30]个字符。
        # 在同一人员库中自定义描述字段不可重复。
        # 例： 设置某人员库“自定义描述字段”为["学号","工号","手机号"]，
        # 则该人员库下所有人员将拥有名为“学号”、“工号”、“手机号”的描述字段，
        # 可在对应人员描述字段中填写内容，登记该人员的学号、工号、手机号等信息。
        # @type GroupExDescriptions: Array
        # @param Tag: 人员库信息备注，[0，40]个字符。
        # @type Tag: String
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。

        # 目前入参支持 “2.0”和“3.0“ 两个输入。

        # 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。

        # 2020年11月26日后开通服务的账号仅支持输入“3.0”。

        # 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        # @type FaceModelVersion: String

        attr_accessor :GroupName, :GroupId, :GroupExDescriptions, :Tag, :FaceModelVersion
        
        def initialize(groupname=nil, groupid=nil, groupexdescriptions=nil, tag=nil, facemodelversion=nil)
          @GroupName = groupname
          @GroupId = groupid
          @GroupExDescriptions = groupexdescriptions
          @Tag = tag
          @FaceModelVersion = facemodelversion
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupId = params['GroupId']
          @GroupExDescriptions = params['GroupExDescriptions']
          @Tag = params['Tag']
          @FaceModelVersion = params['FaceModelVersion']
        end
      end

      # CreateGroup返回参数结构体
      class CreateGroupResponse < TencentCloud::Common::AbstractModel
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceModelVersion, :RequestId
        
        def initialize(facemodelversion=nil, requestid=nil)
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # CreatePerson请求参数结构体
      class CreatePersonRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 待加入的人员库ID。
        # @type GroupId: String
        # @param PersonName: 人员名称。[1，60]个字符，可修改，可重复。
        # @type PersonName: String
        # @param PersonId: 人员ID，单个腾讯云账号下不可修改，不可重复。支持英文、数字、-%@#&_，长度限制64B。
        # @type PersonId: String
        # @param Gender: 0代表未填写，1代表男性，2代表女性。
        # @type Gender: Integer
        # @param PersonExDescriptionInfos: 人员描述字段内容，key-value。[0，60]个字符，可修改，可重复。
        # @type PersonExDescriptionInfos: Array
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param UniquePersonControl: 此参数用于控制判断 Image 或 Url 中图片包含的人脸，是否在人员库中已有疑似的同一人。
        # 如果判断为已有相同人在人员库中，则不会创建新的人员，返回疑似同一人的人员信息。
        # 如果判断没有，则完成创建人员。
        # 0: 不进行判断，无论是否有疑似同一人在库中均完成入库；
        # 1:较低的同一人判断要求（百一误识别率）；
        # 2: 一般的同一人判断要求（千一误识别率）；
        # 3: 较高的同一人判断要求（万一误识别率）；
        # 4: 很高的同一人判断要求（十万一误识别率）。
        # 默认 0。
        # 注： 要求越高，则疑似同一人的概率越小。不同要求对应的误识别率仅为参考值，您可以根据实际情况调整。
        # @type UniquePersonControl: Integer
        # @param QualityControl: 图片质量控制。
        # 0: 不进行控制；
        # 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        # 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        # 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        # 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        # 默认 0。
        # 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        # @type QualityControl: Integer
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :GroupId, :PersonName, :PersonId, :Gender, :PersonExDescriptionInfos, :Image, :Url, :UniquePersonControl, :QualityControl, :NeedRotateDetection
        
        def initialize(groupid=nil, personname=nil, personid=nil, gender=nil, personexdescriptioninfos=nil, image=nil, url=nil, uniquepersoncontrol=nil, qualitycontrol=nil, needrotatedetection=nil)
          @GroupId = groupid
          @PersonName = personname
          @PersonId = personid
          @Gender = gender
          @PersonExDescriptionInfos = personexdescriptioninfos
          @Image = image
          @Url = url
          @UniquePersonControl = uniquepersoncontrol
          @QualityControl = qualitycontrol
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @PersonName = params['PersonName']
          @PersonId = params['PersonId']
          @Gender = params['Gender']
          unless params['PersonExDescriptionInfos'].nil?
            @PersonExDescriptionInfos = []
            params['PersonExDescriptionInfos'].each do |i|
              personexdescriptioninfo_tmp = PersonExDescriptionInfo.new
              personexdescriptioninfo_tmp.deserialize(i)
              @PersonExDescriptionInfos << personexdescriptioninfo_tmp
            end
          end
          @Image = params['Image']
          @Url = params['Url']
          @UniquePersonControl = params['UniquePersonControl']
          @QualityControl = params['QualityControl']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # CreatePerson返回参数结构体
      class CreatePersonResponse < TencentCloud::Common::AbstractModel
        # @param FaceId: 人脸图片唯一标识。
        # @type FaceId: String
        # @param FaceRect: 检测出的人脸框的位置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceRect: :class:`Tencentcloud::Iai.v20180301.models.FaceRect`
        # @param SimilarPersonId: 疑似同一人的PersonId。
        # 当 UniquePersonControl 参数不为0且人员库中有疑似的同一人，此参数才有意义。
        # @type SimilarPersonId: String
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceId, :FaceRect, :SimilarPersonId, :FaceModelVersion, :RequestId
        
        def initialize(faceid=nil, facerect=nil, similarpersonid=nil, facemodelversion=nil, requestid=nil)
          @FaceId = faceid
          @FaceRect = facerect
          @SimilarPersonId = similarpersonid
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceId = params['FaceId']
          unless params['FaceRect'].nil?
            @FaceRect = FaceRect.new
            @FaceRect.deserialize(params['FaceRect'])
          end
          @SimilarPersonId = params['SimilarPersonId']
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # DeleteFace请求参数结构体
      class DeleteFaceRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID
        # @type PersonId: String
        # @param FaceIds: 待删除的人脸ID列表
        # @type FaceIds: Array

        attr_accessor :PersonId, :FaceIds
        
        def initialize(personid=nil, faceids=nil)
          @PersonId = personid
          @FaceIds = faceids
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @FaceIds = params['FaceIds']
        end
      end

      # DeleteFace返回参数结构体
      class DeleteFaceResponse < TencentCloud::Common::AbstractModel
        # @param SucDeletedNum: 删除成功的人脸数量
        # @type SucDeletedNum: Integer
        # @param SucFaceIds: 删除成功的人脸ID列表
        # @type SucFaceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SucDeletedNum, :SucFaceIds, :RequestId
        
        def initialize(sucdeletednum=nil, sucfaceids=nil, requestid=nil)
          @SucDeletedNum = sucdeletednum
          @SucFaceIds = sucfaceids
          @RequestId = requestid
        end

        def deserialize(params)
          @SucDeletedNum = params['SucDeletedNum']
          @SucFaceIds = params['SucFaceIds']
          @RequestId = params['RequestId']
        end
      end

      # DeleteGroup请求参数结构体
      class DeleteGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 人员库ID。
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DeleteGroup返回参数结构体
      class DeleteGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeletePersonFromGroup请求参数结构体
      class DeletePersonFromGroupRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID
        # @type PersonId: String
        # @param GroupId: 人员库ID
        # @type GroupId: String

        attr_accessor :PersonId, :GroupId
        
        def initialize(personid=nil, groupid=nil)
          @PersonId = personid
          @GroupId = groupid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @GroupId = params['GroupId']
        end
      end

      # DeletePersonFromGroup返回参数结构体
      class DeletePersonFromGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeletePerson请求参数结构体
      class DeletePersonRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID
        # @type PersonId: String

        attr_accessor :PersonId
        
        def initialize(personid=nil)
          @PersonId = personid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
        end
      end

      # DeletePerson返回参数结构体
      class DeletePersonResponse < TencentCloud::Common::AbstractModel
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

      # 稠密关键点详细信息
      class DenseFaceShape < TencentCloud::Common::AbstractModel
        # @param X: 人脸框左上角横坐标。
        # @type X: Integer
        # @param Y: 人脸框左上角纵坐标。
        # @type Y: Integer
        # @param Width: 人脸框宽度。
        # @type Width: Integer
        # @param Height: 人脸框高度。
        # @type Height: Integer
        # @param LeftEye: 描述左侧眼睛轮廓的 XX 点。
        # @type LeftEye: Array
        # @param RightEye: 描述右侧眼睛轮廓的 XX 点。
        # @type RightEye: Array
        # @param LeftEyeBrow: 描述左侧眉毛轮廓的 XX 点。
        # @type LeftEyeBrow: Array
        # @param RightEyeBrow: 描述右侧眉毛轮廓的 XX 点。
        # @type RightEyeBrow: Array
        # @param MouthOutside: 描述外嘴巴轮廓的 XX 点， 从左侧开始逆时针返回。
        # @type MouthOutside: Array
        # @param MouthInside: 描述内嘴巴轮廓的 XX 点，从左侧开始逆时针返回。
        # @type MouthInside: Array
        # @param Nose: 描述鼻子轮廓的 XX 点。
        # @type Nose: Array
        # @param LeftPupil: 左瞳孔轮廓的 XX 个点。
        # @type LeftPupil: Array
        # @param RightPupil: 右瞳孔轮廓的 XX 个点。
        # @type RightPupil: Array
        # @param CentralAxis: 中轴线轮廓的 XX 个点。
        # @type CentralAxis: Array
        # @param Chin: 下巴轮廓的 XX 个点。
        # @type Chin: Array
        # @param LeftEyeBags: 左眼袋的 XX 个点。
        # @type LeftEyeBags: Array
        # @param RightEyeBags: 右眼袋的 XX 个点。
        # @type RightEyeBags: Array
        # @param Forehead: 额头的 XX 个点。
        # @type Forehead: Array

        attr_accessor :X, :Y, :Width, :Height, :LeftEye, :RightEye, :LeftEyeBrow, :RightEyeBrow, :MouthOutside, :MouthInside, :Nose, :LeftPupil, :RightPupil, :CentralAxis, :Chin, :LeftEyeBags, :RightEyeBags, :Forehead
        
        def initialize(x=nil, y=nil, width=nil, height=nil, lefteye=nil, righteye=nil, lefteyebrow=nil, righteyebrow=nil, mouthoutside=nil, mouthinside=nil, nose=nil, leftpupil=nil, rightpupil=nil, centralaxis=nil, chin=nil, lefteyebags=nil, righteyebags=nil, forehead=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
          @LeftEye = lefteye
          @RightEye = righteye
          @LeftEyeBrow = lefteyebrow
          @RightEyeBrow = righteyebrow
          @MouthOutside = mouthoutside
          @MouthInside = mouthinside
          @Nose = nose
          @LeftPupil = leftpupil
          @RightPupil = rightpupil
          @CentralAxis = centralaxis
          @Chin = chin
          @LeftEyeBags = lefteyebags
          @RightEyeBags = righteyebags
          @Forehead = forehead
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
          unless params['LeftEye'].nil?
            @LeftEye = []
            params['LeftEye'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @LeftEye << point_tmp
            end
          end
          unless params['RightEye'].nil?
            @RightEye = []
            params['RightEye'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @RightEye << point_tmp
            end
          end
          unless params['LeftEyeBrow'].nil?
            @LeftEyeBrow = []
            params['LeftEyeBrow'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @LeftEyeBrow << point_tmp
            end
          end
          unless params['RightEyeBrow'].nil?
            @RightEyeBrow = []
            params['RightEyeBrow'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @RightEyeBrow << point_tmp
            end
          end
          unless params['MouthOutside'].nil?
            @MouthOutside = []
            params['MouthOutside'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @MouthOutside << point_tmp
            end
          end
          unless params['MouthInside'].nil?
            @MouthInside = []
            params['MouthInside'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @MouthInside << point_tmp
            end
          end
          unless params['Nose'].nil?
            @Nose = []
            params['Nose'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @Nose << point_tmp
            end
          end
          unless params['LeftPupil'].nil?
            @LeftPupil = []
            params['LeftPupil'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @LeftPupil << point_tmp
            end
          end
          unless params['RightPupil'].nil?
            @RightPupil = []
            params['RightPupil'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @RightPupil << point_tmp
            end
          end
          unless params['CentralAxis'].nil?
            @CentralAxis = []
            params['CentralAxis'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @CentralAxis << point_tmp
            end
          end
          unless params['Chin'].nil?
            @Chin = []
            params['Chin'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @Chin << point_tmp
            end
          end
          unless params['LeftEyeBags'].nil?
            @LeftEyeBags = []
            params['LeftEyeBags'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @LeftEyeBags << point_tmp
            end
          end
          unless params['RightEyeBags'].nil?
            @RightEyeBags = []
            params['RightEyeBags'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @RightEyeBags << point_tmp
            end
          end
          unless params['Forehead'].nil?
            @Forehead = []
            params['Forehead'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @Forehead << point_tmp
            end
          end
        end
      end

      # DetectFaceAttributes请求参数结构体
      class DetectFaceAttributesRequest < TencentCloud::Common::AbstractModel
        # @param MaxFaceNum: 最多处理的人脸数目。
        # 默认值为1（仅检测图片中面积最大的那张人脸），最大值为120。
        # 此参数用于控制处理待检测图片中的人脸个数，值越小，处理速度越快。
        # @type MaxFaceNum: Integer
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。
        # 对应图片 base64 编码后大小不可超过5M。
        # jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param FaceAttributesType: 是否返回年龄、性别、情绪等属性。
        # 合法值为（大小写不敏感）：None、Age、Beauty、Emotion、Eye、Eyebrow、
        # Gender、Hair、Hat、Headpose、Mask、Mouth、Moustache、Nose、Shape、Skin、Smile。
        # None为不需要返回。默认为 None。
        # 需要将属性组成一个用逗号分隔的字符串，属性之间的顺序没有要求。
        # 关于各属性的详细描述，参见下文出参。
        # 最多返回面积最大的 5 张人脸属性信息，超过 5 张人脸（第 6 张及以后的人脸）的 AttributesInfo 不具备参考意义。
        # @type FaceAttributesType: String
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。本接口仅支持“3.0”输入
        # @type FaceModelVersion: String

        attr_accessor :MaxFaceNum, :Image, :Url, :FaceAttributesType, :NeedRotateDetection, :FaceModelVersion
        
        def initialize(maxfacenum=nil, image=nil, url=nil, faceattributestype=nil, needrotatedetection=nil, facemodelversion=nil)
          @MaxFaceNum = maxfacenum
          @Image = image
          @Url = url
          @FaceAttributesType = faceattributestype
          @NeedRotateDetection = needrotatedetection
          @FaceModelVersion = facemodelversion
        end

        def deserialize(params)
          @MaxFaceNum = params['MaxFaceNum']
          @Image = params['Image']
          @Url = params['Url']
          @FaceAttributesType = params['FaceAttributesType']
          @NeedRotateDetection = params['NeedRotateDetection']
          @FaceModelVersion = params['FaceModelVersion']
        end
      end

      # DetectFaceAttributes返回参数结构体
      class DetectFaceAttributesResponse < TencentCloud::Common::AbstractModel
        # @param ImageWidth: 请求的图片宽度。
        # @type ImageWidth: Integer
        # @param ImageHeight: 请求的图片高度。
        # @type ImageHeight: Integer
        # @param FaceDetailInfos: 人脸信息列表。
        # @type FaceDetailInfos: Array
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageWidth, :ImageHeight, :FaceDetailInfos, :FaceModelVersion, :RequestId
        
        def initialize(imagewidth=nil, imageheight=nil, facedetailinfos=nil, facemodelversion=nil, requestid=nil)
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @FaceDetailInfos = facedetailinfos
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          unless params['FaceDetailInfos'].nil?
            @FaceDetailInfos = []
            params['FaceDetailInfos'].each do |i|
              facedetailinfo_tmp = FaceDetailInfo.new
              facedetailinfo_tmp.deserialize(i)
              @FaceDetailInfos << facedetailinfo_tmp
            end
          end
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # DetectFace请求参数结构体
      class DetectFaceRequest < TencentCloud::Common::AbstractModel
        # @param MaxFaceNum: 最多处理的人脸数目。默认值为1（仅检测图片中面积最大的那张人脸），最大值为120。
        # 此参数用于控制处理待检测图片中的人脸个数，值越小，处理速度越快。
        # @type MaxFaceNum: Integer
        # @param MinFaceSize: 人脸长和宽的最小尺寸，单位为像素。
        # 默认为34。建议不低于34。
        # 低于MinFaceSize值的人脸不会被检测。
        # @type MinFaceSize: Integer
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param NeedFaceAttributes: 是否需要返回人脸属性信息（FaceAttributesInfo）。0 为不需要返回，1 为需要返回。默认为 0。
        # 非 1 值均视为不需要返回，此时 FaceAttributesInfo 不具备参考意义。
        # 最多返回面积最大的 5 张人脸属性信息，超过 5 张人脸（第 6 张及以后的人脸）的 FaceAttributesInfo 不具备参考意义。
        # 提取人脸属性信息较为耗时，如不需要人脸属性信息，建议关闭此项功能，加快人脸检测速度。
        # @type NeedFaceAttributes: Integer
        # @param NeedQualityDetection: 是否开启质量检测。0 为关闭，1 为开启。默认为 0。
        # 非 1 值均视为不进行质量检测。
        # 最多返回面积最大的 30 张人脸质量分信息，超过 30 张人脸（第 31 张及以后的人脸）的 FaceQualityInfo不具备参考意义。
        # 建议：人脸入库操作建议开启此功能。
        # @type NeedQualityDetection: Integer
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。目前入参支持 “2.0”和“3.0“ 两个输入。
        # 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。
        # 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        # @type FaceModelVersion: String
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :MaxFaceNum, :MinFaceSize, :Image, :Url, :NeedFaceAttributes, :NeedQualityDetection, :FaceModelVersion, :NeedRotateDetection
        
        def initialize(maxfacenum=nil, minfacesize=nil, image=nil, url=nil, needfaceattributes=nil, needqualitydetection=nil, facemodelversion=nil, needrotatedetection=nil)
          @MaxFaceNum = maxfacenum
          @MinFaceSize = minfacesize
          @Image = image
          @Url = url
          @NeedFaceAttributes = needfaceattributes
          @NeedQualityDetection = needqualitydetection
          @FaceModelVersion = facemodelversion
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @MaxFaceNum = params['MaxFaceNum']
          @MinFaceSize = params['MinFaceSize']
          @Image = params['Image']
          @Url = params['Url']
          @NeedFaceAttributes = params['NeedFaceAttributes']
          @NeedQualityDetection = params['NeedQualityDetection']
          @FaceModelVersion = params['FaceModelVersion']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # DetectFace返回参数结构体
      class DetectFaceResponse < TencentCloud::Common::AbstractModel
        # @param ImageWidth: 请求的图片宽度。
        # @type ImageWidth: Integer
        # @param ImageHeight: 请求的图片高度。
        # @type ImageHeight: Integer
        # @param FaceInfos: 人脸信息列表。包含人脸坐标信息、属性信息（若需要）、质量分信息（若需要）。
        # @type FaceInfos: Array
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。

        # 目前入参支持 “2.0”和“3.0“ 两个输入。

        # 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。

        # 2020年11月26日后开通服务的账号仅支持输入“3.0”。

        # 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageWidth, :ImageHeight, :FaceInfos, :FaceModelVersion, :RequestId
        
        def initialize(imagewidth=nil, imageheight=nil, faceinfos=nil, facemodelversion=nil, requestid=nil)
          @ImageWidth = imagewidth
          @ImageHeight = imageheight
          @FaceInfos = faceinfos
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageWidth = params['ImageWidth']
          @ImageHeight = params['ImageHeight']
          unless params['FaceInfos'].nil?
            @FaceInfos = []
            params['FaceInfos'].each do |i|
              faceinfo_tmp = FaceInfo.new
              faceinfo_tmp.deserialize(i)
              @FaceInfos << faceinfo_tmp
            end
          end
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # DetectLiveFace请求参数结构体
      class DetectLiveFaceRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M（图片的宽高比请接近3:4，不符合宽高比的图片返回的分值不具备参考意义）。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # （图片的宽高比请接近 3:4，不符合宽高比的图片返回的分值不具备参考意义）
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。

        # 目前入参支持 “2.0”和“3.0“ 两个输入。

        # 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。

        # 2020年11月26日后开通服务的账号仅支持输入“3.0”。

        # 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        # @type FaceModelVersion: String

        attr_accessor :Image, :Url, :FaceModelVersion
        
        def initialize(image=nil, url=nil, facemodelversion=nil)
          @Image = image
          @Url = url
          @FaceModelVersion = facemodelversion
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
          @FaceModelVersion = params['FaceModelVersion']
        end
      end

      # DetectLiveFace返回参数结构体
      class DetectLiveFaceResponse < TencentCloud::Common::AbstractModel
        # @param Score: 活体打分，取值范围 [0,100]，分数一般落于[80, 100]区间内，0分也为常见值。推荐相大于 87 时可判断为活体。可根据具体场景自行调整阈值。
        # 本字段当且仅当FaceModelVersion为2.0时才具备参考意义。
        # @type Score: Float
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param IsLiveness: 活体检测是否通过。
        # 本字段只有FaceModelVersion为3.0时才具备参考意义。
        # @type IsLiveness: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Score, :FaceModelVersion, :IsLiveness, :RequestId
        
        def initialize(score=nil, facemodelversion=nil, isliveness=nil, requestid=nil)
          @Score = score
          @FaceModelVersion = facemodelversion
          @IsLiveness = isliveness
          @RequestId = requestid
        end

        def deserialize(params)
          @Score = params['Score']
          @FaceModelVersion = params['FaceModelVersion']
          @IsLiveness = params['IsLiveness']
          @RequestId = params['RequestId']
        end
      end

      # 眼睛信息
      class Eye < TencentCloud::Common::AbstractModel
        # @param Glass: 识别是否佩戴眼镜。
        # AttributeItem对应的Type为 —— 0：无眼镜，1：普通眼镜，2：墨镜
        # @type Glass: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param EyeOpen: 识别眼睛的睁开、闭合状态。
        # AttributeItem对应的Type为 —— 0：睁开，1：闭眼
        # @type EyeOpen: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param EyelidType: 识别是否双眼皮。
        # AttributeItem对应的Type为 —— 0：无，1：有。
        # @type EyelidType: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param EyeSize: 眼睛大小。
        # AttributeItem对应的Type为 —— 0：小眼睛，1：普通眼睛，2：大眼睛。
        # @type EyeSize: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`

        attr_accessor :Glass, :EyeOpen, :EyelidType, :EyeSize
        
        def initialize(glass=nil, eyeopen=nil, eyelidtype=nil, eyesize=nil)
          @Glass = glass
          @EyeOpen = eyeopen
          @EyelidType = eyelidtype
          @EyeSize = eyesize
        end

        def deserialize(params)
          unless params['Glass'].nil?
            @Glass = AttributeItem.new
            @Glass.deserialize(params['Glass'])
          end
          unless params['EyeOpen'].nil?
            @EyeOpen = AttributeItem.new
            @EyeOpen.deserialize(params['EyeOpen'])
          end
          unless params['EyelidType'].nil?
            @EyelidType = AttributeItem.new
            @EyelidType.deserialize(params['EyelidType'])
          end
          unless params['EyeSize'].nil?
            @EyeSize = AttributeItem.new
            @EyeSize.deserialize(params['EyeSize'])
          end
        end
      end

      # 眉毛信息
      class Eyebrow < TencentCloud::Common::AbstractModel
        # @param EyebrowDensity: 眉毛浓密。
        # AttributeItem对应的Type为 —— 0：淡眉，1：浓眉。
        # @type EyebrowDensity: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param EyebrowCurve: 眉毛弯曲。
        # AttributeItem对应的Type为 —— 0：不弯，1：弯眉。
        # @type EyebrowCurve: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param EyebrowLength: 眉毛长短。
        # AttributeItem对应的Type为 —— 0：短眉毛，1：长眉毛。
        # @type EyebrowLength: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`

        attr_accessor :EyebrowDensity, :EyebrowCurve, :EyebrowLength
        
        def initialize(eyebrowdensity=nil, eyebrowcurve=nil, eyebrowlength=nil)
          @EyebrowDensity = eyebrowdensity
          @EyebrowCurve = eyebrowcurve
          @EyebrowLength = eyebrowlength
        end

        def deserialize(params)
          unless params['EyebrowDensity'].nil?
            @EyebrowDensity = AttributeItem.new
            @EyebrowDensity.deserialize(params['EyebrowDensity'])
          end
          unless params['EyebrowCurve'].nil?
            @EyebrowCurve = AttributeItem.new
            @EyebrowCurve.deserialize(params['EyebrowCurve'])
          end
          unless params['EyebrowLength'].nil?
            @EyebrowLength = AttributeItem.new
            @EyebrowLength.deserialize(params['EyebrowLength'])
          end
        end
      end

      # 人脸属性信息，包含性别( gender )、年龄( age )、表情( expression )、
      # 魅力( beauty )、眼镜( glass )、口罩（mask）、头发（hair）和姿态 (pitch，roll，yaw )。只有当 NeedFaceAttributes 设为 1 时才返回有效信息，最多返回面积最大的 5 张人脸属性信息，超过 5 张人脸（第 6 张及以后的人脸）的 FaceAttributesInfo 不具备参考意义。
      class FaceAttributesInfo < TencentCloud::Common::AbstractModel
        # @param Gender: 性别[0~49]为女性，[50，100]为男性，越接近0和100表示置信度越高。NeedFaceAttributes 不为 1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Gender: Integer
        # @param Age: 年龄 [0~100]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Age: Integer
        # @param Expression: 微笑[0(normal，正常)~50(smile，微笑)~100(laugh，大笑)]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Expression: Integer
        # @param Glass: 是否有眼镜 [true,false]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Glass: Boolean
        # @param Pitch: 上下偏移[-30,30]，单位角度。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # 建议：人脸入库选择[-10,10]的图片。
        # @type Pitch: Integer
        # @param Yaw: 左右偏移[-30,30]，单位角度。 NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # 建议：人脸入库选择[-10,10]的图片。
        # @type Yaw: Integer
        # @param Roll: 平面旋转[-180,180]，单位角度。 NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # 建议：人脸入库选择[-20,20]的图片。
        # @type Roll: Integer
        # @param Beauty: 魅力[0~100]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Beauty: Integer
        # @param Hat: 是否有帽子 [true,false]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hat: Boolean
        # @param Mask: 是否有口罩 [true,false]。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mask: Boolean
        # @param Hair: 头发信息，包含头发长度（length）、有无刘海（bang）、头发颜色（color）。NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hair: :class:`Tencentcloud::Iai.v20180301.models.FaceHairAttributesInfo`
        # @param EyeOpen: 双眼是否睁开 [true,false]。只要有超过一只眼睛闭眼，就返回false。 NeedFaceAttributes 不为1 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EyeOpen: Boolean

        attr_accessor :Gender, :Age, :Expression, :Glass, :Pitch, :Yaw, :Roll, :Beauty, :Hat, :Mask, :Hair, :EyeOpen
        
        def initialize(gender=nil, age=nil, expression=nil, glass=nil, pitch=nil, yaw=nil, roll=nil, beauty=nil, hat=nil, mask=nil, hair=nil, eyeopen=nil)
          @Gender = gender
          @Age = age
          @Expression = expression
          @Glass = glass
          @Pitch = pitch
          @Yaw = yaw
          @Roll = roll
          @Beauty = beauty
          @Hat = hat
          @Mask = mask
          @Hair = hair
          @EyeOpen = eyeopen
        end

        def deserialize(params)
          @Gender = params['Gender']
          @Age = params['Age']
          @Expression = params['Expression']
          @Glass = params['Glass']
          @Pitch = params['Pitch']
          @Yaw = params['Yaw']
          @Roll = params['Roll']
          @Beauty = params['Beauty']
          @Hat = params['Hat']
          @Mask = params['Mask']
          unless params['Hair'].nil?
            @Hair = FaceHairAttributesInfo.new
            @Hair.deserialize(params['Hair'])
          end
          @EyeOpen = params['EyeOpen']
        end
      end

      # 人脸属性信息，根据 FaceAttributesType 输入的类型，返回年龄（Age）、颜值（Beauty）
      # 情绪（Emotion）、眼睛信息（Eye）、眉毛（Eyebrow）、性别（Gender）
      # 头发（Hair）、帽子（Hat）、姿态（Headpose）、口罩（Mask）、嘴巴（Mouse）、胡子（Moustache）
      # 鼻子（Nose）、脸型（Shape）、肤色（Skin）、微笑（Smile）等人脸属性信息。
      # 若 FaceAttributesType 没有输入相关类型，则FaceDetaiAttributesInfo返回的细项不具备参考意义。
      class FaceDetailAttributesInfo < TencentCloud::Common::AbstractModel
        # @param Age: 年龄 [0,65]，其中65代表“65岁及以上”。
        # FaceAttributesType 不为含Age 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Age: Integer
        # @param Beauty: 美丑打分[0,100]。
        # FaceAttributesType 不含 Beauty 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Beauty: Integer
        # @param Emotion: 情绪，可识别自然、高兴、惊讶、生气、悲伤、厌恶、害怕。
        # AttributeItem对应的Type为 —— 0：自然，1：高兴，2：惊讶，3：生气，4：悲伤，5：厌恶，6：害怕
        # FaceAttributesType 不含Emotion 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Emotion: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Eye: 眼睛相关信息，可识别是否戴眼镜、是否闭眼、是否双眼皮和眼睛大小。
        # FaceAttributesType 不含Eye 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Eye: :class:`Tencentcloud::Iai.v20180301.models.Eye`
        # @param Eyebrow: 眉毛相关信息，可识别眉毛浓密、弯曲、长短信息。
        # FaceAttributesType 不含Eyebrow 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Eyebrow: :class:`Tencentcloud::Iai.v20180301.models.Eyebrow`
        # @param Gender: 性别信息。
        # AttributeItem对应的Type为 —— 	0：男性，1：女性。
        # FaceAttributesType 不含Gender 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Gender: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Hair: 头发信息，包含头发长度、有无刘海、头发颜色。
        # FaceAttributesType 不含Hair 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Hair: :class:`Tencentcloud::Iai.v20180301.models.Hair`
        # @param Hat: 帽子信息，可识别是否佩戴帽子、帽子款式、帽子颜色。
        # FaceAttributesType 不含Hat 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Hat: :class:`Tencentcloud::Iai.v20180301.models.Hat`
        # @param HeadPose: 姿态信息，包含人脸的上下偏移、左右偏移、平面旋转信息。
        # FaceAttributesType 不含Headpose 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type HeadPose: :class:`Tencentcloud::Iai.v20180301.models.HeadPose`
        # @param Mask: 口罩佩戴信息。
        # AttributeItem对应的Type为 —— 0: 无口罩， 1: 有口罩不遮脸，2: 有口罩遮下巴，3: 有口罩遮嘴，4: 正确佩戴口罩。
        # FaceAttributesType 不含Mask 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Mask: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Mouth: 嘴巴信息，可识别是否张嘴、嘴唇厚度。
        # FaceAttributesType 不含 Mouth 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Mouth: :class:`Tencentcloud::Iai.v20180301.models.Mouth`
        # @param Moustache: 胡子信息。
        # AttributeItem对应的Type为 —— 0：无胡子，1：有胡子。
        # FaceAttributesType 不含 Moustache 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Moustache: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Nose: 鼻子信息。
        # AttributeItem对应的Type为 —— 0：朝天鼻，1：鹰钩鼻，2：普通，3：圆鼻头
        # FaceAttributesType 不含 Nose 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Nose: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Shape: 脸型信息。
        # AttributeItem对应的Type为 —— 0：方脸，1：三角脸，2：鹅蛋脸，3：心形脸，4：圆脸。
        # FaceAttributesType 不含 Shape 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Shape: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Skin: 肤色信息。
        # AttributeItem对应的Type为 —— 0：黄色皮肤，1：棕色皮肤，2：黑色皮肤，3：白色皮肤。
        # FaceAttributesType 不含 Skin 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Skin: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Smile: 微笑程度，[0,100]。
        # FaceAttributesType 不含 Smile 或检测超过 5 张人脸时，此参数仍返回，但不具备参考意义。
        # @type Smile: Integer

        attr_accessor :Age, :Beauty, :Emotion, :Eye, :Eyebrow, :Gender, :Hair, :Hat, :HeadPose, :Mask, :Mouth, :Moustache, :Nose, :Shape, :Skin, :Smile
        
        def initialize(age=nil, beauty=nil, emotion=nil, eye=nil, eyebrow=nil, gender=nil, hair=nil, hat=nil, headpose=nil, mask=nil, mouth=nil, moustache=nil, nose=nil, shape=nil, skin=nil, smile=nil)
          @Age = age
          @Beauty = beauty
          @Emotion = emotion
          @Eye = eye
          @Eyebrow = eyebrow
          @Gender = gender
          @Hair = hair
          @Hat = hat
          @HeadPose = headpose
          @Mask = mask
          @Mouth = mouth
          @Moustache = moustache
          @Nose = nose
          @Shape = shape
          @Skin = skin
          @Smile = smile
        end

        def deserialize(params)
          @Age = params['Age']
          @Beauty = params['Beauty']
          unless params['Emotion'].nil?
            @Emotion = AttributeItem.new
            @Emotion.deserialize(params['Emotion'])
          end
          unless params['Eye'].nil?
            @Eye = Eye.new
            @Eye.deserialize(params['Eye'])
          end
          unless params['Eyebrow'].nil?
            @Eyebrow = Eyebrow.new
            @Eyebrow.deserialize(params['Eyebrow'])
          end
          unless params['Gender'].nil?
            @Gender = AttributeItem.new
            @Gender.deserialize(params['Gender'])
          end
          unless params['Hair'].nil?
            @Hair = Hair.new
            @Hair.deserialize(params['Hair'])
          end
          unless params['Hat'].nil?
            @Hat = Hat.new
            @Hat.deserialize(params['Hat'])
          end
          unless params['HeadPose'].nil?
            @HeadPose = HeadPose.new
            @HeadPose.deserialize(params['HeadPose'])
          end
          unless params['Mask'].nil?
            @Mask = AttributeItem.new
            @Mask.deserialize(params['Mask'])
          end
          unless params['Mouth'].nil?
            @Mouth = Mouth.new
            @Mouth.deserialize(params['Mouth'])
          end
          unless params['Moustache'].nil?
            @Moustache = AttributeItem.new
            @Moustache.deserialize(params['Moustache'])
          end
          unless params['Nose'].nil?
            @Nose = AttributeItem.new
            @Nose.deserialize(params['Nose'])
          end
          unless params['Shape'].nil?
            @Shape = AttributeItem.new
            @Shape.deserialize(params['Shape'])
          end
          unless params['Skin'].nil?
            @Skin = AttributeItem.new
            @Skin.deserialize(params['Skin'])
          end
          @Smile = params['Smile']
        end
      end

      # 人脸信息列表。
      class FaceDetailInfo < TencentCloud::Common::AbstractModel
        # @param FaceRect: 检测出的人脸框位置。
        # @type FaceRect: :class:`Tencentcloud::Iai.v20180301.models.FaceRect`
        # @param FaceDetailAttributesInfo: 人脸属性信息，根据 FaceAttributesType 输入的类型，返回年龄（Age）、颜值（Beauty）
        # 情绪（Emotion）、眼睛信息（Eye）、眉毛（Eyebrow）、性别（Gender）
        # 头发（Hair）、帽子（Hat）、姿态（Headpose）、口罩（Mask）、嘴巴（Mouse）、胡子（Moustache）
        # 鼻子（Nose）、脸型（Shape）、肤色（Skin）、微笑（Smile）等人脸属性信息。
        # 若 FaceAttributesType 没有输入相关类型，则FaceDetaiAttributesInfo返回的细项不具备参考意义。
        # @type FaceDetailAttributesInfo: :class:`Tencentcloud::Iai.v20180301.models.FaceDetailAttributesInfo`

        attr_accessor :FaceRect, :FaceDetailAttributesInfo
        
        def initialize(facerect=nil, facedetailattributesinfo=nil)
          @FaceRect = facerect
          @FaceDetailAttributesInfo = facedetailattributesinfo
        end

        def deserialize(params)
          unless params['FaceRect'].nil?
            @FaceRect = FaceRect.new
            @FaceRect.deserialize(params['FaceRect'])
          end
          unless params['FaceDetailAttributesInfo'].nil?
            @FaceDetailAttributesInfo = FaceDetailAttributesInfo.new
            @FaceDetailAttributesInfo.deserialize(params['FaceDetailAttributesInfo'])
          end
        end
      end

      # 人脸属性中的发型信息。
      class FaceHairAttributesInfo < TencentCloud::Common::AbstractModel
        # @param Length: 0：光头，1：短发，2：中发，3：长发，4：绑发
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Length: Integer
        # @param Bang: 0：有刘海，1：无刘海
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bang: Integer
        # @param Color: 0：黑色，1：金色，2：棕色，3：灰白色
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Color: Integer

        attr_accessor :Length, :Bang, :Color
        
        def initialize(length=nil, bang=nil, color=nil)
          @Length = length
          @Bang = bang
          @Color = color
        end

        def deserialize(params)
          @Length = params['Length']
          @Bang = params['Bang']
          @Color = params['Color']
        end
      end

      # 人脸信息列表。
      class FaceInfo < TencentCloud::Common::AbstractModel
        # @param X: 人脸框左上角横坐标。
        # 人脸框包含人脸五官位置并在此基础上进行一定的扩展，若人脸框超出图片范围，会导致坐标负值。
        # 若需截取完整人脸，可以在完整分completess满足需求的情况下，将负值坐标取0。
        # @type X: Integer
        # @param Y: 人脸框左上角纵坐标。
        # 人脸框包含人脸五官位置并在此基础上进行一定的扩展，若人脸框超出图片范围，会导致坐标负值。
        # 若需截取完整人脸，可以在完整分completess满足需求的情况下，将负值坐标取0。
        # @type Y: Integer
        # @param Width: 人脸框宽度。
        # @type Width: Integer
        # @param Height: 人脸框高度。
        # @type Height: Integer
        # @param FaceAttributesInfo: 人脸属性信息，包含性别( gender )、年龄( age )、表情( expression )、
        # 魅力( beauty )、眼镜( glass )、口罩（mask）、头发（hair）和姿态 (pitch，roll，yaw )。只有当 NeedFaceAttributes 设为 1 时才返回有效信息。
        # @type FaceAttributesInfo: :class:`Tencentcloud::Iai.v20180301.models.FaceAttributesInfo`
        # @param FaceQualityInfo: 人脸质量信息，包含质量分（score）、模糊分（sharpness）、光照分（brightness）、遮挡分（completeness）。只有当NeedFaceDetection设为1时才返回有效信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceQualityInfo: :class:`Tencentcloud::Iai.v20180301.models.FaceQualityInfo`

        attr_accessor :X, :Y, :Width, :Height, :FaceAttributesInfo, :FaceQualityInfo
        
        def initialize(x=nil, y=nil, width=nil, height=nil, faceattributesinfo=nil, facequalityinfo=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
          @FaceAttributesInfo = faceattributesinfo
          @FaceQualityInfo = facequalityinfo
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
          unless params['FaceAttributesInfo'].nil?
            @FaceAttributesInfo = FaceAttributesInfo.new
            @FaceAttributesInfo.deserialize(params['FaceAttributesInfo'])
          end
          unless params['FaceQualityInfo'].nil?
            @FaceQualityInfo = FaceQualityInfo.new
            @FaceQualityInfo.deserialize(params['FaceQualityInfo'])
          end
        end
      end

      # 五官遮挡分，评价眉毛（Eyebrow）、眼睛（Eye）、鼻子（Nose）、脸颊（Cheek）、嘴巴（Mouth）、下巴（Chin）的被遮挡程度。
      class FaceQualityCompleteness < TencentCloud::Common::AbstractModel
        # @param Eyebrow: 眉毛的遮挡分数[0,100]，分数越高遮挡越少。
        # 参考范围：[0,80]表示发生遮挡。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Eyebrow: Integer
        # @param Eye: 眼睛的遮挡分数[0,100],分数越高遮挡越少。
        # 参考范围：[0,80]表示发生遮挡。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Eye: Integer
        # @param Nose: 鼻子的遮挡分数[0,100],分数越高遮挡越少。
        # 参考范围：[0,60]表示发生遮挡。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Nose: Integer
        # @param Cheek: 脸颊的遮挡分数[0,100],分数越高遮挡越少。
        # 参考范围：[0,70]表示发生遮挡。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cheek: Integer
        # @param Mouth: 嘴巴的遮挡分数[0,100],分数越高遮挡越少。
        # 参考范围：[0,50]表示发生遮挡。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Mouth: Integer
        # @param Chin: 下巴的遮挡分数[0,100],分数越高遮挡越少。
        # 参考范围：[0,70]表示发生遮挡。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Chin: Integer

        attr_accessor :Eyebrow, :Eye, :Nose, :Cheek, :Mouth, :Chin
        
        def initialize(eyebrow=nil, eye=nil, nose=nil, cheek=nil, mouth=nil, chin=nil)
          @Eyebrow = eyebrow
          @Eye = eye
          @Nose = nose
          @Cheek = cheek
          @Mouth = mouth
          @Chin = chin
        end

        def deserialize(params)
          @Eyebrow = params['Eyebrow']
          @Eye = params['Eye']
          @Nose = params['Nose']
          @Cheek = params['Cheek']
          @Mouth = params['Mouth']
          @Chin = params['Chin']
        end
      end

      # 人脸质量信息，包含质量分（score）、模糊分（sharpness）、光照分（brightness）、遮挡分（completeness）。只有当NeedFaceDetection设为1时才返回有效信息。
      class FaceQualityInfo < TencentCloud::Common::AbstractModel
        # @param Score: 质量分: [0,100]，综合评价图像质量是否适合人脸识别，分数越高质量越好。
        # 正常情况，只需要使用Score作为质量分总体的判断标准即可。Sharpness、Brightness、Completeness等细项分仅供参考。
        # 参考范围：[0,40]较差，[40,60] 一般，[60,80]较好，[80,100]很好。
        # 建议：人脸入库选取70以上的图片。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer
        # @param Sharpness: 清晰分：[0,100]，评价图片清晰程度，分数越高越清晰。
        # 参考范围：[0,40]特别模糊，[40,60]模糊，[60,80]一般，[80,100]清晰。
        # 建议：人脸入库选取80以上的图片。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sharpness: Integer
        # @param Brightness: 光照分：[0,100]，评价图片光照程度，分数越高越亮。
        # 参考范围： [0,30]偏暗，[30,70]光照正常，[70,100]偏亮。
        # 建议：人脸入库选取[30,70]的图片。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Brightness: Integer
        # @param Completeness: 五官遮挡分，评价眉毛（Eyebrow）、眼睛（Eye）、鼻子（Nose）、脸颊（Cheek）、嘴巴（Mouth）、下巴（Chin）的被遮挡程度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Completeness: :class:`Tencentcloud::Iai.v20180301.models.FaceQualityCompleteness`

        attr_accessor :Score, :Sharpness, :Brightness, :Completeness
        
        def initialize(score=nil, sharpness=nil, brightness=nil, completeness=nil)
          @Score = score
          @Sharpness = sharpness
          @Brightness = brightness
          @Completeness = completeness
        end

        def deserialize(params)
          @Score = params['Score']
          @Sharpness = params['Sharpness']
          @Brightness = params['Brightness']
          unless params['Completeness'].nil?
            @Completeness = FaceQualityCompleteness.new
            @Completeness.deserialize(params['Completeness'])
          end
        end
      end

      # 检测出的人脸框的位置
      class FaceRect < TencentCloud::Common::AbstractModel
        # @param X: 人脸框左上角横坐标。
        # 人脸框包含人脸五官位置并在此基础上进行一定的扩展，若人脸框超出图片范围，会导致坐标负值。
        # 若需截取完整人脸，可以在完整分completess满足需求的情况下，将负值坐标取0。
        # @type X: Integer
        # @param Y: 人脸框左上角纵坐标。
        # 人脸框包含人脸五官位置并在此基础上进行一定的扩展，若人脸框超出图片范围，会导致坐标负值。
        # 若需截取完整人脸，可以在完整分completess满足需求的情况下，将负值坐标取0。
        # @type Y: Integer
        # @param Width: 人脸宽度
        # @type Width: Integer
        # @param Height: 人脸高度
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

      # 五官定位（人脸关键点）具体信息。
      class FaceShape < TencentCloud::Common::AbstractModel
        # @param FaceProfile: 描述脸型轮廓的 21 点。
        # @type FaceProfile: Array
        # @param LeftEye: 描述左侧眼睛轮廓的 8 点。
        # @type LeftEye: Array
        # @param RightEye: 描述右侧眼睛轮廓的 8 点。
        # @type RightEye: Array
        # @param LeftEyeBrow: 描述左侧眉毛轮廓的 8 点。
        # @type LeftEyeBrow: Array
        # @param RightEyeBrow: 描述右侧眉毛轮廓的 8 点。
        # @type RightEyeBrow: Array
        # @param Mouth: 描述嘴巴轮廓的 22 点。
        # @type Mouth: Array
        # @param Nose: 描述鼻子轮廓的 13 点。
        # @type Nose: Array
        # @param LeftPupil: 左瞳孔轮廓的 1 个点。
        # @type LeftPupil: Array
        # @param RightPupil: 右瞳孔轮廓的 1 个点。
        # @type RightPupil: Array

        attr_accessor :FaceProfile, :LeftEye, :RightEye, :LeftEyeBrow, :RightEyeBrow, :Mouth, :Nose, :LeftPupil, :RightPupil
        
        def initialize(faceprofile=nil, lefteye=nil, righteye=nil, lefteyebrow=nil, righteyebrow=nil, mouth=nil, nose=nil, leftpupil=nil, rightpupil=nil)
          @FaceProfile = faceprofile
          @LeftEye = lefteye
          @RightEye = righteye
          @LeftEyeBrow = lefteyebrow
          @RightEyeBrow = righteyebrow
          @Mouth = mouth
          @Nose = nose
          @LeftPupil = leftpupil
          @RightPupil = rightpupil
        end

        def deserialize(params)
          unless params['FaceProfile'].nil?
            @FaceProfile = []
            params['FaceProfile'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @FaceProfile << point_tmp
            end
          end
          unless params['LeftEye'].nil?
            @LeftEye = []
            params['LeftEye'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @LeftEye << point_tmp
            end
          end
          unless params['RightEye'].nil?
            @RightEye = []
            params['RightEye'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @RightEye << point_tmp
            end
          end
          unless params['LeftEyeBrow'].nil?
            @LeftEyeBrow = []
            params['LeftEyeBrow'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @LeftEyeBrow << point_tmp
            end
          end
          unless params['RightEyeBrow'].nil?
            @RightEyeBrow = []
            params['RightEyeBrow'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @RightEyeBrow << point_tmp
            end
          end
          unless params['Mouth'].nil?
            @Mouth = []
            params['Mouth'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @Mouth << point_tmp
            end
          end
          unless params['Nose'].nil?
            @Nose = []
            params['Nose'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @Nose << point_tmp
            end
          end
          unless params['LeftPupil'].nil?
            @LeftPupil = []
            params['LeftPupil'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @LeftPupil << point_tmp
            end
          end
          unless params['RightPupil'].nil?
            @RightPupil = []
            params['RightPupil'].each do |i|
              point_tmp = Point.new
              point_tmp.deserialize(i)
              @RightPupil << point_tmp
            end
          end
        end
      end

      # GetGroupInfo请求参数结构体
      class GetGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 人员库 ID。
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # GetGroupInfo返回参数结构体
      class GetGroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param GroupName: 人员库名称
        # @type GroupName: String
        # @param GroupId: 人员库ID
        # @type GroupId: String
        # @param GroupExDescriptions: 人员库自定义描述字段
        # @type GroupExDescriptions: Array
        # @param Tag: 人员库信息备注
        # @type Tag: String
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param CreationTimestamp: Group的创建时间和日期 CreationTimestamp。CreationTimestamp 的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        # @type CreationTimestamp: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupName, :GroupId, :GroupExDescriptions, :Tag, :FaceModelVersion, :CreationTimestamp, :RequestId
        
        def initialize(groupname=nil, groupid=nil, groupexdescriptions=nil, tag=nil, facemodelversion=nil, creationtimestamp=nil, requestid=nil)
          @GroupName = groupname
          @GroupId = groupid
          @GroupExDescriptions = groupexdescriptions
          @Tag = tag
          @FaceModelVersion = facemodelversion
          @CreationTimestamp = creationtimestamp
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupId = params['GroupId']
          @GroupExDescriptions = params['GroupExDescriptions']
          @Tag = params['Tag']
          @FaceModelVersion = params['FaceModelVersion']
          @CreationTimestamp = params['CreationTimestamp']
          @RequestId = params['RequestId']
        end
      end

      # GetGroupList请求参数结构体
      class GetGroupListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始序号，默认值为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为1000
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetGroupList返回参数结构体
      class GetGroupListResponse < TencentCloud::Common::AbstractModel
        # @param GroupInfos: 返回的人员库信息
        # @type GroupInfos: Array
        # @param GroupNum: 人员库总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupInfos, :GroupNum, :RequestId
        
        def initialize(groupinfos=nil, groupnum=nil, requestid=nil)
          @GroupInfos = groupinfos
          @GroupNum = groupnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GroupInfos'].nil?
            @GroupInfos = []
            params['GroupInfos'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @GroupInfos << groupinfo_tmp
            end
          end
          @GroupNum = params['GroupNum']
          @RequestId = params['RequestId']
        end
      end

      # GetPersonBaseInfo请求参数结构体
      class GetPersonBaseInfoRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID
        # @type PersonId: String

        attr_accessor :PersonId
        
        def initialize(personid=nil)
          @PersonId = personid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
        end
      end

      # GetPersonBaseInfo返回参数结构体
      class GetPersonBaseInfoResponse < TencentCloud::Common::AbstractModel
        # @param PersonName: 人员名称
        # @type PersonName: String
        # @param Gender: 人员性别
        # @type Gender: Integer
        # @param FaceIds: 包含的人脸 ID 列表
        # @type FaceIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonName, :Gender, :FaceIds, :RequestId
        
        def initialize(personname=nil, gender=nil, faceids=nil, requestid=nil)
          @PersonName = personname
          @Gender = gender
          @FaceIds = faceids
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonName = params['PersonName']
          @Gender = params['Gender']
          @FaceIds = params['FaceIds']
          @RequestId = params['RequestId']
        end
      end

      # GetPersonGroupInfo请求参数结构体
      class GetPersonGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID
        # @type PersonId: String
        # @param Offset: 起始序号，默认值为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为100
        # @type Limit: Integer

        attr_accessor :PersonId, :Offset, :Limit
        
        def initialize(personid=nil, offset=nil, limit=nil)
          @PersonId = personid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetPersonGroupInfo返回参数结构体
      class GetPersonGroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param PersonGroupInfos: 包含此人员的人员库及描述字段内容列表
        # @type PersonGroupInfos: Array
        # @param GroupNum: 人员库总数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupNum: Integer
        # @param FaceModelVersion: 人脸识别服务所用的算法模型版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonGroupInfos, :GroupNum, :FaceModelVersion, :RequestId
        
        def initialize(persongroupinfos=nil, groupnum=nil, facemodelversion=nil, requestid=nil)
          @PersonGroupInfos = persongroupinfos
          @GroupNum = groupnum
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PersonGroupInfos'].nil?
            @PersonGroupInfos = []
            params['PersonGroupInfos'].each do |i|
              persongroupinfo_tmp = PersonGroupInfo.new
              persongroupinfo_tmp.deserialize(i)
              @PersonGroupInfos << persongroupinfo_tmp
            end
          end
          @GroupNum = params['GroupNum']
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # GetPersonListNum请求参数结构体
      class GetPersonListNumRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 人员库ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # GetPersonListNum返回参数结构体
      class GetPersonListNumResponse < TencentCloud::Common::AbstractModel
        # @param PersonNum: 人员数量
        # @type PersonNum: Integer
        # @param FaceNum: 人脸数量
        # @type FaceNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonNum, :FaceNum, :RequestId
        
        def initialize(personnum=nil, facenum=nil, requestid=nil)
          @PersonNum = personnum
          @FaceNum = facenum
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonNum = params['PersonNum']
          @FaceNum = params['FaceNum']
          @RequestId = params['RequestId']
        end
      end

      # GetPersonList请求参数结构体
      class GetPersonListRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 人员库ID
        # @type GroupId: String
        # @param Offset: 起始序号，默认值为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为1000
        # @type Limit: Integer

        attr_accessor :GroupId, :Offset, :Limit
        
        def initialize(groupid=nil, offset=nil, limit=nil)
          @GroupId = groupid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetPersonList返回参数结构体
      class GetPersonListResponse < TencentCloud::Common::AbstractModel
        # @param PersonInfos: 返回的人员信息
        # @type PersonInfos: Array
        # @param PersonNum: 该人员库的人员数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonNum: Integer
        # @param FaceNum: 该人员库的人脸数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceNum: Integer
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonInfos, :PersonNum, :FaceNum, :FaceModelVersion, :RequestId
        
        def initialize(personinfos=nil, personnum=nil, facenum=nil, facemodelversion=nil, requestid=nil)
          @PersonInfos = personinfos
          @PersonNum = personnum
          @FaceNum = facenum
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PersonInfos'].nil?
            @PersonInfos = []
            params['PersonInfos'].each do |i|
              personinfo_tmp = PersonInfo.new
              personinfo_tmp.deserialize(i)
              @PersonInfos << personinfo_tmp
            end
          end
          @PersonNum = params['PersonNum']
          @FaceNum = params['FaceNum']
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # GetUpgradeGroupFaceModelVersionJobList请求参数结构体
      class GetUpgradeGroupFaceModelVersionJobListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始序号，默认值为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为1000。
        # @type Limit: Integer

        attr_accessor :Offset, :Limit
        
        def initialize(offset=nil, limit=nil)
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # GetUpgradeGroupFaceModelVersionJobList返回参数结构体
      class GetUpgradeGroupFaceModelVersionJobListResponse < TencentCloud::Common::AbstractModel
        # @param JobInfos: 人员库升级任务信息列表。
        # @type JobInfos: Array
        # @param JobNum: 升级任务总数量。
        # @type JobNum: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobInfos, :JobNum, :RequestId
        
        def initialize(jobinfos=nil, jobnum=nil, requestid=nil)
          @JobInfos = jobinfos
          @JobNum = jobnum
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['JobInfos'].nil?
            @JobInfos = []
            params['JobInfos'].each do |i|
              upgradejobinfo_tmp = UpgradeJobInfo.new
              upgradejobinfo_tmp.deserialize(i)
              @JobInfos << upgradejobinfo_tmp
            end
          end
          @JobNum = params['JobNum']
          @RequestId = params['RequestId']
        end
      end

      # GetUpgradeGroupFaceModelVersionResult请求参数结构体
      class GetUpgradeGroupFaceModelVersionResultRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 升级任务ID，用于查询、获取人员库升级的进度和结果。
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # GetUpgradeGroupFaceModelVersionResult返回参数结构体
      class GetUpgradeGroupFaceModelVersionResultResponse < TencentCloud::Common::AbstractModel
        # @param EndTimestamp: 人员升级任务预估结束时间。 StartTimestamp的值是自 Unix 纪元时间到人员查重任务预估结束的毫秒数。
        # Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。
        # 如果为0表示这个任务已经执行完毕。
        # @type EndTimestamp: Integer
        # @param Progress: 升级任务完成进度。取值[0.0，100.0]。
        # @type Progress: Float
        # @param Status: 0表示升级中，1表示升级完毕，2表示回滚完毕。
        # @type Status: Integer
        # @param StartTime: 升级起始时间。
        # StartTime的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        # Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。
        # 有关更多信息，请参阅 Unix 时间。
        # @type StartTime: Integer
        # @param FromFaceModelVersion: 当前算法模型版本。
        # @type FromFaceModelVersion: String
        # @param ToFaceModelVersion: 目标算法模型版本。
        # @type ToFaceModelVersion: String
        # @param GroupId: 人员库ID。
        # @type GroupId: String
        # @param FailedFacesUrl: 无法升级的人脸Id信息，文件格式为json。半小时有效
        # @type FailedFacesUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EndTimestamp, :Progress, :Status, :StartTime, :FromFaceModelVersion, :ToFaceModelVersion, :GroupId, :FailedFacesUrl, :RequestId
        
        def initialize(endtimestamp=nil, progress=nil, status=nil, starttime=nil, fromfacemodelversion=nil, tofacemodelversion=nil, groupid=nil, failedfacesurl=nil, requestid=nil)
          @EndTimestamp = endtimestamp
          @Progress = progress
          @Status = status
          @StartTime = starttime
          @FromFaceModelVersion = fromfacemodelversion
          @ToFaceModelVersion = tofacemodelversion
          @GroupId = groupid
          @FailedFacesUrl = failedfacesurl
          @RequestId = requestid
        end

        def deserialize(params)
          @EndTimestamp = params['EndTimestamp']
          @Progress = params['Progress']
          @Status = params['Status']
          @StartTime = params['StartTime']
          @FromFaceModelVersion = params['FromFaceModelVersion']
          @ToFaceModelVersion = params['ToFaceModelVersion']
          @GroupId = params['GroupId']
          @FailedFacesUrl = params['FailedFacesUrl']
          @RequestId = params['RequestId']
        end
      end

      # 分组识别结果Item
      class GroupCandidate < TencentCloud::Common::AbstractModel
        # @param GroupId: 人员库ID 。
        # @type GroupId: String
        # @param Candidates: 识别出的最相似候选人。
        # @type Candidates: Array

        attr_accessor :GroupId, :Candidates
        
        def initialize(groupid=nil, candidates=nil)
          @GroupId = groupid
          @Candidates = candidates
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          unless params['Candidates'].nil?
            @Candidates = []
            params['Candidates'].each do |i|
              candidate_tmp = Candidate.new
              candidate_tmp.deserialize(i)
              @Candidates << candidate_tmp
            end
          end
        end
      end

      # 需要修改的人员库自定义描述字段key-value
      class GroupExDescriptionInfo < TencentCloud::Common::AbstractModel
        # @param GroupExDescriptionIndex: 人员库自定义描述字段Index，从0开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupExDescriptionIndex: Integer
        # @param GroupExDescription: 需要更新的人员库自定义描述字段内容
        # @type GroupExDescription: String

        attr_accessor :GroupExDescriptionIndex, :GroupExDescription
        
        def initialize(groupexdescriptionindex=nil, groupexdescription=nil)
          @GroupExDescriptionIndex = groupexdescriptionindex
          @GroupExDescription = groupexdescription
        end

        def deserialize(params)
          @GroupExDescriptionIndex = params['GroupExDescriptionIndex']
          @GroupExDescription = params['GroupExDescription']
        end
      end

      # 返回的人员库信息
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupName: 人员库名称
        # @type GroupName: String
        # @param GroupId: 人员库ID
        # @type GroupId: String
        # @param GroupExDescriptions: 人员库自定义描述字段
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupExDescriptions: Array
        # @param Tag: 人员库信息备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceModelVersion: String
        # @param CreationTimestamp: Group的创建时间和日期 CreationTimestamp。CreationTimestamp 的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        # Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。有关更多信息，请参阅 Unix 时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreationTimestamp: Integer

        attr_accessor :GroupName, :GroupId, :GroupExDescriptions, :Tag, :FaceModelVersion, :CreationTimestamp
        
        def initialize(groupname=nil, groupid=nil, groupexdescriptions=nil, tag=nil, facemodelversion=nil, creationtimestamp=nil)
          @GroupName = groupname
          @GroupId = groupid
          @GroupExDescriptions = groupexdescriptions
          @Tag = tag
          @FaceModelVersion = facemodelversion
          @CreationTimestamp = creationtimestamp
        end

        def deserialize(params)
          @GroupName = params['GroupName']
          @GroupId = params['GroupId']
          @GroupExDescriptions = params['GroupExDescriptions']
          @Tag = params['Tag']
          @FaceModelVersion = params['FaceModelVersion']
          @CreationTimestamp = params['CreationTimestamp']
        end
      end

      # 头发信息
      class Hair < TencentCloud::Common::AbstractModel
        # @param Length: 头发长度信息。
        # AttributeItem对应的Type为 —— 0：光头，1：短发，2：中发，3：长发，4：绑发。
        # @type Length: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Bang: 刘海信息。
        # AttributeItem对应的Type为 —— 0：无刘海，1：有刘海。
        # @type Bang: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Color: 头发颜色信息。
        # AttributeItem对应的Type为 —— 0：黑色，1：金色，2：棕色，3：灰白色。
        # @type Color: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`

        attr_accessor :Length, :Bang, :Color
        
        def initialize(length=nil, bang=nil, color=nil)
          @Length = length
          @Bang = bang
          @Color = color
        end

        def deserialize(params)
          unless params['Length'].nil?
            @Length = AttributeItem.new
            @Length.deserialize(params['Length'])
          end
          unless params['Bang'].nil?
            @Bang = AttributeItem.new
            @Bang.deserialize(params['Bang'])
          end
          unless params['Color'].nil?
            @Color = AttributeItem.new
            @Color.deserialize(params['Color'])
          end
        end
      end

      # 帽子信息
      class Hat < TencentCloud::Common::AbstractModel
        # @param Style: 帽子佩戴状态信息。
        # AttributeItem对应的Type为 —— 0：不戴帽子，1：普通帽子，2：头盔，3：保安帽。
        # @type Style: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`
        # @param Color: 帽子颜色。
        # AttributeItem对应的Type为 —— 0：不戴帽子，1：红色系，2：黄色系，3：蓝色系，4：黑色系，5：灰白色系，6：混色系子。
        # @type Color: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`

        attr_accessor :Style, :Color
        
        def initialize(style=nil, color=nil)
          @Style = style
          @Color = color
        end

        def deserialize(params)
          unless params['Style'].nil?
            @Style = AttributeItem.new
            @Style.deserialize(params['Style'])
          end
          unless params['Color'].nil?
            @Color = AttributeItem.new
            @Color.deserialize(params['Color'])
          end
        end
      end

      # 姿态信息
      class HeadPose < TencentCloud::Common::AbstractModel
        # @param Pitch: 上下偏移[-30,30]。
        # @type Pitch: Integer
        # @param Yaw: 左右偏移[-30,30]。
        # @type Yaw: Integer
        # @param Roll: 平面旋转[-180,180]。
        # @type Roll: Integer

        attr_accessor :Pitch, :Yaw, :Roll
        
        def initialize(pitch=nil, yaw=nil, roll=nil)
          @Pitch = pitch
          @Yaw = yaw
          @Roll = roll
        end

        def deserialize(params)
          @Pitch = params['Pitch']
          @Yaw = params['Yaw']
          @Roll = params['Roll']
        end
      end

      # ModifyGroup请求参数结构体
      class ModifyGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 人员库ID
        # @type GroupId: String
        # @param GroupName: 人员库名称
        # @type GroupName: String
        # @param GroupExDescriptionInfos: 需要修改的人员库自定义描述字段，key-value
        # @type GroupExDescriptionInfos: Array
        # @param Tag: 人员库信息备注
        # @type Tag: String

        attr_accessor :GroupId, :GroupName, :GroupExDescriptionInfos, :Tag
        
        def initialize(groupid=nil, groupname=nil, groupexdescriptioninfos=nil, tag=nil)
          @GroupId = groupid
          @GroupName = groupname
          @GroupExDescriptionInfos = groupexdescriptioninfos
          @Tag = tag
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          unless params['GroupExDescriptionInfos'].nil?
            @GroupExDescriptionInfos = []
            params['GroupExDescriptionInfos'].each do |i|
              groupexdescriptioninfo_tmp = GroupExDescriptionInfo.new
              groupexdescriptioninfo_tmp.deserialize(i)
              @GroupExDescriptionInfos << groupexdescriptioninfo_tmp
            end
          end
          @Tag = params['Tag']
        end
      end

      # ModifyGroup返回参数结构体
      class ModifyGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPersonBaseInfo请求参数结构体
      class ModifyPersonBaseInfoRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人员ID
        # @type PersonId: String
        # @param PersonName: 需要修改的人员名称
        # @type PersonName: String
        # @param Gender: 需要修改的人员性别
        # @type Gender: Integer

        attr_accessor :PersonId, :PersonName, :Gender
        
        def initialize(personid=nil, personname=nil, gender=nil)
          @PersonId = personid
          @PersonName = personname
          @Gender = gender
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @PersonName = params['PersonName']
          @Gender = params['Gender']
        end
      end

      # ModifyPersonBaseInfo返回参数结构体
      class ModifyPersonBaseInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifyPersonGroupInfo请求参数结构体
      class ModifyPersonGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 人员库ID
        # @type GroupId: String
        # @param PersonId: 人员ID
        # @type PersonId: String
        # @param PersonExDescriptionInfos: 需要修改的人员描述字段内容，key-value
        # @type PersonExDescriptionInfos: Array

        attr_accessor :GroupId, :PersonId, :PersonExDescriptionInfos
        
        def initialize(groupid=nil, personid=nil, personexdescriptioninfos=nil)
          @GroupId = groupid
          @PersonId = personid
          @PersonExDescriptionInfos = personexdescriptioninfos
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @PersonId = params['PersonId']
          unless params['PersonExDescriptionInfos'].nil?
            @PersonExDescriptionInfos = []
            params['PersonExDescriptionInfos'].each do |i|
              personexdescriptioninfo_tmp = PersonExDescriptionInfo.new
              personexdescriptioninfo_tmp.deserialize(i)
              @PersonExDescriptionInfos << personexdescriptioninfo_tmp
            end
          end
        end
      end

      # ModifyPersonGroupInfo返回参数结构体
      class ModifyPersonGroupInfoResponse < TencentCloud::Common::AbstractModel
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

      # 嘴巴信息。
      class Mouth < TencentCloud::Common::AbstractModel
        # @param MouthOpen: 是否张嘴信息。
        # AttributeItem对应的Type为 —— 0：不张嘴，1：张嘴。
        # @type MouthOpen: :class:`Tencentcloud::Iai.v20180301.models.AttributeItem`

        attr_accessor :MouthOpen
        
        def initialize(mouthopen=nil)
          @MouthOpen = mouthopen
        end

        def deserialize(params)
          unless params['MouthOpen'].nil?
            @MouthOpen = AttributeItem.new
            @MouthOpen.deserialize(params['MouthOpen'])
          end
        end
      end

      # 需要修改的人员描述字段内容，key-value
      class PersonExDescriptionInfo < TencentCloud::Common::AbstractModel
        # @param PersonExDescriptionIndex: 人员描述字段Index，从0开始
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PersonExDescriptionIndex: Integer
        # @param PersonExDescription: 需要更新的人员描述字段内容
        # @type PersonExDescription: String

        attr_accessor :PersonExDescriptionIndex, :PersonExDescription
        
        def initialize(personexdescriptionindex=nil, personexdescription=nil)
          @PersonExDescriptionIndex = personexdescriptionindex
          @PersonExDescription = personexdescription
        end

        def deserialize(params)
          @PersonExDescriptionIndex = params['PersonExDescriptionIndex']
          @PersonExDescription = params['PersonExDescription']
        end
      end

      # 包含此人员的人员库及描述字段内容列表
      class PersonGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 包含此人员的人员库ID
        # @type GroupId: String
        # @param PersonExDescriptions: 人员描述字段内容
        # @type PersonExDescriptions: Array

        attr_accessor :GroupId, :PersonExDescriptions
        
        def initialize(groupid=nil, personexdescriptions=nil)
          @GroupId = groupid
          @PersonExDescriptions = personexdescriptions
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @PersonExDescriptions = params['PersonExDescriptions']
        end
      end

      # 返回的人员信息
      class PersonInfo < TencentCloud::Common::AbstractModel
        # @param PersonName: 人员名称
        # @type PersonName: String
        # @param PersonId: 人员Id
        # @type PersonId: String
        # @param Gender: 人员性别
        # @type Gender: Integer
        # @param PersonExDescriptions: 人员描述字段内容
        # @type PersonExDescriptions: Array
        # @param FaceIds: 包含的人脸照片列表
        # @type FaceIds: Array
        # @param CreationTimestamp: 人员的创建时间和日期 CreationTimestamp。CreationTimestamp 的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        # Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。有关更多信息，请参阅 Unix 时间。
        # @type CreationTimestamp: Integer

        attr_accessor :PersonName, :PersonId, :Gender, :PersonExDescriptions, :FaceIds, :CreationTimestamp
        
        def initialize(personname=nil, personid=nil, gender=nil, personexdescriptions=nil, faceids=nil, creationtimestamp=nil)
          @PersonName = personname
          @PersonId = personid
          @Gender = gender
          @PersonExDescriptions = personexdescriptions
          @FaceIds = faceids
          @CreationTimestamp = creationtimestamp
        end

        def deserialize(params)
          @PersonName = params['PersonName']
          @PersonId = params['PersonId']
          @Gender = params['Gender']
          @PersonExDescriptions = params['PersonExDescriptions']
          @FaceIds = params['FaceIds']
          @CreationTimestamp = params['CreationTimestamp']
        end
      end

      # 坐标
      class Point < TencentCloud::Common::AbstractModel
        # @param X: x坐标
        # @type X: Integer
        # @param Y: Y坐标
        # @type Y: Integer

        attr_accessor :X, :Y
        
        def initialize(x=nil, y=nil)
          @X = x
          @Y = y
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
        end
      end

      # 人脸的识别结果
      class Result < TencentCloud::Common::AbstractModel
        # @param Candidates: 识别出的最相似候选人
        # @type Candidates: Array
        # @param FaceRect: 检测出的人脸框位置
        # @type FaceRect: :class:`Tencentcloud::Iai.v20180301.models.FaceRect`
        # @param RetCode: 检测出的人脸图片状态返回码。0 表示正常。
        # -1601代表不符合图片质量控制要求，此时Candidate内容为空。
        # @type RetCode: Integer

        attr_accessor :Candidates, :FaceRect, :RetCode
        
        def initialize(candidates=nil, facerect=nil, retcode=nil)
          @Candidates = candidates
          @FaceRect = facerect
          @RetCode = retcode
        end

        def deserialize(params)
          unless params['Candidates'].nil?
            @Candidates = []
            params['Candidates'].each do |i|
              candidate_tmp = Candidate.new
              candidate_tmp.deserialize(i)
              @Candidates << candidate_tmp
            end
          end
          unless params['FaceRect'].nil?
            @FaceRect = FaceRect.new
            @FaceRect.deserialize(params['FaceRect'])
          end
          @RetCode = params['RetCode']
        end
      end

      # 识别结果。
      class ResultsReturnsByGroup < TencentCloud::Common::AbstractModel
        # @param FaceRect: 检测出的人脸框位置。
        # @type FaceRect: :class:`Tencentcloud::Iai.v20180301.models.FaceRect`
        # @param GroupCandidates: 识别结果。
        # @type GroupCandidates: Array
        # @param RetCode: 检测出的人脸图片状态返回码。0 表示正常。
        # -1601代表不符合图片质量控制要求，此时Candidate内容为空。
        # @type RetCode: Integer

        attr_accessor :FaceRect, :GroupCandidates, :RetCode
        
        def initialize(facerect=nil, groupcandidates=nil, retcode=nil)
          @FaceRect = facerect
          @GroupCandidates = groupcandidates
          @RetCode = retcode
        end

        def deserialize(params)
          unless params['FaceRect'].nil?
            @FaceRect = FaceRect.new
            @FaceRect.deserialize(params['FaceRect'])
          end
          unless params['GroupCandidates'].nil?
            @GroupCandidates = []
            params['GroupCandidates'].each do |i|
              groupcandidate_tmp = GroupCandidate.new
              groupcandidate_tmp.deserialize(i)
              @GroupCandidates << groupcandidate_tmp
            end
          end
          @RetCode = params['RetCode']
        end
      end

      # RevertGroupFaceModelVersion请求参数结构体
      class RevertGroupFaceModelVersionRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 需要回滚的升级任务ID。
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # RevertGroupFaceModelVersion返回参数结构体
      class RevertGroupFaceModelVersionResponse < TencentCloud::Common::AbstractModel
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

      # SearchFaces请求参数结构体
      class SearchFacesRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 希望搜索的人员库列表，上限100个。
        # @type GroupIds: Array
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param MaxFaceNum: 最多识别的人脸数目。默认值为1（仅检测图片中面积最大的那张人脸），最大值为10。
        # MaxFaceNum用于，当输入的待识别图片包含多张人脸时，设定要搜索的人脸的数量。
        # 例：输入的Image或Url中的图片包含多张人脸，设MaxFaceNum=5，则会识别图片中面积最大的5张人脸。
        # @type MaxFaceNum: Integer
        # @param MinFaceSize: 人脸长和宽的最小尺寸，单位为像素。默认为34。低于34的人脸图片无法被识别。建议设置为80。
        # @type MinFaceSize: Integer
        # @param MaxPersonNum: 单张被识别的人脸返回的最相似人员数量。默认值为5，最大值为100。
        # 例，设MaxFaceNum为1，MaxPersonNum为8，则返回Top8相似的人员信息。
        # 值越大，需要处理的时间越长。建议不要超过10。
        # @type MaxPersonNum: Integer
        # @param NeedPersonInfo: 是否返回人员具体信息。0 为关闭，1 为开启。默认为 0。其他非0非1值默认为0
        # @type NeedPersonInfo: Integer
        # @param QualityControl: 图片质量控制。
        # 0: 不进行控制；
        # 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        # 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        # 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        # 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        # 默认 0。
        # 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        # @type QualityControl: Integer
        # @param FaceMatchThreshold: 出参Score中，只有超过FaceMatchThreshold值的结果才会返回。默认为0。
        # @type FaceMatchThreshold: Float
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :GroupIds, :Image, :Url, :MaxFaceNum, :MinFaceSize, :MaxPersonNum, :NeedPersonInfo, :QualityControl, :FaceMatchThreshold, :NeedRotateDetection
        
        def initialize(groupids=nil, image=nil, url=nil, maxfacenum=nil, minfacesize=nil, maxpersonnum=nil, needpersoninfo=nil, qualitycontrol=nil, facematchthreshold=nil, needrotatedetection=nil)
          @GroupIds = groupids
          @Image = image
          @Url = url
          @MaxFaceNum = maxfacenum
          @MinFaceSize = minfacesize
          @MaxPersonNum = maxpersonnum
          @NeedPersonInfo = needpersoninfo
          @QualityControl = qualitycontrol
          @FaceMatchThreshold = facematchthreshold
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @Image = params['Image']
          @Url = params['Url']
          @MaxFaceNum = params['MaxFaceNum']
          @MinFaceSize = params['MinFaceSize']
          @MaxPersonNum = params['MaxPersonNum']
          @NeedPersonInfo = params['NeedPersonInfo']
          @QualityControl = params['QualityControl']
          @FaceMatchThreshold = params['FaceMatchThreshold']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # SearchFaces返回参数结构体
      class SearchFacesResponse < TencentCloud::Common::AbstractModel
        # @param Results: 识别结果。
        # @type Results: Array
        # @param FaceNum: 搜索的人员库中包含的人脸数。
        # @type FaceNum: Integer
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :FaceNum, :FaceModelVersion, :RequestId
        
        def initialize(results=nil, facenum=nil, facemodelversion=nil, requestid=nil)
          @Results = results
          @FaceNum = facenum
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              result_tmp = Result.new
              result_tmp.deserialize(i)
              @Results << result_tmp
            end
          end
          @FaceNum = params['FaceNum']
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # SearchFacesReturnsByGroup请求参数结构体
      class SearchFacesReturnsByGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 希望搜索的人员库列表，上限60个。
        # @type GroupIds: Array
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param MaxFaceNum: 最多识别的人脸数目。默认值为1（仅检测图片中面积最大的那张人脸），最大值为10。
        # MaxFaceNum用于，当输入的待识别图片包含多张人脸时，设定要搜索的人脸的数量。
        # 例：输入的Image或Url中的图片包含多张人脸，设MaxFaceNum=5，则会识别图片中面积最大的5张人脸。
        # @type MaxFaceNum: Integer
        # @param MinFaceSize: 人脸长和宽的最小尺寸，单位为像素。默认为34。低于34将影响搜索精度。建议设置为80。
        # @type MinFaceSize: Integer
        # @param MaxPersonNumPerGroup: 被检测到的人脸，对应最多返回的最相似人员数目。默认值为5，最大值为10。
        # 例，设MaxFaceNum为3，MaxPersonNumPerGroup为5，GroupIds长度为3，则最多可能返回3*5*3=45个人员。
        # @type MaxPersonNumPerGroup: Integer
        # @param NeedPersonInfo: 是否返回人员具体信息。0 为关闭，1 为开启。默认为 0。其他非0非1值默认为0
        # @type NeedPersonInfo: Integer
        # @param QualityControl: 图片质量控制。
        # 0: 不进行控制；
        # 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        # 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        # 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        # 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        # 默认 0。
        # 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        # @type QualityControl: Integer
        # @param FaceMatchThreshold: 出参Score中，只有大于等于FaceMatchThreshold值的结果才会返回。
        # 默认为0。
        # 取值范围[0.0,100.0) 。
        # @type FaceMatchThreshold: Float
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :GroupIds, :Image, :Url, :MaxFaceNum, :MinFaceSize, :MaxPersonNumPerGroup, :NeedPersonInfo, :QualityControl, :FaceMatchThreshold, :NeedRotateDetection
        
        def initialize(groupids=nil, image=nil, url=nil, maxfacenum=nil, minfacesize=nil, maxpersonnumpergroup=nil, needpersoninfo=nil, qualitycontrol=nil, facematchthreshold=nil, needrotatedetection=nil)
          @GroupIds = groupids
          @Image = image
          @Url = url
          @MaxFaceNum = maxfacenum
          @MinFaceSize = minfacesize
          @MaxPersonNumPerGroup = maxpersonnumpergroup
          @NeedPersonInfo = needpersoninfo
          @QualityControl = qualitycontrol
          @FaceMatchThreshold = facematchthreshold
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @Image = params['Image']
          @Url = params['Url']
          @MaxFaceNum = params['MaxFaceNum']
          @MinFaceSize = params['MinFaceSize']
          @MaxPersonNumPerGroup = params['MaxPersonNumPerGroup']
          @NeedPersonInfo = params['NeedPersonInfo']
          @QualityControl = params['QualityControl']
          @FaceMatchThreshold = params['FaceMatchThreshold']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # SearchFacesReturnsByGroup返回参数结构体
      class SearchFacesReturnsByGroupResponse < TencentCloud::Common::AbstractModel
        # @param FaceNum: 搜索的人员库中包含的人脸数。
        # @type FaceNum: Integer
        # @param ResultsReturnsByGroup: 识别结果。
        # @type ResultsReturnsByGroup: Array
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FaceNum, :ResultsReturnsByGroup, :FaceModelVersion, :RequestId
        
        def initialize(facenum=nil, resultsreturnsbygroup=nil, facemodelversion=nil, requestid=nil)
          @FaceNum = facenum
          @ResultsReturnsByGroup = resultsreturnsbygroup
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @FaceNum = params['FaceNum']
          unless params['ResultsReturnsByGroup'].nil?
            @ResultsReturnsByGroup = []
            params['ResultsReturnsByGroup'].each do |i|
              resultsreturnsbygroup_tmp = ResultsReturnsByGroup.new
              resultsreturnsbygroup_tmp.deserialize(i)
              @ResultsReturnsByGroup << resultsreturnsbygroup_tmp
            end
          end
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # SearchPersons请求参数结构体
      class SearchPersonsRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 希望搜索的人员库列表，上限100个。
        # @type GroupIds: Array
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param MaxFaceNum: 最多识别的人脸数目。默认值为1（仅检测图片中面积最大的那张人脸），最大值为10。
        # MaxFaceNum用于，当输入的待识别图片包含多张人脸时，设定要搜索的人脸的数量。
        # 例：输入的Image或Url中的图片包含多张人脸，设MaxFaceNum=5，则会识别图片中面积最大的5张人脸。
        # @type MaxFaceNum: Integer
        # @param MinFaceSize: 人脸长和宽的最小尺寸，单位为像素。默认为34。低于34将影响搜索精度。建议设置为80。
        # @type MinFaceSize: Integer
        # @param MaxPersonNum: 单张被识别的人脸返回的最相似人员数量。默认值为5，最大值为100。
        # 例，设MaxFaceNum为1，MaxPersonNum为8，则返回Top8相似的人员信息。
        # 值越大，需要处理的时间越长。建议不要超过10。
        # @type MaxPersonNum: Integer
        # @param QualityControl: 图片质量控制。
        # 0: 不进行控制；
        # 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        # 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        # 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        # 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        # 默认 0。
        # 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        # @type QualityControl: Integer
        # @param FaceMatchThreshold: 出参Score中，只有大于等于FaceMatchThreshold值的结果才会返回。默认为0。取值范围[0.0,100.0) 。
        # @type FaceMatchThreshold: Float
        # @param NeedPersonInfo: 是否返回人员具体信息。0 为关闭，1 为开启。默认为 0。其他非0非1值默认为0
        # @type NeedPersonInfo: Integer
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :GroupIds, :Image, :Url, :MaxFaceNum, :MinFaceSize, :MaxPersonNum, :QualityControl, :FaceMatchThreshold, :NeedPersonInfo, :NeedRotateDetection
        
        def initialize(groupids=nil, image=nil, url=nil, maxfacenum=nil, minfacesize=nil, maxpersonnum=nil, qualitycontrol=nil, facematchthreshold=nil, needpersoninfo=nil, needrotatedetection=nil)
          @GroupIds = groupids
          @Image = image
          @Url = url
          @MaxFaceNum = maxfacenum
          @MinFaceSize = minfacesize
          @MaxPersonNum = maxpersonnum
          @QualityControl = qualitycontrol
          @FaceMatchThreshold = facematchthreshold
          @NeedPersonInfo = needpersoninfo
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @Image = params['Image']
          @Url = params['Url']
          @MaxFaceNum = params['MaxFaceNum']
          @MinFaceSize = params['MinFaceSize']
          @MaxPersonNum = params['MaxPersonNum']
          @QualityControl = params['QualityControl']
          @FaceMatchThreshold = params['FaceMatchThreshold']
          @NeedPersonInfo = params['NeedPersonInfo']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # SearchPersons返回参数结构体
      class SearchPersonsResponse < TencentCloud::Common::AbstractModel
        # @param Results: 识别结果。
        # @type Results: Array
        # @param PersonNum: 搜索的人员库中包含的人员数。若输入图片中所有人脸均不符合质量要求，则返回0。
        # @type PersonNum: Integer
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Results, :PersonNum, :FaceModelVersion, :RequestId
        
        def initialize(results=nil, personnum=nil, facemodelversion=nil, requestid=nil)
          @Results = results
          @PersonNum = personnum
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Results'].nil?
            @Results = []
            params['Results'].each do |i|
              result_tmp = Result.new
              result_tmp.deserialize(i)
              @Results << result_tmp
            end
          end
          @PersonNum = params['PersonNum']
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # SearchPersonsReturnsByGroup请求参数结构体
      class SearchPersonsReturnsByGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupIds: 希望搜索的人员库列表，上限60个。
        # @type GroupIds: Array
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param MaxFaceNum: 最多识别的人脸数目。默认值为1（仅检测图片中面积最大的那张人脸），最大值为10。
        # MaxFaceNum用于，当输入的待识别图片包含多张人脸时，设定要搜索的人脸的数量。
        # 例：输入的Image或Url中的图片包含多张人脸，设MaxFaceNum=5，则会识别图片中面积最大的5张人脸。
        # @type MaxFaceNum: Integer
        # @param MinFaceSize: 人脸长和宽的最小尺寸，单位为像素。默认为34。低于34将影响搜索精度。建议设置为80。
        # @type MinFaceSize: Integer
        # @param MaxPersonNumPerGroup: 被检测到的人脸，对应最多返回的最相似人员数目。默认值为5，最大值为10。
        # 例，设MaxFaceNum为3，MaxPersonNumPerGroup为5，GroupIds长度为3，则最多可能返回3*5*3=45个人员。
        # @type MaxPersonNumPerGroup: Integer
        # @param QualityControl: 图片质量控制。
        # 0: 不进行控制；
        # 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        # 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        # 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        # 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        # 默认 0。
        # 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        # @type QualityControl: Integer
        # @param FaceMatchThreshold: 出参Score中，只有超过FaceMatchThreshold值的结果才会返回。默认为0。
        # @type FaceMatchThreshold: Float
        # @param NeedPersonInfo: 是否返回人员具体信息。0 为关闭，1 为开启。默认为 0。其他非0非1值默认为0
        # @type NeedPersonInfo: Integer
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :GroupIds, :Image, :Url, :MaxFaceNum, :MinFaceSize, :MaxPersonNumPerGroup, :QualityControl, :FaceMatchThreshold, :NeedPersonInfo, :NeedRotateDetection
        
        def initialize(groupids=nil, image=nil, url=nil, maxfacenum=nil, minfacesize=nil, maxpersonnumpergroup=nil, qualitycontrol=nil, facematchthreshold=nil, needpersoninfo=nil, needrotatedetection=nil)
          @GroupIds = groupids
          @Image = image
          @Url = url
          @MaxFaceNum = maxfacenum
          @MinFaceSize = minfacesize
          @MaxPersonNumPerGroup = maxpersonnumpergroup
          @QualityControl = qualitycontrol
          @FaceMatchThreshold = facematchthreshold
          @NeedPersonInfo = needpersoninfo
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @GroupIds = params['GroupIds']
          @Image = params['Image']
          @Url = params['Url']
          @MaxFaceNum = params['MaxFaceNum']
          @MinFaceSize = params['MinFaceSize']
          @MaxPersonNumPerGroup = params['MaxPersonNumPerGroup']
          @QualityControl = params['QualityControl']
          @FaceMatchThreshold = params['FaceMatchThreshold']
          @NeedPersonInfo = params['NeedPersonInfo']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # SearchPersonsReturnsByGroup返回参数结构体
      class SearchPersonsReturnsByGroupResponse < TencentCloud::Common::AbstractModel
        # @param PersonNum: 搜索的人员库中包含的人员数。若输入图片中所有人脸均不符合质量要求，则返回0。
        # @type PersonNum: Integer
        # @param ResultsReturnsByGroup: 识别结果。
        # @type ResultsReturnsByGroup: Array
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PersonNum, :ResultsReturnsByGroup, :FaceModelVersion, :RequestId
        
        def initialize(personnum=nil, resultsreturnsbygroup=nil, facemodelversion=nil, requestid=nil)
          @PersonNum = personnum
          @ResultsReturnsByGroup = resultsreturnsbygroup
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @PersonNum = params['PersonNum']
          unless params['ResultsReturnsByGroup'].nil?
            @ResultsReturnsByGroup = []
            params['ResultsReturnsByGroup'].each do |i|
              resultsreturnsbygroup_tmp = ResultsReturnsByGroup.new
              resultsreturnsbygroup_tmp.deserialize(i)
              @ResultsReturnsByGroup << resultsreturnsbygroup_tmp
            end
          end
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # UpgradeGroupFaceModelVersion请求参数结构体
      class UpgradeGroupFaceModelVersionRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 需要升级的人员库ID。
        # @type GroupId: String
        # @param FaceModelVersion: 需要升级至的算法模型版本。默认为最新版本。不可逆向升级
        # @type FaceModelVersion: String

        attr_accessor :GroupId, :FaceModelVersion
        
        def initialize(groupid=nil, facemodelversion=nil)
          @GroupId = groupid
          @FaceModelVersion = facemodelversion
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @FaceModelVersion = params['FaceModelVersion']
        end
      end

      # UpgradeGroupFaceModelVersion返回参数结构体
      class UpgradeGroupFaceModelVersionResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 升级任务ID，用于查询、获取升级的进度和结果。
        # @type JobId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
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

      # 人员库升级任务信息
      class UpgradeJobInfo < TencentCloud::Common::AbstractModel
        # @param JobId: 人员库升级任务ID，用于查询、获取升级的进度和结果。
        # @type JobId: String
        # @param GroupId: 人员库ID。
        # @type GroupId: String
        # @param FromFaceModelVersion: 当前算法模型版本。
        # @type FromFaceModelVersion: String
        # @param ToFaceModelVersion: 目标算法模型版本。
        # @type ToFaceModelVersion: String
        # @param StartTime: 升级起始时间。
        # StartTime的值是自 Unix 纪元时间到Group创建时间的毫秒数。
        # Unix 纪元时间是 1970 年 1 月 1 日星期四，协调世界时 (UTC) 00:00:00。
        # 有关更多信息，请参阅 Unix 时间。
        # @type StartTime: Integer
        # @param Status: 0表示升级中，1表示升级完毕，2表示回滚完毕。
        # @type Status: Integer

        attr_accessor :JobId, :GroupId, :FromFaceModelVersion, :ToFaceModelVersion, :StartTime, :Status
        
        def initialize(jobid=nil, groupid=nil, fromfacemodelversion=nil, tofacemodelversion=nil, starttime=nil, status=nil)
          @JobId = jobid
          @GroupId = groupid
          @FromFaceModelVersion = fromfacemodelversion
          @ToFaceModelVersion = tofacemodelversion
          @StartTime = starttime
          @Status = status
        end

        def deserialize(params)
          @JobId = params['JobId']
          @GroupId = params['GroupId']
          @FromFaceModelVersion = params['FromFaceModelVersion']
          @ToFaceModelVersion = params['ToFaceModelVersion']
          @StartTime = params['StartTime']
          @Status = params['Status']
        end
      end

      # VerifyFace请求参数结构体
      class VerifyFaceRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 待验证的人员ID。人员ID具体信息请参考人员库管理相关接口。
        # @type PersonId: String
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param QualityControl: 图片质量控制。
        # 0: 不进行控制；
        # 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        # 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        # 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        # 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        # 默认 0。
        # 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        # @type QualityControl: Integer
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :PersonId, :Image, :Url, :QualityControl, :NeedRotateDetection
        
        def initialize(personid=nil, image=nil, url=nil, qualitycontrol=nil, needrotatedetection=nil)
          @PersonId = personid
          @Image = image
          @Url = url
          @QualityControl = qualitycontrol
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Image = params['Image']
          @Url = params['Url']
          @QualityControl = params['QualityControl']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # VerifyFace返回参数结构体
      class VerifyFaceResponse < TencentCloud::Common::AbstractModel
        # @param Score: 给定的人脸图片与 PersonId 对应人脸的相似度。若 PersonId 下有多张人脸（Face），返回相似度最大的分数。

        # 不同算法版本返回的相似度分数不同。
        # 若需要验证两张图片中人脸是否为同一人，3.0版本误识率千分之一对应分数为40分，误识率万分之一对应分数为50分，误识率十万分之一对应分数为60分。 一般超过50分则可认定为同一人。
        # 2.0版本误识率千分之一对应分数为70分，误识率万分之一对应分数为80分，误识率十万分之一对应分数为90分。 一般超过80分则可认定为同一人。
        # @type Score: Float
        # @param IsMatch: 是否为同一人判断，固定阈值分数为60分，若想更灵活地调整阈值可取Score参数返回进行判断
        # @type IsMatch: Boolean
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Score, :IsMatch, :FaceModelVersion, :RequestId
        
        def initialize(score=nil, ismatch=nil, facemodelversion=nil, requestid=nil)
          @Score = score
          @IsMatch = ismatch
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @Score = params['Score']
          @IsMatch = params['IsMatch']
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

      # VerifyPerson请求参数结构体
      class VerifyPersonRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 待验证的人员ID。人员ID具体信息请参考人员库管理相关接口。
        # @type PersonId: String
        # @param Image: 图片 base64 数据。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param QualityControl: 图片质量控制。
        # 0: 不进行控制；
        # 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        # 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        # 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        # 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        # 默认 0。
        # 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        # @type QualityControl: Integer
        # @param NeedRotateDetection: 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        # @type NeedRotateDetection: Integer

        attr_accessor :PersonId, :Image, :Url, :QualityControl, :NeedRotateDetection
        
        def initialize(personid=nil, image=nil, url=nil, qualitycontrol=nil, needrotatedetection=nil)
          @PersonId = personid
          @Image = image
          @Url = url
          @QualityControl = qualitycontrol
          @NeedRotateDetection = needrotatedetection
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Image = params['Image']
          @Url = params['Url']
          @QualityControl = params['QualityControl']
          @NeedRotateDetection = params['NeedRotateDetection']
        end
      end

      # VerifyPerson返回参数结构体
      class VerifyPersonResponse < TencentCloud::Common::AbstractModel
        # @param Score: 给定的人脸照片与 PersonId 对应的相似度。若 PersonId 下有多张人脸（Face），会融合多张人脸信息进行验证。
        # @type Score: Float
        # @param IsMatch: 是否为同一人的判断。
        # @type IsMatch: Boolean
        # @param FaceModelVersion: 人脸识别所用的算法模型版本。
        # @type FaceModelVersion: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Score, :IsMatch, :FaceModelVersion, :RequestId
        
        def initialize(score=nil, ismatch=nil, facemodelversion=nil, requestid=nil)
          @Score = score
          @IsMatch = ismatch
          @FaceModelVersion = facemodelversion
          @RequestId = requestid
        end

        def deserialize(params)
          @Score = params['Score']
          @IsMatch = params['IsMatch']
          @FaceModelVersion = params['FaceModelVersion']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

