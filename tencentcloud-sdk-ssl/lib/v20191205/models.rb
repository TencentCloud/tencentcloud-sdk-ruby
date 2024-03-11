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
      # apiGateway实例详情
      class ApiGatewayInstanceDetail < TencentCloud::Common::AbstractModel
        # @param ServiceId: 实例ID
        # @type ServiceId: String
        # @param ServiceName: 实例名称
        # @type ServiceName: String
        # @param Domain: 域名
        # @type Domain: String
        # @param CertId: 证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Protocol: 使用协议
        # @type Protocol: String

        attr_accessor :ServiceId, :ServiceName, :Domain, :CertId, :Protocol

        def initialize(serviceid=nil, servicename=nil, domain=nil, certid=nil, protocol=nil)
          @ServiceId = serviceid
          @ServiceName = servicename
          @Domain = domain
          @CertId = certid
          @Protocol = protocol
        end

        def deserialize(params)
          @ServiceId = params['ServiceId']
          @ServiceName = params['ServiceName']
          @Domain = params['Domain']
          @CertId = params['CertId']
          @Protocol = params['Protocol']
        end
      end

      # apigateway实例详情 - 异步关联云资源数据结构
      class ApiGatewayInstanceList < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param InstanceList: apigateway实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 该地域下apigateway实例总数
        # @type TotalCount: Integer

        attr_accessor :Region, :InstanceList, :TotalCount

        def initialize(region=nil, instancelist=nil, totalcount=nil)
          @Region = region
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              apigatewayinstancedetail_tmp = ApiGatewayInstanceDetail.new
              apigatewayinstancedetail_tmp.deserialize(i)
              @InstanceList << apigatewayinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

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
        # @param CsrEncryptAlgo: 加密算法，支持 RSA及ECC。
        # @type CsrEncryptAlgo: String
        # @param CsrKeyParameter: 密钥对参数，RSA仅支持2048。ECC仅支持prime256v1。加密算法选择ECC时，此参数必填
        # @type CsrKeyParameter: String
        # @param CsrKeyPassword: CSR 的加密密码。
        # @type CsrKeyPassword: String
        # @param Alias: 备注名称。
        # @type Alias: String
        # @param OldCertificateId: 原证书 ID，用于重新申请。
        # @type OldCertificateId: String
        # @param PackageId: 权益包ID，用于免费证书扩容包使用
        # @type PackageId: String
        # @param DeleteDnsAutoRecord: 签发后是否删除自动域名验证记录， 默认为否；仅域名为DNS_AUTO验证类型支持传参
        # @type DeleteDnsAutoRecord: Boolean
        # @param DnsNames: 域名数组（多域名证书可以上传）。
        # @type DnsNames: Array

        attr_accessor :DvAuthMethod, :DomainName, :ProjectId, :PackageType, :ContactEmail, :ContactPhone, :ValidityPeriod, :CsrEncryptAlgo, :CsrKeyParameter, :CsrKeyPassword, :Alias, :OldCertificateId, :PackageId, :DeleteDnsAutoRecord, :DnsNames

        def initialize(dvauthmethod=nil, domainname=nil, projectid=nil, packagetype=nil, contactemail=nil, contactphone=nil, validityperiod=nil, csrencryptalgo=nil, csrkeyparameter=nil, csrkeypassword=nil, _alias=nil, oldcertificateid=nil, packageid=nil, deletednsautorecord=nil, dnsnames=nil)
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
          @PackageId = packageid
          @DeleteDnsAutoRecord = deletednsautorecord
          @DnsNames = dnsnames
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
          @PackageId = params['PackageId']
          @DeleteDnsAutoRecord = params['DeleteDnsAutoRecord']
          @DnsNames = params['DnsNames']
        end
      end

      # ApplyCertificate返回参数结构体
      class ApplyCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 绑定资源地域结果
      class BindResourceRegionResult < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param TotalCount: 关联资源总数
        # @type TotalCount: Integer

        attr_accessor :Region, :TotalCount

        def initialize(region=nil, totalcount=nil)
          @Region = region
          @TotalCount = totalcount
        end

        def deserialize(params)
          @Region = params['Region']
          @TotalCount = params['TotalCount']
        end
      end

      # 绑定资源结果
      class BindResourceResult < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型：clb、cdn、waf、live、vod、ddos、tke、apigateway、tcb、teo（edgeOne）
        # @type ResourceType: String
        # @param BindResourceRegionResult: 绑定资源地域结果
        # @type BindResourceRegionResult: Array

        attr_accessor :ResourceType, :BindResourceRegionResult

        def initialize(resourcetype=nil, bindresourceregionresult=nil)
          @ResourceType = resourcetype
          @BindResourceRegionResult = bindresourceregionresult
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          unless params['BindResourceRegionResult'].nil?
            @BindResourceRegionResult = []
            params['BindResourceRegionResult'].each do |i|
              bindresourceregionresult_tmp = BindResourceRegionResult.new
              bindresourceregionresult_tmp.deserialize(i)
              @BindResourceRegionResult << bindresourceregionresult_tmp
            end
          end
        end
      end

      # CancelAuditCertificate请求参数结构体
      class CancelAuditCertificateRequest < TencentCloud::Common::AbstractModel
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

      # CancelAuditCertificate返回参数结构体
      class CancelAuditCertificateResponse < TencentCloud::Common::AbstractModel
        # @param Result: 操作是否成功
        # @type Result: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId

        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # CDN实例详情
      class CdnInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param CertId: 已部署证书ID
        # @type CertId: String
        # @param Status: 域名状态
        # @type Status: String
        # @param HttpsBillingSwitch: 域名计费状态
        # @type HttpsBillingSwitch: String

        attr_accessor :Domain, :CertId, :Status, :HttpsBillingSwitch

        def initialize(domain=nil, certid=nil, status=nil, httpsbillingswitch=nil)
          @Domain = domain
          @CertId = certid
          @Status = status
          @HttpsBillingSwitch = httpsbillingswitch
        end

        def deserialize(params)
          @Domain = params['Domain']
          @CertId = params['CertId']
          @Status = params['Status']
          @HttpsBillingSwitch = params['HttpsBillingSwitch']
        end
      end

      # cdn实例详情 - 异步关联云资源数据结构
      class CdnInstanceList < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该地域下CDN域名总数
        # @type TotalCount: Integer
        # @param InstanceList: cdn域名详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array

        attr_accessor :TotalCount, :InstanceList

        def initialize(totalcount=nil, instancelist=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              cdninstancedetail_tmp = CdnInstanceDetail.new
              cdninstancedetail_tmp.deserialize(i)
              @InstanceList << cdninstancedetail_tmp
            end
          end
        end
      end

      # 证书异步任务ID
      class CertTaskId < TencentCloud::Common::AbstractModel
        # @param CertId: 证书ID
        # @type CertId: String
        # @param TaskId: 异步任务ID
        # @type TaskId: String

        attr_accessor :CertId, :TaskId

        def initialize(certid=nil, taskid=nil)
          @CertId = certid
          @TaskId = taskid
        end

        def deserialize(params)
          @CertId = params['CertId']
          @TaskId = params['TaskId']
        end
      end

      # CLB证书详情
      class Certificate < TencentCloud::Common::AbstractModel
        # @param CertId: 证书ID
        # @type CertId: String
        # @param DnsNames: 证书绑定的域名
        # @type DnsNames: Array
        # @param CertCaId: 根证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertCaId: String
        # @param SSLMode: 证书认证模式：UNIDIRECTIONAL单向认证，MUTUAL双向认证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SSLMode: String

        attr_accessor :CertId, :DnsNames, :CertCaId, :SSLMode

        def initialize(certid=nil, dnsnames=nil, certcaid=nil, sslmode=nil)
          @CertId = certid
          @DnsNames = dnsnames
          @CertCaId = certcaid
          @SSLMode = sslmode
        end

        def deserialize(params)
          @CertId = params['CertId']
          @DnsNames = params['DnsNames']
          @CertCaId = params['CertCaId']
          @SSLMode = params['SSLMode']
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
        # @param SMCert: 是否是国密证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SMCert: Integer
        # @param CompanyType: 公司类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompanyType: Integer

        attr_accessor :DomainNumber, :OriginCertificateId, :ReplacedBy, :ReplacedFor, :RenewOrder, :SMCert, :CompanyType

        def initialize(domainnumber=nil, origincertificateid=nil, replacedby=nil, replacedfor=nil, reneworder=nil, smcert=nil, companytype=nil)
          @DomainNumber = domainnumber
          @OriginCertificateId = origincertificateid
          @ReplacedBy = replacedby
          @ReplacedFor = replacedfor
          @RenewOrder = reneworder
          @SMCert = smcert
          @CompanyType = companytype
        end

        def deserialize(params)
          @DomainNumber = params['DomainNumber']
          @OriginCertificateId = params['OriginCertificateId']
          @ReplacedBy = params['ReplacedBy']
          @ReplacedFor = params['ReplacedFor']
          @RenewOrder = params['RenewOrder']
          @SMCert = params['SMCert']
          @CompanyType = params['CompanyType']
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
        # @param PackageType: 证书套餐类型：
        # 2 = TrustAsia TLS RSA CA，3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书，25 = Wotrus 域名型证书，26 = Wotrus 域名型多域名证书，27 = Wotrus 域名型通配符证书，28 = Wotrus 企业型证书，29 = Wotrus 企业型多域名证书，30 = Wotrus 企业型通配符证书，31 = Wotrus 增强型证书，32 = Wotrus 增强型多域名证书，33 = Wotrus 国密域名型证书，34 = Wotrus 国密域名型多域名证书，35 = Wotrus 国密域名型通配符证书，37 = Wotrus 国密企业型证书，38 = Wotrus 国密企业型多域名证书，39 = Wotrus 国密企业型通配符证书，40 = Wotrus 国密增强型证书，41 = Wotrus 国密增强型多域名证书，42 = TrustAsia 域名型通配符多域名证书，43 = DNSPod-企业型(OV)SSL证书，44 = DNSPod-企业型(OV)通配符SSL证书，45 = DNSPod-企业型(OV)多域名SSL证书， 46 = DNSPod-增强型(EV)SSL证书，47 = DNSPod-增强型(EV)多域名SSL证书，48 = DNSPod-域名型(DV)SSL证书，49 = DNSPod-域名型(DV)通配符SSL证书，50 = DNSPod-域名型(DV)多域名SSL证书，51 = DNSPod（国密）-企业型(OV)SSL证书，52 = DNSPod（国密）-企业型(OV)通配符SSL证书，53 = DNSPod（国密）-企业型(OV)多域名SSL证书，54 = DNSPod（国密）-域名型(DV)SSL证书，55 = DNSPod（国密）-域名型(DV)通配符SSL证书， 56 = DNSPod（国密）-域名型(DV)多域名SSL证书，57 = SecureSite 企业型专业版多域名(OV Pro)，58 = SecureSite 企业型多域名(OV)，59 = SecureSite 增强型专业版多域名(EV Pro)，60 = SecureSite 增强型多域名(EV)，61 = Geotrust 增强型多域名(EV)
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
        # @param Status: 状态。0：审核中，1：已通过，2：审核失败，3：已过期，4：验证方式为 DNS_AUTO 类型的证书， 已添加DNS记录，5：企业证书，待提交，6：订单取消中，7：已取消，8：已提交资料， 待上传确认函，9：证书吊销中，10：已吊销，11：重颁发中，12：待上传吊销确认函，13：免费证书待提交资料状态，14：已退款，
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
        # @param RenewAble: 是否可续费。
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
        # @param IsIgnore: 是否已忽略到期通知
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsIgnore: Boolean
        # @param IsSM: 是否国密证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsSM: Boolean
        # @param EncryptAlgorithm: 证书算法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptAlgorithm: String
        # @param CAEncryptAlgorithms: 上传CA证书的加密算法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CAEncryptAlgorithms: Array
        # @param CAEndTimes: 上传CA证书的过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CAEndTimes: Array
        # @param CACommonNames: 上传CA证书的通用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CACommonNames: Array
        # @param PreAuditInfo: 证书预审核信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PreAuditInfo: :class:`Tencentcloud::Ssl.v20191205.models.PreAuditInfo`
        # @param AutoRenewFlag: 是否自动续费
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AutoRenewFlag: Integer
        # @param HostingStatus: 托管状态，0，托管中，5，资源替换中， 10， 托管完成， -1未托管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostingStatus: Integer
        # @param HostingCompleteTime: 托管完成时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostingCompleteTime: String
        # @param HostingRenewCertId: 托管新证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostingRenewCertId: String
        # @param HasRenewOrder: 存在的续费证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HasRenewOrder: String
        # @param ReplaceOriCertIsDelete: 重颁发证书原证书是否删除
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplaceOriCertIsDelete: Boolean
        # @param IsExpiring: 是否即将过期， 证书即将到期的30天内为即将过期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsExpiring: Boolean
        # @param DVAuthDeadline: DV证书添加验证截止时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DVAuthDeadline: String
        # @param ValidationPassedTime: 域名验证通过时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidationPassedTime: String
        # @param CertSANs: 证书关联的多域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertSANs: Array
        # @param AwaitingValidationMsg: 域名验证驳回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AwaitingValidationMsg: String
        # @param AllowDownload: 是否允许下载
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AllowDownload: Boolean
        # @param IsDNSPODResolve: 证书域名是否全部在DNSPOD托管解析
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDNSPODResolve: Boolean
        # @param IsPackage: 是否是权益点购买的证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPackage: Boolean
        # @param KeyPasswordCustomFlag: 是否存在私钥密码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyPasswordCustomFlag: Boolean
        # @param SupportDownloadType: 支持下载的WEB服务器类型： nginx、apache、iis、tomcat、jks、root、other
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportDownloadType: :class:`Tencentcloud::Ssl.v20191205.models.SupportDownloadType`

        attr_accessor :OwnerUin, :ProjectId, :From, :PackageType, :CertificateType, :ProductZhName, :Domain, :Alias, :Status, :CertificateExtra, :VulnerabilityStatus, :StatusMsg, :VerifyType, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :CertificateId, :SubjectAltName, :PackageTypeName, :StatusName, :IsVip, :IsDv, :IsWildcard, :IsVulnerability, :RenewAble, :ProjectInfo, :BoundResource, :Deployable, :Tags, :IsIgnore, :IsSM, :EncryptAlgorithm, :CAEncryptAlgorithms, :CAEndTimes, :CACommonNames, :PreAuditInfo, :AutoRenewFlag, :HostingStatus, :HostingCompleteTime, :HostingRenewCertId, :HasRenewOrder, :ReplaceOriCertIsDelete, :IsExpiring, :DVAuthDeadline, :ValidationPassedTime, :CertSANs, :AwaitingValidationMsg, :AllowDownload, :IsDNSPODResolve, :IsPackage, :KeyPasswordCustomFlag, :SupportDownloadType

        def initialize(owneruin=nil, projectid=nil, from=nil, packagetype=nil, certificatetype=nil, productzhname=nil, domain=nil, _alias=nil, status=nil, certificateextra=nil, vulnerabilitystatus=nil, statusmsg=nil, verifytype=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, certificateid=nil, subjectaltname=nil, packagetypename=nil, statusname=nil, isvip=nil, isdv=nil, iswildcard=nil, isvulnerability=nil, renewable=nil, projectinfo=nil, boundresource=nil, deployable=nil, tags=nil, isignore=nil, issm=nil, encryptalgorithm=nil, caencryptalgorithms=nil, caendtimes=nil, cacommonnames=nil, preauditinfo=nil, autorenewflag=nil, hostingstatus=nil, hostingcompletetime=nil, hostingrenewcertid=nil, hasreneworder=nil, replaceoricertisdelete=nil, isexpiring=nil, dvauthdeadline=nil, validationpassedtime=nil, certsans=nil, awaitingvalidationmsg=nil, allowdownload=nil, isdnspodresolve=nil, ispackage=nil, keypasswordcustomflag=nil, supportdownloadtype=nil)
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
          @IsIgnore = isignore
          @IsSM = issm
          @EncryptAlgorithm = encryptalgorithm
          @CAEncryptAlgorithms = caencryptalgorithms
          @CAEndTimes = caendtimes
          @CACommonNames = cacommonnames
          @PreAuditInfo = preauditinfo
          @AutoRenewFlag = autorenewflag
          @HostingStatus = hostingstatus
          @HostingCompleteTime = hostingcompletetime
          @HostingRenewCertId = hostingrenewcertid
          @HasRenewOrder = hasreneworder
          @ReplaceOriCertIsDelete = replaceoricertisdelete
          @IsExpiring = isexpiring
          @DVAuthDeadline = dvauthdeadline
          @ValidationPassedTime = validationpassedtime
          @CertSANs = certsans
          @AwaitingValidationMsg = awaitingvalidationmsg
          @AllowDownload = allowdownload
          @IsDNSPODResolve = isdnspodresolve
          @IsPackage = ispackage
          @KeyPasswordCustomFlag = keypasswordcustomflag
          @SupportDownloadType = supportdownloadtype
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
          @IsIgnore = params['IsIgnore']
          @IsSM = params['IsSM']
          @EncryptAlgorithm = params['EncryptAlgorithm']
          @CAEncryptAlgorithms = params['CAEncryptAlgorithms']
          @CAEndTimes = params['CAEndTimes']
          @CACommonNames = params['CACommonNames']
          unless params['PreAuditInfo'].nil?
            @PreAuditInfo = PreAuditInfo.new
            @PreAuditInfo.deserialize(params['PreAuditInfo'])
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @HostingStatus = params['HostingStatus']
          @HostingCompleteTime = params['HostingCompleteTime']
          @HostingRenewCertId = params['HostingRenewCertId']
          @HasRenewOrder = params['HasRenewOrder']
          @ReplaceOriCertIsDelete = params['ReplaceOriCertIsDelete']
          @IsExpiring = params['IsExpiring']
          @DVAuthDeadline = params['DVAuthDeadline']
          @ValidationPassedTime = params['ValidationPassedTime']
          @CertSANs = params['CertSANs']
          @AwaitingValidationMsg = params['AwaitingValidationMsg']
          @AllowDownload = params['AllowDownload']
          @IsDNSPODResolve = params['IsDNSPODResolve']
          @IsPackage = params['IsPackage']
          @KeyPasswordCustomFlag = params['KeyPasswordCustomFlag']
          unless params['SupportDownloadType'].nil?
            @SupportDownloadType = SupportDownloadType.new
            @SupportDownloadType.deserialize(params['SupportDownloadType'])
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # clb实例详情
      class ClbInstanceDetail < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: CLB实例ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: CLB实例名称
        # @type LoadBalancerName: String
        # @param Listeners: CLB监听器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Listeners: Array

        attr_accessor :LoadBalancerId, :LoadBalancerName, :Listeners

        def initialize(loadbalancerid=nil, loadbalancername=nil, listeners=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Listeners = listeners
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          unless params['Listeners'].nil?
            @Listeners = []
            params['Listeners'].each do |i|
              clblistener_tmp = ClbListener.new
              clblistener_tmp.deserialize(i)
              @Listeners << clblistener_tmp
            end
          end
        end
      end

      # clb实例详情 - 异步关联云资源数据结构
      class ClbInstanceList < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param InstanceList: clb实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 该地域下Clb实例总数
        # @type TotalCount: Integer

        attr_accessor :Region, :InstanceList, :TotalCount

        def initialize(region=nil, instancelist=nil, totalcount=nil)
          @Region = region
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              clbinstancedetail_tmp = ClbInstanceDetail.new
              clbinstancedetail_tmp.deserialize(i)
              @InstanceList << clbinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # CLB实例监听器
      class ClbListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param SniSwitch: 是否开启SNI，1为开启，0为关闭
        # @type SniSwitch: Integer
        # @param Protocol: 监听器协议类型， HTTPS|TCP_SSL
        # @type Protocol: String
        # @param Certificate: 监听器绑定的证书数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: :class:`Tencentcloud::Ssl.v20191205.models.Certificate`
        # @param Rules: 监听器规则列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param NoMatchDomains: 不匹配域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoMatchDomains: Array

        attr_accessor :ListenerId, :ListenerName, :SniSwitch, :Protocol, :Certificate, :Rules, :NoMatchDomains

        def initialize(listenerid=nil, listenername=nil, sniswitch=nil, protocol=nil, certificate=nil, rules=nil, nomatchdomains=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @SniSwitch = sniswitch
          @Protocol = protocol
          @Certificate = certificate
          @Rules = rules
          @NoMatchDomains = nomatchdomains
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @SniSwitch = params['SniSwitch']
          @Protocol = params['Protocol']
          unless params['Certificate'].nil?
            @Certificate = Certificate.new
            @Certificate.deserialize(params['Certificate'])
          end
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              clblistenerrule_tmp = ClbListenerRule.new
              clblistenerrule_tmp.deserialize(i)
              @Rules << clblistenerrule_tmp
            end
          end
          @NoMatchDomains = params['NoMatchDomains']
        end
      end

      # CLB监听器规则
      class ClbListenerRule < TencentCloud::Common::AbstractModel
        # @param LocationId: 规则ID
        # @type LocationId: String
        # @param Domain: 规则绑定的域名
        # @type Domain: String
        # @param IsMatch: 规则是否匹配待绑定证书的域名
        # @type IsMatch: Boolean
        # @param Certificate: 规则已绑定的证书数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: :class:`Tencentcloud::Ssl.v20191205.models.Certificate`
        # @param NoMatchDomains: 不匹配域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoMatchDomains: Array

        attr_accessor :LocationId, :Domain, :IsMatch, :Certificate, :NoMatchDomains

        def initialize(locationid=nil, domain=nil, ismatch=nil, certificate=nil, nomatchdomains=nil)
          @LocationId = locationid
          @Domain = domain
          @IsMatch = ismatch
          @Certificate = certificate
          @NoMatchDomains = nomatchdomains
        end

        def deserialize(params)
          @LocationId = params['LocationId']
          @Domain = params['Domain']
          @IsMatch = params['IsMatch']
          unless params['Certificate'].nil?
            @Certificate = Certificate.new
            @Certificate.deserialize(params['Certificate'])
          end
          @NoMatchDomains = params['NoMatchDomains']
        end
      end

      # CommitCertificateInformation请求参数结构体
      class CommitCertificateInformationRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param VerifyType: 域名验证方式
        # @type VerifyType: String

        attr_accessor :CertificateId, :VerifyType

        def initialize(certificateid=nil, verifytype=nil)
          @CertificateId = certificateid
          @VerifyType = verifytype
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @VerifyType = params['VerifyType']
        end
      end

      # CommitCertificateInformation返回参数结构体
      class CommitCertificateInformationResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: CA机构侧订单号。
        # @type OrderId: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param IdType: 类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdType: String
        # @param IdNumber: ID号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdNumber: String

        attr_accessor :CompanyName, :CompanyId, :CompanyCountry, :CompanyProvince, :CompanyCity, :CompanyAddress, :CompanyPhone, :IdType, :IdNumber

        def initialize(companyname=nil, companyid=nil, companycountry=nil, companyprovince=nil, companycity=nil, companyaddress=nil, companyphone=nil, idtype=nil, idnumber=nil)
          @CompanyName = companyname
          @CompanyId = companyid
          @CompanyCountry = companycountry
          @CompanyProvince = companyprovince
          @CompanyCity = companycity
          @CompanyAddress = companyaddress
          @CompanyPhone = companyphone
          @IdType = idtype
          @IdNumber = idnumber
        end

        def deserialize(params)
          @CompanyName = params['CompanyName']
          @CompanyId = params['CompanyId']
          @CompanyCountry = params['CompanyCountry']
          @CompanyProvince = params['CompanyProvince']
          @CompanyCity = params['CompanyCity']
          @CompanyAddress = params['CompanyAddress']
          @CompanyPhone = params['CompanyPhone']
          @IdType = params['IdType']
          @IdNumber = params['IdNumber']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # COS实例详情
      class CosInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param CertId: 已绑定的证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Status: ENABLED: 域名上线状态
        # DISABLED:域名下线状态
        # @type Status: String
        # @param Bucket: 存储桶名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Region: 存储桶地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :Domain, :CertId, :Status, :Bucket, :Region

        def initialize(domain=nil, certid=nil, status=nil, bucket=nil, region=nil)
          @Domain = domain
          @CertId = certid
          @Status = status
          @Bucket = bucket
          @Region = region
        end

        def deserialize(params)
          @Domain = params['Domain']
          @CertId = params['CertId']
          @Status = params['Status']
          @Bucket = params['Bucket']
          @Region = params['Region']
        end
      end

      # CreateCertificateBindResourceSyncTask请求参数结构体
      class CreateCertificateBindResourceSyncTaskRequest < TencentCloud::Common::AbstractModel
        # @param CertificateIds: 证书ID列表，总数不能超过100
        # @type CertificateIds: Array
        # @param IsCache: 是否使用缓存， 1使用缓存，0不使用缓存； 默认为1使用缓存； 若当前证书ID存在半小时已完成的任务， 则使用缓存的情况下， 会读取半小时内离当前时间最近的查询结果
        # @type IsCache: Integer

        attr_accessor :CertificateIds, :IsCache

        def initialize(certificateids=nil, iscache=nil)
          @CertificateIds = certificateids
          @IsCache = iscache
        end

        def deserialize(params)
          @CertificateIds = params['CertificateIds']
          @IsCache = params['IsCache']
        end
      end

      # CreateCertificateBindResourceSyncTask返回参数结构体
      class CreateCertificateBindResourceSyncTaskResponse < TencentCloud::Common::AbstractModel
        # @param CertTaskIds: 证书关联云资源异步任务ID列表
        # @type CertTaskIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertTaskIds, :RequestId

        def initialize(certtaskids=nil, requestid=nil)
          @CertTaskIds = certtaskids
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CertTaskIds'].nil?
            @CertTaskIds = []
            params['CertTaskIds'].each do |i|
              certtaskid_tmp = CertTaskId.new
              certtaskid_tmp.deserialize(i)
              @CertTaskIds << certtaskid_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateCertificateByPackage请求参数结构体
      class CreateCertificateByPackageRequest < TencentCloud::Common::AbstractModel
        # @param ProductPid: 证书产品PID。
        # @type ProductPid: Integer
        # @param PackageIds: 要消耗的权益包ID。
        # @type PackageIds: Array
        # @param DomainCount: 证书域名数量。
        # @type DomainCount: String
        # @param Period: 多年期证书年限。
        # @type Period: Integer
        # @param OldCertificateId: 要续费的原证书ID（续费时填写）。
        # @type OldCertificateId: String
        # @param RenewGenCsrMethod: 续费时CSR生成方式（original、upload、online）。
        # @type RenewGenCsrMethod: String
        # @param RenewCsr: 续费时选择上传CSR时填写CSR。
        # @type RenewCsr: String
        # @param RenewAlgorithmType: 续费证书CSR的算法类型。
        # @type RenewAlgorithmType: String
        # @param RenewAlgorithmParam: 续费证书CSR的算法参数。
        # @type RenewAlgorithmParam: String
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param Tags: 标签。
        # @type Tags: Array
        # @param RenewKeyPass: 续费证书的私钥密码。
        # @type RenewKeyPass: String
        # @param DomainNames: 批量购买证书时预填写的域名。
        # @type DomainNames: String
        # @param CertificateCount: 批量购买证书数量。
        # @type CertificateCount: Integer
        # @param ManagerId: 预填写的管理人ID。
        # @type ManagerId: Integer
        # @param CompanyId: 预填写的公司ID。
        # @type CompanyId: Integer
        # @param VerifyType: 验证方式
        # @type VerifyType: String

        attr_accessor :ProductPid, :PackageIds, :DomainCount, :Period, :OldCertificateId, :RenewGenCsrMethod, :RenewCsr, :RenewAlgorithmType, :RenewAlgorithmParam, :ProjectId, :Tags, :RenewKeyPass, :DomainNames, :CertificateCount, :ManagerId, :CompanyId, :VerifyType

        def initialize(productpid=nil, packageids=nil, domaincount=nil, period=nil, oldcertificateid=nil, renewgencsrmethod=nil, renewcsr=nil, renewalgorithmtype=nil, renewalgorithmparam=nil, projectid=nil, tags=nil, renewkeypass=nil, domainnames=nil, certificatecount=nil, managerid=nil, companyid=nil, verifytype=nil)
          @ProductPid = productpid
          @PackageIds = packageids
          @DomainCount = domaincount
          @Period = period
          @OldCertificateId = oldcertificateid
          @RenewGenCsrMethod = renewgencsrmethod
          @RenewCsr = renewcsr
          @RenewAlgorithmType = renewalgorithmtype
          @RenewAlgorithmParam = renewalgorithmparam
          @ProjectId = projectid
          @Tags = tags
          @RenewKeyPass = renewkeypass
          @DomainNames = domainnames
          @CertificateCount = certificatecount
          @ManagerId = managerid
          @CompanyId = companyid
          @VerifyType = verifytype
        end

        def deserialize(params)
          @ProductPid = params['ProductPid']
          @PackageIds = params['PackageIds']
          @DomainCount = params['DomainCount']
          @Period = params['Period']
          @OldCertificateId = params['OldCertificateId']
          @RenewGenCsrMethod = params['RenewGenCsrMethod']
          @RenewCsr = params['RenewCsr']
          @RenewAlgorithmType = params['RenewAlgorithmType']
          @RenewAlgorithmParam = params['RenewAlgorithmParam']
          @ProjectId = params['ProjectId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
          @RenewKeyPass = params['RenewKeyPass']
          @DomainNames = params['DomainNames']
          @CertificateCount = params['CertificateCount']
          @ManagerId = params['ManagerId']
          @CompanyId = params['CompanyId']
          @VerifyType = params['VerifyType']
        end
      end

      # CreateCertificateByPackage返回参数结构体
      class CreateCertificateByPackageResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID。
        # @type CertificateId: String
        # @param CertificateIds: 批量购买证书时返回多个证书ID。
        # @type CertificateIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :CertificateIds, :RequestId

        def initialize(certificateid=nil, certificateids=nil, requestid=nil)
          @CertificateId = certificateid
          @CertificateIds = certificateids
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @CertificateIds = params['CertificateIds']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ddos复杂类型
      class DdosInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Protocol: 协议类型
        # @type Protocol: String
        # @param CertId: 证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param VirtualPort: 转发端口
        # @type VirtualPort: String

        attr_accessor :Domain, :InstanceId, :Protocol, :CertId, :VirtualPort

        def initialize(domain=nil, instanceid=nil, protocol=nil, certid=nil, virtualport=nil)
          @Domain = domain
          @InstanceId = instanceid
          @Protocol = protocol
          @CertId = certid
          @VirtualPort = virtualport
        end

        def deserialize(params)
          @Domain = params['Domain']
          @InstanceId = params['InstanceId']
          @Protocol = params['Protocol']
          @CertId = params['CertId']
          @VirtualPort = params['VirtualPort']
        end
      end

      # ddos实例详情 - 异步关联云资源数据结构
      class DdosInstanceList < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该地域下ddos域名总数
        # @type TotalCount: Integer
        # @param InstanceList: ddos实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array

        attr_accessor :TotalCount, :InstanceList

        def initialize(totalcount=nil, instancelist=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              ddosinstancedetail_tmp = DdosInstanceDetail.new
              ddosinstancedetail_tmp.deserialize(i)
              @InstanceList << ddosinstancedetail_tmp
            end
          end
        end
      end

      # DeleteCertificate请求参数结构体
      class DeleteCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param IsCheckResource: 删除时是否检查证书关联了云资源。默认不检查。如选择检查(需要授权服务角色SSL_QCSLinkedRoleInReplaceLoadCertificate)删除将变成异步,接口会返回异步任务ID。需使用DescribeDeleteCertificatesTaskResult接口查询删除是否成功。
        # @type IsCheckResource: Boolean

        attr_accessor :CertificateId, :IsCheckResource

        def initialize(certificateid=nil, ischeckresource=nil)
          @CertificateId = certificateid
          @IsCheckResource = ischeckresource
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsCheckResource = params['IsCheckResource']
        end
      end

      # DeleteCertificate返回参数结构体
      class DeleteCertificateResponse < TencentCloud::Common::AbstractModel
        # @param DeleteResult: 删除结果（true：删除成功，false：删除失败）
        # @type DeleteResult: Boolean
        # @param TaskId: 异步删除的任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteResult, :TaskId, :RequestId

        def initialize(deleteresult=nil, taskid=nil, requestid=nil)
          @DeleteResult = deleteresult
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeleteResult = params['DeleteResult']
          @TaskId = params['TaskId']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DeployCertificateInstance请求参数结构体
      class DeployCertificateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param InstanceIdList: 需要部署实例列表
        # @type InstanceIdList: Array
        # @param ResourceType: 部署的云资源类型
        # @type ResourceType: String
        # @param Status: 部署云资源状态：
        # 云直播：
        # -1：域名未关联证书。
        # 1： 域名https已开启。
        # 0： 域名https已关闭。
        # @type Status: Integer

        attr_accessor :CertificateId, :InstanceIdList, :ResourceType, :Status

        def initialize(certificateid=nil, instanceidlist=nil, resourcetype=nil, status=nil)
          @CertificateId = certificateid
          @InstanceIdList = instanceidlist
          @ResourceType = resourcetype
          @Status = status
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @InstanceIdList = params['InstanceIdList']
          @ResourceType = params['ResourceType']
          @Status = params['Status']
        end
      end

      # DeployCertificateInstance返回参数结构体
      class DeployCertificateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 云资源部署任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployRecordId: Integer
        # @param DeployStatus: 部署状态，1表示部署成功，0表示部署失败
        # @type DeployStatus: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeployRecordId, :DeployStatus, :RequestId

        def initialize(deployrecordid=nil, deploystatus=nil, requestid=nil)
          @DeployRecordId = deployrecordid
          @DeployStatus = deploystatus
          @RequestId = requestid
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
          @DeployStatus = params['DeployStatus']
          @RequestId = params['RequestId']
        end
      end

      # DeployCertificateRecordRetry请求参数结构体
      class DeployCertificateRecordRetryRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 待重试部署记录ID
        # @type DeployRecordId: Integer
        # @param DeployRecordDetailId: 待重试部署记录详情ID
        # @type DeployRecordDetailId: Integer

        attr_accessor :DeployRecordId, :DeployRecordDetailId

        def initialize(deployrecordid=nil, deployrecorddetailid=nil)
          @DeployRecordId = deployrecordid
          @DeployRecordDetailId = deployrecorddetailid
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
          @DeployRecordDetailId = params['DeployRecordDetailId']
        end
      end

      # DeployCertificateRecordRetry返回参数结构体
      class DeployCertificateRecordRetryResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeployCertificateRecordRollback请求参数结构体
      class DeployCertificateRecordRollbackRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 待重试部署记录ID
        # @type DeployRecordId: Integer

        attr_accessor :DeployRecordId

        def initialize(deployrecordid=nil)
          @DeployRecordId = deployrecordid
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
        end
      end

      # DeployCertificateRecordRollback返回参数结构体
      class DeployCertificateRecordRollbackResponse < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 回滚部署记录ID
        # @type DeployRecordId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeployRecordId, :RequestId

        def initialize(deployrecordid=nil, requestid=nil)
          @DeployRecordId = deployrecordid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
          @RequestId = params['RequestId']
        end
      end

      # 部署记录详情
      class DeployRecordDetail < TencentCloud::Common::AbstractModel
        # @param Id: 部署记录详情ID
        # @type Id: Integer
        # @param CertId: 部署证书ID
        # @type CertId: String
        # @param OldCertId: 原绑定证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldCertId: String
        # @param InstanceId: 部署实例ID
        # @type InstanceId: String
        # @param InstanceName: 部署实例名称
        # @type InstanceName: String
        # @param ListenerId: 部署监听器ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param Domains: 部署域名列表
        # @type Domains: Array
        # @param Protocol: 部署监听器协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param Status: 部署状态
        # @type Status: Integer
        # @param ErrorMsg: 部署错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param CreateTime: 部署记录详情创建时间
        # @type CreateTime: String
        # @param UpdateTime: 部署记录详情最后一次更新时间
        # @type UpdateTime: String
        # @param ListenerName: 部署监听器名称
        # @type ListenerName: String
        # @param SniSwitch: 是否开启SNI
        # @type SniSwitch: Integer
        # @param Bucket: COS存储桶名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Namespace: 命名空间名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param SecretName: secret名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretName: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param EnvId: TCB环境ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param TCBType: 部署的TCB类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TCBType: String
        # @param Region: 部署的TCB地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String

        attr_accessor :Id, :CertId, :OldCertId, :InstanceId, :InstanceName, :ListenerId, :Domains, :Protocol, :Status, :ErrorMsg, :CreateTime, :UpdateTime, :ListenerName, :SniSwitch, :Bucket, :Namespace, :SecretName, :Port, :EnvId, :TCBType, :Region

        def initialize(id=nil, certid=nil, oldcertid=nil, instanceid=nil, instancename=nil, listenerid=nil, domains=nil, protocol=nil, status=nil, errormsg=nil, createtime=nil, updatetime=nil, listenername=nil, sniswitch=nil, bucket=nil, namespace=nil, secretname=nil, port=nil, envid=nil, tcbtype=nil, region=nil)
          @Id = id
          @CertId = certid
          @OldCertId = oldcertid
          @InstanceId = instanceid
          @InstanceName = instancename
          @ListenerId = listenerid
          @Domains = domains
          @Protocol = protocol
          @Status = status
          @ErrorMsg = errormsg
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ListenerName = listenername
          @SniSwitch = sniswitch
          @Bucket = bucket
          @Namespace = namespace
          @SecretName = secretname
          @Port = port
          @EnvId = envid
          @TCBType = tcbtype
          @Region = region
        end

        def deserialize(params)
          @Id = params['Id']
          @CertId = params['CertId']
          @OldCertId = params['OldCertId']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ListenerId = params['ListenerId']
          @Domains = params['Domains']
          @Protocol = params['Protocol']
          @Status = params['Status']
          @ErrorMsg = params['ErrorMsg']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ListenerName = params['ListenerName']
          @SniSwitch = params['SniSwitch']
          @Bucket = params['Bucket']
          @Namespace = params['Namespace']
          @SecretName = params['SecretName']
          @Port = params['Port']
          @EnvId = params['EnvId']
          @TCBType = params['TCBType']
          @Region = params['Region']
        end
      end

      # 部署记录信息
      class DeployRecordInfo < TencentCloud::Common::AbstractModel
        # @param Id: 部署记录ID
        # @type Id: Integer
        # @param CertId: 部署证书ID
        # @type CertId: String
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param Region: 部署地域
        # @type Region: String
        # @param Status: 部署状态
        # @type Status: Integer
        # @param CreateTime: 部署时间
        # @type CreateTime: String
        # @param UpdateTime: 最近一次更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :CertId, :ResourceType, :Region, :Status, :CreateTime, :UpdateTime

        def initialize(id=nil, certid=nil, resourcetype=nil, region=nil, status=nil, createtime=nil, updatetime=nil)
          @Id = id
          @CertId = certid
          @ResourceType = resourcetype
          @Region = region
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @CertId = params['CertId']
          @ResourceType = params['ResourceType']
          @Region = params['Region']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
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
        # @param ResourceIds: 不建议使用。字段返回和Resources相同。本字段后续只返回null
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceIds: Array
        # @param Resources: 关联资源ID或关联域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Resources: Array

        attr_accessor :CertificateId, :Count, :Type, :ResourceIds, :Resources

        def initialize(certificateid=nil, count=nil, type=nil, resourceids=nil, resources=nil)
          @CertificateId = certificateid
          @Count = count
          @Type = type
          @ResourceIds = resourceids
          @Resources = resources
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @Count = params['Count']
          @Type = params['Type']
          @ResourceIds = params['ResourceIds']
          @Resources = params['Resources']
        end
      end

      # DescribeCertificateBindResourceTaskDetail请求参数结构体
      class DescribeCertificateBindResourceTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID，根据任务ID查询绑定云资源结果
        # @type TaskId: String
        # @param Limit: 每页展示数量， 默认10，最大值100; 分页总数为云资源地域下实例总数， 即第一页会拉群每个云资源的地域下面Limit数量实例
        # @type Limit: String
        # @param Offset: 当前偏移量
        # @type Offset: String
        # @param ResourceTypes: 查询资源类型的结果详情， 不传则查询所有
        # @type ResourceTypes: Array
        # @param Regions: 查询地域列表的数据，CLB、TKE、WAF、APIGATEWAY、TCB支持地域查询， 其他资源类型不支持
        # @type Regions: Array

        attr_accessor :TaskId, :Limit, :Offset, :ResourceTypes, :Regions

        def initialize(taskid=nil, limit=nil, offset=nil, resourcetypes=nil, regions=nil)
          @TaskId = taskid
          @Limit = limit
          @Offset = offset
          @ResourceTypes = resourcetypes
          @Regions = regions
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ResourceTypes = params['ResourceTypes']
          @Regions = params['Regions']
        end
      end

      # DescribeCertificateBindResourceTaskDetail返回参数结构体
      class DescribeCertificateBindResourceTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param CLB: 关联clb资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CLB: Array
        # @param CDN: 关联cdn资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CDN: Array
        # @param WAF: 关联waf资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WAF: Array
        # @param DDOS: 关联ddos资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DDOS: Array
        # @param LIVE: 关联live资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LIVE: Array
        # @param VOD: 关联vod资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VOD: Array
        # @param TKE: 关联tke资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TKE: Array
        # @param APIGATEWAY: 关联apigateway资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type APIGATEWAY: Array
        # @param TCB: 关联tcb资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TCB: Array
        # @param TEO: 关联teo资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TEO: Array
        # @param Status: 关联云资源异步查询结果： 0表示查询中， 1表示查询成功。 2表示查询异常； 若状态为1，则查看BindResourceResult结果；若状态为2，则查看Error原因
        # @type Status: Integer
        # @param CacheTime: 当前结果缓存时间
        # @type CacheTime: String
        # @param TSE: 关联tse资源详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TSE: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CLB, :CDN, :WAF, :DDOS, :LIVE, :VOD, :TKE, :APIGATEWAY, :TCB, :TEO, :Status, :CacheTime, :TSE, :RequestId

        def initialize(clb=nil, cdn=nil, waf=nil, ddos=nil, live=nil, vod=nil, tke=nil, apigateway=nil, tcb=nil, teo=nil, status=nil, cachetime=nil, tse=nil, requestid=nil)
          @CLB = clb
          @CDN = cdn
          @WAF = waf
          @DDOS = ddos
          @LIVE = live
          @VOD = vod
          @TKE = tke
          @APIGATEWAY = apigateway
          @TCB = tcb
          @TEO = teo
          @Status = status
          @CacheTime = cachetime
          @TSE = tse
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CLB'].nil?
            @CLB = []
            params['CLB'].each do |i|
              clbinstancelist_tmp = ClbInstanceList.new
              clbinstancelist_tmp.deserialize(i)
              @CLB << clbinstancelist_tmp
            end
          end
          unless params['CDN'].nil?
            @CDN = []
            params['CDN'].each do |i|
              cdninstancelist_tmp = CdnInstanceList.new
              cdninstancelist_tmp.deserialize(i)
              @CDN << cdninstancelist_tmp
            end
          end
          unless params['WAF'].nil?
            @WAF = []
            params['WAF'].each do |i|
              wafinstancelist_tmp = WafInstanceList.new
              wafinstancelist_tmp.deserialize(i)
              @WAF << wafinstancelist_tmp
            end
          end
          unless params['DDOS'].nil?
            @DDOS = []
            params['DDOS'].each do |i|
              ddosinstancelist_tmp = DdosInstanceList.new
              ddosinstancelist_tmp.deserialize(i)
              @DDOS << ddosinstancelist_tmp
            end
          end
          unless params['LIVE'].nil?
            @LIVE = []
            params['LIVE'].each do |i|
              liveinstancelist_tmp = LiveInstanceList.new
              liveinstancelist_tmp.deserialize(i)
              @LIVE << liveinstancelist_tmp
            end
          end
          unless params['VOD'].nil?
            @VOD = []
            params['VOD'].each do |i|
              vodinstancelist_tmp = VODInstanceList.new
              vodinstancelist_tmp.deserialize(i)
              @VOD << vodinstancelist_tmp
            end
          end
          unless params['TKE'].nil?
            @TKE = []
            params['TKE'].each do |i|
              tkeinstancelist_tmp = TkeInstanceList.new
              tkeinstancelist_tmp.deserialize(i)
              @TKE << tkeinstancelist_tmp
            end
          end
          unless params['APIGATEWAY'].nil?
            @APIGATEWAY = []
            params['APIGATEWAY'].each do |i|
              apigatewayinstancelist_tmp = ApiGatewayInstanceList.new
              apigatewayinstancelist_tmp.deserialize(i)
              @APIGATEWAY << apigatewayinstancelist_tmp
            end
          end
          unless params['TCB'].nil?
            @TCB = []
            params['TCB'].each do |i|
              tcbinstancelist_tmp = TCBInstanceList.new
              tcbinstancelist_tmp.deserialize(i)
              @TCB << tcbinstancelist_tmp
            end
          end
          unless params['TEO'].nil?
            @TEO = []
            params['TEO'].each do |i|
              teoinstancelist_tmp = TeoInstanceList.new
              teoinstancelist_tmp.deserialize(i)
              @TEO << teoinstancelist_tmp
            end
          end
          @Status = params['Status']
          @CacheTime = params['CacheTime']
          unless params['TSE'].nil?
            @TSE = []
            params['TSE'].each do |i|
              tseinstancelist_tmp = TSEInstanceList.new
              tseinstancelist_tmp.deserialize(i)
              @TSE << tseinstancelist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificateBindResourceTaskResult请求参数结构体
      class DescribeCertificateBindResourceTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务ID，根据任务ID查询绑定云资源结果， 最大支持100个
        # @type TaskIds: Array

        attr_accessor :TaskIds

        def initialize(taskids=nil)
          @TaskIds = taskids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
        end
      end

      # DescribeCertificateBindResourceTaskResult返回参数结构体
      class DescribeCertificateBindResourceTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param SyncTaskBindResourceResult: 异步任务绑定关联云资源结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SyncTaskBindResourceResult: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SyncTaskBindResourceResult, :RequestId

        def initialize(synctaskbindresourceresult=nil, requestid=nil)
          @SyncTaskBindResourceResult = synctaskbindresourceresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SyncTaskBindResourceResult'].nil?
            @SyncTaskBindResourceResult = []
            params['SyncTaskBindResourceResult'].each do |i|
              synctaskbindresourceresult_tmp = SyncTaskBindResourceResult.new
              synctaskbindresourceresult_tmp.deserialize(i)
              @SyncTaskBindResourceResult << synctaskbindresourceresult_tmp
            end
          end
          @RequestId = params['RequestId']
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
        # @param PackageType: 证书套餐类型：null = 用户上传证书（没有套餐类型），1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书，25 = Wotrus 域名型证书，26 = Wotrus 域名型多域名证书，27 = Wotrus 域名型通配符证书，28 = Wotrus 企业型证书，29 = Wotrus 企业型多域名证书，30 = Wotrus 企业型通配符证书，31 = Wotrus 增强型证书，32 = Wotrus 增强型多域名证书，33 = DNSPod 国密域名型证书，34 = DNSPod 国密域名型多域名证书，35 = DNSPod 国密域名型通配符证书，37 = DNSPod 国密企业型证书，38 = DNSPod 国密企业型多域名证书，39 = DNSPod 国密企业型通配符证书，40 = DNSPod 国密增强型证书，41 = DNSPod 国密增强型多域名证书，42 = TrustAsia 域名型通配符多域名证书。
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
        # @param SubjectAltName: 证书包含的多个域名（不包含主域名，主域名使用Domain字段）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param IsVip: 是否为付费证书。
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
        # @param RenewAble: 是否可续费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewAble: Boolean
        # @param Deployable: 是否可部署。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Deployable: Boolean
        # @param Tags: 关联标签列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param RootCert: 根证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RootCert: :class:`Tencentcloud::Ssl.v20191205.models.RootCertificates`
        # @param EncryptCert: 国密加密证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptCert: String
        # @param EncryptPrivateKey: 国密加密私钥
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptPrivateKey: String
        # @param CertFingerprint: 签名证书 SHA1指纹
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertFingerprint: String
        # @param EncryptCertFingerprint: 加密证书 SHA1指纹 （国密证书特有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptCertFingerprint: String
        # @param EncryptAlgorithm: 证书算法
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptAlgorithm: String
        # @param DvRevokeAuthDetail: DV证书吊销验证值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvRevokeAuthDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnerUin, :ProjectId, :From, :CertificateType, :PackageType, :ProductZhName, :Domain, :Alias, :Status, :StatusMsg, :VerifyType, :VulnerabilityStatus, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :OrderId, :CertificateExtra, :CertificatePrivateKey, :CertificatePublicKey, :DvAuthDetail, :VulnerabilityReport, :CertificateId, :TypeName, :StatusName, :SubjectAltName, :IsVip, :IsWildcard, :IsDv, :IsVulnerability, :SubmittedData, :RenewAble, :Deployable, :Tags, :RootCert, :EncryptCert, :EncryptPrivateKey, :CertFingerprint, :EncryptCertFingerprint, :EncryptAlgorithm, :DvRevokeAuthDetail, :RequestId

        def initialize(owneruin=nil, projectid=nil, from=nil, certificatetype=nil, packagetype=nil, productzhname=nil, domain=nil, _alias=nil, status=nil, statusmsg=nil, verifytype=nil, vulnerabilitystatus=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, orderid=nil, certificateextra=nil, certificateprivatekey=nil, certificatepublickey=nil, dvauthdetail=nil, vulnerabilityreport=nil, certificateid=nil, typename=nil, statusname=nil, subjectaltname=nil, isvip=nil, iswildcard=nil, isdv=nil, isvulnerability=nil, submitteddata=nil, renewable=nil, deployable=nil, tags=nil, rootcert=nil, encryptcert=nil, encryptprivatekey=nil, certfingerprint=nil, encryptcertfingerprint=nil, encryptalgorithm=nil, dvrevokeauthdetail=nil, requestid=nil)
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
          @RootCert = rootcert
          @EncryptCert = encryptcert
          @EncryptPrivateKey = encryptprivatekey
          @CertFingerprint = certfingerprint
          @EncryptCertFingerprint = encryptcertfingerprint
          @EncryptAlgorithm = encryptalgorithm
          @DvRevokeAuthDetail = dvrevokeauthdetail
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
          unless params['RootCert'].nil?
            @RootCert = RootCertificates.new
            @RootCert.deserialize(params['RootCert'])
          end
          @EncryptCert = params['EncryptCert']
          @EncryptPrivateKey = params['EncryptPrivateKey']
          @CertFingerprint = params['CertFingerprint']
          @EncryptCertFingerprint = params['EncryptCertFingerprint']
          @EncryptAlgorithm = params['EncryptAlgorithm']
          unless params['DvRevokeAuthDetail'].nil?
            @DvRevokeAuthDetail = []
            params['DvRevokeAuthDetail'].each do |i|
              dvauths_tmp = DvAuths.new
              dvauths_tmp.deserialize(i)
              @DvRevokeAuthDetail << dvauths_tmp
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param CAEncryptAlgorithms: CA证书的所有加密方式
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CAEncryptAlgorithms: Array
        # @param CACommonNames: CA证书的所有通用名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CACommonNames: Array
        # @param CAEndTimes: CA证书所有的到期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CAEndTimes: Array
        # @param DvRevokeAuthDetail: DV证书吊销验证值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvRevokeAuthDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnerUin, :ProjectId, :From, :CertificateType, :PackageType, :ProductZhName, :Domain, :Alias, :Status, :StatusMsg, :VerifyType, :VulnerabilityStatus, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :OrderId, :CertificateExtra, :DvAuthDetail, :VulnerabilityReport, :CertificateId, :PackageTypeName, :StatusName, :SubjectAltName, :IsVip, :IsWildcard, :IsDv, :IsVulnerability, :RenewAble, :SubmittedData, :Deployable, :Tags, :CAEncryptAlgorithms, :CACommonNames, :CAEndTimes, :DvRevokeAuthDetail, :RequestId

        def initialize(owneruin=nil, projectid=nil, from=nil, certificatetype=nil, packagetype=nil, productzhname=nil, domain=nil, _alias=nil, status=nil, statusmsg=nil, verifytype=nil, vulnerabilitystatus=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, orderid=nil, certificateextra=nil, dvauthdetail=nil, vulnerabilityreport=nil, certificateid=nil, packagetypename=nil, statusname=nil, subjectaltname=nil, isvip=nil, iswildcard=nil, isdv=nil, isvulnerability=nil, renewable=nil, submitteddata=nil, deployable=nil, tags=nil, caencryptalgorithms=nil, cacommonnames=nil, caendtimes=nil, dvrevokeauthdetail=nil, requestid=nil)
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
          @CAEncryptAlgorithms = caencryptalgorithms
          @CACommonNames = cacommonnames
          @CAEndTimes = caendtimes
          @DvRevokeAuthDetail = dvrevokeauthdetail
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
          @CAEncryptAlgorithms = params['CAEncryptAlgorithms']
          @CACommonNames = params['CACommonNames']
          @CAEndTimes = params['CAEndTimes']
          unless params['DvRevokeAuthDetail'].nil?
            @DvRevokeAuthDetail = []
            params['DvRevokeAuthDetail'].each do |i|
              dvauths_tmp = DvAuths.new
              dvauths_tmp.deserialize(i)
              @DvRevokeAuthDetail << dvauths_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificates请求参数结构体
      class DescribeCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。最大1000
        # @type Limit: Integer
        # @param SearchKey: 搜索关键词，可搜索证书 ID、备注名称、域名。例如： a8xHcaIs。
        # @type SearchKey: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # @type CertificateType: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param ExpirationSort: 按到期时间排序：DESC = 降序， ASC = 升序。
        # @type ExpirationSort: String
        # @param CertificateStatus: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。
        # @type CertificateStatus: Array
        # @param Deployable: 是否可部署，可选值：1 = 可部署，0 =  不可部署。
        # @type Deployable: Integer
        # @param Upload: 是否筛选上传托管的 1筛选，0不筛选
        # @type Upload: Integer
        # @param Renew: 是否筛选可续期证书 1筛选 0不筛选
        # @type Renew: Integer
        # @param FilterSource: 筛选来源， upload：上传证书， buy：腾讯云证书， 不传默认全部
        # @type FilterSource: String
        # @param IsSM: 是否筛选国密证书。1:筛选  0:不筛选
        # @type IsSM: Integer
        # @param FilterExpiring: 筛选证书是否即将过期，传1是筛选，0不筛选
        # @type FilterExpiring: Integer
        # @param Hostable: 是否可托管，可选值：1 = 可托管，0 =  不可托管。
        # @type Hostable: Integer
        # @param Tags: 筛选指定标签的证书
        # @type Tags: Array
        # @param IsPendingIssue: //是否筛选等待签发的证书，传1是筛选，0和null不筛选
        # @type IsPendingIssue: Integer

        attr_accessor :Offset, :Limit, :SearchKey, :CertificateType, :ProjectId, :ExpirationSort, :CertificateStatus, :Deployable, :Upload, :Renew, :FilterSource, :IsSM, :FilterExpiring, :Hostable, :Tags, :IsPendingIssue

        def initialize(offset=nil, limit=nil, searchkey=nil, certificatetype=nil, projectid=nil, expirationsort=nil, certificatestatus=nil, deployable=nil, upload=nil, renew=nil, filtersource=nil, issm=nil, filterexpiring=nil, hostable=nil, tags=nil, ispendingissue=nil)
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
          @FilterSource = filtersource
          @IsSM = issm
          @FilterExpiring = filterexpiring
          @Hostable = hostable
          @Tags = tags
          @IsPendingIssue = ispendingissue
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
          @FilterSource = params['FilterSource']
          @IsSM = params['IsSM']
          @FilterExpiring = params['FilterExpiring']
          @Hostable = params['Hostable']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
          @IsPendingIssue = params['IsPendingIssue']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeCompanies请求参数结构体
      class DescribeCompaniesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量
        # @type Offset: Integer
        # @param Limit: 分页每页限制数
        # @type Limit: Integer
        # @param CompanyId: 公司ID
        # @type CompanyId: Integer

        attr_accessor :Offset, :Limit, :CompanyId

        def initialize(offset=nil, limit=nil, companyid=nil)
          @Offset = offset
          @Limit = limit
          @CompanyId = companyid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CompanyId = params['CompanyId']
        end
      end

      # DescribeCompanies返回参数结构体
      class DescribeCompaniesResponse < TencentCloud::Common::AbstractModel
        # @param Companies: 公司列表
        # @type Companies: Array
        # @param TotalCount: 公司总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Companies, :TotalCount, :RequestId

        def initialize(companies=nil, totalcount=nil, requestid=nil)
          @Companies = companies
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Companies'].nil?
            @Companies = []
            params['Companies'].each do |i|
              companyinfo_tmp = CompanyInfo.new
              companyinfo_tmp.deserialize(i)
              @Companies << companyinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribeHostApiGatewayInstanceList请求参数结构体
      class DescribeHostApiGatewayInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters, :OldCertificateId

        def initialize(certificateid=nil, resourcetype=nil, iscache=nil, filters=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @ResourceType = resourcetype
          @IsCache = iscache
          @Filters = filters
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ResourceType = params['ResourceType']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostApiGatewayInstanceList返回参数结构体
      class DescribeHostApiGatewayInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: apiGateway实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :TotalCount, :RequestId

        def initialize(instancelist=nil, totalcount=nil, requestid=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              apigatewayinstancedetail_tmp = ApiGatewayInstanceDetail.new
              apigatewayinstancedetail_tmp.deserialize(i)
              @InstanceList << apigatewayinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostCdnInstanceList请求参数结构体
      class DescribeHostCdnInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param OldCertificateId: 原证书ID
        # @type OldCertificateId: String
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param AsyncCache: 是否异步
        # @type AsyncCache: Integer

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters, :OldCertificateId, :Offset, :Limit, :AsyncCache

        def initialize(certificateid=nil, resourcetype=nil, iscache=nil, filters=nil, oldcertificateid=nil, offset=nil, limit=nil, asynccache=nil)
          @CertificateId = certificateid
          @ResourceType = resourcetype
          @IsCache = iscache
          @Filters = filters
          @OldCertificateId = oldcertificateid
          @Offset = offset
          @Limit = limit
          @AsyncCache = asynccache
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ResourceType = params['ResourceType']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OldCertificateId = params['OldCertificateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AsyncCache = params['AsyncCache']
        end
      end

      # DescribeHostCdnInstanceList返回参数结构体
      class DescribeHostCdnInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: CDN实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: CDN域名总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param AsyncTotalNum: 异步刷新总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncTotalNum: Integer
        # @param AsyncOffset: 异步刷新当前执行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncOffset: Integer
        # @param AsyncCacheTime: 当前缓存读取时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncCacheTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :TotalCount, :AsyncTotalNum, :AsyncOffset, :AsyncCacheTime, :RequestId

        def initialize(instancelist=nil, totalcount=nil, asynctotalnum=nil, asyncoffset=nil, asynccachetime=nil, requestid=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @AsyncTotalNum = asynctotalnum
          @AsyncOffset = asyncoffset
          @AsyncCacheTime = asynccachetime
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              cdninstancedetail_tmp = CdnInstanceDetail.new
              cdninstancedetail_tmp.deserialize(i)
              @InstanceList << cdninstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @AsyncTotalNum = params['AsyncTotalNum']
          @AsyncOffset = params['AsyncOffset']
          @AsyncCacheTime = params['AsyncCacheTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostClbInstanceList请求参数结构体
      class DescribeHostClbInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param AsyncCache: 是否异步缓存
        # @type AsyncCache: Integer
        # @param OldCertificateId: 原证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :Offset, :Limit, :IsCache, :Filters, :AsyncCache, :OldCertificateId

        def initialize(certificateid=nil, offset=nil, limit=nil, iscache=nil, filters=nil, asynccache=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @Offset = offset
          @Limit = limit
          @IsCache = iscache
          @Filters = filters
          @AsyncCache = asynccache
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @AsyncCache = params['AsyncCache']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostClbInstanceList返回参数结构体
      class DescribeHostClbInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param InstanceList: CLB实例监听器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param AsyncTotalNum: 异步刷新总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncTotalNum: Integer
        # @param AsyncOffset: 异步刷新当前执行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncOffset: Integer
        # @param AsyncCacheTime: 当前缓存读取时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncCacheTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceList, :AsyncTotalNum, :AsyncOffset, :AsyncCacheTime, :RequestId

        def initialize(totalcount=nil, instancelist=nil, asynctotalnum=nil, asyncoffset=nil, asynccachetime=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
          @AsyncTotalNum = asynctotalnum
          @AsyncOffset = asyncoffset
          @AsyncCacheTime = asynccachetime
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              clbinstancedetail_tmp = ClbInstanceDetail.new
              clbinstancedetail_tmp.deserialize(i)
              @InstanceList << clbinstancedetail_tmp
            end
          end
          @AsyncTotalNum = params['AsyncTotalNum']
          @AsyncOffset = params['AsyncOffset']
          @AsyncCacheTime = params['AsyncCacheTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostCosInstanceList请求参数结构体
      class DescribeHostCosInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param ResourceType: 部署资源类型 cos
        # @type ResourceType: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表
        # @type Filters: Array

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters

        def initialize(certificateid=nil, resourcetype=nil, iscache=nil, filters=nil)
          @CertificateId = certificateid
          @ResourceType = resourcetype
          @IsCache = iscache
          @Filters = filters
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ResourceType = params['ResourceType']
          @IsCache = params['IsCache']
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

      # DescribeHostCosInstanceList返回参数结构体
      class DescribeHostCosInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: COS实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param AsyncTotalNum: 异步刷新总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncTotalNum: Integer
        # @param AsyncOffset: 异步刷新当前执行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncOffset: Integer
        # @param AsyncCacheTime: 当前缓存读取时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncCacheTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :TotalCount, :AsyncTotalNum, :AsyncOffset, :AsyncCacheTime, :RequestId

        def initialize(instancelist=nil, totalcount=nil, asynctotalnum=nil, asyncoffset=nil, asynccachetime=nil, requestid=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @AsyncTotalNum = asynctotalnum
          @AsyncOffset = asyncoffset
          @AsyncCacheTime = asynccachetime
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              cosinstancedetail_tmp = CosInstanceDetail.new
              cosinstancedetail_tmp.deserialize(i)
              @InstanceList << cosinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @AsyncTotalNum = params['AsyncTotalNum']
          @AsyncOffset = params['AsyncOffset']
          @AsyncCacheTime = params['AsyncCacheTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostDdosInstanceList请求参数结构体
      class DescribeHostDdosInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters, :OldCertificateId

        def initialize(certificateid=nil, resourcetype=nil, iscache=nil, filters=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @ResourceType = resourcetype
          @IsCache = iscache
          @Filters = filters
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ResourceType = params['ResourceType']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostDdosInstanceList返回参数结构体
      class DescribeHostDdosInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: DDOS实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :RequestId

        def initialize(instancelist=nil, requestid=nil)
          @InstanceList = instancelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              ddosinstancedetail_tmp = DdosInstanceDetail.new
              ddosinstancedetail_tmp.deserialize(i)
              @InstanceList << ddosinstancedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostDeployRecordDetail请求参数结构体
      class DescribeHostDeployRecordDetailRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 部署记录ID
        # @type DeployRecordId: String
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer

        attr_accessor :DeployRecordId, :Offset, :Limit

        def initialize(deployrecordid=nil, offset=nil, limit=nil)
          @DeployRecordId = deployrecordid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeHostDeployRecordDetail返回参数结构体
      class DescribeHostDeployRecordDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param DeployRecordDetailList: 证书部署记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployRecordDetailList: Array
        # @param SuccessTotalCount: 成功总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessTotalCount: Integer
        # @param FailedTotalCount: 失败总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedTotalCount: Integer
        # @param RunningTotalCount: 部署中总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningTotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeployRecordDetailList, :SuccessTotalCount, :FailedTotalCount, :RunningTotalCount, :RequestId

        def initialize(totalcount=nil, deployrecorddetaillist=nil, successtotalcount=nil, failedtotalcount=nil, runningtotalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @DeployRecordDetailList = deployrecorddetaillist
          @SuccessTotalCount = successtotalcount
          @FailedTotalCount = failedtotalcount
          @RunningTotalCount = runningtotalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DeployRecordDetailList'].nil?
            @DeployRecordDetailList = []
            params['DeployRecordDetailList'].each do |i|
              deployrecorddetail_tmp = DeployRecordDetail.new
              deployrecorddetail_tmp.deserialize(i)
              @DeployRecordDetailList << deployrecorddetail_tmp
            end
          end
          @SuccessTotalCount = params['SuccessTotalCount']
          @FailedTotalCount = params['FailedTotalCount']
          @RunningTotalCount = params['RunningTotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostDeployRecord请求参数结构体
      class DescribeHostDeployRecordRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param ResourceType: 资源类型
        # @type ResourceType: String

        attr_accessor :CertificateId, :Offset, :Limit, :ResourceType

        def initialize(certificateid=nil, offset=nil, limit=nil, resourcetype=nil)
          @CertificateId = certificateid
          @Offset = offset
          @Limit = limit
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ResourceType = params['ResourceType']
        end
      end

      # DescribeHostDeployRecord返回参数结构体
      class DescribeHostDeployRecordResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param DeployRecordList: 证书部署记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployRecordList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeployRecordList, :RequestId

        def initialize(totalcount=nil, deployrecordlist=nil, requestid=nil)
          @TotalCount = totalcount
          @DeployRecordList = deployrecordlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DeployRecordList'].nil?
            @DeployRecordList = []
            params['DeployRecordList'].each do |i|
              deployrecordinfo_tmp = DeployRecordInfo.new
              deployrecordinfo_tmp.deserialize(i)
              @DeployRecordList << deployrecordinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostLighthouseInstanceList请求参数结构体
      class DescribeHostLighthouseInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param ResourceType: 部署资源类型 lighthouse
        # @type ResourceType: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表
        # @type Filters: Array

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters

        def initialize(certificateid=nil, resourcetype=nil, iscache=nil, filters=nil)
          @CertificateId = certificateid
          @ResourceType = resourcetype
          @IsCache = iscache
          @Filters = filters
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ResourceType = params['ResourceType']
          @IsCache = params['IsCache']
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

      # DescribeHostLighthouseInstanceList返回参数结构体
      class DescribeHostLighthouseInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: Lighthouse实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :TotalCount, :RequestId

        def initialize(instancelist=nil, totalcount=nil, requestid=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              lighthouseinstancedetail_tmp = LighthouseInstanceDetail.new
              lighthouseinstancedetail_tmp.deserialize(i)
              @InstanceList << lighthouseinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostLiveInstanceList请求参数结构体
      class DescribeHostLiveInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters, :OldCertificateId

        def initialize(certificateid=nil, resourcetype=nil, iscache=nil, filters=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @ResourceType = resourcetype
          @IsCache = iscache
          @Filters = filters
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ResourceType = params['ResourceType']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostLiveInstanceList返回参数结构体
      class DescribeHostLiveInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: live实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :RequestId

        def initialize(instancelist=nil, requestid=nil)
          @InstanceList = instancelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              liveinstancedetail_tmp = LiveInstanceDetail.new
              liveinstancedetail_tmp.deserialize(i)
              @InstanceList << liveinstancedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostTeoInstanceList请求参数结构体
      class DescribeHostTeoInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param AsyncCache: 是否异步
        # @type AsyncCache: Integer

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters, :OldCertificateId, :Offset, :Limit, :AsyncCache

        def initialize(certificateid=nil, resourcetype=nil, iscache=nil, filters=nil, oldcertificateid=nil, offset=nil, limit=nil, asynccache=nil)
          @CertificateId = certificateid
          @ResourceType = resourcetype
          @IsCache = iscache
          @Filters = filters
          @OldCertificateId = oldcertificateid
          @Offset = offset
          @Limit = limit
          @AsyncCache = asynccache
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ResourceType = params['ResourceType']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OldCertificateId = params['OldCertificateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AsyncCache = params['AsyncCache']
        end
      end

      # DescribeHostTeoInstanceList返回参数结构体
      class DescribeHostTeoInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: teo实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :TotalCount, :RequestId

        def initialize(instancelist=nil, totalcount=nil, requestid=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              teoinstancedetail_tmp = TeoInstanceDetail.new
              teoinstancedetail_tmp.deserialize(i)
              @InstanceList << teoinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostTkeInstanceList请求参数结构体
      class DescribeHostTkeInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param AsyncCache: 是否异步缓存
        # @type AsyncCache: Integer
        # @param OldCertificateId: 原证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :Offset, :Limit, :IsCache, :Filters, :AsyncCache, :OldCertificateId

        def initialize(certificateid=nil, offset=nil, limit=nil, iscache=nil, filters=nil, asynccache=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @Offset = offset
          @Limit = limit
          @IsCache = iscache
          @Filters = filters
          @AsyncCache = asynccache
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @AsyncCache = params['AsyncCache']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostTkeInstanceList返回参数结构体
      class DescribeHostTkeInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param InstanceList: CLB实例监听器列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param AsyncTotalNum: 异步刷新总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncTotalNum: Integer
        # @param AsyncOffset: 异步刷新当前执行数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncOffset: Integer
        # @param AsyncCacheTime: 当前缓存读取时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsyncCacheTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceList, :AsyncTotalNum, :AsyncOffset, :AsyncCacheTime, :RequestId

        def initialize(totalcount=nil, instancelist=nil, asynctotalnum=nil, asyncoffset=nil, asynccachetime=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
          @AsyncTotalNum = asynctotalnum
          @AsyncOffset = asyncoffset
          @AsyncCacheTime = asynccachetime
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              tkeinstancedetail_tmp = TkeInstanceDetail.new
              tkeinstancedetail_tmp.deserialize(i)
              @InstanceList << tkeinstancedetail_tmp
            end
          end
          @AsyncTotalNum = params['AsyncTotalNum']
          @AsyncOffset = params['AsyncOffset']
          @AsyncCacheTime = params['AsyncCacheTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostUpdateRecordDetail请求参数结构体
      class DescribeHostUpdateRecordDetailRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 一键更新记录ID
        # @type DeployRecordId: String
        # @param Limit: 每页数量，默认10。
        # @type Limit: String
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: String

        attr_accessor :DeployRecordId, :Limit, :Offset

        def initialize(deployrecordid=nil, limit=nil, offset=nil)
          @DeployRecordId = deployrecordid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeHostUpdateRecordDetail返回参数结构体
      class DescribeHostUpdateRecordDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RecordDetailList: 证书部署记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RecordDetailList: Array
        # @param SuccessTotalCount: 成功总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SuccessTotalCount: Integer
        # @param FailedTotalCount: 失败总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedTotalCount: Integer
        # @param RunningTotalCount: 部署中总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RunningTotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RecordDetailList, :SuccessTotalCount, :FailedTotalCount, :RunningTotalCount, :RequestId

        def initialize(totalcount=nil, recorddetaillist=nil, successtotalcount=nil, failedtotalcount=nil, runningtotalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RecordDetailList = recorddetaillist
          @SuccessTotalCount = successtotalcount
          @FailedTotalCount = failedtotalcount
          @RunningTotalCount = runningtotalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RecordDetailList'].nil?
            @RecordDetailList = []
            params['RecordDetailList'].each do |i|
              updaterecorddetails_tmp = UpdateRecordDetails.new
              updaterecorddetails_tmp.deserialize(i)
              @RecordDetailList << updaterecorddetails_tmp
            end
          end
          @SuccessTotalCount = params['SuccessTotalCount']
          @FailedTotalCount = params['FailedTotalCount']
          @RunningTotalCount = params['RunningTotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostUpdateRecord请求参数结构体
      class DescribeHostUpdateRecordRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param CertificateId: 新证书ID
        # @type CertificateId: String
        # @param OldCertificateId: 原证书ID
        # @type OldCertificateId: String

        attr_accessor :Offset, :Limit, :CertificateId, :OldCertificateId

        def initialize(offset=nil, limit=nil, certificateid=nil, oldcertificateid=nil)
          @Offset = offset
          @Limit = limit
          @CertificateId = certificateid
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CertificateId = params['CertificateId']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostUpdateRecord返回参数结构体
      class DescribeHostUpdateRecordResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param DeployRecordList: 证书部署记录列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployRecordList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeployRecordList, :RequestId

        def initialize(totalcount=nil, deployrecordlist=nil, requestid=nil)
          @TotalCount = totalcount
          @DeployRecordList = deployrecordlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DeployRecordList'].nil?
            @DeployRecordList = []
            params['DeployRecordList'].each do |i|
              updaterecordinfo_tmp = UpdateRecordInfo.new
              updaterecordinfo_tmp.deserialize(i)
              @DeployRecordList << updaterecordinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostVodInstanceList请求参数结构体
      class DescribeHostVodInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param ResourceType: 部署资源类型 vod
        # @type ResourceType: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表
        # @type Filters: Array
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters, :OldCertificateId

        def initialize(certificateid=nil, resourcetype=nil, iscache=nil, filters=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @ResourceType = resourcetype
          @IsCache = iscache
          @Filters = filters
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ResourceType = params['ResourceType']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostVodInstanceList返回参数结构体
      class DescribeHostVodInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: Vod实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :TotalCount, :RequestId

        def initialize(instancelist=nil, totalcount=nil, requestid=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              vodinstancedetail_tmp = VodInstanceDetail.new
              vodinstancedetail_tmp.deserialize(i)
              @InstanceList << vodinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostWafInstanceList请求参数结构体
      class DescribeHostWafInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters, :OldCertificateId

        def initialize(certificateid=nil, resourcetype=nil, iscache=nil, filters=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @ResourceType = resourcetype
          @IsCache = iscache
          @Filters = filters
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ResourceType = params['ResourceType']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostWafInstanceList返回参数结构体
      class DescribeHostWafInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: WAF实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceList, :RequestId

        def initialize(instancelist=nil, requestid=nil)
          @InstanceList = instancelist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              liveinstancedetail_tmp = LiveInstanceDetail.new
              liveinstancedetail_tmp.deserialize(i)
              @InstanceList << liveinstancedetail_tmp
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
        # @param StatusInfo: 审核状态详细信息
        # @type StatusInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ManagerFirstName, :ManagerMail, :ContactFirstName, :ManagerLastName, :ContactPosition, :ManagerPosition, :VerifyTime, :CreateTime, :ExpireTime, :ContactLastName, :ManagerPhone, :ContactPhone, :ContactMail, :ManagerDepartment, :CompanyInfo, :CompanyId, :ManagerId, :StatusInfo, :RequestId

        def initialize(status=nil, managerfirstname=nil, managermail=nil, contactfirstname=nil, managerlastname=nil, contactposition=nil, managerposition=nil, verifytime=nil, createtime=nil, expiretime=nil, contactlastname=nil, managerphone=nil, contactphone=nil, contactmail=nil, managerdepartment=nil, companyinfo=nil, companyid=nil, managerid=nil, statusinfo=nil, requestid=nil)
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
          @StatusInfo = statusinfo
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
          unless params['StatusInfo'].nil?
            @StatusInfo = []
            params['StatusInfo'].each do |i|
              managerstatusinfo_tmp = ManagerStatusInfo.new
              managerstatusinfo_tmp.deserialize(i)
              @StatusInfo << managerstatusinfo_tmp
            end
          end
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
        # @param ManagerName: 管理人姓名（将废弃），请使用SearchKey
        # @type ManagerName: String
        # @param ManagerMail: 模糊查询管理人邮箱（将废弃），请使用SearchKey
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
        # @param SearchKey: 管理人姓/管理人名/邮箱/部门精准匹配
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # DescribePackages请求参数结构体
      class DescribePackagesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认0。
        # @type Offset: Integer
        # @param Limit: 限制数目，默认20。
        # @type Limit: Integer
        # @param Status: 按状态筛选。
        # @type Status: String
        # @param ExpireTime: 按过期时间升序或降序排列。
        # @type ExpireTime: String
        # @param PackageId: 按权益包ID搜索。
        # @type PackageId: String
        # @param Type: 按权益包类型搜索。
        # @type Type: String
        # @param Pid: 子产品编号
        # @type Pid: Integer

        attr_accessor :Offset, :Limit, :Status, :ExpireTime, :PackageId, :Type, :Pid

        def initialize(offset=nil, limit=nil, status=nil, expiretime=nil, packageid=nil, type=nil, pid=nil)
          @Offset = offset
          @Limit = limit
          @Status = status
          @ExpireTime = expiretime
          @PackageId = packageid
          @Type = type
          @Pid = pid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Status = params['Status']
          @ExpireTime = params['ExpireTime']
          @PackageId = params['PackageId']
          @Type = params['Type']
          @Pid = params['Pid']
        end
      end

      # DescribePackages返回参数结构体
      class DescribePackagesResponse < TencentCloud::Common::AbstractModel
        # @param Packages: 权益包列表。
        # @type Packages: Array
        # @param TotalCount: 总条数。
        # @type TotalCount: Integer
        # @param TotalBalance: 权益点总余额。
        # @type TotalBalance: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Packages, :TotalCount, :TotalBalance, :RequestId

        def initialize(packages=nil, totalcount=nil, totalbalance=nil, requestid=nil)
          @Packages = packages
          @TotalCount = totalcount
          @TotalBalance = totalbalance
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Packages'].nil?
            @Packages = []
            params['Packages'].each do |i|
              packageinfo_tmp = PackageInfo.new
              packageinfo_tmp.deserialize(i)
              @Packages << packageinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @TotalBalance = params['TotalBalance']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 错误异常
      class Error < TencentCloud::Common::AbstractModel
        # @param Code: 异常错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: String
        # @param Message: 异常错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String

        attr_accessor :Code, :Message

        def initialize(code=nil, message=nil)
          @Code = code
          @Message = message
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
        end
      end

      # 过滤参数列表
      class Filter < TencentCloud::Common::AbstractModel
        # @param FilterKey: 过滤参数key
        # @type FilterKey: String
        # @param FilterValue: 过滤参数值
        # @type FilterValue: String

        attr_accessor :FilterKey, :FilterValue

        def initialize(filterkey=nil, filtervalue=nil)
          @FilterKey = filterkey
          @FilterValue = filtervalue
        end

        def deserialize(params)
          @FilterKey = params['FilterKey']
          @FilterValue = params['FilterValue']
        end
      end

      # 云原生网关证书信息
      class GatewayCertificate < TencentCloud::Common::AbstractModel
        # @param Id: 网关证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param Name: 网关证书名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param BindDomains: 绑定域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindDomains: Array
        # @param CertSource: 证书来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertSource: String
        # @param CertId: 当前绑定的SSL证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String

        attr_accessor :Id, :Name, :BindDomains, :CertSource, :CertId

        def initialize(id=nil, name=nil, binddomains=nil, certsource=nil, certid=nil)
          @Id = id
          @Name = name
          @BindDomains = binddomains
          @CertSource = certsource
          @CertId = certid
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @BindDomains = params['BindDomains']
          @CertSource = params['CertSource']
          @CertId = params['CertId']
        end
      end

      # Lighthouse实例
      class LighthouseInstanceDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param InstanceName: 实例名称
        # @type InstanceName: String
        # @param IP: IP地址
        # @type IP: Array
        # @param Domain: 可选择域名
        # @type Domain: Array

        attr_accessor :InstanceId, :InstanceName, :IP, :Domain

        def initialize(instanceid=nil, instancename=nil, ip=nil, domain=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
          @IP = ip
          @Domain = domain
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @IP = params['IP']
          @Domain = params['Domain']
        end
      end

      # live实例详情
      class LiveInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param CertId: 已绑定的证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Status: -1：域名未关联证书。
        # 1： 域名https已开启。
        # 0： 域名https已关闭。
        # @type Status: Integer

        attr_accessor :Domain, :CertId, :Status

        def initialize(domain=nil, certid=nil, status=nil)
          @Domain = domain
          @CertId = certid
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @CertId = params['CertId']
          @Status = params['Status']
        end
      end

      # live实例详情 - 异步关联云资源数据结构
      class LiveInstanceList < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该地域下live实例总数
        # @type TotalCount: Integer
        # @param InstanceList: live实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array

        attr_accessor :TotalCount, :InstanceList

        def initialize(totalcount=nil, instancelist=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              liveinstancedetail_tmp = LiveInstanceDetail.new
              liveinstancedetail_tmp.deserialize(i)
              @InstanceList << liveinstancedetail_tmp
            end
          end
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyCertificateResubmit请求参数结构体
      class ModifyCertificateResubmitRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID。
        # @type CertificateId: String

        attr_accessor :CertificateId

        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # ModifyCertificateResubmit返回参数结构体
      class ModifyCertificateResubmitResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # ModifyCertificatesExpiringNotificationSwitch请求参数结构体
      class ModifyCertificatesExpiringNotificationSwitchRequest < TencentCloud::Common::AbstractModel
        # @param CertificateIds: 证书ID列表。最多50个
        # @type CertificateIds: Array
        # @param SwitchStatus: 0:不忽略通知。1:忽略通知
        # @type SwitchStatus: Integer

        attr_accessor :CertificateIds, :SwitchStatus

        def initialize(certificateids=nil, switchstatus=nil)
          @CertificateIds = certificateids
          @SwitchStatus = switchstatus
        end

        def deserialize(params)
          @CertificateIds = params['CertificateIds']
          @SwitchStatus = params['SwitchStatus']
        end
      end

      # ModifyCertificatesExpiringNotificationSwitch返回参数结构体
      class ModifyCertificatesExpiringNotificationSwitchResponse < TencentCloud::Common::AbstractModel
        # @param CertificateIds: 证书ID列表
        # @type CertificateIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateIds, :RequestId

        def initialize(certificateids=nil, requestid=nil)
          @CertificateIds = certificateids
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateIds = params['CertificateIds']
          @RequestId = params['RequestId']
        end
      end

      # 证书操作日志。
      class OperationLog < TencentCloud::Common::AbstractModel
        # @param Action: 操作证书动作。
        # @type Action: String
        # @param CreatedOn: 操作时间。
        # @type CreatedOn: String
        # @param Uin: 主账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Uin: String
        # @param SubAccountUin: 子账号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubAccountUin: String
        # @param CertId: 证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Type: 操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String

        attr_accessor :Action, :CreatedOn, :Uin, :SubAccountUin, :CertId, :Type

        def initialize(action=nil, createdon=nil, uin=nil, subaccountuin=nil, certid=nil, type=nil)
          @Action = action
          @CreatedOn = createdon
          @Uin = uin
          @SubAccountUin = subaccountuin
          @CertId = certid
          @Type = type
        end

        def deserialize(params)
          @Action = params['Action']
          @CreatedOn = params['CreatedOn']
          @Uin = params['Uin']
          @SubAccountUin = params['SubAccountUin']
          @CertId = params['CertId']
          @Type = params['Type']
        end
      end

      # 权益包基本信息
      class PackageInfo < TencentCloud::Common::AbstractModel
        # @param PackageId: 权益包ID。
        # @type PackageId: String
        # @param Total: 权益包内权益点总量。
        # @type Total: Integer
        # @param Balance: 权益包内权益点余量。
        # @type Balance: Integer
        # @param Type: 权益包名称。
        # @type Type: String
        # @param SourceUin: 权益点是转入时，来源信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceUin: Integer
        # @param Status: 权益点状态。
        # @type Status: String
        # @param ExpireTime: 过期时间。
        # @type ExpireTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String
        # @param CreateTime: 生成时间。
        # @type CreateTime: String
        # @param SourceType: 来源类型。
        # @type SourceType: String
        # @param TransferOutInfos: 转移信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransferOutInfos: Array

        attr_accessor :PackageId, :Total, :Balance, :Type, :SourceUin, :Status, :ExpireTime, :UpdateTime, :CreateTime, :SourceType, :TransferOutInfos

        def initialize(packageid=nil, total=nil, balance=nil, type=nil, sourceuin=nil, status=nil, expiretime=nil, updatetime=nil, createtime=nil, sourcetype=nil, transferoutinfos=nil)
          @PackageId = packageid
          @Total = total
          @Balance = balance
          @Type = type
          @SourceUin = sourceuin
          @Status = status
          @ExpireTime = expiretime
          @UpdateTime = updatetime
          @CreateTime = createtime
          @SourceType = sourcetype
          @TransferOutInfos = transferoutinfos
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @Total = params['Total']
          @Balance = params['Balance']
          @Type = params['Type']
          @SourceUin = params['SourceUin']
          @Status = params['Status']
          @ExpireTime = params['ExpireTime']
          @UpdateTime = params['UpdateTime']
          @CreateTime = params['CreateTime']
          @SourceType = params['SourceType']
          unless params['TransferOutInfos'].nil?
            @TransferOutInfos = []
            params['TransferOutInfos'].each do |i|
              packagetransferoutinfo_tmp = PackageTransferOutInfo.new
              packagetransferoutinfo_tmp.deserialize(i)
              @TransferOutInfos << packagetransferoutinfo_tmp
            end
          end
        end
      end

      # 权益包转出详情
      class PackageTransferOutInfo < TencentCloud::Common::AbstractModel
        # @param PackageId: 权益包ID。
        # @type PackageId: String
        # @param TransferCode: 转移码。
        # @type TransferCode: String
        # @param TransferCount: 本次转移点数。
        # @type TransferCount: Integer
        # @param ReceivePackageId: 转入的PackageID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceivePackageId: String
        # @param ExpireTime: 本次转移过期时间。
        # @type ExpireTime: String
        # @param CreateTime: 本次转移生成时间。
        # @type CreateTime: String
        # @param UpdateTime: 本次转移更新时间。
        # @type UpdateTime: String
        # @param TransferStatus: 转移状态。
        # @type TransferStatus: String
        # @param ReceiverUin: 接收者uin。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiverUin: Integer
        # @param ReceiveTime: 接收时间。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReceiveTime: String

        attr_accessor :PackageId, :TransferCode, :TransferCount, :ReceivePackageId, :ExpireTime, :CreateTime, :UpdateTime, :TransferStatus, :ReceiverUin, :ReceiveTime

        def initialize(packageid=nil, transfercode=nil, transfercount=nil, receivepackageid=nil, expiretime=nil, createtime=nil, updatetime=nil, transferstatus=nil, receiveruin=nil, receivetime=nil)
          @PackageId = packageid
          @TransferCode = transfercode
          @TransferCount = transfercount
          @ReceivePackageId = receivepackageid
          @ExpireTime = expiretime
          @CreateTime = createtime
          @UpdateTime = updatetime
          @TransferStatus = transferstatus
          @ReceiverUin = receiveruin
          @ReceiveTime = receivetime
        end

        def deserialize(params)
          @PackageId = params['PackageId']
          @TransferCode = params['TransferCode']
          @TransferCount = params['TransferCount']
          @ReceivePackageId = params['ReceivePackageId']
          @ExpireTime = params['ExpireTime']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @TransferStatus = params['TransferStatus']
          @ReceiverUin = params['ReceiverUin']
          @ReceiveTime = params['ReceiveTime']
        end
      end

      # 预审核信息列表
      class PreAuditInfo < TencentCloud::Common::AbstractModel
        # @param TotalPeriod: 证书总年限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalPeriod: Integer
        # @param NowPeriod: 证书当前年限
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NowPeriod: Integer
        # @param ManagerId: 证书预审核管理人ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ManagerId: String

        attr_accessor :TotalPeriod, :NowPeriod, :ManagerId

        def initialize(totalperiod=nil, nowperiod=nil, managerid=nil)
          @TotalPeriod = totalperiod
          @NowPeriod = nowperiod
          @ManagerId = managerid
        end

        def deserialize(params)
          @TotalPeriod = params['TotalPeriod']
          @NowPeriod = params['NowPeriod']
          @ManagerId = params['ManagerId']
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
        # @param CertCSREncryptAlgo: CSR加密方式，可选：RSA、ECC、SM2
        # （CsrType为Online才可选）， 默认为RSA
        # @type CertCSREncryptAlgo: String
        # @param CertCSRKeyParameter: CSR加密参数，CsrEncryptAlgo为RSA时， 可选2048、4096等默认为2048；CsrEncryptAlgo为ECC时，可选prime256v1，secp384r1等，默认为prime256v1;
        # @type CertCSRKeyParameter: String

        attr_accessor :CertificateId, :ValidType, :CsrType, :CsrContent, :CsrkeyPassword, :Reason, :CertCSREncryptAlgo, :CertCSRKeyParameter

        def initialize(certificateid=nil, validtype=nil, csrtype=nil, csrcontent=nil, csrkeypassword=nil, reason=nil, certcsrencryptalgo=nil, certcsrkeyparameter=nil)
          @CertificateId = certificateid
          @ValidType = validtype
          @CsrType = csrtype
          @CsrContent = csrcontent
          @CsrkeyPassword = csrkeypassword
          @Reason = reason
          @CertCSREncryptAlgo = certcsrencryptalgo
          @CertCSRKeyParameter = certcsrkeyparameter
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ValidType = params['ValidType']
          @CsrType = params['CsrType']
          @CsrContent = params['CsrContent']
          @CsrkeyPassword = params['CsrkeyPassword']
          @Reason = params['Reason']
          @CertCSREncryptAlgo = params['CertCSREncryptAlgo']
          @CertCSRKeyParameter = params['CertCSRKeyParameter']
        end
      end

      # ReplaceCertificate返回参数结构体
      class ReplaceCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 云资源地域列表
      class ResourceTypeRegions < TencentCloud::Common::AbstractModel
        # @param ResourceType: 云资源类型
        # @type ResourceType: String
        # @param Regions: 地域列表
        # @type Regions: Array

        attr_accessor :ResourceType, :Regions

        def initialize(resourcetype=nil, regions=nil)
          @ResourceType = resourcetype
          @Regions = regions
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @Regions = params['Regions']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 根证书
      class RootCertificates < TencentCloud::Common::AbstractModel
        # @param Sign: 国密签名证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Sign: String
        # @param Encrypt: 国密加密证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Encrypt: String
        # @param Standard: 标准证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Standard: String

        attr_accessor :Sign, :Encrypt, :Standard

        def initialize(sign=nil, encrypt=nil, standard=nil)
          @Sign = sign
          @Encrypt = encrypt
          @Standard = standard
        end

        def deserialize(params)
          @Sign = params['Sign']
          @Encrypt = params['Encrypt']
          @Standard = params['Standard']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # 支持下载的类型
      class SupportDownloadType < TencentCloud::Common::AbstractModel
        # @param NGINX: 是否可以下载nginx可用格式
        # @type NGINX: Boolean
        # @param APACHE: 是否可以下载apache可用格式
        # @type APACHE: Boolean
        # @param TOMCAT: 是否可以下载tomcat可用格式
        # @type TOMCAT: Boolean
        # @param IIS: 是否可以下载iis可用格式
        # @type IIS: Boolean
        # @param JKS: 是否可以下载JKS可用格式
        # @type JKS: Boolean
        # @param OTHER: 是否可以下载其他格式
        # @type OTHER: Boolean
        # @param ROOT: 是否可以下载根证书
        # @type ROOT: Boolean

        attr_accessor :NGINX, :APACHE, :TOMCAT, :IIS, :JKS, :OTHER, :ROOT

        def initialize(nginx=nil, apache=nil, tomcat=nil, iis=nil, jks=nil, other=nil, root=nil)
          @NGINX = nginx
          @APACHE = apache
          @TOMCAT = tomcat
          @IIS = iis
          @JKS = jks
          @OTHER = other
          @ROOT = root
        end

        def deserialize(params)
          @NGINX = params['NGINX']
          @APACHE = params['APACHE']
          @TOMCAT = params['TOMCAT']
          @IIS = params['IIS']
          @JKS = params['JKS']
          @OTHER = params['OTHER']
          @ROOT = params['ROOT']
        end
      end

      # 异步任务证书关联云资源结果
      class SyncTaskBindResourceResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param BindResourceResult: 关联云资源结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BindResourceResult: Array
        # @param Status: 关联云资源异步查询结果： 0表示查询中， 1表示查询成功。 2表示查询异常； 若状态为1，则查看BindResourceResult结果；若状态为2，则查看Error原因
        # @type Status: Integer
        # @param Error: 关联云资源错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: :class:`Tencentcloud::Ssl.v20191205.models.Error`
        # @param CacheTime: 当前结果缓存时间
        # @type CacheTime: String

        attr_accessor :TaskId, :BindResourceResult, :Status, :Error, :CacheTime

        def initialize(taskid=nil, bindresourceresult=nil, status=nil, error=nil, cachetime=nil)
          @TaskId = taskid
          @BindResourceResult = bindresourceresult
          @Status = status
          @Error = error
          @CacheTime = cachetime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          unless params['BindResourceResult'].nil?
            @BindResourceResult = []
            params['BindResourceResult'].each do |i|
              bindresourceresult_tmp = BindResourceResult.new
              bindresourceresult_tmp.deserialize(i)
              @BindResourceResult << bindresourceresult_tmp
            end
          end
          @Status = params['Status']
          unless params['Error'].nil?
            @Error = Error.new
            @Error.deserialize(params['Error'])
          end
          @CacheTime = params['CacheTime']
        end
      end

      # TCB访问服务实例
      class TCBAccessInstance < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param UnionStatus: 统一域名状态

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UnionStatus: Integer
        # @param IsPreempted: 是否被抢占, 被抢占表示域名被其他环境绑定了，需要解绑或者重新绑定。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPreempted: Boolean
        # @param ICPStatus: icp黑名单封禁状态，0-未封禁，1-封禁

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ICPStatus: Integer
        # @param OldCertificateId: 已绑定证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldCertificateId: String

        attr_accessor :Domain, :Status, :UnionStatus, :IsPreempted, :ICPStatus, :OldCertificateId

        def initialize(domain=nil, status=nil, unionstatus=nil, ispreempted=nil, icpstatus=nil, oldcertificateid=nil)
          @Domain = domain
          @Status = status
          @UnionStatus = unionstatus
          @IsPreempted = ispreempted
          @ICPStatus = icpstatus
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Status = params['Status']
          @UnionStatus = params['UnionStatus']
          @IsPreempted = params['IsPreempted']
          @ICPStatus = params['ICPStatus']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # TCB访问服务列表
      class TCBAccessService < TencentCloud::Common::AbstractModel
        # @param InstanceList: 实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :InstanceList, :TotalCount

        def initialize(instancelist=nil, totalcount=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              tcbaccessinstance_tmp = TCBAccessInstance.new
              tcbaccessinstance_tmp.deserialize(i)
              @InstanceList << tcbaccessinstance_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # TCB环境
      class TCBEnvironment < TencentCloud::Common::AbstractModel
        # @param ID: 唯一ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ID: String
        # @param Source: 来源
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Source: String
        # @param Name: 名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String

        attr_accessor :ID, :Source, :Name, :Status

        def initialize(id=nil, source=nil, name=nil, status=nil)
          @ID = id
          @Source = source
          @Name = name
          @Status = status
        end

        def deserialize(params)
          @ID = params['ID']
          @Source = params['Source']
          @Name = params['Name']
          @Status = params['Status']
        end
      end

      # tcb环境实例详情 - 异步关联云资源数据结构
      class TCBEnvironments < TencentCloud::Common::AbstractModel
        # @param Environment: tcb环境
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Environment: :class:`Tencentcloud::Ssl.v20191205.models.TCBEnvironment`
        # @param AccessService: 访问服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessService: :class:`Tencentcloud::Ssl.v20191205.models.TCBAccessService`
        # @param HostService: 静态托管
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostService: :class:`Tencentcloud::Ssl.v20191205.models.TCBHostService`

        attr_accessor :Environment, :AccessService, :HostService

        def initialize(environment=nil, accessservice=nil, hostservice=nil)
          @Environment = environment
          @AccessService = accessservice
          @HostService = hostservice
        end

        def deserialize(params)
          unless params['Environment'].nil?
            @Environment = TCBEnvironment.new
            @Environment.deserialize(params['Environment'])
          end
          unless params['AccessService'].nil?
            @AccessService = TCBAccessService.new
            @AccessService.deserialize(params['AccessService'])
          end
          unless params['HostService'].nil?
            @HostService = TCBHostService.new
            @HostService.deserialize(params['HostService'])
          end
        end
      end

      # TCB静态托管服务实例
      class TCBHostInstance < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Status: 状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: String
        # @param DNSStatus: 解析状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DNSStatus: String
        # @param OldCertificateId: 已绑定证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OldCertificateId: String

        attr_accessor :Domain, :Status, :DNSStatus, :OldCertificateId

        def initialize(domain=nil, status=nil, dnsstatus=nil, oldcertificateid=nil)
          @Domain = domain
          @Status = status
          @DNSStatus = dnsstatus
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Status = params['Status']
          @DNSStatus = params['DNSStatus']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # TCB静态托管服务列表
      class TCBHostService < TencentCloud::Common::AbstractModel
        # @param InstanceList: 实例列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer

        attr_accessor :InstanceList, :TotalCount

        def initialize(instancelist=nil, totalcount=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              tcbhostinstance_tmp = TCBHostInstance.new
              tcbhostinstance_tmp.deserialize(i)
              @InstanceList << tcbhostinstance_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # tcb地域实例详情 - 异步关联云资源数据结构
      class TCBInstanceList < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param Environments: tcb环境实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Environments: Array

        attr_accessor :Region, :Environments

        def initialize(region=nil, environments=nil)
          @Region = region
          @Environments = environments
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['Environments'].nil?
            @Environments = []
            params['Environments'].each do |i|
              tcbenvironments_tmp = TCBEnvironments.new
              tcbenvironments_tmp.deserialize(i)
              @Environments << tcbenvironments_tmp
            end
          end
        end
      end

      # tse实例详情
      class TSEInstanceDetail < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayId: String
        # @param GatewayName: 网关名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GatewayName: String
        # @param CertificateList: 网关证书列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateList: Array

        attr_accessor :GatewayId, :GatewayName, :CertificateList

        def initialize(gatewayid=nil, gatewayname=nil, certificatelist=nil)
          @GatewayId = gatewayid
          @GatewayName = gatewayname
          @CertificateList = certificatelist
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GatewayName = params['GatewayName']
          unless params['CertificateList'].nil?
            @CertificateList = []
            params['CertificateList'].each do |i|
              gatewaycertificate_tmp = GatewayCertificate.new
              gatewaycertificate_tmp.deserialize(i)
              @CertificateList << gatewaycertificate_tmp
            end
          end
        end
      end

      # TSE实例详情 - 异步关联云资源数据结构
      class TSEInstanceList < TencentCloud::Common::AbstractModel
        # @param InstanceList: TSE实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 该地域下TSE实例总数
        # @type TotalCount: Integer
        # @param Region: 地域
        # @type Region: String

        attr_accessor :InstanceList, :TotalCount, :Region

        def initialize(instancelist=nil, totalcount=nil, region=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @Region = region
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              tseinstancedetail_tmp = TSEInstanceDetail.new
              tseinstancedetail_tmp.deserialize(i)
              @InstanceList << tseinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @Region = params['Region']
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

      # teo实例详情
      class TeoInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Host: 域名
        # @type Host: String
        # @param CertId: 证书ID
        # @type CertId: String
        # @param ZoneId: 区域ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param Status: 域名状态
        # @type Status: String

        attr_accessor :Host, :CertId, :ZoneId, :Status

        def initialize(host=nil, certid=nil, zoneid=nil, status=nil)
          @Host = host
          @CertId = certid
          @ZoneId = zoneid
          @Status = status
        end

        def deserialize(params)
          @Host = params['Host']
          @CertId = params['CertId']
          @ZoneId = params['ZoneId']
          @Status = params['Status']
        end
      end

      # edgeone实例详情 - 异步关联云资源数据结构
      class TeoInstanceList < TencentCloud::Common::AbstractModel
        # @param InstanceList: edgeone实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: edgeone实例总数
        # @type TotalCount: Integer

        attr_accessor :InstanceList, :TotalCount

        def initialize(instancelist=nil, totalcount=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              teoinstancedetail_tmp = TeoInstanceDetail.new
              teoinstancedetail_tmp.deserialize(i)
              @InstanceList << teoinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # tke ingress实例详情
      class TkeIngressDetail < TencentCloud::Common::AbstractModel
        # @param IngressName: ingress名称
        # @type IngressName: String
        # @param TlsDomains: tls域名列表
        # @type TlsDomains: Array
        # @param Domains: ingress域名列表
        # @type Domains: Array

        attr_accessor :IngressName, :TlsDomains, :Domains

        def initialize(ingressname=nil, tlsdomains=nil, domains=nil)
          @IngressName = ingressname
          @TlsDomains = tlsdomains
          @Domains = domains
        end

        def deserialize(params)
          @IngressName = params['IngressName']
          @TlsDomains = params['TlsDomains']
          @Domains = params['Domains']
        end
      end

      # tke实例详情
      class TkeInstanceDetail < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群ID
        # @type ClusterId: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param NamespaceList: 集群命名空间列表
        # @type NamespaceList: Array
        # @param ClusterType: 集群类型
        # @type ClusterType: String
        # @param ClusterVersion: 集群版本
        # @type ClusterVersion: String

        attr_accessor :ClusterId, :ClusterName, :NamespaceList, :ClusterType, :ClusterVersion

        def initialize(clusterid=nil, clustername=nil, namespacelist=nil, clustertype=nil, clusterversion=nil)
          @ClusterId = clusterid
          @ClusterName = clustername
          @NamespaceList = namespacelist
          @ClusterType = clustertype
          @ClusterVersion = clusterversion
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @ClusterName = params['ClusterName']
          unless params['NamespaceList'].nil?
            @NamespaceList = []
            params['NamespaceList'].each do |i|
              tkenamespacedetail_tmp = TkeNameSpaceDetail.new
              tkenamespacedetail_tmp.deserialize(i)
              @NamespaceList << tkenamespacedetail_tmp
            end
          end
          @ClusterType = params['ClusterType']
          @ClusterVersion = params['ClusterVersion']
        end
      end

      # tke实例详情 - 异步关联云资源数据结构
      class TkeInstanceList < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param InstanceList: tke实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 该地域下tke实例总数
        # @type TotalCount: Integer

        attr_accessor :Region, :InstanceList, :TotalCount

        def initialize(region=nil, instancelist=nil, totalcount=nil)
          @Region = region
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              tkeinstancedetail_tmp = TkeInstanceDetail.new
              tkeinstancedetail_tmp.deserialize(i)
              @InstanceList << tkeinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # tke namespace详情
      class TkeNameSpaceDetail < TencentCloud::Common::AbstractModel
        # @param Name: namespace名称
        # @type Name: String
        # @param SecretList: secret列表
        # @type SecretList: Array

        attr_accessor :Name, :SecretList

        def initialize(name=nil, secretlist=nil)
          @Name = name
          @SecretList = secretlist
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['SecretList'].nil?
            @SecretList = []
            params['SecretList'].each do |i|
              tkesecretdetail_tmp = TkeSecretDetail.new
              tkesecretdetail_tmp.deserialize(i)
              @SecretList << tkesecretdetail_tmp
            end
          end
        end
      end

      # tke secret详情
      class TkeSecretDetail < TencentCloud::Common::AbstractModel
        # @param Name: secret名称
        # @type Name: String
        # @param CertId: 证书ID
        # @type CertId: String
        # @param IngressList: ingress列表
        # @type IngressList: Array
        # @param NoMatchDomains: 和新证书不匹配的域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoMatchDomains: Array

        attr_accessor :Name, :CertId, :IngressList, :NoMatchDomains

        def initialize(name=nil, certid=nil, ingresslist=nil, nomatchdomains=nil)
          @Name = name
          @CertId = certid
          @IngressList = ingresslist
          @NoMatchDomains = nomatchdomains
        end

        def deserialize(params)
          @Name = params['Name']
          @CertId = params['CertId']
          unless params['IngressList'].nil?
            @IngressList = []
            params['IngressList'].each do |i|
              tkeingressdetail_tmp = TkeIngressDetail.new
              tkeingressdetail_tmp.deserialize(i)
              @IngressList << tkeingressdetail_tmp
            end
          end
          @NoMatchDomains = params['NoMatchDomains']
        end
      end

      # UpdateCertificateInstance请求参数结构体
      class UpdateCertificateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param OldCertificateId: 一键更新原证书ID， 查询绑定该证书的云资源然后进行证书更新
        # @type OldCertificateId: String
        # @param ResourceTypes: 需要部署的资源类型，参数值可选（小写）：clb、cdn、waf、live、ddos、teo、apigateway、vod、tke、tcb、tse
        # @type ResourceTypes: Array
        # @param CertificateId: 一键更新新证书ID，不传该则证书公钥和私钥必传
        # @type CertificateId: String
        # @param Regions: 需要部署的地域列表（废弃）
        # @type Regions: Array
        # @param ResourceTypesRegions: 云资源需要部署的地域列表，支持地域的云资源类型必传，如：clb、tke、apigateway、waf、tcb、tse等
        # @type ResourceTypesRegions: Array
        # @param CertificatePublicKey: 证书公钥， 若上传证书公钥， 则CertificateId不用传
        # @type CertificatePublicKey: String
        # @param CertificatePrivateKey: 证书私钥，若上传证书公钥， 则CertificateId不用传
        # @type CertificatePrivateKey: String
        # @param ExpiringNotificationSwitch: 旧证书是否忽略到期提醒  0:不忽略通知。1:忽略通知，忽略OldCertificateId到期提醒
        # @type ExpiringNotificationSwitch: Integer
        # @param Repeatable: 相同的证书是否允许重复上传，若选择上传证书， 则可以配置该参数
        # @type Repeatable: Boolean
        # @param AllowDownload: 是否允许下载，若选择上传证书， 则可以配置该参数
        # @type AllowDownload: Boolean
        # @param Tags: 标签列表，若选择上传证书， 则可以配置该参数
        # @type Tags: Array
        # @param ProjectId: 项目 ID，若选择上传证书， 则可以配置该参数
        # @type ProjectId: Integer

        attr_accessor :OldCertificateId, :ResourceTypes, :CertificateId, :Regions, :ResourceTypesRegions, :CertificatePublicKey, :CertificatePrivateKey, :ExpiringNotificationSwitch, :Repeatable, :AllowDownload, :Tags, :ProjectId
        extend Gem::Deprecate
        deprecate :Regions, :none, 2024, 3
        deprecate :Regions=, :none, 2024, 3

        def initialize(oldcertificateid=nil, resourcetypes=nil, certificateid=nil, regions=nil, resourcetypesregions=nil, certificatepublickey=nil, certificateprivatekey=nil, expiringnotificationswitch=nil, repeatable=nil, allowdownload=nil, tags=nil, projectid=nil)
          @OldCertificateId = oldcertificateid
          @ResourceTypes = resourcetypes
          @CertificateId = certificateid
          @Regions = regions
          @ResourceTypesRegions = resourcetypesregions
          @CertificatePublicKey = certificatepublickey
          @CertificatePrivateKey = certificateprivatekey
          @ExpiringNotificationSwitch = expiringnotificationswitch
          @Repeatable = repeatable
          @AllowDownload = allowdownload
          @Tags = tags
          @ProjectId = projectid
        end

        def deserialize(params)
          @OldCertificateId = params['OldCertificateId']
          @ResourceTypes = params['ResourceTypes']
          @CertificateId = params['CertificateId']
          @Regions = params['Regions']
          unless params['ResourceTypesRegions'].nil?
            @ResourceTypesRegions = []
            params['ResourceTypesRegions'].each do |i|
              resourcetyperegions_tmp = ResourceTypeRegions.new
              resourcetyperegions_tmp.deserialize(i)
              @ResourceTypesRegions << resourcetyperegions_tmp
            end
          end
          @CertificatePublicKey = params['CertificatePublicKey']
          @CertificatePrivateKey = params['CertificatePrivateKey']
          @ExpiringNotificationSwitch = params['ExpiringNotificationSwitch']
          @Repeatable = params['Repeatable']
          @AllowDownload = params['AllowDownload']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
          @ProjectId = params['ProjectId']
        end
      end

      # UpdateCertificateInstance返回参数结构体
      class UpdateCertificateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 云资源部署任务ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeployRecordId: Integer
        # @param DeployStatus: 部署状态，1表示部署成功，0表示部署失败
        # @type DeployStatus: Integer
        # @param UpdateSyncProgress: 更新异步创建任务进度详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateSyncProgress: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeployRecordId, :DeployStatus, :UpdateSyncProgress, :RequestId

        def initialize(deployrecordid=nil, deploystatus=nil, updatesyncprogress=nil, requestid=nil)
          @DeployRecordId = deployrecordid
          @DeployStatus = deploystatus
          @UpdateSyncProgress = updatesyncprogress
          @RequestId = requestid
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
          @DeployStatus = params['DeployStatus']
          unless params['UpdateSyncProgress'].nil?
            @UpdateSyncProgress = []
            params['UpdateSyncProgress'].each do |i|
              updatesyncprogress_tmp = UpdateSyncProgress.new
              updatesyncprogress_tmp.deserialize(i)
              @UpdateSyncProgress << updatesyncprogress_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # UpdateCertificateRecordRetry请求参数结构体
      class UpdateCertificateRecordRetryRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 待重试部署记录ID
        # @type DeployRecordId: Integer
        # @param DeployRecordDetailId: 待重试部署记录详情ID
        # @type DeployRecordDetailId: Integer

        attr_accessor :DeployRecordId, :DeployRecordDetailId

        def initialize(deployrecordid=nil, deployrecorddetailid=nil)
          @DeployRecordId = deployrecordid
          @DeployRecordDetailId = deployrecorddetailid
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
          @DeployRecordDetailId = params['DeployRecordDetailId']
        end
      end

      # UpdateCertificateRecordRetry返回参数结构体
      class UpdateCertificateRecordRetryResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId

        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateCertificateRecordRollback请求参数结构体
      class UpdateCertificateRecordRollbackRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 待重试部署记录ID
        # @type DeployRecordId: Integer

        attr_accessor :DeployRecordId

        def initialize(deployrecordid=nil)
          @DeployRecordId = deployrecordid
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
        end
      end

      # UpdateCertificateRecordRollback返回参数结构体
      class UpdateCertificateRecordRollbackResponse < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 回滚部署记录ID
        # @type DeployRecordId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeployRecordId, :RequestId

        def initialize(deployrecordid=nil, requestid=nil)
          @DeployRecordId = deployrecordid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
          @RequestId = params['RequestId']
        end
      end

      # 更新记录详情
      class UpdateRecordDetail < TencentCloud::Common::AbstractModel
        # @param Id: 详情记录id
        # @type Id: Integer
        # @param CertId: 新证书ID
        # @type CertId: String
        # @param OldCertId: 旧证书ID
        # @type OldCertId: String
        # @param Domains: 部署域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: Array
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param Region: 部署地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Status: 部署状态
        # @type Status: Integer
        # @param ErrorMsg: 部署错误信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorMsg: String
        # @param CreateTime: 部署时间
        # @type CreateTime: String
        # @param UpdateTime: 最后一次更新时间
        # @type UpdateTime: String
        # @param InstanceId: 部署实例ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param InstanceName: 部署实例名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceName: String
        # @param ListenerId: 部署监听器ID（CLB专用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerId: String
        # @param ListenerName: 部署监听器名称（CLB专用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ListenerName: String
        # @param Protocol: 协议
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param SniSwitch: 是否开启SNI（CLB专用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SniSwitch: Integer
        # @param Bucket: bucket名称（COS专用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Bucket: String
        # @param Port: 端口
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Port: Integer
        # @param Namespace: 命名空间（TKE专用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Namespace: String
        # @param SecretName: secret名称（TKE专用）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecretName: String
        # @param EnvId: 环境ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EnvId: String
        # @param TCBType: TCB部署类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TCBType: String

        attr_accessor :Id, :CertId, :OldCertId, :Domains, :ResourceType, :Region, :Status, :ErrorMsg, :CreateTime, :UpdateTime, :InstanceId, :InstanceName, :ListenerId, :ListenerName, :Protocol, :SniSwitch, :Bucket, :Port, :Namespace, :SecretName, :EnvId, :TCBType

        def initialize(id=nil, certid=nil, oldcertid=nil, domains=nil, resourcetype=nil, region=nil, status=nil, errormsg=nil, createtime=nil, updatetime=nil, instanceid=nil, instancename=nil, listenerid=nil, listenername=nil, protocol=nil, sniswitch=nil, bucket=nil, port=nil, namespace=nil, secretname=nil, envid=nil, tcbtype=nil)
          @Id = id
          @CertId = certid
          @OldCertId = oldcertid
          @Domains = domains
          @ResourceType = resourcetype
          @Region = region
          @Status = status
          @ErrorMsg = errormsg
          @CreateTime = createtime
          @UpdateTime = updatetime
          @InstanceId = instanceid
          @InstanceName = instancename
          @ListenerId = listenerid
          @ListenerName = listenername
          @Protocol = protocol
          @SniSwitch = sniswitch
          @Bucket = bucket
          @Port = port
          @Namespace = namespace
          @SecretName = secretname
          @EnvId = envid
          @TCBType = tcbtype
        end

        def deserialize(params)
          @Id = params['Id']
          @CertId = params['CertId']
          @OldCertId = params['OldCertId']
          @Domains = params['Domains']
          @ResourceType = params['ResourceType']
          @Region = params['Region']
          @Status = params['Status']
          @ErrorMsg = params['ErrorMsg']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Protocol = params['Protocol']
          @SniSwitch = params['SniSwitch']
          @Bucket = params['Bucket']
          @Port = params['Port']
          @Namespace = params['Namespace']
          @SecretName = params['SecretName']
          @EnvId = params['EnvId']
          @TCBType = params['TCBType']
        end
      end

      # 更新记录详情列表
      class UpdateRecordDetails < TencentCloud::Common::AbstractModel
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param List: 部署资源详情列表
        # @type List: Array
        # @param TotalCount: 该部署资源总数
        # @type TotalCount: Integer

        attr_accessor :ResourceType, :List, :TotalCount

        def initialize(resourcetype=nil, list=nil, totalcount=nil)
          @ResourceType = resourcetype
          @List = list
          @TotalCount = totalcount
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              updaterecorddetail_tmp = UpdateRecordDetail.new
              updaterecorddetail_tmp.deserialize(i)
              @List << updaterecorddetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

      # 部署记录信息
      class UpdateRecordInfo < TencentCloud::Common::AbstractModel
        # @param Id: 记录ID
        # @type Id: Integer
        # @param CertId: 新证书ID
        # @type CertId: String
        # @param OldCertId: 原证书ID
        # @type OldCertId: String
        # @param ResourceTypes: 部署资源类型列表
        # @type ResourceTypes: Array
        # @param Regions: 部署地域列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Regions: Array
        # @param Status: 部署状态
        # @type Status: Integer
        # @param CreateTime: 部署时间
        # @type CreateTime: String
        # @param UpdateTime: 最后一次更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :CertId, :OldCertId, :ResourceTypes, :Regions, :Status, :CreateTime, :UpdateTime

        def initialize(id=nil, certid=nil, oldcertid=nil, resourcetypes=nil, regions=nil, status=nil, createtime=nil, updatetime=nil)
          @Id = id
          @CertId = certid
          @OldCertId = oldcertid
          @ResourceTypes = resourcetypes
          @Regions = regions
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @CertId = params['CertId']
          @OldCertId = params['OldCertId']
          @ResourceTypes = params['ResourceTypes']
          @Regions = params['Regions']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 更新异步任务进度
      class UpdateSyncProgress < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResourceType: String
        # @param UpdateSyncProgressRegions: 地域结果列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdateSyncProgressRegions: Array
        # @param Status: 异步更新进度状态：0， 待处理， 1 已处理， 3 处理中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :ResourceType, :UpdateSyncProgressRegions, :Status

        def initialize(resourcetype=nil, updatesyncprogressregions=nil, status=nil)
          @ResourceType = resourcetype
          @UpdateSyncProgressRegions = updatesyncprogressregions
          @Status = status
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          unless params['UpdateSyncProgressRegions'].nil?
            @UpdateSyncProgressRegions = []
            params['UpdateSyncProgressRegions'].each do |i|
              updatesyncprogressregion_tmp = UpdateSyncProgressRegion.new
              updatesyncprogressregion_tmp.deserialize(i)
              @UpdateSyncProgressRegions << updatesyncprogressregion_tmp
            end
          end
          @Status = params['Status']
        end
      end

      # 更新异步任务进度
      class UpdateSyncProgressRegion < TencentCloud::Common::AbstractModel
        # @param Region: 资源类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param TotalCount: 总数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TotalCount: Integer
        # @param OffsetCount: 执行完成数量
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OffsetCount: Integer
        # @param Status: 异步更新进度状态：0， 待处理， 1 已处理， 3 处理中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :Region, :TotalCount, :OffsetCount, :Status

        def initialize(region=nil, totalcount=nil, offsetcount=nil, status=nil)
          @Region = region
          @TotalCount = totalcount
          @OffsetCount = offsetcount
          @Status = status
        end

        def deserialize(params)
          @Region = params['Region']
          @TotalCount = params['TotalCount']
          @OffsetCount = params['OffsetCount']
          @Status = params['Status']
        end
      end

      # UploadCertificate请求参数结构体
      class UploadCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificatePublicKey: 证书内容。
        # @type CertificatePublicKey: String
        # @param CertificatePrivateKey: 私钥内容，证书类型为 SVR 时必填，为 CA 时可不填。
        # @type CertificatePrivateKey: String
        # @param CertificateType: 证书类型，默认 SVR。CA = CA证书，SVR = 服务器证书。
        # @type CertificateType: String
        # @param Alias: 备注名称。
        # @type Alias: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param CertificateUse: 证书用途/证书来源。“CLB，CDN，WAF，LIVE，DDOS”
        # @type CertificateUse: String
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param Repeatable: 相同的证书是否允许重复上传
        # @type Repeatable: Boolean

        attr_accessor :CertificatePublicKey, :CertificatePrivateKey, :CertificateType, :Alias, :ProjectId, :CertificateUse, :Tags, :Repeatable

        def initialize(certificatepublickey=nil, certificateprivatekey=nil, certificatetype=nil, _alias=nil, projectid=nil, certificateuse=nil, tags=nil, repeatable=nil)
          @CertificatePublicKey = certificatepublickey
          @CertificatePrivateKey = certificateprivatekey
          @CertificateType = certificatetype
          @Alias = _alias
          @ProjectId = projectid
          @CertificateUse = certificateuse
          @Tags = tags
          @Repeatable = repeatable
        end

        def deserialize(params)
          @CertificatePublicKey = params['CertificatePublicKey']
          @CertificatePrivateKey = params['CertificatePrivateKey']
          @CertificateType = params['CertificateType']
          @Alias = params['Alias']
          @ProjectId = params['ProjectId']
          @CertificateUse = params['CertificateUse']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tags_tmp = Tags.new
              tags_tmp.deserialize(i)
              @Tags << tags_tmp
            end
          end
          @Repeatable = params['Repeatable']
        end
      end

      # UploadCertificate返回参数结构体
      class UploadCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RepeatCertId: 重复证书的ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RepeatCertId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RepeatCertId, :RequestId

        def initialize(certificateid=nil, repeatcertid=nil, requestid=nil)
          @CertificateId = certificateid
          @RepeatCertId = repeatcertid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RepeatCertId = params['RepeatCertId']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # vod实例详情 - 异步关联云资源数据结构
      class VODInstanceList < TencentCloud::Common::AbstractModel
        # @param InstanceList: vod实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 该地域下vod实例总数
        # @type TotalCount: Integer

        attr_accessor :InstanceList, :TotalCount

        def initialize(instancelist=nil, totalcount=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              vodinstancedetail_tmp = VodInstanceDetail.new
              vodinstancedetail_tmp.deserialize(i)
              @InstanceList << vodinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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

      # Vod实例
      class VodInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param CertId: 证书ID
        # @type CertId: String

        attr_accessor :Domain, :CertId

        def initialize(domain=nil, certid=nil)
          @Domain = domain
          @CertId = certid
        end

        def deserialize(params)
          @Domain = params['Domain']
          @CertId = params['CertId']
        end
      end

      # waf实例详情
      class WafInstanceDetail < TencentCloud::Common::AbstractModel
        # @param Domain: 域名
        # @type Domain: String
        # @param CertId: 证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertId: String
        # @param Keepalive: 是否保持长连接，1是，0 否
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keepalive: Integer

        attr_accessor :Domain, :CertId, :Keepalive

        def initialize(domain=nil, certid=nil, keepalive=nil)
          @Domain = domain
          @CertId = certid
          @Keepalive = keepalive
        end

        def deserialize(params)
          @Domain = params['Domain']
          @CertId = params['CertId']
          @Keepalive = params['Keepalive']
        end
      end

      # waf实例详情 - 异步关联云资源数据结构
      class WafInstanceList < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param InstanceList: waf实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 该地域下waf实例总数
        # @type TotalCount: Integer

        attr_accessor :Region, :InstanceList, :TotalCount

        def initialize(region=nil, instancelist=nil, totalcount=nil)
          @Region = region
          @InstanceList = instancelist
          @TotalCount = totalcount
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              wafinstancedetail_tmp = WafInstanceDetail.new
              wafinstancedetail_tmp.deserialize(i)
              @InstanceList << wafinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
        end
      end

    end
  end
end

