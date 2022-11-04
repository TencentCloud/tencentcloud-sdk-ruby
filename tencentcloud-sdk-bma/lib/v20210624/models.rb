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
    module V20210624
      # 商标信息
      class BrandData < TencentCloud::Common::AbstractModel
        # @param BrandName: 商标名称
        # @type BrandName: String
        # @param BrandCertificateName: 商标证明
        # @type BrandCertificateName: String
        # @param BrandStatus: 商标审核状态 1-审核中 2-审核未通过 3-审核通过
        # @type BrandStatus: Integer
        # @param BrandNote: 审核说明
        # @type BrandNote: String
        # @param TransferName: 商标转让证明
        # @type TransferName: String
        # @param TransferStatus: 商标转让证明审核状态
        # @type TransferStatus: Integer
        # @param TransferNote: 审核说明 1-审核中 2-审核未通过 3-审核通过
        # @type TransferNote: String

        attr_accessor :BrandName, :BrandCertificateName, :BrandStatus, :BrandNote, :TransferName, :TransferStatus, :TransferNote
        
        def initialize(brandname=nil, brandcertificatename=nil, brandstatus=nil, brandnote=nil, transfername=nil, transferstatus=nil, transfernote=nil)
          @BrandName = brandname
          @BrandCertificateName = brandcertificatename
          @BrandStatus = brandstatus
          @BrandNote = brandnote
          @TransferName = transfername
          @TransferStatus = transferstatus
          @TransferNote = transfernote
        end

        def deserialize(params)
          @BrandName = params['BrandName']
          @BrandCertificateName = params['BrandCertificateName']
          @BrandStatus = params['BrandStatus']
          @BrandNote = params['BrandNote']
          @TransferName = params['TransferName']
          @TransferStatus = params['TransferStatus']
          @TransferNote = params['TransferNote']
        end
      end

      # CreateBPFakeURL请求参数结构体
      class CreateBPFakeURLRequest < TencentCloud::Common::AbstractModel
        # @param ProtectURLId: 保护网址ID
        # @type ProtectURLId: Integer
        # @param FakeURL: 仿冒网址
        # @type FakeURL: String
        # @param SnapshotNames: 截图
        # @type SnapshotNames: Array
        # @param Note: 举报说明
        # @type Note: String

        attr_accessor :ProtectURLId, :FakeURL, :SnapshotNames, :Note
        
        def initialize(protecturlid=nil, fakeurl=nil, snapshotnames=nil, note=nil)
          @ProtectURLId = protecturlid
          @FakeURL = fakeurl
          @SnapshotNames = snapshotnames
          @Note = note
        end

        def deserialize(params)
          @ProtectURLId = params['ProtectURLId']
          @FakeURL = params['FakeURL']
          @SnapshotNames = params['SnapshotNames']
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

      # CreateBPFalseTicket请求参数结构体
      class CreateBPFalseTicketRequest < TencentCloud::Common::AbstractModel
        # @param FakeURL: 仿冒网址
        # @type FakeURL: String

        attr_accessor :FakeURL
        
        def initialize(fakeurl=nil)
          @FakeURL = fakeurl
        end

        def deserialize(params)
          @FakeURL = params['FakeURL']
        end
      end

      # CreateBPFalseTicket返回参数结构体
      class CreateBPFalseTicketResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPOfflineAttachment请求参数结构体
      class CreateBPOfflineAttachmentRequest < TencentCloud::Common::AbstractModel
        # @param BrandName: 品牌名字
        # @type BrandName: String
        # @param BrandCertificateName: 商标证明
        # @type BrandCertificateName: String
        # @param TransferName: 商标转让证明
        # @type TransferName: String
        # @param AuthorizationName: 授权书
        # @type AuthorizationName: String

        attr_accessor :BrandName, :BrandCertificateName, :TransferName, :AuthorizationName
        
        def initialize(brandname=nil, brandcertificatename=nil, transfername=nil, authorizationname=nil)
          @BrandName = brandname
          @BrandCertificateName = brandcertificatename
          @TransferName = transfername
          @AuthorizationName = authorizationname
        end

        def deserialize(params)
          @BrandName = params['BrandName']
          @BrandCertificateName = params['BrandCertificateName']
          @TransferName = params['TransferName']
          @AuthorizationName = params['AuthorizationName']
        end
      end

      # CreateBPOfflineAttachment返回参数结构体
      class CreateBPOfflineAttachmentResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPOfflineTicket请求参数结构体
      class CreateBPOfflineTicketRequest < TencentCloud::Common::AbstractModel
        # @param FakeURLId: 仿冒网址ID
        # @type FakeURLId: Integer

        attr_accessor :FakeURLId
        
        def initialize(fakeurlid=nil)
          @FakeURLId = fakeurlid
        end

        def deserialize(params)
          @FakeURLId = params['FakeURLId']
        end
      end

      # CreateBPOfflineTicket返回参数结构体
      class CreateBPOfflineTicketResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPProtectURLs请求参数结构体
      class CreateBPProtectURLsRequest < TencentCloud::Common::AbstractModel
        # @param CompanyName: 企业名称
        # @type CompanyName: String
        # @param Phone: 电话号码
        # @type Phone: String
        # @param LicenseName: 营业执照
        # @type LicenseName: String
        # @param ProtectURLs: 保护网站
        # @type ProtectURLs: Array
        # @param ProtectWebs: 网站名称
        # @type ProtectWebs: Array

        attr_accessor :CompanyName, :Phone, :LicenseName, :ProtectURLs, :ProtectWebs
        
        def initialize(companyname=nil, phone=nil, licensename=nil, protecturls=nil, protectwebs=nil)
          @CompanyName = companyname
          @Phone = phone
          @LicenseName = licensename
          @ProtectURLs = protecturls
          @ProtectWebs = protectwebs
        end

        def deserialize(params)
          @CompanyName = params['CompanyName']
          @Phone = params['Phone']
          @LicenseName = params['LicenseName']
          @ProtectURLs = params['ProtectURLs']
          @ProtectWebs = params['ProtectWebs']
        end
      end

      # CreateBPProtectURLs返回参数结构体
      class CreateBPProtectURLsResponse < TencentCloud::Common::AbstractModel
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

      # CreateCRBlock请求参数结构体
      class CreateCRBlockRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param TortUrl: 侵权链接
        # @type TortUrl: String
        # @param TortTitle: 侵权标题
        # @type TortTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param BlockUrl: 拦截结果回调地址
        # @type BlockUrl: String
        # @param FileUrl: 授权书下载地址
        # @type FileUrl: String
        # @param ValidStartDate: 授权书生效日期
        # @type ValidStartDate: String
        # @param ValidEndDate: 授权书截止日期
        # @type ValidEndDate: String
        # @param TortPic: 侵权截图
        # @type TortPic: String
        # @param CommFileUrl: 委托书下载地址
        # @type CommFileUrl: String
        # @param CommValidStartDate: 委托书生效日期
        # @type CommValidStartDate: String
        # @param CommValidEndDate: 委托书截止日期
        # @type CommValidEndDate: String
        # @param IsProducer: 是否著作权人：0-否 1-是
        # @type IsProducer: String
        # @param EvidenceFileUrl: 存证证书下载地址
        # @type EvidenceFileUrl: String
        # @param EvidenceValidStartDate: 存证证书生效日期
        # @type EvidenceValidStartDate: String
        # @param EvidenceValidEndDate: 存证证书截止日期
        # @type EvidenceValidEndDate: String

        attr_accessor :WorkId, :TortUrl, :TortTitle, :TortPlat, :BlockUrl, :FileUrl, :ValidStartDate, :ValidEndDate, :TortPic, :CommFileUrl, :CommValidStartDate, :CommValidEndDate, :IsProducer, :EvidenceFileUrl, :EvidenceValidStartDate, :EvidenceValidEndDate
        
        def initialize(workid=nil, torturl=nil, torttitle=nil, tortplat=nil, blockurl=nil, fileurl=nil, validstartdate=nil, validenddate=nil, tortpic=nil, commfileurl=nil, commvalidstartdate=nil, commvalidenddate=nil, isproducer=nil, evidencefileurl=nil, evidencevalidstartdate=nil, evidencevalidenddate=nil)
          @WorkId = workid
          @TortUrl = torturl
          @TortTitle = torttitle
          @TortPlat = tortplat
          @BlockUrl = blockurl
          @FileUrl = fileurl
          @ValidStartDate = validstartdate
          @ValidEndDate = validenddate
          @TortPic = tortpic
          @CommFileUrl = commfileurl
          @CommValidStartDate = commvalidstartdate
          @CommValidEndDate = commvalidenddate
          @IsProducer = isproducer
          @EvidenceFileUrl = evidencefileurl
          @EvidenceValidStartDate = evidencevalidstartdate
          @EvidenceValidEndDate = evidencevalidenddate
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @TortUrl = params['TortUrl']
          @TortTitle = params['TortTitle']
          @TortPlat = params['TortPlat']
          @BlockUrl = params['BlockUrl']
          @FileUrl = params['FileUrl']
          @ValidStartDate = params['ValidStartDate']
          @ValidEndDate = params['ValidEndDate']
          @TortPic = params['TortPic']
          @CommFileUrl = params['CommFileUrl']
          @CommValidStartDate = params['CommValidStartDate']
          @CommValidEndDate = params['CommValidEndDate']
          @IsProducer = params['IsProducer']
          @EvidenceFileUrl = params['EvidenceFileUrl']
          @EvidenceValidStartDate = params['EvidenceValidStartDate']
          @EvidenceValidEndDate = params['EvidenceValidEndDate']
        end
      end

      # CreateCRBlock返回参数结构体
      class CreateCRBlockResponse < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param TortNum: 该字段已废弃
        # @type TortNum: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TortId, :TortNum, :RequestId
        
        def initialize(tortid=nil, tortnum=nil, requestid=nil)
          @TortId = tortid
          @TortNum = tortnum
          @RequestId = requestid
        end

        def deserialize(params)
          @TortId = params['TortId']
          @TortNum = params['TortNum']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRCompanyVerify请求参数结构体
      class CreateCRCompanyVerifyRequest < TencentCloud::Common::AbstractModel
        # @param CompanyName: 企业名称
        # @type CompanyName: String
        # @param CompanyID: 企业证件号码
        # @type CompanyID: String
        # @param CompanyLegalName: 企业法人姓名
        # @type CompanyLegalName: String
        # @param ManagerName: 联系人姓名
        # @type ManagerName: String
        # @param ManagerPhone: 联系人手机号
        # @type ManagerPhone: String
        # @param VerificationCode: 手机验证码，接口接入可以置空
        # @type VerificationCode: String
        # @param CompanyIDType: 字段已废弃，企业认证号码类型 1：社会信用代码 2：组织机构代码 3：企业工商注册码 4：其他 默认为1
        # @type CompanyIDType: String
        # @param Type: 字段已废弃，认证类型
        # @type Type: String

        attr_accessor :CompanyName, :CompanyID, :CompanyLegalName, :ManagerName, :ManagerPhone, :VerificationCode, :CompanyIDType, :Type
        
        def initialize(companyname=nil, companyid=nil, companylegalname=nil, managername=nil, managerphone=nil, verificationcode=nil, companyidtype=nil, type=nil)
          @CompanyName = companyname
          @CompanyID = companyid
          @CompanyLegalName = companylegalname
          @ManagerName = managername
          @ManagerPhone = managerphone
          @VerificationCode = verificationcode
          @CompanyIDType = companyidtype
          @Type = type
        end

        def deserialize(params)
          @CompanyName = params['CompanyName']
          @CompanyID = params['CompanyID']
          @CompanyLegalName = params['CompanyLegalName']
          @ManagerName = params['ManagerName']
          @ManagerPhone = params['ManagerPhone']
          @VerificationCode = params['VerificationCode']
          @CompanyIDType = params['CompanyIDType']
          @Type = params['Type']
        end
      end

      # CreateCRCompanyVerify返回参数结构体
      class CreateCRCompanyVerifyResponse < TencentCloud::Common::AbstractModel
        # @param Status: 认证状态：0-认证成功 1-认证失败
        # @type Status: Integer
        # @param Note: 认证状态说明，包括认证失败的原因
        # @type Note: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Note, :RequestId
        
        def initialize(status=nil, note=nil, requestid=nil)
          @Status = status
          @Note = note
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Note = params['Note']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRDesktopCode请求参数结构体
      class CreateCRDesktopCodeRequest < TencentCloud::Common::AbstractModel
        # @param TortId: xxx
        # @type TortId: Integer
        # @param DesktopCode: xxx
        # @type DesktopCode: String

        attr_accessor :TortId, :DesktopCode
        
        def initialize(tortid=nil, desktopcode=nil)
          @TortId = tortid
          @DesktopCode = desktopcode
        end

        def deserialize(params)
          @TortId = params['TortId']
          @DesktopCode = params['DesktopCode']
        end
      end

      # CreateCRDesktopCode返回参数结构体
      class CreateCRDesktopCodeResponse < TencentCloud::Common::AbstractModel
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

      # CreateCRObtain请求参数结构体
      class CreateCRObtainRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 已存证的作品ID
        # @type WorkId: Integer
        # @param TortUrl: 侵权链接
        # @type TortUrl: String
        # @param ObtainType: 取证类型 1-网页取证 2-过程取证
        # @type ObtainType: Integer
        # @param WorkTitle: 侵权标题
        # @type WorkTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param ObtainDuration: 过程取证的取证时长 6-300分钟
        # @type ObtainDuration: Integer
        # @param ObtainUrl: 取证回调地址
        # @type ObtainUrl: String
        # @param WorkCategory: xxx
        # @type WorkCategory: String
        # @param WorkType: xxx
        # @type WorkType: String

        attr_accessor :WorkId, :TortUrl, :ObtainType, :WorkTitle, :TortPlat, :ObtainDuration, :ObtainUrl, :WorkCategory, :WorkType
        
        def initialize(workid=nil, torturl=nil, obtaintype=nil, worktitle=nil, tortplat=nil, obtainduration=nil, obtainurl=nil, workcategory=nil, worktype=nil)
          @WorkId = workid
          @TortUrl = torturl
          @ObtainType = obtaintype
          @WorkTitle = worktitle
          @TortPlat = tortplat
          @ObtainDuration = obtainduration
          @ObtainUrl = obtainurl
          @WorkCategory = workcategory
          @WorkType = worktype
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @TortUrl = params['TortUrl']
          @ObtainType = params['ObtainType']
          @WorkTitle = params['WorkTitle']
          @TortPlat = params['TortPlat']
          @ObtainDuration = params['ObtainDuration']
          @ObtainUrl = params['ObtainUrl']
          @WorkCategory = params['WorkCategory']
          @WorkType = params['WorkType']
        end
      end

      # CreateCRObtain返回参数结构体
      class CreateCRObtainResponse < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param TortNum: xxx
        # @type TortNum: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TortId, :TortNum, :RequestId
        
        def initialize(tortid=nil, tortnum=nil, requestid=nil)
          @TortId = tortid
          @TortNum = tortnum
          @RequestId = requestid
        end

        def deserialize(params)
          @TortId = params['TortId']
          @TortNum = params['TortNum']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRRightFile请求参数结构体
      class CreateCRRightFileRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param FileList: 权属文件列表
        # @type FileList: Array

        attr_accessor :WorkId, :FileList
        
        def initialize(workid=nil, filelist=nil)
          @WorkId = workid
          @FileList = filelist
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          unless params['FileList'].nil?
            @FileList = []
            params['FileList'].each do |i|
              file_tmp = File.new
              file_tmp.deserialize(i)
              @FileList << file_tmp
            end
          end
        end
      end

      # CreateCRRightFile返回参数结构体
      class CreateCRRightFileResponse < TencentCloud::Common::AbstractModel
        # @param FileIds: 权属文件Id，按提交顺序排序
        # @type FileIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileIds, :RequestId
        
        def initialize(fileids=nil, requestid=nil)
          @FileIds = fileids
          @RequestId = requestid
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRRight请求参数结构体
      class CreateCRRightRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param TortUrl: 侵权链接
        # @type TortUrl: String
        # @param TortTitle: 侵权标题
        # @type TortTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param RightUrl: 发函结果回调地址
        # @type RightUrl: String
        # @param FileUrl: 授权书下载地址
        # @type FileUrl: String
        # @param ValidStartDate: 授权书生效日期
        # @type ValidStartDate: String
        # @param ValidEndDate: 授权书截止日期
        # @type ValidEndDate: String
        # @param CommFileUrl: 委托书下载地址
        # @type CommFileUrl: String
        # @param CommValidStartDate: 委托书生效日期
        # @type CommValidStartDate: String
        # @param CommValidEndDate: 委托书截止日期
        # @type CommValidEndDate: String
        # @param HomeFileUrl: 主页下载地址
        # @type HomeFileUrl: String
        # @param HomeValidStartDate: 主页生效日期
        # @type HomeValidStartDate: String
        # @param HomeValidEndDate: 主页截止日期
        # @type HomeValidEndDate: String
        # @param IsProducer: 是否著作权人：0-否 1-是
        # @type IsProducer: String
        # @param EvidenceFileUrl: 存证证书下载地址
        # @type EvidenceFileUrl: String
        # @param EvidenceValidStartDate: 存证证书生效日期
        # @type EvidenceValidStartDate: String
        # @param EvidenceValidEndDate: 存证证书截止日期
        # @type EvidenceValidEndDate: String

        attr_accessor :WorkId, :TortUrl, :TortTitle, :TortPlat, :RightUrl, :FileUrl, :ValidStartDate, :ValidEndDate, :CommFileUrl, :CommValidStartDate, :CommValidEndDate, :HomeFileUrl, :HomeValidStartDate, :HomeValidEndDate, :IsProducer, :EvidenceFileUrl, :EvidenceValidStartDate, :EvidenceValidEndDate
        
        def initialize(workid=nil, torturl=nil, torttitle=nil, tortplat=nil, righturl=nil, fileurl=nil, validstartdate=nil, validenddate=nil, commfileurl=nil, commvalidstartdate=nil, commvalidenddate=nil, homefileurl=nil, homevalidstartdate=nil, homevalidenddate=nil, isproducer=nil, evidencefileurl=nil, evidencevalidstartdate=nil, evidencevalidenddate=nil)
          @WorkId = workid
          @TortUrl = torturl
          @TortTitle = torttitle
          @TortPlat = tortplat
          @RightUrl = righturl
          @FileUrl = fileurl
          @ValidStartDate = validstartdate
          @ValidEndDate = validenddate
          @CommFileUrl = commfileurl
          @CommValidStartDate = commvalidstartdate
          @CommValidEndDate = commvalidenddate
          @HomeFileUrl = homefileurl
          @HomeValidStartDate = homevalidstartdate
          @HomeValidEndDate = homevalidenddate
          @IsProducer = isproducer
          @EvidenceFileUrl = evidencefileurl
          @EvidenceValidStartDate = evidencevalidstartdate
          @EvidenceValidEndDate = evidencevalidenddate
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @TortUrl = params['TortUrl']
          @TortTitle = params['TortTitle']
          @TortPlat = params['TortPlat']
          @RightUrl = params['RightUrl']
          @FileUrl = params['FileUrl']
          @ValidStartDate = params['ValidStartDate']
          @ValidEndDate = params['ValidEndDate']
          @CommFileUrl = params['CommFileUrl']
          @CommValidStartDate = params['CommValidStartDate']
          @CommValidEndDate = params['CommValidEndDate']
          @HomeFileUrl = params['HomeFileUrl']
          @HomeValidStartDate = params['HomeValidStartDate']
          @HomeValidEndDate = params['HomeValidEndDate']
          @IsProducer = params['IsProducer']
          @EvidenceFileUrl = params['EvidenceFileUrl']
          @EvidenceValidStartDate = params['EvidenceValidStartDate']
          @EvidenceValidEndDate = params['EvidenceValidEndDate']
        end
      end

      # CreateCRRight返回参数结构体
      class CreateCRRightResponse < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param TortNum: 该字段已废弃
        # @type TortNum: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TortId, :TortNum, :RequestId
        
        def initialize(tortid=nil, tortnum=nil, requestid=nil)
          @TortId = tortid
          @TortNum = tortnum
          @RequestId = requestid
        end

        def deserialize(params)
          @TortId = params['TortId']
          @TortNum = params['TortNum']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRTort请求参数结构体
      class CreateCRTortRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param TortURL: 侵权网址
        # @type TortURL: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param TortTitle: 侵权标题
        # @type TortTitle: String

        attr_accessor :WorkId, :TortURL, :TortPlat, :TortTitle
        
        def initialize(workid=nil, torturl=nil, tortplat=nil, torttitle=nil)
          @WorkId = workid
          @TortURL = torturl
          @TortPlat = tortplat
          @TortTitle = torttitle
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @TortURL = params['TortURL']
          @TortPlat = params['TortPlat']
          @TortTitle = params['TortTitle']
        end
      end

      # CreateCRTort返回参数结构体
      class CreateCRTortResponse < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param TortTitle: 侵权标题
        # @type TortTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param TortURL: 侵权网址
        # @type TortURL: String
        # @param TortDomain: 侵权域名
        # @type TortDomain: String
        # @param TortBodyName: 侵权主体
        # @type TortBodyName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkId, :TortId, :TortTitle, :TortPlat, :TortURL, :TortDomain, :TortBodyName, :RequestId
        
        def initialize(workid=nil, tortid=nil, torttitle=nil, tortplat=nil, torturl=nil, tortdomain=nil, tortbodyname=nil, requestid=nil)
          @WorkId = workid
          @TortId = tortid
          @TortTitle = torttitle
          @TortPlat = tortplat
          @TortURL = torturl
          @TortDomain = tortdomain
          @TortBodyName = tortbodyname
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @TortId = params['TortId']
          @TortTitle = params['TortTitle']
          @TortPlat = params['TortPlat']
          @TortURL = params['TortURL']
          @TortDomain = params['TortDomain']
          @TortBodyName = params['TortBodyName']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRUserVerify请求参数结构体
      class CreateCRUserVerifyRequest < TencentCloud::Common::AbstractModel
        # @param UserName: 用户真实姓名
        # @type UserName: String
        # @param UserID: 用户身份证号
        # @type UserID: String
        # @param UserPhone: 用户手机号码
        # @type UserPhone: String
        # @param VerificationCode: 短信验证码，接口接入可以置空
        # @type VerificationCode: String
        # @param Type: 字段已废弃，认证类型
        # @type Type: String

        attr_accessor :UserName, :UserID, :UserPhone, :VerificationCode, :Type
        
        def initialize(username=nil, userid=nil, userphone=nil, verificationcode=nil, type=nil)
          @UserName = username
          @UserID = userid
          @UserPhone = userphone
          @VerificationCode = verificationcode
          @Type = type
        end

        def deserialize(params)
          @UserName = params['UserName']
          @UserID = params['UserID']
          @UserPhone = params['UserPhone']
          @VerificationCode = params['VerificationCode']
          @Type = params['Type']
        end
      end

      # CreateCRUserVerify返回参数结构体
      class CreateCRUserVerifyResponse < TencentCloud::Common::AbstractModel
        # @param Status: 认证状态：0-认证成功 1-认证失败
        # @type Status: Integer
        # @param Note: 认证状态说明，包括认证失败原因等
        # @type Note: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Note, :RequestId
        
        def initialize(status=nil, note=nil, requestid=nil)
          @Status = status
          @Note = note
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Note = params['Note']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRWork请求参数结构体
      class CreateCRWorkRequest < TencentCloud::Common::AbstractModel
        # @param WorkName: 作品名称
        # @type WorkName: String
        # @param WorkCategory: 作品分类
        # @type WorkCategory: String
        # @param WorkType: 作品内容类型
        # @type WorkType: String
        # @param WorkSign: 作品标签
        # @type WorkSign: String
        # @param WorkPic: 字段已废弃，作品图片
        # @type WorkPic: String
        # @param WorkDesc: 作品描述
        # @type WorkDesc: String
        # @param IsOriginal: 是否原创：0-否 1-是
        # @type IsOriginal: String
        # @param IsRelease: 是否发布：0-未发布 1-已发布
        # @type IsRelease: String
        # @param ProducerID: 字段已废弃，著作权人ID
        # @type ProducerID: Integer
        # @param ProduceTime: 创作时间
        # @type ProduceTime: String
        # @param SampleContentURL: 字段已废弃
        # @type SampleContentURL: String
        # @param SampleDownloadURL: 作品下载地址
        # @type SampleDownloadURL: String
        # @param SamplePublicURL: 作品在线地址
        # @type SamplePublicURL: String
        # @param GrantType: 字段已废弃，授予类型
        # @type GrantType: String
        # @param IsMonitor: 是否监测：0-不监测 1-监测
        # @type IsMonitor: String
        # @param IsCert: 是否存证：0-不存证  2-存证 注意是2
        # @type IsCert: String
        # @param CertUrl: 存证回调地址
        # @type CertUrl: String
        # @param MonitorUrl: 监测回调地址
        # @type MonitorUrl: String
        # @param ProduceType: 字段已废弃，创作性质
        # @type ProduceType: String
        # @param WhiteLists: 白名单列表
        # @type WhiteLists: Array
        # @param WorkId: 作品ID，忽略该字段
        # @type WorkId: Integer
        # @param ProducerName: 著作权人姓名
        # @type ProducerName: String
        # @param Nickname: 作者，小说类型必填
        # @type Nickname: String
        # @param Authorization: 授权书下载地址
        # @type Authorization: String
        # @param AuthorizationStartTime: 授权书开始时间
        # @type AuthorizationStartTime: String
        # @param AuthorizationEndTime: 授权书结束时间
        # @type AuthorizationEndTime: String
        # @param ContentType: 内容格式，支持txt、doc等，表示Content的具体格式
        # @type ContentType: String
        # @param Content: 文件内容base64编码，该字段仅在无法提供下载链接时使用
        # @type Content: String
        # @param MonitorEndTime: 监测结束时间
        # @type MonitorEndTime: String
        # @param ApplierId: 申请人ID，用于存证和取证
        # @type ApplierId: String
        # @param ApplierName: 申请人姓名，用于存证和取证
        # @type ApplierName: String

        attr_accessor :WorkName, :WorkCategory, :WorkType, :WorkSign, :WorkPic, :WorkDesc, :IsOriginal, :IsRelease, :ProducerID, :ProduceTime, :SampleContentURL, :SampleDownloadURL, :SamplePublicURL, :GrantType, :IsMonitor, :IsCert, :CertUrl, :MonitorUrl, :ProduceType, :WhiteLists, :WorkId, :ProducerName, :Nickname, :Authorization, :AuthorizationStartTime, :AuthorizationEndTime, :ContentType, :Content, :MonitorEndTime, :ApplierId, :ApplierName
        
        def initialize(workname=nil, workcategory=nil, worktype=nil, worksign=nil, workpic=nil, workdesc=nil, isoriginal=nil, isrelease=nil, producerid=nil, producetime=nil, samplecontenturl=nil, sampledownloadurl=nil, samplepublicurl=nil, granttype=nil, ismonitor=nil, iscert=nil, certurl=nil, monitorurl=nil, producetype=nil, whitelists=nil, workid=nil, producername=nil, nickname=nil, authorization=nil, authorizationstarttime=nil, authorizationendtime=nil, contenttype=nil, content=nil, monitorendtime=nil, applierid=nil, appliername=nil)
          @WorkName = workname
          @WorkCategory = workcategory
          @WorkType = worktype
          @WorkSign = worksign
          @WorkPic = workpic
          @WorkDesc = workdesc
          @IsOriginal = isoriginal
          @IsRelease = isrelease
          @ProducerID = producerid
          @ProduceTime = producetime
          @SampleContentURL = samplecontenturl
          @SampleDownloadURL = sampledownloadurl
          @SamplePublicURL = samplepublicurl
          @GrantType = granttype
          @IsMonitor = ismonitor
          @IsCert = iscert
          @CertUrl = certurl
          @MonitorUrl = monitorurl
          @ProduceType = producetype
          @WhiteLists = whitelists
          @WorkId = workid
          @ProducerName = producername
          @Nickname = nickname
          @Authorization = authorization
          @AuthorizationStartTime = authorizationstarttime
          @AuthorizationEndTime = authorizationendtime
          @ContentType = contenttype
          @Content = content
          @MonitorEndTime = monitorendtime
          @ApplierId = applierid
          @ApplierName = appliername
        end

        def deserialize(params)
          @WorkName = params['WorkName']
          @WorkCategory = params['WorkCategory']
          @WorkType = params['WorkType']
          @WorkSign = params['WorkSign']
          @WorkPic = params['WorkPic']
          @WorkDesc = params['WorkDesc']
          @IsOriginal = params['IsOriginal']
          @IsRelease = params['IsRelease']
          @ProducerID = params['ProducerID']
          @ProduceTime = params['ProduceTime']
          @SampleContentURL = params['SampleContentURL']
          @SampleDownloadURL = params['SampleDownloadURL']
          @SamplePublicURL = params['SamplePublicURL']
          @GrantType = params['GrantType']
          @IsMonitor = params['IsMonitor']
          @IsCert = params['IsCert']
          @CertUrl = params['CertUrl']
          @MonitorUrl = params['MonitorUrl']
          @ProduceType = params['ProduceType']
          @WhiteLists = params['WhiteLists']
          @WorkId = params['WorkId']
          @ProducerName = params['ProducerName']
          @Nickname = params['Nickname']
          @Authorization = params['Authorization']
          @AuthorizationStartTime = params['AuthorizationStartTime']
          @AuthorizationEndTime = params['AuthorizationEndTime']
          @ContentType = params['ContentType']
          @Content = params['Content']
          @MonitorEndTime = params['MonitorEndTime']
          @ApplierId = params['ApplierId']
          @ApplierName = params['ApplierName']
        end
      end

      # CreateCRWork返回参数结构体
      class CreateCRWorkResponse < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID，一个作品对应唯一的workid
        # @type WorkId: Integer
        # @param EvidenceId: 存证ID，忽略该字段
        # @type EvidenceId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkId, :EvidenceId, :RequestId
        
        def initialize(workid=nil, evidenceid=nil, requestid=nil)
          @WorkId = workid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPCompanyInfo请求参数结构体
      class DescribeBPCompanyInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBPCompanyInfo返回参数结构体
      class DescribeBPCompanyInfoResponse < TencentCloud::Common::AbstractModel
        # @param CompanyName: 企业名称
        # @type CompanyName: String
        # @param Phone: 电话号码
        # @type Phone: String
        # @param LicenseName: 营业执照
        # @type LicenseName: String
        # @param LicenseStatus: 营业执照审核状态 1-审核中 2-审核未通过，3、审核通过
        # @type LicenseStatus: Integer
        # @param LicenseNote: 营业执照备注
        # @type LicenseNote: String
        # @param AuthorizationName: 授权书
        # @type AuthorizationName: String
        # @param AuthorizationStatus: 授权书审核状态
        # @type AuthorizationStatus: Integer
        # @param AuthorizationNote: 授权书备注
        # @type AuthorizationNote: String
        # @param BrandDatas: 品牌信息
        # @type BrandDatas: Array
        # @param CompanyId: 企业ID
        # @type CompanyId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyName, :Phone, :LicenseName, :LicenseStatus, :LicenseNote, :AuthorizationName, :AuthorizationStatus, :AuthorizationNote, :BrandDatas, :CompanyId, :RequestId
        
        def initialize(companyname=nil, phone=nil, licensename=nil, licensestatus=nil, licensenote=nil, authorizationname=nil, authorizationstatus=nil, authorizationnote=nil, branddatas=nil, companyid=nil, requestid=nil)
          @CompanyName = companyname
          @Phone = phone
          @LicenseName = licensename
          @LicenseStatus = licensestatus
          @LicenseNote = licensenote
          @AuthorizationName = authorizationname
          @AuthorizationStatus = authorizationstatus
          @AuthorizationNote = authorizationnote
          @BrandDatas = branddatas
          @CompanyId = companyid
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyName = params['CompanyName']
          @Phone = params['Phone']
          @LicenseName = params['LicenseName']
          @LicenseStatus = params['LicenseStatus']
          @LicenseNote = params['LicenseNote']
          @AuthorizationName = params['AuthorizationName']
          @AuthorizationStatus = params['AuthorizationStatus']
          @AuthorizationNote = params['AuthorizationNote']
          unless params['BrandDatas'].nil?
            @BrandDatas = []
            params['BrandDatas'].each do |i|
              branddata_tmp = BrandData.new
              branddata_tmp.deserialize(i)
              @BrandDatas << branddata_tmp
            end
          end
          @CompanyId = params['CompanyId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPFakeURLs请求参数结构体
      class DescribeBPFakeURLsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
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
        # @param FakeURLInfos: 仿冒网址列表
        # @type FakeURLInfos: Array
        # @param TotalCount: 总量
        # @type TotalCount: Integer
        # @param ExportURL: 导出量
        # @type ExportURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FakeURLInfos, :TotalCount, :ExportURL, :RequestId
        
        def initialize(fakeurlinfos=nil, totalcount=nil, exporturl=nil, requestid=nil)
          @FakeURLInfos = fakeurlinfos
          @TotalCount = totalcount
          @ExportURL = exporturl
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FakeURLInfos'].nil?
            @FakeURLInfos = []
            params['FakeURLInfos'].each do |i|
              fakeurlinfo_tmp = FakeURLInfo.new
              fakeurlinfo_tmp.deserialize(i)
              @FakeURLInfos << fakeurlinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ExportURL = params['ExportURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPProtectURLs请求参数结构体
      class DescribeBPProtectURLsRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param PageNumber: 页码
        # @type PageNumber: Integer

        attr_accessor :PageSize, :PageNumber
        
        def initialize(pagesize=nil, pagenumber=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeBPProtectURLs返回参数结构体
      class DescribeBPProtectURLsResponse < TencentCloud::Common::AbstractModel
        # @param ProtectURLInfos: 保护网址列表
        # @type ProtectURLInfos: Array
        # @param TotalCount: 总量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProtectURLInfos, :TotalCount, :RequestId
        
        def initialize(protecturlinfos=nil, totalcount=nil, requestid=nil)
          @ProtectURLInfos = protecturlinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProtectURLInfos'].nil?
            @ProtectURLInfos = []
            params['ProtectURLInfos'].each do |i|
              protecturlinfo_tmp = ProtectURLInfo.new
              protecturlinfo_tmp.deserialize(i)
              @ProtectURLInfos << protecturlinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPReportFakeURLs请求参数结构体
      class DescribeBPReportFakeURLsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
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

      # DescribeBPReportFakeURLs返回参数结构体
      class DescribeBPReportFakeURLsResponse < TencentCloud::Common::AbstractModel
        # @param ReportFakeURLInfos: 举报网站列表
        # @type ReportFakeURLInfos: Array
        # @param TotalCount: 总量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportFakeURLInfos, :TotalCount, :RequestId
        
        def initialize(reportfakeurlinfos=nil, totalcount=nil, requestid=nil)
          @ReportFakeURLInfos = reportfakeurlinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReportFakeURLInfos'].nil?
            @ReportFakeURLInfos = []
            params['ReportFakeURLInfos'].each do |i|
              reportfakeurlinfo_tmp = ReportFakeURLInfo.new
              reportfakeurlinfo_tmp.deserialize(i)
              @ReportFakeURLInfos << reportfakeurlinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCRMonitorDetail请求参数结构体
      class DescribeCRMonitorDetailRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param Filters: 过滤参数
        # @type Filters: Array

        attr_accessor :WorkId, :PageSize, :PageNumber, :Filters
        
        def initialize(workid=nil, pagesize=nil, pagenumber=nil, filters=nil)
          @WorkId = workid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Filters = filters
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeCRMonitorDetail返回参数结构体
      class DescribeCRMonitorDetailResponse < TencentCloud::Common::AbstractModel
        # @param Torts: 侵权数组
        # @type Torts: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param MonitorStatus: 监测状态
        # @type MonitorStatus: Integer
        # @param ExportURL: 导出地址
        # @type ExportURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Torts, :TotalCount, :MonitorStatus, :ExportURL, :RequestId
        
        def initialize(torts=nil, totalcount=nil, monitorstatus=nil, exporturl=nil, requestid=nil)
          @Torts = torts
          @TotalCount = totalcount
          @MonitorStatus = monitorstatus
          @ExportURL = exporturl
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Torts'].nil?
            @Torts = []
            params['Torts'].each do |i|
              monitortort_tmp = MonitorTort.new
              monitortort_tmp.deserialize(i)
              @Torts << monitortort_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @MonitorStatus = params['MonitorStatus']
          @ExportURL = params['ExportURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCRMonitors请求参数结构体
      class DescribeCRMonitorsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
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

      # DescribeCRMonitors返回参数结构体
      class DescribeCRMonitorsResponse < TencentCloud::Common::AbstractModel
        # @param Monitors: 监测结果
        # @type Monitors: Array
        # @param TotalCount: 记录总条数
        # @type TotalCount: Integer
        # @param ExportURL: 导出地址
        # @type ExportURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Monitors, :TotalCount, :ExportURL, :RequestId
        
        def initialize(monitors=nil, totalcount=nil, exporturl=nil, requestid=nil)
          @Monitors = monitors
          @TotalCount = totalcount
          @ExportURL = exporturl
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Monitors'].nil?
            @Monitors = []
            params['Monitors'].each do |i|
              monitor_tmp = Monitor.new
              monitor_tmp.deserialize(i)
              @Monitors << monitor_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ExportURL = params['ExportURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCRObtainDetail请求参数结构体
      class DescribeCRObtainDetailRequest < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer

        attr_accessor :TortId
        
        def initialize(tortid=nil)
          @TortId = tortid
        end

        def deserialize(params)
          @TortId = params['TortId']
        end
      end

      # DescribeCRObtainDetail返回参数结构体
      class DescribeCRObtainDetailResponse < TencentCloud::Common::AbstractModel
        # @param WorkName: 作品名称
        # @type WorkName: String
        # @param TortURL: 侵权链接
        # @type TortURL: String
        # @param ObtainTime: 取证时间
        # @type ObtainTime: String
        # @param ObtainType: 取证类型
        # @type ObtainType: String
        # @param ObtainNum: 取证号
        # @type ObtainNum: String
        # @param DepositFile: 证据地址
        # @type DepositFile: String
        # @param DepositCert: 公证信息地址
        # @type DepositCert: String
        # @param WorkType: 内容类型
        # @type WorkType: String
        # @param WorkCategory: 作品类型
        # @type WorkCategory: String
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param TortNum: 侵权编号
        # @type TortNum: String
        # @param ObtainStatus: 取证状态
        # @type ObtainStatus: Integer
        # @param ObtainNote: 取证状态说明
        # @type ObtainNote: String
        # @param ObtainDuration: 取证时长
        # @type ObtainDuration: String
        # @param ObtainName: 取证名称
        # @type ObtainName: String
        # @param DepositPdfCert: 取证公证信息
        # @type DepositPdfCert: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkName, :TortURL, :ObtainTime, :ObtainType, :ObtainNum, :DepositFile, :DepositCert, :WorkType, :WorkCategory, :TortId, :TortNum, :ObtainStatus, :ObtainNote, :ObtainDuration, :ObtainName, :DepositPdfCert, :RequestId
        
        def initialize(workname=nil, torturl=nil, obtaintime=nil, obtaintype=nil, obtainnum=nil, depositfile=nil, depositcert=nil, worktype=nil, workcategory=nil, tortid=nil, tortnum=nil, obtainstatus=nil, obtainnote=nil, obtainduration=nil, obtainname=nil, depositpdfcert=nil, requestid=nil)
          @WorkName = workname
          @TortURL = torturl
          @ObtainTime = obtaintime
          @ObtainType = obtaintype
          @ObtainNum = obtainnum
          @DepositFile = depositfile
          @DepositCert = depositcert
          @WorkType = worktype
          @WorkCategory = workcategory
          @TortId = tortid
          @TortNum = tortnum
          @ObtainStatus = obtainstatus
          @ObtainNote = obtainnote
          @ObtainDuration = obtainduration
          @ObtainName = obtainname
          @DepositPdfCert = depositpdfcert
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkName = params['WorkName']
          @TortURL = params['TortURL']
          @ObtainTime = params['ObtainTime']
          @ObtainType = params['ObtainType']
          @ObtainNum = params['ObtainNum']
          @DepositFile = params['DepositFile']
          @DepositCert = params['DepositCert']
          @WorkType = params['WorkType']
          @WorkCategory = params['WorkCategory']
          @TortId = params['TortId']
          @TortNum = params['TortNum']
          @ObtainStatus = params['ObtainStatus']
          @ObtainNote = params['ObtainNote']
          @ObtainDuration = params['ObtainDuration']
          @ObtainName = params['ObtainName']
          @DepositPdfCert = params['DepositPdfCert']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCRWorkInfo请求参数结构体
      class DescribeCRWorkInfoRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer

        attr_accessor :WorkId
        
        def initialize(workid=nil)
          @WorkId = workid
        end

        def deserialize(params)
          @WorkId = params['WorkId']
        end
      end

      # DescribeCRWorkInfo返回参数结构体
      class DescribeCRWorkInfoResponse < TencentCloud::Common::AbstractModel
        # @param WorkName: 作品名称
        # @type WorkName: String
        # @param MonitorStatus: 监测状态
        # @type MonitorStatus: Integer
        # @param AuthStatus: 授权文件状态
        # @type AuthStatus: Integer
        # @param CommStatus: 委托书状态
        # @type CommStatus: Integer
        # @param IsProducer: 是否著作权人
        # @type IsProducer: Integer
        # @param EvidenceStatus: 存证证书状态
        # @type EvidenceStatus: Integer
        # @param WorkCategory: 作品类型
        # @type WorkCategory: String
        # @param IsOriginal: 是否原创
        # @type IsOriginal: String
        # @param IsRelease: 是否已发表
        # @type IsRelease: String
        # @param ProducerName: 著作权人姓名
        # @type ProducerName: String
        # @param ProduceTime: 发表时间
        # @type ProduceTime: String
        # @param WhiteLists: 白名单
        # @type WhiteLists: Array
        # @param WorkDesc: 作品描述
        # @type WorkDesc: String
        # @param Authorization: 授权书
        # @type Authorization: String
        # @param AuthorizationStartTime: 授权书生效日期
        # @type AuthorizationStartTime: String
        # @param AuthorizationEndTime: 授权书截止日期
        # @type AuthorizationEndTime: String
        # @param Commission: 委托书
        # @type Commission: String
        # @param CommissionStartTime: 委托书生效日期
        # @type CommissionStartTime: String
        # @param CommissionEndTime: 委托书截止日期
        # @type CommissionEndTime: String
        # @param EvidenceUrl: 存证证书
        # @type EvidenceUrl: String
        # @param EvidenceStartTime: 存证证书生效日期
        # @type EvidenceStartTime: String
        # @param EvidenceEndTime: 存证证书截止日期
        # @type EvidenceEndTime: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkName, :MonitorStatus, :AuthStatus, :CommStatus, :IsProducer, :EvidenceStatus, :WorkCategory, :IsOriginal, :IsRelease, :ProducerName, :ProduceTime, :WhiteLists, :WorkDesc, :Authorization, :AuthorizationStartTime, :AuthorizationEndTime, :Commission, :CommissionStartTime, :CommissionEndTime, :EvidenceUrl, :EvidenceStartTime, :EvidenceEndTime, :RequestId
        
        def initialize(workname=nil, monitorstatus=nil, authstatus=nil, commstatus=nil, isproducer=nil, evidencestatus=nil, workcategory=nil, isoriginal=nil, isrelease=nil, producername=nil, producetime=nil, whitelists=nil, workdesc=nil, authorization=nil, authorizationstarttime=nil, authorizationendtime=nil, commission=nil, commissionstarttime=nil, commissionendtime=nil, evidenceurl=nil, evidencestarttime=nil, evidenceendtime=nil, requestid=nil)
          @WorkName = workname
          @MonitorStatus = monitorstatus
          @AuthStatus = authstatus
          @CommStatus = commstatus
          @IsProducer = isproducer
          @EvidenceStatus = evidencestatus
          @WorkCategory = workcategory
          @IsOriginal = isoriginal
          @IsRelease = isrelease
          @ProducerName = producername
          @ProduceTime = producetime
          @WhiteLists = whitelists
          @WorkDesc = workdesc
          @Authorization = authorization
          @AuthorizationStartTime = authorizationstarttime
          @AuthorizationEndTime = authorizationendtime
          @Commission = commission
          @CommissionStartTime = commissionstarttime
          @CommissionEndTime = commissionendtime
          @EvidenceUrl = evidenceurl
          @EvidenceStartTime = evidencestarttime
          @EvidenceEndTime = evidenceendtime
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkName = params['WorkName']
          @MonitorStatus = params['MonitorStatus']
          @AuthStatus = params['AuthStatus']
          @CommStatus = params['CommStatus']
          @IsProducer = params['IsProducer']
          @EvidenceStatus = params['EvidenceStatus']
          @WorkCategory = params['WorkCategory']
          @IsOriginal = params['IsOriginal']
          @IsRelease = params['IsRelease']
          @ProducerName = params['ProducerName']
          @ProduceTime = params['ProduceTime']
          @WhiteLists = params['WhiteLists']
          @WorkDesc = params['WorkDesc']
          @Authorization = params['Authorization']
          @AuthorizationStartTime = params['AuthorizationStartTime']
          @AuthorizationEndTime = params['AuthorizationEndTime']
          @Commission = params['Commission']
          @CommissionStartTime = params['CommissionStartTime']
          @CommissionEndTime = params['CommissionEndTime']
          @EvidenceUrl = params['EvidenceUrl']
          @EvidenceStartTime = params['EvidenceStartTime']
          @EvidenceEndTime = params['EvidenceEndTime']
          @RequestId = params['RequestId']
        end
      end

      # 仿冒网站信息
      class FakeURLInfo < TencentCloud::Common::AbstractModel
        # @param FakeURLId: 仿冒网址ID
        # @type FakeURLId: Integer
        # @param ProtectWeb: 保护网站
        # @type ProtectWeb: String
        # @param DetectTime: 检测时间
        # @type DetectTime: String
        # @param FakeURL: 仿冒网址
        # @type FakeURL: String
        # @param Snapshot: 截图
        # @type Snapshot: String
        # @param IP: IP地址
        # @type IP: String
        # @param IPLoc: IP地理位置
        # @type IPLoc: String
        # @param Heat: 热度
        # @type Heat: Integer
        # @param Status: 网址状态
        # @type Status: Integer
        # @param Note: 备注
        # @type Note: String
        # @param FakeURLCompany: 仿冒网站所属单位
        # @type FakeURLCompany: String
        # @param FakeURLAttr: 仿冒网站性质
        # @type FakeURLAttr: String
        # @param FakeURLName: 仿冒网站名称
        # @type FakeURLName: String
        # @param FakeURLICP: 仿冒网站备案号
        # @type FakeURLICP: String
        # @param FakeURLCreateTime: 仿冒网站创建时间
        # @type FakeURLCreateTime: String
        # @param FakeURLExpireTime: 仿冒网站过期时间
        # @type FakeURLExpireTime: String

        attr_accessor :FakeURLId, :ProtectWeb, :DetectTime, :FakeURL, :Snapshot, :IP, :IPLoc, :Heat, :Status, :Note, :FakeURLCompany, :FakeURLAttr, :FakeURLName, :FakeURLICP, :FakeURLCreateTime, :FakeURLExpireTime
        
        def initialize(fakeurlid=nil, protectweb=nil, detecttime=nil, fakeurl=nil, snapshot=nil, ip=nil, iploc=nil, heat=nil, status=nil, note=nil, fakeurlcompany=nil, fakeurlattr=nil, fakeurlname=nil, fakeurlicp=nil, fakeurlcreatetime=nil, fakeurlexpiretime=nil)
          @FakeURLId = fakeurlid
          @ProtectWeb = protectweb
          @DetectTime = detecttime
          @FakeURL = fakeurl
          @Snapshot = snapshot
          @IP = ip
          @IPLoc = iploc
          @Heat = heat
          @Status = status
          @Note = note
          @FakeURLCompany = fakeurlcompany
          @FakeURLAttr = fakeurlattr
          @FakeURLName = fakeurlname
          @FakeURLICP = fakeurlicp
          @FakeURLCreateTime = fakeurlcreatetime
          @FakeURLExpireTime = fakeurlexpiretime
        end

        def deserialize(params)
          @FakeURLId = params['FakeURLId']
          @ProtectWeb = params['ProtectWeb']
          @DetectTime = params['DetectTime']
          @FakeURL = params['FakeURL']
          @Snapshot = params['Snapshot']
          @IP = params['IP']
          @IPLoc = params['IPLoc']
          @Heat = params['Heat']
          @Status = params['Status']
          @Note = params['Note']
          @FakeURLCompany = params['FakeURLCompany']
          @FakeURLAttr = params['FakeURLAttr']
          @FakeURLName = params['FakeURLName']
          @FakeURLICP = params['FakeURLICP']
          @FakeURLCreateTime = params['FakeURLCreateTime']
          @FakeURLExpireTime = params['FakeURLExpireTime']
        end
      end

      # 权属文件列表
      class File < TencentCloud::Common::AbstractModel
        # @param FileUrl: 文件下载地址
        # @type FileUrl: String
        # @param FileType: 文件类型 1-委托书 2-授权书 5-存证证书 11-营业执照
        # @type FileType: Integer
        # @param ValidStartDate: 文件有效开始日期
        # @type ValidStartDate: String
        # @param ValidEndDate: 文件有效截止日期
        # @type ValidEndDate: String

        attr_accessor :FileUrl, :FileType, :ValidStartDate, :ValidEndDate
        
        def initialize(fileurl=nil, filetype=nil, validstartdate=nil, validenddate=nil)
          @FileUrl = fileurl
          @FileType = filetype
          @ValidStartDate = validstartdate
          @ValidEndDate = validenddate
        end

        def deserialize(params)
          @FileUrl = params['FileUrl']
          @FileType = params['FileType']
          @ValidStartDate = params['ValidStartDate']
          @ValidEndDate = params['ValidEndDate']
        end
      end

      # 过滤参数
      class Filter < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyBPOfflineAttachment请求参数结构体
      class ModifyBPOfflineAttachmentRequest < TencentCloud::Common::AbstractModel
        # @param LicenseName: 营业执照
        # @type LicenseName: String
        # @param AuthorizationName: 授权书
        # @type AuthorizationName: String
        # @param BrandName: 商标名称
        # @type BrandName: String
        # @param BrandCertificateName: 商标证明
        # @type BrandCertificateName: String
        # @param TransferName: 商标转让证明
        # @type TransferName: String

        attr_accessor :LicenseName, :AuthorizationName, :BrandName, :BrandCertificateName, :TransferName
        
        def initialize(licensename=nil, authorizationname=nil, brandname=nil, brandcertificatename=nil, transfername=nil)
          @LicenseName = licensename
          @AuthorizationName = authorizationname
          @BrandName = brandname
          @BrandCertificateName = brandcertificatename
          @TransferName = transfername
        end

        def deserialize(params)
          @LicenseName = params['LicenseName']
          @AuthorizationName = params['AuthorizationName']
          @BrandName = params['BrandName']
          @BrandCertificateName = params['BrandCertificateName']
          @TransferName = params['TransferName']
        end
      end

      # ModifyBPOfflineAttachment返回参数结构体
      class ModifyBPOfflineAttachmentResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCRBlockStatus请求参数结构体
      class ModifyCRBlockStatusRequest < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param BlockUrl: 拦截结果回调地址
        # @type BlockUrl: String

        attr_accessor :TortId, :BlockUrl
        
        def initialize(tortid=nil, blockurl=nil)
          @TortId = tortid
          @BlockUrl = blockurl
        end

        def deserialize(params)
          @TortId = params['TortId']
          @BlockUrl = params['BlockUrl']
        end
      end

      # ModifyCRBlockStatus返回参数结构体
      class ModifyCRBlockStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCRMonitor请求参数结构体
      class ModifyCRMonitorRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param MonitorStatus: 监测状态：1-开启监测 2-关闭监测
        # @type MonitorStatus: String
        # @param MonitorEnd: 监测截止时间
        # @type MonitorEnd: String

        attr_accessor :WorkId, :MonitorStatus, :MonitorEnd
        
        def initialize(workid=nil, monitorstatus=nil, monitorend=nil)
          @WorkId = workid
          @MonitorStatus = monitorstatus
          @MonitorEnd = monitorend
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @MonitorStatus = params['MonitorStatus']
          @MonitorEnd = params['MonitorEnd']
        end
      end

      # ModifyCRMonitor返回参数结构体
      class ModifyCRMonitorResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCRObtainStatus请求参数结构体
      class ModifyCRObtainStatusRequest < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param ObtainType: 取证类型：1-网页取证 2-过程取证(暂不提供)
        # @type ObtainType: Integer
        # @param ObtainDuration: 过程取证的取证时长，单位分钟，范围0-120
        # @type ObtainDuration: Integer
        # @param ObtainUrl: 取证结果回调地址
        # @type ObtainUrl: String

        attr_accessor :TortId, :ObtainType, :ObtainDuration, :ObtainUrl
        
        def initialize(tortid=nil, obtaintype=nil, obtainduration=nil, obtainurl=nil)
          @TortId = tortid
          @ObtainType = obtaintype
          @ObtainDuration = obtainduration
          @ObtainUrl = obtainurl
        end

        def deserialize(params)
          @TortId = params['TortId']
          @ObtainType = params['ObtainType']
          @ObtainDuration = params['ObtainDuration']
          @ObtainUrl = params['ObtainUrl']
        end
      end

      # ModifyCRObtainStatus返回参数结构体
      class ModifyCRObtainStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCRRightStatus请求参数结构体
      class ModifyCRRightStatusRequest < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param RightUrl: 发函结果回调地址
        # @type RightUrl: String

        attr_accessor :TortId, :RightUrl
        
        def initialize(tortid=nil, righturl=nil)
          @TortId = tortid
          @RightUrl = righturl
        end

        def deserialize(params)
          @TortId = params['TortId']
          @RightUrl = params['RightUrl']
        end
      end

      # ModifyCRRightStatus返回参数结构体
      class ModifyCRRightStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCRWhiteList请求参数结构体
      class ModifyCRWhiteListRequest < TencentCloud::Common::AbstractModel
        # @param WhiteListId: 该字段已废弃，白名单ID
        # @type WhiteListId: Integer
        # @param PlatForm: 该字段已废弃，平台名称
        # @type PlatForm: String
        # @param PlatUrl: 该字段已废弃，平台站点链接
        # @type PlatUrl: String
        # @param AuthorId: 该字段已废弃，作者ID
        # @type AuthorId: String
        # @param WorksId: 该字段已废弃，作品ID
        # @type WorksId: Integer
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param WhiteSites: 白名单列表，以\n分割
        # @type WhiteSites: String

        attr_accessor :WhiteListId, :PlatForm, :PlatUrl, :AuthorId, :WorksId, :WorkId, :WhiteSites
        
        def initialize(whitelistid=nil, platform=nil, platurl=nil, authorid=nil, worksid=nil, workid=nil, whitesites=nil)
          @WhiteListId = whitelistid
          @PlatForm = platform
          @PlatUrl = platurl
          @AuthorId = authorid
          @WorksId = worksid
          @WorkId = workid
          @WhiteSites = whitesites
        end

        def deserialize(params)
          @WhiteListId = params['WhiteListId']
          @PlatForm = params['PlatForm']
          @PlatUrl = params['PlatUrl']
          @AuthorId = params['AuthorId']
          @WorksId = params['WorksId']
          @WorkId = params['WorkId']
          @WhiteSites = params['WhiteSites']
        end
      end

      # ModifyCRWhiteList返回参数结构体
      class ModifyCRWhiteListResponse < TencentCloud::Common::AbstractModel
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

      # 版权保护-监测结果
      class Monitor < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param WorkName: 作品名称
        # @type WorkName: String
        # @param WorkType: 作品内容类型 01-视频 02-音频 03-文本 04-图片
        # @type WorkType: String
        # @param TortPlatNum: 侵权平台数量
        # @type TortPlatNum: Integer
        # @param TortURLNum: 侵权链接数量
        # @type TortURLNum: Integer
        # @param MonitorTime: 监测时间
        # @type MonitorTime: String
        # @param MonitorStatus: 0-待监测 1-监测中 2-不监测 3-暂停监测
        # @type MonitorStatus: Integer
        # @param WorkCategory: 作品类型
        # @type WorkCategory: String
        # @param InsertTime: 新增时间
        # @type InsertTime: String
        # @param MonitorNote: 监测状态说明
        # @type MonitorNote: String
        # @param WorkCategoryAll: 作品类型全部展示
        # @type WorkCategoryAll: String
        # @param EvidenceStatus: 存证状态
        # @type EvidenceStatus: Integer
        # @param EvidenceNote: 存证状态说明
        # @type EvidenceNote: String
        # @param TortSiteNum: 侵权站点数量
        # @type TortSiteNum: Integer

        attr_accessor :WorkId, :WorkName, :WorkType, :TortPlatNum, :TortURLNum, :MonitorTime, :MonitorStatus, :WorkCategory, :InsertTime, :MonitorNote, :WorkCategoryAll, :EvidenceStatus, :EvidenceNote, :TortSiteNum
        
        def initialize(workid=nil, workname=nil, worktype=nil, tortplatnum=nil, torturlnum=nil, monitortime=nil, monitorstatus=nil, workcategory=nil, inserttime=nil, monitornote=nil, workcategoryall=nil, evidencestatus=nil, evidencenote=nil, tortsitenum=nil)
          @WorkId = workid
          @WorkName = workname
          @WorkType = worktype
          @TortPlatNum = tortplatnum
          @TortURLNum = torturlnum
          @MonitorTime = monitortime
          @MonitorStatus = monitorstatus
          @WorkCategory = workcategory
          @InsertTime = inserttime
          @MonitorNote = monitornote
          @WorkCategoryAll = workcategoryall
          @EvidenceStatus = evidencestatus
          @EvidenceNote = evidencenote
          @TortSiteNum = tortsitenum
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @WorkName = params['WorkName']
          @WorkType = params['WorkType']
          @TortPlatNum = params['TortPlatNum']
          @TortURLNum = params['TortURLNum']
          @MonitorTime = params['MonitorTime']
          @MonitorStatus = params['MonitorStatus']
          @WorkCategory = params['WorkCategory']
          @InsertTime = params['InsertTime']
          @MonitorNote = params['MonitorNote']
          @WorkCategoryAll = params['WorkCategoryAll']
          @EvidenceStatus = params['EvidenceStatus']
          @EvidenceNote = params['EvidenceNote']
          @TortSiteNum = params['TortSiteNum']
        end
      end

      # 监测侵权信息详情
      class MonitorTort < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权信息ID
        # @type TortId: Integer
        # @param TortTitle: 侵权标题
        # @type TortTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param TortURL: 侵权链接
        # @type TortURL: String
        # @param PubTime: 侵权链接发布时间
        # @type PubTime: String
        # @param Author: 作者
        # @type Author: String
        # @param DetectTime: 发现时间
        # @type DetectTime: String
        # @param ObtainStatus: 取证状态
        # @type ObtainStatus: Integer
        # @param RightStatus: 维权状态
        # @type RightStatus: Integer
        # @param BlockStatus: 拦截状态
        # @type BlockStatus: Integer
        # @param TortNum: 侵权编号
        # @type TortNum: String
        # @param ObtainNote: 取证状态说明
        # @type ObtainNote: String
        # @param WorkTitle: 作品标题
        # @type WorkTitle: String
        # @param TortSite: 侵权站点
        # @type TortSite: String
        # @param ICP: ICP备案信息
        # @type ICP: String
        # @param RightNote: 维权状态说明
        # @type RightNote: String
        # @param ObtainType: 取证类型
        # @type ObtainType: Integer
        # @param BlockNote: 拦截状态说明
        # @type BlockNote: String
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param WorkName: 作品名称
        # @type WorkName: String
        # @param AuthStatus: 授权书状态
        # @type AuthStatus: Integer
        # @param CommStatus: 委托书状态
        # @type CommStatus: Integer
        # @param EvidenceStatus: 存证证书状态
        # @type EvidenceStatus: Integer
        # @param IsProducer: 是否著作权人
        # @type IsProducer: Integer
        # @param IsOverseas: 是否境外网址
        # @type IsOverseas: Integer
        # @param IPLoc: ip地理位置
        # @type IPLoc: String

        attr_accessor :TortId, :TortTitle, :TortPlat, :TortURL, :PubTime, :Author, :DetectTime, :ObtainStatus, :RightStatus, :BlockStatus, :TortNum, :ObtainNote, :WorkTitle, :TortSite, :ICP, :RightNote, :ObtainType, :BlockNote, :WorkId, :WorkName, :AuthStatus, :CommStatus, :EvidenceStatus, :IsProducer, :IsOverseas, :IPLoc
        
        def initialize(tortid=nil, torttitle=nil, tortplat=nil, torturl=nil, pubtime=nil, author=nil, detecttime=nil, obtainstatus=nil, rightstatus=nil, blockstatus=nil, tortnum=nil, obtainnote=nil, worktitle=nil, tortsite=nil, icp=nil, rightnote=nil, obtaintype=nil, blocknote=nil, workid=nil, workname=nil, authstatus=nil, commstatus=nil, evidencestatus=nil, isproducer=nil, isoverseas=nil, iploc=nil)
          @TortId = tortid
          @TortTitle = torttitle
          @TortPlat = tortplat
          @TortURL = torturl
          @PubTime = pubtime
          @Author = author
          @DetectTime = detecttime
          @ObtainStatus = obtainstatus
          @RightStatus = rightstatus
          @BlockStatus = blockstatus
          @TortNum = tortnum
          @ObtainNote = obtainnote
          @WorkTitle = worktitle
          @TortSite = tortsite
          @ICP = icp
          @RightNote = rightnote
          @ObtainType = obtaintype
          @BlockNote = blocknote
          @WorkId = workid
          @WorkName = workname
          @AuthStatus = authstatus
          @CommStatus = commstatus
          @EvidenceStatus = evidencestatus
          @IsProducer = isproducer
          @IsOverseas = isoverseas
          @IPLoc = iploc
        end

        def deserialize(params)
          @TortId = params['TortId']
          @TortTitle = params['TortTitle']
          @TortPlat = params['TortPlat']
          @TortURL = params['TortURL']
          @PubTime = params['PubTime']
          @Author = params['Author']
          @DetectTime = params['DetectTime']
          @ObtainStatus = params['ObtainStatus']
          @RightStatus = params['RightStatus']
          @BlockStatus = params['BlockStatus']
          @TortNum = params['TortNum']
          @ObtainNote = params['ObtainNote']
          @WorkTitle = params['WorkTitle']
          @TortSite = params['TortSite']
          @ICP = params['ICP']
          @RightNote = params['RightNote']
          @ObtainType = params['ObtainType']
          @BlockNote = params['BlockNote']
          @WorkId = params['WorkId']
          @WorkName = params['WorkName']
          @AuthStatus = params['AuthStatus']
          @CommStatus = params['CommStatus']
          @EvidenceStatus = params['EvidenceStatus']
          @IsProducer = params['IsProducer']
          @IsOverseas = params['IsOverseas']
          @IPLoc = params['IPLoc']
        end
      end

      # 保护网站信息
      class ProtectURLInfo < TencentCloud::Common::AbstractModel
        # @param ProtectURLId: 保护网站ID
        # @type ProtectURLId: Integer
        # @param ProtectURL: 保护网站
        # @type ProtectURL: String
        # @param ProtectWeb: 保护网站名称
        # @type ProtectWeb: String
        # @param ProtectURLStatus: 保护网站审核状态 1-审核中 2-审核不通过 3-审核通过
        # @type ProtectURLStatus: Integer
        # @param ProtectURLNote: 网站审核不通过原因
        # @type ProtectURLNote: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String

        attr_accessor :ProtectURLId, :ProtectURL, :ProtectWeb, :ProtectURLStatus, :ProtectURLNote, :CreateTime
        
        def initialize(protecturlid=nil, protecturl=nil, protectweb=nil, protecturlstatus=nil, protecturlnote=nil, createtime=nil)
          @ProtectURLId = protecturlid
          @ProtectURL = protecturl
          @ProtectWeb = protectweb
          @ProtectURLStatus = protecturlstatus
          @ProtectURLNote = protecturlnote
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProtectURLId = params['ProtectURLId']
          @ProtectURL = params['ProtectURL']
          @ProtectWeb = params['ProtectWeb']
          @ProtectURLStatus = params['ProtectURLStatus']
          @ProtectURLNote = params['ProtectURLNote']
          @CreateTime = params['CreateTime']
        end
      end

      # 举报网址信息
      class ReportFakeURLInfo < TencentCloud::Common::AbstractModel
        # @param FakeURLId: 仿冒网址ID
        # @type FakeURLId: Integer
        # @param DetectTime: 检测时间
        # @type DetectTime: String
        # @param ProtectURL: 保护网站
        # @type ProtectURL: String
        # @param ProtectWeb: 保护网站名称
        # @type ProtectWeb: String
        # @param FakeURL: 仿冒网址
        # @type FakeURL: String
        # @param Snapshot: 截图
        # @type Snapshot: String
        # @param IP: IP地址
        # @type IP: String
        # @param IPLoc: IP地理位置
        # @type IPLoc: String
        # @param Heat: 热度
        # @type Heat: Integer
        # @param Status: 网站状态
        # @type Status: Integer
        # @param Note: 网站不处理原因
        # @type Note: String
        # @param FakeURLCompany: 仿冒网站的企业名称
        # @type FakeURLCompany: String
        # @param FakeURLAttr: 仿冒网站的网站性质
        # @type FakeURLAttr: String
        # @param FakeURLName: 仿冒网站的网站名称
        # @type FakeURLName: String
        # @param FakeURLICP: 仿冒网站的备案
        # @type FakeURLICP: String
        # @param FakeURLCreateTime: 仿冒网站创建时间
        # @type FakeURLCreateTime: String
        # @param FakeURLExpireTime: 仿冒网站过期时间
        # @type FakeURLExpireTime: String
        # @param BlockTime: 协查处置时间
        # @type BlockTime: String

        attr_accessor :FakeURLId, :DetectTime, :ProtectURL, :ProtectWeb, :FakeURL, :Snapshot, :IP, :IPLoc, :Heat, :Status, :Note, :FakeURLCompany, :FakeURLAttr, :FakeURLName, :FakeURLICP, :FakeURLCreateTime, :FakeURLExpireTime, :BlockTime
        
        def initialize(fakeurlid=nil, detecttime=nil, protecturl=nil, protectweb=nil, fakeurl=nil, snapshot=nil, ip=nil, iploc=nil, heat=nil, status=nil, note=nil, fakeurlcompany=nil, fakeurlattr=nil, fakeurlname=nil, fakeurlicp=nil, fakeurlcreatetime=nil, fakeurlexpiretime=nil, blocktime=nil)
          @FakeURLId = fakeurlid
          @DetectTime = detecttime
          @ProtectURL = protecturl
          @ProtectWeb = protectweb
          @FakeURL = fakeurl
          @Snapshot = snapshot
          @IP = ip
          @IPLoc = iploc
          @Heat = heat
          @Status = status
          @Note = note
          @FakeURLCompany = fakeurlcompany
          @FakeURLAttr = fakeurlattr
          @FakeURLName = fakeurlname
          @FakeURLICP = fakeurlicp
          @FakeURLCreateTime = fakeurlcreatetime
          @FakeURLExpireTime = fakeurlexpiretime
          @BlockTime = blocktime
        end

        def deserialize(params)
          @FakeURLId = params['FakeURLId']
          @DetectTime = params['DetectTime']
          @ProtectURL = params['ProtectURL']
          @ProtectWeb = params['ProtectWeb']
          @FakeURL = params['FakeURL']
          @Snapshot = params['Snapshot']
          @IP = params['IP']
          @IPLoc = params['IPLoc']
          @Heat = params['Heat']
          @Status = params['Status']
          @Note = params['Note']
          @FakeURLCompany = params['FakeURLCompany']
          @FakeURLAttr = params['FakeURLAttr']
          @FakeURLName = params['FakeURLName']
          @FakeURLICP = params['FakeURLICP']
          @FakeURLCreateTime = params['FakeURLCreateTime']
          @FakeURLExpireTime = params['FakeURLExpireTime']
          @BlockTime = params['BlockTime']
        end
      end

      # UpdateCRWork请求参数结构体
      class UpdateCRWorkRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param ContentType: 文件的扩展名，例如txt，docx
        # @type ContentType: String
        # @param Content: 内容的base64编码
        # @type Content: String
        # @param CertType: 本次存证类型：0-不存证 1-存当前文件 2-存历史全量文件
        # @type CertType: String

        attr_accessor :WorkId, :ContentType, :Content, :CertType
        
        def initialize(workid=nil, contenttype=nil, content=nil, certtype=nil)
          @WorkId = workid
          @ContentType = contenttype
          @Content = content
          @CertType = certtype
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @ContentType = params['ContentType']
          @Content = params['Content']
          @CertType = params['CertType']
        end
      end

      # UpdateCRWork返回参数结构体
      class UpdateCRWorkResponse < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param EvidenceId: 存证ID
        # @type EvidenceId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkId, :EvidenceId, :RequestId
        
        def initialize(workid=nil, evidenceid=nil, requestid=nil)
          @WorkId = workid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

