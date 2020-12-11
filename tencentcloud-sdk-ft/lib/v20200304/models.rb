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

