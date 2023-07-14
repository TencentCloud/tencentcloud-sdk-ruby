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
  module Domain
    module V20180808
      # BatchModifyDomainInfo请求参数结构体
      class BatchModifyDomainInfoRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 批量修改的域名。
        # @type Domains: Array
        # @param TemplateId: 模板ID。
        # @type TemplateId: String
        # @param LockTransfer: true： 开启60天内禁止转移注册商锁定
        # false：关闭60天内禁止转移注册商锁定
        # 默认 true
        # @type LockTransfer: Boolean

        attr_accessor :Domains, :TemplateId, :LockTransfer

        def initialize(domains=nil, templateid=nil, locktransfer=nil)
          @Domains = domains
          @TemplateId = templateid
          @LockTransfer = locktransfer
        end

        def deserialize(params)
          @Domains = params['Domains']
          @TemplateId = params['TemplateId']
          @LockTransfer = params['LockTransfer']
        end
      end

      # BatchModifyDomainInfo返回参数结构体
      class BatchModifyDomainInfoResponse < TencentCloud::Common::AbstractModel
        # @param LogId: 日志ID
        # @type LogId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogId, :RequestId

        def initialize(logid=nil, requestid=nil)
          @LogId = logid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogId = params['LogId']
          @RequestId = params['RequestId']
        end
      end

      # 批量任务状态
      class BatchStatus < TencentCloud::Common::AbstractModel
        # @param LogId: 批量任务id
        # @type LogId: Integer
        # @param Status: 批量任务状态  doing：进行中  success：成功  failed：失败  partial_success：部分成功
        # @type Status: String
        # @param BatchAction: 批量任务类型
        # @type BatchAction: String

        attr_accessor :LogId, :Status, :BatchAction

        def initialize(logid=nil, status=nil, batchaction=nil)
          @LogId = logid
          @Status = status
          @BatchAction = batchaction
        end

        def deserialize(params)
          @LogId = params['LogId']
          @Status = params['Status']
          @BatchAction = params['BatchAction']
        end
      end

      # 认证资料信息
      class CertificateInfo < TencentCloud::Common::AbstractModel
        # @param CertificateCode: 证件号码。
        # @type CertificateCode: String
        # @param CertificateType: 证件类型。
        # SFZ: 身份证。
        # HZ: 护照。
        # TXZ: 中国港澳居民来往内地通行证。
        # TWSFZ: 中国台湾居民来往大陆通行证。
        # GWSFZ: 外国人永久居留身份证。
        # ORG: 组织机构代码证
        # YYZZ: 工商营业执照。
        # TYDMZ: 统一社会信用代码证书。
        # BDDH: 部队代号
        # JDXKZ: 军队单位对外有偿服务许可证。
        # SYZS: 事业单位法定代表人证书。
        # GWCZDJZ: 外国企业常驻代表机构登记证。
        # STDJZ: 社会团体法定代表人登记证书。
        # ZJDJZ: 宗教活动场所登记证。
        # MBDJZ: 民办非企业单位登记证书。
        # JJDJZ: 基金会法定代表人登记证书。
        # LSXKZ: 律师事务所执业许可证。
        # GWZHDJZ: 外国在华文化中心登记证。
        # GWLYDJZ: 外国政府旅游部门常驻代表机构批准登记证。
        # SFXKZ: 司法鉴定许可证
        # GWJGZJ: 外国机构证件。
        # SHFWJGZ: 社会服务机构登记证书。
        # MBXXXKZ: 民办学校办学许可证。
        # YLJGXKZ: 医疗机构执业许可证。
        # GAJZZ: 中国港澳居住证。
        # TWJZZ: 中国台湾居住证。
        # QTTYDM: 其他-统一社会信用代码证书。
        # GZJGZY: 公证机构执业证。
        # @type CertificateType: String
        # @param ImgUrl: 证件照片地址。
        # @type ImgUrl: String
        # @param OriginImgUrl: 原始照片地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginImgUrl: String
        # @param RegistrantCertificateCode: 联系人证件号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistrantCertificateCode: String
        # @param RegistrantCertificateType: 联系人证件类型。
        # SFZ: 身份证。
        # HZ: 护照。
        # TXZ: 中国港澳居民来往内地通行证。
        # TWSFZ: 中国台湾居民来往大陆通行证。
        # GWSFZ: 外国人永久居留身份证。
        # ORG: 组织机构代码证
        # YYZZ: 工商营业执照。
        # TYDMZ: 统一社会信用代码证书。
        # BDDH: 部队代号
        # JDXKZ: 军队单位对外有偿服务许可证。
        # SYZS: 事业单位法定代表人证书。
        # GWCZDJZ: 外国企业常驻代表机构登记证。
        # STDJZ: 社会团体法定代表人登记证书。
        # ZJDJZ: 宗教活动场所登记证。
        # MBDJZ: 民办非企业单位登记证书。
        # JJDJZ: 基金会法定代表人登记证书。
        # LSXKZ: 律师事务所执业许可证。
        # GWZHDJZ: 外国在华文化中心登记证。
        # GWLYDJZ: 外国政府旅游部门常驻代表机构批准登记证。
        # SFXKZ: 司法鉴定许可证
        # GWJGZJ: 外国机构证件。
        # SHFWJGZ: 社会服务机构登记证书。
        # MBXXXKZ: 民办学校办学许可证。
        # YLJGXKZ: 医疗机构执业许可证。
        # GAJZZ: 中国港澳居住证。
        # TWJZZ: 中国台湾居住证。
        # QTTYDM: 其他-统一社会信用代码证书。
        # GZJGZY: 公证机构执业证。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistrantCertificateType: String
        # @param RegistrantImgUrl: 联系人证件照片地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RegistrantImgUrl: String

        attr_accessor :CertificateCode, :CertificateType, :ImgUrl, :OriginImgUrl, :RegistrantCertificateCode, :RegistrantCertificateType, :RegistrantImgUrl

        def initialize(certificatecode=nil, certificatetype=nil, imgurl=nil, originimgurl=nil, registrantcertificatecode=nil, registrantcertificatetype=nil, registrantimgurl=nil)
          @CertificateCode = certificatecode
          @CertificateType = certificatetype
          @ImgUrl = imgurl
          @OriginImgUrl = originimgurl
          @RegistrantCertificateCode = registrantcertificatecode
          @RegistrantCertificateType = registrantcertificatetype
          @RegistrantImgUrl = registrantimgurl
        end

        def deserialize(params)
          @CertificateCode = params['CertificateCode']
          @CertificateType = params['CertificateType']
          @ImgUrl = params['ImgUrl']
          @OriginImgUrl = params['OriginImgUrl']
          @RegistrantCertificateCode = params['RegistrantCertificateCode']
          @RegistrantCertificateType = params['RegistrantCertificateType']
          @RegistrantImgUrl = params['RegistrantImgUrl']
        end
      end

      # CheckBatchStatus请求参数结构体
      class CheckBatchStatusRequest < TencentCloud::Common::AbstractModel
        # @param LogIds: 操作日志 ID数组，最多 200 个
        # @type LogIds: Array

        attr_accessor :LogIds

        def initialize(logids=nil)
          @LogIds = logids
        end

        def deserialize(params)
          @LogIds = params['LogIds']
        end
      end

      # CheckBatchStatus返回参数结构体
      class CheckBatchStatusResponse < TencentCloud::Common::AbstractModel
        # @param StatusSet: 批量任务状态集
        # @type StatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatusSet, :RequestId

        def initialize(statusset=nil, requestid=nil)
          @StatusSet = statusset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['StatusSet'].nil?
            @StatusSet = []
            params['StatusSet'].each do |i|
              batchstatus_tmp = BatchStatus.new
              batchstatus_tmp.deserialize(i)
              @StatusSet << batchstatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CheckDomain请求参数结构体
      class CheckDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 所查询域名名称
        # @type DomainName: String
        # @param Period: 年限。该参数为空时无法查询溢价词域名
        # @type Period: String

        attr_accessor :DomainName, :Period

        def initialize(domainname=nil, period=nil)
          @DomainName = domainname
          @Period = period
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Period = params['Period']
        end
      end

      # CheckDomain返回参数结构体
      class CheckDomainResponse < TencentCloud::Common::AbstractModel
        # @param DomainName: 所查询域名名称
        # @type DomainName: String
        # @param Available: 是否能够注册
        # @type Available: Boolean
        # @param Reason: 不能注册原因
        # @type Reason: String
        # @param Premium: 是否是溢价词
        # @type Premium: Boolean
        # @param Price: 域名价格
        # @type Price: Integer
        # @param BlackWord: 是否是敏感词
        # @type BlackWord: Boolean
        # @param Describe: 溢价词描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Describe: String
        # @param FeeRenew: 溢价词的续费价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeRenew: Integer
        # @param RealPrice: 域名真实价格, 溢价词时价格跟年限有关，非溢价词时价格为1年的价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealPrice: Integer
        # @param FeeTransfer: 溢价词的转入价格
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FeeTransfer: Integer
        # @param FeeRestore: 溢价词的赎回价格
        # @type FeeRestore: Integer
        # @param Period: 检测年限
        # @type Period: Integer
        # @param RecordSupport: 是否支持北京备案  true 支持  false 不支持
        # @type RecordSupport: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainName, :Available, :Reason, :Premium, :Price, :BlackWord, :Describe, :FeeRenew, :RealPrice, :FeeTransfer, :FeeRestore, :Period, :RecordSupport, :RequestId

        def initialize(domainname=nil, available=nil, reason=nil, premium=nil, price=nil, blackword=nil, describe=nil, feerenew=nil, realprice=nil, feetransfer=nil, feerestore=nil, period=nil, recordsupport=nil, requestid=nil)
          @DomainName = domainname
          @Available = available
          @Reason = reason
          @Premium = premium
          @Price = price
          @BlackWord = blackword
          @Describe = describe
          @FeeRenew = feerenew
          @RealPrice = realprice
          @FeeTransfer = feetransfer
          @FeeRestore = feerestore
          @Period = period
          @RecordSupport = recordsupport
          @RequestId = requestid
        end

        def deserialize(params)
          @DomainName = params['DomainName']
          @Available = params['Available']
          @Reason = params['Reason']
          @Premium = params['Premium']
          @Price = params['Price']
          @BlackWord = params['BlackWord']
          @Describe = params['Describe']
          @FeeRenew = params['FeeRenew']
          @RealPrice = params['RealPrice']
          @FeeTransfer = params['FeeTransfer']
          @FeeRestore = params['FeeRestore']
          @Period = params['Period']
          @RecordSupport = params['RecordSupport']
          @RequestId = params['RequestId']
        end
      end

      # 域名联系人信息
      class ContactInfo < TencentCloud::Common::AbstractModel
        # @param OrganizationNameCN: 注册人（中文）
        # @type OrganizationNameCN: String
        # @param OrganizationName: 注册人（英文）
        # @type OrganizationName: String
        # @param RegistrantNameCN: 联系人（中文）
        # @type RegistrantNameCN: String
        # @param RegistrantName: 联系人（英文）
        # @type RegistrantName: String
        # @param ProvinceCN: 省份（中文）
        # @type ProvinceCN: String
        # @param CityCN: 城市（中文）
        # @type CityCN: String
        # @param StreetCN: 街道（中文）
        # @type StreetCN: String
        # @param Street: 街道（英文）
        # @type Street: String
        # @param CountryCN: 国家（中文）
        # @type CountryCN: String
        # @param Telephone: 联系人手机号
        # @type Telephone: String
        # @param Email: 联系人邮箱
        # @type Email: String
        # @param ZipCode: 邮编
        # @type ZipCode: String
        # @param RegistrantType: 用户类型 E:组织， I:个人
        # @type RegistrantType: String
        # @param Province: 省份（英文）。作为入参时可以不填
        # @type Province: String
        # @param City: 城市（英文）。作为入参时可以不填
        # @type City: String
        # @param Country: 国家（英文）。作为入参时可以不填
        # @type Country: String

        attr_accessor :OrganizationNameCN, :OrganizationName, :RegistrantNameCN, :RegistrantName, :ProvinceCN, :CityCN, :StreetCN, :Street, :CountryCN, :Telephone, :Email, :ZipCode, :RegistrantType, :Province, :City, :Country

        def initialize(organizationnamecn=nil, organizationname=nil, registrantnamecn=nil, registrantname=nil, provincecn=nil, citycn=nil, streetcn=nil, street=nil, countrycn=nil, telephone=nil, email=nil, zipcode=nil, registranttype=nil, province=nil, city=nil, country=nil)
          @OrganizationNameCN = organizationnamecn
          @OrganizationName = organizationname
          @RegistrantNameCN = registrantnamecn
          @RegistrantName = registrantname
          @ProvinceCN = provincecn
          @CityCN = citycn
          @StreetCN = streetcn
          @Street = street
          @CountryCN = countrycn
          @Telephone = telephone
          @Email = email
          @ZipCode = zipcode
          @RegistrantType = registranttype
          @Province = province
          @City = city
          @Country = country
        end

        def deserialize(params)
          @OrganizationNameCN = params['OrganizationNameCN']
          @OrganizationName = params['OrganizationName']
          @RegistrantNameCN = params['RegistrantNameCN']
          @RegistrantName = params['RegistrantName']
          @ProvinceCN = params['ProvinceCN']
          @CityCN = params['CityCN']
          @StreetCN = params['StreetCN']
          @Street = params['Street']
          @CountryCN = params['CountryCN']
          @Telephone = params['Telephone']
          @Email = params['Email']
          @ZipCode = params['ZipCode']
          @RegistrantType = params['RegistrantType']
          @Province = params['Province']
          @City = params['City']
          @Country = params['Country']
        end
      end

      # CreateDomainBatch请求参数结构体
      class CreateDomainBatchRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID。详情请查看：[获取模板列表](https://cloud.tencent.com/document/product/242/48940)
        # @type TemplateId: String
        # @param Period: 购买域名的年限，可选值：[1-10]
        # @type Period: Integer
        # @param Domains: 批量购买的域名,最多为4000个
        # @type Domains: Array
        # @param PayMode: 付费模式 0手动在线付费，1使用余额付费，2使用特惠包
        # @type PayMode: Integer
        # @param AutoRenewFlag: 自动续费开关。有两个可选值：
        # 0 表示关闭，不自动续费（默认值）
        # 1 表示开启，将自动续费
        # @type AutoRenewFlag: Integer
        # @param PackageResourceId: 使用的特惠包ID，PayMode为2时必填
        # @type PackageResourceId: String
        # @param UpdateProhibition: 是否开启更新锁：0=默认不开启，1=开启
        # @type UpdateProhibition: Integer
        # @param TransferProhibition: 是否开启转移锁：0=默认不开启，1=开启
        # @type TransferProhibition: Integer
        # @param ChannelFrom: 渠道来源，pc/miniprogram/h5等
        # @type ChannelFrom: String
        # @param OrderFrom: 订单来源，common正常/dianshi_active点石活动等
        # @type OrderFrom: String
        # @param ActivityId: 活动id
        # @type ActivityId: String

        attr_accessor :TemplateId, :Period, :Domains, :PayMode, :AutoRenewFlag, :PackageResourceId, :UpdateProhibition, :TransferProhibition, :ChannelFrom, :OrderFrom, :ActivityId

        def initialize(templateid=nil, period=nil, domains=nil, paymode=nil, autorenewflag=nil, packageresourceid=nil, updateprohibition=nil, transferprohibition=nil, channelfrom=nil, orderfrom=nil, activityid=nil)
          @TemplateId = templateid
          @Period = period
          @Domains = domains
          @PayMode = paymode
          @AutoRenewFlag = autorenewflag
          @PackageResourceId = packageresourceid
          @UpdateProhibition = updateprohibition
          @TransferProhibition = transferprohibition
          @ChannelFrom = channelfrom
          @OrderFrom = orderfrom
          @ActivityId = activityid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @Period = params['Period']
          @Domains = params['Domains']
          @PayMode = params['PayMode']
          @AutoRenewFlag = params['AutoRenewFlag']
          @PackageResourceId = params['PackageResourceId']
          @UpdateProhibition = params['UpdateProhibition']
          @TransferProhibition = params['TransferProhibition']
          @ChannelFrom = params['ChannelFrom']
          @OrderFrom = params['OrderFrom']
          @ActivityId = params['ActivityId']
        end
      end

      # CreateDomainBatch返回参数结构体
      class CreateDomainBatchResponse < TencentCloud::Common::AbstractModel
        # @param LogId: 批量日志ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogId, :RequestId

        def initialize(logid=nil, requestid=nil)
          @LogId = logid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogId = params['LogId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePhoneEmail请求参数结构体
      class CreatePhoneEmailRequest < TencentCloud::Common::AbstractModel
        # @param Code: 手机号或者邮箱
        # @type Code: String
        # @param Type: 1：手机   2：邮箱
        # @type Type: Integer
        # @param VerifyCode: 验证码
        # @type VerifyCode: String

        attr_accessor :Code, :Type, :VerifyCode

        def initialize(code=nil, type=nil, verifycode=nil)
          @Code = code
          @Type = type
          @VerifyCode = verifycode
        end

        def deserialize(params)
          @Code = params['Code']
          @Type = params['Type']
          @VerifyCode = params['VerifyCode']
        end
      end

      # CreatePhoneEmail返回参数结构体
      class CreatePhoneEmailResponse < TencentCloud::Common::AbstractModel
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

      # CreateTemplate请求参数结构体
      class CreateTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ContactInfo: 联系人信息
        # @type ContactInfo: :class:`Tencentcloud::Domain.v20180808.models.ContactInfo`
        # @param CertificateInfo: 证件信息
        # @type CertificateInfo: :class:`Tencentcloud::Domain.v20180808.models.CertificateInfo`

        attr_accessor :ContactInfo, :CertificateInfo

        def initialize(contactinfo=nil, certificateinfo=nil)
          @ContactInfo = contactinfo
          @CertificateInfo = certificateinfo
        end

        def deserialize(params)
          unless params['ContactInfo'].nil?
            @ContactInfo = ContactInfo.new
            @ContactInfo.deserialize(params['ContactInfo'])
          end
          unless params['CertificateInfo'].nil?
            @CertificateInfo = CertificateInfo.new
            @CertificateInfo.deserialize(params['CertificateInfo'])
          end
        end
      end

      # CreateTemplate返回参数结构体
      class CreateTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Template: 模板信息
        # @type Template: :class:`Tencentcloud::Domain.v20180808.models.TemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId

        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = TemplateInfo.new
            @Template.deserialize(params['Template'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DeletePhoneEmail请求参数结构体
      class DeletePhoneEmailRequest < TencentCloud::Common::AbstractModel
        # @param Code: 手机或者邮箱
        # @type Code: String
        # @param Type: 1：手机  2：邮箱
        # @type Type: Integer

        attr_accessor :Code, :Type

        def initialize(code=nil, type=nil)
          @Code = code
          @Type = type
        end

        def deserialize(params)
          @Code = params['Code']
          @Type = params['Type']
        end
      end

      # DeletePhoneEmail返回参数结构体
      class DeletePhoneEmailResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTemplate请求参数结构体
      class DeleteTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteTemplate返回参数结构体
      class DeleteTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DescribeBatchOperationLogDetails请求参数结构体
      class DescribeBatchOperationLogDetailsRequest < TencentCloud::Common::AbstractModel
        # @param LogId: 日志ID。
        # @type LogId: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为200。
        # @type Limit: Integer

        attr_accessor :LogId, :Offset, :Limit

        def initialize(logid=nil, offset=nil, limit=nil)
          @LogId = logid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @LogId = params['LogId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeBatchOperationLogDetails返回参数结构体
      class DescribeBatchOperationLogDetailsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量。
        # @type TotalCount: Integer
        # @param DomainBatchDetailSet: 日志详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainBatchDetailSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DomainBatchDetailSet, :RequestId

        def initialize(totalcount=nil, domainbatchdetailset=nil, requestid=nil)
          @TotalCount = totalcount
          @DomainBatchDetailSet = domainbatchdetailset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DomainBatchDetailSet'].nil?
            @DomainBatchDetailSet = []
            params['DomainBatchDetailSet'].each do |i|
              domainbatchdetailset_tmp = DomainBatchDetailSet.new
              domainbatchdetailset_tmp.deserialize(i)
              @DomainBatchDetailSet << domainbatchdetailset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBatchOperationLogs请求参数结构体
      class DescribeBatchOperationLogsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为200。
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

      # DescribeBatchOperationLogs返回参数结构体
      class DescribeBatchOperationLogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量
        # @type TotalCount: Integer
        # @param DomainBatchLogSet: 日志列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainBatchLogSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DomainBatchLogSet, :RequestId

        def initialize(totalcount=nil, domainbatchlogset=nil, requestid=nil)
          @TotalCount = totalcount
          @DomainBatchLogSet = domainbatchlogset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DomainBatchLogSet'].nil?
            @DomainBatchLogSet = []
            params['DomainBatchLogSet'].each do |i|
              domainbatchlogset_tmp = DomainBatchLogSet.new
              domainbatchlogset_tmp.deserialize(i)
              @DomainBatchLogSet << domainbatchlogset_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainBaseInfo请求参数结构体
      class DescribeDomainBaseInfoRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :Domain

        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # DescribeDomainBaseInfo返回参数结构体
      class DescribeDomainBaseInfoResponse < TencentCloud::Common::AbstractModel
        # @param DomainInfo: 域名信息
        # @type DomainInfo: :class:`Tencentcloud::Domain.v20180808.models.DomainBaseInfo`
        # @param Uin: 用户Uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainInfo, :Uin, :RequestId

        def initialize(domaininfo=nil, uin=nil, requestid=nil)
          @DomainInfo = domaininfo
          @Uin = uin
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainInfo'].nil?
            @DomainInfo = DomainBaseInfo.new
            @DomainInfo.deserialize(params['DomainInfo'])
          end
          @Uin = params['Uin']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainNameList请求参数结构体
      class DescribeDomainNameListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，取值范围[1,100]
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

      # DescribeDomainNameList返回参数结构体
      class DescribeDomainNameListResponse < TencentCloud::Common::AbstractModel
        # @param DomainSet: 域名信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainSet: Array
        # @param TotalCount: 域名总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainSet, :TotalCount, :RequestId

        def initialize(domainset=nil, totalcount=nil, requestid=nil)
          @DomainSet = domainset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainSet'].nil?
            @DomainSet = []
            params['DomainSet'].each do |i|
              domainlist_tmp = DomainList.new
              domainlist_tmp.deserialize(i)
              @DomainSet << domainlist_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainPriceList请求参数结构体
      class DescribeDomainPriceListRequest < TencentCloud::Common::AbstractModel
        # @param TldList: 查询价格的后缀列表。默认则为全部后缀
        # @type TldList: Array
        # @param Year: 查询购买的年份，默认会列出所有年份的价格
        # @type Year: Array
        # @param Operation: 域名的购买类型：new  新购，renew 续费，redem 赎回，tran 转入
        # @type Operation: Array

        attr_accessor :TldList, :Year, :Operation

        def initialize(tldlist=nil, year=nil, operation=nil)
          @TldList = tldlist
          @Year = year
          @Operation = operation
        end

        def deserialize(params)
          @TldList = params['TldList']
          @Year = params['Year']
          @Operation = params['Operation']
        end
      end

      # DescribeDomainPriceList返回参数结构体
      class DescribeDomainPriceListResponse < TencentCloud::Common::AbstractModel
        # @param PriceList: 域名价格列表
        # @type PriceList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PriceList, :RequestId

        def initialize(pricelist=nil, requestid=nil)
          @PriceList = pricelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PriceList'].nil?
            @PriceList = []
            params['PriceList'].each do |i|
              priceinfo_tmp = PriceInfo.new
              priceinfo_tmp.deserialize(i)
              @PriceList << priceinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainSimpleInfo请求参数结构体
      class DescribeDomainSimpleInfoRequest < TencentCloud::Common::AbstractModel
        # @param DomainName: 域名
        # @type DomainName: String

        attr_accessor :DomainName

        def initialize(domainname=nil)
          @DomainName = domainname
        end

        def deserialize(params)
          @DomainName = params['DomainName']
        end
      end

      # DescribeDomainSimpleInfo返回参数结构体
      class DescribeDomainSimpleInfoResponse < TencentCloud::Common::AbstractModel
        # @param DomainInfo: 域名信息
        # @type DomainInfo: :class:`Tencentcloud::Domain.v20180808.models.DomainSimpleInfo`
        # @param Uin: 账号ID
        # @type Uin: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainInfo, :Uin, :RequestId

        def initialize(domaininfo=nil, uin=nil, requestid=nil)
          @DomainInfo = domaininfo
          @Uin = uin
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DomainInfo'].nil?
            @DomainInfo = DomainSimpleInfo.new
            @DomainInfo.deserialize(params['DomainInfo'])
          end
          @Uin = params['Uin']
          @RequestId = params['RequestId']
        end
      end

      # DescribePhoneEmailList请求参数结构体
      class DescribePhoneEmailListRequest < TencentCloud::Common::AbstractModel
        # @param Type: 0：所有类型  1：手机  2：邮箱，默认0
        # @type Type: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，取值范围[1,200]
        # @type Limit: Integer
        # @param Code: 手机或者邮箱，用于精确搜索
        # @type Code: String

        attr_accessor :Type, :Offset, :Limit, :Code

        def initialize(type=nil, offset=nil, limit=nil, code=nil)
          @Type = type
          @Offset = offset
          @Limit = limit
          @Code = code
        end

        def deserialize(params)
          @Type = params['Type']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Code = params['Code']
        end
      end

      # DescribePhoneEmailList返回参数结构体
      class DescribePhoneEmailListResponse < TencentCloud::Common::AbstractModel
        # @param PhoneEmailList: 手机或者邮箱列表
        # @type PhoneEmailList: Array
        # @param TotalCount: 总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PhoneEmailList, :TotalCount, :RequestId

        def initialize(phoneemaillist=nil, totalcount=nil, requestid=nil)
          @PhoneEmailList = phoneemaillist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PhoneEmailList'].nil?
            @PhoneEmailList = []
            params['PhoneEmailList'].each do |i|
              phoneemaildata_tmp = PhoneEmailData.new
              phoneemaildata_tmp.deserialize(i)
              @PhoneEmailList << phoneemaildata_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTemplateList请求参数结构体
      class DescribeTemplateListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Type: 用户注册类型，默认:all , 个人：I ,企业: E
        # @type Type: String
        # @param Status: 认证状态：未实名审核:NotUpload, 实名审核中:InAudit，已实名审核:Approved，实名审核失败:Reject，更新手机邮箱:NotVerified。
        # @type Status: String
        # @param Keyword: 关键字，用于域名所有者筛选
        # @type Keyword: String

        attr_accessor :Offset, :Limit, :Type, :Status, :Keyword

        def initialize(offset=nil, limit=nil, type=nil, status=nil, keyword=nil)
          @Offset = offset
          @Limit = limit
          @Type = type
          @Status = status
          @Keyword = keyword
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
          @Status = params['Status']
          @Keyword = params['Keyword']
        end
      end

      # DescribeTemplateList返回参数结构体
      class DescribeTemplateListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 模板数量。
        # @type TotalCount: Integer
        # @param TemplateSet: 模板详细信息列表。
        # @type TemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TemplateSet, :RequestId

        def initialize(totalcount=nil, templateset=nil, requestid=nil)
          @TotalCount = totalcount
          @TemplateSet = templateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['TemplateSet'].nil?
            @TemplateSet = []
            params['TemplateSet'].each do |i|
              templateinfo_tmp = TemplateInfo.new
              templateinfo_tmp.deserialize(i)
              @TemplateSet << templateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTemplate请求参数结构体
      class DescribeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String

        attr_accessor :TemplateId

        def initialize(templateid=nil)
          @TemplateId = templateid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeTemplate返回参数结构体
      class DescribeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Template: 模板信息
        # @type Template: :class:`Tencentcloud::Domain.v20180808.models.TemplateInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Template, :RequestId

        def initialize(template=nil, requestid=nil)
          @Template = template
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Template'].nil?
            @Template = TemplateInfo.new
            @Template.deserialize(params['Template'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取域名基础信息
      class DomainBaseInfo < TencentCloud::Common::AbstractModel
        # @param DomainId: 域名资源ID。
        # @type DomainId: String
        # @param DomainName: 域名名称。
        # @type DomainName: String
        # @param RealNameAuditStatus: 域名实名认证状态。
        # NotUpload：未实名认证
        # InAudit：实名审核中
        # Approved：实名审核通过
        # Reject：实名审核失败
        # NoAudit: 无需实名认证
        # @type RealNameAuditStatus: String
        # @param RealNameAuditUnpassReason: 域名实名认证不通过原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealNameAuditUnpassReason: String
        # @param DomainNameAuditStatus: 域名命名审核状态。
        # NotAudit：命名审核未上传
        # Pending：命名审核待上传
        # Auditing：域名命名审核中
        # Approved：域名命名审核通过
        # Rejected：域名命名审核拒绝
        # @type DomainNameAuditStatus: String
        # @param DomainNameAuditUnpassReason: 域名命名审核不通过原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainNameAuditUnpassReason: String
        # @param CreationDate: 注册时间。
        # @type CreationDate: String
        # @param ExpirationDate: 到期时间
        # @type ExpirationDate: String
        # @param DomainStatus: 域名状态。
        # ok：正常
        # serverHold：注册局暂停解析
        # clientHold：注册商暂停解析
        # pendingTransfer：转移中
        # renewingPeriod：续费期
        # redemptionPeriod：偿还期
        # pendingDelete：删除期
        # serverTransferProhibited：注册局禁止转移
        # serverUpdateProhibited：注册局禁止更新
        # serverDeleteProhibited：注册局禁止删除
        # clientTransferProhibited：注册商禁止转移
        # clientUpdateProhibited：注册商禁止更新
        # clientDeleteProhibited：注册商禁止删除
        # serverRenewProhibited: 注册局禁止续费
        # clientRenewProhobited: 注册商禁止续费
        # @type DomainStatus: Array
        # @param BuyStatus: 域名购买状态。
        # ok：正常
        # RegisterPending：待注册
        # RegisterDoing：注册中
        # RegisterFailed：注册失败
        # AboutToExpire: 即将过期
        # RenewPending：已进入续费期，需要进行续费
        # RenewDoing：续费中
        # RedemptionPending：已进入赎回期，需要进行续费
        # RedemptionDoing：赎回中
        # TransferPending：待转入中
        # TransferTransing：转入中
        # TransferFailed：转入失败
        # @type BuyStatus: String
        # @param RegistrarType: 注册商类型
        # epp: DNSPod, Inc.（烟台帝思普网络科技有限公司）
        # qcloud: Tencent Cloud Computing (Beijing) Limited Liability Company（腾讯云计算（北京）有限责任公司）
        # yunxun: Guangzhou Yunxun Information Technology Co., Ltd.（广州云讯信息科技有限公司）
        # xinnet: Xin Net Technology Corporation（北京新网数码信息技术有限公司）
        # @type RegistrarType: String
        # @param NameServer: 域名绑定的ns
        # @type NameServer: Array
        # @param LockTransfer: true：开启锁定
        # false：关闭锁定
        # @type LockTransfer: Boolean
        # @param LockEndTime: 锁定结束时间
        # @type LockEndTime: String

        attr_accessor :DomainId, :DomainName, :RealNameAuditStatus, :RealNameAuditUnpassReason, :DomainNameAuditStatus, :DomainNameAuditUnpassReason, :CreationDate, :ExpirationDate, :DomainStatus, :BuyStatus, :RegistrarType, :NameServer, :LockTransfer, :LockEndTime

        def initialize(domainid=nil, domainname=nil, realnameauditstatus=nil, realnameauditunpassreason=nil, domainnameauditstatus=nil, domainnameauditunpassreason=nil, creationdate=nil, expirationdate=nil, domainstatus=nil, buystatus=nil, registrartype=nil, nameserver=nil, locktransfer=nil, lockendtime=nil)
          @DomainId = domainid
          @DomainName = domainname
          @RealNameAuditStatus = realnameauditstatus
          @RealNameAuditUnpassReason = realnameauditunpassreason
          @DomainNameAuditStatus = domainnameauditstatus
          @DomainNameAuditUnpassReason = domainnameauditunpassreason
          @CreationDate = creationdate
          @ExpirationDate = expirationdate
          @DomainStatus = domainstatus
          @BuyStatus = buystatus
          @RegistrarType = registrartype
          @NameServer = nameserver
          @LockTransfer = locktransfer
          @LockEndTime = lockendtime
        end

        def deserialize(params)
          @DomainId = params['DomainId']
          @DomainName = params['DomainName']
          @RealNameAuditStatus = params['RealNameAuditStatus']
          @RealNameAuditUnpassReason = params['RealNameAuditUnpassReason']
          @DomainNameAuditStatus = params['DomainNameAuditStatus']
          @DomainNameAuditUnpassReason = params['DomainNameAuditUnpassReason']
          @CreationDate = params['CreationDate']
          @ExpirationDate = params['ExpirationDate']
          @DomainStatus = params['DomainStatus']
          @BuyStatus = params['BuyStatus']
          @RegistrarType = params['RegistrarType']
          @NameServer = params['NameServer']
          @LockTransfer = params['LockTransfer']
          @LockEndTime = params['LockEndTime']
        end
      end

      # 批量操作日志详情
      class DomainBatchDetailSet < TencentCloud::Common::AbstractModel
        # @param Id: 详情ID
        # @type Id: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param Status: 执行状态：
        # doing 执行中。
        # failed 操作失败。
        # success  操作成功。
        # @type Status: String
        # @param Reason: 失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Reason: String
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 更新时间
        # @type UpdatedOn: String

        attr_accessor :Id, :Domain, :Status, :Reason, :CreatedOn, :UpdatedOn

        def initialize(id=nil, domain=nil, status=nil, reason=nil, createdon=nil, updatedon=nil)
          @Id = id
          @Domain = domain
          @Status = status
          @Reason = reason
          @CreatedOn = createdon
          @UpdatedOn = updatedon
        end

        def deserialize(params)
          @Id = params['Id']
          @Domain = params['Domain']
          @Status = params['Status']
          @Reason = params['Reason']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
        end
      end

      # 批量操作记录
      class DomainBatchLogSet < TencentCloud::Common::AbstractModel
        # @param LogId: 日志ID
        # @type LogId: Integer
        # @param Number: 数量
        # @type Number: Integer
        # @param Status: 执行状态：
        # doing 执行中。
        # done 执行完成。
        # @type Status: String
        # @param CreatedOn: 提交时间
        # @type CreatedOn: String

        attr_accessor :LogId, :Number, :Status, :CreatedOn

        def initialize(logid=nil, number=nil, status=nil, createdon=nil)
          @LogId = logid
          @Number = number
          @Status = status
          @CreatedOn = createdon
        end

        def deserialize(params)
          @LogId = params['LogId']
          @Number = params['Number']
          @Status = params['Status']
          @CreatedOn = params['CreatedOn']
        end
      end

      # 域名列表
      class DomainList < TencentCloud::Common::AbstractModel
        # @param IsPremium: 是否是溢价域名：
        # ture 是
        # false 不是
        # @type IsPremium: Boolean
        # @param DomainId: 域名资源ID。
        # @type DomainId: String
        # @param DomainName: 域名名称。
        # @type DomainName: String
        # @param AutoRenew: 是否已设置自动续费 。
        # 0：未设置
        # 1：已设置
        # 2：设置后，关闭
        # @type AutoRenew: Integer
        # @param CreationDate: 注册时间。
        # @type CreationDate: String
        # @param ExpirationDate: 到期时间。
        # @type ExpirationDate: String
        # @param Tld: 域名后缀
        # @type Tld: String
        # @param CodeTld: 编码后的后缀（中文会进行编码）
        # @type CodeTld: String
        # @param BuyStatus: 域名购买状态。
        # ok：正常
        # AboutToExpire: 即将到期
        # RegisterPending：注册中
        # RegisterDoing：注册中
        # RegisterFailed：注册失败
        # RenewPending：续费期
        # RenewDoing：续费中
        # RedemptionPending：赎回期
        # RedemptionDoing：赎回中
        # TransferPending：转入中
        # TransferTransing：转入中
        # TransferFailed：转入失败
        # @type BuyStatus: String

        attr_accessor :IsPremium, :DomainId, :DomainName, :AutoRenew, :CreationDate, :ExpirationDate, :Tld, :CodeTld, :BuyStatus

        def initialize(ispremium=nil, domainid=nil, domainname=nil, autorenew=nil, creationdate=nil, expirationdate=nil, tld=nil, codetld=nil, buystatus=nil)
          @IsPremium = ispremium
          @DomainId = domainid
          @DomainName = domainname
          @AutoRenew = autorenew
          @CreationDate = creationdate
          @ExpirationDate = expirationdate
          @Tld = tld
          @CodeTld = codetld
          @BuyStatus = buystatus
        end

        def deserialize(params)
          @IsPremium = params['IsPremium']
          @DomainId = params['DomainId']
          @DomainName = params['DomainName']
          @AutoRenew = params['AutoRenew']
          @CreationDate = params['CreationDate']
          @ExpirationDate = params['ExpirationDate']
          @Tld = params['Tld']
          @CodeTld = params['CodeTld']
          @BuyStatus = params['BuyStatus']
        end
      end

      # 获取域名基础模板信息
      class DomainSimpleInfo < TencentCloud::Common::AbstractModel
        # @param DomainId: 域名资源ID。
        # @type DomainId: String
        # @param DomainName: 域名名称。
        # @type DomainName: String
        # @param RealNameAuditStatus: 域名实名认证状态。
        # NotUpload：未实名认证
        # InAudit：实名审核中
        # Approved：实名审核通过
        # Reject：实名审核失败
        # NoAudit: 无需实名认证
        # @type RealNameAuditStatus: String
        # @param RealNameAuditUnpassReason: 域名实名认证不通过原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealNameAuditUnpassReason: String
        # @param DomainNameAuditStatus: 域名命名审核状态。
        # NotAudit：命名审核未上传
        # Pending：命名审核待上传
        # Auditing：域名命名审核中
        # Approved：域名命名审核通过
        # Rejected：域名命名审核拒绝
        # @type DomainNameAuditStatus: String
        # @param DomainNameAuditUnpassReason: 域名命名审核不通过原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainNameAuditUnpassReason: String
        # @param CreationDate: 注册时间。
        # @type CreationDate: String
        # @param ExpirationDate: 到期时间
        # @type ExpirationDate: String
        # @param DomainStatus: 域名状态。
        # ok：正常
        # serverHold：注册局暂停解析
        # clientHold：注册商暂停解析
        # pendingTransfer：转移中
        # renewingPeriod：续费期
        # redemptionPeriod：偿还期
        # pendingDelete：删除期
        # serverTransferProhibited：注册局禁止转移
        # serverUpdateProhibited：注册局禁止更新
        # serverDeleteProhibited：注册局禁止删除
        # clientTransferProhibited：注册商禁止转移
        # clientUpdateProhibited：注册商禁止更新
        # clientDeleteProhibited：注册商禁止删除
        # @type DomainStatus: Array
        # @param BuyStatus: 域名购买状态。
        # ok：正常
        # RegisterPending：待注册
        # RegisterDoing：注册中
        # RegisterFailed：注册失败
        # AboutToExpire: 即将过期
        # RenewPending：已进入续费期，需要进行续费
        # RenewDoing：续费中
        # RedemptionPending：已进入赎回期，需要进行续费
        # RedemptionDoing：赎回中
        # TransferPending：待转入中
        # TransferTransing：转入中
        # TransferFailed：转入失败
        # @type BuyStatus: String
        # @param RegistrarType: 注册商类型
        # epp: DNSPod, Inc.（烟台帝思普网络科技有限公司）
        # qcloud: Tencent Cloud Computing (Beijing) Limited Liability Company（腾讯云计算（北京）有限责任公司）
        # yunxun: Guangzhou Yunxun Information Technology Co., Ltd.（广州云讯信息科技有限公司）
        # xinnet: Xin Net Technology Corporation（北京新网数码信息技术有限公司）
        # @type RegistrarType: String
        # @param NameServer: 域名绑定的ns
        # @type NameServer: Array
        # @param LockTransfer: true：开启锁定
        # false：关闭锁定
        # @type LockTransfer: Boolean
        # @param LockEndTime: 锁定结束时间
        # @type LockEndTime: String
        # @param RegistrantType: 认证类型：I=个人，E=企业
        # @type RegistrantType: String
        # @param OrganizationNameCN: 域名所有者，中文
        # @type OrganizationNameCN: String
        # @param OrganizationName: 域名所有者，英文
        # @type OrganizationName: String
        # @param RegistrantNameCN: 域名联系人，中文
        # @type RegistrantNameCN: String
        # @param RegistrantName: 域名联系人，英文
        # @type RegistrantName: String

        attr_accessor :DomainId, :DomainName, :RealNameAuditStatus, :RealNameAuditUnpassReason, :DomainNameAuditStatus, :DomainNameAuditUnpassReason, :CreationDate, :ExpirationDate, :DomainStatus, :BuyStatus, :RegistrarType, :NameServer, :LockTransfer, :LockEndTime, :RegistrantType, :OrganizationNameCN, :OrganizationName, :RegistrantNameCN, :RegistrantName

        def initialize(domainid=nil, domainname=nil, realnameauditstatus=nil, realnameauditunpassreason=nil, domainnameauditstatus=nil, domainnameauditunpassreason=nil, creationdate=nil, expirationdate=nil, domainstatus=nil, buystatus=nil, registrartype=nil, nameserver=nil, locktransfer=nil, lockendtime=nil, registranttype=nil, organizationnamecn=nil, organizationname=nil, registrantnamecn=nil, registrantname=nil)
          @DomainId = domainid
          @DomainName = domainname
          @RealNameAuditStatus = realnameauditstatus
          @RealNameAuditUnpassReason = realnameauditunpassreason
          @DomainNameAuditStatus = domainnameauditstatus
          @DomainNameAuditUnpassReason = domainnameauditunpassreason
          @CreationDate = creationdate
          @ExpirationDate = expirationdate
          @DomainStatus = domainstatus
          @BuyStatus = buystatus
          @RegistrarType = registrartype
          @NameServer = nameserver
          @LockTransfer = locktransfer
          @LockEndTime = lockendtime
          @RegistrantType = registranttype
          @OrganizationNameCN = organizationnamecn
          @OrganizationName = organizationname
          @RegistrantNameCN = registrantnamecn
          @RegistrantName = registrantname
        end

        def deserialize(params)
          @DomainId = params['DomainId']
          @DomainName = params['DomainName']
          @RealNameAuditStatus = params['RealNameAuditStatus']
          @RealNameAuditUnpassReason = params['RealNameAuditUnpassReason']
          @DomainNameAuditStatus = params['DomainNameAuditStatus']
          @DomainNameAuditUnpassReason = params['DomainNameAuditUnpassReason']
          @CreationDate = params['CreationDate']
          @ExpirationDate = params['ExpirationDate']
          @DomainStatus = params['DomainStatus']
          @BuyStatus = params['BuyStatus']
          @RegistrarType = params['RegistrarType']
          @NameServer = params['NameServer']
          @LockTransfer = params['LockTransfer']
          @LockEndTime = params['LockEndTime']
          @RegistrantType = params['RegistrantType']
          @OrganizationNameCN = params['OrganizationNameCN']
          @OrganizationName = params['OrganizationName']
          @RegistrantNameCN = params['RegistrantNameCN']
          @RegistrantName = params['RegistrantName']
        end
      end

      # ModifyDomainDNSBatch请求参数结构体
      class ModifyDomainDNSBatchRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 批量操作的域名。
        # @type Domains: Array
        # @param Dns: 域名DNS 数组。
        # @type Dns: Array

        attr_accessor :Domains, :Dns

        def initialize(domains=nil, dns=nil)
          @Domains = domains
          @Dns = dns
        end

        def deserialize(params)
          @Domains = params['Domains']
          @Dns = params['Dns']
        end
      end

      # ModifyDomainDNSBatch返回参数结构体
      class ModifyDomainDNSBatchResponse < TencentCloud::Common::AbstractModel
        # @param LogId: 日志ID。
        # @type LogId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogId, :RequestId

        def initialize(logid=nil, requestid=nil)
          @LogId = logid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogId = params['LogId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDomainOwnerBatch请求参数结构体
      class ModifyDomainOwnerBatchRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 要过户的域名。
        # @type Domains: Array
        # @param NewOwnerUin: 转入账户的uin。
        # @type NewOwnerUin: String
        # @param TransferDns: 是否同时转移对应的 DNS 解析域名，默认false
        # @type TransferDns: Boolean
        # @param NewOwnerAppId: 转入账户的appid。
        # @type NewOwnerAppId: String

        attr_accessor :Domains, :NewOwnerUin, :TransferDns, :NewOwnerAppId

        def initialize(domains=nil, newowneruin=nil, transferdns=nil, newownerappid=nil)
          @Domains = domains
          @NewOwnerUin = newowneruin
          @TransferDns = transferdns
          @NewOwnerAppId = newownerappid
        end

        def deserialize(params)
          @Domains = params['Domains']
          @NewOwnerUin = params['NewOwnerUin']
          @TransferDns = params['TransferDns']
          @NewOwnerAppId = params['NewOwnerAppId']
        end
      end

      # ModifyDomainOwnerBatch返回参数结构体
      class ModifyDomainOwnerBatchResponse < TencentCloud::Common::AbstractModel
        # @param LogId: 日志id
        # @type LogId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogId, :RequestId

        def initialize(logid=nil, requestid=nil)
          @LogId = logid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogId = params['LogId']
          @RequestId = params['RequestId']
        end
      end

      # 手机号邮箱列表
      class PhoneEmailData < TencentCloud::Common::AbstractModel
        # @param Code: 手机号或者邮箱
        # @type Code: String
        # @param Type: 1：手机  2：邮箱
        # @type Type: Integer
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param CheckStatus: 1=控制台校验，2=第三方校验
        # @type CheckStatus: Integer

        attr_accessor :Code, :Type, :CreatedOn, :CheckStatus

        def initialize(code=nil, type=nil, createdon=nil, checkstatus=nil)
          @Code = code
          @Type = type
          @CreatedOn = createdon
          @CheckStatus = checkstatus
        end

        def deserialize(params)
          @Code = params['Code']
          @Type = params['Type']
          @CreatedOn = params['CreatedOn']
          @CheckStatus = params['CheckStatus']
        end
      end

      # 域名价格信息
      class PriceInfo < TencentCloud::Common::AbstractModel
        # @param Tld: 域名后缀，例如.com
        # @type Tld: String
        # @param Year: 购买年限，范围[1-10]
        # @type Year: Integer
        # @param Price: 域名原价
        # @type Price: Integer
        # @param RealPrice: 域名现价
        # @type RealPrice: Integer
        # @param Operation: 商品的购买类型，新购，续费，赎回，转入，续费并转入
        # @type Operation: String

        attr_accessor :Tld, :Year, :Price, :RealPrice, :Operation

        def initialize(tld=nil, year=nil, price=nil, realprice=nil, operation=nil)
          @Tld = tld
          @Year = year
          @Price = price
          @RealPrice = realprice
          @Operation = operation
        end

        def deserialize(params)
          @Tld = params['Tld']
          @Year = params['Year']
          @Price = params['Price']
          @RealPrice = params['RealPrice']
          @Operation = params['Operation']
        end
      end

      # RenewDomainBatch请求参数结构体
      class RenewDomainBatchRequest < TencentCloud::Common::AbstractModel
        # @param Period: 域名续费的年限。
        # @type Period: Integer
        # @param Domains: 批量续费的域名。
        # @type Domains: Array
        # @param PayMode: 付费模式 0手动在线付费，1使用余额付费，2使用特惠包。
        # @type PayMode: Integer
        # @param AutoRenewFlag: 自动续费开关。有三个可选值：
        # 0 表示关闭，不自动续费
        # 1 表示开启，将自动续费
        # 2 表示不处理，保留域名原有状态（默认值）
        # @type AutoRenewFlag: Integer
        # @param PackageResourceId: 特惠包ID
        # @type PackageResourceId: String
        # @param ChannelFrom: 渠道来源，pc/miniprogram/h5等
        # @type ChannelFrom: String
        # @param OrderFrom: 订单来源，common正常/dianshi_active点石活动等
        # @type OrderFrom: String
        # @param ActivityId: 活动id
        # @type ActivityId: String

        attr_accessor :Period, :Domains, :PayMode, :AutoRenewFlag, :PackageResourceId, :ChannelFrom, :OrderFrom, :ActivityId

        def initialize(period=nil, domains=nil, paymode=nil, autorenewflag=nil, packageresourceid=nil, channelfrom=nil, orderfrom=nil, activityid=nil)
          @Period = period
          @Domains = domains
          @PayMode = paymode
          @AutoRenewFlag = autorenewflag
          @PackageResourceId = packageresourceid
          @ChannelFrom = channelfrom
          @OrderFrom = orderfrom
          @ActivityId = activityid
        end

        def deserialize(params)
          @Period = params['Period']
          @Domains = params['Domains']
          @PayMode = params['PayMode']
          @AutoRenewFlag = params['AutoRenewFlag']
          @PackageResourceId = params['PackageResourceId']
          @ChannelFrom = params['ChannelFrom']
          @OrderFrom = params['OrderFrom']
          @ActivityId = params['ActivityId']
        end
      end

      # RenewDomainBatch返回参数结构体
      class RenewDomainBatchResponse < TencentCloud::Common::AbstractModel
        # @param LogId: 操作日志ID。
        # @type LogId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogId, :RequestId

        def initialize(logid=nil, requestid=nil)
          @LogId = logid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogId = params['LogId']
          @RequestId = params['RequestId']
        end
      end

      # SendPhoneEmailCode请求参数结构体
      class SendPhoneEmailCodeRequest < TencentCloud::Common::AbstractModel
        # @param Code: 手机或者邮箱号。
        # @type Code: String
        # @param Type: 1：手机  2：邮箱。
        # @type Type: Integer

        attr_accessor :Code, :Type

        def initialize(code=nil, type=nil)
          @Code = code
          @Type = type
        end

        def deserialize(params)
          @Code = params['Code']
          @Type = params['Type']
        end
      end

      # SendPhoneEmailCode返回参数结构体
      class SendPhoneEmailCodeResponse < TencentCloud::Common::AbstractModel
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

      # SetDomainAutoRenew请求参数结构体
      class SetDomainAutoRenewRequest < TencentCloud::Common::AbstractModel
        # @param DomainId: 域名ID。
        # @type DomainId: String
        # @param AutoRenew: AutoRenew 有三个可选值：
        #  0：不设置自动续费
        # 1：设置自动续费
        # 2：设置到期后不续费
        # @type AutoRenew: Integer

        attr_accessor :DomainId, :AutoRenew

        def initialize(domainid=nil, autorenew=nil)
          @DomainId = domainid
          @AutoRenew = autorenew
        end

        def deserialize(params)
          @DomainId = params['DomainId']
          @AutoRenew = params['AutoRenew']
        end
      end

      # SetDomainAutoRenew返回参数结构体
      class SetDomainAutoRenewResponse < TencentCloud::Common::AbstractModel
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

      # Template数据
      class TemplateInfo < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param AuditStatus: 认证状态：未实名认证:NotUpload, 实名审核中:InAudit，已实名认证:Approved，实名审核失败:Reject
        # @type AuditStatus: String
        # @param CreatedOn: 创建时间
        # @type CreatedOn: String
        # @param UpdatedOn: 更新时间
        # @type UpdatedOn: String
        # @param UserUin: 用户UIN
        # @type UserUin: String
        # @param IsDefault: 是否是默认模板: 是:yes，否:no
        # @type IsDefault: String
        # @param AuditReason: 认证失败原因
        # @type AuditReason: String
        # @param CertificateInfo: 认证信息
        # @type CertificateInfo: :class:`Tencentcloud::Domain.v20180808.models.CertificateInfo`
        # @param ContactInfo: 联系人信息
        # @type ContactInfo: :class:`Tencentcloud::Domain.v20180808.models.ContactInfo`
        # @param IsValidTemplate: 模板是否符合规范， 1是 0 否
        # @type IsValidTemplate: Integer
        # @param InvalidReason: 不符合规范原因
        # @type InvalidReason: String
        # @param IsBlack: 是包含黑名单手机或邮箱
        # @type IsBlack: Boolean

        attr_accessor :TemplateId, :AuditStatus, :CreatedOn, :UpdatedOn, :UserUin, :IsDefault, :AuditReason, :CertificateInfo, :ContactInfo, :IsValidTemplate, :InvalidReason, :IsBlack

        def initialize(templateid=nil, auditstatus=nil, createdon=nil, updatedon=nil, useruin=nil, isdefault=nil, auditreason=nil, certificateinfo=nil, contactinfo=nil, isvalidtemplate=nil, invalidreason=nil, isblack=nil)
          @TemplateId = templateid
          @AuditStatus = auditstatus
          @CreatedOn = createdon
          @UpdatedOn = updatedon
          @UserUin = useruin
          @IsDefault = isdefault
          @AuditReason = auditreason
          @CertificateInfo = certificateinfo
          @ContactInfo = contactinfo
          @IsValidTemplate = isvalidtemplate
          @InvalidReason = invalidreason
          @IsBlack = isblack
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @AuditStatus = params['AuditStatus']
          @CreatedOn = params['CreatedOn']
          @UpdatedOn = params['UpdatedOn']
          @UserUin = params['UserUin']
          @IsDefault = params['IsDefault']
          @AuditReason = params['AuditReason']
          unless params['CertificateInfo'].nil?
            @CertificateInfo = CertificateInfo.new
            @CertificateInfo.deserialize(params['CertificateInfo'])
          end
          unless params['ContactInfo'].nil?
            @ContactInfo = ContactInfo.new
            @ContactInfo.deserialize(params['ContactInfo'])
          end
          @IsValidTemplate = params['IsValidTemplate']
          @InvalidReason = params['InvalidReason']
          @IsBlack = params['IsBlack']
        end
      end

      # TransferInDomainBatch请求参数结构体
      class TransferInDomainBatchRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 转入的域名名称数组。
        # @type Domains: Array
        # @param PassWords: 域名转移码数组。
        # @type PassWords: Array
        # @param TemplateId: 模板ID。
        # @type TemplateId: String
        # @param PayMode: 付费模式 0手动在线付费，1使用余额付费。
        # @type PayMode: Integer
        # @param AutoRenewFlag: 自动续费开关。有两个可选值：
        # 0 表示关闭，不自动续费（默认值）
        # 1 表示开启，将自动续费
        # @type AutoRenewFlag: Integer
        # @param LockTransfer: true： 开启60天内禁止转移注册商锁定
        # false：关闭60天内禁止转移注册商锁定
        # 默认 true
        # @type LockTransfer: Boolean
        # @param UpdateProhibition: 是否开启更新锁：0=默认不开启，1=开启
        # @type UpdateProhibition: Integer
        # @param TransferProhibition: 是否开启转移锁：0=默认不开启，1=开启
        # @type TransferProhibition: Integer
        # @param ChannelFrom: 渠道来源，pc/miniprogram/h5等
        # @type ChannelFrom: String
        # @param OrderFrom: 订单来源，common正常/dianshi_active点石活动等
        # @type OrderFrom: String
        # @param ActivityId: 活动id
        # @type ActivityId: String

        attr_accessor :Domains, :PassWords, :TemplateId, :PayMode, :AutoRenewFlag, :LockTransfer, :UpdateProhibition, :TransferProhibition, :ChannelFrom, :OrderFrom, :ActivityId

        def initialize(domains=nil, passwords=nil, templateid=nil, paymode=nil, autorenewflag=nil, locktransfer=nil, updateprohibition=nil, transferprohibition=nil, channelfrom=nil, orderfrom=nil, activityid=nil)
          @Domains = domains
          @PassWords = passwords
          @TemplateId = templateid
          @PayMode = paymode
          @AutoRenewFlag = autorenewflag
          @LockTransfer = locktransfer
          @UpdateProhibition = updateprohibition
          @TransferProhibition = transferprohibition
          @ChannelFrom = channelfrom
          @OrderFrom = orderfrom
          @ActivityId = activityid
        end

        def deserialize(params)
          @Domains = params['Domains']
          @PassWords = params['PassWords']
          @TemplateId = params['TemplateId']
          @PayMode = params['PayMode']
          @AutoRenewFlag = params['AutoRenewFlag']
          @LockTransfer = params['LockTransfer']
          @UpdateProhibition = params['UpdateProhibition']
          @TransferProhibition = params['TransferProhibition']
          @ChannelFrom = params['ChannelFrom']
          @OrderFrom = params['OrderFrom']
          @ActivityId = params['ActivityId']
        end
      end

      # TransferInDomainBatch返回参数结构体
      class TransferInDomainBatchResponse < TencentCloud::Common::AbstractModel
        # @param LogId: 日志ID
        # @type LogId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogId, :RequestId

        def initialize(logid=nil, requestid=nil)
          @LogId = logid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogId = params['LogId']
          @RequestId = params['RequestId']
        end
      end

      # TransferProhibitionBatch请求参数结构体
      class TransferProhibitionBatchRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 批量操作的域名。
        # @type Domains: Array
        # @param Status: 是否开启禁止域名转移。
        # True: 开启禁止域名转移状态。
        # False：关闭禁止域名转移状态。
        # @type Status: Boolean

        attr_accessor :Domains, :Status

        def initialize(domains=nil, status=nil)
          @Domains = domains
          @Status = status
        end

        def deserialize(params)
          @Domains = params['Domains']
          @Status = params['Status']
        end
      end

      # TransferProhibitionBatch返回参数结构体
      class TransferProhibitionBatchResponse < TencentCloud::Common::AbstractModel
        # @param LogId: 日志ID
        # @type LogId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogId, :RequestId

        def initialize(logid=nil, requestid=nil)
          @LogId = logid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogId = params['LogId']
          @RequestId = params['RequestId']
        end
      end

      # UpdateProhibitionBatch请求参数结构体
      class UpdateProhibitionBatchRequest < TencentCloud::Common::AbstractModel
        # @param Domains: 批量操作的域名。
        # @type Domains: Array
        # @param Status: 是否开启禁止域名更新。
        # True:开启禁止域名更新状态。
        # False：关闭禁止域名更新状态。
        # @type Status: Boolean

        attr_accessor :Domains, :Status

        def initialize(domains=nil, status=nil)
          @Domains = domains
          @Status = status
        end

        def deserialize(params)
          @Domains = params['Domains']
          @Status = params['Status']
        end
      end

      # UpdateProhibitionBatch返回参数结构体
      class UpdateProhibitionBatchResponse < TencentCloud::Common::AbstractModel
        # @param LogId: 日志ID
        # @type LogId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LogId, :RequestId

        def initialize(logid=nil, requestid=nil)
          @LogId = logid
          @RequestId = requestid
        end

        def deserialize(params)
          @LogId = params['LogId']
          @RequestId = params['RequestId']
        end
      end

      # UploadImage请求参数结构体
      class UploadImageRequest < TencentCloud::Common::AbstractModel
        # @param ImageFile: 资质照片，照片的base64编码。
        # @type ImageFile: String

        attr_accessor :ImageFile

        def initialize(imagefile=nil)
          @ImageFile = imagefile
        end

        def deserialize(params)
          @ImageFile = params['ImageFile']
        end
      end

      # UploadImage返回参数结构体
      class UploadImageResponse < TencentCloud::Common::AbstractModel
        # @param AccessUrl: 资质照片地址。
        # @type AccessUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessUrl, :RequestId

        def initialize(accessurl=nil, requestid=nil)
          @AccessUrl = accessurl
          @RequestId = requestid
        end

        def deserialize(params)
          @AccessUrl = params['AccessUrl']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

