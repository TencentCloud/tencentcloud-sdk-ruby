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
      # CreateCRBlock请求参数结构体
      class CreateCRBlockRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 已存证的作品ID
        # @type WorkId: Integer
        # @param TortUrl: 侵权链接
        # @type TortUrl: String
        # @param TortTitle: 侵权标题
        # @type TortTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param BlockUrl: 拦截结果回调地址
        # @type BlockUrl: String
        # @param FileUrl: x
        # @type FileUrl: String
        # @param ValidStartDate: x
        # @type ValidStartDate: String
        # @param ValidEndDate: x
        # @type ValidEndDate: String
        # @param TortPic: xx
        # @type TortPic: String
        # @param CommFileUrl: x
        # @type CommFileUrl: String
        # @param CommValidStartDate: x
        # @type CommValidStartDate: String
        # @param CommValidEndDate: x
        # @type CommValidEndDate: String
        # @param IsProducer: x
        # @type IsProducer: String

        attr_accessor :WorkId, :TortUrl, :TortTitle, :TortPlat, :BlockUrl, :FileUrl, :ValidStartDate, :ValidEndDate, :TortPic, :CommFileUrl, :CommValidStartDate, :CommValidEndDate, :IsProducer
        
        def initialize(workid=nil, torturl=nil, torttitle=nil, tortplat=nil, blockurl=nil, fileurl=nil, validstartdate=nil, validenddate=nil, tortpic=nil, commfileurl=nil, commvalidstartdate=nil, commvalidenddate=nil, isproducer=nil)
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
        end
      end

      # CreateCRBlock返回参数结构体
      class CreateCRBlockResponse < TencentCloud::Common::AbstractModel
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

      # CreateCRCompanyVerify请求参数结构体
      class CreateCRCompanyVerifyRequest < TencentCloud::Common::AbstractModel
        # @param CompanyName: 企业名称
        # @type CompanyName: String
        # @param CompanyID: 企业证件号码
        # @type CompanyID: String
        # @param CompanyLegalName: 企业法人姓名
        # @type CompanyLegalName: String
        # @param ManagerName: 管理员名称
        # @type ManagerName: String
        # @param ManagerPhone: 管理员手机号
        # @type ManagerPhone: String
        # @param VerificationCode: 手机验证码
        # @type VerificationCode: String
        # @param CompanyIDType: 企业认证号码类型 1：社会信用代码 2：组织机构代码 3：企业工商注册码 4：其他 默认为1
        # @type CompanyIDType: String
        # @param Type: xxx
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
        # @param Status: 认证状态 0-认证成功 1-认证失败
        # @type Status: Integer
        # @param Note: 认证结果返回
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

      # CreateCRRight请求参数结构体
      class CreateCRRightRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 已存证的作品ID
        # @type WorkId: Integer
        # @param TortUrl: 侵权链接
        # @type TortUrl: String
        # @param TortTitle: 侵权标题
        # @type TortTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param RightUrl: 发函结果回调地址
        # @type RightUrl: String
        # @param FileUrl: x
        # @type FileUrl: String
        # @param ValidStartDate: x
        # @type ValidStartDate: String
        # @param ValidEndDate: x
        # @type ValidEndDate: String
        # @param CommFileUrl: x
        # @type CommFileUrl: String
        # @param CommValidStartDate: x
        # @type CommValidStartDate: String
        # @param CommValidEndDate: x
        # @type CommValidEndDate: String
        # @param HomeFileUrl: x
        # @type HomeFileUrl: String
        # @param HomeValidStartDate: x
        # @type HomeValidStartDate: String
        # @param HomeValidEndDate: x
        # @type HomeValidEndDate: String
        # @param IsProducer: x
        # @type IsProducer: String

        attr_accessor :WorkId, :TortUrl, :TortTitle, :TortPlat, :RightUrl, :FileUrl, :ValidStartDate, :ValidEndDate, :CommFileUrl, :CommValidStartDate, :CommValidEndDate, :HomeFileUrl, :HomeValidStartDate, :HomeValidEndDate, :IsProducer
        
        def initialize(workid=nil, torturl=nil, torttitle=nil, tortplat=nil, righturl=nil, fileurl=nil, validstartdate=nil, validenddate=nil, commfileurl=nil, commvalidstartdate=nil, commvalidenddate=nil, homefileurl=nil, homevalidstartdate=nil, homevalidenddate=nil, isproducer=nil)
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
        end
      end

      # CreateCRRight返回参数结构体
      class CreateCRRightResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCRWorkInfo请求参数结构体
      class DescribeCRWorkInfoRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: xxx
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
        # @param WorkName: x
        # @type WorkName: String
        # @param MonitorStatus: x
        # @type MonitorStatus: Integer
        # @param AuthStatus: x
        # @type AuthStatus: Integer
        # @param CommStatus: x
        # @type CommStatus: Integer
        # @param IsProducer: x
        # @type IsProducer: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkName, :MonitorStatus, :AuthStatus, :CommStatus, :IsProducer, :RequestId
        
        def initialize(workname=nil, monitorstatus=nil, authstatus=nil, commstatus=nil, isproducer=nil, requestid=nil)
          @WorkName = workname
          @MonitorStatus = monitorstatus
          @AuthStatus = authstatus
          @CommStatus = commstatus
          @IsProducer = isproducer
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkName = params['WorkName']
          @MonitorStatus = params['MonitorStatus']
          @AuthStatus = params['AuthStatus']
          @CommStatus = params['CommStatus']
          @IsProducer = params['IsProducer']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

