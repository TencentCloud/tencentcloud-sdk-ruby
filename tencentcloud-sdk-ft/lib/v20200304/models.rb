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
  module Ft
    module V20200304
      # 人脸变年龄信息
      class AgeInfo < TencentCloud::Common::AbstractModel
        # @param Age: 变化到的人脸年龄 [10,80]。
        # @type Age: Integer
        # @param FaceRect: 人脸框位置。若不输入则选择 Image 或 Url 中面积最大的人脸。
        # 您可以通过 [人脸检测与分析](https://cloud.tencent.com/document/api/867/32800)  接口获取人脸框位置信息。
        # @type FaceRect: :class:`Tencentcloud::Ft.v20200304.models.FaceRect`

        attr_accessor :Age, :FaceRect
        
        def initialize(age=nil, facerect=nil)
          @Age = age
          @FaceRect = facerect
        end

        def deserialize(params)
          @Age = params['Age']
          unless params['FaceRect'].nil?
            @FaceRect = FaceRect.new.deserialize(params[FaceRect])
          end
        end
      end

      # CancelFaceMorphJob请求参数结构体
      class CancelFaceMorphJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 人像渐变任务Job id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # CancelFaceMorphJob返回参数结构体
      class CancelFaceMorphJobResponse < TencentCloud::Common::AbstractModel
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

      # ChangeAgePic请求参数结构体
      class ChangeAgePicRequest < TencentCloud::Common::AbstractModel
        # @param AgeInfos: 人脸变老变年轻信息。
        # 您可以输入最多3个 AgeInfo 来实现给一张图中的最多3张人脸变老变年轻。
        # @type AgeInfos: Array
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        # 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的 Url 可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param RspImgType: 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        # @type RspImgType: String

        attr_accessor :AgeInfos, :Image, :Url, :RspImgType
        
        def initialize(ageinfos=nil, image=nil, url=nil, rspimgtype=nil)
          @AgeInfos = ageinfos
          @Image = image
          @Url = url
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @AgeInfos = params['AgeInfos']
          @Image = params['Image']
          @Url = params['Url']
          @RspImgType = params['RspImgType']
        end
      end

      # ChangeAgePic返回参数结构体
      class ChangeAgePicResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: RspImgType 为 base64 时，返回处理后的图片 base64 数据。默认返回base64
        # @type ResultImage: String
        # @param ResultUrl: RspImgType 为 url 时，返回处理后的图片 url 数据。
        # @type ResultUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :ResultUrl, :RequestId
        
        def initialize(resultimage=nil, resulturl=nil, requestid=nil)
          @ResultImage = resultimage
          @ResultUrl = resulturl
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @ResultUrl = params['ResultUrl']
          @RequestId = params['RequestId']
        end
      end

      # FaceCartoonPic请求参数结构体
      class FaceCartoonPicRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        # 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的 Url 可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param RspImgType: 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        # @type RspImgType: String
        # @param DisableGlobalEffect: 关闭全图动漫化，传入true（不分大小写）即关闭全图动漫化。
        # @type DisableGlobalEffect: String

        attr_accessor :Image, :Url, :RspImgType, :DisableGlobalEffect
        
        def initialize(image=nil, url=nil, rspimgtype=nil, disableglobaleffect=nil)
          @Image = image
          @Url = url
          @RspImgType = rspimgtype
          @DisableGlobalEffect = disableglobaleffect
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
          @RspImgType = params['RspImgType']
          @DisableGlobalEffect = params['DisableGlobalEffect']
        end
      end

      # FaceCartoonPic返回参数结构体
      class FaceCartoonPicResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: 结果图片Base64信息。
        # @type ResultImage: String
        # @param ResultUrl: RspImgType 为 url 时，返回处理后的图片 url 数据。(默认为base64)
        # @type ResultUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :ResultUrl, :RequestId
        
        def initialize(resultimage=nil, resulturl=nil, requestid=nil)
          @ResultImage = resultimage
          @ResultUrl = resulturl
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @ResultUrl = params['ResultUrl']
          @RequestId = params['RequestId']
        end
      end

      # 人像渐变返回结果
      class FaceMorphOutput < TencentCloud::Common::AbstractModel
        # @param MorphUrl: 人像渐变输出的url
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MorphUrl: String
        # @param MorphMd5: 人像渐变输出的结果MD5，用于校验
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MorphMd5: String
        # @param CoverImage: 人像渐变输出的结果封面图base64字符串
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverImage: String

        attr_accessor :MorphUrl, :MorphMd5, :CoverImage
        
        def initialize(morphurl=nil, morphmd5=nil, coverimage=nil)
          @MorphUrl = morphurl
          @MorphMd5 = morphmd5
          @CoverImage = coverimage
        end

        def deserialize(params)
          @MorphUrl = params['MorphUrl']
          @MorphMd5 = params['MorphMd5']
          @CoverImage = params['CoverImage']
        end
      end

      # 人脸框位置
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

      # 人脸转换性别信息
      class GenderInfo < TencentCloud::Common::AbstractModel
        # @param Gender: 选择转换方向，0：男变女，1：女变男。
        # @type Gender: Integer
        # @param FaceRect: 人脸框位置。若不输入则选择 Image 或 Url 中面积最大的人脸。
        # 您可以通过 [人脸检测与分析](https://cloud.tencent.com/document/api/867/32800)  接口获取人脸框位置信息。
        # @type FaceRect: :class:`Tencentcloud::Ft.v20200304.models.FaceRect`

        attr_accessor :Gender, :FaceRect
        
        def initialize(gender=nil, facerect=nil)
          @Gender = gender
          @FaceRect = facerect
        end

        def deserialize(params)
          @Gender = params['Gender']
          unless params['FaceRect'].nil?
            @FaceRect = FaceRect.new.deserialize(params[FaceRect])
          end
        end
      end

      # 渐变参数
      class GradientInfo < TencentCloud::Common::AbstractModel
        # @param Tempo: 图片的展示时长，即单张图片静止不变的时间。GIF默认每张图片0.7s，视频默认每张图片0.5s。最大取值1s。
        # @type Tempo: Float
        # @param MorphTime: 人像渐变的最长时间，即单张图片使用渐变特效的时间。 GIF默认值为0.5s，视频默值认为1s。最大取值1s。
        # @type MorphTime: Float

        attr_accessor :Tempo, :MorphTime
        
        def initialize(tempo=nil, morphtime=nil)
          @Tempo = tempo
          @MorphTime = morphtime
        end

        def deserialize(params)
          @Tempo = params['Tempo']
          @MorphTime = params['MorphTime']
        end
      end

      # MorphFace请求参数结构体
      class MorphFaceRequest < TencentCloud::Common::AbstractModel
        # @param Images: 图片 base64 数据，base64 编码后大小不可超过5M。
        # jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        # 人员人脸总数量至少2张，不可超过5张。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Images: Array
        # @param Urls: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        # Url、Image必须提供一个，如果都提供，只使用 Url。图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # 人员人脸总数量不可超过5张。
        # 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        # @type Urls: Array
        # @param GradientInfos: 人脸渐变参数。可调整每张图片的展示时长、人像渐变的最长时间
        # @type GradientInfos: Array
        # @param Fps: 视频帧率，取值[1,25]。默认10
        # @type Fps: Integer
        # @param OutputType: 视频类型，取值[0,2]，其中0为MP4，1为GIF，2为MOV。目前仅支持MP4格式，默认为MP4格式
        # @type OutputType: Integer
        # @param OutputWidth: 视频宽度，取值[128,1280]。默认值720
        # @type OutputWidth: Integer
        # @param OutputHeight: 视频高度，取值[128,1280]。默认值1280
        # @type OutputHeight: Integer

        attr_accessor :Images, :Urls, :GradientInfos, :Fps, :OutputType, :OutputWidth, :OutputHeight
        
        def initialize(images=nil, urls=nil, gradientinfos=nil, fps=nil, outputtype=nil, outputwidth=nil, outputheight=nil)
          @Images = images
          @Urls = urls
          @GradientInfos = gradientinfos
          @Fps = fps
          @OutputType = outputtype
          @OutputWidth = outputwidth
          @OutputHeight = outputheight
        end

        def deserialize(params)
          @Images = params['Images']
          @Urls = params['Urls']
          @GradientInfos = params['GradientInfos']
          @Fps = params['Fps']
          @OutputType = params['OutputType']
          @OutputWidth = params['OutputWidth']
          @OutputHeight = params['OutputHeight']
        end
      end

      # MorphFace返回参数结构体
      class MorphFaceResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 人像渐变任务的Job id
        # @type JobId: String
        # @param EstimatedProcessTime: 预估处理时间，粒度为秒
        # @type EstimatedProcessTime: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :EstimatedProcessTime, :RequestId
        
        def initialize(jobid=nil, estimatedprocesstime=nil, requestid=nil)
          @JobId = jobid
          @EstimatedProcessTime = estimatedprocesstime
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          @EstimatedProcessTime = params['EstimatedProcessTime']
          @RequestId = params['RequestId']
        end
      end

      # QueryFaceMorphJob请求参数结构体
      class QueryFaceMorphJobRequest < TencentCloud::Common::AbstractModel
        # @param JobId: 人像渐变任务Job id
        # @type JobId: String

        attr_accessor :JobId
        
        def initialize(jobid=nil)
          @JobId = jobid
        end

        def deserialize(params)
          @JobId = params['JobId']
        end
      end

      # QueryFaceMorphJob返回参数结构体
      class QueryFaceMorphJobResponse < TencentCloud::Common::AbstractModel
        # @param JobStatus: 当前任务状态：排队中、处理中、处理失败或者处理完成
        # @type JobStatus: String
        # @param FaceMorphOutput: 人像渐变输出的结果信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceMorphOutput: :class:`Tencentcloud::Ft.v20200304.models.FaceMorphOutput`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobStatus, :FaceMorphOutput, :RequestId
        
        def initialize(jobstatus=nil, facemorphoutput=nil, requestid=nil)
          @JobStatus = jobstatus
          @FaceMorphOutput = facemorphoutput
          @RequestId = requestid
        end

        def deserialize(params)
          @JobStatus = params['JobStatus']
          unless params['FaceMorphOutput'].nil?
            @FaceMorphOutput = FaceMorphOutput.new.deserialize(params[FaceMorphOutput])
          end
          @RequestId = params['RequestId']
        end
      end

      # SwapGenderPic请求参数结构体
      class SwapGenderPicRequest < TencentCloud::Common::AbstractModel
        # @param GenderInfos: 人脸转化性别信息。
        # 您可以输入最多3个 GenderInfo 来实现给一张图中的最多3张人脸转换性别。
        # @type GenderInfos: Array
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        # 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的 Url 可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param RspImgType: 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        # @type RspImgType: String

        attr_accessor :GenderInfos, :Image, :Url, :RspImgType
        
        def initialize(genderinfos=nil, image=nil, url=nil, rspimgtype=nil)
          @GenderInfos = genderinfos
          @Image = image
          @Url = url
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @GenderInfos = params['GenderInfos']
          @Image = params['Image']
          @Url = params['Url']
          @RspImgType = params['RspImgType']
        end
      end

      # SwapGenderPic返回参数结构体
      class SwapGenderPicResponse < TencentCloud::Common::AbstractModel
        # @param ResultImage: RspImgType 为 base64 时，返回处理后的图片 base64 数据。默认返回base64
        # @type ResultImage: String
        # @param ResultUrl: RspImgType 为 url 时，返回处理后的图片 url 数据。
        # @type ResultUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResultImage, :ResultUrl, :RequestId
        
        def initialize(resultimage=nil, resulturl=nil, requestid=nil)
          @ResultImage = resultimage
          @ResultUrl = resulturl
          @RequestId = requestid
        end

        def deserialize(params)
          @ResultImage = params['ResultImage']
          @ResultUrl = params['ResultUrl']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

