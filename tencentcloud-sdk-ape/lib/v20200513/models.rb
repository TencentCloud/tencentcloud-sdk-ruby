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
  module Ape
    module V20200513
      # 授权人信息
      class AuthInfo < TencentCloud::Common::AbstractModel
        # @param Id: 主键
        # @type Id: String
        # @param Name: 授权人名称
        # @type Name: String
        # @param Code: 身份证号/社会信用代码
        # @type Code: String
        # @param Type: 授权人类型
        # @type Type: Integer
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :Id, :Name, :Code, :Type, :CreateTime
        
        def initialize(id=nil, name=nil, code=nil, type=nil, createtime=nil)
          @Id = id
          @Name = name
          @Code = code
          @Type = type
          @CreateTime = createtime
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Code = params['Code']
          @Type = params['Type']
          @CreateTime = params['CreateTime']
        end
      end

      # BatchDescribeOrderCertificate请求参数结构体
      class BatchDescribeOrderCertificateRequest < TencentCloud::Common::AbstractModel
        # @param OrderIds: 要下载授权书的订单id
        # @type OrderIds: Array

        attr_accessor :OrderIds
        
        def initialize(orderids=nil)
          @OrderIds = orderids
        end

        def deserialize(params)
          @OrderIds = params['OrderIds']
        end
      end

      # BatchDescribeOrderCertificate返回参数结构体
      class BatchDescribeOrderCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateUrls: 授权书的下载地址
        # @type CertificateUrls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateUrls, :RequestId
        
        def initialize(certificateurls=nil, requestid=nil)
          @CertificateUrls = certificateurls
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateUrls = params['CertificateUrls']
          @RequestId = params['RequestId']
        end
      end

      # BatchDescribeOrderImage请求参数结构体
      class BatchDescribeOrderImageRequest < TencentCloud::Common::AbstractModel
        # @param OrderIds: 要下载图片的订单id
        # @type OrderIds: Array

        attr_accessor :OrderIds
        
        def initialize(orderids=nil)
          @OrderIds = orderids
        end

        def deserialize(params)
          @OrderIds = params['OrderIds']
        end
      end

      # BatchDescribeOrderImage返回参数结构体
      class BatchDescribeOrderImageResponse < TencentCloud::Common::AbstractModel
        # @param ImageUrls: 图片的下载地址
        # @type ImageUrls: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageUrls, :RequestId
        
        def initialize(imageurls=nil, requestid=nil)
          @ImageUrls = imageurls
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageUrls = params['ImageUrls']
          @RequestId = params['RequestId']
        end
      end

      # CreateOrderAndPay请求参数结构体
      class CreateOrderAndPayRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: 图片ID
        # @type ImageId: Integer
        # @param AuthUserId: 授权人ID
        # @type AuthUserId: String
        # @param MarshalId: 售卖组合id
        # @type MarshalId: Integer

        attr_accessor :ImageId, :AuthUserId, :MarshalId
        
        def initialize(imageid=nil, authuserid=nil, marshalid=nil)
          @ImageId = imageid
          @AuthUserId = authuserid
          @MarshalId = marshalid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @AuthUserId = params['AuthUserId']
          @MarshalId = params['MarshalId']
        end
      end

      # CreateOrderAndPay返回参数结构体
      class CreateOrderAndPayResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: 订单ID
        # @type OrderId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :RequestId
        
        def initialize(orderid=nil, requestid=nil)
          @OrderId = orderid
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAuthUsers请求参数结构体
      class DescribeAuthUsersRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 分页大小
        # @type Limit: Integer
        # @param Offset: 页偏移量
        # @type Offset: Integer

        attr_accessor :Limit, :Offset
        
        def initialize(limit=nil, offset=nil)
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAuthUsers返回参数结构体
      class DescribeAuthUsersResponse < TencentCloud::Common::AbstractModel
        # @param Users: 授权人信息数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Users: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param OldUser: 是否是老策略用户
        # @type OldUser: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Users, :TotalCount, :OldUser, :RequestId
        
        def initialize(users=nil, totalcount=nil, olduser=nil, requestid=nil)
          @Users = users
          @TotalCount = totalcount
          @OldUser = olduser
          @RequestId = requestid
        end

        def deserialize(params)
          @Users = params['Users']
          @TotalCount = params['TotalCount']
          @OldUser = params['OldUser']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImage请求参数结构体
      class DescribeImageRequest < TencentCloud::Common::AbstractModel
        # @param ImageId: 图片ID
        # @type ImageId: Integer

        attr_accessor :ImageId
        
        def initialize(imageid=nil)
          @ImageId = imageid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
        end
      end

      # DescribeImage返回参数结构体
      class DescribeImageResponse < TencentCloud::Common::AbstractModel
        # @param ImageId: 图片ID
        # @type ImageId: Integer
        # @param Title: 图片标题
        # @type Title: String
        # @param Description: 图片描述
        # @type Description: String
        # @param PreviewUrl: 图片预览链接
        # @type PreviewUrl: String
        # @param ThumbUrl: 图片缩略图
        # @type ThumbUrl: String
        # @param Vendor: 图片供应商
        # @type Vendor: String
        # @param Marshals: 图片售卖组合信息
        # @type Marshals: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageId, :Title, :Description, :PreviewUrl, :ThumbUrl, :Vendor, :Marshals, :RequestId
        
        def initialize(imageid=nil, title=nil, description=nil, previewurl=nil, thumburl=nil, vendor=nil, marshals=nil, requestid=nil)
          @ImageId = imageid
          @Title = title
          @Description = description
          @PreviewUrl = previewurl
          @ThumbUrl = thumburl
          @Vendor = vendor
          @Marshals = marshals
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @Title = params['Title']
          @Description = params['Description']
          @PreviewUrl = params['PreviewUrl']
          @ThumbUrl = params['ThumbUrl']
          @Vendor = params['Vendor']
          @Marshals = params['Marshals']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImages请求参数结构体
      class DescribeImagesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 页偏移量
        # @type Offset: Integer
        # @param Limit: 页大小
        # @type Limit: Integer
        # @param Keyword: 搜索关键字
        # @type Keyword: String
        # @param Orientation: 构图方式，可选以下值：horizontal、vertical、square，分别代表以下含义：横图、竖图、方图
        # @type Orientation: String
        # @param ImageSenseType: 图片类型，可选以下值：照片、插画
        # @type ImageSenseType: String

        attr_accessor :Offset, :Limit, :Keyword, :Orientation, :ImageSenseType
        
        def initialize(offset=nil, limit=nil, keyword=nil, orientation=nil, imagesensetype=nil)
          @Offset = offset
          @Limit = limit
          @Keyword = keyword
          @Orientation = orientation
          @ImageSenseType = imagesensetype
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Keyword = params['Keyword']
          @Orientation = params['Orientation']
          @ImageSenseType = params['ImageSenseType']
        end
      end

      # DescribeImages返回参数结构体
      class DescribeImagesResponse < TencentCloud::Common::AbstractModel
        # @param Offset: 页偏移量
        # @type Offset: Integer
        # @param Limit: 页大小
        # @type Limit: Integer
        # @param Total: 总条数
        # @type Total: Integer
        # @param HaveMore: 是否有下一页
        # @type HaveMore: Boolean
        # @param Items: 图片信息数组
        # @type Items: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Offset, :Limit, :Total, :HaveMore, :Items, :RequestId
        
        def initialize(offset=nil, limit=nil, total=nil, havemore=nil, items=nil, requestid=nil)
          @Offset = offset
          @Limit = limit
          @Total = total
          @HaveMore = havemore
          @Items = items
          @RequestId = requestid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Total = params['Total']
          @HaveMore = params['HaveMore']
          @Items = params['Items']
          @RequestId = params['RequestId']
        end
      end

      # 图片信息条目
      class ImageItem < TencentCloud::Common::AbstractModel
        # @param ImageId: 图片ID
        # @type ImageId: Integer
        # @param Title: 图片标题
        # @type Title: String
        # @param Description: 图片描述
        # @type Description: String
        # @param PreviewUrl: 图片预览链接
        # @type PreviewUrl: String
        # @param ThumbUrl: 图片缩略图
        # @type ThumbUrl: String
        # @param Vendor: 图片供应商
        # @type Vendor: String

        attr_accessor :ImageId, :Title, :Description, :PreviewUrl, :ThumbUrl, :Vendor
        
        def initialize(imageid=nil, title=nil, description=nil, previewurl=nil, thumburl=nil, vendor=nil)
          @ImageId = imageid
          @Title = title
          @Description = description
          @PreviewUrl = previewurl
          @ThumbUrl = thumburl
          @Vendor = vendor
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @Title = params['Title']
          @Description = params['Description']
          @PreviewUrl = params['PreviewUrl']
          @ThumbUrl = params['ThumbUrl']
          @Vendor = params['Vendor']
        end
      end

      # 图片售卖组合信息
      class ImageMarshal < TencentCloud::Common::AbstractModel
        # @param MarshalId: 售卖组合唯一标识
        # @type MarshalId: Integer
        # @param Height: 图片高度
        # @type Height: Integer
        # @param Width: 图片宽度
        # @type Width: Integer
        # @param Size: 图片大小
        # @type Size: Integer
        # @param Format: 图片格式
        # @type Format: String
        # @param Price: 图片价格(单位:分)
        # @type Price: Integer
        # @param LicenseScope: 授权范围
        # @type LicenseScope: String
        # @param IsVip: 是否支持VIP购买
        # @type IsVip: Boolean

        attr_accessor :MarshalId, :Height, :Width, :Size, :Format, :Price, :LicenseScope, :IsVip
        
        def initialize(marshalid=nil, height=nil, width=nil, size=nil, format=nil, price=nil, licensescope=nil, isvip=nil)
          @MarshalId = marshalid
          @Height = height
          @Width = width
          @Size = size
          @Format = format
          @Price = price
          @LicenseScope = licensescope
          @IsVip = isvip
        end

        def deserialize(params)
          @MarshalId = params['MarshalId']
          @Height = params['Height']
          @Width = params['Width']
          @Size = params['Size']
          @Format = params['Format']
          @Price = params['Price']
          @LicenseScope = params['LicenseScope']
          @IsVip = params['IsVip']
        end
      end

    end
  end
end

