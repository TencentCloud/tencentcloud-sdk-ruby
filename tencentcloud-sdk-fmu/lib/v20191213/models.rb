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
  module Fmu
    module V20191213
      # BeautifyPic请求参数结构体
      class BeautifyPicRequest < TencentCloud::Common::AbstractModel
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param Whitening: 美白程度，取值范围[0,100]。0不美白，100代表最高程度。默认值30。
        # @type Whitening: Integer
        # @param Smoothing: 磨皮程度，取值范围[0,100]。0不磨皮，100代表最高程度。默认值10。
        # @type Smoothing: Integer
        # @param FaceLifting: 瘦脸程度，取值范围[0,100]。0不瘦脸，100代表最高程度。默认值70。
        # @type FaceLifting: Integer
        # @param EyeEnlarging: 大眼程度，取值范围[0,100]。0不大眼，100代表最高程度。默认值70。
        # @type EyeEnlarging: Integer
        # @param RspImgType: 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        # @type RspImgType: String

        attr_accessor :Image, :Url, :Whitening, :Smoothing, :FaceLifting, :EyeEnlarging, :RspImgType
        
        def initialize(image=nil, url=nil, whitening=nil, smoothing=nil, facelifting=nil, eyeenlarging=nil, rspimgtype=nil)
          @Image = image
          @Url = url
          @Whitening = whitening
          @Smoothing = smoothing
          @FaceLifting = facelifting
          @EyeEnlarging = eyeenlarging
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @Image = params['Image']
          @Url = params['Url']
          @Whitening = params['Whitening']
          @Smoothing = params['Smoothing']
          @FaceLifting = params['FaceLifting']
          @EyeEnlarging = params['EyeEnlarging']
          @RspImgType = params['RspImgType']
        end
      end

      # BeautifyPic返回参数结构体
      class BeautifyPicResponse < TencentCloud::Common::AbstractModel
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

      # CreateModel请求参数结构体
      class CreateModelRequest < TencentCloud::Common::AbstractModel
        # @param LUTFile: 用于试唇色，要求必须是LUT 格式的cube文件转换成512*512的PNG图片。查看 [LUT文件的使用说明](https://cloud.tencent.com/document/product/1172/41701)。了解 [cube文件转png图片小工具](http://yyb.gtimg.com/aiplat/static/qcloud-cube-to-png.html)。
        # @type LUTFile: String
        # @param Description: 文件描述信息，可用于备注。
        # @type Description: String

        attr_accessor :LUTFile, :Description
        
        def initialize(lutfile=nil, description=nil)
          @LUTFile = lutfile
          @Description = description
        end

        def deserialize(params)
          @LUTFile = params['LUTFile']
          @Description = params['Description']
        end
      end

      # CreateModel返回参数结构体
      class CreateModelResponse < TencentCloud::Common::AbstractModel
        # @param ModelId: 唇色素材ID。
        # @type ModelId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelId, :RequestId
        
        def initialize(modelid=nil, requestid=nil)
          @ModelId = modelid
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteModel请求参数结构体
      class DeleteModelRequest < TencentCloud::Common::AbstractModel
        # @param ModelId: 素材ID。
        # @type ModelId: String

        attr_accessor :ModelId
        
        def initialize(modelid=nil)
          @ModelId = modelid
        end

        def deserialize(params)
          @ModelId = params['ModelId']
        end
      end

      # DeleteModel返回参数结构体
      class DeleteModelResponse < TencentCloud::Common::AbstractModel
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

      # GetModelList请求参数结构体
      class GetModelListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始序号，默认值为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为100。
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

      # GetModelList返回参数结构体
      class GetModelListResponse < TencentCloud::Common::AbstractModel
        # @param ModelIdNum: 唇色素材总数量。
        # @type ModelIdNum: Integer
        # @param ModelInfos: 素材数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModelInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ModelIdNum, :ModelInfos, :RequestId
        
        def initialize(modelidnum=nil, modelinfos=nil, requestid=nil)
          @ModelIdNum = modelidnum
          @ModelInfos = modelinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @ModelIdNum = params['ModelIdNum']
          @ModelInfos = params['ModelInfos']
          @RequestId = params['RequestId']
        end
      end

      # 唇色信息
      class LipColorInfo < TencentCloud::Common::AbstractModel
        # @param RGBA: 使用RGBA模型试唇色。
        # @type RGBA: :class:`Tencentcloud::Fmu.v20191213.models.RGBAInfo`
        # @param ModelId: 使用已注册的 LUT 文件试唇色。
        # ModelId 和 RGBA 两个参数只需提供一个，若都提供只使用 ModelId。
        # @type ModelId: String
        # @param FaceRect: 人脸框位置。若不输入则选择 Image 或 Url 中面积最大的人脸。
        # 您可以通过 [人脸检测与分析](https://cloud.tencent.com/document/api/867/32800)  接口获取人脸框位置信息。
        # @type FaceRect: :class:`Tencentcloud::Fmu.v20191213.models.FaceRect`
        # @param ModelAlpha: 涂妆浓淡[0,100]。建议取值50。本参数仅控制ModelId对应的涂妆浓淡。
        # @type ModelAlpha: Integer

        attr_accessor :RGBA, :ModelId, :FaceRect, :ModelAlpha
        
        def initialize(rgba=nil, modelid=nil, facerect=nil, modelalpha=nil)
          @RGBA = rgba
          @ModelId = modelid
          @FaceRect = facerect
          @ModelAlpha = modelalpha
        end

        def deserialize(params)
          unless params['RGBA'].nil?
            @RGBA = RGBAInfo.new.deserialize(params[RGBA])
          end
          @ModelId = params['ModelId']
          unless params['FaceRect'].nil?
            @FaceRect = FaceRect.new.deserialize(params[FaceRect])
          end
          @ModelAlpha = params['ModelAlpha']
        end
      end

      # LUT素材信息
      class ModelInfo < TencentCloud::Common::AbstractModel
        # @param ModelId: 唇色素材ID
        # @type ModelId: String
        # @param LUTFileUrl: 唇色素材 url 。 LUT 文件 url 5分钟有效。
        # @type LUTFileUrl: String
        # @param Description: 文件描述信息。
        # @type Description: String

        attr_accessor :ModelId, :LUTFileUrl, :Description
        
        def initialize(modelid=nil, lutfileurl=nil, description=nil)
          @ModelId = modelid
          @LUTFileUrl = lutfileurl
          @Description = description
        end

        def deserialize(params)
          @ModelId = params['ModelId']
          @LUTFileUrl = params['LUTFileUrl']
          @Description = params['Description']
        end
      end

      # RGBA通道信息
      class RGBAInfo < TencentCloud::Common::AbstractModel
        # @param R: R通道数值。[0,255]。
        # @type R: Integer
        # @param G: G通道数值。[0,255]。
        # @type G: Integer
        # @param B: B通道数值。[0,255]。
        # @type B: Integer
        # @param A: A通道数值。[0,100]。建议取值50。
        # @type A: Integer

        attr_accessor :R, :G, :B, :A
        
        def initialize(r=nil, g=nil, b=nil, a=nil)
          @R = r
          @G = g
          @B = b
          @A = a
        end

        def deserialize(params)
          @R = params['R']
          @G = params['G']
          @B = params['B']
          @A = params['A']
        end
      end

      # TryLipstickPic请求参数结构体
      class TryLipstickPicRequest < TencentCloud::Common::AbstractModel
        # @param LipColorInfos: 唇色信息。
        # 您可以输入最多3个 LipColorInfo 来实现给一张图中的最多3张人脸试唇色。
        # @type LipColorInfos: Array
        # @param Image: 图片 base64 数据，base64 编码后大小不可超过6M。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Image: String
        # @param Url: 图片的 Url ，对应图片 base64 编码后大小不可超过6M。
        # 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        # 图片存储于腾讯云的 Url 可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # @type Url: String
        # @param RspImgType: 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        # @type RspImgType: String

        attr_accessor :LipColorInfos, :Image, :Url, :RspImgType
        
        def initialize(lipcolorinfos=nil, image=nil, url=nil, rspimgtype=nil)
          @LipColorInfos = lipcolorinfos
          @Image = image
          @Url = url
          @RspImgType = rspimgtype
        end

        def deserialize(params)
          @LipColorInfos = params['LipColorInfos']
          @Image = params['Image']
          @Url = params['Url']
          @RspImgType = params['RspImgType']
        end
      end

      # TryLipstickPic返回参数结构体
      class TryLipstickPicResponse < TencentCloud::Common::AbstractModel
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

