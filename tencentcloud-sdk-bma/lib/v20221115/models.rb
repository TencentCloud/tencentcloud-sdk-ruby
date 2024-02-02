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
  module Bma
    module V20221115
      # 品牌响应数据
      class BrandData < TencentCloud::Common::AbstractModel
        # @param CompanyId: 品牌Id
        # @type CompanyId: Integer
        # @param CompanyName: 企业名称
        # @type CompanyName: String
        # @param BrandName: 品牌名称
        # @type BrandName: String
        # @param Phone: 联系电话
        # @type Phone: String
        # @param License: 营业执照
        # @type License: String
        # @param LicenseStatus: 营业执照审核状态
        # @type LicenseStatus: Integer
        # @param LicenseNote: 营业执照审核状态说明
        # @type LicenseNote: String
        # @param Authorization: 授权书
        # @type Authorization: String
        # @param AuthorizationStatus: 授权书审核状态
        # @type AuthorizationStatus: Integer
        # @param AuthorizationNote: 授权书审核状态说明
        # @type AuthorizationNote: String
        # @param Trademarks: 商标信息
        # @type Trademarks: Array
        # @param InsertTime: 新增时间
        # @type InsertTime: String
        # @param Services: 服务信息
        # @type Services: :class:`Tencentcloud::Bma.v20221115.models.ServiceData`
        # @param Uin: 账号id
        # @type Uin: String

        attr_accessor :CompanyId, :CompanyName, :BrandName, :Phone, :License, :LicenseStatus, :LicenseNote, :Authorization, :AuthorizationStatus, :AuthorizationNote, :Trademarks, :InsertTime, :Services, :Uin

        def initialize(companyid=nil, companyname=nil, brandname=nil, phone=nil, license=nil, licensestatus=nil, licensenote=nil, authorization=nil, authorizationstatus=nil, authorizationnote=nil, trademarks=nil, inserttime=nil, services=nil, uin=nil)
          @CompanyId = companyid
          @CompanyName = companyname
          @BrandName = brandname
          @Phone = phone
          @License = license
          @LicenseStatus = licensestatus
          @LicenseNote = licensenote
          @Authorization = authorization
          @AuthorizationStatus = authorizationstatus
          @AuthorizationNote = authorizationnote
          @Trademarks = trademarks
          @InsertTime = inserttime
          @Services = services
          @Uin = uin
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @CompanyName = params['CompanyName']
          @BrandName = params['BrandName']
          @Phone = params['Phone']
          @License = params['License']
          @LicenseStatus = params['LicenseStatus']
          @LicenseNote = params['LicenseNote']
          @Authorization = params['Authorization']
          @AuthorizationStatus = params['AuthorizationStatus']
          @AuthorizationNote = params['AuthorizationNote']
          unless params['Trademarks'].nil?
            @Trademarks = []
            params['Trademarks'].each do |i|
              trademarkdata_tmp = TrademarkData.new
              trademarkdata_tmp.deserialize(i)
              @Trademarks << trademarkdata_tmp
            end
          end
          @InsertTime = params['InsertTime']
          unless params['Services'].nil?
            @Services = ServiceData.new
            @Services.deserialize(params['Services'])
          end
          @Uin = params['Uin']
        end
      end

      # CreateBPBrand请求参数结构体
      class CreateBPBrandRequest < TencentCloud::Common::AbstractModel
        # @param BrandName: 品牌名称
        # @type BrandName: String
        # @param CompanyName: 企业名称
        # @type CompanyName: String
        # @param BrandLogo: 品牌logo
        # @type BrandLogo: String
        # @param Phone: 联系电话
        # @type Phone: String
        # @param License: 营业执照
        # @type License: String
        # @param Authorization: 授权书
        # @type Authorization: String
        # @param TrademarkNames: 商标名称
        # @type TrademarkNames: Array
        # @param Trademarks: 商标证明
        # @type Trademarks: Array
        # @param IsTransfers: 是否涉及转让: 0-不转让 1-转让
        # @type IsTransfers: Array
        # @param Transfers: 转让证明
        # @type Transfers: Array
        # @param ProtectURLs: 保护网址
        # @type ProtectURLs: Array
        # @param ProtectAPPs: 保护应用
        # @type ProtectAPPs: Array
        # @param ProtectOfficialAccounts: 保护公众号
        # @type ProtectOfficialAccounts: Array
        # @param ProtectMiniPrograms: 保护小程序
        # @type ProtectMiniPrograms: Array
        # @param APISource: 请求来源：0-反钓鱼 2-反假冒
        # @type APISource: Integer

        attr_accessor :BrandName, :CompanyName, :BrandLogo, :Phone, :License, :Authorization, :TrademarkNames, :Trademarks, :IsTransfers, :Transfers, :ProtectURLs, :ProtectAPPs, :ProtectOfficialAccounts, :ProtectMiniPrograms, :APISource

        def initialize(brandname=nil, companyname=nil, brandlogo=nil, phone=nil, license=nil, authorization=nil, trademarknames=nil, trademarks=nil, istransfers=nil, transfers=nil, protecturls=nil, protectapps=nil, protectofficialaccounts=nil, protectminiprograms=nil, apisource=nil)
          @BrandName = brandname
          @CompanyName = companyname
          @BrandLogo = brandlogo
          @Phone = phone
          @License = license
          @Authorization = authorization
          @TrademarkNames = trademarknames
          @Trademarks = trademarks
          @IsTransfers = istransfers
          @Transfers = transfers
          @ProtectURLs = protecturls
          @ProtectAPPs = protectapps
          @ProtectOfficialAccounts = protectofficialaccounts
          @ProtectMiniPrograms = protectminiprograms
          @APISource = apisource
        end

        def deserialize(params)
          @BrandName = params['BrandName']
          @CompanyName = params['CompanyName']
          @BrandLogo = params['BrandLogo']
          @Phone = params['Phone']
          @License = params['License']
          @Authorization = params['Authorization']
          @TrademarkNames = params['TrademarkNames']
          @Trademarks = params['Trademarks']
          @IsTransfers = params['IsTransfers']
          @Transfers = params['Transfers']
          @ProtectURLs = params['ProtectURLs']
          @ProtectAPPs = params['ProtectAPPs']
          @ProtectOfficialAccounts = params['ProtectOfficialAccounts']
          @ProtectMiniPrograms = params['ProtectMiniPrograms']
          @APISource = params['APISource']
        end
      end

      # CreateBPBrand返回参数结构体
      class CreateBPBrandResponse < TencentCloud::Common::AbstractModel
        # @param CompanyId: 企业id
        # @type CompanyId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyId, :RequestId

        def initialize(companyid=nil, requestid=nil)
          @CompanyId = companyid
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBPFakeAPPList请求参数结构体
      class CreateBPFakeAPPListRequest < TencentCloud::Common::AbstractModel
        # @param FakeAPPs: 批量模板
        # @type FakeAPPs: String

        attr_accessor :FakeAPPs

        def initialize(fakeapps=nil)
          @FakeAPPs = fakeapps
        end

        def deserialize(params)
          @FakeAPPs = params['FakeAPPs']
        end
      end

      # CreateBPFakeAPPList返回参数结构体
      class CreateBPFakeAPPListResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPFakeAPP请求参数结构体
      class CreateBPFakeAPPRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 企业id
        # @type CompanyId: Integer
        # @param FakeAPPName: 仿冒应用名称
        # @type FakeAPPName: String
        # @param APPChan: 仿冒来源
        # @type APPChan: String
        # @param FakeAPPPackageName: 仿冒应用包名
        # @type FakeAPPPackageName: String
        # @param FakeAPPCert: 仿冒应用证书
        # @type FakeAPPCert: String
        # @param FakeAPPSize: 仿冒应用大小
        # @type FakeAPPSize: String
        # @param FakeAPPSnapshots: 仿冒截图
        # @type FakeAPPSnapshots: Array
        # @param Note: 备注
        # @type Note: String

        attr_accessor :CompanyId, :FakeAPPName, :APPChan, :FakeAPPPackageName, :FakeAPPCert, :FakeAPPSize, :FakeAPPSnapshots, :Note

        def initialize(companyid=nil, fakeappname=nil, appchan=nil, fakeapppackagename=nil, fakeappcert=nil, fakeappsize=nil, fakeappsnapshots=nil, note=nil)
          @CompanyId = companyid
          @FakeAPPName = fakeappname
          @APPChan = appchan
          @FakeAPPPackageName = fakeapppackagename
          @FakeAPPCert = fakeappcert
          @FakeAPPSize = fakeappsize
          @FakeAPPSnapshots = fakeappsnapshots
          @Note = note
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @FakeAPPName = params['FakeAPPName']
          @APPChan = params['APPChan']
          @FakeAPPPackageName = params['FakeAPPPackageName']
          @FakeAPPCert = params['FakeAPPCert']
          @FakeAPPSize = params['FakeAPPSize']
          @FakeAPPSnapshots = params['FakeAPPSnapshots']
          @Note = params['Note']
        end
      end

      # CreateBPFakeAPP返回参数结构体
      class CreateBPFakeAPPResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPFakeURL请求参数结构体
      class CreateBPFakeURLRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 企业id
        # @type CompanyId: Integer
        # @param FakeURL: 仿冒网址
        # @type FakeURL: String
        # @param FakeURLSnapshots: 仿冒网址截图
        # @type FakeURLSnapshots: Array
        # @param Note: 备注
        # @type Note: String

        attr_accessor :CompanyId, :FakeURL, :FakeURLSnapshots, :Note

        def initialize(companyid=nil, fakeurl=nil, fakeurlsnapshots=nil, note=nil)
          @CompanyId = companyid
          @FakeURL = fakeurl
          @FakeURLSnapshots = fakeurlsnapshots
          @Note = note
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @FakeURL = params['FakeURL']
          @FakeURLSnapshots = params['FakeURLSnapshots']
          @Note = params['Note']
        end
      end

      # CreateBPFakeURL返回参数结构体
      class CreateBPFakeURLResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPFakeURLs请求参数结构体
      class CreateBPFakeURLsRequest < TencentCloud::Common::AbstractModel
        # @param FakeURLs: 批量模板
        # @type FakeURLs: String

        attr_accessor :FakeURLs

        def initialize(fakeurls=nil)
          @FakeURLs = fakeurls
        end

        def deserialize(params)
          @FakeURLs = params['FakeURLs']
        end
      end

      # CreateBPFakeURLs返回参数结构体
      class CreateBPFakeURLsResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPWhiteList请求参数结构体
      class CreateBPWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 企业Id
        # @type CompanyId: Integer
        # @param WhiteListType: 白名单类型：0-网站 1-应用 2-公众号 3-小程
        # @type WhiteListType: Integer
        # @param WhiteLists: 白名单名称
        # @type WhiteLists: Array
        # @param Remark: 白名单备注
        # @type Remark: String

        attr_accessor :CompanyId, :WhiteListType, :WhiteLists, :Remark

        def initialize(companyid=nil, whitelisttype=nil, whitelists=nil, remark=nil)
          @CompanyId = companyid
          @WhiteListType = whitelisttype
          @WhiteLists = whitelists
          @Remark = remark
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @WhiteListType = params['WhiteListType']
          @WhiteLists = params['WhiteLists']
          @Remark = params['Remark']
        end
      end

      # CreateBPWhiteList返回参数结构体
      class CreateBPWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # DeleteBPWhiteList请求参数结构体
      class DeleteBPWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param WhiteListId: 白名单id
        # @type WhiteListId: Integer

        attr_accessor :WhiteListId

        def initialize(whitelistid=nil)
          @WhiteListId = whitelistid
        end

        def deserialize(params)
          @WhiteListId = params['WhiteListId']
        end
      end

      # DeleteBPWhiteList返回参数结构体
      class DeleteBPWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBPBrands请求参数结构体
      class DescribeBPBrandsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBPBrands返回参数结构体
      class DescribeBPBrandsResponse < TencentCloud::Common::AbstractModel
        # @param Brands: 品牌信息
        # @type Brands: Array
        # @param NoticeStatus: 品牌审核通知栏状态：0 不显示 1 显示
        # @type NoticeStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Brands, :NoticeStatus, :RequestId

        def initialize(brands=nil, noticestatus=nil, requestid=nil)
          @Brands = brands
          @NoticeStatus = noticestatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Brands'].nil?
            @Brands = []
            params['Brands'].each do |i|
              branddata_tmp = BrandData.new
              branddata_tmp.deserialize(i)
              @Brands << branddata_tmp
            end
          end
          @NoticeStatus = params['NoticeStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPFakeAPPList请求参数结构体
      class DescribeBPFakeAPPListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param PageNumber: 页码
        # @type PageNumber: Integer

        attr_accessor :Filters, :PageSize, :PageNumber

        def initialize(filters=nil, pagesize=nil, pagenumber=nil)
          @Filters = filters
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeBPFakeAPPList返回参数结构体
      class DescribeBPFakeAPPListResponse < TencentCloud::Common::AbstractModel
        # @param FakeAPPList: 仿冒应用列表
        # @type FakeAPPList: Array
        # @param TotalCount: 仿冒应用总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FakeAPPList, :TotalCount, :RequestId

        def initialize(fakeapplist=nil, totalcount=nil, requestid=nil)
          @FakeAPPList = fakeapplist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FakeAPPList'].nil?
            @FakeAPPList = []
            params['FakeAPPList'].each do |i|
              fakeappdata_tmp = FakeAPPData.new
              fakeappdata_tmp.deserialize(i)
              @FakeAPPList << fakeappdata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPFakeURLs请求参数结构体
      class DescribeBPFakeURLsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param PageNumber: 页码
        # @type PageNumber: Integer

        attr_accessor :Filters, :PageSize, :PageNumber

        def initialize(filters=nil, pagesize=nil, pagenumber=nil)
          @Filters = filters
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeBPFakeURLs返回参数结构体
      class DescribeBPFakeURLsResponse < TencentCloud::Common::AbstractModel
        # @param FakeURLs: 仿冒网址列表
        # @type FakeURLs: Array
        # @param TotalCount: 仿冒网址总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FakeURLs, :TotalCount, :RequestId

        def initialize(fakeurls=nil, totalcount=nil, requestid=nil)
          @FakeURLs = fakeurls
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FakeURLs'].nil?
            @FakeURLs = []
            params['FakeURLs'].each do |i|
              fakeurldata_tmp = FakeURLData.new
              fakeurldata_tmp.deserialize(i)
              @FakeURLs << fakeurldata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPWhiteLists请求参数结构体
      class DescribeBPWhiteListsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤参数
        # @type Filters: Array
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param PageNumber: 页码
        # @type PageNumber: Integer

        attr_accessor :Filters, :PageSize, :PageNumber

        def initialize(filters=nil, pagesize=nil, pagenumber=nil)
          @Filters = filters
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeBPWhiteLists返回参数结构体
      class DescribeBPWhiteListsResponse < TencentCloud::Common::AbstractModel
        # @param WhiteLists: 白名单列表
        # @type WhiteLists: Array
        # @param TotalCount: 白名单总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WhiteLists, :TotalCount, :RequestId

        def initialize(whitelists=nil, totalcount=nil, requestid=nil)
          @WhiteLists = whitelists
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['WhiteLists'].nil?
            @WhiteLists = []
            params['WhiteLists'].each do |i|
              whitelistdata_tmp = WhiteListData.new
              whitelistdata_tmp.deserialize(i)
              @WhiteLists << whitelistdata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # 仿冒应用数据
      class FakeAPPData < TencentCloud::Common::AbstractModel
        # @param FakeAPPId: 仿冒应用id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeAPPId: Integer
        # @param BrandName: 品牌名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrandName: String
        # @param Origin: 仿冒来源：0-系统检测 1-人工举报
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: Integer
        # @param FakeAPPName: 仿冒应用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeAPPName: String
        # @param FakeAPPPackageName: 仿冒应用包名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeAPPPackageName: String
        # @param FakeAPPCert: 仿冒应用证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeAPPCert: String
        # @param FakeAPPSize: 仿冒应用大小
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeAPPSize: String
        # @param Heat: 热度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Heat: Integer
        # @param BlockStatus: 协助处置状态：0-未处置 1-处置中 2-处置成功 3-处置失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockStatus: Integer
        # @param BlockNote: 协助处置状态说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockNote: String
        # @param OfflineStatus: 关停状态：0-未关停 1-关停中 2-关停成功 3-关停失败 4-重复上架
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineStatus: Integer
        # @param OfflineNote: 关停状态说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineNote: String
        # @param DownloadWay: app来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadWay: String
        # @param InsertTime: 新增时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param DownloadCosURL: App下载链接
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DownloadCosURL: String
        # @param CertificationStatus: 资质证明状态:0-不可用 1-可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificationStatus: Integer

        attr_accessor :FakeAPPId, :BrandName, :Origin, :FakeAPPName, :FakeAPPPackageName, :FakeAPPCert, :FakeAPPSize, :Heat, :BlockStatus, :BlockNote, :OfflineStatus, :OfflineNote, :DownloadWay, :InsertTime, :DownloadCosURL, :CertificationStatus

        def initialize(fakeappid=nil, brandname=nil, origin=nil, fakeappname=nil, fakeapppackagename=nil, fakeappcert=nil, fakeappsize=nil, heat=nil, blockstatus=nil, blocknote=nil, offlinestatus=nil, offlinenote=nil, downloadway=nil, inserttime=nil, downloadcosurl=nil, certificationstatus=nil)
          @FakeAPPId = fakeappid
          @BrandName = brandname
          @Origin = origin
          @FakeAPPName = fakeappname
          @FakeAPPPackageName = fakeapppackagename
          @FakeAPPCert = fakeappcert
          @FakeAPPSize = fakeappsize
          @Heat = heat
          @BlockStatus = blockstatus
          @BlockNote = blocknote
          @OfflineStatus = offlinestatus
          @OfflineNote = offlinenote
          @DownloadWay = downloadway
          @InsertTime = inserttime
          @DownloadCosURL = downloadcosurl
          @CertificationStatus = certificationstatus
        end

        def deserialize(params)
          @FakeAPPId = params['FakeAPPId']
          @BrandName = params['BrandName']
          @Origin = params['Origin']
          @FakeAPPName = params['FakeAPPName']
          @FakeAPPPackageName = params['FakeAPPPackageName']
          @FakeAPPCert = params['FakeAPPCert']
          @FakeAPPSize = params['FakeAPPSize']
          @Heat = params['Heat']
          @BlockStatus = params['BlockStatus']
          @BlockNote = params['BlockNote']
          @OfflineStatus = params['OfflineStatus']
          @OfflineNote = params['OfflineNote']
          @DownloadWay = params['DownloadWay']
          @InsertTime = params['InsertTime']
          @DownloadCosURL = params['DownloadCosURL']
          @CertificationStatus = params['CertificationStatus']
        end
      end

      # 仿冒网址数据
      class FakeURLData < TencentCloud::Common::AbstractModel
        # @param FakeURLId: 仿冒网址id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeURLId: Integer
        # @param BrandName: 品牌名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrandName: String
        # @param Origin: 仿冒来源：0-系统检测 1-人工举报
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: Integer
        # @param FakeURL: 仿冒网址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeURL: String
        # @param FakeDomain: 仿冒域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FakeDomain: String
        # @param Heat: 热度
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Heat: Integer
        # @param BlockStatus: 拦截处置状态：0-未处置 1-处置中 2-处置成功 3-处置失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockStatus: Integer
        # @param BlockNote: 拦截处置状态说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockNote: String
        # @param OfflineStatus: 关停状态：0-未关停 1-关停中 2-关停成功 3-关停失败 4-重复上架
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineStatus: Integer
        # @param OfflineNote: 关停状态说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineNote: String
        # @param IP: ip地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IP: String
        # @param IPLocation: ip地理位置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPLocation: String
        # @param WebCompany: 网站所属单位
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebCompany: String
        # @param WebAttribute: 网站性质
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebAttribute: String
        # @param WebName: 网站名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebName: String
        # @param WebICP: 备案号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebICP: String
        # @param WebCreateTime: 网站创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebCreateTime: String
        # @param WebExpireTime: 网站过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebExpireTime: String
        # @param InsertTime: 新增时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param CertificationStatus: 资质证明状态：0-不可用 1-可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificationStatus: Integer
        # @param Snapshot: 网址截图
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Snapshot: String
        # @param AccountStatus: 账户资源状态：0-不可用 1-可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccountStatus: Integer
        # @param AuditStatus: 审核状态：0-未审核 1-审核中 2-审核成功 3-审核失败
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuditStatus: Integer
        # @param OfflineTime: 下线时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineTime: String

        attr_accessor :FakeURLId, :BrandName, :Origin, :FakeURL, :FakeDomain, :Heat, :BlockStatus, :BlockNote, :OfflineStatus, :OfflineNote, :IP, :IPLocation, :WebCompany, :WebAttribute, :WebName, :WebICP, :WebCreateTime, :WebExpireTime, :InsertTime, :CertificationStatus, :Snapshot, :AccountStatus, :AuditStatus, :OfflineTime

        def initialize(fakeurlid=nil, brandname=nil, origin=nil, fakeurl=nil, fakedomain=nil, heat=nil, blockstatus=nil, blocknote=nil, offlinestatus=nil, offlinenote=nil, ip=nil, iplocation=nil, webcompany=nil, webattribute=nil, webname=nil, webicp=nil, webcreatetime=nil, webexpiretime=nil, inserttime=nil, certificationstatus=nil, snapshot=nil, accountstatus=nil, auditstatus=nil, offlinetime=nil)
          @FakeURLId = fakeurlid
          @BrandName = brandname
          @Origin = origin
          @FakeURL = fakeurl
          @FakeDomain = fakedomain
          @Heat = heat
          @BlockStatus = blockstatus
          @BlockNote = blocknote
          @OfflineStatus = offlinestatus
          @OfflineNote = offlinenote
          @IP = ip
          @IPLocation = iplocation
          @WebCompany = webcompany
          @WebAttribute = webattribute
          @WebName = webname
          @WebICP = webicp
          @WebCreateTime = webcreatetime
          @WebExpireTime = webexpiretime
          @InsertTime = inserttime
          @CertificationStatus = certificationstatus
          @Snapshot = snapshot
          @AccountStatus = accountstatus
          @AuditStatus = auditstatus
          @OfflineTime = offlinetime
        end

        def deserialize(params)
          @FakeURLId = params['FakeURLId']
          @BrandName = params['BrandName']
          @Origin = params['Origin']
          @FakeURL = params['FakeURL']
          @FakeDomain = params['FakeDomain']
          @Heat = params['Heat']
          @BlockStatus = params['BlockStatus']
          @BlockNote = params['BlockNote']
          @OfflineStatus = params['OfflineStatus']
          @OfflineNote = params['OfflineNote']
          @IP = params['IP']
          @IPLocation = params['IPLocation']
          @WebCompany = params['WebCompany']
          @WebAttribute = params['WebAttribute']
          @WebName = params['WebName']
          @WebICP = params['WebICP']
          @WebCreateTime = params['WebCreateTime']
          @WebExpireTime = params['WebExpireTime']
          @InsertTime = params['InsertTime']
          @CertificationStatus = params['CertificationStatus']
          @Snapshot = params['Snapshot']
          @AccountStatus = params['AccountStatus']
          @AuditStatus = params['AuditStatus']
          @OfflineTime = params['OfflineTime']
        end
      end

      # 过滤参数
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤参数键
        # @type Name: String
        # @param Value: 过滤参数值
        # @type Value: String

        attr_accessor :Name, :Value

        def initialize(name=nil, value=nil)
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 服务响应数据
      class ServiceData < TencentCloud::Common::AbstractModel
        # @param ProtectURLCount: 网站保护关联资产数
        # @type ProtectURLCount: Integer
        # @param ProtectURLExpireTime: 网站保护服务到期时间
        # @type ProtectURLExpireTime: String
        # @param ProtectAPPCount: 应用保护关联资产数
        # @type ProtectAPPCount: Integer
        # @param ProtectAPPExpireTime: 应用保护服务到期时间
        # @type ProtectAPPExpireTime: String
        # @param ProtectOfficialAccountCount: 公众号保护关联资产数
        # @type ProtectOfficialAccountCount: Integer
        # @param ProtectOfficialAccountExpireTime: 公众号保护服务到期时间
        # @type ProtectOfficialAccountExpireTime: String
        # @param ProtectMiniProgramCount: 小程序保护关联资产数
        # @type ProtectMiniProgramCount: Integer
        # @param ProtectMiniProgramExpireTime: 小程序保护服务到期时间
        # @type ProtectMiniProgramExpireTime: String
        # @param OfflineCount: 关停下架使用次数
        # @type OfflineCount: Integer

        attr_accessor :ProtectURLCount, :ProtectURLExpireTime, :ProtectAPPCount, :ProtectAPPExpireTime, :ProtectOfficialAccountCount, :ProtectOfficialAccountExpireTime, :ProtectMiniProgramCount, :ProtectMiniProgramExpireTime, :OfflineCount

        def initialize(protecturlcount=nil, protecturlexpiretime=nil, protectappcount=nil, protectappexpiretime=nil, protectofficialaccountcount=nil, protectofficialaccountexpiretime=nil, protectminiprogramcount=nil, protectminiprogramexpiretime=nil, offlinecount=nil)
          @ProtectURLCount = protecturlcount
          @ProtectURLExpireTime = protecturlexpiretime
          @ProtectAPPCount = protectappcount
          @ProtectAPPExpireTime = protectappexpiretime
          @ProtectOfficialAccountCount = protectofficialaccountcount
          @ProtectOfficialAccountExpireTime = protectofficialaccountexpiretime
          @ProtectMiniProgramCount = protectminiprogramcount
          @ProtectMiniProgramExpireTime = protectminiprogramexpiretime
          @OfflineCount = offlinecount
        end

        def deserialize(params)
          @ProtectURLCount = params['ProtectURLCount']
          @ProtectURLExpireTime = params['ProtectURLExpireTime']
          @ProtectAPPCount = params['ProtectAPPCount']
          @ProtectAPPExpireTime = params['ProtectAPPExpireTime']
          @ProtectOfficialAccountCount = params['ProtectOfficialAccountCount']
          @ProtectOfficialAccountExpireTime = params['ProtectOfficialAccountExpireTime']
          @ProtectMiniProgramCount = params['ProtectMiniProgramCount']
          @ProtectMiniProgramExpireTime = params['ProtectMiniProgramExpireTime']
          @OfflineCount = params['OfflineCount']
        end
      end

      # 商标响应数据
      class TrademarkData < TencentCloud::Common::AbstractModel
        # @param Trademark: 商标证明
        # @type Trademark: String
        # @param TrademarkStatus: 商标审核状态
        # @type TrademarkStatus: Integer
        # @param TrademarkNote: 商标审核状态说明
        # @type TrademarkNote: String
        # @param TrademarkId: 商标id
        # @type TrademarkId: Integer
        # @param Transfer: 商标转让书
        # @type Transfer: String
        # @param TransferStatus: 商标转让书审核状态
        # @type TransferStatus: Integer
        # @param TransferNote: 商标转让书审核状态说明
        # @type TransferNote: String
        # @param TrademarkName: 商标名称
        # @type TrademarkName: String

        attr_accessor :Trademark, :TrademarkStatus, :TrademarkNote, :TrademarkId, :Transfer, :TransferStatus, :TransferNote, :TrademarkName

        def initialize(trademark=nil, trademarkstatus=nil, trademarknote=nil, trademarkid=nil, transfer=nil, transferstatus=nil, transfernote=nil, trademarkname=nil)
          @Trademark = trademark
          @TrademarkStatus = trademarkstatus
          @TrademarkNote = trademarknote
          @TrademarkId = trademarkid
          @Transfer = transfer
          @TransferStatus = transferstatus
          @TransferNote = transfernote
          @TrademarkName = trademarkname
        end

        def deserialize(params)
          @Trademark = params['Trademark']
          @TrademarkStatus = params['TrademarkStatus']
          @TrademarkNote = params['TrademarkNote']
          @TrademarkId = params['TrademarkId']
          @Transfer = params['Transfer']
          @TransferStatus = params['TransferStatus']
          @TransferNote = params['TransferNote']
          @TrademarkName = params['TrademarkName']
        end
      end

      # 白名单数据
      class WhiteListData < TencentCloud::Common::AbstractModel
        # @param WhiteListId: 白名单id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WhiteListId: Integer
        # @param CompanyId: 企业id
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompanyId: Integer
        # @param BrandName: 品牌名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BrandName: String
        # @param AssetsType: 资产类型：0-网站 1-app 2-公众号 3-小程序
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssetsType: Integer
        # @param WhiteList: 白名单
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WhiteList: String
        # @param Remark: 白名单备注
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Remark: String
        # @param InsertTime: 新增时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String

        attr_accessor :WhiteListId, :CompanyId, :BrandName, :AssetsType, :WhiteList, :Remark, :InsertTime

        def initialize(whitelistid=nil, companyid=nil, brandname=nil, assetstype=nil, whitelist=nil, remark=nil, inserttime=nil)
          @WhiteListId = whitelistid
          @CompanyId = companyid
          @BrandName = brandname
          @AssetsType = assetstype
          @WhiteList = whitelist
          @Remark = remark
          @InsertTime = inserttime
        end

        def deserialize(params)
          @WhiteListId = params['WhiteListId']
          @CompanyId = params['CompanyId']
          @BrandName = params['BrandName']
          @AssetsType = params['AssetsType']
          @WhiteList = params['WhiteList']
          @Remark = params['Remark']
          @InsertTime = params['InsertTime']
        end
      end

    end
  end
end

