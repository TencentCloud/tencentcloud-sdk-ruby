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

      # CreateOrderAndDownloads请求参数结构体
      class CreateOrderAndDownloadsRequest < TencentCloud::Common::AbstractModel
        # @param ImageInfos: ImageId必填，单张购买，所有必填，会员身份可以省略部分参数
        # @type ImageInfos: Array

        attr_accessor :ImageInfos
        
        def initialize(imageinfos=nil)
          @ImageInfos = imageinfos
        end

        def deserialize(params)
          unless params['ImageInfos'].nil?
            @ImageInfos = []
            params['ImageInfos'].each do |i|
              imageinfo_tmp = ImageInfo.new
              imageinfo_tmp.deserialize(i)
              @ImageInfos << imageinfo_tmp
            end
          end
        end
      end

      # CreateOrderAndDownloads返回参数结构体
      class CreateOrderAndDownloadsResponse < TencentCloud::Common::AbstractModel
        # @param DownloadInfos: 成功核销后可以获取图片基本信息和原图地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadInfos: Array
        # @param TotalCount: 可下载图片数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadInfos, :TotalCount, :RequestId
        
        def initialize(downloadinfos=nil, totalcount=nil, requestid=nil)
          @DownloadInfos = downloadinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DownloadInfos'].nil?
            @DownloadInfos = []
            params['DownloadInfos'].each do |i|
              downloadinfo_tmp = DownloadInfo.new
              downloadinfo_tmp.deserialize(i)
              @DownloadInfos << downloadinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
          unless params['Users'].nil?
            @Users = []
            params['Users'].each do |i|
              authinfo_tmp = AuthInfo.new
              authinfo_tmp.deserialize(i)
              @Users << authinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @OldUser = params['OldUser']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDownloadInfos请求参数结构体
      class DescribeDownloadInfosRequest < TencentCloud::Common::AbstractModel
        # @param Limit: 默认10
        # @type Limit: Integer
        # @param Offset: 默认0
        # @type Offset: Integer
        # @param BeginTime: 开始时间晚于指定时间
        # @type BeginTime: String
        # @param EndTime: 结束时间早于指定时间
        # @type EndTime: String
        # @param ImageIds: 无效值，过滤结果为空
        # @type ImageIds: Array

        attr_accessor :Limit, :Offset, :BeginTime, :EndTime, :ImageIds
        
        def initialize(limit=nil, offset=nil, begintime=nil, endtime=nil, imageids=nil)
          @Limit = limit
          @Offset = offset
          @BeginTime = begintime
          @EndTime = endtime
          @ImageIds = imageids
        end

        def deserialize(params)
          @Limit = params['Limit']
          @Offset = params['Offset']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @ImageIds = params['ImageIds']
        end
      end

      # DescribeDownloadInfos返回参数结构体
      class DescribeDownloadInfosResponse < TencentCloud::Common::AbstractModel
        # @param DownloadInfos: 核销下载记录
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadInfos: Array
        # @param TotalCount: 总记录数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadInfos, :TotalCount, :RequestId
        
        def initialize(downloadinfos=nil, totalcount=nil, requestid=nil)
          @DownloadInfos = downloadinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DownloadInfos'].nil?
            @DownloadInfos = []
            params['DownloadInfos'].each do |i|
              downloadinfo_tmp = DownloadInfo.new
              downloadinfo_tmp.deserialize(i)
              @DownloadInfos << downloadinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param Width: 宽
        # @type Width: Integer
        # @param Height: 高
        # @type Height: Integer
        # @param ImageFormat: 图片格式 jpg/eps/psd/...
        # @type ImageFormat: String
        # @param ImageSenseType: 图片类型 摄影图片、插画、漫画、图表、矢量、psd、全景、gif、模板
        # @type ImageSenseType: String
        # @param Keywords: 关键词，多关键词用空格分隔
        # @type Keywords: String
        # @param LayeredGalleryId: 分层图库id
        # @type LayeredGalleryId: Integer
        # @param Orientation: 构图方式：horizontal:横图、vertical:竖图、square:方图
        # @type Orientation: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageId, :Title, :Description, :PreviewUrl, :ThumbUrl, :Vendor, :Marshals, :Width, :Height, :ImageFormat, :ImageSenseType, :Keywords, :LayeredGalleryId, :Orientation, :RequestId
        
        def initialize(imageid=nil, title=nil, description=nil, previewurl=nil, thumburl=nil, vendor=nil, marshals=nil, width=nil, height=nil, imageformat=nil, imagesensetype=nil, keywords=nil, layeredgalleryid=nil, orientation=nil, requestid=nil)
          @ImageId = imageid
          @Title = title
          @Description = description
          @PreviewUrl = previewurl
          @ThumbUrl = thumburl
          @Vendor = vendor
          @Marshals = marshals
          @Width = width
          @Height = height
          @ImageFormat = imageformat
          @ImageSenseType = imagesensetype
          @Keywords = keywords
          @LayeredGalleryId = layeredgalleryid
          @Orientation = orientation
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @Title = params['Title']
          @Description = params['Description']
          @PreviewUrl = params['PreviewUrl']
          @ThumbUrl = params['ThumbUrl']
          @Vendor = params['Vendor']
          unless params['Marshals'].nil?
            @Marshals = []
            params['Marshals'].each do |i|
              imagemarshal_tmp = ImageMarshal.new
              imagemarshal_tmp.deserialize(i)
              @Marshals << imagemarshal_tmp
            end
          end
          @Width = params['Width']
          @Height = params['Height']
          @ImageFormat = params['ImageFormat']
          @ImageSenseType = params['ImageSenseType']
          @Keywords = params['Keywords']
          @LayeredGalleryId = params['LayeredGalleryId']
          @Orientation = params['Orientation']
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
        # @param LayeredGalleryIds: 分层图库id数组，可选以下数值：1(基础)，2(精选)，3(高级)
        # @type LayeredGalleryIds: Array

        attr_accessor :Offset, :Limit, :Keyword, :Orientation, :ImageSenseType, :LayeredGalleryIds
        
        def initialize(offset=nil, limit=nil, keyword=nil, orientation=nil, imagesensetype=nil, layeredgalleryids=nil)
          @Offset = offset
          @Limit = limit
          @Keyword = keyword
          @Orientation = orientation
          @ImageSenseType = imagesensetype
          @LayeredGalleryIds = layeredgalleryids
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Keyword = params['Keyword']
          @Orientation = params['Orientation']
          @ImageSenseType = params['ImageSenseType']
          @LayeredGalleryIds = params['LayeredGalleryIds']
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
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              imageitem_tmp = ImageItem.new
              imageitem_tmp.deserialize(i)
              @Items << imageitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 图片下载信息
      class DownloadInfo < TencentCloud::Common::AbstractModel
        # @param ImageInfo: 图片基础信息
        # @type ImageInfo: :class:`Tencentcloud::Ape.v20200513.models.ImageInfo`
        # @param ImageUrl: 图片原图URL
        # @type ImageUrl: String
        # @param ImageThumbUrl: 图片缩略图URL
        # @type ImageThumbUrl: String
        # @param OrderId: 订单Id
        # @type OrderId: String
        # @param OrderCreateTime: 订单创建时间
        # @type OrderCreateTime: String
        # @param DownloadId: 下载Id
        # @type DownloadId: String
        # @param DownloadTime: 下载时间
        # @type DownloadTime: String
        # @param ConsumeType: 图片购买类型，单张/会员
        # @type ConsumeType: Integer
        # @param FirstDownload: 是否首次下载
        # @type FirstDownload: Boolean

        attr_accessor :ImageInfo, :ImageUrl, :ImageThumbUrl, :OrderId, :OrderCreateTime, :DownloadId, :DownloadTime, :ConsumeType, :FirstDownload
        
        def initialize(imageinfo=nil, imageurl=nil, imagethumburl=nil, orderid=nil, ordercreatetime=nil, downloadid=nil, downloadtime=nil, consumetype=nil, firstdownload=nil)
          @ImageInfo = imageinfo
          @ImageUrl = imageurl
          @ImageThumbUrl = imagethumburl
          @OrderId = orderid
          @OrderCreateTime = ordercreatetime
          @DownloadId = downloadid
          @DownloadTime = downloadtime
          @ConsumeType = consumetype
          @FirstDownload = firstdownload
        end

        def deserialize(params)
          unless params['ImageInfo'].nil?
            @ImageInfo = ImageInfo.new
            @ImageInfo.deserialize(params['ImageInfo'])
          end
          @ImageUrl = params['ImageUrl']
          @ImageThumbUrl = params['ImageThumbUrl']
          @OrderId = params['OrderId']
          @OrderCreateTime = params['OrderCreateTime']
          @DownloadId = params['DownloadId']
          @DownloadTime = params['DownloadTime']
          @ConsumeType = params['ConsumeType']
          @FirstDownload = params['FirstDownload']
        end
      end

      # 图片基础信息
      class ImageInfo < TencentCloud::Common::AbstractModel
        # @param ImageId: 图片Id
        # @type ImageId: Integer
        # @param LicenseScopeId: 授权场景Id
        # @type LicenseScopeId: Integer
        # @param DimensionsNameId: 尺寸名称Id
        # @type DimensionsNameId: Integer
        # @param UserId: 平台用户标识
        # @type UserId: String
        # @param DownloadPrice: 平台用户下载图片购买的价格(单位:分)
        # @type DownloadPrice: Integer
        # @param DownloadType: 下载类型。匹配集合中的任意元素：
        # <li>Single: 单张购买下载</li>
        # <li>BasicEnterpriseMember: 企业基础会员下载</li>
        # <li>AdvancedEnterpriseMember: 企业高级会员下载</li>
        # <li>DistinguishedEnterpriseMember: 企业尊享会员下载</li>
        # @type DownloadType: String

        attr_accessor :ImageId, :LicenseScopeId, :DimensionsNameId, :UserId, :DownloadPrice, :DownloadType
        
        def initialize(imageid=nil, licensescopeid=nil, dimensionsnameid=nil, userid=nil, downloadprice=nil, downloadtype=nil)
          @ImageId = imageid
          @LicenseScopeId = licensescopeid
          @DimensionsNameId = dimensionsnameid
          @UserId = userid
          @DownloadPrice = downloadprice
          @DownloadType = downloadtype
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @LicenseScopeId = params['LicenseScopeId']
          @DimensionsNameId = params['DimensionsNameId']
          @UserId = params['UserId']
          @DownloadPrice = params['DownloadPrice']
          @DownloadType = params['DownloadType']
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
        # @param Keywords: 图片关键词
        # @type Keywords: String
        # @param Width: 宽
        # @type Width: Integer
        # @param Height: 高
        # @type Height: Integer

        attr_accessor :ImageId, :Title, :Description, :PreviewUrl, :ThumbUrl, :Vendor, :Keywords, :Width, :Height
        
        def initialize(imageid=nil, title=nil, description=nil, previewurl=nil, thumburl=nil, vendor=nil, keywords=nil, width=nil, height=nil)
          @ImageId = imageid
          @Title = title
          @Description = description
          @PreviewUrl = previewurl
          @ThumbUrl = thumburl
          @Vendor = vendor
          @Keywords = keywords
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @ImageId = params['ImageId']
          @Title = params['Title']
          @Description = params['Description']
          @PreviewUrl = params['PreviewUrl']
          @ThumbUrl = params['ThumbUrl']
          @Vendor = params['Vendor']
          @Keywords = params['Keywords']
          @Width = params['Width']
          @Height = params['Height']
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
        # @param LicenseScopeId: 授权范围id
        # @type LicenseScopeId: Integer
        # @param DimensionsName: 尺寸
        # @type DimensionsName: String
        # @param DimensionsNameId: 尺寸id
        # @type DimensionsNameId: Integer

        attr_accessor :MarshalId, :Height, :Width, :Size, :Format, :Price, :LicenseScope, :IsVip, :LicenseScopeId, :DimensionsName, :DimensionsNameId
        
        def initialize(marshalid=nil, height=nil, width=nil, size=nil, format=nil, price=nil, licensescope=nil, isvip=nil, licensescopeid=nil, dimensionsname=nil, dimensionsnameid=nil)
          @MarshalId = marshalid
          @Height = height
          @Width = width
          @Size = size
          @Format = format
          @Price = price
          @LicenseScope = licensescope
          @IsVip = isvip
          @LicenseScopeId = licensescopeid
          @DimensionsName = dimensionsname
          @DimensionsNameId = dimensionsnameid
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
          @LicenseScopeId = params['LicenseScopeId']
          @DimensionsName = params['DimensionsName']
          @DimensionsNameId = params['DimensionsNameId']
        end
      end

    end
  end
end

