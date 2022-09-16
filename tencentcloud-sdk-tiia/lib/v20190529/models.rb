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
  module Tiia
    module V20190529
      # AssessQuality请求参数结构体
      class AssessQualityRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # **注意：图片需要base64编码，并且要去掉编码头部。**
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # AssessQuality返回参数结构体
      class AssessQualityResponse < TencentCloud::Common::AbstractModel
        # @param LongImage: 取值为TRUE或FALSE，TRUE为长图，FALSE为正常图，长图定义为长宽比大于等于3或小于等于1/3的图片。
        # @type LongImage: Boolean
        # @param BlackAndWhite: 取值为TRUE或FALSE，TRUE为黑白图，FALSE为否。黑白图即灰度图，指红绿蓝三个通道都是以灰度色阶显示的图片，并非视觉上的“黑白图片”。
        # @type BlackAndWhite: Boolean
        # @param SmallImage: 取值为TRUE或FALSE，TRUE为小图，FALSE为否, 小图定义为最长边小于179像素的图片。当一张图片被判断为小图时，不建议做推荐和展示，其他字段统一输出为0或FALSE。
        # @type SmallImage: Boolean
        # @param BigImage: 取值为TRUE或FALSE，TRUE为大图，FALSE为否，定义为最短边大于1000像素的图片
        # @type BigImage: Boolean
        # @param PureImage: 取值为TRUE或FALSE，TRUE为纯色图或纯文字图，即没有内容或只有简单内容的图片，FALSE为正常图片。
        # @type PureImage: Boolean
        # @param ClarityScore: 综合评分。图像清晰度的得分，对图片的噪声、曝光、模糊、压缩等因素进行综合评估，取值为[0, 100]，值越大，越清晰。一般大于50为较清晰图片，标准可以自行把握。
        # @type ClarityScore: Integer
        # @param AestheticScore: 综合评分。图像美观度得分， 从构图、色彩等多个艺术性维度评价图片，取值为[0, 100]，值越大，越美观。一般大于50为较美观图片，标准可以自行把握。
        # @type AestheticScore: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LongImage, :BlackAndWhite, :SmallImage, :BigImage, :PureImage, :ClarityScore, :AestheticScore, :RequestId
        
        def initialize(longimage=nil, blackandwhite=nil, smallimage=nil, bigimage=nil, pureimage=nil, clarityscore=nil, aestheticscore=nil, requestid=nil)
          @LongImage = longimage
          @BlackAndWhite = blackandwhite
          @SmallImage = smallimage
          @BigImage = bigimage
          @PureImage = pureimage
          @ClarityScore = clarityscore
          @AestheticScore = aestheticscore
          @RequestId = requestid
        end

        def deserialize(params)
          @LongImage = params['LongImage']
          @BlackAndWhite = params['BlackAndWhite']
          @SmallImage = params['SmallImage']
          @BigImage = params['BigImage']
          @PureImage = params['PureImage']
          @ClarityScore = params['ClarityScore']
          @AestheticScore = params['AestheticScore']
          @RequestId = params['RequestId']
        end
      end

      # 属性
      class Attribute < TencentCloud::Common::AbstractModel
        # @param Type: 属性
        # @type Type: String
        # @param Details: 属性详情
        # @type Details: String

        attr_accessor :Type, :Details
        
        def initialize(type=nil, details=nil)
          @Type = type
          @Details = details
        end

        def deserialize(params)
          @Type = params['Type']
          @Details = params['Details']
        end
      end

      # 图像主体区域。
      class Box < TencentCloud::Common::AbstractModel
        # @param Rect: 图像主体区域。
        # @type Rect: :class:`Tencentcloud::Tiia.v20190529.models.ImageRect`
        # @param Score: 置信度。
        # @type Score: Float
        # @param CategoryId: 主体区域类目ID
        # @type CategoryId: Integer

        attr_accessor :Rect, :Score, :CategoryId
        
        def initialize(rect=nil, score=nil, categoryid=nil)
          @Rect = rect
          @Score = score
          @CategoryId = categoryid
        end

        def deserialize(params)
          unless params['Rect'].nil?
            @Rect = ImageRect.new
            @Rect.deserialize(params['Rect'])
          end
          @Score = params['Score']
          @CategoryId = params['CategoryId']
        end
      end

      # 车牌信息
      class CarPlateContent < TencentCloud::Common::AbstractModel
        # @param Plate: 车牌信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Plate: String
        # @param Color: 车牌颜色。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Color: String
        # @param Type: 车牌类型，包含：0普通蓝牌，1双层黄牌，2单层黄牌，3新能源车牌，4使馆车牌，5领馆车牌，6澳门车牌，7香港车牌，8警用车牌，9教练车牌，10武警车牌，11军用车牌   -2遮挡污损模糊车牌/异常   其他无牌
        # 注意：
        # 此字段可能返回 null，表示取不到有效值。
        # 此字段结果遮挡污损模糊车牌/异常：包含PlateStatus参数的“遮挡污损模糊车牌”，针对车牌异常，建议参考此字段，更全面
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param PlateLocation: 车牌在图片中的坐标信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlateLocation: Array
        # @param PlateStatus: 判断车牌是否遮挡：“遮挡污损模糊车牌”和"正常车牌"。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlateStatus: String
        # @param PlateStatusConfidence: 车牌遮挡的置信度，0-100。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlateStatusConfidence: Integer
        # @param PlateAngle: 车牌角度。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlateAngle: Float

        attr_accessor :Plate, :Color, :Type, :PlateLocation, :PlateStatus, :PlateStatusConfidence, :PlateAngle
        
        def initialize(plate=nil, color=nil, type=nil, platelocation=nil, platestatus=nil, platestatusconfidence=nil, plateangle=nil)
          @Plate = plate
          @Color = color
          @Type = type
          @PlateLocation = platelocation
          @PlateStatus = platestatus
          @PlateStatusConfidence = platestatusconfidence
          @PlateAngle = plateangle
        end

        def deserialize(params)
          @Plate = params['Plate']
          @Color = params['Color']
          @Type = params['Type']
          unless params['PlateLocation'].nil?
            @PlateLocation = []
            params['PlateLocation'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @PlateLocation << coord_tmp
            end
          end
          @PlateStatus = params['PlateStatus']
          @PlateStatusConfidence = params['PlateStatusConfidence']
          @PlateAngle = params['PlateAngle']
        end
      end

      # 车辆属性识别的结果
      class CarTagItem < TencentCloud::Common::AbstractModel
        # @param Serial: 车系
        # @type Serial: String
        # @param Brand: 车辆品牌
        # @type Brand: String
        # @param Type: 车辆类型
        # @type Type: String
        # @param Color: 车辆颜色
        # @type Color: String
        # @param Confidence: 车系置信度，0-100
        # @type Confidence: Integer
        # @param Year: 年份，没识别出年份的时候返回0
        # @type Year: Integer
        # @param CarLocation: 车辆在图片中的坐标信息
        # @type CarLocation: Array
        # @param PlateContent: 车牌信息，仅车辆识别（增强版）支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlateContent: :class:`Tencentcloud::Tiia.v20190529.models.CarPlateContent`
        # @param PlateConfidence: 车牌信息置信度，0-100，仅车辆识别（增强版）支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlateConfidence: Integer
        # @param TypeConfidence: 车辆类型置信度，0-100，仅车辆识别（增强版）支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeConfidence: Integer
        # @param ColorConfidence: 车辆颜色置信度，0-100，仅车辆识别（增强版）支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ColorConfidence: Integer
        # @param Orientation: 车辆朝向，仅车辆识别（增强版）支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Orientation: String
        # @param OrientationConfidence: 车辆朝向置信度，0-100，仅车辆识别（增强版）支持
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrientationConfidence: Integer

        attr_accessor :Serial, :Brand, :Type, :Color, :Confidence, :Year, :CarLocation, :PlateContent, :PlateConfidence, :TypeConfidence, :ColorConfidence, :Orientation, :OrientationConfidence
        
        def initialize(serial=nil, brand=nil, type=nil, color=nil, confidence=nil, year=nil, carlocation=nil, platecontent=nil, plateconfidence=nil, typeconfidence=nil, colorconfidence=nil, orientation=nil, orientationconfidence=nil)
          @Serial = serial
          @Brand = brand
          @Type = type
          @Color = color
          @Confidence = confidence
          @Year = year
          @CarLocation = carlocation
          @PlateContent = platecontent
          @PlateConfidence = plateconfidence
          @TypeConfidence = typeconfidence
          @ColorConfidence = colorconfidence
          @Orientation = orientation
          @OrientationConfidence = orientationconfidence
        end

        def deserialize(params)
          @Serial = params['Serial']
          @Brand = params['Brand']
          @Type = params['Type']
          @Color = params['Color']
          @Confidence = params['Confidence']
          @Year = params['Year']
          unless params['CarLocation'].nil?
            @CarLocation = []
            params['CarLocation'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @CarLocation << coord_tmp
            end
          end
          unless params['PlateContent'].nil?
            @PlateContent = CarPlateContent.new
            @PlateContent.deserialize(params['PlateContent'])
          end
          @PlateConfidence = params['PlateConfidence']
          @TypeConfidence = params['TypeConfidence']
          @ColorConfidence = params['ColorConfidence']
          @Orientation = params['Orientation']
          @OrientationConfidence = params['OrientationConfidence']
        end
      end

      # 整张图颜色信息。
      class ColorInfo < TencentCloud::Common::AbstractModel
        # @param Color: RGB颜色值（16进制），例如：291A18。
        # @type Color: String
        # @param Percentage: 当前颜色标签所占比例。
        # @type Percentage: Float
        # @param Label: 颜色标签。蜜柚色，米驼色等。
        # @type Label: String

        attr_accessor :Color, :Percentage, :Label
        
        def initialize(color=nil, percentage=nil, label=nil)
          @Color = color
          @Percentage = percentage
          @Label = label
        end

        def deserialize(params)
          @Color = params['Color']
          @Percentage = params['Percentage']
          @Label = params['Label']
        end
      end

      # 汽车坐标信息
      class Coord < TencentCloud::Common::AbstractModel
        # @param X: 横坐标x
        # @type X: Integer
        # @param Y: 纵坐标y
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

      # CreateGroup请求参数结构体
      class CreateGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 图库ID，不可重复，仅支持字母、数字和下划线。
        # @type GroupId: String
        # @param GroupName: 图库名称描述。
        # @type GroupName: String
        # @param MaxCapacity: 图库可容纳的最大图片数量。
        # @type MaxCapacity: Integer
        # @param Brief: 图库简介。
        # @type Brief: String
        # @param MaxQps: 访问限制默认为10qps，如需扩容请联系[在线客服](https://cloud.tencent.com/online-service)申请。
        # @type MaxQps: Integer
        # @param GroupType: 图库类型，对应不同的图像搜索服务类型，默认为4。1～3为历史版本，不推荐。
        # 参数取值：
        # 4：相同图像搜索。
        # 5：商品图像搜索。
        # 6：相似图像搜索。
        # @type GroupType: Integer

        attr_accessor :GroupId, :GroupName, :MaxCapacity, :Brief, :MaxQps, :GroupType
        
        def initialize(groupid=nil, groupname=nil, maxcapacity=nil, brief=nil, maxqps=nil, grouptype=nil)
          @GroupId = groupid
          @GroupName = groupname
          @MaxCapacity = maxcapacity
          @Brief = brief
          @MaxQps = maxqps
          @GroupType = grouptype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @MaxCapacity = params['MaxCapacity']
          @Brief = params['Brief']
          @MaxQps = params['MaxQps']
          @GroupType = params['GroupType']
        end
      end

      # CreateGroup返回参数结构体
      class CreateGroupResponse < TencentCloud::Common::AbstractModel
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

      # CreateImage请求参数结构体
      class CreateImageRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 图库ID。
        # @type GroupId: String
        # @param EntityId: 物品ID，最多支持64个字符。
        # 一个物品ID可以包含多张图片，若EntityId已存在，则对其追加图片。同一个EntityId，最大支持10张图。
        # @type EntityId: String
        # @param PicName: 图片名称，最多支持64个字符，
        # PicName唯一确定一张图片，具有唯一性。
        # @type PicName: String
        # @param ImageUrl: 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        # ImageUrl和ImageBase64必须提供一个，如果都提供，只使用ImageUrl。
        # 图片限制：
        # • 图片格式：支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # • 图片大小：对应图片 base64 编码后大小不可超过5M。图片分辨率不超过4096\*4096。
        # • 如果在商品图像搜索中开启主体识别，分辨率不超过2000\*2000，图片长宽比小于10。
        # 建议：
        # • 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的Url速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param CustomContent: 图片自定义备注内容，最多支持4096个字符，查询时原样带回。
        # @type CustomContent: String
        # @param ImageBase64: 图片 base64 数据，base64 编码后大小不可超过5M。
        # 图片限制：
        # • 图片格式：支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # • 图片大小：base64 编码后大小不可超过5M。图片分辨率不超过4096\*4096。
        # • 如果在商品图像搜索中开启主体识别，分辨率不超过2000\*2000，图片长宽比小于10。
        # @type ImageBase64: String
        # @param Tags: 图片自定义标签，最多不超过10个，格式为JSON。
        # @type Tags: String
        # @param EnableDetect: 是否需要启用主体识别，默认为**TRUE**。
        # • 为**TRUE**时，启用主体识别，返回主体信息。若没有指定**ImageRect**，自动提取最大面积主体创建图片并进行主体识别。主体识别结果可在**Response**中获取。
        # • 为**FALSE**时，不启用主体识别，不返回主体信息。若没有指定**ImageRect**，以整张图创建图片。
        # **<font color=#1E90FF>注意：仅服务类型为商品图像搜索时才生效。</font>**
        # @type EnableDetect: Boolean
        # @param CategoryId: 图像类目ID。
        # 若设置类目ID，提取以下类目的主体创建图片。
        # 类目取值说明：
        # 0：上衣。
        # 1：裙装。
        # 2：下装。
        # 3：包。
        # 4：鞋。
        # 5：配饰。
        # **<font color=#1E90FF>注意：仅服务类型为商品图像搜索时才生效。</font>**
        # @type CategoryId: Integer
        # @param ImageRect: 图像主体区域。
        # 若设置主体区域，提取指定的区域创建图片。
        # @type ImageRect: :class:`Tencentcloud::Tiia.v20190529.models.Rect`

        attr_accessor :GroupId, :EntityId, :PicName, :ImageUrl, :CustomContent, :ImageBase64, :Tags, :EnableDetect, :CategoryId, :ImageRect
        
        def initialize(groupid=nil, entityid=nil, picname=nil, imageurl=nil, customcontent=nil, imagebase64=nil, tags=nil, enabledetect=nil, categoryid=nil, imagerect=nil)
          @GroupId = groupid
          @EntityId = entityid
          @PicName = picname
          @ImageUrl = imageurl
          @CustomContent = customcontent
          @ImageBase64 = imagebase64
          @Tags = tags
          @EnableDetect = enabledetect
          @CategoryId = categoryid
          @ImageRect = imagerect
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @EntityId = params['EntityId']
          @PicName = params['PicName']
          @ImageUrl = params['ImageUrl']
          @CustomContent = params['CustomContent']
          @ImageBase64 = params['ImageBase64']
          @Tags = params['Tags']
          @EnableDetect = params['EnableDetect']
          @CategoryId = params['CategoryId']
          unless params['ImageRect'].nil?
            @ImageRect = Rect.new
            @ImageRect.deserialize(params['ImageRect'])
          end
        end
      end

      # CreateImage返回参数结构体
      class CreateImageResponse < TencentCloud::Common::AbstractModel
        # @param Object: 输入图的主体信息。
        # 若启用主体识别且在请求中指定了类目ID或主体区域，以指定的主体为准。若启用主体识别且没有指定，以最大面积主体为准。
        # **<font color=#1E90FF>注意：仅服务类型为商品图像搜索时才生效。</font>**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Object: :class:`Tencentcloud::Tiia.v20190529.models.ObjectInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Object, :RequestId
        
        def initialize(object=nil, requestid=nil)
          @Object = object
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Object'].nil?
            @Object = ObjectInfo.new
            @Object.deserialize(params['Object'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CropImage请求参数结构体
      class CropImageRequest < TencentCloud::Common::AbstractModel
        # @param Width: 需要裁剪区域的宽度，与Height共同组成所需裁剪的图片宽高比例；
        # 输入数字请大于0、小于图片宽度的像素值；
        # @type Width: Integer
        # @param Height: 需要裁剪区域的高度，与Width共同组成所需裁剪的图片宽高比例；
        # 输入数字请请大于0、小于图片高度的像素值；
        # 宽高比例（Width : Height）会简化为最简分数，即如果Width输入10、Height输入20，会简化为1：2。
        # Width : Height建议取值在[1, 2.5]之间，超过这个范围可能会影响效果；
        # @type Height: Integer
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # **注意：图片需要base64编码，并且要去掉编码头部。**
        # @type ImageBase64: String

        attr_accessor :Width, :Height, :ImageUrl, :ImageBase64
        
        def initialize(width=nil, height=nil, imageurl=nil, imagebase64=nil)
          @Width = width
          @Height = height
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # CropImage返回参数结构体
      class CropImageResponse < TencentCloud::Common::AbstractModel
        # @param X: 裁剪区域左上角X坐标值
        # @type X: Integer
        # @param Y: 裁剪区域左上角Y坐标值
        # @type Y: Integer
        # @param Width: 裁剪区域的宽度，单位为像素
        # @type Width: Integer
        # @param Height: 裁剪区域的高度，单位为像素
        # @type Height: Integer
        # @param OriginalWidth: 原图宽度，单位为像素
        # @type OriginalWidth: Integer
        # @param OriginalHeight: 原图高度，单位为像素
        # @type OriginalHeight: Integer
        # @param CropResult: 0：抠图正常；
        # 1：原图过长，指原图的高度是宽度的1.8倍以上；
        # 2：原图过宽，指原图的宽度是高度的1.8倍以上；
        # 3：抠图区域过长，指抠图的高度是主体备选框高度的1.6倍以上；
        # 4：抠图区域过宽，指当没有检测到人脸时，抠图区域宽度是检测出的原图主体区域宽度的1.6倍以上；
        # 5：纯色图，指裁剪区域视觉较为单一、缺乏主体部分 ；
        # 6：宽高比异常，指Width : Height取值超出[1, 2.5]的范围；

        # 以上是辅助决策的参考建议，可以根据业务需求选择采纳或忽视。
        # @type CropResult: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :X, :Y, :Width, :Height, :OriginalWidth, :OriginalHeight, :CropResult, :RequestId
        
        def initialize(x=nil, y=nil, width=nil, height=nil, originalwidth=nil, originalheight=nil, cropresult=nil, requestid=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
          @OriginalWidth = originalwidth
          @OriginalHeight = originalheight
          @CropResult = cropresult
          @RequestId = requestid
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
          @OriginalWidth = params['OriginalWidth']
          @OriginalHeight = params['OriginalHeight']
          @CropResult = params['CropResult']
          @RequestId = params['RequestId']
        end
      end

      # DeleteImages请求参数结构体
      class DeleteImagesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 图库名称。
        # @type GroupId: String
        # @param EntityId: 物品ID。
        # @type EntityId: String
        # @param PicName: 图片名称，如果不指定本参数，则删除EntityId下所有的图片；否则删除指定的图。
        # @type PicName: String

        attr_accessor :GroupId, :EntityId, :PicName
        
        def initialize(groupid=nil, entityid=nil, picname=nil)
          @GroupId = groupid
          @EntityId = entityid
          @PicName = picname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @EntityId = params['EntityId']
          @PicName = params['PicName']
        end
      end

      # DeleteImages返回参数结构体
      class DeleteImagesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeGroups请求参数结构体
      class DescribeGroupsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 起始序号，默认值为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为10，最大值为100。
        # @type Limit: Integer
        # @param GroupId: 图库ID，如果不为空，则返回指定库信息。
        # @type GroupId: String

        attr_accessor :Offset, :Limit, :GroupId
        
        def initialize(offset=nil, limit=nil, groupid=nil)
          @Offset = offset
          @Limit = limit
          @GroupId = groupid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @GroupId = params['GroupId']
        end
      end

      # DescribeGroups返回参数结构体
      class DescribeGroupsResponse < TencentCloud::Common::AbstractModel
        # @param Groups: 图库信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Groups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Groups, :RequestId
        
        def initialize(groups=nil, requestid=nil)
          @Groups = groups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Groups'].nil?
            @Groups = []
            params['Groups'].each do |i|
              groupinfo_tmp = GroupInfo.new
              groupinfo_tmp.deserialize(i)
              @Groups << groupinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeImages请求参数结构体
      class DescribeImagesRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 图库名称。
        # @type GroupId: String
        # @param EntityId: 物品ID。
        # @type EntityId: String
        # @param PicName: 图片名称。
        # @type PicName: String

        attr_accessor :GroupId, :EntityId, :PicName
        
        def initialize(groupid=nil, entityid=nil, picname=nil)
          @GroupId = groupid
          @EntityId = entityid
          @PicName = picname
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @EntityId = params['EntityId']
          @PicName = params['PicName']
        end
      end

      # DescribeImages返回参数结构体
      class DescribeImagesResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 图库名称。
        # @type GroupId: String
        # @param EntityId: 物品ID。
        # @type EntityId: String
        # @param ImageInfos: 图片信息。
        # @type ImageInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :EntityId, :ImageInfos, :RequestId
        
        def initialize(groupid=nil, entityid=nil, imageinfos=nil, requestid=nil)
          @GroupId = groupid
          @EntityId = entityid
          @ImageInfos = imageinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @EntityId = params['EntityId']
          unless params['ImageInfos'].nil?
            @ImageInfos = []
            params['ImageInfos'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @ImageInfos << imageinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetectDisgust请求参数结构体
      class DetectDisgustRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # **注意：图片需要base64编码，并且要去掉编码头部。**
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # DetectDisgust返回参数结构体
      class DetectDisgustResponse < TencentCloud::Common::AbstractModel
        # @param Confidence: 对于图片中包含恶心内容的置信度，取值[0,1]，一般超过0.5则表明可能是恶心图片。
        # @type Confidence: Float
        # @param Type: 与图像内容最相似的恶心内容的类别，包含腐烂、密集、畸形、血腥、蛇、虫子、牙齿等。
        # @type Type: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Confidence, :Type, :RequestId
        
        def initialize(confidence=nil, type=nil, requestid=nil)
          @Confidence = confidence
          @Type = type
          @RequestId = requestid
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Type = params['Type']
          @RequestId = params['RequestId']
        end
      end

      # DetectEnvelope请求参数结构体
      class DetectEnvelopeRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片的URL地址。图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        # 非腾讯云存储的Url速度和稳定性可能受一定影响。
        # 图片大小的限制为4M，图片像素的限制为4k。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。与ImageUrl同时存在时优先使用ImageUrl字段。
        # 图片大小的限制为4M，图片像素的限制为4k。
        # **注意：图片需要base64编码，并且要去掉编码头部。
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # DetectEnvelope返回参数结构体
      class DetectEnvelopeResponse < TencentCloud::Common::AbstractModel
        # @param FirstTags: 一级标签结果数组。识别是否文件封。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FirstTags: Array
        # @param SecondTags: 二级标签结果数组。识别文件封正反面。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecondTags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FirstTags, :SecondTags, :RequestId
        
        def initialize(firsttags=nil, secondtags=nil, requestid=nil)
          @FirstTags = firsttags
          @SecondTags = secondtags
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FirstTags'].nil?
            @FirstTags = []
            params['FirstTags'].each do |i|
              imagetag_tmp = ImageTag.new
              imagetag_tmp.deserialize(i)
              @FirstTags << imagetag_tmp
            end
          end
          unless params['SecondTags'].nil?
            @SecondTags = []
            params['SecondTags'].each do |i|
              imagetag_tmp = ImageTag.new
              imagetag_tmp.deserialize(i)
              @SecondTags << imagetag_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetectLabelBeta请求参数结构体
      class DetectLabelBetaRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # **注意：图片需要base64编码，并且要去掉编码头部。**
        # @type ImageBase64: String
        # @param Scenes: 本次调用支持的识别场景，可选值如下：
        # WEB，针对网络图片优化;
        # CAMERA，针对手机摄像头拍摄图片优化;
        # ALBUM，针对手机相册、网盘产品优化;
        # NEWS，针对新闻、资讯、广电等行业优化；
        # NONECAM，非实拍图；
        # LOCATION，主体位置识别；
        # 如果不传此参数，则默认为WEB。

        # 支持多场景（Scenes）一起检测。例如，使用 Scenes=["WEB", "CAMERA"]，即对一张图片使用两个模型同时检测，输出两套识别结果。
        # @type Scenes: Array

        attr_accessor :ImageUrl, :ImageBase64, :Scenes
        
        def initialize(imageurl=nil, imagebase64=nil, scenes=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @Scenes = scenes
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @Scenes = params['Scenes']
        end
      end

      # DetectLabelBeta返回参数结构体
      class DetectLabelBetaResponse < TencentCloud::Common::AbstractModel
        # @param Labels: Web网络版标签结果数组。如未选择WEB场景，则为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param CameraLabels: Camera摄像头版标签结果数组。如未选择CAMERA场景，则为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CameraLabels: Array
        # @param AlbumLabels: Album相册版标签结果数组。如未选择ALBUM场景，则为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlbumLabels: Array
        # @param NewsLabels: News新闻版标签结果数组。如未选择NEWS场景，则为空。
        # 新闻版目前为测试阶段，暂不提供每个标签的一级、二级分类信息的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewsLabels: Array
        # @param NoneCamLabels: 非实拍标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoneCamLabels: Array
        # @param LocationLabels: 识别结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LocationLabels: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Labels, :CameraLabels, :AlbumLabels, :NewsLabels, :NoneCamLabels, :LocationLabels, :RequestId
        
        def initialize(labels=nil, cameralabels=nil, albumlabels=nil, newslabels=nil, nonecamlabels=nil, locationlabels=nil, requestid=nil)
          @Labels = labels
          @CameraLabels = cameralabels
          @AlbumLabels = albumlabels
          @NewsLabels = newslabels
          @NoneCamLabels = nonecamlabels
          @LocationLabels = locationlabels
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @Labels << detectlabelitem_tmp
            end
          end
          unless params['CameraLabels'].nil?
            @CameraLabels = []
            params['CameraLabels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @CameraLabels << detectlabelitem_tmp
            end
          end
          unless params['AlbumLabels'].nil?
            @AlbumLabels = []
            params['AlbumLabels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @AlbumLabels << detectlabelitem_tmp
            end
          end
          unless params['NewsLabels'].nil?
            @NewsLabels = []
            params['NewsLabels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @NewsLabels << detectlabelitem_tmp
            end
          end
          unless params['NoneCamLabels'].nil?
            @NoneCamLabels = []
            params['NoneCamLabels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @NoneCamLabels << detectlabelitem_tmp
            end
          end
          unless params['LocationLabels'].nil?
            @LocationLabels = []
            params['LocationLabels'].each do |i|
              product_tmp = Product.new
              product_tmp.deserialize(i)
              @LocationLabels << product_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 图像标签检测结果。
      class DetectLabelItem < TencentCloud::Common::AbstractModel
        # @param Name: 图片中的物体名称。
        # @type Name: String
        # @param Confidence: 算法对于Name的置信度，0-100之间，值越高，表示对于Name越确定。
        # @type Confidence: Integer
        # @param FirstCategory: 标签的一级分类
        # @type FirstCategory: String
        # @param SecondCategory: 标签的二级分类
        # @type SecondCategory: String

        attr_accessor :Name, :Confidence, :FirstCategory, :SecondCategory
        
        def initialize(name=nil, confidence=nil, firstcategory=nil, secondcategory=nil)
          @Name = name
          @Confidence = confidence
          @FirstCategory = firstcategory
          @SecondCategory = secondcategory
        end

        def deserialize(params)
          @Name = params['Name']
          @Confidence = params['Confidence']
          @FirstCategory = params['FirstCategory']
          @SecondCategory = params['SecondCategory']
        end
      end

      # DetectLabelPro请求参数结构体
      class DetectLabelProRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片 URL 地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG、BMP。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边:短边<5；
        # • 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 图片 Base64 编码数据。
        # 与ImageUrl同时存在时优先使用ImageUrl字段。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG、BMP。
        # • 图片大小：经Base64编码后不超过4M。
        # **<font color=#1E90FF>注意：图片需要Base64编码，并且要去掉编码头部。</font>**
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # DetectLabelPro返回参数结构体
      class DetectLabelProResponse < TencentCloud::Common::AbstractModel
        # @param Labels: 返回标签数组。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Labels, :RequestId
        
        def initialize(labels=nil, requestid=nil)
          @Labels = labels
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @Labels << detectlabelitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetectLabel请求参数结构体
      class DetectLabelRequest < TencentCloud::Common::AbstractModel
        # @param ImageBase64: 图片 Base64 编码数据。
        # 与ImageUrl同时存在时优先使用ImageUrl字段。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG、BMP。
        # • 图片大小：经Base64编码后不超过4M。
        # **<font color=#1E90FF>注意：图片需要Base64编码，并且要去掉编码头部。</font>**
        # @type ImageBase64: String
        # @param ImageUrl: 图片 URL 地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG、BMP。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边:短边<5；
        # • 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param Scenes: 本次调用支持的识别场景，可选值如下：
        # • WEB，针对网络图片优化;
        # • CAMERA，针对手机摄像头拍摄图片优化;
        # • ALBUM，针对手机相册、网盘产品优化;
        # • NEWS，针对新闻、资讯、广电等行业优化；
        # 如果不传此参数，则默认为WEB。

        # 支持多场景（Scenes）一起检测。例如，使用 Scenes=["WEB", "CAMERA"]，即对一张图片使用两个模型同时检测，输出两套识别结果。
        # @type Scenes: Array

        attr_accessor :ImageBase64, :ImageUrl, :Scenes
        
        def initialize(imagebase64=nil, imageurl=nil, scenes=nil)
          @ImageBase64 = imagebase64
          @ImageUrl = imageurl
          @Scenes = scenes
        end

        def deserialize(params)
          @ImageBase64 = params['ImageBase64']
          @ImageUrl = params['ImageUrl']
          @Scenes = params['Scenes']
        end
      end

      # DetectLabel返回参数结构体
      class DetectLabelResponse < TencentCloud::Common::AbstractModel
        # @param Labels: Web网络版标签结果数组。如未选择WEB场景，则为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Labels: Array
        # @param CameraLabels: Camera摄像头版标签结果数组。如未选择CAMERA场景，则为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CameraLabels: Array
        # @param AlbumLabels: Album相册版标签结果数组。如未选择ALBUM场景，则为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AlbumLabels: Array
        # @param NewsLabels: News新闻版标签结果数组。如未选择NEWS场景，则为空。
        # 新闻版目前为测试阶段，暂不提供每个标签的一级、二级分类信息的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewsLabels: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Labels, :CameraLabels, :AlbumLabels, :NewsLabels, :RequestId
        
        def initialize(labels=nil, cameralabels=nil, albumlabels=nil, newslabels=nil, requestid=nil)
          @Labels = labels
          @CameraLabels = cameralabels
          @AlbumLabels = albumlabels
          @NewsLabels = newslabels
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Labels'].nil?
            @Labels = []
            params['Labels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @Labels << detectlabelitem_tmp
            end
          end
          unless params['CameraLabels'].nil?
            @CameraLabels = []
            params['CameraLabels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @CameraLabels << detectlabelitem_tmp
            end
          end
          unless params['AlbumLabels'].nil?
            @AlbumLabels = []
            params['AlbumLabels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @AlbumLabels << detectlabelitem_tmp
            end
          end
          unless params['NewsLabels'].nil?
            @NewsLabels = []
            params['NewsLabels'].each do |i|
              detectlabelitem_tmp = DetectLabelItem.new
              detectlabelitem_tmp.deserialize(i)
              @NewsLabels << detectlabelitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetectMisbehavior请求参数结构体
      class DetectMisbehaviorRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # **注意：图片需要base64编码，并且要去掉编码头部。**
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # DetectMisbehavior返回参数结构体
      class DetectMisbehaviorResponse < TencentCloud::Common::AbstractModel
        # @param Confidence: 对于图片中包含不良行为的置信度，取值[0,1]，一般超过0.5则表明可能包含不良行为内容；
        # @type Confidence: Float
        # @param Type: 图像中最可能包含的不良行为类别，包括赌博、打架斗殴、吸毒等。
        # @type Type: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Confidence, :Type, :RequestId
        
        def initialize(confidence=nil, type=nil, requestid=nil)
          @Confidence = confidence
          @Type = type
          @RequestId = requestid
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Type = params['Type']
          @RequestId = params['RequestId']
        end
      end

      # DetectProductBeta请求参数结构体
      class DetectProductBetaRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片限制：内测版仅支持jpg、jpeg，图片大小不超过1M，分辨率在25万到100万之间。
        # 建议先对图片进行压缩，以便提升处理速度。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过1M，分辨率在25万到100万之间。
        # 与ImageUrl同时存在时优先使用ImageUrl字段。
        # @type ImageBase64: String
        # @param NeedLemma: 是否需要百科信息 1：是，0: 否，默认是0
        # @type NeedLemma: Integer

        attr_accessor :ImageUrl, :ImageBase64, :NeedLemma
        
        def initialize(imageurl=nil, imagebase64=nil, needlemma=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @NeedLemma = needlemma
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @NeedLemma = params['NeedLemma']
        end
      end

      # DetectProductBeta返回参数结构体
      class DetectProductBetaResponse < TencentCloud::Common::AbstractModel
        # @param RegionDetected: 检测到的图片中的商品位置和品类预测。
        # 当图片中存在多个商品时，输出多组坐标，按照__显著性__排序（综合考虑面积、是否在中心、检测算法置信度）。
        # 最多可以输出__3组__检测结果。
        # @type RegionDetected: Array
        # @param ProductInfo: 图像识别出的商品的详细信息。
        # 当图像中检测到多个物品时，会对显著性最高的进行识别。
        # @type ProductInfo: :class:`Tencentcloud::Tiia.v20190529.models.ProductInfo`
        # @param ProductInfoList: 相似商品信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductInfoList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionDetected, :ProductInfo, :ProductInfoList, :RequestId
        
        def initialize(regiondetected=nil, productinfo=nil, productinfolist=nil, requestid=nil)
          @RegionDetected = regiondetected
          @ProductInfo = productinfo
          @ProductInfoList = productinfolist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RegionDetected'].nil?
            @RegionDetected = []
            params['RegionDetected'].each do |i|
              regiondetected_tmp = RegionDetected.new
              regiondetected_tmp.deserialize(i)
              @RegionDetected << regiondetected_tmp
            end
          end
          unless params['ProductInfo'].nil?
            @ProductInfo = ProductInfo.new
            @ProductInfo.deserialize(params['ProductInfo'])
          end
          unless params['ProductInfoList'].nil?
            @ProductInfoList = []
            params['ProductInfoList'].each do |i|
              productinfo_tmp = ProductInfo.new
              productinfo_tmp.deserialize(i)
              @ProductInfoList << productinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DetectProduct请求参数结构体
      class DetectProductRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # **注意：图片需要base64编码，并且要去掉编码头部。**
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # DetectProduct返回参数结构体
      class DetectProductResponse < TencentCloud::Common::AbstractModel
        # @param Products: 商品识别结果数组
        # @type Products: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Products, :RequestId
        
        def initialize(products=nil, requestid=nil)
          @Products = products
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Products'].nil?
            @Products = []
            params['Products'].each do |i|
              product_tmp = Product.new
              product_tmp.deserialize(i)
              @Products << product_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # EnhanceImage请求参数结构体
      class EnhanceImageRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，最大不超过250万像素，否则影响识别效果；
        # • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # **注意：图片需要base64编码，并且要去掉编码头部。**
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # EnhanceImage返回参数结构体
      class EnhanceImageResponse < TencentCloud::Common::AbstractModel
        # @param EnhancedImage: 增强后图片的base64编码。
        # @type EnhancedImage: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnhancedImage, :RequestId
        
        def initialize(enhancedimage=nil, requestid=nil)
          @EnhancedImage = enhancedimage
          @RequestId = requestid
        end

        def deserialize(params)
          @EnhancedImage = params['EnhancedImage']
          @RequestId = params['RequestId']
        end
      end

      # 图库信息。
      class GroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 图库Id。
        # @type GroupId: String
        # @param GroupName: 图库名称。
        # @type GroupName: String
        # @param Brief: 图库简介。
        # @type Brief: String
        # @param MaxCapacity: 图库容量。
        # @type MaxCapacity: Integer
        # @param MaxQps: 该库的访问限频 。
        # @type MaxQps: Integer
        # @param GroupType: 图库类型，对应不同服务类型，默认为1。建议手动调整为4～6，1～3为历史版本，不推荐。
        # 参数值：
        # 4：在自建图库中搜索相同原图，可支持裁剪、翻转、调色、加水印后的图片搜索，适用于图片版权保护、原图查询等场景。
        # 5：在自建图库中搜索相同或相似的商品图片，适用于商品分类、检索、推荐等电商场景。
        # 6：在自建图片库中搜索与输入图片高度相似的图片，适用于相似图案、logo、纹理等图像元素的搜索。
        # @type GroupType: Integer
        # @param PicCount: 图库图片数量。
        # @type PicCount: Integer
        # @param CreateTime: 图库创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 图库更新时间。
        # @type UpdateTime: String

        attr_accessor :GroupId, :GroupName, :Brief, :MaxCapacity, :MaxQps, :GroupType, :PicCount, :CreateTime, :UpdateTime
        
        def initialize(groupid=nil, groupname=nil, brief=nil, maxcapacity=nil, maxqps=nil, grouptype=nil, piccount=nil, createtime=nil, updatetime=nil)
          @GroupId = groupid
          @GroupName = groupname
          @Brief = brief
          @MaxCapacity = maxcapacity
          @MaxQps = maxqps
          @GroupType = grouptype
          @PicCount = piccount
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @Brief = params['Brief']
          @MaxCapacity = params['MaxCapacity']
          @MaxQps = params['MaxQps']
          @GroupType = params['GroupType']
          @PicCount = params['PicCount']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 图片信息
      class ImageInfo < TencentCloud::Common::AbstractModel
        # @param EntityId: 图片名称。
        # @type EntityId: String
        # @param CustomContent: 用户自定义的内容。
        # @type CustomContent: String
        # @param Tags: 图片自定义标签，JSON格式。
        # @type Tags: String
        # @param PicName: 图片名称。
        # @type PicName: String
        # @param Score: 相似度。
        # @type Score: Integer

        attr_accessor :EntityId, :CustomContent, :Tags, :PicName, :Score
        
        def initialize(entityid=nil, customcontent=nil, tags=nil, picname=nil, score=nil)
          @EntityId = entityid
          @CustomContent = customcontent
          @Tags = tags
          @PicName = picname
          @Score = score
        end

        def deserialize(params)
          @EntityId = params['EntityId']
          @CustomContent = params['CustomContent']
          @Tags = params['Tags']
          @PicName = params['PicName']
          @Score = params['Score']
        end
      end

      # 图像主体区域坐标
      class ImageRect < TencentCloud::Common::AbstractModel
        # @param X: 左上角横坐标。
        # @type X: Integer
        # @param Y: 左上角纵坐标。
        # @type Y: Integer
        # @param Width: 宽度。
        # @type Width: Integer
        # @param Height: 高度。
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

      # 图片标签。
      class ImageTag < TencentCloud::Common::AbstractModel
        # @param Name: 标签内容。
        # @type Name: String
        # @param Confidence: 置信度范围在0-100之间。值越高，表示目标为相应结果的可能性越高。
        # @type Confidence: Float

        attr_accessor :Name, :Confidence
        
        def initialize(name=nil, confidence=nil)
          @Name = name
          @Confidence = confidence
        end

        def deserialize(params)
          @Name = params['Name']
          @Confidence = params['Confidence']
        end
      end

      # 百科词条信息
      class LemmaInfo < TencentCloud::Common::AbstractModel
        # @param LemmaTitle: 词条
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LemmaTitle: String
        # @param LemmaAbstract: 词条描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LemmaAbstract: String
        # @param Tag: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String

        attr_accessor :LemmaTitle, :LemmaAbstract, :Tag
        
        def initialize(lemmatitle=nil, lemmaabstract=nil, tag=nil)
          @LemmaTitle = lemmatitle
          @LemmaAbstract = lemmaabstract
          @Tag = tag
        end

        def deserialize(params)
          @LemmaTitle = params['LemmaTitle']
          @LemmaAbstract = params['LemmaAbstract']
          @Tag = params['Tag']
        end
      end

      # 检测到的主体在图片中的矩形框位置（四个顶点坐标）
      class Location < TencentCloud::Common::AbstractModel
        # @param XMin: 位置矩形框的左上角横坐标
        # @type XMin: Integer
        # @param YMin: 位置矩形框的左上角纵坐标
        # @type YMin: Integer
        # @param XMax: 位置矩形框的右下角横坐标
        # @type XMax: Integer
        # @param YMax: 位置矩形框的右下角纵坐标
        # @type YMax: Integer

        attr_accessor :XMin, :YMin, :XMax, :YMax
        
        def initialize(xmin=nil, ymin=nil, xmax=nil, ymax=nil)
          @XMin = xmin
          @YMin = ymin
          @XMax = xmax
          @YMax = ymax
        end

        def deserialize(params)
          @XMin = params['XMin']
          @YMin = params['YMin']
          @XMax = params['XMax']
          @YMax = params['YMax']
        end
      end

      # 图像的主体信息。
      class ObjectInfo < TencentCloud::Common::AbstractModel
        # @param Box: 图像主体区域。
        # @type Box: :class:`Tencentcloud::Tiia.v20190529.models.Box`
        # @param CategoryId: 主体类别ID。
        # @type CategoryId: Integer
        # @param Colors: 整张图颜色信息。
        # @type Colors: Array
        # @param Attributes: 属性信息。
        # @type Attributes: Array
        # @param AllBox: 图像的所有主体区域，置信度，以及主体区域类别ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllBox: Array

        attr_accessor :Box, :CategoryId, :Colors, :Attributes, :AllBox
        
        def initialize(box=nil, categoryid=nil, colors=nil, attributes=nil, allbox=nil)
          @Box = box
          @CategoryId = categoryid
          @Colors = colors
          @Attributes = attributes
          @AllBox = allbox
        end

        def deserialize(params)
          unless params['Box'].nil?
            @Box = Box.new
            @Box.deserialize(params['Box'])
          end
          @CategoryId = params['CategoryId']
          unless params['Colors'].nil?
            @Colors = []
            params['Colors'].each do |i|
              colorinfo_tmp = ColorInfo.new
              colorinfo_tmp.deserialize(i)
              @Colors << colorinfo_tmp
            end
          end
          unless params['Attributes'].nil?
            @Attributes = []
            params['Attributes'].each do |i|
              attribute_tmp = Attribute.new
              attribute_tmp.deserialize(i)
              @Attributes << attribute_tmp
            end
          end
          unless params['AllBox'].nil?
            @AllBox = []
            params['AllBox'].each do |i|
              box_tmp = Box.new
              box_tmp.deserialize(i)
              @AllBox << box_tmp
            end
          end
        end
      end

      # 检测到的单个商品结构体
      class Product < TencentCloud::Common::AbstractModel
        # @param Name: 图片中商品的三级分类识别结果，选取所有三级分类中的置信度最大者
        # @type Name: String
        # @param Parents: 三级商品分类对应的一级分类和二级分类，两级之间用“-”（中划线）隔开，例如商品名称是“硬盘”，那么Parents输出为“电脑、办公-电脑配件”
        # @type Parents: String
        # @param Confidence: 算法对于Name的置信度，0-100之间，值越高，表示对于Name越确定
        # @type Confidence: Integer
        # @param XMin: 商品坐标X轴的最小值
        # @type XMin: Integer
        # @param YMin: 商品坐标Y轴的最小值
        # @type YMin: Integer
        # @param XMax: 商品坐标X轴的最大值
        # @type XMax: Integer
        # @param YMax: 商品坐标Y轴的最大值
        # @type YMax: Integer

        attr_accessor :Name, :Parents, :Confidence, :XMin, :YMin, :XMax, :YMax
        
        def initialize(name=nil, parents=nil, confidence=nil, xmin=nil, ymin=nil, xmax=nil, ymax=nil)
          @Name = name
          @Parents = parents
          @Confidence = confidence
          @XMin = xmin
          @YMin = ymin
          @XMax = xmax
          @YMax = ymax
        end

        def deserialize(params)
          @Name = params['Name']
          @Parents = params['Parents']
          @Confidence = params['Confidence']
          @XMin = params['XMin']
          @YMin = params['YMin']
          @XMax = params['XMax']
          @YMax = params['YMax']
        end
      end

      # 图像识别出的商品的详细信息。
      # 当图像中检测到多个物品时，会对显著性最高的物品进行识别。
      class ProductInfo < TencentCloud::Common::AbstractModel
        # @param FindSKU: 1表示找到同款商品，以下字段为同款商品信息；
        # 0表示未找到同款商品， 具体商品信息为空（参考价格、名称、品牌等），仅提供商品类目和参考图片（商品库中找到的最相似图片，供参考）。
        # 是否找到同款的判断依据为Score分值，分值越大则同款的可能性越大。
        # @type FindSKU: Integer
        # @param Location: 本商品在图片中的坐标，表示为矩形框的四个顶点坐标。
        # @type Location: :class:`Tencentcloud::Tiia.v20190529.models.Location`
        # @param Name: 商品名称
        # @type Name: String
        # @param Brand: 商品品牌
        # @type Brand: String
        # @param Price: 参考价格，综合多个信息源，仅供参考。
        # @type Price: String
        # @param ProductCategory: 识别结果的商品类目。
        # 包含：鞋、图书音像、箱包、美妆个护、服饰、家电数码、玩具乐器、食品饮料、珠宝、家居家装、药品、酒水、绿植园艺、其他商品、非商品等。
        # 当类别为“非商品”时，除Location、Score和本字段之外的商品信息为空。
        # @type ProductCategory: String
        # @param Score: 输入图片中的主体物品和输出结果的相似度。分值越大，输出结果与输入图片是同款的可能性越高。
        # @type Score: Float
        # @param Image: 搜索到的商品配图URL。
        # @type Image: String
        # @param LemmaInfoList: 百科词条列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LemmaInfoList: Array

        attr_accessor :FindSKU, :Location, :Name, :Brand, :Price, :ProductCategory, :Score, :Image, :LemmaInfoList
        
        def initialize(findsku=nil, location=nil, name=nil, brand=nil, price=nil, productcategory=nil, score=nil, image=nil, lemmainfolist=nil)
          @FindSKU = findsku
          @Location = location
          @Name = name
          @Brand = brand
          @Price = price
          @ProductCategory = productcategory
          @Score = score
          @Image = image
          @LemmaInfoList = lemmainfolist
        end

        def deserialize(params)
          @FindSKU = params['FindSKU']
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
          @Name = params['Name']
          @Brand = params['Brand']
          @Price = params['Price']
          @ProductCategory = params['ProductCategory']
          @Score = params['Score']
          @Image = params['Image']
          unless params['LemmaInfoList'].nil?
            @LemmaInfoList = []
            params['LemmaInfoList'].each do |i|
              lemmainfo_tmp = LemmaInfo.new
              lemmainfo_tmp.deserialize(i)
              @LemmaInfoList << lemmainfo_tmp
            end
          end
        end
      end

      # RecognizeCarPro请求参数结构体
      class RecognizeCarProRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # **注意：图片需要base64编码，并且要去掉编码头部。**
        # 支持的图片格式：PNG、JPG、JPEG、BMP，暂不支持GIF格式。支持的图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # RecognizeCarPro返回参数结构体
      class RecognizeCarProResponse < TencentCloud::Common::AbstractModel
        # @param CarCoords: 汽车的四个矩形顶点坐标，如果图片中存在多辆车，则输出最大车辆的坐标。
        # @type CarCoords: Array
        # @param CarTags: 车辆属性识别的结果数组，如果识别到多辆车，则会输出每辆车的top1结果。
        # 注意：置信度是指车牌信息置信度。
        # @type CarTags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CarCoords, :CarTags, :RequestId
        
        def initialize(carcoords=nil, cartags=nil, requestid=nil)
          @CarCoords = carcoords
          @CarTags = cartags
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CarCoords'].nil?
            @CarCoords = []
            params['CarCoords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @CarCoords << coord_tmp
            end
          end
          unless params['CarTags'].nil?
            @CarTags = []
            params['CarTags'].each do |i|
              cartagitem_tmp = CarTagItem.new
              cartagitem_tmp.deserialize(i)
              @CarTags << cartagitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # RecognizeCar请求参数结构体
      class RecognizeCarRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片URL地址。
        # 图片限制：
        # • 图片格式：PNG、JPG、JPEG。
        # • 图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # 建议：
        # • 图片像素：大于50*50像素，否则影响识别效果；
        # • 长宽比：长边：短边<5；
        # 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        # **注意：图片需要base64编码，并且要去掉编码头部。**
        # 支持的图片格式：PNG、JPG、JPEG、BMP，暂不支持GIF格式。支持的图片大小：所下载图片经Base64编码后不超过4M。图片下载时间不超过3秒。
        # @type ImageBase64: String

        attr_accessor :ImageUrl, :ImageBase64
        
        def initialize(imageurl=nil, imagebase64=nil)
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
        end
      end

      # RecognizeCar返回参数结构体
      class RecognizeCarResponse < TencentCloud::Common::AbstractModel
        # @param CarCoords: 汽车的四个矩形顶点坐标，如果图片中存在多辆车，则输出最大车辆的坐标。
        # @type CarCoords: Array
        # @param CarTags: 车辆属性识别的结果数组，如果识别到多辆车，则会输出每辆车的top1结果。
        # @type CarTags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CarCoords, :CarTags, :RequestId
        
        def initialize(carcoords=nil, cartags=nil, requestid=nil)
          @CarCoords = carcoords
          @CarTags = cartags
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CarCoords'].nil?
            @CarCoords = []
            params['CarCoords'].each do |i|
              coord_tmp = Coord.new
              coord_tmp.deserialize(i)
              @CarCoords << coord_tmp
            end
          end
          unless params['CarTags'].nil?
            @CarTags = []
            params['CarTags'].each do |i|
              cartagitem_tmp = CarTagItem.new
              cartagitem_tmp.deserialize(i)
              @CarTags << cartagitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 具体坐标，可用来判断边界
      class Rect < TencentCloud::Common::AbstractModel
        # @param X: x轴坐标
        # @type X: Integer
        # @param Y: y轴坐标
        # @type Y: Integer
        # @param Width: (x,y)坐标距离长度
        # @type Width: Integer
        # @param Height: (x,y)坐标距离高度
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

      # 检测到的图片中的商品位置和品类预测。
      # 当图片中存在多个商品时，输出多组坐标，按照__显著性__排序（综合考虑面积、是否在中心、检测算法置信度）。
      # 最多可以输出__3组__检测结果。
      class RegionDetected < TencentCloud::Common::AbstractModel
        # @param Category: 商品的品类预测结果。
        # 包含：鞋、图书音像、箱包、美妆个护、服饰、家电数码、玩具乐器、食品饮料、珠宝、家居家装、药品、酒水、绿植园艺、其他商品、非商品等。
        # @type Category: String
        # @param CategoryScore: 商品品类预测的置信度
        # @type CategoryScore: Float
        # @param Location: 检测到的主体在图片中的坐标，表示为矩形框的四个顶点坐标
        # @type Location: :class:`Tencentcloud::Tiia.v20190529.models.Location`

        attr_accessor :Category, :CategoryScore, :Location
        
        def initialize(category=nil, categoryscore=nil, location=nil)
          @Category = category
          @CategoryScore = categoryscore
          @Location = location
        end

        def deserialize(params)
          @Category = params['Category']
          @CategoryScore = params['CategoryScore']
          unless params['Location'].nil?
            @Location = Location.new
            @Location.deserialize(params['Location'])
          end
        end
      end

      # SearchImage请求参数结构体
      class SearchImageRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 图库名称。
        # @type GroupId: String
        # @param ImageUrl: 图片的 Url 。
        # ImageUrl和ImageBase64必须提供一个，如果都提供，只使用ImageUrl。
        # 图片限制：
        # • 图片格式：支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # • 图片大小：对应图片 base64 编码后大小不可超过5M。图片分辨率不超过4096\*4096。
        # • 如果在商品图像搜索中开启主体识别，分辨率不超过2000\*2000，图片长宽比小于10。
        # 建议：
        # • 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的Url速度和稳定性可能受一定影响。
        # @type ImageUrl: String
        # @param ImageBase64: 图片 base64 数据。
        # ImageUrl和ImageBase64必须提供一个，如果都提供，只使用ImageUrl。
        # 图片限制：
        # • 图片格式：支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        # • 图片大小：base64 编码后大小不可超过5M。图片分辨率不超过4096\*4096。
        # • 如果在商品图像搜索中开启主体识别，分辨率不超过2000\*2000，图片长宽比小于10。
        # @type ImageBase64: String
        # @param Limit: 返回结果的数量，默认值为10，最大值为100。
        # 按照相似度分数由高到低排序。
        # **<font color=#1E90FF>注意：服务类型为相似图像搜索时返回数量限制为1，即返回top1的结果。</font>**
        # @type Limit: Integer
        # @param Offset: 返回结果的起始序号，默认值为0。
        # @type Offset: Integer
        # @param MatchThreshold: 匹配阈值。
        # 只有图片相似度分数超过MatchThreshold值的结果才会返回。
        # 默认值：
        # • 相同图像搜索：50。
        # • 商品图像搜索：28。
        # • 相似图像搜索：56。
        # 建议：
        # 可以手动调整MatchThreshold值来控制输出结果的范围。入股发现无检索结果，建议调整为较低的阈值。
        # @type MatchThreshold: Integer
        # @param Filter: 标签过滤条件。
        # 针对创建图片时提交的Tags信息进行条件过滤。支持>、>=、 <、 <=、=，!=，多个条件之间支持AND和OR进行连接。
        # @type Filter: String
        # @param ImageRect: 图像主体区域。
        # 若设置主体区域，提取指定的区域进行检索。
        # @type ImageRect: :class:`Tencentcloud::Tiia.v20190529.models.ImageRect`
        # @param EnableDetect: 是否需要启用主体识别，默认为**TRUE** 。
        # • 为**TRUE**时，启用主体识别，返回主体信息。若没有指定**ImageRect**，自动提取最大面积主体进行检索并进行主体识别。主体识别结果可在**Response中**获取。
        # • 为**FALSE**时，不启用主体识别，不返回主体信息。若没有指定**ImageRect**，以整张图检索图片。
        # **<font color=#1E90FF>注意：仅服务类型为商品图像搜索时才生效。</font>**
        # @type EnableDetect: Boolean
        # @param CategoryId: 图像类目ID。
        # 若设置类目ID，提取以下类目的主体进行检索。
        # 类目取值说明：
        # 0：上衣。
        # 1：裙装。
        # 2：下装。
        # 3：包。
        # 4：鞋。
        # 5：配饰。
        # **<font color=#1E90FF>注意：仅服务类型为商品图像搜索时才生效。</font>**
        # @type CategoryId: Integer

        attr_accessor :GroupId, :ImageUrl, :ImageBase64, :Limit, :Offset, :MatchThreshold, :Filter, :ImageRect, :EnableDetect, :CategoryId
        
        def initialize(groupid=nil, imageurl=nil, imagebase64=nil, limit=nil, offset=nil, matchthreshold=nil, filter=nil, imagerect=nil, enabledetect=nil, categoryid=nil)
          @GroupId = groupid
          @ImageUrl = imageurl
          @ImageBase64 = imagebase64
          @Limit = limit
          @Offset = offset
          @MatchThreshold = matchthreshold
          @Filter = filter
          @ImageRect = imagerect
          @EnableDetect = enabledetect
          @CategoryId = categoryid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @ImageUrl = params['ImageUrl']
          @ImageBase64 = params['ImageBase64']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @MatchThreshold = params['MatchThreshold']
          @Filter = params['Filter']
          unless params['ImageRect'].nil?
            @ImageRect = ImageRect.new
            @ImageRect.deserialize(params['ImageRect'])
          end
          @EnableDetect = params['EnableDetect']
          @CategoryId = params['CategoryId']
        end
      end

      # SearchImage返回参数结构体
      class SearchImageResponse < TencentCloud::Common::AbstractModel
        # @param Count: 返回结果数量。
        # @type Count: Integer
        # @param ImageInfos: 图片信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageInfos: Array
        # @param Object: 输入图的主体信息。
        # 若启用主体识别且在请求中指定了类目ID或主体区域，以指定的主体为准。若启用主体识别且没有指定，以最大面积主体为准。
        # **<font color=#1E90FF>注意：仅服务类型为商品图像搜索时才生效。</font>**
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Object: :class:`Tencentcloud::Tiia.v20190529.models.ObjectInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :ImageInfos, :Object, :RequestId
        
        def initialize(count=nil, imageinfos=nil, object=nil, requestid=nil)
          @Count = count
          @ImageInfos = imageinfos
          @Object = object
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          unless params['ImageInfos'].nil?
            @ImageInfos = []
            params['ImageInfos'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @ImageInfos << imageinfo_tmp
            end
          end
          unless params['Object'].nil?
            @Object = ObjectInfo.new
            @Object.deserialize(params['Object'])
          end
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

