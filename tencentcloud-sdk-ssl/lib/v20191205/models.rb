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
  module Ssl
    module V20191205
      # ApplyCertificate请求参数结构体
      class ApplyCertificateRequest < TencentCloud::Common::AbstractModel
        # @param DvAuthMethod: 验证方式：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证。
        # @type DvAuthMethod: String
        # @param DomainName: 域名。
        # @type DomainName: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param PackageType: 证书类型，目前仅支持类型2。2 = TrustAsia TLS RSA CA。
        # @type PackageType: String
        # @param ContactEmail: 邮箱。
        # @type ContactEmail: String
        # @param ContactPhone: 手机。
        # @type ContactPhone: String
        # @param ValidityPeriod: 有效期，默认12个月，目前仅支持12个月。
        # @type ValidityPeriod: String
        # @param CsrEncryptAlgo: 加密算法，仅支持 RSA。
        # @type CsrEncryptAlgo: String
        # @param CsrKeyParameter: 密钥对参数，仅支持2048。
        # @type CsrKeyParameter: String
        # @param CsrKeyPassword: CSR 的加密密码。
        # @type CsrKeyPassword: String
        # @param Alias: 备注名称。
        # @type Alias: String
        # @param OldCertificateId: 原证书 ID，用于重新申请。
        # @type OldCertificateId: String

        attr_accessor :DvAuthMethod, :DomainName, :ProjectId, :PackageType, :ContactEmail, :ContactPhone, :ValidityPeriod, :CsrEncryptAlgo, :CsrKeyParameter, :CsrKeyPassword, :Alias, :OldCertificateId
        
        def initialize(dvauthmethod=nil, domainname=nil, projectid=nil, packagetype=nil, contactemail=nil, contactphone=nil, validityperiod=nil, csrencryptalgo=nil, csrkeyparameter=nil, csrkeypassword=nil, _alias=nil, oldcertificateid=nil)
          @DvAuthMethod = dvauthmethod
          @DomainName = domainname
          @ProjectId = projectid
          @PackageType = packagetype
          @ContactEmail = contactemail
          @ContactPhone = contactphone
          @ValidityPeriod = validityperiod
          @CsrEncryptAlgo = csrencryptalgo
          @CsrKeyParameter = csrkeyparameter
          @CsrKeyPassword = csrkeypassword
          @Alias = _alias
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @DvAuthMethod = params['DvAuthMethod']
          @DomainName = params['DomainName']
          @ProjectId = params['ProjectId']
          @PackageType = params['PackageType']
          @ContactEmail = params['ContactEmail']
          @ContactPhone = params['ContactPhone']
          @ValidityPeriod = params['ValidityPeriod']
          @CsrEncryptAlgo = params['CsrEncryptAlgo']
          @CsrKeyParameter = params['CsrKeyParameter']
          @CsrKeyPassword = params['CsrKeyPassword']
          @Alias = params['Alias']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # ApplyCertificate返回参数结构体
      class ApplyCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # CancelCertificateOrder请求参数结构体
      class CancelCertificateOrderRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # CancelCertificateOrder返回参数结构体
      class CancelCertificateOrderResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 取消订单成功的证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # 获取证书列表（DescribeCertificates）返回参数键为 Certificates 数组下，key为CertificateExtra 的内容。
      class CertificateExtra < TencentCloud::Common::AbstractModel
        # @param DomainNumber: 证书可配置域名数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainNumber: String
        # @param OriginCertificateId: 原始证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginCertificateId: String
        # @param ReplacedBy: 重颁发证书原始 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplacedBy: String
        # @param ReplacedFor: 重颁发证书新 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplacedFor: String
        # @param RenewOrder: 新订单证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewOrder: String

        attr_accessor :DomainNumber, :OriginCertificateId, :ReplacedBy, :ReplacedFor, :RenewOrder
        
        def initialize(domainnumber=nil, origincertificateid=nil, replacedby=nil, replacedfor=nil, reneworder=nil)
          @DomainNumber = domainnumber
          @OriginCertificateId = origincertificateid
          @ReplacedBy = replacedby
          @ReplacedFor = replacedfor
          @RenewOrder = reneworder
        end

        def deserialize(params)
          @DomainNumber = params['DomainNumber']
          @OriginCertificateId = params['OriginCertificateId']
          @ReplacedBy = params['ReplacedBy']
          @ReplacedFor = params['ReplacedFor']
          @RenewOrder = params['RenewOrder']
        end
      end

      # 获取证书列表（DescribeCertificates）返回参数键为 Certificates 的内容。
      class Certificates < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param From: 证书来源。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: String
        # @param PackageType: 证书套餐类型：1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateType: String
        # @param ProductZhName: 颁发者。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductZhName: String
        # @param Domain: 主域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Alias: 备注名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Status: 状态值 0：审核中，1：已通过，2：审核失败，3：已过期，4：已添加 DNS 解析记录，5：OV/EV 证书，待提交资料，6：订单取消中，7：已取消，8：已提交资料， 待上传确认函。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param CertificateExtra: 证书扩展信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateExtra: :class:`Tencentcloud::Ssl.v20191205.models.CertificateExtra`
        # @param VulnerabilityStatus: 漏洞扫描状态：INACTIVE = 未开启，ACTIVE = 已开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityStatus: String
        # @param StatusMsg: 状态信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，EMAIL = 邮件验证。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String
        # @param CertBeginTime: 证书生效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书过期时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书有效期，单位（月）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: String
        # @param InsertTime: 创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param CertificateId: 证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateId: String
        # @param SubjectAltName: 证书包含的多个域名（包含主域名）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param PackageTypeName: 证书类型名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageTypeName: String
        # @param StatusName: 状态名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusName: String
        # @param IsVip: 是否为 VIP 客户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVip: Boolean
        # @param IsDv: 是否为 DV 版证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDv: Boolean
        # @param IsWildcard: 是否为泛域名证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWildcard: Boolean
        # @param IsVulnerability: 是否启用了漏洞扫描功能。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVulnerability: Boolean
        # @param RenewAble: 是否可重颁发证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewAble: Boolean
        # @param ProjectInfo: 项目信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectInfo: :class:`Tencentcloud::Ssl.v20191205.models.ProjectInfo`
        # @param BoundResource: 关联的云资源，暂不可用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BoundResource: Array
        # @param Deployable: 是否可部署。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deployable: Boolean
        # @param Tags: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array

        attr_accessor :OwnerUin, :ProjectId, :From, :PackageType, :CertificateType, :ProductZhName, :Domain, :Alias, :Status, :CertificateExtra, :VulnerabilityStatus, :StatusMsg, :VerifyType, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :CertificateId, :SubjectAltName, :PackageTypeName, :StatusName, :IsVip, :IsDv, :IsWildcard, :IsVulnerability, :RenewAble, :ProjectInfo, :BoundResource, :Deployable, :Tags
        
        def initialize(owneruin=nil, projectid=nil, from=nil, packagetype=nil, certificatetype=nil, productzhname=nil, domain=nil, _alias=nil, status=nil, certificateextra=nil, vulnerabilitystatus=nil, statusmsg=nil, verifytype=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, certificateid=nil, subjectaltname=nil, packagetypename=nil, statusname=nil, isvip=nil, isdv=nil, iswildcard=nil, isvulnerability=nil, renewable=nil, projectinfo=nil, boundresource=nil, deployable=nil, tags=nil)
          @OwnerUin = owneruin
          @ProjectId = projectid
          @From = from
          @PackageType = packagetype
          @CertificateType = certificatetype
          @ProductZhName = productzhname
          @Domain = domain
          @Alias = _alias
          @Status = status
          @CertificateExtra = certificateextra
          @VulnerabilityStatus = vulnerabilitystatus
          @StatusMsg = statusmsg
          @VerifyType = verifytype
          @CertBeginTime = certbegintime
          @CertEndTime = certendtime
          @ValidityPeriod = validityperiod
          @InsertTime = inserttime
          @CertificateId = certificateid
          @SubjectAltName = subjectaltname
          @PackageTypeName = packagetypename
          @StatusName = statusname
          @IsVip = isvip
          @IsDv = isdv
          @IsWildcard = iswildcard
          @IsVulnerability = isvulnerability
          @RenewAble = renewable
          @ProjectInfo = projectinfo
          @BoundResource = boundresource
          @Deployable = deployable
          @Tags = tags
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
          @From = params['From']
          @PackageType = params['PackageType']
          @CertificateType = params['CertificateType']
          @ProductZhName = params['ProductZhName']
          @Domain = params['Domain']
          @Alias = params['Alias']
          @Status = params['Status']
          unless params['CertificateExtra'].nil?
            @CertificateExtra = CertificateExtra.new
            @CertificateExtra.deserialize(params['CertificateExtra'])
          end
          @VulnerabilityStatus = params['VulnerabilityStatus']
          @StatusMsg = params['StatusMsg']
          @VerifyType = params['VerifyType']
          @CertBeginTime = params['CertBeginTime']
          @CertEndTime = params['CertEndTime']
          @ValidityPeriod = params['ValidityPeriod']
          @InsertTime = params['InsertTime']
          @CertificateId = params['CertificateId']
          @SubjectAltName = params['SubjectAltName']
          @PackageTypeName = params['PackageTypeName']
          @StatusName = params['StatusName']
          @IsVip = params['IsVip']
          @IsDv = params['IsDv']
          @IsWildcard = params['IsWildcard']
          @IsVulnerability = params['IsVulnerability']
          @RenewAble = params['RenewAble']
          unless params['ProjectInfo'].nil?
            @ProjectInfo = ProjectInfo.new
            @ProjectInfo.deserialize(params['ProjectInfo'])
          end
          @BoundResource = params['BoundResource']
          @Deployable = params['Deployable']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
        end
      end

      # CheckCertificateChain请求参数结构体
      class CheckCertificateChainRequest < TencentCloud::Common::AbstractModel
        # @param CertificateChain: 待检查的证书链
        # @type CertificateChain: String

        attr_accessor :CertificateChain
        
        def initialize(certificatechain=nil)
          @CertificateChain = certificatechain
        end

        def deserialize(params)
          @CertificateChain = params['CertificateChain']
        end
      end

      # CheckCertificateChain返回参数结构体
      class CheckCertificateChainResponse < TencentCloud::Common::AbstractModel
        # @param IsValid: true为通过检查，false为未通过检查。
        # @type IsValid: Boolean
        # @param IsTrustedCA: true为可信CA，false为不可信CA。
        # @type IsTrustedCA: Boolean
        # @param Chains: 包含证书链中每一段证书的通用名称。
        # @type Chains: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IsValid, :IsTrustedCA, :Chains, :RequestId
        
        def initialize(isvalid=nil, istrustedca=nil, chains=nil, requestid=nil)
          @IsValid = isvalid
          @IsTrustedCA = istrustedca
          @Chains = chains
          @RequestId = requestid
        end

        def deserialize(params)
          @IsValid = params['IsValid']
          @IsTrustedCA = params['IsTrustedCA']
          @Chains = params['Chains']
          @RequestId = params['RequestId']
        end
      end

      # CommitCertificateInformation请求参数结构体
      class CommitCertificateInformationRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # CommitCertificateInformation返回参数结构体
      class CommitCertificateInformationResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: CA机构侧订单号。
        # @type OrderId: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :Status, :RequestId
        
        def initialize(orderid=nil, status=nil, requestid=nil)
          @OrderId = orderid
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # 公司信息
      class CompanyInfo < TencentCloud::Common::AbstractModel
        # @param CompanyName: 公司名称
        # @type CompanyName: String
        # @param CompanyId: 公司ID
        # @type CompanyId: Integer
        # @param CompanyCountry: 公司所在国家
        # @type CompanyCountry: String
        # @param CompanyProvince: 公司所在省份
        # @type CompanyProvince: String
        # @param CompanyCity: 公司所在城市
        # @type CompanyCity: String
        # @param CompanyAddress: 公司所在详细地址
        # @type CompanyAddress: String
        # @param CompanyPhone: 公司电话
        # @type CompanyPhone: String

        attr_accessor :CompanyName, :CompanyId, :CompanyCountry, :CompanyProvince, :CompanyCity, :CompanyAddress, :CompanyPhone
        
        def initialize(companyname=nil, companyid=nil, companycountry=nil, companyprovince=nil, companycity=nil, companyaddress=nil, companyphone=nil)
          @CompanyName = companyname
          @CompanyId = companyid
          @CompanyCountry = companycountry
          @CompanyProvince = companyprovince
          @CompanyCity = companycity
          @CompanyAddress = companyaddress
          @CompanyPhone = companyphone
        end

        def deserialize(params)
          @CompanyName = params['CompanyName']
          @CompanyId = params['CompanyId']
          @CompanyCountry = params['CompanyCountry']
          @CompanyProvince = params['CompanyProvince']
          @CompanyCity = params['CompanyCity']
          @CompanyAddress = params['CompanyAddress']
          @CompanyPhone = params['CompanyPhone']
        end
      end

      # CompleteCertificate请求参数结构体
      class CompleteCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # CompleteCertificate返回参数结构体
      class CompleteCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCertificate请求参数结构体
      class CreateCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ProductId: 证书商品ID，3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书，25 = Wotrus 域名型证书，26 = Wotrus 域名型多域名证书，27 = Wotrus 域名型通配符证书，28 = Wotrus 企业型证书，29 = Wotrus 企业型多域名证书，30 = Wotrus 企业型通配符证书，31 = Wotrus 增强型证书，32 = Wotrus 增强型多域名证书，33 = DNSPod 国密域名型证书，34 = DNSPod 国密域名型多域名证书，35 = DNSPod 国密域名型通配符证书，37 = DNSPod 国密企业型证书，38 = DNSPod 国密企业型多域名证书，39 = DNSPod 国密企业型通配符证书，40 = DNSPod 国密增强型证书，41 = DNSPod 国密增强型多域名证书，42 = TrustAsia 域名型通配符多域名证书。
        # @type ProductId: Integer
        # @param DomainNum: 证书包含的域名数量
        # @type DomainNum: Integer
        # @param TimeSpan: 证书年限，当前只支持 1 年证书的购买
        # @type TimeSpan: Integer

        attr_accessor :ProductId, :DomainNum, :TimeSpan
        
        def initialize(productid=nil, domainnum=nil, timespan=nil)
          @ProductId = productid
          @DomainNum = domainnum
          @TimeSpan = timespan
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DomainNum = params['DomainNum']
          @TimeSpan = params['TimeSpan']
        end
      end

      # CreateCertificate返回参数结构体
      class CreateCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateIds: 证书ID列表
        # @type CertificateIds: Array
        # @param DealIds: 订单号列表
        # @type DealIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateIds, :DealIds, :RequestId
        
        def initialize(certificateids=nil, dealids=nil, requestid=nil)
          @CertificateIds = certificateids
          @DealIds = dealids
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateIds = params['CertificateIds']
          @DealIds = params['DealIds']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCertificate请求参数结构体
      class DeleteCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DeleteCertificate返回参数结构体
      class DeleteCertificateResponse < TencentCloud::Common::AbstractModel
        # @param DeleteResult: 删除结果（true：删除成功，false：删除失败）
        # @type DeleteResult: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteResult, :RequestId
        
        def initialize(deleteresult=nil, requestid=nil)
          @DeleteResult = deleteresult
          @RequestId = requestid
        end

        def deserialize(params)
          @DeleteResult = params['DeleteResult']
          @RequestId = params['RequestId']
        end
      end

      # DeleteManager请求参数结构体
      class DeleteManagerRequest < TencentCloud::Common::AbstractModel
        # @param ManagerId: 管理人ID
        # @type ManagerId: Integer

        attr_accessor :ManagerId
        
        def initialize(managerid=nil)
          @ManagerId = managerid
        end

        def deserialize(params)
          @ManagerId = params['ManagerId']
        end
      end

      # DeleteManager返回参数结构体
      class DeleteManagerResponse < TencentCloud::Common::AbstractModel
        # @param ManagerId: 管理人ID
        # @type ManagerId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ManagerId, :RequestId
        
        def initialize(managerid=nil, requestid=nil)
          @ManagerId = managerid
          @RequestId = requestid
        end

        def deserialize(params)
          @ManagerId = params['ManagerId']
          @RequestId = params['RequestId']
        end
      end

      # 资源详情
      class DeployedResources < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID
        # @type CertificateId: String
        # @param Count: 数量
        # @type Count: Integer
        # @param Type: 资源标识:clb,cdn,live,waf,antiddos
        # @type Type: String

        attr_accessor :CertificateId, :Count, :Type
        
        def initialize(certificateid=nil, count=nil, type=nil)
          @CertificateId = certificateid
          @Count = count
          @Type = type
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @Count = params['Count']
          @Type = params['Type']
        end
      end

      # DescribeCertificateDetail请求参数结构体
      class DescribeCertificateDetailRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DescribeCertificateDetail返回参数结构体
      class DescribeCertificateDetailResponse < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param From: 证书来源：trustasia = 亚洲诚信，upload = 用户上传。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateType: String
        # @param PackageType: 证书套餐类型：1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书，25 = Wotrus 域名型证书，26 = Wotrus 域名型多域名证书，27 = Wotrus 域名型通配符证书，28 = Wotrus 企业型证书，29 = Wotrus 企业型多域名证书，30 = Wotrus 企业型通配符证书，31 = Wotrus 增强型证书，32 = Wotrus 增强型多域名证书，33 = DNSPod 国密域名型证书，34 = DNSPod 国密域名型多域名证书，35 = DNSPod 国密域名型通配符证书，37 = DNSPod 国密企业型证书，38 = DNSPod 国密企业型多域名证书，39 = DNSPod 国密企业型通配符证书，40 = DNSPod 国密增强型证书，41 = DNSPod 国密增强型多域名证书，42 = TrustAsia 域名型通配符多域名证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param ProductZhName: 颁发者。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductZhName: String
        # @param Domain: 域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Alias: 备注名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusMsg: 状态信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，EMAIL = 邮件验证。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String
        # @param VulnerabilityStatus: 漏洞扫描状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityStatus: String
        # @param CertBeginTime: 证书生效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书失效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书有效期：单位（月）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: String
        # @param InsertTime: 申请时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param OrderId: 订单 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param CertificateExtra: 证书扩展信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateExtra: :class:`Tencentcloud::Ssl.v20191205.models.CertificateExtra`
        # @param CertificatePrivateKey: 证书私钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificatePrivateKey: String
        # @param CertificatePublicKey: 证书公钥（即证书内容）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificatePublicKey: String
        # @param DvAuthDetail: DV 认证信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDetail: :class:`Tencentcloud::Ssl.v20191205.models.DvAuthDetail`
        # @param VulnerabilityReport: 漏洞扫描评估报告。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityReport: String
        # @param CertificateId: 证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateId: String
        # @param TypeName: 证书类型名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeName: String
        # @param StatusName: 状态描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusName: String
        # @param SubjectAltName: 证书包含的多个域名（包含主域名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param IsVip: 是否为 VIP 客户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVip: Boolean
        # @param IsWildcard: 是否为泛域名证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWildcard: Boolean
        # @param IsDv: 是否为 DV 版证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDv: Boolean
        # @param IsVulnerability: 是否启用了漏洞扫描功能。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVulnerability: Boolean
        # @param SubmittedData: 提交的资料信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmittedData: :class:`Tencentcloud::Ssl.v20191205.models.SubmittedData`
        # @param RenewAble: 是否可重颁发证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewAble: Boolean
        # @param Deployable: 是否可部署。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deployable: Boolean
        # @param Tags: 关联标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnerUin, :ProjectId, :From, :CertificateType, :PackageType, :ProductZhName, :Domain, :Alias, :Status, :StatusMsg, :VerifyType, :VulnerabilityStatus, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :OrderId, :CertificateExtra, :CertificatePrivateKey, :CertificatePublicKey, :DvAuthDetail, :VulnerabilityReport, :CertificateId, :TypeName, :StatusName, :SubjectAltName, :IsVip, :IsWildcard, :IsDv, :IsVulnerability, :SubmittedData, :RenewAble, :Deployable, :Tags, :RequestId
        
        def initialize(owneruin=nil, projectid=nil, from=nil, certificatetype=nil, packagetype=nil, productzhname=nil, domain=nil, _alias=nil, status=nil, statusmsg=nil, verifytype=nil, vulnerabilitystatus=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, orderid=nil, certificateextra=nil, certificateprivatekey=nil, certificatepublickey=nil, dvauthdetail=nil, vulnerabilityreport=nil, certificateid=nil, typename=nil, statusname=nil, subjectaltname=nil, isvip=nil, iswildcard=nil, isdv=nil, isvulnerability=nil, submitteddata=nil, renewable=nil, deployable=nil, tags=nil, requestid=nil)
          @OwnerUin = owneruin
          @ProjectId = projectid
          @From = from
          @CertificateType = certificatetype
          @PackageType = packagetype
          @ProductZhName = productzhname
          @Domain = domain
          @Alias = _alias
          @Status = status
          @StatusMsg = statusmsg
          @VerifyType = verifytype
          @VulnerabilityStatus = vulnerabilitystatus
          @CertBeginTime = certbegintime
          @CertEndTime = certendtime
          @ValidityPeriod = validityperiod
          @InsertTime = inserttime
          @OrderId = orderid
          @CertificateExtra = certificateextra
          @CertificatePrivateKey = certificateprivatekey
          @CertificatePublicKey = certificatepublickey
          @DvAuthDetail = dvauthdetail
          @VulnerabilityReport = vulnerabilityreport
          @CertificateId = certificateid
          @TypeName = typename
          @StatusName = statusname
          @SubjectAltName = subjectaltname
          @IsVip = isvip
          @IsWildcard = iswildcard
          @IsDv = isdv
          @IsVulnerability = isvulnerability
          @SubmittedData = submitteddata
          @RenewAble = renewable
          @Deployable = deployable
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
          @From = params['From']
          @CertificateType = params['CertificateType']
          @PackageType = params['PackageType']
          @ProductZhName = params['ProductZhName']
          @Domain = params['Domain']
          @Alias = params['Alias']
          @Status = params['Status']
          @StatusMsg = params['StatusMsg']
          @VerifyType = params['VerifyType']
          @VulnerabilityStatus = params['VulnerabilityStatus']
          @CertBeginTime = params['CertBeginTime']
          @CertEndTime = params['CertEndTime']
          @ValidityPeriod = params['ValidityPeriod']
          @InsertTime = params['InsertTime']
          @OrderId = params['OrderId']
          unless params['CertificateExtra'].nil?
            @CertificateExtra = CertificateExtra.new
            @CertificateExtra.deserialize(params['CertificateExtra'])
          end
          @CertificatePrivateKey = params['CertificatePrivateKey']
          @CertificatePublicKey = params['CertificatePublicKey']
          unless params['DvAuthDetail'].nil?
            @DvAuthDetail = DvAuthDetail.new
            @DvAuthDetail.deserialize(params['DvAuthDetail'])
          end
          @VulnerabilityReport = params['VulnerabilityReport']
          @CertificateId = params['CertificateId']
          @TypeName = params['TypeName']
          @StatusName = params['StatusName']
          @SubjectAltName = params['SubjectAltName']
          @IsVip = params['IsVip']
          @IsWildcard = params['IsWildcard']
          @IsDv = params['IsDv']
          @IsVulnerability = params['IsVulnerability']
          unless params['SubmittedData'].nil?
            @SubmittedData = SubmittedData.new
            @SubmittedData.deserialize(params['SubmittedData'])
          end
          @RenewAble = params['RenewAble']
          @Deployable = params['Deployable']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificateOperateLogs请求参数结构体
      class DescribeCertificateOperateLogsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 请求日志数量，默认为20。
        # @type Limit: Integer
        # @param StartTime: 开始时间，默认15天前。
        # @type StartTime: String
        # @param EndTime: 结束时间，默认现在时间。
        # @type EndTime: String

        attr_accessor :Offset, :Limit, :StartTime, :EndTime
        
        def initialize(offset=nil, limit=nil, starttime=nil, endtime=nil)
          @Offset = offset
          @Limit = limit
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # DescribeCertificateOperateLogs返回参数结构体
      class DescribeCertificateOperateLogsResponse < TencentCloud::Common::AbstractModel
        # @param AllTotal: 当前查询条件日志总数。
        # @type AllTotal: Integer
        # @param TotalCount: 本次请求返回的日志数量。
        # @type TotalCount: Integer
        # @param OperateLogs: 证书操作日志列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OperateLogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AllTotal, :TotalCount, :OperateLogs, :RequestId
        
        def initialize(alltotal=nil, totalcount=nil, operatelogs=nil, requestid=nil)
          @AllTotal = alltotal
          @TotalCount = totalcount
          @OperateLogs = operatelogs
          @RequestId = requestid
        end

        def deserialize(params)
          @AllTotal = params['AllTotal']
          @TotalCount = params['TotalCount']
          unless params['OperateLogs'].nil?
            @OperateLogs = []
            params['OperateLogs'].each do |i|
              operationlog_tmp = OperationLog.new
              operationlog_tmp.deserialize(i)
              @OperateLogs << operationlog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificate请求参数结构体
      class DescribeCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DescribeCertificate返回参数结构体
      class DescribeCertificateResponse < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param From: 证书来源：trustasia = 亚洲诚信，upload = 用户上传。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateType: String
        # @param PackageType: 证书套餐类型：1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param ProductZhName: 证书颁发者名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductZhName: String
        # @param Domain: 域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Alias: 备注名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusMsg: 状态信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，EMAIL = 邮件验证。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String
        # @param VulnerabilityStatus: 漏洞扫描状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityStatus: String
        # @param CertBeginTime: 证书生效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书失效时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书有效期：单位(月)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: String
        # @param InsertTime: 申请时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param OrderId: 订单 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param CertificateExtra: 证书扩展信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateExtra: :class:`Tencentcloud::Ssl.v20191205.models.CertificateExtra`
        # @param DvAuthDetail: DV 认证信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDetail: :class:`Tencentcloud::Ssl.v20191205.models.DvAuthDetail`
        # @param VulnerabilityReport: 漏洞扫描评估报告。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityReport: String
        # @param CertificateId: 证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateId: String
        # @param PackageTypeName: 证书类型名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageTypeName: String
        # @param StatusName: 状态描述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusName: String
        # @param SubjectAltName: 证书包含的多个域名（包含主域名）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param IsVip: 是否为 VIP 客户。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVip: Boolean
        # @param IsWildcard: 是否为泛域名证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWildcard: Boolean
        # @param IsDv: 是否为 DV 版证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDv: Boolean
        # @param IsVulnerability: 是否启用了漏洞扫描功能。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVulnerability: Boolean
        # @param RenewAble: 是否可重颁发证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewAble: Boolean
        # @param SubmittedData: 提交的资料信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmittedData: :class:`Tencentcloud::Ssl.v20191205.models.SubmittedData`
        # @param Deployable: 是否可部署。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deployable: Boolean
        # @param Tags: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnerUin, :ProjectId, :From, :CertificateType, :PackageType, :ProductZhName, :Domain, :Alias, :Status, :StatusMsg, :VerifyType, :VulnerabilityStatus, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :OrderId, :CertificateExtra, :DvAuthDetail, :VulnerabilityReport, :CertificateId, :PackageTypeName, :StatusName, :SubjectAltName, :IsVip, :IsWildcard, :IsDv, :IsVulnerability, :RenewAble, :SubmittedData, :Deployable, :Tags, :RequestId
        
        def initialize(owneruin=nil, projectid=nil, from=nil, certificatetype=nil, packagetype=nil, productzhname=nil, domain=nil, _alias=nil, status=nil, statusmsg=nil, verifytype=nil, vulnerabilitystatus=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, orderid=nil, certificateextra=nil, dvauthdetail=nil, vulnerabilityreport=nil, certificateid=nil, packagetypename=nil, statusname=nil, subjectaltname=nil, isvip=nil, iswildcard=nil, isdv=nil, isvulnerability=nil, renewable=nil, submitteddata=nil, deployable=nil, tags=nil, requestid=nil)
          @OwnerUin = owneruin
          @ProjectId = projectid
          @From = from
          @CertificateType = certificatetype
          @PackageType = packagetype
          @ProductZhName = productzhname
          @Domain = domain
          @Alias = _alias
          @Status = status
          @StatusMsg = statusmsg
          @VerifyType = verifytype
          @VulnerabilityStatus = vulnerabilitystatus
          @CertBeginTime = certbegintime
          @CertEndTime = certendtime
          @ValidityPeriod = validityperiod
          @InsertTime = inserttime
          @OrderId = orderid
          @CertificateExtra = certificateextra
          @DvAuthDetail = dvauthdetail
          @VulnerabilityReport = vulnerabilityreport
          @CertificateId = certificateid
          @PackageTypeName = packagetypename
          @StatusName = statusname
          @SubjectAltName = subjectaltname
          @IsVip = isvip
          @IsWildcard = iswildcard
          @IsDv = isdv
          @IsVulnerability = isvulnerability
          @RenewAble = renewable
          @SubmittedData = submitteddata
          @Deployable = deployable
          @Tags = tags
          @RequestId = requestid
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
          @From = params['From']
          @CertificateType = params['CertificateType']
          @PackageType = params['PackageType']
          @ProductZhName = params['ProductZhName']
          @Domain = params['Domain']
          @Alias = params['Alias']
          @Status = params['Status']
          @StatusMsg = params['StatusMsg']
          @VerifyType = params['VerifyType']
          @VulnerabilityStatus = params['VulnerabilityStatus']
          @CertBeginTime = params['CertBeginTime']
          @CertEndTime = params['CertEndTime']
          @ValidityPeriod = params['ValidityPeriod']
          @InsertTime = params['InsertTime']
          @OrderId = params['OrderId']
          unless params['CertificateExtra'].nil?
            @CertificateExtra = CertificateExtra.new
            @CertificateExtra.deserialize(params['CertificateExtra'])
          end
          unless params['DvAuthDetail'].nil?
            @DvAuthDetail = DvAuthDetail.new
            @DvAuthDetail.deserialize(params['DvAuthDetail'])
          end
          @VulnerabilityReport = params['VulnerabilityReport']
          @CertificateId = params['CertificateId']
          @PackageTypeName = params['PackageTypeName']
          @StatusName = params['StatusName']
          @SubjectAltName = params['SubjectAltName']
          @IsVip = params['IsVip']
          @IsWildcard = params['IsWildcard']
          @IsDv = params['IsDv']
          @IsVulnerability = params['IsVulnerability']
          @RenewAble = params['RenewAble']
          unless params['SubmittedData'].nil?
            @SubmittedData = SubmittedData.new
            @SubmittedData.deserialize(params['SubmittedData'])
          end
          @Deployable = params['Deployable']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificates请求参数结构体
      class DescribeCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认20。
        # @type Limit: Integer
        # @param SearchKey: 搜索关键词，可搜索证书 ID、备注名称、域名。例如： a8xHcaIs。
        # @type SearchKey: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # @type CertificateType: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param ExpirationSort: 按到期时间排序：DESC = 降序， ASC = 升序。
        # @type ExpirationSort: String
        # @param CertificateStatus: 证书状态。
        # @type CertificateStatus: Array
        # @param Deployable: 是否可部署，可选值：1 = 可部署，0 =  不可部署。
        # @type Deployable: Integer
        # @param Upload: 是否筛选上传托管的 1筛选，0不筛选
        # @type Upload: Integer
        # @param Renew: 是否筛选可续期证书 1筛选 0不筛选
        # @type Renew: Integer

        attr_accessor :Offset, :Limit, :SearchKey, :CertificateType, :ProjectId, :ExpirationSort, :CertificateStatus, :Deployable, :Upload, :Renew
        
        def initialize(offset=nil, limit=nil, searchkey=nil, certificatetype=nil, projectid=nil, expirationsort=nil, certificatestatus=nil, deployable=nil, upload=nil, renew=nil)
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
          @CertificateType = certificatetype
          @ProjectId = projectid
          @ExpirationSort = expirationsort
          @CertificateStatus = certificatestatus
          @Deployable = deployable
          @Upload = upload
          @Renew = renew
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
          @CertificateType = params['CertificateType']
          @ProjectId = params['ProjectId']
          @ExpirationSort = params['ExpirationSort']
          @CertificateStatus = params['CertificateStatus']
          @Deployable = params['Deployable']
          @Upload = params['Upload']
          @Renew = params['Renew']
        end
      end

      # DescribeCertificates返回参数结构体
      class DescribeCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param Certificates: 列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Certificates, :RequestId
        
        def initialize(totalcount=nil, certificates=nil, requestid=nil)
          @TotalCount = totalcount
          @Certificates = certificates
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Certificates'].nil?
            @Certificates = []
            params['Certificates'].each do |i|
              certificates_tmp = Certificates.new
              certificates_tmp.deserialize(i)
              @Certificates << certificates_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeployedResources请求参数结构体
      class DescribeDeployedResourcesRequest < TencentCloud::Common::AbstractModel
        # @param CertificateIds: 证书ID
        # @type CertificateIds: Array
        # @param ResourceType: 资源类型:clb,cdn,live,waf,antiddos
        # @type ResourceType: String

        attr_accessor :CertificateIds, :ResourceType
        
        def initialize(certificateids=nil, resourcetype=nil)
          @CertificateIds = certificateids
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @CertificateIds = params['CertificateIds']
          @ResourceType = params['ResourceType']
        end
      end

      # DescribeDeployedResources返回参数结构体
      class DescribeDeployedResourcesResponse < TencentCloud::Common::AbstractModel
        # @param DeployedResources: 资源详情
        # @type DeployedResources: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeployedResources, :RequestId
        
        def initialize(deployedresources=nil, requestid=nil)
          @DeployedResources = deployedresources
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeployedResources'].nil?
            @DeployedResources = []
            params['DeployedResources'].each do |i|
              deployedresources_tmp = DeployedResources.new
              deployedresources_tmp.deserialize(i)
              @DeployedResources << deployedresources_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeManagerDetail请求参数结构体
      class DescribeManagerDetailRequest < TencentCloud::Common::AbstractModel
        # @param ManagerId: 管理人ID
        # @type ManagerId: Integer
        # @param Limit: 分页每页数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer

        attr_accessor :ManagerId, :Limit, :Offset
        
        def initialize(managerid=nil, limit=nil, offset=nil)
          @ManagerId = managerid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ManagerId = params['ManagerId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeManagerDetail返回参数结构体
      class DescribeManagerDetailResponse < TencentCloud::Common::AbstractModel
        # @param Status: 状态: audit: 审核中 ok: 审核通过 invalid: 失效 expiring: 即将过期 expired: 已过期
        # @type Status: String
        # @param ManagerFirstName: 管理人姓名
        # @type ManagerFirstName: String
        # @param ManagerMail: 管理人邮箱
        # @type ManagerMail: String
        # @param ContactFirstName: 联系人姓名
        # @type ContactFirstName: String
        # @param ManagerLastName: 管理人姓名
        # @type ManagerLastName: String
        # @param ContactPosition: 联系人职位
        # @type ContactPosition: String
        # @param ManagerPosition: 管理人职位
        # @type ManagerPosition: String
        # @param VerifyTime: 核验通过时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyTime: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpireTime: 核验过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param ContactLastName: 联系人姓名
        # @type ContactLastName: String
        # @param ManagerPhone: 管理人电话
        # @type ManagerPhone: String
        # @param ContactPhone: 联系人电话
        # @type ContactPhone: String
        # @param ContactMail: 联系人邮箱
        # @type ContactMail: String
        # @param ManagerDepartment: 管理人所属部门
        # @type ManagerDepartment: String
        # @param CompanyInfo: 管理人所属公司信息
        # @type CompanyInfo: :class:`Tencentcloud::Ssl.v20191205.models.CompanyInfo`
        # @param CompanyId: 管理人公司ID
        # @type CompanyId: Integer
        # @param ManagerId: 管理人ID
        # @type ManagerId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ManagerFirstName, :ManagerMail, :ContactFirstName, :ManagerLastName, :ContactPosition, :ManagerPosition, :VerifyTime, :CreateTime, :ExpireTime, :ContactLastName, :ManagerPhone, :ContactPhone, :ContactMail, :ManagerDepartment, :CompanyInfo, :CompanyId, :ManagerId, :RequestId
        
        def initialize(status=nil, managerfirstname=nil, managermail=nil, contactfirstname=nil, managerlastname=nil, contactposition=nil, managerposition=nil, verifytime=nil, createtime=nil, expiretime=nil, contactlastname=nil, managerphone=nil, contactphone=nil, contactmail=nil, managerdepartment=nil, companyinfo=nil, companyid=nil, managerid=nil, requestid=nil)
          @Status = status
          @ManagerFirstName = managerfirstname
          @ManagerMail = managermail
          @ContactFirstName = contactfirstname
          @ManagerLastName = managerlastname
          @ContactPosition = contactposition
          @ManagerPosition = managerposition
          @VerifyTime = verifytime
          @CreateTime = createtime
          @ExpireTime = expiretime
          @ContactLastName = contactlastname
          @ManagerPhone = managerphone
          @ContactPhone = contactphone
          @ContactMail = contactmail
          @ManagerDepartment = managerdepartment
          @CompanyInfo = companyinfo
          @CompanyId = companyid
          @ManagerId = managerid
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @ManagerFirstName = params['ManagerFirstName']
          @ManagerMail = params['ManagerMail']
          @ContactFirstName = params['ContactFirstName']
          @ManagerLastName = params['ManagerLastName']
          @ContactPosition = params['ContactPosition']
          @ManagerPosition = params['ManagerPosition']
          @VerifyTime = params['VerifyTime']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          @ContactLastName = params['ContactLastName']
          @ManagerPhone = params['ManagerPhone']
          @ContactPhone = params['ContactPhone']
          @ContactMail = params['ContactMail']
          @ManagerDepartment = params['ManagerDepartment']
          unless params['CompanyInfo'].nil?
            @CompanyInfo = CompanyInfo.new
            @CompanyInfo.deserialize(params['CompanyInfo'])
          end
          @CompanyId = params['CompanyId']
          @ManagerId = params['ManagerId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeManagers请求参数结构体
      class DescribeManagersRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID
        # @type CompanyId: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页每页数量
        # @type Limit: Integer
        # @param ManagerName: 管理人姓名
        # @type ManagerName: String
        # @param ManagerMail: 模糊查询管理人邮箱
        # @type ManagerMail: String
        # @param Status: 根据管理人状态进行筛选，取值有
        # 'none' 未提交审核
        # 'audit', 亚信审核中
        # 'CAaudit' CA审核中
        # 'ok' 已审核
        # 'invalid'  审核失败
        # 'expiring'  即将过期
        # 'expired' 已过期
        # @type Status: String
        # @param SearchKey: 管理人姓名/邮箱/部门精准匹配
        # @type SearchKey: String

        attr_accessor :CompanyId, :Offset, :Limit, :ManagerName, :ManagerMail, :Status, :SearchKey
        
        def initialize(companyid=nil, offset=nil, limit=nil, managername=nil, managermail=nil, status=nil, searchkey=nil)
          @CompanyId = companyid
          @Offset = offset
          @Limit = limit
          @ManagerName = managername
          @ManagerMail = managermail
          @Status = status
          @SearchKey = searchkey
        end

        def deserialize(params)
          @CompanyId = params['CompanyId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ManagerName = params['ManagerName']
          @ManagerMail = params['ManagerMail']
          @Status = params['Status']
          @SearchKey = params['SearchKey']
        end
      end

      # DescribeManagers返回参数结构体
      class DescribeManagersResponse < TencentCloud::Common::AbstractModel
        # @param Managers: 公司管理人列表
        # @type Managers: Array
        # @param TotalCount: 公司管理人总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Managers, :TotalCount, :RequestId
        
        def initialize(managers=nil, totalcount=nil, requestid=nil)
          @Managers = managers
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Managers'].nil?
            @Managers = []
            params['Managers'].each do |i|
              managerinfo_tmp = ManagerInfo.new
              managerinfo_tmp.deserialize(i)
              @Managers << managerinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DownloadCertificate请求参数结构体
      class DownloadCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DownloadCertificate返回参数结构体
      class DownloadCertificateResponse < TencentCloud::Common::AbstractModel
        # @param Content: ZIP base64 编码内容，base64 解码后可保存为 ZIP 文件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Content: String
        # @param ContentType: MIME 类型：application/zip = ZIP 压缩文件。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContentType: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :ContentType, :RequestId
        
        def initialize(content=nil, contenttype=nil, requestid=nil)
          @Content = content
          @ContentType = contenttype
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @ContentType = params['ContentType']
          @RequestId = params['RequestId']
        end
      end

      # 获取证书列表（DescribeCertificate）返回参数键为 DvAuthDetail 的内容。
      class DvAuthDetail < TencentCloud::Common::AbstractModel
        # @param DvAuthKey: DV 认证密钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthKey: String
        # @param DvAuthValue: DV 认证值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthValue: String
        # @param DvAuthDomain: DV 认证值域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDomain: String
        # @param DvAuthPath: DV 认证值路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthPath: String
        # @param DvAuthKeySubDomain: DV 认证子域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthKeySubDomain: String
        # @param DvAuths: DV 认证信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuths: Array

        attr_accessor :DvAuthKey, :DvAuthValue, :DvAuthDomain, :DvAuthPath, :DvAuthKeySubDomain, :DvAuths
        
        def initialize(dvauthkey=nil, dvauthvalue=nil, dvauthdomain=nil, dvauthpath=nil, dvauthkeysubdomain=nil, dvauths=nil)
          @DvAuthKey = dvauthkey
          @DvAuthValue = dvauthvalue
          @DvAuthDomain = dvauthdomain
          @DvAuthPath = dvauthpath
          @DvAuthKeySubDomain = dvauthkeysubdomain
          @DvAuths = dvauths
        end

        def deserialize(params)
          @DvAuthKey = params['DvAuthKey']
          @DvAuthValue = params['DvAuthValue']
          @DvAuthDomain = params['DvAuthDomain']
          @DvAuthPath = params['DvAuthPath']
          @DvAuthKeySubDomain = params['DvAuthKeySubDomain']
          unless params['DvAuths'].nil?
            @DvAuths = []
            params['DvAuths'].each do |i|
              dvauths_tmp = DvAuths.new
              dvauths_tmp.deserialize(i)
              @DvAuths << dvauths_tmp
            end
          end
        end
      end

      # 返回参数键为 DvAuths 的内容。
      class DvAuths < TencentCloud::Common::AbstractModel
        # @param DvAuthKey: DV 认证密钥。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthKey: String
        # @param DvAuthValue: DV 认证值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthValue: String
        # @param DvAuthDomain: DV 认证值域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDomain: String
        # @param DvAuthPath: DV 认证值路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthPath: String
        # @param DvAuthSubDomain: DV 认证子域名，
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthSubDomain: String
        # @param DvAuthVerifyType: DV 认证类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthVerifyType: String

        attr_accessor :DvAuthKey, :DvAuthValue, :DvAuthDomain, :DvAuthPath, :DvAuthSubDomain, :DvAuthVerifyType
        
        def initialize(dvauthkey=nil, dvauthvalue=nil, dvauthdomain=nil, dvauthpath=nil, dvauthsubdomain=nil, dvauthverifytype=nil)
          @DvAuthKey = dvauthkey
          @DvAuthValue = dvauthvalue
          @DvAuthDomain = dvauthdomain
          @DvAuthPath = dvauthpath
          @DvAuthSubDomain = dvauthsubdomain
          @DvAuthVerifyType = dvauthverifytype
        end

        def deserialize(params)
          @DvAuthKey = params['DvAuthKey']
          @DvAuthValue = params['DvAuthValue']
          @DvAuthDomain = params['DvAuthDomain']
          @DvAuthPath = params['DvAuthPath']
          @DvAuthSubDomain = params['DvAuthSubDomain']
          @DvAuthVerifyType = params['DvAuthVerifyType']
        end
      end

      # 管理人信息
      class ManagerInfo < TencentCloud::Common::AbstractModel
        # @param Status: 状态: audit: 审核中 ok: 审核通过 invalid: 失效 expiring: 即将过期 expired: 已过期
        # @type Status: String
        # @param ManagerFirstName: 管理人姓名
        # @type ManagerFirstName: String
        # @param ManagerLastName: 管理人姓名
        # @type ManagerLastName: String
        # @param ManagerPosition: 管理人职位
        # @type ManagerPosition: String
        # @param ManagerPhone: 管理人电话
        # @type ManagerPhone: String
        # @param ManagerMail: 管理人邮箱
        # @type ManagerMail: String
        # @param ManagerDepartment: 管理人所属部门
        # @type ManagerDepartment: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param DomainCount: 管理人域名数量
        # @type DomainCount: Integer
        # @param CertCount: 管理人证书数量
        # @type CertCount: Integer
        # @param ManagerId: 管理人ID
        # @type ManagerId: Integer
        # @param ExpireTime: 审核有效到期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExpireTime: String
        # @param SubmitAuditTime: 最近一次提交审核时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmitAuditTime: String
        # @param VerifyTime: 审核通过时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyTime: String
        # @param StatusInfo: 具体审核状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusInfo: Array

        attr_accessor :Status, :ManagerFirstName, :ManagerLastName, :ManagerPosition, :ManagerPhone, :ManagerMail, :ManagerDepartment, :CreateTime, :DomainCount, :CertCount, :ManagerId, :ExpireTime, :SubmitAuditTime, :VerifyTime, :StatusInfo
        
        def initialize(status=nil, managerfirstname=nil, managerlastname=nil, managerposition=nil, managerphone=nil, managermail=nil, managerdepartment=nil, createtime=nil, domaincount=nil, certcount=nil, managerid=nil, expiretime=nil, submitaudittime=nil, verifytime=nil, statusinfo=nil)
          @Status = status
          @ManagerFirstName = managerfirstname
          @ManagerLastName = managerlastname
          @ManagerPosition = managerposition
          @ManagerPhone = managerphone
          @ManagerMail = managermail
          @ManagerDepartment = managerdepartment
          @CreateTime = createtime
          @DomainCount = domaincount
          @CertCount = certcount
          @ManagerId = managerid
          @ExpireTime = expiretime
          @SubmitAuditTime = submitaudittime
          @VerifyTime = verifytime
          @StatusInfo = statusinfo
        end

        def deserialize(params)
          @Status = params['Status']
          @ManagerFirstName = params['ManagerFirstName']
          @ManagerLastName = params['ManagerLastName']
          @ManagerPosition = params['ManagerPosition']
          @ManagerPhone = params['ManagerPhone']
          @ManagerMail = params['ManagerMail']
          @ManagerDepartment = params['ManagerDepartment']
          @CreateTime = params['CreateTime']
          @DomainCount = params['DomainCount']
          @CertCount = params['CertCount']
          @ManagerId = params['ManagerId']
          @ExpireTime = params['ExpireTime']
          @SubmitAuditTime = params['SubmitAuditTime']
          @VerifyTime = params['VerifyTime']
          unless params['StatusInfo'].nil?
            @StatusInfo = []
            params['StatusInfo'].each do |i|
              managerstatusinfo_tmp = ManagerStatusInfo.new
              managerstatusinfo_tmp.deserialize(i)
              @StatusInfo << managerstatusinfo_tmp
            end
          end
        end
      end

      # 管理人的四种审核状态
      class ManagerStatusInfo < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyCertificateAlias请求参数结构体
      class ModifyCertificateAliasRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param Alias: 备注名称。
        # @type Alias: String

        attr_accessor :CertificateId, :Alias
        
        def initialize(certificateid=nil, _alias=nil)
          @CertificateId = certificateid
          @Alias = _alias
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @Alias = params['Alias']
        end
      end

      # ModifyCertificateAlias返回参数结构体
      class ModifyCertificateAliasResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 修改成功的证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyCertificateProject请求参数结构体
      class ModifyCertificateProjectRequest < TencentCloud::Common::AbstractModel
        # @param CertificateIdList: 需要修改所属项目的证书 ID 集合，最多100个证书。
        # @type CertificateIdList: Array
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer

        attr_accessor :CertificateIdList, :ProjectId
        
        def initialize(certificateidlist=nil, projectid=nil)
          @CertificateIdList = certificateidlist
          @ProjectId = projectid
        end

        def deserialize(params)
          @CertificateIdList = params['CertificateIdList']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyCertificateProject返回参数结构体
      class ModifyCertificateProjectResponse < TencentCloud::Common::AbstractModel
        # @param SuccessCertificates: 修改所属项目成功的证书集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessCertificates: Array
        # @param FailCertificates: 修改所属项目失败的证书集合。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailCertificates: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SuccessCertificates, :FailCertificates, :RequestId
        
        def initialize(successcertificates=nil, failcertificates=nil, requestid=nil)
          @SuccessCertificates = successcertificates
          @FailCertificates = failcertificates
          @RequestId = requestid
        end

        def deserialize(params)
          @SuccessCertificates = params['SuccessCertificates']
          @FailCertificates = params['FailCertificates']
          @RequestId = params['RequestId']
        end
      end

      # 证书操作日志。
      class OperationLog < TencentCloud::Common::AbstractModel
        # @param Action: 操作证书动作。
        # @type Action: String
        # @param CreatedOn: 操作时间。
        # @type CreatedOn: String

        attr_accessor :Action, :CreatedOn
        
        def initialize(action=nil, createdon=nil)
          @Action = action
          @CreatedOn = createdon
        end

        def deserialize(params)
          @Action = params['Action']
          @CreatedOn = params['CreatedOn']
        end
      end

      # 获取证书列表（DescribeCertificates）返回参数键为 Certificates 下，key为 ProjectInfo 的内容。
      class ProjectInfo < TencentCloud::Common::AbstractModel
        # @param ProjectName: 项目名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectName: String
        # @param ProjectCreatorUin: 项目创建用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectCreatorUin: Integer
        # @param ProjectCreateTime: 项目创建时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectCreateTime: String
        # @param ProjectResume: 项目信息简述。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectResume: String
        # @param OwnerUin: 用户 UIN。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: Integer
        # @param ProjectId: 项目 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String

        attr_accessor :ProjectName, :ProjectCreatorUin, :ProjectCreateTime, :ProjectResume, :OwnerUin, :ProjectId
        
        def initialize(projectname=nil, projectcreatoruin=nil, projectcreatetime=nil, projectresume=nil, owneruin=nil, projectid=nil)
          @ProjectName = projectname
          @ProjectCreatorUin = projectcreatoruin
          @ProjectCreateTime = projectcreatetime
          @ProjectResume = projectresume
          @OwnerUin = owneruin
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectName = params['ProjectName']
          @ProjectCreatorUin = params['ProjectCreatorUin']
          @ProjectCreateTime = params['ProjectCreateTime']
          @ProjectResume = params['ProjectResume']
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
        end
      end

      # ReplaceCertificate请求参数结构体
      class ReplaceCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param ValidType: 验证类型：DNS_AUTO = 自动DNS验证（仅支持在腾讯云解析且解析状态正常的域名使用该验证类型），DNS = 手动DNS验证，FILE = 文件验证。
        # @type ValidType: String
        # @param CsrType: 类型，默认 Original。可选项：Original = 原证书 CSR，Upload = 手动上传，Online = 在线生成。
        # @type CsrType: String
        # @param CsrContent: CSR 内容。
        # @type CsrContent: String
        # @param CsrkeyPassword: KEY 密码。
        # @type CsrkeyPassword: String
        # @param Reason: 重颁发原因。
        # @type Reason: String

        attr_accessor :CertificateId, :ValidType, :CsrType, :CsrContent, :CsrkeyPassword, :Reason
        
        def initialize(certificateid=nil, validtype=nil, csrtype=nil, csrcontent=nil, csrkeypassword=nil, reason=nil)
          @CertificateId = certificateid
          @ValidType = validtype
          @CsrType = csrtype
          @CsrContent = csrcontent
          @CsrkeyPassword = csrkeypassword
          @Reason = reason
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ValidType = params['ValidType']
          @CsrType = params['CsrType']
          @CsrContent = params['CsrContent']
          @CsrkeyPassword = params['CsrkeyPassword']
          @Reason = params['Reason']
        end
      end

      # ReplaceCertificate返回参数结构体
      class ReplaceCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # RevokeCertificate请求参数结构体
      class RevokeCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param Reason: 吊销证书原因。
        # @type Reason: String

        attr_accessor :CertificateId, :Reason
        
        def initialize(certificateid=nil, reason=nil)
          @CertificateId = certificateid
          @Reason = reason
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @Reason = params['Reason']
        end
      end

      # RevokeCertificate返回参数结构体
      class RevokeCertificateResponse < TencentCloud::Common::AbstractModel
        # @param RevokeDomainValidateAuths: 吊销证书域名验证信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RevokeDomainValidateAuths: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RevokeDomainValidateAuths, :RequestId
        
        def initialize(revokedomainvalidateauths=nil, requestid=nil)
          @RevokeDomainValidateAuths = revokedomainvalidateauths
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['RevokeDomainValidateAuths'].nil?
            @RevokeDomainValidateAuths = []
            params['RevokeDomainValidateAuths'].each do |i|
              revokedomainvalidateauths_tmp = RevokeDomainValidateAuths.new
              revokedomainvalidateauths_tmp.deserialize(i)
              @RevokeDomainValidateAuths << revokedomainvalidateauths_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 返回参数键为 RevokeDomainValidateAuths 的内容。
      class RevokeDomainValidateAuths < TencentCloud::Common::AbstractModel
        # @param DomainValidateAuthPath: DV 认证值路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainValidateAuthPath: String
        # @param DomainValidateAuthKey: DV 认证 KEY。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainValidateAuthKey: String
        # @param DomainValidateAuthValue: DV 认证值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainValidateAuthValue: String
        # @param DomainValidateAuthDomain: DV 认证域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainValidateAuthDomain: String

        attr_accessor :DomainValidateAuthPath, :DomainValidateAuthKey, :DomainValidateAuthValue, :DomainValidateAuthDomain
        
        def initialize(domainvalidateauthpath=nil, domainvalidateauthkey=nil, domainvalidateauthvalue=nil, domainvalidateauthdomain=nil)
          @DomainValidateAuthPath = domainvalidateauthpath
          @DomainValidateAuthKey = domainvalidateauthkey
          @DomainValidateAuthValue = domainvalidateauthvalue
          @DomainValidateAuthDomain = domainvalidateauthdomain
        end

        def deserialize(params)
          @DomainValidateAuthPath = params['DomainValidateAuthPath']
          @DomainValidateAuthKey = params['DomainValidateAuthKey']
          @DomainValidateAuthValue = params['DomainValidateAuthValue']
          @DomainValidateAuthDomain = params['DomainValidateAuthDomain']
        end
      end

      # SubmitAuditManager请求参数结构体
      class SubmitAuditManagerRequest < TencentCloud::Common::AbstractModel
        # @param ManagerId: 管理人ID
        # @type ManagerId: Integer

        attr_accessor :ManagerId
        
        def initialize(managerid=nil)
          @ManagerId = managerid
        end

        def deserialize(params)
          @ManagerId = params['ManagerId']
        end
      end

      # SubmitAuditManager返回参数结构体
      class SubmitAuditManagerResponse < TencentCloud::Common::AbstractModel
        # @param ManagerId: 管理人ID
        # @type ManagerId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ManagerId, :RequestId
        
        def initialize(managerid=nil, requestid=nil)
          @ManagerId = managerid
          @RequestId = requestid
        end

        def deserialize(params)
          @ManagerId = params['ManagerId']
          @RequestId = params['RequestId']
        end
      end

      # SubmitCertificateInformation请求参数结构体
      class SubmitCertificateInformationRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param CsrType: CSR 生成方式：online = 在线生成, parse = 手动上传。
        # @type CsrType: String
        # @param CsrContent: 上传的 CSR 内容。
        # @type CsrContent: String
        # @param CertificateDomain: 绑定证书的域名。
        # @type CertificateDomain: String
        # @param DomainList: 上传的域名数组（多域名证书可以上传）。
        # @type DomainList: Array
        # @param KeyPassword: 私钥密码（非必填）。
        # @type KeyPassword: String
        # @param OrganizationName: 公司名称。
        # @type OrganizationName: String
        # @param OrganizationDivision: 部门名称。
        # @type OrganizationDivision: String
        # @param OrganizationAddress: 公司详细地址。
        # @type OrganizationAddress: String
        # @param OrganizationCountry: 国家名称，如中国：CN 。
        # @type OrganizationCountry: String
        # @param OrganizationCity: 公司所在城市。
        # @type OrganizationCity: String
        # @param OrganizationRegion: 公司所在省份。
        # @type OrganizationRegion: String
        # @param PostalCode: 公司邮编。
        # @type PostalCode: String
        # @param PhoneAreaCode: 公司座机区号。
        # @type PhoneAreaCode: String
        # @param PhoneNumber: 公司座机号码。
        # @type PhoneNumber: String
        # @param VerifyType: 证书验证方式。验证类型：DNS_AUTO = 自动DNS验证（仅支持在腾讯云解析且解析状态正常的域名使用该验证类型），DNS = 手动DNS验证，FILE = 文件验证。
        # @type VerifyType: String
        # @param AdminFirstName: 管理人名。
        # @type AdminFirstName: String
        # @param AdminLastName: 管理人姓。
        # @type AdminLastName: String
        # @param AdminPhoneNum: 管理人手机号码。
        # @type AdminPhoneNum: String
        # @param AdminEmail: 管理人邮箱地址。
        # @type AdminEmail: String
        # @param AdminPosition: 管理人职位。
        # @type AdminPosition: String
        # @param ContactFirstName: 联系人名。
        # @type ContactFirstName: String
        # @param ContactLastName: 联系人姓。
        # @type ContactLastName: String
        # @param ContactEmail: 联系人邮箱地址。
        # @type ContactEmail: String
        # @param ContactNumber: 联系人手机号码。
        # @type ContactNumber: String
        # @param ContactPosition: 联系人职位。
        # @type ContactPosition: String

        attr_accessor :CertificateId, :CsrType, :CsrContent, :CertificateDomain, :DomainList, :KeyPassword, :OrganizationName, :OrganizationDivision, :OrganizationAddress, :OrganizationCountry, :OrganizationCity, :OrganizationRegion, :PostalCode, :PhoneAreaCode, :PhoneNumber, :VerifyType, :AdminFirstName, :AdminLastName, :AdminPhoneNum, :AdminEmail, :AdminPosition, :ContactFirstName, :ContactLastName, :ContactEmail, :ContactNumber, :ContactPosition
        
        def initialize(certificateid=nil, csrtype=nil, csrcontent=nil, certificatedomain=nil, domainlist=nil, keypassword=nil, organizationname=nil, organizationdivision=nil, organizationaddress=nil, organizationcountry=nil, organizationcity=nil, organizationregion=nil, postalcode=nil, phoneareacode=nil, phonenumber=nil, verifytype=nil, adminfirstname=nil, adminlastname=nil, adminphonenum=nil, adminemail=nil, adminposition=nil, contactfirstname=nil, contactlastname=nil, contactemail=nil, contactnumber=nil, contactposition=nil)
          @CertificateId = certificateid
          @CsrType = csrtype
          @CsrContent = csrcontent
          @CertificateDomain = certificatedomain
          @DomainList = domainlist
          @KeyPassword = keypassword
          @OrganizationName = organizationname
          @OrganizationDivision = organizationdivision
          @OrganizationAddress = organizationaddress
          @OrganizationCountry = organizationcountry
          @OrganizationCity = organizationcity
          @OrganizationRegion = organizationregion
          @PostalCode = postalcode
          @PhoneAreaCode = phoneareacode
          @PhoneNumber = phonenumber
          @VerifyType = verifytype
          @AdminFirstName = adminfirstname
          @AdminLastName = adminlastname
          @AdminPhoneNum = adminphonenum
          @AdminEmail = adminemail
          @AdminPosition = adminposition
          @ContactFirstName = contactfirstname
          @ContactLastName = contactlastname
          @ContactEmail = contactemail
          @ContactNumber = contactnumber
          @ContactPosition = contactposition
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @CsrType = params['CsrType']
          @CsrContent = params['CsrContent']
          @CertificateDomain = params['CertificateDomain']
          @DomainList = params['DomainList']
          @KeyPassword = params['KeyPassword']
          @OrganizationName = params['OrganizationName']
          @OrganizationDivision = params['OrganizationDivision']
          @OrganizationAddress = params['OrganizationAddress']
          @OrganizationCountry = params['OrganizationCountry']
          @OrganizationCity = params['OrganizationCity']
          @OrganizationRegion = params['OrganizationRegion']
          @PostalCode = params['PostalCode']
          @PhoneAreaCode = params['PhoneAreaCode']
          @PhoneNumber = params['PhoneNumber']
          @VerifyType = params['VerifyType']
          @AdminFirstName = params['AdminFirstName']
          @AdminLastName = params['AdminLastName']
          @AdminPhoneNum = params['AdminPhoneNum']
          @AdminEmail = params['AdminEmail']
          @AdminPosition = params['AdminPosition']
          @ContactFirstName = params['ContactFirstName']
          @ContactLastName = params['ContactLastName']
          @ContactEmail = params['ContactEmail']
          @ContactNumber = params['ContactNumber']
          @ContactPosition = params['ContactPosition']
        end
      end

      # SubmitCertificateInformation返回参数结构体
      class SubmitCertificateInformationResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # 获取证书列表（DescribeCertificate）返回参数键为 SubmittedData 的内容。
      class SubmittedData < TencentCloud::Common::AbstractModel
        # @param CsrType: CSR 类型，（online = 在线生成CSR，parse = 粘贴 CSR）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CsrType: String
        # @param CsrContent: CSR 内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CsrContent: String
        # @param CertificateDomain: 域名信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateDomain: String
        # @param DomainList: DNS 信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainList: Array
        # @param KeyPassword: 私钥密码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyPassword: String
        # @param OrganizationName: 企业或单位名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationName: String
        # @param OrganizationDivision: 部门。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationDivision: String
        # @param OrganizationAddress: 地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationAddress: String
        # @param OrganizationCountry: 国家。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationCountry: String
        # @param OrganizationCity: 市。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationCity: String
        # @param OrganizationRegion: 省。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrganizationRegion: String
        # @param PostalCode: 邮政编码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostalCode: String
        # @param PhoneAreaCode: 座机区号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneAreaCode: String
        # @param PhoneNumber: 座机号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PhoneNumber: String
        # @param AdminFirstName: 管理员名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminFirstName: String
        # @param AdminLastName: 管理员姓。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminLastName: String
        # @param AdminPhoneNum: 管理员电话号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminPhoneNum: String
        # @param AdminEmail: 管理员邮箱地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminEmail: String
        # @param AdminPosition: 管理员职位。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdminPosition: String
        # @param ContactFirstName: 联系人名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactFirstName: String
        # @param ContactLastName: 联系人姓。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactLastName: String
        # @param ContactNumber: 联系人电话号码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactNumber: String
        # @param ContactEmail: 联系人邮箱地址，
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactEmail: String
        # @param ContactPosition: 联系人职位。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ContactPosition: String
        # @param VerifyType: 验证类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String

        attr_accessor :CsrType, :CsrContent, :CertificateDomain, :DomainList, :KeyPassword, :OrganizationName, :OrganizationDivision, :OrganizationAddress, :OrganizationCountry, :OrganizationCity, :OrganizationRegion, :PostalCode, :PhoneAreaCode, :PhoneNumber, :AdminFirstName, :AdminLastName, :AdminPhoneNum, :AdminEmail, :AdminPosition, :ContactFirstName, :ContactLastName, :ContactNumber, :ContactEmail, :ContactPosition, :VerifyType
        
        def initialize(csrtype=nil, csrcontent=nil, certificatedomain=nil, domainlist=nil, keypassword=nil, organizationname=nil, organizationdivision=nil, organizationaddress=nil, organizationcountry=nil, organizationcity=nil, organizationregion=nil, postalcode=nil, phoneareacode=nil, phonenumber=nil, adminfirstname=nil, adminlastname=nil, adminphonenum=nil, adminemail=nil, adminposition=nil, contactfirstname=nil, contactlastname=nil, contactnumber=nil, contactemail=nil, contactposition=nil, verifytype=nil)
          @CsrType = csrtype
          @CsrContent = csrcontent
          @CertificateDomain = certificatedomain
          @DomainList = domainlist
          @KeyPassword = keypassword
          @OrganizationName = organizationname
          @OrganizationDivision = organizationdivision
          @OrganizationAddress = organizationaddress
          @OrganizationCountry = organizationcountry
          @OrganizationCity = organizationcity
          @OrganizationRegion = organizationregion
          @PostalCode = postalcode
          @PhoneAreaCode = phoneareacode
          @PhoneNumber = phonenumber
          @AdminFirstName = adminfirstname
          @AdminLastName = adminlastname
          @AdminPhoneNum = adminphonenum
          @AdminEmail = adminemail
          @AdminPosition = adminposition
          @ContactFirstName = contactfirstname
          @ContactLastName = contactlastname
          @ContactNumber = contactnumber
          @ContactEmail = contactemail
          @ContactPosition = contactposition
          @VerifyType = verifytype
        end

        def deserialize(params)
          @CsrType = params['CsrType']
          @CsrContent = params['CsrContent']
          @CertificateDomain = params['CertificateDomain']
          @DomainList = params['DomainList']
          @KeyPassword = params['KeyPassword']
          @OrganizationName = params['OrganizationName']
          @OrganizationDivision = params['OrganizationDivision']
          @OrganizationAddress = params['OrganizationAddress']
          @OrganizationCountry = params['OrganizationCountry']
          @OrganizationCity = params['OrganizationCity']
          @OrganizationRegion = params['OrganizationRegion']
          @PostalCode = params['PostalCode']
          @PhoneAreaCode = params['PhoneAreaCode']
          @PhoneNumber = params['PhoneNumber']
          @AdminFirstName = params['AdminFirstName']
          @AdminLastName = params['AdminLastName']
          @AdminPhoneNum = params['AdminPhoneNum']
          @AdminEmail = params['AdminEmail']
          @AdminPosition = params['AdminPosition']
          @ContactFirstName = params['ContactFirstName']
          @ContactLastName = params['ContactLastName']
          @ContactNumber = params['ContactNumber']
          @ContactEmail = params['ContactEmail']
          @ContactPosition = params['ContactPosition']
          @VerifyType = params['VerifyType']
        end
      end

      # 标签
      class Tags < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # UploadCertificate请求参数结构体
      class UploadCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificatePublicKey: 证书内容。
        # @type CertificatePublicKey: String
        # @param CertificatePrivateKey: 私钥内容，证书类型为 SVR 时必填，为 CA 时可不填。
        # @type CertificatePrivateKey: String
        # @param CertificateType: 证书类型，默认 SVR。CA = 客户端证书，SVR = 服务器证书。
        # @type CertificateType: String
        # @param Alias: 备注名称。
        # @type Alias: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param CertificateUse: 证书用途/证书来源。“CLB，CDN，WAF，LIVE，DDOS”
        # @type CertificateUse: String

        attr_accessor :CertificatePublicKey, :CertificatePrivateKey, :CertificateType, :Alias, :ProjectId, :CertificateUse
        
        def initialize(certificatepublickey=nil, certificateprivatekey=nil, certificatetype=nil, _alias=nil, projectid=nil, certificateuse=nil)
          @CertificatePublicKey = certificatepublickey
          @CertificatePrivateKey = certificateprivatekey
          @CertificateType = certificatetype
          @Alias = _alias
          @ProjectId = projectid
          @CertificateUse = certificateuse
        end

        def deserialize(params)
          @CertificatePublicKey = params['CertificatePublicKey']
          @CertificatePrivateKey = params['CertificatePrivateKey']
          @CertificateType = params['CertificateType']
          @Alias = params['Alias']
          @ProjectId = params['ProjectId']
          @CertificateUse = params['CertificateUse']
        end
      end

      # UploadCertificate返回参数结构体
      class UploadCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # UploadConfirmLetter请求参数结构体
      class UploadConfirmLetterRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID
        # @type CertificateId: String
        # @param ConfirmLetter: base64编码后的证书确认函文件，格式应为jpg、jpeg、png、pdf，大小应在1kb与1.4M之间。
        # @type ConfirmLetter: String

        attr_accessor :CertificateId, :ConfirmLetter
        
        def initialize(certificateid=nil, confirmletter=nil)
          @CertificateId = certificateid
          @ConfirmLetter = confirmletter
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ConfirmLetter = params['ConfirmLetter']
        end
      end

      # UploadConfirmLetter返回参数结构体
      class UploadConfirmLetterResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID
        # @type CertificateId: String
        # @param IsSuccess: 是否成功
        # @type IsSuccess: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :IsSuccess, :RequestId
        
        def initialize(certificateid=nil, issuccess=nil, requestid=nil)
          @CertificateId = certificateid
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # UploadRevokeLetter请求参数结构体
      class UploadRevokeLetterRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RevokeLetter: base64编码后的证书确认函文件，格式应为jpg、jpeg、png、pdf，大小应在1kb与1.4M之间。
        # @type RevokeLetter: String

        attr_accessor :CertificateId, :RevokeLetter
        
        def initialize(certificateid=nil, revokeletter=nil)
          @CertificateId = certificateid
          @RevokeLetter = revokeletter
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RevokeLetter = params['RevokeLetter']
        end
      end

      # UploadRevokeLetter返回参数结构体
      class UploadRevokeLetterResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param IsSuccess: 是否成功。
        # @type IsSuccess: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :IsSuccess, :RequestId
        
        def initialize(certificateid=nil, issuccess=nil, requestid=nil)
          @CertificateId = certificateid
          @IsSuccess = issuccess
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsSuccess = params['IsSuccess']
          @RequestId = params['RequestId']
        end
      end

      # VerifyManager请求参数结构体
      class VerifyManagerRequest < TencentCloud::Common::AbstractModel
        # @param ManagerId: 管理人ID
        # @type ManagerId: Integer

        attr_accessor :ManagerId
        
        def initialize(managerid=nil)
          @ManagerId = managerid
        end

        def deserialize(params)
          @ManagerId = params['ManagerId']
        end
      end

      # VerifyManager返回参数结构体
      class VerifyManagerResponse < TencentCloud::Common::AbstractModel
        # @param ManagerId: 管理人ID
        # @type ManagerId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ManagerId, :RequestId
        
        def initialize(managerid=nil, requestid=nil)
          @ManagerId = managerid
          @RequestId = requestid
        end

        def deserialize(params)
          @ManagerId = params['ManagerId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

