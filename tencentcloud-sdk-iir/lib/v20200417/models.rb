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
  module Iir
    module V20200417
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

      # 图像识别出的商品的详细信息。
      # 当图像中检测到多个物品时，会对显著性最高的物品进行识别。
      class ProductInfo < TencentCloud::Common::AbstractModel
        # @param FindSKU: 1表示找到同款商品，以下字段为同款商品信息；
        # 0表示未找到同款商品， 具体商品信息为空（参考价格、名称、品牌等），仅提供商品类目。
        # 是否找到同款的判断依据为Score分值，分值越大则同款的可能性越大。
        # @type FindSKU: Integer
        # @param Location: 本商品在图片中的坐标，表示为矩形框的四个顶点坐标。
        # @type Location: :class:`Tencentcloud::Iir.v20200417.models.Location`
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
        # @param Image: 搜索到的商品配图URL
        # @type Image: String

        attr_accessor :FindSKU, :Location, :Name, :Brand, :Price, :ProductCategory, :Score, :Image
        
        def initialize(findsku=nil, location=nil, name=nil, brand=nil, price=nil, productcategory=nil, score=nil, image=nil)
          @FindSKU = findsku
          @Location = location
          @Name = name
          @Brand = brand
          @Price = price
          @ProductCategory = productcategory
          @Score = score
          @Image = image
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
        end
      end

      # RecognizeProduct请求参数结构体
      class RecognizeProductRequest < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片限制：内测版仅支持jpg、jpeg，图片大小不超过1M，分辨率在25万到100万之间。
        # 建议先对图片进行压缩，以便提升处理速度。
        # @type ImageUrl: String
        # @param ImageBase64: 图片经过base64编码的内容。最大不超过1M，分辨率在25万到100万之间。
        # 与ImageUrl同时存在时优先使用ImageUrl字段。
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

      # RecognizeProduct返回参数结构体
      class RecognizeProductResponse < TencentCloud::Common::AbstractModel
        # @param RegionDetected: 检测到的图片中的商品位置和品类预测。
        # 当图片中存在多个商品时，输出多组坐标，按照__显著性__排序（综合考虑面积、是否在中心、检测算法置信度）。
        # 最多可以输出__3组__检测结果。
        # @type RegionDetected: Array
        # @param ProductInfo: 图像识别出的商品的详细信息。
        # 当图像中检测到多个物品时，会对显著性最高的进行识别。
        # @type ProductInfo: :class:`Tencentcloud::Iir.v20200417.models.ProductInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RegionDetected, :ProductInfo, :RequestId
        
        def initialize(regiondetected=nil, productinfo=nil, requestid=nil)
          @RegionDetected = regiondetected
          @ProductInfo = productinfo
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
          @RequestId = params['RequestId']
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
        # @type Location: :class:`Tencentcloud::Iir.v20200417.models.Location`

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

    end
  end
end

