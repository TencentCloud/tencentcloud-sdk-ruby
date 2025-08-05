# frozen_string_literal: true

# Copyright (c) 2017-2025 Tencent. All Rights Reserved.
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
        # @type InstanceList: Array
        # @param TotalCount: 该地域下apigateway实例总数
        # @type TotalCount: Integer
        # @param Error: 是否查询异常
        # @type Error: String

        attr_accessor :Region, :InstanceList, :TotalCount, :Error

        def initialize(region=nil, instancelist=nil, totalcount=nil, error=nil)
          @Region = region
          @InstanceList = instancelist
          @TotalCount = totalcount
          @Error = error
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
          @Error = params['Error']
        end
      end

      # ApplyCertificate请求参数结构体
      class ApplyCertificateRequest < TencentCloud::Common::AbstractModel
        # @param DvAuthMethod: 证书域名验证方式：
        # DNS_AUTO： 自动添加域名DNS验证， 需用户域名解析托管在『[云解析DNS](https://console.cloud.tencent.com/cns)』，且与申请证书归属同一个腾讯云账号
        # DNS：手动添加域名DNS验证，需用户手动去域名解析服务商添加验证值
        # FILE：手动添加域名文件验证。 需要用户手动在域名站点根目录添加指定路径文件进行文件验证， http&https任一通过即可；且域名站点需海外CA机构能访问， 具体访问白名单为：64.78.193.238，216.168.247.9，216.168.249.9，54.189.196.217
        # @type DvAuthMethod: String
        # @param DomainName: 证书绑定的域名。
        # @type DomainName: String
        # @param ProjectId: 证书关联的项目 ID。 默认为0（默认项目）
        # @type ProjectId: Integer
        # @param PackageType: 证书类型， 可不传，目前仅支持类型83。83 = TrustAsia C1 DV Free。
        # @type PackageType: String
        # @param ContactEmail: 证书订单关联邮箱。默认为腾讯云账号邮箱， 不存在则关联固定邮箱
        # @type ContactEmail: String
        # @param ContactPhone: 证书关联手机号码，  不存在则关联固定手机号码
        # @type ContactPhone: String
        # @param ValidityPeriod: 证书有效期，默认3（月），目前仅支持3个月。
        # @type ValidityPeriod: String
        # @param CsrEncryptAlgo: 加密算法，取值为ECC、RSA， 默认为RSA
        # @type CsrEncryptAlgo: String
        # @param CsrKeyParameter: 密钥对参数，RSA仅支持2048。ECC仅支持prime256v1。加密算法选择ECC时，此参数必填
        # @type CsrKeyParameter: String
        # @param CsrKeyPassword: 私钥密码， 目前仅使用在生成jks、pfx格式证书时密码； 其他格式私钥证书未加密
        # @type CsrKeyPassword: String
        # @param Alias: 证书别名
        # @type Alias: String
        # @param OldCertificateId: 旧证书 ID，用于证书续费（证书有效期在30天内，且未过期），会建立续费关系， 可用于托管； 不传则表示新申请证书
        # @type OldCertificateId: String
        # @param PackageId: 权益包ID，用于免费证书扩容包使用， 免费证书扩容包已下线
        # @type PackageId: String
        # @param DeleteDnsAutoRecord: 签发后是否删除自动域名验证记录， 默认为否；仅域名为DNS_AUTO验证类型支持传参
        # @type DeleteDnsAutoRecord: Boolean
        # @param DnsNames: 证书绑定的其他域名，待开放。目前不支持此参数
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
        # @param CertificateId: 新申请成功的证书 ID。
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

      # 批量删除失败的项
      class BatchDeleteFail < TencentCloud::Common::AbstractModel
        # @param CertId: 失败的证书ID
        # @type CertId: String
        # @param Msg: 失败的原因
        # @type Msg: String

        attr_accessor :CertId, :Msg

        def initialize(certid=nil, msg=nil)
          @CertId = certid
          @Msg = msg
        end

        def deserialize(params)
          @CertId = params['CertId']
          @Msg = params['Msg']
        end
      end

      # 绑定资源地域结果
      class BindResourceRegionResult < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param TotalCount: 关联资源总数
        # @type TotalCount: Integer
        # @param Error: 是否查询异常
        # @type Error: String

        attr_accessor :Region, :TotalCount, :Error

        def initialize(region=nil, totalcount=nil, error=nil)
          @Region = region
          @TotalCount = totalcount
          @Error = error
        end

        def deserialize(params)
          @Region = params['Region']
          @TotalCount = params['TotalCount']
          @Error = params['Error']
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

      # cos实例详情 - 异步关联云资源数据结构
      class COSInstanceList < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param InstanceList: 实例详情
        # @type InstanceList: Array
        # @param TotalCount: 地域下总数
        # @type TotalCount: Integer
        # @param Error: 错误信息
        # @type Error: String

        attr_accessor :Region, :InstanceList, :TotalCount, :Error

        def initialize(region=nil, instancelist=nil, totalcount=nil, error=nil)
          @Region = region
          @InstanceList = instancelist
          @TotalCount = totalcount
          @Error = error
        end

        def deserialize(params)
          @Region = params['Region']
          unless params['InstanceList'].nil?
            @InstanceList = []
            params['InstanceList'].each do |i|
              cosinstancedetail_tmp = CosInstanceDetail.new
              cosinstancedetail_tmp.deserialize(i)
              @InstanceList << cosinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @Error = params['Error']
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
        # @param Status: 域名状态 rejected：域名审核未通过，域名备案过期/被注销导致，processing：部署中，online：已启动，offline：已关闭
        # @type Status: String
        # @param HttpsBillingSwitch: 域名计费状态，on表示开启，off表示关闭。
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
        # @type InstanceList: Array
        # @param Error: 是否查询异常
        # @type Error: String

        attr_accessor :TotalCount, :InstanceList, :Error

        def initialize(totalcount=nil, instancelist=nil, error=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
          @Error = error
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
          @Error = params['Error']
        end
      end

      # 证书基本信息
      class CertBasicInfo < TencentCloud::Common::AbstractModel
        # @param Issuer: 颁发者
        # @type Issuer: String
        # @param Subject: 颁发给
        # @type Subject: String
        # @param Fingerprint: 证书指纹
        # @type Fingerprint: String
        # @param ValidFrom: 证书有效期开始时间
        # @type ValidFrom: String
        # @param ValidTo: 证书有效期结束时间
        # @type ValidTo: String

        attr_accessor :Issuer, :Subject, :Fingerprint, :ValidFrom, :ValidTo

        def initialize(issuer=nil, subject=nil, fingerprint=nil, validfrom=nil, validto=nil)
          @Issuer = issuer
          @Subject = subject
          @Fingerprint = fingerprint
          @ValidFrom = validfrom
          @ValidTo = validto
        end

        def deserialize(params)
          @Issuer = params['Issuer']
          @Subject = params['Subject']
          @Fingerprint = params['Fingerprint']
          @ValidFrom = params['ValidFrom']
          @ValidTo = params['ValidTo']
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
        # @type CertCaId: String
        # @param SSLMode: 证书认证模式：UNIDIRECTIONAL单向认证，MUTUAL双向认证
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
        # @type DomainNumber: String
        # @param OriginCertificateId: 续费原证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginCertificateId: String
        # @param ReplacedBy: 重颁发证书原始 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplacedBy: String
        # @param ReplacedFor: 重颁发证书ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ReplacedFor: String
        # @param RenewOrder: 续费证书 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RenewOrder: String
        # @param SMCert: 是否是国密证书
        # @type SMCert: Integer
        # @param CompanyType: 公司类型，取值：1（个人）；2（公司）
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

      # CertificateInfoSubmit请求参数结构体
      class CertificateInfoSubmitRequest < TencentCloud::Common::AbstractModel
        # @param CertId: 待提交资料的付费证书 ID。
        # @type CertId: String
        # @param GenCsrType: 此字段必传。 CSR 生成方式， 取值为：
        # - online：腾讯云提交的填写的参数信息生成CSR和私钥，并由腾讯云加密存储
        # - parse：自行生成CSR和私钥，并通过上传CSR申请证书
        # @type GenCsrType: String
        # @param CertCommonName: 证书绑定的通用名称， 若是上传的CSR，则该域名需与CSR解析的通用名称一致
        # @type CertCommonName: String
        # @param CompanyType: 组织信息类型， 取值范围：
        # 1（个人）：仅DV类型证书可设置为1， 个人类型证书组织信息字段可不传：Org开头，Admin开头，Tech开头
        # 2（公司）：所有类型证书都可设置为2， 按需传组织信息字段
        # @type CompanyType: Integer
        # @param CompanyId: 公司ID，在 [腾讯云控制台](https://console.cloud.tencent.com/ssl/info) 可进行查看，若无满足的公司信息， 则本参数传0 ； 若存在满足当前订单的公司信息， 可以根据 [DescribeCompanies](https://cloud.tencent.com/document/product/400/90375) 查看公司ID； 若传了公司ID，则Org开头的参数可不传

        # @type CompanyId: String
        # @param OrgIdType: 公司证件类型，取值范围：
        # TYDMZ（统一社会信用代码 ）：仅CFCA类型证书需要使用本字段， 其他类型证书不需要使用本字段
        # OTHERS（其他）
        # @type OrgIdType: String
        # @param OrgIdNumber: 公司证件号码，取值范围：
        # TYDMZ（统一社会信用代码 ）：11532xxxxxxxx24820
        # @type OrgIdNumber: String
        # @param AdminIdType: 管理人证件类型，取值范围：
        # SFZ（身份证）：仅CFCA类型证书需要使用本字段， 其他类型证书不需要使用本字段
        # HZ（护照）：仅CFCA类型证书需要使用本字段， 其他类型证书不需要使用本字段
        # @type AdminIdType: String
        # @param AdminIdNumber: 管理人证件号码，仅CFCA类型证书需要使用本字段， 其他类型证书不需要使用本字段， 取值范围：
        # SFZ（身份证）：110000xxxxxxxx1242
        # HZ（护照）:EFxxxxxxx
        # @type AdminIdNumber: String
        # @param TechIdType: 联系人证件类型，取值范围：
        # SFZ（身份证）：仅CFCA类型证书需要使用本字段， 其他类型证书不需要使用本字段
        # HZ（护照）：仅CFCA类型证书需要使用本字段， 其他类型证书不需要使用本字段
        # @type TechIdType: String
        # @param TechIdNumber: 联系人证件号码，仅CFCA类型证书需要使用本字段， 其他类型证书不需要使用本字段，取值范围：
        # SFZ（身份证）：110000xxxxxxxx1242
        # HZ（护照）:EFxxxxxxx
        # @type TechIdNumber: String
        # @param Csr: 上传的 CSR 内容。
        # 若GenCsrType为parse， 则此字段必传。
        # @type Csr: String
        # @param DnsNames: 证书绑定的其他域名， 单域名、泛域名证书无需提供。 多域名、多泛域名必填
        # @type DnsNames: Array
        # @param KeyPass: 私钥密码， 目前仅使用在生成jks、pfx格式证书时密码； 其他格式私钥证书未加密
        # @type KeyPass: String
        # @param OrgOrganization: 公司名称。若没有传CompanyId或者ManagerId， 则此字段必传
        # @type OrgOrganization: String
        # @param OrgDivision: 部门名称。若没有传CompanyId或者ManagerId， 则此字段必传
        # @type OrgDivision: String
        # @param OrgAddress: 公司详细地址。若没有传CompanyId或者ManagerId， 则此字段必传
        # @type OrgAddress: String
        # @param OrgCountry: 国家名称，如中国：CN 。若没有传CompanyId或者ManagerId， 则此字段必传
        # @type OrgCountry: String
        # @param OrgCity: 公司所在城市。若没有传CompanyId或者ManagerId， 则此字段必传
        # @type OrgCity: String
        # @param OrgRegion: 公司所在省份。若没有传CompanyId或者ManagerId， 则此字段必传
        # @type OrgRegion: String
        # @param OrgPhoneArea: 公司所属区号。若没有传CompanyId或者ManagerId， 则此字段必传
        # 如：021。  手机号码传 86
        # @type OrgPhoneArea: String
        # @param OrgPhoneNumber: 公司所属号码。若没有传CompanyId或者ManagerId， 则此字段必传
        # @type OrgPhoneNumber: String
        # @param VerifyType: 证书域名验证方式：
        # DNS_AUTO： 自动添加域名DNS验证， 需用户域名解析托管在『[云解析DNS](https://console.cloud.tencent.com/cns)』，且与申请证书归属同一个腾讯云账号
        # DNS：手动添加域名DNS验证，需用户手动去域名解析服务商添加验证值
        # FILE：手动添加域名文件验证。 需要用户手动在域名站点根目录添加指定路径文件进行文件验证， http&https任一通过即可；且域名站点需海外CA机构能访问， 具体访问白名单为：64.78.193.238，216.168.247.9，216.168.249.9，54.189.196.217
        # @type VerifyType: String
        # @param AdminFirstName: 管理人名。若没有传ManagerId， 则此字段必传
        # @type AdminFirstName: String
        # @param AdminLastName: 管理人姓。若没有传ManagerId， 则此字段必传
        # @type AdminLastName: String
        # @param AdminPhone: 管理人手机号码。若没有传ManagerId， 则此字段必传
        # @type AdminPhone: String
        # @param AdminEmail: 管理人邮箱地址。若没有传ManagerId， 则此字段必传
        # @type AdminEmail: String
        # @param AdminTitle: 管理人职位。若没有传ManagerId， 则此字段必传
        # @type AdminTitle: String
        # @param TechFirstName: 联系人名。若没有传ManagerId， 则此字段必传
        # @type TechFirstName: String
        # @param TechLastName: 联系人姓。若没有传ManagerId， 则此字段必传
        # @type TechLastName: String
        # @param ContactEmail: 联系人邮箱地址。CompanyType为1时， 此字段必传
        # @type ContactEmail: String
        # @param AutoRenewFlag: 是否开启自动续费： 0， 不开启；  1， 开启； 默认为0
        # @type AutoRenewFlag: Integer
        # @param CsrKeyParameter: 密钥对参数，RSA支持2048，4096。ECC仅支持prime256v1。当 CSR 生成方式为online的时候，此参数必填。
        # @type CsrKeyParameter: String
        # @param CsrEncryptAlgo: 加密算法，取值为ECC、RSA， 默认为RSA。当 CSR 生成方式为online的时候，此参数必填。
        # @type CsrEncryptAlgo: String
        # @param ManagerId: 管理人ID，在 [腾讯云控制台](https://console.cloud.tencent.com/ssl/info) 可进行查看，若无满足的管理人信息， 则本参数传0 ； 若存在满足当前订单的管理人信息， 可以根据 [DescribeManagers](https://cloud.tencent.com/document/product/400/52672) 查看管理人ID； 若传了管理人ID，则Org开头、Admin开头、Tech开头的参数可不传； 管理人ID会包含公司信息
        # @type ManagerId: String
        # @param TechPhone: 联系人电话。若没有传ManagerId， 则此字段必传
        # @type TechPhone: String
        # @param TechEmail: 联系人邮箱
        # @type TechEmail: String
        # @param TechTitle: 联系人职位。若没有传ManagerId， 则此字段必传
        # @type TechTitle: String
        # @param Type: 证书类型
        # @type Type: Integer
        # @param CaType: 只针对Dnspod系列证书有效，ca机构类型可为sectigo和digicert
        # @type CaType: String
        # @param SignAlgo: 签名算法
        # @type SignAlgo: String

        attr_accessor :CertId, :GenCsrType, :CertCommonName, :CompanyType, :CompanyId, :OrgIdType, :OrgIdNumber, :AdminIdType, :AdminIdNumber, :TechIdType, :TechIdNumber, :Csr, :DnsNames, :KeyPass, :OrgOrganization, :OrgDivision, :OrgAddress, :OrgCountry, :OrgCity, :OrgRegion, :OrgPhoneArea, :OrgPhoneNumber, :VerifyType, :AdminFirstName, :AdminLastName, :AdminPhone, :AdminEmail, :AdminTitle, :TechFirstName, :TechLastName, :ContactEmail, :AutoRenewFlag, :CsrKeyParameter, :CsrEncryptAlgo, :ManagerId, :TechPhone, :TechEmail, :TechTitle, :Type, :CaType, :SignAlgo

        def initialize(certid=nil, gencsrtype=nil, certcommonname=nil, companytype=nil, companyid=nil, orgidtype=nil, orgidnumber=nil, adminidtype=nil, adminidnumber=nil, techidtype=nil, techidnumber=nil, csr=nil, dnsnames=nil, keypass=nil, orgorganization=nil, orgdivision=nil, orgaddress=nil, orgcountry=nil, orgcity=nil, orgregion=nil, orgphonearea=nil, orgphonenumber=nil, verifytype=nil, adminfirstname=nil, adminlastname=nil, adminphone=nil, adminemail=nil, admintitle=nil, techfirstname=nil, techlastname=nil, contactemail=nil, autorenewflag=nil, csrkeyparameter=nil, csrencryptalgo=nil, managerid=nil, techphone=nil, techemail=nil, techtitle=nil, type=nil, catype=nil, signalgo=nil)
          @CertId = certid
          @GenCsrType = gencsrtype
          @CertCommonName = certcommonname
          @CompanyType = companytype
          @CompanyId = companyid
          @OrgIdType = orgidtype
          @OrgIdNumber = orgidnumber
          @AdminIdType = adminidtype
          @AdminIdNumber = adminidnumber
          @TechIdType = techidtype
          @TechIdNumber = techidnumber
          @Csr = csr
          @DnsNames = dnsnames
          @KeyPass = keypass
          @OrgOrganization = orgorganization
          @OrgDivision = orgdivision
          @OrgAddress = orgaddress
          @OrgCountry = orgcountry
          @OrgCity = orgcity
          @OrgRegion = orgregion
          @OrgPhoneArea = orgphonearea
          @OrgPhoneNumber = orgphonenumber
          @VerifyType = verifytype
          @AdminFirstName = adminfirstname
          @AdminLastName = adminlastname
          @AdminPhone = adminphone
          @AdminEmail = adminemail
          @AdminTitle = admintitle
          @TechFirstName = techfirstname
          @TechLastName = techlastname
          @ContactEmail = contactemail
          @AutoRenewFlag = autorenewflag
          @CsrKeyParameter = csrkeyparameter
          @CsrEncryptAlgo = csrencryptalgo
          @ManagerId = managerid
          @TechPhone = techphone
          @TechEmail = techemail
          @TechTitle = techtitle
          @Type = type
          @CaType = catype
          @SignAlgo = signalgo
        end

        def deserialize(params)
          @CertId = params['CertId']
          @GenCsrType = params['GenCsrType']
          @CertCommonName = params['CertCommonName']
          @CompanyType = params['CompanyType']
          @CompanyId = params['CompanyId']
          @OrgIdType = params['OrgIdType']
          @OrgIdNumber = params['OrgIdNumber']
          @AdminIdType = params['AdminIdType']
          @AdminIdNumber = params['AdminIdNumber']
          @TechIdType = params['TechIdType']
          @TechIdNumber = params['TechIdNumber']
          @Csr = params['Csr']
          @DnsNames = params['DnsNames']
          @KeyPass = params['KeyPass']
          @OrgOrganization = params['OrgOrganization']
          @OrgDivision = params['OrgDivision']
          @OrgAddress = params['OrgAddress']
          @OrgCountry = params['OrgCountry']
          @OrgCity = params['OrgCity']
          @OrgRegion = params['OrgRegion']
          @OrgPhoneArea = params['OrgPhoneArea']
          @OrgPhoneNumber = params['OrgPhoneNumber']
          @VerifyType = params['VerifyType']
          @AdminFirstName = params['AdminFirstName']
          @AdminLastName = params['AdminLastName']
          @AdminPhone = params['AdminPhone']
          @AdminEmail = params['AdminEmail']
          @AdminTitle = params['AdminTitle']
          @TechFirstName = params['TechFirstName']
          @TechLastName = params['TechLastName']
          @ContactEmail = params['ContactEmail']
          @AutoRenewFlag = params['AutoRenewFlag']
          @CsrKeyParameter = params['CsrKeyParameter']
          @CsrEncryptAlgo = params['CsrEncryptAlgo']
          @ManagerId = params['ManagerId']
          @TechPhone = params['TechPhone']
          @TechEmail = params['TechEmail']
          @TechTitle = params['TechTitle']
          @Type = params['Type']
          @CaType = params['CaType']
          @SignAlgo = params['SignAlgo']
        end
      end

      # CertificateInfoSubmit返回参数结构体
      class CertificateInfoSubmitResponse < TencentCloud::Common::AbstractModel
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

      # CertificateOrderSubmit请求参数结构体
      class CertificateOrderSubmitRequest < TencentCloud::Common::AbstractModel
        # @param CertId: 待提交资料的付费证书 ID。
        # @type CertId: String
        # @param DeleteDnsAutoRecord: 是否删除自动DNS验证值：0，不删除； 1，删除； 默认不删除
        # @type DeleteDnsAutoRecord: Integer
        # @param VerifyType: 证书域名验证方式：
        # DNS_AUTO： 自动添加域名DNS验证， 需用户域名解析托管在『[云解析DNS](https://console.cloud.tencent.com/cns)』，且与申请证书归属同一个腾讯云账号
        # DNS：手动添加域名DNS验证，需用户手动去域名解析服务商添加验证值
        # FILE：手动添加域名文件验证。 需要用户手动在域名站点根目录添加指定路径文件进行文件验证， http&https任一通过即可；且域名站点需海外CA机构能访问， 具体访问白名单见控制台页面
        # @type VerifyType: String

        attr_accessor :CertId, :DeleteDnsAutoRecord, :VerifyType

        def initialize(certid=nil, deletednsautorecord=nil, verifytype=nil)
          @CertId = certid
          @DeleteDnsAutoRecord = deletednsautorecord
          @VerifyType = verifytype
        end

        def deserialize(params)
          @CertId = params['CertId']
          @DeleteDnsAutoRecord = params['DeleteDnsAutoRecord']
          @VerifyType = params['VerifyType']
        end
      end

      # CertificateOrderSubmit返回参数结构体
      class CertificateOrderSubmitResponse < TencentCloud::Common::AbstractModel
        # @param OrderId: CA机构侧订单号。
        # @type OrderId: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。
        # @type Status: Integer
        # @param IsAudited: 是否预审核
        # @type IsAudited: Boolean
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OrderId, :Status, :IsAudited, :RequestId

        def initialize(orderid=nil, status=nil, isaudited=nil, requestid=nil)
          @OrderId = orderid
          @Status = status
          @IsAudited = isaudited
          @RequestId = requestid
        end

        def deserialize(params)
          @OrderId = params['OrderId']
          @Status = params['Status']
          @IsAudited = params['IsAudited']
          @RequestId = params['RequestId']
        end
      end

      # 获取证书列表（DescribeCertificates）返回参数键为 Certificates 的内容。
      class Certificates < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 用户 UIN。
        # @type OwnerUin: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: String
        # @param From: 证书来源：
        # trustasia：亚洲诚信，
        # upload：用户上传。
        # wosign：沃通
        # sheca：上海CA
        # @type From: String
        # @param PackageType: 证书套餐类型：
        # null：用户上传证书（没有套餐类型），
        # 2：TrustAsia TLS RSA CA，
        # 3：SecureSite 增强型企业版（EV Pro），
        # 4：SecureSite 增强型（EV），
        # 5：SecureSite 企业型专业版（OV Pro），
        # 6：SecureSite 企业型（OV），
        # 7：SecureSite 企业型（OV）通配符，
        # 8：Geotrust 增强型（EV），
        # 9：Geotrust 企业型（OV），
        # 10：Geotrust 企业型（OV）通配符，
        # 11：TrustAsia 域名型多域名 SSL 证书，
        # 12：TrustAsia 域名型（DV）通配符，
        # 13：TrustAsia 企业型通配符（OV）SSL 证书（D3），
        # 14：TrustAsia 企业型（OV）SSL 证书（D3），
        # 15：TrustAsia 企业型多域名 （OV）SSL 证书（D3），
        # 16：TrustAsia 增强型 （EV）SSL 证书（D3），
        # 17：TrustAsia 增强型多域名（EV）SSL 证书（D3），
        # 18：GlobalSign 企业型（OV）SSL 证书，
        # 19：GlobalSign 企业型通配符 （OV）SSL 证书，
        # 20：GlobalSign 增强型 （EV）SSL 证书，
        # 21：TrustAsia 企业型通配符多域名（OV）SSL 证书（D3），
        # 22：GlobalSign 企业型多域名（OV）SSL 证书，
        # 23：GlobalSign 企业型通配符多域名（OV）SSL 证书，
        # 24：GlobalSign 增强型多域名（EV）SSL 证书，
        # 25：Wotrus 域名型证书，
        # 26：Wotrus 域名型多域名证书，
        # 27：Wotrus 域名型通配符证书，
        # 28：Wotrus 企业型证书，
        # 29：Wotrus 企业型多域名证书，
        # 30：Wotrus 企业型通配符证书，
        # 31：Wotrus 增强型证书，
        # 32：Wotrus 增强型多域名证书，
        # 33：WoTrus-国密域名型证书，
        # 34：WoTrus-国密域名型证书（多域名），
        # 35：WoTrus-国密域名型证书（通配符），
        # 37：WoTrus-国密企业型证书，
        # 38：WoTrus-国密企业型证书（多域名），
        # 39：WoTrus-国密企业型证书（通配符），
        # 40：WoTrus-国密增强型证书，
        # 41：WoTrus-国密增强型证书（多域名），
        # 42：TrustAsia-域名型证书（通配符多域名），
        # 43：DNSPod-企业型(OV)SSL证书
        # 44：DNSPod-企业型(OV)通配符SSL证书
        # 45：DNSPod-企业型(OV)多域名SSL证书
        # 46：DNSPod-增强型(EV)SSL证书
        # 47：DNSPod-增强型(EV)多域名SSL证书
        # 48：DNSPod-域名型(DV)SSL证书
        # 49：DNSPod-域名型(DV)通配符SSL证书
        # 50：DNSPod-域名型(DV)多域名SSL证书
        # 51：DNSPod（国密）-企业型(OV)SSL证书
        # 52：DNSPod（国密）-企业型(OV)通配符SSL证书
        # 53：DNSPod（国密）-企业型(OV)多域名SSL证书
        # 54：DNSPod（国密）-域名型(DV)SSL证书
        # 55：DNSPod（国密）-域名型(DV)通配符SSL证书
        # 56：DNSPod（国密）-域名型(DV)多域名SSL证书
        # 57：SecureSite 企业型专业版多域名(OV Pro)
        # 58：SecureSite 企业型多域名(OV)
        # 59：SecureSite 增强型专业版多域名(EV Pro)
        # 60：SecureSite 增强型多域名(EV)
        # 61：Geotrust 增强型多域名(EV)
        # 75：SecureSite 企业型(OV)
        # 76：SecureSite 企业型(OV)通配符
        # 77：SecureSite 增强型(EV)
        # 78：Geotrust 企业型(OV)
        # 79：Geotrust 企业型(OV)通配符
        # 80：Geotrust 增强型(EV)
        # 81：GlobalSign 企业型（OV）SSL证书
        # 82：GlobalSign 企业型通配符 （OV）SSL证书
        # 83：TrustAsia C1 DV Free
        # 85：GlobalSign 增强型 （EV）SSL证书
        # 88：GlobalSign 企业型通配符多域名 （OV）SSL证书
        # 89：GlobalSign 企业型多域名 （OV）SSL证书
        # 90：GlobalSign 增强型多域名（EV） SSL证书
        # 91：Geotrust 增强型多域名(EV)
        # 92：SecureSite 企业型专业版多域名(OV Pro)
        # 93：SecureSite 企业型多域名(OV)
        # 94：SecureSite 增强型专业版多域名(EV Pro)
        # 95：SecureSite 增强型多域名(EV)
        # 96：SecureSite 增强型专业版(EV Pro)
        # 97：SecureSite 企业型专业版(OV Pro)
        # 98：CFCA 企业型(OV)SSL证书
        # 99：CFCA 企业型多域名(OV)SSL证书
        # 100：CFCA 企业型通配符(OV)SSL证书
        # 101：CFCA 增强型(EV)SSL证书
        # @type PackageType: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # @type CertificateType: String
        # @param ProductZhName: 证书产品名称
        # @type ProductZhName: String
        # @param Domain: 主域名。
        # @type Domain: String
        # @param Alias: 备注名称。
        # @type Alias: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 自动添加DNS记录，5 = 企业证书，待提交资料，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。14 = 证书已退款。 15 = 证书迁移中
        # @type Status: Integer
        # @param CertificateExtra: 证书扩展信息。
        # @type CertificateExtra: :class:`Tencentcloud::Ssl.v20191205.models.CertificateExtra`
        # @param VulnerabilityStatus: 漏洞扫描状态：INACTIVE = 未开启，ACTIVE = 已开启
        # @type VulnerabilityStatus: String
        # @param StatusMsg: 状态信息。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，DNS_PROXY = DNS代理验证。FILE_PROXY = 文件代理验证
        # @type VerifyType: String
        # @param CertBeginTime: 证书生效时间。时区为GMT+8:00
        # @type CertBeginTime: String
        # @param CertEndTime: 证书过期时间。时区为GMT+8:00
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书有效期，单位（月）。
        # @type ValidityPeriod: String
        # @param InsertTime: 创建时间。时区为GMT+8:00
        # @type InsertTime: String
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param SubjectAltName: 证书包含的多个域名（包含主域名）。
        # @type SubjectAltName: Array
        # @param PackageTypeName: 证书类型名称。
        # @type PackageTypeName: String
        # @param StatusName: 状态名称。
        # @type StatusName: String
        # @param IsVip: 是否为 VIP 客户。
        # @type IsVip: Boolean
        # @param IsDv: 是否为 DV 版证书。
        # @type IsDv: Boolean
        # @param IsWildcard: 是否为泛域名证书。
        # @type IsWildcard: Boolean
        # @param IsVulnerability: 是否启用了漏洞扫描功能。
        # @type IsVulnerability: Boolean
        # @param RenewAble: 是否可续费。
        # @type RenewAble: Boolean
        # @param ProjectInfo: 项目信息。
        # @type ProjectInfo: :class:`Tencentcloud::Ssl.v20191205.models.ProjectInfo`
        # @param BoundResource: 关联的云资源，暂不可用
        # @type BoundResource: Array
        # @param Deployable: 是否可部署。
        # @type Deployable: Boolean
        # @param Tags: 标签列表
        # @type Tags: Array
        # @param IsIgnore: 是否已忽略到期通知
        # @type IsIgnore: Boolean
        # @param IsSM: 是否国密证书
        # @type IsSM: Boolean
        # @param EncryptAlgorithm: 证书算法
        # @type EncryptAlgorithm: String
        # @param CAEncryptAlgorithms: 上传CA证书的加密算法
        # @type CAEncryptAlgorithms: Array
        # @param CAEndTimes: 上传CA证书的过期时间
        # @type CAEndTimes: Array
        # @param CACommonNames: 上传CA证书的通用名称
        # @type CACommonNames: Array
        # @param PreAuditInfo: 证书预审核信息
        # @type PreAuditInfo: :class:`Tencentcloud::Ssl.v20191205.models.PreAuditInfo`
        # @param AutoRenewFlag: 是否自动续费
        # @type AutoRenewFlag: Integer
        # @param HostingStatus: 托管状态，0，托管中，5，资源替换中， 10， 托管完成， -1未托管
        # @type HostingStatus: Integer
        # @param HostingCompleteTime: 托管完成时间
        # @type HostingCompleteTime: String
        # @param HostingRenewCertId: 托管新证书ID
        # @type HostingRenewCertId: String
        # @param HasRenewOrder: 存在的续费证书ID
        # @type HasRenewOrder: String
        # @param ReplaceOriCertIsDelete: 重颁发证书原证书是否删除
        # @type ReplaceOriCertIsDelete: Boolean
        # @param IsExpiring: 是否即将过期， 证书即将到期的30天内为即将过期
        # @type IsExpiring: Boolean
        # @param DVAuthDeadline: DV证书添加验证截止时间，时区为GMT+8:00
        # @type DVAuthDeadline: String
        # @param ValidationPassedTime: 域名验证通过时间，时区为GMT+8:00
        # @type ValidationPassedTime: String
        # @param CertSANs: 证书关联的多域名
        # @type CertSANs: Array
        # @param AwaitingValidationMsg: 域名验证驳回信息
        # @type AwaitingValidationMsg: String
        # @param AllowDownload: 是否允许下载
        # @type AllowDownload: Boolean
        # @param IsDNSPODResolve: 证书域名是否全部在DNSPOD托管解析
        # @type IsDNSPODResolve: Boolean
        # @param IsPackage: 是否是权益点购买的证书
        # @type IsPackage: Boolean
        # @param KeyPasswordCustomFlag: 是否存在私钥密码
        # @type KeyPasswordCustomFlag: Boolean
        # @param SupportDownloadType: 支持下载的WEB服务器类型： nginx、apache、iis、tomcat、jks、root、other
        # @type SupportDownloadType: :class:`Tencentcloud::Ssl.v20191205.models.SupportDownloadType`
        # @param CertRevokedTime: 证书吊销完成时间，时区为GMT+8:00
        # @type CertRevokedTime: String
        # @param HostingResourceTypes: 托管资源类型列表
        # @type HostingResourceTypes: Array
        # @param HostingConfig: 托管配置信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostingConfig: :class:`Tencentcloud::Ssl.v20191205.models.HostingConfig`
        # @param IsHostingUploadRenewCert: 是否是上传托管续费证书
        # @type IsHostingUploadRenewCert: Boolean

        attr_accessor :OwnerUin, :ProjectId, :From, :PackageType, :CertificateType, :ProductZhName, :Domain, :Alias, :Status, :CertificateExtra, :VulnerabilityStatus, :StatusMsg, :VerifyType, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :CertificateId, :SubjectAltName, :PackageTypeName, :StatusName, :IsVip, :IsDv, :IsWildcard, :IsVulnerability, :RenewAble, :ProjectInfo, :BoundResource, :Deployable, :Tags, :IsIgnore, :IsSM, :EncryptAlgorithm, :CAEncryptAlgorithms, :CAEndTimes, :CACommonNames, :PreAuditInfo, :AutoRenewFlag, :HostingStatus, :HostingCompleteTime, :HostingRenewCertId, :HasRenewOrder, :ReplaceOriCertIsDelete, :IsExpiring, :DVAuthDeadline, :ValidationPassedTime, :CertSANs, :AwaitingValidationMsg, :AllowDownload, :IsDNSPODResolve, :IsPackage, :KeyPasswordCustomFlag, :SupportDownloadType, :CertRevokedTime, :HostingResourceTypes, :HostingConfig, :IsHostingUploadRenewCert

        def initialize(owneruin=nil, projectid=nil, from=nil, packagetype=nil, certificatetype=nil, productzhname=nil, domain=nil, _alias=nil, status=nil, certificateextra=nil, vulnerabilitystatus=nil, statusmsg=nil, verifytype=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, certificateid=nil, subjectaltname=nil, packagetypename=nil, statusname=nil, isvip=nil, isdv=nil, iswildcard=nil, isvulnerability=nil, renewable=nil, projectinfo=nil, boundresource=nil, deployable=nil, tags=nil, isignore=nil, issm=nil, encryptalgorithm=nil, caencryptalgorithms=nil, caendtimes=nil, cacommonnames=nil, preauditinfo=nil, autorenewflag=nil, hostingstatus=nil, hostingcompletetime=nil, hostingrenewcertid=nil, hasreneworder=nil, replaceoricertisdelete=nil, isexpiring=nil, dvauthdeadline=nil, validationpassedtime=nil, certsans=nil, awaitingvalidationmsg=nil, allowdownload=nil, isdnspodresolve=nil, ispackage=nil, keypasswordcustomflag=nil, supportdownloadtype=nil, certrevokedtime=nil, hostingresourcetypes=nil, hostingconfig=nil, ishostinguploadrenewcert=nil)
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
          @CertRevokedTime = certrevokedtime
          @HostingResourceTypes = hostingresourcetypes
          @HostingConfig = hostingconfig
          @IsHostingUploadRenewCert = ishostinguploadrenewcert
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
          @CertRevokedTime = params['CertRevokedTime']
          @HostingResourceTypes = params['HostingResourceTypes']
          unless params['HostingConfig'].nil?
            @HostingConfig = HostingConfig.new
            @HostingConfig.deserialize(params['HostingConfig'])
          end
          @IsHostingUploadRenewCert = params['IsHostingUploadRenewCert']
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

      # CheckCertificateDomainVerification请求参数结构体
      class CheckCertificateDomainVerificationRequest < TencentCloud::Common::AbstractModel
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

      # CheckCertificateDomainVerification返回参数结构体
      class CheckCertificateDomainVerificationResponse < TencentCloud::Common::AbstractModel
        # @param VerificationResults: 证书域名验证结果列表， 证书若绑定了多个域名， 则返回数组有多份
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerificationResults: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VerificationResults, :RequestId

        def initialize(verificationresults=nil, requestid=nil)
          @VerificationResults = verificationresults
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['VerificationResults'].nil?
            @VerificationResults = []
            params['VerificationResults'].each do |i|
              domainvalidationresult_tmp = DomainValidationResult.new
              domainvalidationresult_tmp.deserialize(i)
              @VerificationResults << domainvalidationresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CheckCertificateExist请求参数结构体
      class CheckCertificateExistRequest < TencentCloud::Common::AbstractModel
        # @param CertificatePublicKey: 证书公钥内容， 包含证书链
        # @type CertificatePublicKey: String

        attr_accessor :CertificatePublicKey

        def initialize(certificatepublickey=nil)
          @CertificatePublicKey = certificatepublickey
        end

        def deserialize(params)
          @CertificatePublicKey = params['CertificatePublicKey']
        end
      end

      # CheckCertificateExist返回参数结构体
      class CheckCertificateExistResponse < TencentCloud::Common::AbstractModel
        # @param RepeatCertId: 重复的证书ID
        # @type RepeatCertId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RepeatCertId, :RequestId

        def initialize(repeatcertid=nil, requestid=nil)
          @RepeatCertId = repeatcertid
          @RequestId = requestid
        end

        def deserialize(params)
          @RepeatCertId = params['RepeatCertId']
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
        # @type Listeners: Array
        # @param Forward: 负载均衡类型，0 传统型负载均衡； 1 应用型负载均衡
        # @type Forward: Integer

        attr_accessor :LoadBalancerId, :LoadBalancerName, :Listeners, :Forward

        def initialize(loadbalancerid=nil, loadbalancername=nil, listeners=nil, forward=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @Listeners = listeners
          @Forward = forward
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
          @Forward = params['Forward']
        end
      end

      # clb实例详情 - 异步关联云资源数据结构
      class ClbInstanceList < TencentCloud::Common::AbstractModel
        # @param Region: 地域
        # @type Region: String
        # @param InstanceList: clb实例详情
        # @type InstanceList: Array
        # @param TotalCount: 该地域下Clb实例总数
        # @type TotalCount: Integer
        # @param Error: 是否查询异常
        # @type Error: String

        attr_accessor :Region, :InstanceList, :TotalCount, :Error

        def initialize(region=nil, instancelist=nil, totalcount=nil, error=nil)
          @Region = region
          @InstanceList = instancelist
          @TotalCount = totalcount
          @Error = error
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
          @Error = params['Error']
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
        # @type Certificate: :class:`Tencentcloud::Ssl.v20191205.models.Certificate`
        # @param Rules: 监听器规则列表
        # @type Rules: Array
        # @param NoMatchDomains: 不匹配域名列表
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
        # @type Certificate: :class:`Tencentcloud::Ssl.v20191205.models.Certificate`
        # @param NoMatchDomains: 不匹配域名列表
        # @type NoMatchDomains: Array
        # @param Url: 规则绑定的路径
        # @type Url: String

        attr_accessor :LocationId, :Domain, :IsMatch, :Certificate, :NoMatchDomains, :Url

        def initialize(locationid=nil, domain=nil, ismatch=nil, certificate=nil, nomatchdomains=nil, url=nil)
          @LocationId = locationid
          @Domain = domain
          @IsMatch = ismatch
          @Certificate = certificate
          @NoMatchDomains = nomatchdomains
          @Url = url
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
          @Url = params['Url']
        end
      end

      # CommitCertificateInformation请求参数结构体
      class CommitCertificateInformationRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待提交资料的付费证书 ID。
        # @type CertificateId: String
        # @param VerifyType: 证书域名验证方式：
        # DNS_AUTO： 自动添加域名DNS验证， 需用户域名解析托管在『[云解析DNS](https://console.cloud.tencent.com/cns)』，且与申请证书归属同一个腾讯云账号
        # DNS：手动添加域名DNS验证，需用户手动去域名解析服务商添加验证值
        # FILE：手动添加域名文件验证。 需要用户手动在域名站点根目录添加指定路径文件进行文件验证， http&https任一通过即可；且域名站点需海外CA机构能访问， 具体访问白名单为：64.78.193.238，216.168.247.9，216.168.249.9，54.189.196.217
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
        # @param IdType: 公司证件类型，取值范围：
        # TYDMZ（统一社会信用代码 ）：仅CFCA类型证书需要使用本字段， 其他类型证书不需要使用本字段
        # OTHERS（其他）
        # @type IdType: String
        # @param IdNumber: 公司证件号码，取值范围：
        # TYDMZ（统一社会信用代码 ）：11532xxxxxxxx24820
        # @type IdNumber: String
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :CompanyName, :CompanyId, :CompanyCountry, :CompanyProvince, :CompanyCity, :CompanyAddress, :CompanyPhone, :IdType, :IdNumber, :Tags

        def initialize(companyname=nil, companyid=nil, companycountry=nil, companyprovince=nil, companycity=nil, companyaddress=nil, companyphone=nil, idtype=nil, idnumber=nil, tags=nil)
          @CompanyName = companyname
          @CompanyId = companyid
          @CompanyCountry = companycountry
          @CompanyProvince = companyprovince
          @CompanyCity = companycity
          @CompanyAddress = companyaddress
          @CompanyPhone = companyphone
          @IdType = idtype
          @IdNumber = idnumber
          @Tags = tags
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
        # @type CertId: String
        # @param Status: ENABLED: 域名上线状态
        # DISABLED:域名下线状态
        # @type Status: String
        # @param Bucket: 存储桶名称
        # @type Bucket: String
        # @param Region: 存储桶地域
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
        # @param ProductPid: 证书产品PID，以下是对每个PID及其对应的证书文字说明：
        # 1. 1022451 - CFCA-增强型(EV)SSL证书
        # 2. 1022449 - CFCA-企业型(OV) SSL证书(通配符)
        # 3. 1022447 - CFCA-企业型(OV)SSL证书
        # 4. 1014028 - DNSPod亚信国密-企业型(OV)通配符证书
        # 5. 1014030 - DNSPod亚信国密-企业型(OV)多域名证书
        # 6. 1014026 - DNSPod亚信国密-企业型(OV)证书
        # 7. 1014022 - DNSPod亚信国密-域名型(DV)通配符证书
        # 8. 1014024 - DNSPod亚信国密-域名型(DV)多域名证书
        # 9. 1014020 - DNSPod亚信国密-域名型(DV)证书
        # 10. 1013949 - DNSPod SSL 域名型SSL证书(C1)
        # 11. 1013953 - DNSPod SSL域名型多域名SSL证书(C1)
        # 12. 1013951 - DNSPod-SSL域名型DV（泛域名）
        # 13. 1013955 - DNSPod 企业型SSL证书(C1)
        # 14. 1013959 - DNSPod 企业型多域名SSL证书(C1)
        # 15. 1013957 - DNSPod 企业型通配符SSL证书(C1)
        # 16. 1013961 - DNSPod 增强型 SSL 证书(C1)
        # 17. 1013963 - DNSPod 增强型多域名SSL证书(C1)
        # 18. 1005919 - TrustAsia-域名型DV（通配符多域名）
        # 19. 1013882 - SecureSite-增强型专业版EVPro（多域名）
        # 20. 1018559 - SecureSite-增强型专业版EVPro（单域名）
        # 21. 1013910 - GlobalSign-增强型EV（多域名）
        # 22. 1013904 - GlobalSign-增强型EV（单域名）
        # 23. 1013898 - TrustAsia-增强型EV（多域名）
        # 24. 1013888 - TrustAsia-增强型EV（单域名）
        # 25. 1013886 - GeoTrust-增强型EV（多域名）
        # 26. 1018529 - GeoTrust-增强型EV（单域名）
        # 27. 1013880 - SecureSite-增强型EV（多域名）
        # 28. 1018557 - SecureSite-增强型EV（单域名）
        # 29. 1018586 - TrustAsia-域名型DV（泛域名）
        # 30. 1018584 - TrustAsia-域名型DV（多域名）
        # 31. 1013878 - SecureSite-企业型专业版OV Pro（多域名）
        # 32. 1018582 - SecureSite-企业型专业版OV Pro（单域名）
        # 33. 1013908 - GlobalSign-企业型OV（通配符多域名）
        # 34. 1013902 - GlobalSign-企业型OV（泛域名）
        # 35. 1013906 - GlobalSign-企业型OV（多域名）
        # 36. 1013900 - GlobalSign-企业型OV（单域名）
        # 37. 1013896 - TrustAsia-企业型OV（通配符多域名）
        # 38. 1013892 - TrustAsia-企业型OV（泛域名）
        # 39. 1013894 - TrustAsia-企业型OV（多域名）
        # 40. 1013890 - TrustAsia-企业型OV（单域名）
        # 41. 1004360 - GeoTrust-企业型OV（泛域名）
        # 42. 1013884 - GeoTrust-企业型OV（单域名）
        # 43. 1013874 - SecureSite-企业型OV（泛域名）
        # 44. 1013876 - SecureSite-企业型OV（多域名）
        # 45. 1018580 - SecureSite-企业型OV（单域名）
        # 46. 1004460 - DNSPod-国密增强型证书（多域名）
        # 47. 1004458 - DNSPod-国密增强型证书
        # 48. 1004370 - DNSPod-国密企业型证书（通配符）
        # 49. 1004368 - DNSPod-国密企业型证书（多域名）
        # 50. 1004366 - DNSPod-国密企业型证书
        # 51. 1004362 - DNSPod-国密域名型证书（通配符）
        # 52. 1004364 - DNSPod-国密域名型证书（多域名）
        # 53. 1004358 - DNSPod-国密域名型证书
        # 54. 1004456 - WoTrus-增强型证书（多域名）
        # 55. 1004454 - WoTrus-增强型证书
        # 56. 1004168 - WoTrus-企业型证书（通配符）
        # 57. 1004166 - WoTrus-企业型证书（多域名）
        # 58. 1004164 - WoTrus-企业型证书
        # 59. 1004159 - WoTrus-域名型证书（通配符）
        # 60. 1004161 - WoTrus-域名型证书（多域名）
        # 61. 1004157 - WoTrus-域名型证书
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
        # @param RenewAlgorithmType: 续费证书CSR的算法类型：RSA,ECC,SM2
        # @type RenewAlgorithmType: String
        # @param RenewAlgorithmParam: 续费证书CSR的算法参数:2048,4096,prime256v1
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
        # @param PriceKey: 询价参数，以下是对每个询价参数及其对应的证书文字说明：
        # 1. sv_ssl_cost_cfca_ca_ev - CFCA-增强型(EV)SSL证书
        # 2. sv_ssl_cost_cfca_ca_ovwildcard - CFCA-企业型(OV) SSL证书(通配符)
        # 3. sv_ssl_cost_cfca_ca_ov - CFCA-企业型(OV)SSL证书
        # 4. sv_ssl_cost_dnspod_ca_sm2_ovwildcard - DNSPod亚信国密-企业型(OV)通配符证书
        # 5. sv_ssl_cost_dnspod_ca_sm2_ovmultidomain - DNSPod亚信国密-企业型(OV)多域名证书
        # 6. sv_ssl_cost_dnspod_ca_sm2_ov - DNSPod亚信国密-企业型(OV)证书
        # 7. sv_ssl_cost_dnspod_ca_sm2_dvwildcard - DNSPod亚信国密-域名型(DV)通配符证书
        # 8. sv_ssl_cost_dnspod_ca_sm2_dvmultidomain - DNSPod亚信国密-域名型(DV)多域名证书
        # 9. sv_ssl_cost_dnspod_ca_sm2_dv - DNSPod亚信国密-域名型(DV)证书
        # 10. sv_ssl_cost_dnspod_ca_dv - DNSPod SSL 域名型SSL证书(C1)
        # 11. sv_ssl_cost_dnspod_ca_dvmultidomain - DNSPod SSL域名型多域名SSL证书(C1)
        # 12. sv_ssl_cost_dnspod_ca_dvwildcard - DNSPod-SSL域名型DV（泛域名）
        # 13. sv_ssl_cost_dnspod_ca_ov - DNSPod 企业型SSL证书(C1)
        # 14. sv_ssl_cost_dnspod_ca_ovmultidomain - DNSPod 企业型多域名SSL证书(C1)
        # 15. sv_ssl_cost_dnspod_ca_ovwildcard - DNSPod 企业型通配符SSL证书(C1)
        # 16. sv_ssl_cost_dnspod_ca_ev - DNSPod 增强型 SSL 证书(C1)
        # 17. sv_ssl_cost_dnspod_ca_evmultidomain - DNSPod 增强型多域名SSL证书(C1)
        # 18. sv_ssl_cost_trustasia_dvwildcardmulti - TrustAsia-域名型DV（通配符多域名）
        # 19. sv_ssl_cost_securesiteevpromul_sh - SecureSite-增强型专业版EVPro（多域名）
        # 20. sv_ssl_cost_symantec_evpro - SecureSite-增强型专业版EVPro（单域名）
        # 21. sv_ssl_cost_globalsign_ev_mul_sh - GlobalSign-增强型EV（多域名）
        # 22. sv_ssl_cost_globalsign_ev - GlobalSign-增强型EV（单域名）
        # 23. sv_ssl_cost_trustasia_evmultidomain - TrustAsia-增强型EV（多域名）
        # 24. sv_ssl_cost_trustasia_ev - TrustAsia-增强型EV（单域名）
        # 25. sv_ssl_cost_geotrust_evmultidomain - GeoTrust-增强型EV（多域名）
        # 26. sv_ssl_cost_geotrust_ev - GeoTrust-增强型EV（单域名）
        # 27. sv_ssl_cost_symantec_evmultidomain - SecureSite-增强型EV（多域名）
        # 28. sv_ssl_cost_symantec_ev - SecureSite-增强型EV（单域名）
        # 29. sv_ssl_cost_trustasia_dvwildcard - TrustAsia-域名型DV（泛域名）
        # 30. sv_ssl_cost_trustasia_dvmultidomain - TrustAsia-域名型DV（多域名）
        # 31. sv_ssl_cost_symantec_ovpromultidomain - SecureSite-企业型专业版OV Pro（多域名）
        # 32. sv_ssl_cost_symantec_ovpro - SecureSite-企业型专业版OV Pro（单域名）
        # 33. sv_ssl_cost_globalsign_ovwildcardmulti - GlobalSign-企业型OV（通配符多域名）
        # 34. sv_ssl_cost_globalsign_ovwildcard - GlobalSign-企业型OV（泛域名）
        # 35. sv_ssl_cost_globalsign_ovmultidomain - GlobalSign-企业型OV（多域名）
        # 36. sv_ssl_cost_globalsign_ov - GlobalSign-企业型OV（单域名）
        # 37. sv_ssl_cost_trustasia_ovwildcardmulti - TrustAsia-企业型OV（通配符多域名）
        # 38. sv_ssl_cost_trustasia_ovwildcard - TrustAsia-企业型OV（泛域名）
        # 39. sv_ssl_cost_trustasia_ovmultidomain - TrustAsia-企业型OV（多域名）
        # 40. sv_ssl_cost_trustasia_ov - TrustAsia-企业型OV（单域名）
        # 41. sv_ssl_cost_geotrust_ovwildcard - GeoTrust-企业型OV（泛域名）
        # 42. sv_ssl_cost_geotrust_ov - GeoTrust-企业型OV（单域名）
        # 43. sv_ssl_cost_symantec_ovwildcard - SecureSite-企业型OV（泛域名）
        # 44. sv_ssl_cost_symantec_ovmultidomain - SecureSite-企业型OV（多域名）
        # 45. sv_ssl_cost_symantec_ov - SecureSite-企业型OV（单域名）
        # 46. sv_ssl_cost_dnspod_evmultidomain - DNSPod-国密增强型证书（多域名）
        # 47. sv_ssl_cost_dnspod_ev - DNSPod-国密增强型证书
        # 48. sv_ssl_cost_dnspod_ovwildcard - DNSPod-国密企业型证书（通配符）
        # 49. sv_ssl_cost_dnspod_ovmultidomain - DNSPod-国密企业型证书（多域名）
        # 50. sv_ssl_cost_dnspod_ov - DNSPod-国密企业型证书
        # 51. sv_ssl_cost_dnspod_dvwildcard - DNSPod-国密域名型证书（通配符）
        # 52. sv_ssl_cost_dnspod_dvmultidomain - DNSPod-国密域名型证书（多域名）
        # 53. sv_ssl_cost_dnspod_dv - DNSPod-国密域名型证书
        # 54. sv_ssl_cost_wotrus_evmultidomain - WoTrus-增强型证书（多域名）
        # 55. sv_ssl_cost_wotrus_ev - WoTrus-增强型证书
        # 56. sv_ssl_cost_wotrus_ovwildcard - WoTrus-企业型证书（通配符）
        # 57. sv_ssl_cost_wotrus_ovmultidomain - WoTrus-企业型证书（多域名）
        # 58. sv_ssl_cost_wotrus_ov - WoTrus-企业型证书
        # 59. sv_ssl_cost_wotrus_dvwildcard - WoTrus-域名型证书（通配符）
        # 60. sv_ssl_cost_wotrus_dvmultidomain - WoTrus-域名型证书（多域名）
        # 61. sv_ssl_cost_wotrus_dv - WoTrus-域名型证书
        # @type PriceKey: String

        attr_accessor :ProductPid, :PackageIds, :DomainCount, :Period, :OldCertificateId, :RenewGenCsrMethod, :RenewCsr, :RenewAlgorithmType, :RenewAlgorithmParam, :ProjectId, :Tags, :RenewKeyPass, :DomainNames, :CertificateCount, :ManagerId, :CompanyId, :VerifyType, :PriceKey

        def initialize(productpid=nil, packageids=nil, domaincount=nil, period=nil, oldcertificateid=nil, renewgencsrmethod=nil, renewcsr=nil, renewalgorithmtype=nil, renewalgorithmparam=nil, projectid=nil, tags=nil, renewkeypass=nil, domainnames=nil, certificatecount=nil, managerid=nil, companyid=nil, verifytype=nil, pricekey=nil)
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
          @PriceKey = pricekey
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
          @PriceKey = params['PriceKey']
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
        # @param ProductId: 证书套餐类型：
        # 3：SecureSite 增强型企业版（EV Pro），
        # 4：SecureSite 增强型（EV），
        # 5：SecureSite 企业型专业版（OV Pro），
        # 6：SecureSite 企业型（OV），
        # 7：SecureSite 企业型（OV）通配符，
        # 8：Geotrust 增强型（EV），
        # 9：Geotrust 企业型（OV），
        # 10：Geotrust 企业型（OV）通配符，
        # 11：TrustAsia 域名型多域名 SSL 证书，
        # 12：TrustAsia 域名型（DV）通配符，
        # 13：TrustAsia 企业型通配符（OV）SSL 证书（D3），
        # 14：TrustAsia 企业型（OV）SSL 证书（D3），
        # 15：TrustAsia 企业型多域名 （OV）SSL 证书（D3），
        # 16：TrustAsia 增强型 （EV）SSL 证书（D3），
        # 17：TrustAsia 增强型多域名（EV）SSL 证书（D3），
        # 18：GlobalSign 企业型（OV）SSL 证书，
        # 19：GlobalSign 企业型通配符 （OV）SSL 证书，
        # 20：GlobalSign 增强型 （EV）SSL 证书，
        # 21：TrustAsia 企业型通配符多域名（OV）SSL 证书（D3），
        # 22：GlobalSign 企业型多域名（OV）SSL 证书，
        # 23：GlobalSign 企业型通配符多域名（OV）SSL 证书，
        # 24：GlobalSign 增强型多域名（EV）SSL 证书，
        # 25：Wotrus 域名型证书，
        # 26：Wotrus 域名型多域名证书，
        # 27：Wotrus 域名型通配符证书，
        # 28：Wotrus 企业型证书，
        # 29：Wotrus 企业型多域名证书，
        # 30：Wotrus 企业型通配符证书，
        # 31：Wotrus 增强型证书，
        # 32：Wotrus 增强型多域名证书，
        # 33：WoTrus-国密域名型证书，
        # 34：WoTrus-国密域名型证书（多域名），
        # 35：WoTrus-国密域名型证书（通配符），
        # 37：WoTrus-国密企业型证书，
        # 38：WoTrus-国密企业型证书（多域名），
        # 39：WoTrus-国密企业型证书（通配符），
        # 40：WoTrus-国密增强型证书，
        # 41：WoTrus-国密增强型证书（多域名），
        # 42：TrustAsia-域名型证书（通配符多域名），
        # 43：DNSPod-企业型(OV)SSL证书
        # 44：DNSPod-企业型(OV)通配符SSL证书
        # 45：DNSPod-企业型(OV)多域名SSL证书
        # 46：DNSPod-增强型(EV)SSL证书
        # 47：DNSPod-增强型(EV)多域名SSL证书
        # 48：DNSPod-域名型(DV)SSL证书
        # 49：DNSPod-域名型(DV)通配符SSL证书
        # 50：DNSPod-域名型(DV)多域名SSL证书
        # 51：DNSPod（国密）-企业型(OV)SSL证书
        # 52：DNSPod（国密）-企业型(OV)通配符SSL证书
        # 53：DNSPod（国密）-企业型(OV)多域名SSL证书
        # 54：DNSPod（国密）-域名型(DV)SSL证书
        # 55：DNSPod（国密）-域名型(DV)通配符SSL证书
        # 56：DNSPod（国密）-域名型(DV)多域名SSL证书
        # 57：SecureSite 企业型专业版多域名(OV Pro)
        # 58：SecureSite 企业型多域名(OV)
        # 59：SecureSite 增强型专业版多域名(EV Pro)
        # 60：SecureSite 增强型多域名(EV)
        # 61：Geotrust 增强型多域名(EV)
        # 75：SecureSite 企业型(OV)
        # 76：SecureSite 企业型(OV)通配符
        # 77：SecureSite 增强型(EV)
        # 78：Geotrust 企业型(OV)
        # 79：Geotrust 企业型(OV)通配符
        # 80：Geotrust 增强型(EV)
        # 81：GlobalSign 企业型（OV）SSL证书
        # 82：GlobalSign 企业型通配符 （OV）SSL证书
        # 85：GlobalSign 增强型 （EV）SSL证书
        # 88：GlobalSign 企业型通配符多域名 （OV）SSL证书
        # 89：GlobalSign 企业型多域名 （OV）SSL证书
        # 90：GlobalSign 增强型多域名（EV） SSL证书
        # 91：Geotrust 增强型多域名(EV)
        # 92：SecureSite 企业型专业版多域名(OV Pro)
        # 93：SecureSite 企业型多域名(OV)
        # 94：SecureSite 增强型专业版多域名(EV Pro)
        # 95：SecureSite 增强型多域名(EV)
        # 96：SecureSite 增强型专业版(EV Pro)
        # 97：SecureSite 企业型专业版(OV Pro)
        # 98：CFCA 企业型(OV)SSL证书
        # 99：CFCA 企业型多域名(OV)SSL证书，不支持多年期
        # 100：CFCA 企业型通配符(OV)SSL证书，不支持多年期
        # 101：CFCA 增强型(EV)SSL证书，不支持多年期
        # 102:  Rapid-域名型(DV)SSL证书
        # 103: Rapid-域名型(DV)SSL证书(通配符)
        # 104: TrustAsia-域名型(单域名)
        # 105: SSL单域名证书(一年期)
        # @type ProductId: Integer
        # @param DomainNum: 证书包含的域名数量。 多域名或者多泛域名证书类型必须大于1
        # @type DomainNum: Integer
        # @param TimeSpan: 证书年限。 支持多年期的证书才可以大于1年
        # @type TimeSpan: Integer
        # @param AutoVoucher: 是否自动使用代金券：1是，0否；默认为1
        # @type AutoVoucher: Integer
        # @param Tags: 标签， 生成证书打标签
        # @type Tags: Array

        attr_accessor :ProductId, :DomainNum, :TimeSpan, :AutoVoucher, :Tags

        def initialize(productid=nil, domainnum=nil, timespan=nil, autovoucher=nil, tags=nil)
          @ProductId = productid
          @DomainNum = domainnum
          @TimeSpan = timespan
          @AutoVoucher = autovoucher
          @Tags = tags
        end

        def deserialize(params)
          @ProductId = params['ProductId']
          @DomainNum = params['DomainNum']
          @TimeSpan = params['TimeSpan']
          @AutoVoucher = params['AutoVoucher']
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
        # @type InstanceList: Array
        # @param Error: 是否查询异常
        # @type Error: String

        attr_accessor :TotalCount, :InstanceList, :Error

        def initialize(totalcount=nil, instancelist=nil, error=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
          @Error = error
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
          @Error = params['Error']
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

      # DeleteCertificates请求参数结构体
      class DeleteCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param CertificateIds: 要删除的证书ID。单次最多100个
        # @type CertificateIds: Array
        # @param IsSync: 删除时是否检查证书关联了云资源。默认不检查。如需要检查关联云资源 (需授权服务角色SSL_QCSLinkedRoleInReplaceLoadCertificate)，完成授权后且该参数传true，删除将变成异步任务，接口会返回异步任务ID。需搭配 DescribeDeleteCertificatesTaskResult接口使用，查询删除任务是否成功。
        # @type IsSync: Boolean

        attr_accessor :CertificateIds, :IsSync

        def initialize(certificateids=nil, issync=nil)
          @CertificateIds = certificateids
          @IsSync = issync
        end

        def deserialize(params)
          @CertificateIds = params['CertificateIds']
          @IsSync = params['IsSync']
        end
      end

      # DeleteCertificates返回参数结构体
      class DeleteCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param Success: 成功的ID
        # @type Success: Array
        # @param Fail: 失败的ID和原因
        # @type Fail: Array
        # @param CertTaskIds: 证书ID和异步任务的ID
        # @type CertTaskIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Success, :Fail, :CertTaskIds, :RequestId

        def initialize(success=nil, fail=nil, certtaskids=nil, requestid=nil)
          @Success = success
          @Fail = fail
          @CertTaskIds = certtaskids
          @RequestId = requestid
        end

        def deserialize(params)
          @Success = params['Success']
          unless params['Fail'].nil?
            @Fail = []
            params['Fail'].each do |i|
              batchdeletefail_tmp = BatchDeleteFail.new
              batchdeletefail_tmp.deserialize(i)
              @Fail << batchdeletefail_tmp
            end
          end
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

      # 批量删除证书异步任务结果
      class DeleteTaskResult < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务ID
        # @type TaskId: String
        # @param CertId: 证书ID
        # @type CertId: String
        # @param Status: 异步查询结果： 0表示任务进行中、 1表示任务成功、 2表示任务失败、3表示未授权服务角色导致任务失败、4表示有未解绑的云资源导致任务失败、5表示查询关联云资源超时导致任务失败
        # @type Status: Integer
        # @param Error: 错误信息
        # @type Error: String
        # @param CacheTime: 当前结果缓存时间
        # @type CacheTime: String
        # @param Domains: 包含的域名
        # @type Domains: Array

        attr_accessor :TaskId, :CertId, :Status, :Error, :CacheTime, :Domains

        def initialize(taskid=nil, certid=nil, status=nil, error=nil, cachetime=nil, domains=nil)
          @TaskId = taskid
          @CertId = certid
          @Status = status
          @Error = error
          @CacheTime = cachetime
          @Domains = domains
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @CertId = params['CertId']
          @Status = params['Status']
          @Error = params['Error']
          @CacheTime = params['CacheTime']
          @Domains = params['Domains']
        end
      end

      # DeployCertificateInstance请求参数结构体
      class DeployCertificateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param InstanceIdList: 证书部署的实例列表，不同云资源类型如下
        # - clb：若监听器开启了SNI，则需要指定到域名LoadBalancerId|ListenerId|Domain，例：["lb-bid2fs4g|lbl-a8af11gs|tencent.com"]，若监听器未开启SNI或者为四层监听器，则指定到监听器，例：["lb-bid2fs4g|lbl-1c6rp5eo"]
        # - cdn：Domain|计费开关，例：["cdn2.tencent.com|off", "cdn.tencent.com|on"]
        # - ddos：InsId|Domain|VirtualPort，例：["bgpip-000001ms|tencent.com|443"]
        # - live：Domain，例：["live1.tencent.com", "live2.tencent.com"]
        # - vod：Domain， 例：["vod1.tencent.com", "vod2.tencent.com"]
        # - waf：Domain， 例：["waf1.tencent.com", "waf2.tencent.com"]
        # - apigateway：ServiceId|Domain， 例：["service-8sk7cqmd|apigw1.tencent.com", "service-8sk7cqmd|apigw2.ninghhuang.online"]
        # - teo：Domain， 例：["edgeone1.tencent.com", "edgeone2.tencent.com"]
        # - tke：ClusterId|NameSpace|SecretName， 例：["cls-42sa0ae0|default|test-tencent"]
        # - cos：Region|Bucket|Domain， 例：["ap-hongkong|ssl-server-1251810746|tencent.com"]
        # - lighthouse：Region|InstanceId|Domain， 例：["ap-shanghai|lhins-nh7lql34|tencent.com"]
        # - tse：GatewayId|CertificateId， 例：["gateway-s1da9151|fa61bc05-cc54-4eea-c932-24de52577372"]
        # - tcb：Type|Region|EnvId|Domain， 例：["AccessService|ap-shanghai|ceshi-4s5h0ymg11c839c7|tencent.com"]
        # @type InstanceIdList: Array
        # @param ResourceType: 证书部署云资源支持的云资源类型， 不传则默认部署clb：
        # - clb
        # - cdn
        # - ddos
        # - live
        # - vod
        # - waf
        # - apigateway
        # - teo
        # - tke
        # - cos
        # - lighthouse
        # - tse
        # - tcb
        # <dx-alert infotype="explain" title="">当云资源类型传入clb、waf、apigateway、cos、lighthouse、tke、tse、tcb 时，公共参数Region必传。</dx-alert>
        # @type ResourceType: String
        # @param Status: 部署云资源状态：
        # 云直播：
        # -1：域名未关联证书。
        # 1： 域名https已开启。
        # 0： 域名https已关闭。
        # @type Status: Integer
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，默认缓存半小时
        # @type IsCache: Integer

        attr_accessor :CertificateId, :InstanceIdList, :ResourceType, :Status, :IsCache

        def initialize(certificateid=nil, instanceidlist=nil, resourcetype=nil, status=nil, iscache=nil)
          @CertificateId = certificateid
          @InstanceIdList = instanceidlist
          @ResourceType = resourcetype
          @Status = status
          @IsCache = iscache
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @InstanceIdList = params['InstanceIdList']
          @ResourceType = params['ResourceType']
          @Status = params['Status']
          @IsCache = params['IsCache']
        end
      end

      # DeployCertificateInstance返回参数结构体
      class DeployCertificateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 云资源部署任务ID
        # @type DeployRecordId: Integer
        # @param DeployStatus: 部署任务创建状态；1表示创建成功； 0表示当前存在部署中的任务，未创建新的部署任务；返回值DeployRecordId为部署中的任务ID
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
        # @param DeployRecordId: 待重试部署记录ID，通过DeployCertificateInstance获得
        # @type DeployRecordId: Integer
        # @param DeployRecordDetailId: 待重试部署记录详情ID，通过DescribeHostDeployRecordDetail获得
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
        # @param DeployRecordId: 待重试部署记录ID, 就是通过DeployCertificateInstance返回的DeployRecordId
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

      # 托管记录
      class DeployRecord < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param SuccessTotalCount: 成功总数
        # @type SuccessTotalCount: Integer
        # @param FailedTotalCount: 失败总数
        # @type FailedTotalCount: Integer
        # @param RunningTotalCount: 部署中总数
        # @type RunningTotalCount: Integer
        # @param Type: 部署记录类型 0 为部署， 1 为回滚
        # @type Type: Integer
        # @param RecordDetailList: 部署记录详情列表
        # @type RecordDetailList: Array
        # @param Status: 托管资源部署状态：0 等待部署， 1 部署成功， 2 部署失败 3 部署中， 4 回滚成功， 5 回滚失败
        # @type Status: Integer
        # @param CreateTime: 托管资源创建时间
        # @type CreateTime: String
        # @param PendingTotalCount: 待部署总数
        # @type PendingTotalCount: Integer

        attr_accessor :TotalCount, :SuccessTotalCount, :FailedTotalCount, :RunningTotalCount, :Type, :RecordDetailList, :Status, :CreateTime, :PendingTotalCount

        def initialize(totalcount=nil, successtotalcount=nil, failedtotalcount=nil, runningtotalcount=nil, type=nil, recorddetaillist=nil, status=nil, createtime=nil, pendingtotalcount=nil)
          @TotalCount = totalcount
          @SuccessTotalCount = successtotalcount
          @FailedTotalCount = failedtotalcount
          @RunningTotalCount = runningtotalcount
          @Type = type
          @RecordDetailList = recorddetaillist
          @Status = status
          @CreateTime = createtime
          @PendingTotalCount = pendingtotalcount
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SuccessTotalCount = params['SuccessTotalCount']
          @FailedTotalCount = params['FailedTotalCount']
          @RunningTotalCount = params['RunningTotalCount']
          @Type = params['Type']
          unless params['RecordDetailList'].nil?
            @RecordDetailList = []
            params['RecordDetailList'].each do |i|
              deployrecordlist_tmp = DeployRecordList.new
              deployrecordlist_tmp.deserialize(i)
              @RecordDetailList << deployrecordlist_tmp
            end
          end
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @PendingTotalCount = params['PendingTotalCount']
        end
      end

      # 部署记录详情
      class DeployRecordDetail < TencentCloud::Common::AbstractModel
        # @param Id: 部署记录详情ID
        # @type Id: Integer
        # @param CertId: 部署证书ID
        # @type CertId: String
        # @param OldCertId: 原绑定证书ID
        # @type OldCertId: String
        # @param InstanceId: 部署实例ID
        # @type InstanceId: String
        # @param InstanceName: 部署实例名称
        # @type InstanceName: String
        # @param ListenerId: 部署监听器ID
        # @type ListenerId: String
        # @param Domains: 部署域名列表
        # @type Domains: Array
        # @param Protocol: 部署监听器协议
        # @type Protocol: String
        # @param Status: 部署状态
        # @type Status: Integer
        # @param ErrorMsg: 部署错误信息
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
        # @type Bucket: String
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param SecretName: secret名称
        # @type SecretName: String
        # @param Port: 端口
        # @type Port: Integer
        # @param EnvId: TCB环境ID
        # @type EnvId: String
        # @param TCBType: 部署的TCB类型
        # @type TCBType: String
        # @param Region: 部署的TCB地域
        # @type Region: String
        # @param Url: 部署CLB监听器的Url
        # @type Url: Array
        # @param Algorithm: 当前部署证书加密算法
        # @type Algorithm: String
        # @param OldAlgorithm: 原证书加密算法
        # @type OldAlgorithm: String
        # @param InstanceStatus: 实例状态，不同云产品状态不一样
        # @type InstanceStatus: String

        attr_accessor :Id, :CertId, :OldCertId, :InstanceId, :InstanceName, :ListenerId, :Domains, :Protocol, :Status, :ErrorMsg, :CreateTime, :UpdateTime, :ListenerName, :SniSwitch, :Bucket, :Namespace, :SecretName, :Port, :EnvId, :TCBType, :Region, :Url, :Algorithm, :OldAlgorithm, :InstanceStatus

        def initialize(id=nil, certid=nil, oldcertid=nil, instanceid=nil, instancename=nil, listenerid=nil, domains=nil, protocol=nil, status=nil, errormsg=nil, createtime=nil, updatetime=nil, listenername=nil, sniswitch=nil, bucket=nil, namespace=nil, secretname=nil, port=nil, envid=nil, tcbtype=nil, region=nil, url=nil, algorithm=nil, oldalgorithm=nil, instancestatus=nil)
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
          @Url = url
          @Algorithm = algorithm
          @OldAlgorithm = oldalgorithm
          @InstanceStatus = instancestatus
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
          @Url = params['Url']
          @Algorithm = params['Algorithm']
          @OldAlgorithm = params['OldAlgorithm']
          @InstanceStatus = params['InstanceStatus']
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
        # @param Status: 部署状态:0 未开始， 1 成功， 2 失败
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

      # 部署记录详情
      class DeployRecordItem < TencentCloud::Common::AbstractModel
        # @param Id: 部署记录详情ID
        # @type Id: Integer
        # @param OldCertId: 原绑定证书ID
        # @type OldCertId: String
        # @param InstanceId: 部署实例ID
        # @type InstanceId: String
        # @param InstanceName: 部署实例名称
        # @type InstanceName: String
        # @param ListenerId: 部署监听器ID
        # @type ListenerId: String
        # @param Domains: 部署域名列表
        # @type Domains: Array
        # @param Protocol: 部署监听器协议
        # @type Protocol: String
        # @param Status: 部署状态
        # @type Status: Integer
        # @param ErrorMsg: 部署错误信息
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
        # @type Bucket: String
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param SecretName: secret名称
        # @type SecretName: String
        # @param Port: 端口
        # @type Port: Integer
        # @param Region: 部署的TCB地域
        # @type Region: String
        # @param Forward: 负载均衡类型，0 传统型负载均衡； 1 应用型负载均衡
        # @type Forward: Integer
        # @param SSLMode: 证书认证模式：UNIDIRECTIONAL单向认证，MUTUAL双向认证
        # @type SSLMode: String
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String

        attr_accessor :Id, :OldCertId, :InstanceId, :InstanceName, :ListenerId, :Domains, :Protocol, :Status, :ErrorMsg, :CreateTime, :UpdateTime, :ListenerName, :SniSwitch, :Bucket, :Namespace, :SecretName, :Port, :Region, :Forward, :SSLMode, :ResourceType

        def initialize(id=nil, oldcertid=nil, instanceid=nil, instancename=nil, listenerid=nil, domains=nil, protocol=nil, status=nil, errormsg=nil, createtime=nil, updatetime=nil, listenername=nil, sniswitch=nil, bucket=nil, namespace=nil, secretname=nil, port=nil, region=nil, forward=nil, sslmode=nil, resourcetype=nil)
          @Id = id
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
          @Region = region
          @Forward = forward
          @SSLMode = sslmode
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @Id = params['Id']
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
          @Region = params['Region']
          @Forward = params['Forward']
          @SSLMode = params['SSLMode']
          @ResourceType = params['ResourceType']
        end
      end

      # 托管记录详情信息
      class DeployRecordList < TencentCloud::Common::AbstractModel
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param List: 部署资源详情列表
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              deployrecorditem_tmp = DeployRecordItem.new
              deployrecorditem_tmp.deserialize(i)
              @List << deployrecorditem_tmp
            end
          end
          @TotalCount = params['TotalCount']
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
        # @type ResourceIds: Array
        # @param Resources: 关联资源ID或关联域名。
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
        # @param TaskId: 任务ID，根据CreateCertificateBindResourceSyncTask得到的任务ID查询绑定云资源结果
        # @type TaskId: String
        # @param Limit: 每页展示数量， 默认10，最大值100; 分页总数为云资源地域下实例总数， 即第一页会拉群每个云资源的地域下面Limit数量实例
        # @type Limit: String
        # @param Offset: 当前偏移量，默认为0
        # @type Offset: String
        # @param ResourceTypes: 查询资源类型的结果详情， 不传则查询所有，取值支持：
        # - clb
        # - cdn
        # - ddos
        # - live
        # - vod
        # - waf
        # - apigateway
        # - teo
        # - tke
        # - cos
        # - tse
        # - tcb
        # @type ResourceTypes: Array
        # @param Regions: 查询地域列表的数据，clb、tke、waf、apigateway、tcb、cos、tse支持地域查询， 其他资源类型不支持
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
        # @type CLB: Array
        # @param CDN: 关联cdn资源详情
        # @type CDN: Array
        # @param WAF: 关联waf资源详情
        # @type WAF: Array
        # @param DDOS: 关联ddos资源详情
        # @type DDOS: Array
        # @param LIVE: 关联live资源详情
        # @type LIVE: Array
        # @param VOD: 关联vod资源详情
        # @type VOD: Array
        # @param TKE: 关联tke资源详情
        # @type TKE: Array
        # @param APIGATEWAY: 关联apigateway资源详情
        # @type APIGATEWAY: Array
        # @param TCB: 关联tcb资源详情
        # @type TCB: Array
        # @param TEO: 关联teo资源详情
        # @type TEO: Array
        # @param Status: 关联云资源异步查询结果： 0表示查询中， 1表示查询成功。 2表示查询异常； 若状态为1，则查看BindResourceResult结果；若状态为2，则查看Error原因
        # @type Status: Integer
        # @param CacheTime: 当前结果缓存时间
        # @type CacheTime: String
        # @param TSE: 关联tse资源详情
        # @type TSE: Array
        # @param COS: 关联的COS资源详情
        # @type COS: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CLB, :CDN, :WAF, :DDOS, :LIVE, :VOD, :TKE, :APIGATEWAY, :TCB, :TEO, :Status, :CacheTime, :TSE, :COS, :RequestId

        def initialize(clb=nil, cdn=nil, waf=nil, ddos=nil, live=nil, vod=nil, tke=nil, apigateway=nil, tcb=nil, teo=nil, status=nil, cachetime=nil, tse=nil, cos=nil, requestid=nil)
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
          @COS = cos
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
          unless params['COS'].nil?
            @COS = []
            params['COS'].each do |i|
              cosinstancelist_tmp = COSInstanceList.new
              cosinstancelist_tmp.deserialize(i)
              @COS << cosinstancelist_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificateBindResourceTaskResult请求参数结构体
      class DescribeCertificateBindResourceTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: 任务ID，根据CreateCertificateBindResourceSyncTask得到的任务ID查询绑定云资源结果， 最大支持100个
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
        # @param OwnerUin: 证书所属用户主账号 UIN。
        # @type OwnerUin: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: String
        # @param From: 证书来源：
        # trustasia：亚洲诚信，
        # upload：用户上传。
        # wosign：沃通
        # sheca：上海CA
        # @type From: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # @type CertificateType: String
        # @param PackageType: 证书套餐类型：
        # null：用户上传证书（没有套餐类型），
        # 2：TrustAsia TLS RSA CA，
        # 3：SecureSite 增强型企业版（EV Pro），
        # 4：SecureSite 增强型（EV），
        # 5：SecureSite 企业型专业版（OV Pro），
        # 6：SecureSite 企业型（OV），
        # 7：SecureSite 企业型（OV）通配符，
        # 8：Geotrust 增强型（EV），
        # 9：Geotrust 企业型（OV），
        # 10：Geotrust 企业型（OV）通配符，
        # 11：TrustAsia 域名型多域名 SSL 证书，
        # 12：TrustAsia 域名型（DV）通配符，
        # 13：TrustAsia 企业型通配符（OV）SSL 证书（D3），
        # 14：TrustAsia 企业型（OV）SSL 证书（D3），
        # 15：TrustAsia 企业型多域名 （OV）SSL 证书（D3），
        # 16：TrustAsia 增强型 （EV）SSL 证书（D3），
        # 17：TrustAsia 增强型多域名（EV）SSL 证书（D3），
        # 18：GlobalSign 企业型（OV）SSL 证书，
        # 19：GlobalSign 企业型通配符 （OV）SSL 证书，
        # 20：GlobalSign 增强型 （EV）SSL 证书，
        # 21：TrustAsia 企业型通配符多域名（OV）SSL 证书（D3），
        # 22：GlobalSign 企业型多域名（OV）SSL 证书，
        # 23：GlobalSign 企业型通配符多域名（OV）SSL 证书，
        # 24：GlobalSign 增强型多域名（EV）SSL 证书，
        # 25：Wotrus 域名型证书，
        # 26：Wotrus 域名型多域名证书，
        # 27：Wotrus 域名型通配符证书，
        # 28：Wotrus 企业型证书，
        # 29：Wotrus 企业型多域名证书，
        # 30：Wotrus 企业型通配符证书，
        # 31：Wotrus 增强型证书，
        # 32：Wotrus 增强型多域名证书，
        # 33：WoTrus-国密域名型证书，
        # 34：WoTrus-国密域名型证书（多域名），
        # 35：WoTrus-国密域名型证书（通配符），
        # 37：WoTrus-国密企业型证书，
        # 38：WoTrus-国密企业型证书（多域名），
        # 39：WoTrus-国密企业型证书（通配符），
        # 40：WoTrus-国密增强型证书，
        # 41：WoTrus-国密增强型证书（多域名），
        # 42：TrustAsia-域名型证书（通配符多域名），
        # 43：DNSPod-企业型(OV)SSL证书
        # 44：DNSPod-企业型(OV)通配符SSL证书
        # 45：DNSPod-企业型(OV)多域名SSL证书
        # 46：DNSPod-增强型(EV)SSL证书
        # 47：DNSPod-增强型(EV)多域名SSL证书
        # 48：DNSPod-域名型(DV)SSL证书
        # 49：DNSPod-域名型(DV)通配符SSL证书
        # 50：DNSPod-域名型(DV)多域名SSL证书
        # 51：DNSPod（国密）-企业型(OV)SSL证书
        # 52：DNSPod（国密）-企业型(OV)通配符SSL证书
        # 53：DNSPod（国密）-企业型(OV)多域名SSL证书
        # 54：DNSPod（国密）-域名型(DV)SSL证书
        # 55：DNSPod（国密）-域名型(DV)通配符SSL证书
        # 56：DNSPod（国密）-域名型(DV)多域名SSL证书
        # 57：SecureSite 企业型专业版多域名(OV Pro)
        # 58：SecureSite 企业型多域名(OV)
        # 59：SecureSite 增强型专业版多域名(EV Pro)
        # 60：SecureSite 增强型多域名(EV)
        # 61：Geotrust 增强型多域名(EV)
        # 75：SecureSite 企业型(OV)
        # 76：SecureSite 企业型(OV)通配符
        # 77：SecureSite 增强型(EV)
        # 78：Geotrust 企业型(OV)
        # 79：Geotrust 企业型(OV)通配符
        # 80：Geotrust 增强型(EV)
        # 81：GlobalSign 企业型（OV）SSL证书
        # 82：GlobalSign 企业型通配符 （OV）SSL证书
        # 83：TrustAsia C1 DV Free
        # 85：GlobalSign 增强型 （EV）SSL证书
        # 88：GlobalSign 企业型通配符多域名 （OV）SSL证书
        # 89：GlobalSign 企业型多域名 （OV）SSL证书
        # 90：GlobalSign 增强型多域名（EV） SSL证书
        # 91：Geotrust 增强型多域名(EV)
        # 92：SecureSite 企业型专业版多域名(OV Pro)
        # 93：SecureSite 企业型多域名(OV)
        # 94：SecureSite 增强型专业版多域名(EV Pro)
        # 95：SecureSite 增强型多域名(EV)
        # 96：SecureSite 增强型专业版(EV Pro)
        # 97：SecureSite 企业型专业版(OV Pro)
        # 98：CFCA 企业型(OV)SSL证书
        # 99：CFCA 企业型多域名(OV)SSL证书
        # 100：CFCA 企业型通配符(OV)SSL证书
        # 101：CFCA 增强型(EV)SSL证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param ProductZhName: 证书产品名称
        # @type ProductZhName: String
        # @param Domain: 证书绑定通用名称域名。
        # @type Domain: String
        # @param Alias: 备注名称。
        # @type Alias: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 自动添加DNS记录，5 = 企业证书，待提交资料，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。14 = 证书已退款。 15 = 证书迁移中
        # @type Status: Integer
        # @param StatusMsg: 状态信息。 取值范围：
        # //通用状态信息
        # 1、PRE-REVIEWING：预审核中
        # 2、LEGAL-REVIEWING：法务审核中
        # 3、CA-REVIEWING：CA审核中
        # 4、PENDING-DCV：域名验证中
        # 5、WAIT-ISSUE：等待签发（域名验证已通过）
        # //证书审核失败状态信息
        # 1、订单审核失败
        # 2、CA审核失败，域名未通过安全审查
        # 3、域名验证超时，订单自动关闭，请您重新进行证书申请
        # 4、证书资料未通过证书CA机构审核，审核人员会致电您证书预留的联系方式，请您留意来电。后续可通过“修改资料”重新提交资料
        # 待持续完善
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，EMAIL = 邮件验证。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String
        # @param VulnerabilityStatus: 漏洞扫描状态。
        # @type VulnerabilityStatus: String
        # @param CertBeginTime: 证书生效时间。时区为GMT+8:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书失效时间。时区为GMT+8:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书有效期：单位（月）。
        # @type ValidityPeriod: String
        # @param InsertTime: 证书申请时间。时区为GMT+8:00
        # @type InsertTime: String
        # @param OrderId: CA订单 ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OrderId: String
        # @param CertificateExtra: 证书扩展信息。
        # @type CertificateExtra: :class:`Tencentcloud::Ssl.v20191205.models.CertificateExtra`
        # @param CertificatePrivateKey: 私钥证书， 国密证书则为签名证书中的私钥证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificatePrivateKey: String
        # @param CertificatePublicKey: 公钥证书， 国密则为签名证书中的公钥证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificatePublicKey: String
        # @param DvAuthDetail: 证书域名验证信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDetail: :class:`Tencentcloud::Ssl.v20191205.models.DvAuthDetail`
        # @param VulnerabilityReport: 漏洞扫描评估报告。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityReport: String
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param TypeName: 证书类型名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeName: String
        # @param StatusName: 状态描述。
        # @type StatusName: String
        # @param SubjectAltName: 证书包含的多个域名（不包含主域名，主域名使用Domain字段）
        # @type SubjectAltName: Array
        # @param IsVip: 是否为付费证书。
        # @type IsVip: Boolean
        # @param IsWildcard: 是否为泛域名证书。
        # @type IsWildcard: Boolean
        # @param IsDv: 是否为 DV 版证书。
        # @type IsDv: Boolean
        # @param IsVulnerability: 是否启用了漏洞扫描功能。
        # @type IsVulnerability: Boolean
        # @param SubmittedData: 付费证书提交的资料信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubmittedData: :class:`Tencentcloud::Ssl.v20191205.models.SubmittedData`
        # @param RenewAble: 是否可续费。
        # @type RenewAble: Boolean
        # @param Deployable: 是否可部署。
        # @type Deployable: Boolean
        # @param Tags: 关联标签列表。
        # @type Tags: Array
        # @param RootCert: 根证书。
        # @type RootCert: :class:`Tencentcloud::Ssl.v20191205.models.RootCertificates`
        # @param EncryptCert: 国密加密证书公钥， 仅国密证书有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptCert: String
        # @param EncryptPrivateKey: 国密加密私钥证书， 仅国密证书有值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptPrivateKey: String
        # @param CertFingerprint: 签名证书 SHA1指纹
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertFingerprint: String
        # @param EncryptCertFingerprint: 加密证书 SHA1指纹 （国密证书特有）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EncryptCertFingerprint: String
        # @param EncryptAlgorithm: 证书加密算法（国密证书特有）
        # @type EncryptAlgorithm: String
        # @param DvRevokeAuthDetail: DV证书吊销验证值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvRevokeAuthDetail: Array
        # @param CertChainInfo: 证书链信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertChainInfo: Array
        # @param DomainType: 证书域名类型， 1（单域名）；2（多域名）；3（泛域名）；4（多泛域名）
        # @type DomainType: Integer
        # @param CertType: 证书类型，DV（域名型）；OV（企业型）；EV（增强型）
        # @type CertType: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnerUin, :ProjectId, :From, :CertificateType, :PackageType, :ProductZhName, :Domain, :Alias, :Status, :StatusMsg, :VerifyType, :VulnerabilityStatus, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :OrderId, :CertificateExtra, :CertificatePrivateKey, :CertificatePublicKey, :DvAuthDetail, :VulnerabilityReport, :CertificateId, :TypeName, :StatusName, :SubjectAltName, :IsVip, :IsWildcard, :IsDv, :IsVulnerability, :SubmittedData, :RenewAble, :Deployable, :Tags, :RootCert, :EncryptCert, :EncryptPrivateKey, :CertFingerprint, :EncryptCertFingerprint, :EncryptAlgorithm, :DvRevokeAuthDetail, :CertChainInfo, :DomainType, :CertType, :RequestId

        def initialize(owneruin=nil, projectid=nil, from=nil, certificatetype=nil, packagetype=nil, productzhname=nil, domain=nil, _alias=nil, status=nil, statusmsg=nil, verifytype=nil, vulnerabilitystatus=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, orderid=nil, certificateextra=nil, certificateprivatekey=nil, certificatepublickey=nil, dvauthdetail=nil, vulnerabilityreport=nil, certificateid=nil, typename=nil, statusname=nil, subjectaltname=nil, isvip=nil, iswildcard=nil, isdv=nil, isvulnerability=nil, submitteddata=nil, renewable=nil, deployable=nil, tags=nil, rootcert=nil, encryptcert=nil, encryptprivatekey=nil, certfingerprint=nil, encryptcertfingerprint=nil, encryptalgorithm=nil, dvrevokeauthdetail=nil, certchaininfo=nil, domaintype=nil, certtype=nil, requestid=nil)
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
          @CertChainInfo = certchaininfo
          @DomainType = domaintype
          @CertType = certtype
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
          unless params['CertChainInfo'].nil?
            @CertChainInfo = []
            params['CertChainInfo'].each do |i|
              certbasicinfo_tmp = CertBasicInfo.new
              certbasicinfo_tmp.deserialize(i)
              @CertChainInfo << certbasicinfo_tmp
            end
          end
          @DomainType = params['DomainType']
          @CertType = params['CertType']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificateOperateLogs请求参数结构体
      class DescribeCertificateOperateLogsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 请求日志数量，默认为20, 最大值为1000，如超过1000按照1000处理。
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
        # @param From: 证书来源：
        # trustasia：亚洲诚信，
        # upload：用户上传。
        # wosign：沃通
        # sheca：上海CA
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateType: String
        # @param PackageType: 证书套餐类型：
        # null：用户上传证书（没有套餐类型），
        # 2：TrustAsia TLS RSA CA，
        # 3：SecureSite 增强型企业版（EV Pro），
        # 4：SecureSite 增强型（EV），
        # 5：SecureSite 企业型专业版（OV Pro），
        # 6：SecureSite 企业型（OV），
        # 7：SecureSite 企业型（OV）通配符，
        # 8：Geotrust 增强型（EV），
        # 9：Geotrust 企业型（OV），
        # 10：Geotrust 企业型（OV）通配符，
        # 11：TrustAsia 域名型多域名 SSL 证书，
        # 12：TrustAsia 域名型（DV）通配符，
        # 13：TrustAsia 企业型通配符（OV）SSL 证书（D3），
        # 14：TrustAsia 企业型（OV）SSL 证书（D3），
        # 15：TrustAsia 企业型多域名 （OV）SSL 证书（D3），
        # 16：TrustAsia 增强型 （EV）SSL 证书（D3），
        # 17：TrustAsia 增强型多域名（EV）SSL 证书（D3），
        # 18：GlobalSign 企业型（OV）SSL 证书，
        # 19：GlobalSign 企业型通配符 （OV）SSL 证书，
        # 20：GlobalSign 增强型 （EV）SSL 证书，
        # 21：TrustAsia 企业型通配符多域名（OV）SSL 证书（D3），
        # 22：GlobalSign 企业型多域名（OV）SSL 证书，
        # 23：GlobalSign 企业型通配符多域名（OV）SSL 证书，
        # 24：GlobalSign 增强型多域名（EV）SSL 证书，
        # 25：Wotrus 域名型证书，
        # 26：Wotrus 域名型多域名证书，
        # 27：Wotrus 域名型通配符证书，
        # 28：Wotrus 企业型证书，
        # 29：Wotrus 企业型多域名证书，
        # 30：Wotrus 企业型通配符证书，
        # 31：Wotrus 增强型证书，
        # 32：Wotrus 增强型多域名证书，
        # 33：WoTrus-国密域名型证书，
        # 34：WoTrus-国密域名型证书（多域名），
        # 35：WoTrus-国密域名型证书（通配符），
        # 37：WoTrus-国密企业型证书，
        # 38：WoTrus-国密企业型证书（多域名），
        # 39：WoTrus-国密企业型证书（通配符），
        # 40：WoTrus-国密增强型证书，
        # 41：WoTrus-国密增强型证书（多域名），
        # 42：TrustAsia-域名型证书（通配符多域名），
        # 43：DNSPod-企业型(OV)SSL证书
        # 44：DNSPod-企业型(OV)通配符SSL证书
        # 45：DNSPod-企业型(OV)多域名SSL证书
        # 46：DNSPod-增强型(EV)SSL证书
        # 47：DNSPod-增强型(EV)多域名SSL证书
        # 48：DNSPod-域名型(DV)SSL证书
        # 49：DNSPod-域名型(DV)通配符SSL证书
        # 50：DNSPod-域名型(DV)多域名SSL证书
        # 51：DNSPod（国密）-企业型(OV)SSL证书
        # 52：DNSPod（国密）-企业型(OV)通配符SSL证书
        # 53：DNSPod（国密）-企业型(OV)多域名SSL证书
        # 54：DNSPod（国密）-域名型(DV)SSL证书
        # 55：DNSPod（国密）-域名型(DV)通配符SSL证书
        # 56：DNSPod（国密）-域名型(DV)多域名SSL证书
        # 57：SecureSite 企业型专业版多域名(OV Pro)
        # 58：SecureSite 企业型多域名(OV)
        # 59：SecureSite 增强型专业版多域名(EV Pro)
        # 60：SecureSite 增强型多域名(EV)
        # 61：Geotrust 增强型多域名(EV)
        # 75：SecureSite 企业型(OV)
        # 76：SecureSite 企业型(OV)通配符
        # 77：SecureSite 增强型(EV)
        # 78：Geotrust 企业型(OV)
        # 79：Geotrust 企业型(OV)通配符
        # 80：Geotrust 增强型(EV)
        # 81：GlobalSign 企业型（OV）SSL证书
        # 82：GlobalSign 企业型通配符 （OV）SSL证书
        # 83：TrustAsia C1 DV Free
        # 85：GlobalSign 增强型 （EV）SSL证书
        # 88：GlobalSign 企业型通配符多域名 （OV）SSL证书
        # 89：GlobalSign 企业型多域名 （OV）SSL证书
        # 90：GlobalSign 增强型多域名（EV） SSL证书
        # 91：Geotrust 增强型多域名(EV)
        # 92：SecureSite 企业型专业版多域名(OV Pro)
        # 93：SecureSite 企业型多域名(OV)
        # 94：SecureSite 增强型专业版多域名(EV Pro)
        # 95：SecureSite 增强型多域名(EV)
        # 96：SecureSite 增强型专业版(EV Pro)
        # 97：SecureSite 企业型专业版(OV Pro)
        # 98：CFCA 企业型(OV)SSL证书
        # 99：CFCA 企业型多域名(OV)SSL证书
        # 100：CFCA 企业型通配符(OV)SSL证书
        # 101：CFCA 增强型(EV)SSL证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PackageType: String
        # @param ProductZhName: 证书产品名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductZhName: String
        # @param Domain: 域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Alias: 备注名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Status: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 自动添加DNS记录，5 = 企业证书，待提交资料，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。14 = 证书已退款。 15 = 证书迁移中
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param StatusMsg: 状态信息。 取值范围：
        # //通用状态信息
        # 1、PRE-REVIEWING：预审核中
        # 2、LEGAL-REVIEWING：法务审核中
        # 3、CA-REVIEWING：CA审核中
        # 4、PENDING-DCV：域名验证中
        # 5、WAIT-ISSUE：等待签发（域名验证已通过）
        # //证书审核失败状态信息
        # 1、订单审核失败
        # 2、CA审核失败，域名未通过安全审查
        # 3、域名验证超时，订单自动关闭，请您重新进行证书申请
        # 4、证书资料未通过证书CA机构审核，审核人员会致电您证书预留的联系方式，请您留意来电。后续可通过“修改资料”重新提交资料
        # 待持续完善
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，DNS_PROXY = DNS代理验证。FILE_PROXY = 文件代理验证
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String
        # @param VulnerabilityStatus: 漏洞扫描状态。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityStatus: String
        # @param CertBeginTime: 证书生效时间。时区为GMT+8:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书失效时间。时区为GMT+8:00
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书有效期：单位(月)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: String
        # @param InsertTime: 申请时间。时区为GMT+8:00
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
        # @param CAEncryptAlgorithms: CA证书的所有加密方式。仅证书类型CertificateType为CA有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CAEncryptAlgorithms: Array
        # @param CACommonNames: CA证书的所有通用名称。仅证书类型CertificateType为CA有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CACommonNames: Array
        # @param CAEndTimes: CA证书所有的到期时间。仅证书类型CertificateType为CA有效，时区为GMT+8:00
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
        # @param Offset: 分页偏移量，从0开始。 默认为0
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。最大值1000，如超过1000按1000处理
        # @type Limit: Integer
        # @param SearchKey: 搜索关键词，模糊匹配证书 ID、备注名称、证书域名
        # @type SearchKey: String
        # @param CertificateType: 证书类型：CA = 客户端证书，SVR = 服务器证书。
        # @type CertificateType: String
        # @param ProjectId: 项目 ID。
        # @type ProjectId: Integer
        # @param ExpirationSort: 默认按照证书申请时间降序； 若传排序则按到期时间排序：DESC = 证书到期时间降序， ASC = 证书到期时间升序。
        # @type ExpirationSort: String
        # @param CertificateStatus: 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。14 = 已退款。 15 = 证书迁移中
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
        # @param IsPendingIssue: 是否筛选等待签发的证书，传1是筛选，0和null不筛选
        # @type IsPendingIssue: Integer
        # @param CertIds: 筛选指定证书ID的证书，只支持有权限的证书ID
        # @type CertIds: Array

        attr_accessor :Offset, :Limit, :SearchKey, :CertificateType, :ProjectId, :ExpirationSort, :CertificateStatus, :Deployable, :Upload, :Renew, :FilterSource, :IsSM, :FilterExpiring, :Hostable, :Tags, :IsPendingIssue, :CertIds

        def initialize(offset=nil, limit=nil, searchkey=nil, certificatetype=nil, projectid=nil, expirationsort=nil, certificatestatus=nil, deployable=nil, upload=nil, renew=nil, filtersource=nil, issm=nil, filterexpiring=nil, hostable=nil, tags=nil, ispendingissue=nil, certids=nil)
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
          @CertIds = certids
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
          @CertIds = params['CertIds']
        end
      end

      # DescribeCertificates返回参数结构体
      class DescribeCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量。
        # @type TotalCount: Integer
        # @param Certificates: 列表。
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
        # @param Offset: 分页偏移量，默认值为0.
        # @type Offset: Integer
        # @param Limit: 分页每页限制数，默认值为0，最大值1000.
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

      # DescribeDeleteCertificatesTaskResult请求参数结构体
      class DescribeDeleteCertificatesTaskResultRequest < TencentCloud::Common::AbstractModel
        # @param TaskIds: DeleteCertificates接口返回的任务ID， 最大支持100个
        # @type TaskIds: Array

        attr_accessor :TaskIds

        def initialize(taskids=nil)
          @TaskIds = taskids
        end

        def deserialize(params)
          @TaskIds = params['TaskIds']
        end
      end

      # DescribeDeleteCertificatesTaskResult返回参数结构体
      class DescribeDeleteCertificatesTaskResultResponse < TencentCloud::Common::AbstractModel
        # @param DeleteTaskResult: 批量删除证书异步任务结果
        # @type DeleteTaskResult: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeleteTaskResult, :RequestId

        def initialize(deletetaskresult=nil, requestid=nil)
          @DeleteTaskResult = deletetaskresult
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeleteTaskResult'].nil?
            @DeleteTaskResult = []
            params['DeleteTaskResult'].each do |i|
              deletetaskresult_tmp = DeleteTaskResult.new
              deletetaskresult_tmp.deserialize(i)
              @DeleteTaskResult << deletetaskresult_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeployedResources请求参数结构体
      class DescribeDeployedResourcesRequest < TencentCloud::Common::AbstractModel
        # @param CertificateIds: 证书ID
        # @type CertificateIds: Array
        # @param ResourceType: 资源类型:clb,cdn,live,vod,waf,antiddos,teo
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

      # DescribeDownloadCertificateUrl请求参数结构体
      class DescribeDownloadCertificateUrlRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID
        # @type CertificateId: String
        # @param ServiceType: 必填选项，下载的服务类型: nginx tomcat apache iis jks other root
        # @type ServiceType: String

        attr_accessor :CertificateId, :ServiceType

        def initialize(certificateid=nil, servicetype=nil)
          @CertificateId = certificateid
          @ServiceType = servicetype
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @ServiceType = params['ServiceType']
        end
      end

      # DescribeDownloadCertificateUrl返回参数结构体
      class DescribeDownloadCertificateUrlResponse < TencentCloud::Common::AbstractModel
        # @param DownloadCertificateUrl: 下载链接
        # @type DownloadCertificateUrl: String
        # @param DownloadFilename: 下载文件的名称
        # @type DownloadFilename: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DownloadCertificateUrl, :DownloadFilename, :RequestId

        def initialize(downloadcertificateurl=nil, downloadfilename=nil, requestid=nil)
          @DownloadCertificateUrl = downloadcertificateurl
          @DownloadFilename = downloadfilename
          @RequestId = requestid
        end

        def deserialize(params)
          @DownloadCertificateUrl = params['DownloadCertificateUrl']
          @DownloadFilename = params['DownloadFilename']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostApiGatewayInstanceList请求参数结构体
      class DescribeHostApiGatewayInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param ResourceType: 部署资源类型apigateway
        # @type ResourceType: String
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String
        # @param Limit: 每页数量，默认10，最大值为200。
        # @type Limit: Integer
        # @param Offset: 分页偏移量，默认值为0。
        # @type Offset: String

        attr_accessor :CertificateId, :IsCache, :Filters, :ResourceType, :OldCertificateId, :Limit, :Offset
        extend Gem::Deprecate
        deprecate :ResourceType, :none, 2025, 8
        deprecate :ResourceType=, :none, 2025, 8

        def initialize(certificateid=nil, iscache=nil, filters=nil, resourcetype=nil, oldcertificateid=nil, limit=nil, offset=nil)
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @ResourceType = resourcetype
          @OldCertificateId = oldcertificateid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ResourceType = params['ResourceType']
          @OldCertificateId = params['OldCertificateId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeHostApiGatewayInstanceList返回参数结构体
      class DescribeHostApiGatewayInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: apiGateway实例列表,如取不到值返回空数组
        # @type InstanceList: Array
        # @param TotalCount: 总数，如取不到值返回0
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
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param ResourceType: 部署资源类型cdn
        # @type ResourceType: String
        # @param OldCertificateId: 原证书ID
        # @type OldCertificateId: String
        # @param Offset: 分页偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10，最大值为200。
        # @type Limit: Integer
        # @param AsyncCache: 是否异步,0表示否，1表示是，默认为0
        # @type AsyncCache: Integer

        attr_accessor :CertificateId, :IsCache, :Filters, :ResourceType, :OldCertificateId, :Offset, :Limit, :AsyncCache
        extend Gem::Deprecate
        deprecate :ResourceType, :none, 2025, 8
        deprecate :ResourceType=, :none, 2025, 8

        def initialize(certificateid=nil, iscache=nil, filters=nil, resourcetype=nil, oldcertificateid=nil, offset=nil, limit=nil, asynccache=nil)
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @ResourceType = resourcetype
          @OldCertificateId = oldcertificateid
          @Offset = offset
          @Limit = limit
          @AsyncCache = asynccache
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ResourceType = params['ResourceType']
          @OldCertificateId = params['OldCertificateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AsyncCache = params['AsyncCache']
        end
      end

      # DescribeHostCdnInstanceList返回参数结构体
      class DescribeHostCdnInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: CDN实例列表，如取不到值返回空数组
        # @type InstanceList: Array
        # @param TotalCount: CDN域名总数，如取不到值返回0
        # @type TotalCount: Integer
        # @param AsyncTotalNum: 异步刷新总数，如取不到值返回0
        # @type AsyncTotalNum: Integer
        # @param AsyncOffset: 异步刷新当前执行数，如取不到值返回0
        # @type AsyncOffset: Integer
        # @param AsyncCacheTime: 当前缓存读取时间
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
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param AsyncCache: 是否异步缓存,0表示否,1表示是
        # @type AsyncCache: Integer
        # @param OldCertificateId: 原证书ID
        # @type OldCertificateId: String

        attr_accessor :Offset, :Limit, :CertificateId, :IsCache, :Filters, :AsyncCache, :OldCertificateId

        def initialize(offset=nil, limit=nil, certificateid=nil, iscache=nil, filters=nil, asynccache=nil, oldcertificateid=nil)
          @Offset = offset
          @Limit = limit
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @AsyncCache = asynccache
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CertificateId = params['CertificateId']
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
        # @param TotalCount: 总数，取不到值返回0
        # @type TotalCount: Integer
        # @param InstanceList: CLB实例监听器列表，取不到值返回空数组
        # @type InstanceList: Array
        # @param AsyncTotalNum: 异步刷新总数，取不到值返回0
        # @type AsyncTotalNum: Integer
        # @param AsyncOffset: 异步刷新当前执行数，取不到值返回0
        # @type AsyncOffset: Integer
        # @param AsyncCacheTime: 当前缓存读取时间，去不到值返回空
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
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表
        # @type Filters: Array
        # @param ResourceType: 部署资源类型 cos
        # @type ResourceType: String
        # @param OldCertificateId: 原证书ID
        # @type OldCertificateId: String
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param AsyncCache: 是否异步，0表示否，1表示是
        # @type AsyncCache: Integer

        attr_accessor :CertificateId, :IsCache, :Filters, :ResourceType, :OldCertificateId, :Offset, :Limit, :AsyncCache

        def initialize(certificateid=nil, iscache=nil, filters=nil, resourcetype=nil, oldcertificateid=nil, offset=nil, limit=nil, asynccache=nil)
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @ResourceType = resourcetype
          @OldCertificateId = oldcertificateid
          @Offset = offset
          @Limit = limit
          @AsyncCache = asynccache
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ResourceType = params['ResourceType']
          @OldCertificateId = params['OldCertificateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @AsyncCache = params['AsyncCache']
        end
      end

      # DescribeHostCosInstanceList返回参数结构体
      class DescribeHostCosInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: COS实例列表
        # @type InstanceList: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param AsyncTotalNum: 异步刷新总数
        # @type AsyncTotalNum: Integer
        # @param AsyncOffset: 异步刷新当前执行数
        # @type AsyncOffset: Integer
        # @param AsyncCacheTime: 当前缓存读取时间
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
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param ResourceType: 部署资源类型ddos
        # @type ResourceType: String
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer

        attr_accessor :CertificateId, :IsCache, :Filters, :ResourceType, :OldCertificateId, :Offset, :Limit

        def initialize(certificateid=nil, iscache=nil, filters=nil, resourcetype=nil, oldcertificateid=nil, offset=nil, limit=nil)
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @ResourceType = resourcetype
          @OldCertificateId = oldcertificateid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ResourceType = params['ResourceType']
          @OldCertificateId = params['OldCertificateId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeHostDdosInstanceList返回参数结构体
      class DescribeHostDdosInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: DDOS实例列表,取不到值返回空数组
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
              ddosinstancedetail_tmp = DdosInstanceDetail.new
              ddosinstancedetail_tmp.deserialize(i)
              @InstanceList << ddosinstancedetail_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostDeployRecordDetail请求参数结构体
      class DescribeHostDeployRecordDetailRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 部署记录ID，通过调用DeployCertificateInstance接口返回的记录ID， 或者通过DeployCertificateRecordRollback回滚接口返回的记录ID
        # @type DeployRecordId: String
        # @param Offset: 分页偏移量，从0开始。默认为0
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。最大值为200
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
        # @param TotalCount: 部署记录总数
        # @type TotalCount: Integer
        # @param DeployRecordDetailList: 证书部署记录列表
        # @type DeployRecordDetailList: Array
        # @param SuccessTotalCount: 成功总数
        # @type SuccessTotalCount: Integer
        # @param FailedTotalCount: 失败总数
        # @type FailedTotalCount: Integer
        # @param RunningTotalCount: 部署中总数
        # @type RunningTotalCount: Integer
        # @param PendingTotalCount: 待部署总数
        # @type PendingTotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DeployRecordDetailList, :SuccessTotalCount, :FailedTotalCount, :RunningTotalCount, :PendingTotalCount, :RequestId

        def initialize(totalcount=nil, deployrecorddetaillist=nil, successtotalcount=nil, failedtotalcount=nil, runningtotalcount=nil, pendingtotalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @DeployRecordDetailList = deployrecorddetaillist
          @SuccessTotalCount = successtotalcount
          @FailedTotalCount = failedtotalcount
          @RunningTotalCount = runningtotalcount
          @PendingTotalCount = pendingtotalcount
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
          @PendingTotalCount = params['PendingTotalCount']
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
        # @param ResourceType: 支持的资源类型如下,clb,cdn,ddos,waf,apigateway,teo,tke,cos,lighthouse,vod,tcb,tse,live
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
        # @type TotalCount: Integer
        # @param DeployRecordList: 证书部署记录列表
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
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param ResourceType: 部署资源类型 lighthouse
        # @type ResourceType: String

        attr_accessor :CertificateId, :IsCache, :Filters, :ResourceType
        extend Gem::Deprecate
        deprecate :ResourceType, :none, 2025, 8
        deprecate :ResourceType=, :none, 2025, 8

        def initialize(certificateid=nil, iscache=nil, filters=nil, resourcetype=nil)
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ResourceType = params['ResourceType']
        end
      end

      # DescribeHostLighthouseInstanceList返回参数结构体
      class DescribeHostLighthouseInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: Lighthouse实例列表,如取不到返回空数组
        # @type InstanceList: Array
        # @param TotalCount: 总数，如取不到返回0
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
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param ResourceType: 部署资源类型
        # @type ResourceType: String
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :IsCache, :Filters, :ResourceType, :OldCertificateId
        extend Gem::Deprecate
        deprecate :ResourceType, :none, 2025, 8
        deprecate :ResourceType=, :none, 2025, 8

        def initialize(certificateid=nil, iscache=nil, filters=nil, resourcetype=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @ResourceType = resourcetype
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ResourceType = params['ResourceType']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostLiveInstanceList返回参数结构体
      class DescribeHostLiveInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: live实例列表,如取不到值返回空数组
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
        # @param Offset: 分页偏移量，默认值为0.
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10，最大值为200。
        # @type Limit: Integer
        # @param AsyncCache: 是否异步，1表示是，0表示否，默认为0
        # @type AsyncCache: Integer

        attr_accessor :CertificateId, :ResourceType, :IsCache, :Filters, :OldCertificateId, :Offset, :Limit, :AsyncCache
        extend Gem::Deprecate
        deprecate :ResourceType, :none, 2025, 8
        deprecate :ResourceType=, :none, 2025, 8

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
        # @param InstanceList: teo实例列表，如取不到值返回空数组
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
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param CertificateId: 待部署的证书ID
        # @type CertificateId: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param AsyncCache: 是否异步缓存，0表示否，1表示是，默认为0
        # @type AsyncCache: Integer
        # @param OldCertificateId: 原证书ID
        # @type OldCertificateId: String

        attr_accessor :Offset, :Limit, :CertificateId, :IsCache, :Filters, :AsyncCache, :OldCertificateId

        def initialize(offset=nil, limit=nil, certificateid=nil, iscache=nil, filters=nil, asynccache=nil, oldcertificateid=nil)
          @Offset = offset
          @Limit = limit
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @AsyncCache = asynccache
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @CertificateId = params['CertificateId']
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
        # @param TotalCount: 总数，取不到值返回0
        # @type TotalCount: Integer
        # @param InstanceList: tke实例列表，取不到值返回空数组
        # @type InstanceList: Array
        # @param AsyncTotalNum: 异步刷新总数，取不到值返回0
        # @type AsyncTotalNum: Integer
        # @param AsyncOffset: 异步刷新当前执行数，取不到值返回0
        # @type AsyncOffset: Integer
        # @param AsyncCacheTime: 当前缓存读取时间
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
        # @param DeployRecordId: 部署记录ID，通过调用UpdateCertificateInstance接口返回的记录ID， 或者通过UpdateCertificateRecordRollback回滚接口返回的记录ID
        # @type DeployRecordId: String
        # @param Limit: 每页数量，默认10。最大值为200
        # @type Limit: String
        # @param Offset: 分页偏移量，从0开始。默认为0
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
        # @param TotalCount: 总数,如果取不到返回0
        # @type TotalCount: Integer
        # @param RecordDetailList: 证书部署记录列表，如果取不到值返回空数组
        # @type RecordDetailList: Array
        # @param SuccessTotalCount: 成功总数,如果取不到返回0
        # @type SuccessTotalCount: Integer
        # @param FailedTotalCount: 失败总数,如果取不到返回0
        # @type FailedTotalCount: Integer
        # @param RunningTotalCount: 部署中总数,如果取不到返回0
        # @type RunningTotalCount: Integer
        # @param PendingTotalCount: 待部署总数
        # @type PendingTotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RecordDetailList, :SuccessTotalCount, :FailedTotalCount, :RunningTotalCount, :PendingTotalCount, :RequestId

        def initialize(totalcount=nil, recorddetaillist=nil, successtotalcount=nil, failedtotalcount=nil, runningtotalcount=nil, pendingtotalcount=nil, requestid=nil)
          @TotalCount = totalcount
          @RecordDetailList = recorddetaillist
          @SuccessTotalCount = successtotalcount
          @FailedTotalCount = failedtotalcount
          @RunningTotalCount = runningtotalcount
          @PendingTotalCount = pendingtotalcount
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
          @PendingTotalCount = params['PendingTotalCount']
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
        # @type TotalCount: Integer
        # @param DeployRecordList: 证书部署记录列表
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

      # DescribeHostUploadUpdateRecordDetail请求参数结构体
      class DescribeHostUploadUpdateRecordDetailRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 托管记录ID
        # @type DeployRecordId: Integer
        # @param Limit: 每页数量，默认为10，最大为200， 超过200则为200
        # @type Limit: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer

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

      # DescribeHostUploadUpdateRecordDetail返回参数结构体
      class DescribeHostUploadUpdateRecordDetailResponse < TencentCloud::Common::AbstractModel
        # @param DeployRecordDetail: 托管记录详情列表
        # @type DeployRecordDetail: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeployRecordDetail, :RequestId

        def initialize(deployrecorddetail=nil, requestid=nil)
          @DeployRecordDetail = deployrecorddetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DeployRecordDetail'].nil?
            @DeployRecordDetail = []
            params['DeployRecordDetail'].each do |i|
              deployrecord_tmp = DeployRecord.new
              deployrecord_tmp.deserialize(i)
              @DeployRecordDetail << deployrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostUploadUpdateRecord请求参数结构体
      class DescribeHostUploadUpdateRecordRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页偏移量，从0开始。
        # @type Offset: Integer
        # @param Limit: 每页数量，默认10。
        # @type Limit: Integer
        # @param OldCertificateId: 原证书ID
        # @type OldCertificateId: String

        attr_accessor :Offset, :Limit, :OldCertificateId

        def initialize(offset=nil, limit=nil, oldcertificateid=nil)
          @Offset = offset
          @Limit = limit
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostUploadUpdateRecord返回参数结构体
      class DescribeHostUploadUpdateRecordResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param DeployRecordList: 证书部署记录列表
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
              uploadupdaterecordinfo_tmp = UploadUpdateRecordInfo.new
              uploadupdaterecordinfo_tmp.deserialize(i)
              @DeployRecordList << uploadupdaterecordinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostVodInstanceList请求参数结构体
      class DescribeHostVodInstanceListRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 待部署的证书ID,必填选项
        # @type CertificateId: String
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param ResourceType: 部署资源类型 vod
        # @type ResourceType: String
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :IsCache, :Filters, :ResourceType, :OldCertificateId
        extend Gem::Deprecate
        deprecate :ResourceType, :none, 2025, 8
        deprecate :ResourceType=, :none, 2025, 8

        def initialize(certificateid=nil, iscache=nil, filters=nil, resourcetype=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @ResourceType = resourcetype
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ResourceType = params['ResourceType']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostVodInstanceList返回参数结构体
      class DescribeHostVodInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: Vod实例列表，如果取不到值返回空数组
        # @type InstanceList: Array
        # @param TotalCount: 总数,如果取不到值返回0
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
        # @param IsCache: 是否查询缓存，1：是； 0：否， 默认为查询缓存，缓存半小时
        # @type IsCache: Integer
        # @param Filters: 过滤参数列表； FilterKey：domainMatch（查询域名是否匹配的实例列表） FilterValue：1，表示查询匹配； 0，表示查询不匹配； 默认查询匹配
        # @type Filters: Array
        # @param ResourceType: 部署资源类型，如waf
        # @type ResourceType: String
        # @param OldCertificateId: 已部署的证书ID
        # @type OldCertificateId: String

        attr_accessor :CertificateId, :IsCache, :Filters, :ResourceType, :OldCertificateId
        extend Gem::Deprecate
        deprecate :ResourceType, :none, 2025, 8
        deprecate :ResourceType=, :none, 2025, 8

        def initialize(certificateid=nil, iscache=nil, filters=nil, resourcetype=nil, oldcertificateid=nil)
          @CertificateId = certificateid
          @IsCache = iscache
          @Filters = filters
          @ResourceType = resourcetype
          @OldCertificateId = oldcertificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @IsCache = params['IsCache']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @ResourceType = params['ResourceType']
          @OldCertificateId = params['OldCertificateId']
        end
      end

      # DescribeHostWafInstanceList返回参数结构体
      class DescribeHostWafInstanceListResponse < TencentCloud::Common::AbstractModel
        # @param InstanceList: WAF实例列表，如果没有取到值返回空数组
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
              wafinstancedetail_tmp = WafInstanceDetail.new
              wafinstancedetail_tmp.deserialize(i)
              @InstanceList << wafinstancedetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeManagerDetail请求参数结构体
      class DescribeManagerDetailRequest < TencentCloud::Common::AbstractModel
        # @param ManagerId: 管理人ID,可以从describeManagers接口获得
        # @type ManagerId: Integer
        # @param Limit: 分页每页数量
        # @type Limit: Integer
        # @param Offset: 分页偏移量
        # @type Offset: Integer

        attr_accessor :ManagerId, :Limit, :Offset
        extend Gem::Deprecate
        deprecate :Limit, :none, 2025, 8
        deprecate :Limit=, :none, 2025, 8
        deprecate :Offset, :none, 2025, 8
        deprecate :Offset=, :none, 2025, 8

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
        # @param ManagerIdType: 管理员证件类型，SFZ代表身份证，HZ代表护照
        # @type ManagerIdType: String
        # @param ManagerIdNumber: 管理员证件号码
        # @type ManagerIdNumber: String
        # @param ContactIdType: 联系人证件类型，SFZ代表身份证，HZ代表护照
        # @type ContactIdType: String
        # @param ContactIdNumber: 联系人证件号码
        # @type ContactIdNumber: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :ManagerFirstName, :ManagerMail, :ContactFirstName, :ManagerLastName, :ContactPosition, :ManagerPosition, :VerifyTime, :CreateTime, :ExpireTime, :ContactLastName, :ManagerPhone, :ContactPhone, :ContactMail, :ManagerDepartment, :CompanyInfo, :CompanyId, :ManagerId, :StatusInfo, :ManagerIdType, :ManagerIdNumber, :ContactIdType, :ContactIdNumber, :RequestId
        extend Gem::Deprecate
        deprecate :Status, :none, 2025, 8
        deprecate :Status=, :none, 2025, 8

        def initialize(status=nil, managerfirstname=nil, managermail=nil, contactfirstname=nil, managerlastname=nil, contactposition=nil, managerposition=nil, verifytime=nil, createtime=nil, expiretime=nil, contactlastname=nil, managerphone=nil, contactphone=nil, contactmail=nil, managerdepartment=nil, companyinfo=nil, companyid=nil, managerid=nil, statusinfo=nil, manageridtype=nil, manageridnumber=nil, contactidtype=nil, contactidnumber=nil, requestid=nil)
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
          @ManagerIdType = manageridtype
          @ManagerIdNumber = manageridnumber
          @ContactIdType = contactidtype
          @ContactIdNumber = contactidnumber
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
          @ManagerIdType = params['ManagerIdType']
          @ManagerIdNumber = params['ManagerIdNumber']
          @ContactIdType = params['ContactIdType']
          @ContactIdNumber = params['ContactIdNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeManagers请求参数结构体
      class DescribeManagersRequest < TencentCloud::Common::AbstractModel
        # @param CompanyId: 公司ID,可以从DescribeCompanies接口获取
        # @type CompanyId: Integer
        # @param Offset: 分页偏移量，如果不传默认值为0
        # @type Offset: Integer
        # @param Limit: 分页每页数量，如果不传默认值为10，最大值为1000
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
        # @param SearchKey: 根据这样的格式:管理人姓|管理人名|邮箱|部门 ,进行精准匹配
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
        # @param Status: 按状态筛选。状态值包括usable(可用)，used(已用)，expired(已过期)，refund(已退款)
        # @type Status: String
        # @param ExpireTime: 按过期时间升序或降序排列，可选值为asc(升序)和desc(降序)
        # @type ExpireTime: String
        # @param PackageId: 按权益包ID搜索。
        # @type PackageId: String
        # @param Type: 按权益包类型搜索。类型包括：ssl_100(证书批量权益100点)，ssl_500(证书批量权益500点），ssl_2000(证书批量权益2000点）
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

      # 证书域名验证结果
      class DomainValidationResult < TencentCloud::Common::AbstractModel
        # @param Domain: 证书绑定的域名。
        # @type Domain: String
        # @param VerifyType: 域名验证类型。 取值为：DNS、FILE、DNS_AUTO、DNS_PROXY、FILE_PROXY
        # @type VerifyType: String
        # @param LocalCheck: 腾讯云检测结果，取值：1（验证通过）； -1（被限频或者 txt record not found）；-2（txt record not match）；-3（ns record not found）；-4（file not found）；-5（file not match）；-6（cname record not found）；-7（cname record not match）；-8（ns record not found）-9（file not found）；-10（file not match）
        # @type LocalCheck: Integer
        # @param CaCheck: CA检查结果。取值： -1（未检测通过）；2（检测通过）
        # @type CaCheck: Integer
        # @param LocalCheckFailReason: 检查失败原因。状态LocalCheck的具体描述
        # @type LocalCheckFailReason: String
        # @param CheckValue: 检查到的值。
        # @type CheckValue: Array
        # @param Frequently: 是否被限频拦截， 取值：false（未被限频）；true（被限频）
        # @type Frequently: Boolean
        # @param Issued: 证书是否已经签发。取值： false（未签发）；true（已签发）
        # @type Issued: Boolean

        attr_accessor :Domain, :VerifyType, :LocalCheck, :CaCheck, :LocalCheckFailReason, :CheckValue, :Frequently, :Issued

        def initialize(domain=nil, verifytype=nil, localcheck=nil, cacheck=nil, localcheckfailreason=nil, checkvalue=nil, frequently=nil, issued=nil)
          @Domain = domain
          @VerifyType = verifytype
          @LocalCheck = localcheck
          @CaCheck = cacheck
          @LocalCheckFailReason = localcheckfailreason
          @CheckValue = checkvalue
          @Frequently = frequently
          @Issued = issued
        end

        def deserialize(params)
          @Domain = params['Domain']
          @VerifyType = params['VerifyType']
          @LocalCheck = params['LocalCheck']
          @CaCheck = params['CaCheck']
          @LocalCheckFailReason = params['LocalCheckFailReason']
          @CheckValue = params['CheckValue']
          @Frequently = params['Frequently']
          @Issued = params['Issued']
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
        # @type Content: String
        # @param ContentType: MIME 类型：application/zip = ZIP 压缩文件。
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
        # @param DvAuthKey: 证书域名验证记录Key
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthKey: String
        # @param DvAuthValue: 证书域名验证记录值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthValue: String
        # @param DvAuthDomain: 证书域名验证域名值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthDomain: String
        # @param DvAuthPath: 证书域名验证文件路径， 仅FILE、FILE_PROXY使用
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthPath: String
        # @param DvAuthKeySubDomain: 证书域名验证子域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DvAuthKeySubDomain: String
        # @param DvAuths: 证书域名验证信息， 存在多个域名验证使用本字段
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
        # @param DvAuthKey: 证书域名验证记录Key
        # @type DvAuthKey: String
        # @param DvAuthValue: 证书域名验证记录值
        # @type DvAuthValue: String
        # @param DvAuthDomain: 证书域名验证域名值
        # @type DvAuthDomain: String
        # @param DvAuthPath: 证书域名验证文件路径， 仅FILE、FILE_PROXY使用
        # @type DvAuthPath: String
        # @param DvAuthSubDomain: 证书域名验证子域名
        # @type DvAuthSubDomain: String
        # @param DvAuthVerifyType: 证书域名验证类型，取值：
        # TXT：DNS域名验证添加TXT记录
        # FILE：域名文件验证
        # CNAME：DNS域名验证添加CNAME记录
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
        # @type Code: String
        # @param Message: 异常错误信息
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
        # @type Id: String
        # @param Name: 网关证书名称
        # @type Name: String
        # @param BindDomains: 绑定域名
        # @type BindDomains: Array
        # @param CertSource: 证书来源
        # @type CertSource: String
        # @param CertId: 当前绑定的SSL证书ID
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

      # 托管配置
      class HostingConfig < TencentCloud::Common::AbstractModel
        # @param ReplaceTime: 托管资源替换时间， 默认为证书过期前30天存在续费证书则替换
        # @type ReplaceTime: Integer
        # @param MessageTypes: 托管发送消息类型：0，托管开始前消息提醒（没有续费证书也会收到该提示消息）； 1， 托管开始消息提醒（存在续费证书才会收到消息提醒）； 2， 托管资源替换失败消息提醒； 3 托管资源替换成功消息提醒
        # @type MessageTypes: Array
        # @param ReplaceStartTime: 资源替换开始时间
        # @type ReplaceStartTime: String
        # @param ReplaceEndTime: 资源替换结束时间
        # @type ReplaceEndTime: String

        attr_accessor :ReplaceTime, :MessageTypes, :ReplaceStartTime, :ReplaceEndTime

        def initialize(replacetime=nil, messagetypes=nil, replacestarttime=nil, replaceendtime=nil)
          @ReplaceTime = replacetime
          @MessageTypes = messagetypes
          @ReplaceStartTime = replacestarttime
          @ReplaceEndTime = replaceendtime
        end

        def deserialize(params)
          @ReplaceTime = params['ReplaceTime']
          @MessageTypes = params['MessageTypes']
          @ReplaceStartTime = params['ReplaceStartTime']
          @ReplaceEndTime = params['ReplaceEndTime']
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
        # @param Error: 是否查询异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: String

        attr_accessor :TotalCount, :InstanceList, :Error

        def initialize(totalcount=nil, instancelist=nil, error=nil)
          @TotalCount = totalcount
          @InstanceList = instancelist
          @Error = error
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
          @Error = params['Error']
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
        # @param Tags: 标签
        # @type Tags: Array

        attr_accessor :Status, :ManagerFirstName, :ManagerLastName, :ManagerPosition, :ManagerPhone, :ManagerMail, :ManagerDepartment, :CreateTime, :DomainCount, :CertCount, :ManagerId, :ExpireTime, :SubmitAuditTime, :VerifyTime, :StatusInfo, :Tags

        def initialize(status=nil, managerfirstname=nil, managerlastname=nil, managerposition=nil, managerphone=nil, managermail=nil, managerdepartment=nil, createtime=nil, domaincount=nil, certcount=nil, managerid=nil, expiretime=nil, submitaudittime=nil, verifytime=nil, statusinfo=nil, tags=nil)
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
          @Tags = tags
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

      # 管理人预审核的域名列表
      class ManagerPreAuditDomain < TencentCloud::Common::AbstractModel
        # @param Domain: 预审核域名信息
        # @type Domain: String
        # @param CreateTime: 预审核域名创建时间
        # @type CreateTime: String
        # @param ExpireTime: 预审核域名过期时间
        # @type ExpireTime: String

        attr_accessor :Domain, :CreateTime, :ExpireTime

        def initialize(domain=nil, createtime=nil, expiretime=nil)
          @Domain = domain
          @CreateTime = createtime
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @Domain = params['Domain']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 管理人的四种审核状态
      class ManagerStatusInfo < TencentCloud::Common::AbstractModel
        # @param Type: 审核类型，枚举值：ov,ev
        # @type Type: String
        # @param Status: 审核状态，枚举值：pending,completed,invalid,submitted,expiring,expired
        # @type Status: String
        # @param CreateTime: 创建时间
        # @type CreateTime: String
        # @param ExpireTime: 过期时间
        # @type ExpireTime: String
        # @param ManagerPreAuditDomains: 管理人预审核的域名列表
        # @type ManagerPreAuditDomains: Array

        attr_accessor :Type, :Status, :CreateTime, :ExpireTime, :ManagerPreAuditDomains

        def initialize(type=nil, status=nil, createtime=nil, expiretime=nil, managerpreauditdomains=nil)
          @Type = type
          @Status = status
          @CreateTime = createtime
          @ExpireTime = expiretime
          @ManagerPreAuditDomains = managerpreauditdomains
        end

        def deserialize(params)
          @Type = params['Type']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @ExpireTime = params['ExpireTime']
          unless params['ManagerPreAuditDomains'].nil?
            @ManagerPreAuditDomains = []
            params['ManagerPreAuditDomains'].each do |i|
              managerpreauditdomain_tmp = ManagerPreAuditDomain.new
              managerpreauditdomain_tmp.deserialize(i)
              @ManagerPreAuditDomains << managerpreauditdomain_tmp
            end
          end
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
        # @type SuccessCertificates: Array
        # @param FailCertificates: 修改所属项目失败的证书集合。
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
        # @type Uin: String
        # @param SubAccountUin: 子账号
        # @type SubAccountUin: String
        # @param CertId: 证书ID
        # @type CertId: String
        # @param Type: 每个操作类型都对应一个具体的操作描述。以下是对每个操作类型及其描述的文字说明：
        # 1. apply - 表示申请一个免费的证书。
        # 2. delete - 表示删除操作。
        # 3. download - 表示下载操作。
        # 4. upload - 表示上传操作。
        # 5. revoke - 表示吊销证书。
        # 6. cancelRevoke - 表示取消吊销操作。
        # 7. updateAlias - 表示更新备注信息。
        # 8. changeProject - 表示将证书分配到某个项目。
        # 9. uploadConfirmLetter - 表示上传确认函。
        # 10. cancel - 表示取消订单操作。
        # 11. replace - 表示重颁发证书。
        # 12. downloadConfirmLetter - 表示下载证书吊销确认函。
        # 13. editRevokeLetter - 表示上传证书吊销确认函。
        # 14. renewVIP - 表示续费付费证书。
        # 15. applyVIP - 表示申请付费证书。
        # 16. submitInfo - 表示提交资料。
        # 17. downloadConfirmLetter - 表示下载确认函模版。
        # 18. uploadFromYunAPI - 表示通过云 API 上传。
        # 19. transferIn - 表示证书转入操作。
        # 20. transferOut - 表示证书转出操作。
        # 21. refund - 表示申请退款。
        # 22. multiYearsRenew - 表示多年期自动续期。
        # 23. modifyDownloadLimit - 表示修改下载限制开关。
        # 24. issued - 表示证书签发。
        # 25. domainValidationPassed - 表示域名验证完成。
        # 26. Resubmit - 表示证书重新申请。
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
        # @type ReceiverUin: Integer
        # @param ReceiveTime: 接收时间。
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
        # @type TotalPeriod: Integer
        # @param NowPeriod: 证书当前年限
        # @type NowPeriod: Integer
        # @param ManagerId: 证书预审核管理人ID
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
        # @type ProjectName: String
        # @param ProjectCreatorUin: 项目创建用户 UIN。
        # @type ProjectCreatorUin: Integer
        # @param ProjectCreateTime: 项目创建时间。
        # @type ProjectCreateTime: String
        # @param ProjectResume: 项目信息简述。
        # @type ProjectResume: String
        # @param OwnerUin: 用户 UIN。
        # @type OwnerUin: Integer
        # @param ProjectId: 项目 ID。
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
        # @param CsrType: 类型，默认 original。可选项：original = 原证书 CSR，upload = 手动上传，online = 在线生成。
        # @type CsrType: String
        # @param CsrContent: CSR 内容，手动上传的时候需要。
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
        # @param SignAlgo: 签名算法
        # @type SignAlgo: String

        attr_accessor :CertificateId, :ValidType, :CsrType, :CsrContent, :CsrkeyPassword, :Reason, :CertCSREncryptAlgo, :CertCSRKeyParameter, :SignAlgo

        def initialize(certificateid=nil, validtype=nil, csrtype=nil, csrcontent=nil, csrkeypassword=nil, reason=nil, certcsrencryptalgo=nil, certcsrkeyparameter=nil, signalgo=nil)
          @CertificateId = certificateid
          @ValidType = validtype
          @CsrType = csrtype
          @CsrContent = csrcontent
          @CsrkeyPassword = csrkeypassword
          @Reason = reason
          @CertCSREncryptAlgo = certcsrencryptalgo
          @CertCSRKeyParameter = certcsrkeyparameter
          @SignAlgo = signalgo
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
          @SignAlgo = params['SignAlgo']
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
        # @param ResourceType: 云资源类型，支持clb、waf、apigateway、cos、tke、tse、tcb
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

      # 吊销证书域名验证信息。
      class RevokeDomainValidateAuths < TencentCloud::Common::AbstractModel
        # @param DomainValidateAuthPath: DV 认证值路径。
        # @type DomainValidateAuthPath: String
        # @param DomainValidateAuthKey: DV 认证 KEY。
        # @type DomainValidateAuthKey: String
        # @param DomainValidateAuthValue: DV 认证值。
        # @type DomainValidateAuthValue: String
        # @param DomainValidateAuthDomain: DV 认证域名。
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
        # @param CertificateId: 待提交资料的付费证书 ID。
        # @type CertificateId: String
        # @param CsrType: 此字段必传。 CSR 生成方式， 取值为：
        # online：腾讯云提交的填写的参数信息生成CSR和私钥， 并由腾讯云加密存储
        # parse：自行生成CSR和私钥， 并通过上传CSR申请证书
        # @type CsrType: String
        # @param CsrContent: 上传的 CSR 内容。
        # 若CstType为parse， 则此字段必传。
        # @type CsrContent: String
        # @param CertificateDomain: 证书绑定的通用名称， 若是上传的CSR，则该域名需与CSR解析的通用名称一致
        # @type CertificateDomain: String
        # @param DomainList: 证书绑定的其他域名， 单域名、泛域名证书无需提供。 多域名、多泛域名必填
        # @type DomainList: Array
        # @param KeyPassword: 私钥密码， 目前仅使用在生成jks、pfx格式证书时密码； 其他格式私钥证书未加密
        # @type KeyPassword: String
        # @param OrganizationName: 字段必传， 公司名称。
        # @type OrganizationName: String
        # @param OrganizationDivision: 字段必传， 部门名称。
        # @type OrganizationDivision: String
        # @param OrganizationAddress: 字段必传， 公司详细地址。
        # @type OrganizationAddress: String
        # @param OrganizationCountry: 字段必传， 国家名称，传CN即可
        # @type OrganizationCountry: String
        # @param OrganizationCity: 字段必传， 公司所在城市。
        # @type OrganizationCity: String
        # @param OrganizationRegion: 字段必传， 公司所在省份。
        # @type OrganizationRegion: String
        # @param PostalCode: 公司邮编。
        # @type PostalCode: String
        # @param PhoneAreaCode: 字段必传， 公司座机区号。
        # @type PhoneAreaCode: String
        # @param PhoneNumber: 字段必传， 公司座机号码。
        # @type PhoneNumber: String
        # @param VerifyType: 证书验证方式。验证类型：DNS_AUTO = 自动DNS验证（仅支持在腾讯云解析且解析状态正常的域名使用该验证类型），DNS = 手动DNS验证，FILE = 文件验证。
        # @type VerifyType: String
        # @param AdminFirstName: 字段必传，管理人名。
        # @type AdminFirstName: String
        # @param AdminLastName: 字段必传，管理人姓。
        # @type AdminLastName: String
        # @param AdminPhoneNum: 字段必传，管理人手机号码。
        # @type AdminPhoneNum: String
        # @param AdminEmail: 字段必传，管理人邮箱地址。
        # @type AdminEmail: String
        # @param AdminPosition: 字段必传，管理人职位。
        # @type AdminPosition: String
        # @param ContactFirstName: 字段必传，联系人名。
        # @type ContactFirstName: String
        # @param ContactLastName: 字段必传，联系人姓。
        # @type ContactLastName: String
        # @param ContactEmail: 字段必传，联系人邮箱地址。
        # @type ContactEmail: String
        # @param ContactNumber: 字段必传，联系人手机号码。
        # @type ContactNumber: String
        # @param ContactPosition: 字段必传，联系人职位。
        # @type ContactPosition: String
        # @param IsDV: 是否DV证书。默认false
        # @type IsDV: Boolean

        attr_accessor :CertificateId, :CsrType, :CsrContent, :CertificateDomain, :DomainList, :KeyPassword, :OrganizationName, :OrganizationDivision, :OrganizationAddress, :OrganizationCountry, :OrganizationCity, :OrganizationRegion, :PostalCode, :PhoneAreaCode, :PhoneNumber, :VerifyType, :AdminFirstName, :AdminLastName, :AdminPhoneNum, :AdminEmail, :AdminPosition, :ContactFirstName, :ContactLastName, :ContactEmail, :ContactNumber, :ContactPosition, :IsDV

        def initialize(certificateid=nil, csrtype=nil, csrcontent=nil, certificatedomain=nil, domainlist=nil, keypassword=nil, organizationname=nil, organizationdivision=nil, organizationaddress=nil, organizationcountry=nil, organizationcity=nil, organizationregion=nil, postalcode=nil, phoneareacode=nil, phonenumber=nil, verifytype=nil, adminfirstname=nil, adminlastname=nil, adminphonenum=nil, adminemail=nil, adminposition=nil, contactfirstname=nil, contactlastname=nil, contactemail=nil, contactnumber=nil, contactposition=nil, isdv=nil)
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
          @IsDV = isdv
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
          @IsDV = params['IsDV']
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
        # @type Domain: String
        # @param Status: 状态
        # @type Status: Integer
        # @param UnionStatus: 统一域名状态
        # @type UnionStatus: Integer
        # @param IsPreempted: 是否被抢占, 被抢占表示域名被其他环境绑定了，需要解绑或者重新绑定。
        # @type IsPreempted: Boolean
        # @param ICPStatus: icp黑名单封禁状态，0-未封禁，1-封禁
        # @type ICPStatus: Integer
        # @param OldCertificateId: 已绑定证书ID
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
        # @type InstanceList: Array
        # @param TotalCount: 数量
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
        # @type ID: String
        # @param Source: 来源
        # @type Source: String
        # @param Name: 名称
        # @type Name: String
        # @param Status: 状态
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
        # @type Domain: String
        # @param Status: 状态
        # @type Status: String
        # @param DNSStatus: 解析状态
        # @type DNSStatus: String
        # @param OldCertificateId: 已绑定证书ID
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
        # @type InstanceList: Array
        # @param TotalCount: 数量
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
        # @param Error: 是否查询异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: String

        attr_accessor :Region, :Environments, :Error

        def initialize(region=nil, environments=nil, error=nil)
          @Region = region
          @Environments = environments
          @Error = error
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
          @Error = params['Error']
        end
      end

      # tse实例详情
      class TSEInstanceDetail < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关ID
        # @type GatewayId: String
        # @param GatewayName: 网关名称
        # @type GatewayName: String
        # @param CertificateList: 网关证书列表
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
        # @param Error: 是否查询异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: String

        attr_accessor :InstanceList, :TotalCount, :Region, :Error

        def initialize(instancelist=nil, totalcount=nil, region=nil, error=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @Region = region
          @Error = error
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
          @Error = params['Error']
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
        # deployed：已部署；
        # processing：部署中；
        # applying：申请中；
        # failed：申请失败；
        # issued：绑定失败。
        # @type Status: String
        # @param Algorithm: 证书加密算法
        # @type Algorithm: String

        attr_accessor :Host, :CertId, :ZoneId, :Status, :Algorithm

        def initialize(host=nil, certid=nil, zoneid=nil, status=nil, algorithm=nil)
          @Host = host
          @CertId = certid
          @ZoneId = zoneid
          @Status = status
          @Algorithm = algorithm
        end

        def deserialize(params)
          @Host = params['Host']
          @CertId = params['CertId']
          @ZoneId = params['ZoneId']
          @Status = params['Status']
          @Algorithm = params['Algorithm']
        end
      end

      # edgeone实例详情 - 异步关联云资源数据结构
      class TeoInstanceList < TencentCloud::Common::AbstractModel
        # @param InstanceList: edgeone实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: edgeone实例总数
        # @type TotalCount: Integer
        # @param Error: 是否查询异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: String

        attr_accessor :InstanceList, :TotalCount, :Error

        def initialize(instancelist=nil, totalcount=nil, error=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @Error = error
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
          @Error = params['Error']
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
        # @param Error: 是否查询异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: String

        attr_accessor :Region, :InstanceList, :TotalCount, :Error

        def initialize(region=nil, instancelist=nil, totalcount=nil, error=nil)
          @Region = region
          @InstanceList = instancelist
          @TotalCount = totalcount
          @Error = error
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
          @Error = params['Error']
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
        # @param OldCertificateId: 一键更新的旧证书ID。 通过查询该证书ID绑定的云资源，然后使用新证书对这些云资源进行更新
        # @type OldCertificateId: String
        # @param ResourceTypes: 需要部署的资源类型，参数值可选（小写）：clb、cdn、waf、live、ddos、teo、apigateway、vod、tke、tcb、tse、cos
        # @type ResourceTypes: Array
        # @param CertificateId: 一键更新的新证书ID。 不传该参数，则公钥证书和私钥证书必传
        # @type CertificateId: String
        # @param Regions: 需要部署的地域列表（废弃）
        # @type Regions: Array
        # @param ResourceTypesRegions: 云资源需要部署的地域列表，支持地域的云资源类型必传，取值：clb、tke、apigateway、waf、tcb、tse、cos
        # @type ResourceTypesRegions: Array
        # @param CertificatePublicKey: 公钥证书， 若上传公钥证书，那么私钥证书必传。  则CertificateId不用传
        # @type CertificatePublicKey: String
        # @param CertificatePrivateKey: 私钥证书，若上传私钥证书， 那么公钥证书必传；  则CertificateId不用传
        # @type CertificatePrivateKey: String
        # @param ExpiringNotificationSwitch: 旧证书是否忽略到期提醒  0:不忽略通知。1:忽略通知，忽略OldCertificateId到期提醒
        # @type ExpiringNotificationSwitch: Integer
        # @param Repeatable: 相同的证书是否允许重复上传，若选择上传公钥私钥证书， 则可以配置该参数。 若存在相同重复证书，则更新任务会失败
        # @type Repeatable: Boolean
        # @param AllowDownload: 是否允许下载，若选择上传公私钥证书， 则可以配置该参数
        # @type AllowDownload: Boolean
        # @param Tags: 标签列表，若选择上传公私钥证书， 则可以配置该参数
        # @type Tags: Array
        # @param ProjectId: 项目 ID，若选择上传公私钥证书， 则可以配置该参数
        # @type ProjectId: Integer

        attr_accessor :OldCertificateId, :ResourceTypes, :CertificateId, :Regions, :ResourceTypesRegions, :CertificatePublicKey, :CertificatePrivateKey, :ExpiringNotificationSwitch, :Repeatable, :AllowDownload, :Tags, :ProjectId
        extend Gem::Deprecate
        deprecate :Regions, :none, 2025, 8
        deprecate :Regions=, :none, 2025, 8

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
        # @param DeployRecordId: 云资源更新任务ID， DeployRecordId为0表示任务进行中， 重复请求这个接口， 当返回DeployRecordId大于0则表示任务创建成功。 未创建成功则会抛出异常
        # @type DeployRecordId: Integer
        # @param DeployStatus: 更新任务创建状态；1表示创建成功； 0表示当前存在更新中的任务，未创建新的更新任务；返回值DeployRecordId为更新中的任务ID
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
        # @param DeployRecordId: 待重试部署记录ID,通过UpdateCertificateInstance得到部署记录ID。 本参数不传的话，则DeployRecordDetailId必传
        # @type DeployRecordId: Integer
        # @param DeployRecordDetailId: 待重试部署记录详情ID,通过DescribeHostUpdateRecordDetail接口获得， 本参数不传的话， 则DeployRecordId必传
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
        # @param DeployRecordId: 更新证书待回滚的记录ID, 通过UpdateCertificateInstance获得
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
        # @param DeployRecordId: 新生成的回滚部署任务的记录ID
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
        # @param Id: 更新详情记录id
        # @type Id: Integer
        # @param CertId: 新旧证书更新 - 新证书ID
        # @type CertId: String
        # @param OldCertId: 新旧证书更新 - 旧证书ID
        # @type OldCertId: String
        # @param Domains: 部署域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domains: Array
        # @param ResourceType: 新旧证书更新云资源的云资源类型：
        # - clb
        # - cdn
        # - ddos
        # - live
        # - vod
        # - waf
        # - apigateway
        # - teo
        # - tke
        # - cos
        # - tse
        # - tcb
        # @type ResourceType: String
        # @param Region: 部署地域
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Region: String
        # @param Status: 部署状态， 取值范围：
        # 0：待部署
        # 1：部署成功
        # 2：部署失败
        # 3：部署中
        # 4：回滚成功
        # 5：回滚失败
        # 6：无资源，无需部署
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
        # @type EnvId: String
        # @param TCBType: TCB部署类型
        # @type TCBType: String
        # @param Url: 监听器Url(clb专属)
        # @type Url: String
        # @param Algorithm: 新证书加密算法
        # @type Algorithm: String
        # @param OldAlgorithm: 旧证书加密算法
        # @type OldAlgorithm: String

        attr_accessor :Id, :CertId, :OldCertId, :Domains, :ResourceType, :Region, :Status, :ErrorMsg, :CreateTime, :UpdateTime, :InstanceId, :InstanceName, :ListenerId, :ListenerName, :Protocol, :SniSwitch, :Bucket, :Port, :Namespace, :SecretName, :EnvId, :TCBType, :Url, :Algorithm, :OldAlgorithm

        def initialize(id=nil, certid=nil, oldcertid=nil, domains=nil, resourcetype=nil, region=nil, status=nil, errormsg=nil, createtime=nil, updatetime=nil, instanceid=nil, instancename=nil, listenerid=nil, listenername=nil, protocol=nil, sniswitch=nil, bucket=nil, port=nil, namespace=nil, secretname=nil, envid=nil, tcbtype=nil, url=nil, algorithm=nil, oldalgorithm=nil)
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
          @Url = url
          @Algorithm = algorithm
          @OldAlgorithm = oldalgorithm
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
          @Url = params['Url']
          @Algorithm = params['Algorithm']
          @OldAlgorithm = params['OldAlgorithm']
        end
      end

      # 更新记录详情
      class UpdateRecordDetails < TencentCloud::Common::AbstractModel
        # @param ResourceType: 新旧证书更新云资源的云资源类型：
        # - clb
        # - cdn
        # - ddos
        # - live
        # - vod
        # - waf
        # - apigateway
        # - teo
        # - tke
        # - cos
        # - tse
        # - tcb
        # @type ResourceType: String
        # @param List: 该云资源更新详情
        # @type List: Array
        # @param TotalCount: 该云资源更新资源总数
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
        # @param Repeatable: 相同的证书是否允许重复上传； true：允许上传相同指纹的证书；  false：不允许上传相同指纹的证书； 默认值：true
        # @type Repeatable: Boolean
        # @param KeyPassword: 私钥密码
        # @type KeyPassword: String

        attr_accessor :CertificatePublicKey, :CertificatePrivateKey, :CertificateType, :Alias, :ProjectId, :CertificateUse, :Tags, :Repeatable, :KeyPassword

        def initialize(certificatepublickey=nil, certificateprivatekey=nil, certificatetype=nil, _alias=nil, projectid=nil, certificateuse=nil, tags=nil, repeatable=nil, keypassword=nil)
          @CertificatePublicKey = certificatepublickey
          @CertificatePrivateKey = certificateprivatekey
          @CertificateType = certificatetype
          @Alias = _alias
          @ProjectId = projectid
          @CertificateUse = certificateuse
          @Tags = tags
          @Repeatable = repeatable
          @KeyPassword = keypassword
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
          @KeyPassword = params['KeyPassword']
        end
      end

      # UploadCertificate返回参数结构体
      class UploadCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书 ID。
        # @type CertificateId: String
        # @param RepeatCertId: 当入参Repeatable为false的时候 返回的重复证书的ID，注意当用户上传相同的证书超过5000张的时候，当前接口会无视入参Repeatable，直接返回重复证书的ID。
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

      # UploadUpdateCertificateInstance请求参数结构体
      class UploadUpdateCertificateInstanceRequest < TencentCloud::Common::AbstractModel
        # @param OldCertificateId: 一键更新的旧证书ID。 通过查询该证书ID绑定的云资源，然后使用新证书对这些云资源进行更新
        # @type OldCertificateId: String
        # @param ResourceTypes: 需要部署的资源类型，参数值可选（小写）：clb
        # @type ResourceTypes: Array
        # @param CertificatePublicKey: 公钥证书
        # @type CertificatePublicKey: String
        # @param CertificatePrivateKey: 私钥证书
        # @type CertificatePrivateKey: String
        # @param ResourceTypesRegions: 云资源需要部署的地域列表，支持地域的云资源类型必传，取值：clb
        # @type ResourceTypesRegions: Array

        attr_accessor :OldCertificateId, :ResourceTypes, :CertificatePublicKey, :CertificatePrivateKey, :ResourceTypesRegions

        def initialize(oldcertificateid=nil, resourcetypes=nil, certificatepublickey=nil, certificateprivatekey=nil, resourcetypesregions=nil)
          @OldCertificateId = oldcertificateid
          @ResourceTypes = resourcetypes
          @CertificatePublicKey = certificatepublickey
          @CertificatePrivateKey = certificateprivatekey
          @ResourceTypesRegions = resourcetypesregions
        end

        def deserialize(params)
          @OldCertificateId = params['OldCertificateId']
          @ResourceTypes = params['ResourceTypes']
          @CertificatePublicKey = params['CertificatePublicKey']
          @CertificatePrivateKey = params['CertificatePrivateKey']
          unless params['ResourceTypesRegions'].nil?
            @ResourceTypesRegions = []
            params['ResourceTypesRegions'].each do |i|
              resourcetyperegions_tmp = ResourceTypeRegions.new
              resourcetyperegions_tmp.deserialize(i)
              @ResourceTypesRegions << resourcetyperegions_tmp
            end
          end
        end
      end

      # UploadUpdateCertificateInstance返回参数结构体
      class UploadUpdateCertificateInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 云资源更新任务ID， DeployRecordId为0表示任务进行中， 重复请求这个接口， 当返回DeployRecordId大于0则表示任务创建成功。 未创建成功则会抛出异常
        # @type DeployRecordId: Integer
        # @param DeployStatus: 更新任务创建状态；1表示创建成功； 0表示当前存在更新中的任务，未创建新的更新任务；返回值DeployRecordId为更新中的任务ID
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

      # UploadUpdateCertificateRecordRetry请求参数结构体
      class UploadUpdateCertificateRecordRetryRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 待重试部署记录ID,通过UpdateCertificateInstance得到部署记录ID。 本参数不传的话，则DeployRecordDetailId必传
        # @type DeployRecordId: Integer
        # @param DeployRecordDetailId: 待重试部署记录详情ID,通过DescribeHostUpdateRecordDetail接口获得， 本参数不传的话， 则DeployRecordId必传
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

      # UploadUpdateCertificateRecordRetry返回参数结构体
      class UploadUpdateCertificateRecordRetryResponse < TencentCloud::Common::AbstractModel
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

      # UploadUpdateCertificateRecordRollback请求参数结构体
      class UploadUpdateCertificateRecordRollbackRequest < TencentCloud::Common::AbstractModel
        # @param DeployRecordId: 更新证书待回滚的记录ID, 通过UpdateCertificateInstance获得
        # @type DeployRecordId: Integer

        attr_accessor :DeployRecordId

        def initialize(deployrecordid=nil)
          @DeployRecordId = deployrecordid
        end

        def deserialize(params)
          @DeployRecordId = params['DeployRecordId']
        end
      end

      # UploadUpdateCertificateRecordRollback返回参数结构体
      class UploadUpdateCertificateRecordRollbackResponse < TencentCloud::Common::AbstractModel
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

      # 部署记录列表信息
      class UploadUpdateRecordInfo < TencentCloud::Common::AbstractModel
        # @param Id: 记录ID
        # @type Id: Integer
        # @param OldCertId: 原证书ID
        # @type OldCertId: String
        # @param ResourceTypes: 部署资源类型列表
        # @type ResourceTypes: Array
        # @param Status: 部署状态
        # @type Status: Integer
        # @param CreateTime: 部署时间
        # @type CreateTime: String
        # @param UpdateTime: 最后一次更新时间
        # @type UpdateTime: String

        attr_accessor :Id, :OldCertId, :ResourceTypes, :Status, :CreateTime, :UpdateTime

        def initialize(id=nil, oldcertid=nil, resourcetypes=nil, status=nil, createtime=nil, updatetime=nil)
          @Id = id
          @OldCertId = oldcertid
          @ResourceTypes = resourcetypes
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Id = params['Id']
          @OldCertId = params['OldCertId']
          @ResourceTypes = params['ResourceTypes']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # vod实例详情 - 异步关联云资源数据结构
      class VODInstanceList < TencentCloud::Common::AbstractModel
        # @param InstanceList: vod实例详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceList: Array
        # @param TotalCount: 该地域下vod实例总数
        # @type TotalCount: Integer
        # @param Error: 是否查询异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: String

        attr_accessor :InstanceList, :TotalCount, :Error

        def initialize(instancelist=nil, totalcount=nil, error=nil)
          @InstanceList = instancelist
          @TotalCount = totalcount
          @Error = error
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
          @Error = params['Error']
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
        # @param Error: 是否查询异常
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Error: String

        attr_accessor :Region, :InstanceList, :TotalCount, :Error

        def initialize(region=nil, instancelist=nil, totalcount=nil, error=nil)
          @Region = region
          @InstanceList = instancelist
          @TotalCount = totalcount
          @Error = error
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
          @Error = params['Error']
        end
      end

    end
  end
end

