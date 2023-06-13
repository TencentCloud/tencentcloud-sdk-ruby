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
  module Wss
    module V20180426
      # DeleteCert请求参数结构体
      class DeleteCertRequest < TencentCloud::Common::AbstractModel
        # @param Id: 证书 ID，即通过 GetList 拿到的证书列表的 ID 字段。
        # @type Id: String
        # @param ModuleType: 模块名称，应填 ssl。
        # @type ModuleType: String

        attr_accessor :Id, :ModuleType

        def initialize(id=nil, moduletype=nil)
          @Id = id
          @ModuleType = moduletype
        end

        def deserialize(params)
          @Id = params['Id']
          @ModuleType = params['ModuleType']
        end
      end

      # DeleteCert返回参数结构体
      class DeleteCertResponse < TencentCloud::Common::AbstractModel
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

      # DescribeCertList请求参数结构体
      class DescribeCertListRequest < TencentCloud::Common::AbstractModel
        # @param ModuleType: 模块名称，应填 ssl。
        # @type ModuleType: String
        # @param Offset: 页数，默认第一页。
        # @type Offset: Integer
        # @param Limit: 每页条数，默认每页20条。
        # @type Limit: Integer
        # @param SearchKey: 搜索关键字。
        # @type SearchKey: String
        # @param CertType: 证书类型（目前支持:CA=客户端证书,SVR=服务器证书）。
        # @type CertType: String
        # @param Id: 证书ID。
        # @type Id: String
        # @param WithCert: 是否同时获取证书内容。
        # @type WithCert: String
        # @param AltDomain: 如传，则只返回可以给该域名使用的证书。
        # @type AltDomain: String

        attr_accessor :ModuleType, :Offset, :Limit, :SearchKey, :CertType, :Id, :WithCert, :AltDomain

        def initialize(moduletype=nil, offset=nil, limit=nil, searchkey=nil, certtype=nil, id=nil, withcert=nil, altdomain=nil)
          @ModuleType = moduletype
          @Offset = offset
          @Limit = limit
          @SearchKey = searchkey
          @CertType = certtype
          @Id = id
          @WithCert = withcert
          @AltDomain = altdomain
        end

        def deserialize(params)
          @ModuleType = params['ModuleType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchKey = params['SearchKey']
          @CertType = params['CertType']
          @Id = params['Id']
          @WithCert = params['WithCert']
          @AltDomain = params['AltDomain']
        end
      end

      # DescribeCertList返回参数结构体
      class DescribeCertListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数量。
        # @type TotalCount: Integer
        # @param CertificateSet: 列表。
        # @type CertificateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :CertificateSet, :RequestId

        def initialize(totalcount=nil, certificateset=nil, requestid=nil)
          @TotalCount = totalcount
          @CertificateSet = certificateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['CertificateSet'].nil?
            @CertificateSet = []
            params['CertificateSet'].each do |i|
              sslcertificate_tmp = SSLCertificate.new
              sslcertificate_tmp.deserialize(i)
              @CertificateSet << sslcertificate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 获取证书列表（SSLCertificate）返回参数键为 CertificateSet 的内容。
      class SSLCertificate < TencentCloud::Common::AbstractModel
        # @param OwnerUin: 所属账户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: String
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param From: 证书来源：trustasia = 亚洲诚信， upload = 用户上传
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type From: String
        # @param Type: 证书类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Type: String
        # @param CertType: 证书类型（目前支持：CA = 客户端证书，SVR = 服务器证书）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertType: String
        # @param ProductZhName: 证书办法者名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProductZhName: String
        # @param Domain: 主域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param Alias: 别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Alias: String
        # @param Status: 状态值 0：审核中，1：已通过，2：审核失败，3：已过期，4：已添加云解析记录，5：OV/EV 证书，待提交资料，6：订单取消中，7：已取消，8：已提交资料， 待上传确认函
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer
        # @param VulnerabilityStatus: 漏洞扫描状态：INACTIVE = 未开启，ACTIVE = 已开启
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VulnerabilityStatus: String
        # @param StatusMsg: 状态信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusMsg: String
        # @param VerifyType: 验证类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VerifyType: String
        # @param CertBeginTime: 证书生效时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertBeginTime: String
        # @param CertEndTime: 证书过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertEndTime: String
        # @param ValidityPeriod: 证书过期时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidityPeriod: String
        # @param InsertTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InsertTime: String
        # @param ProjectInfo: 项目信息，ProjectId：项目ID，OwnerUin：项目所属的 uin（默认项目为0），Name：项目名称，CreatorUin：创建项目的 uin，CreateTime：项目创建时间，Info：项目说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectInfo: :class:`Tencentcloud::Wss.v20180426.models.SSLProjectInfo`
        # @param Id: 证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: String
        # @param SubjectAltName: 证书包含的多个域名（包含主域名）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectAltName: Array
        # @param TypeName: 证书类型名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TypeName: String
        # @param StatusName: 状态名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusName: String
        # @param IsVip: 是否为 VIP 客户
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVip: Boolean
        # @param IsDv: 是否我 DV 版证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsDv: Boolean
        # @param IsWildcard: 是否为泛域名证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsWildcard: Boolean
        # @param IsVulnerability: 是否启用了漏洞扫描功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsVulnerability: Boolean
        # @param Cert: 证书
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cert: String

        attr_accessor :OwnerUin, :ProjectId, :From, :Type, :CertType, :ProductZhName, :Domain, :Alias, :Status, :VulnerabilityStatus, :StatusMsg, :VerifyType, :CertBeginTime, :CertEndTime, :ValidityPeriod, :InsertTime, :ProjectInfo, :Id, :SubjectAltName, :TypeName, :StatusName, :IsVip, :IsDv, :IsWildcard, :IsVulnerability, :Cert

        def initialize(owneruin=nil, projectid=nil, from=nil, type=nil, certtype=nil, productzhname=nil, domain=nil, _alias=nil, status=nil, vulnerabilitystatus=nil, statusmsg=nil, verifytype=nil, certbegintime=nil, certendtime=nil, validityperiod=nil, inserttime=nil, projectinfo=nil, id=nil, subjectaltname=nil, typename=nil, statusname=nil, isvip=nil, isdv=nil, iswildcard=nil, isvulnerability=nil, cert=nil)
          @OwnerUin = owneruin
          @ProjectId = projectid
          @From = from
          @Type = type
          @CertType = certtype
          @ProductZhName = productzhname
          @Domain = domain
          @Alias = _alias
          @Status = status
          @VulnerabilityStatus = vulnerabilitystatus
          @StatusMsg = statusmsg
          @VerifyType = verifytype
          @CertBeginTime = certbegintime
          @CertEndTime = certendtime
          @ValidityPeriod = validityperiod
          @InsertTime = inserttime
          @ProjectInfo = projectinfo
          @Id = id
          @SubjectAltName = subjectaltname
          @TypeName = typename
          @StatusName = statusname
          @IsVip = isvip
          @IsDv = isdv
          @IsWildcard = iswildcard
          @IsVulnerability = isvulnerability
          @Cert = cert
        end

        def deserialize(params)
          @OwnerUin = params['OwnerUin']
          @ProjectId = params['ProjectId']
          @From = params['From']
          @Type = params['Type']
          @CertType = params['CertType']
          @ProductZhName = params['ProductZhName']
          @Domain = params['Domain']
          @Alias = params['Alias']
          @Status = params['Status']
          @VulnerabilityStatus = params['VulnerabilityStatus']
          @StatusMsg = params['StatusMsg']
          @VerifyType = params['VerifyType']
          @CertBeginTime = params['CertBeginTime']
          @CertEndTime = params['CertEndTime']
          @ValidityPeriod = params['ValidityPeriod']
          @InsertTime = params['InsertTime']
          unless params['ProjectInfo'].nil?
            @ProjectInfo = SSLProjectInfo.new
            @ProjectInfo.deserialize(params['ProjectInfo'])
          end
          @Id = params['Id']
          @SubjectAltName = params['SubjectAltName']
          @TypeName = params['TypeName']
          @StatusName = params['StatusName']
          @IsVip = params['IsVip']
          @IsDv = params['IsDv']
          @IsWildcard = params['IsWildcard']
          @IsVulnerability = params['IsVulnerability']
          @Cert = params['Cert']
        end
      end

      # 获取证书列表接口（SSLProjectInfo）出参键为CertificateSet下的元素ProjectIno详情
      class SSLProjectInfo < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProjectId: String
        # @param OwnerUin: 项目所属的 uin（默认项目为0）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnerUin: Integer
        # @param Name: 项目名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param CreatorUin: 创建项目的 uin
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreatorUin: Integer
        # @param CreateTime: 项目创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: String
        # @param Info: 项目说明
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Info: String

        attr_accessor :ProjectId, :OwnerUin, :Name, :CreatorUin, :CreateTime, :Info

        def initialize(projectid=nil, owneruin=nil, name=nil, creatoruin=nil, createtime=nil, info=nil)
          @ProjectId = projectid
          @OwnerUin = owneruin
          @Name = name
          @CreatorUin = creatoruin
          @CreateTime = createtime
          @Info = info
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @OwnerUin = params['OwnerUin']
          @Name = params['Name']
          @CreatorUin = params['CreatorUin']
          @CreateTime = params['CreateTime']
          @Info = params['Info']
        end
      end

      # UploadCert请求参数结构体
      class UploadCertRequest < TencentCloud::Common::AbstractModel
        # @param Cert: 证书内容。
        # @type Cert: String
        # @param CertType: 证书类型（目前支持：CA 为客户端证书，SVR 为服务器证书）。
        # @type CertType: String
        # @param ProjectId: 项目ID，详见用户指南的 [项目与标签](https://cloud.tencent.com/document/product/598/32738)。
        # @type ProjectId: String
        # @param ModuleType: 模块名称，应填 ssl。
        # @type ModuleType: String
        # @param Key: 证书私钥，certType=SVR 时必填。
        # @type Key: String
        # @param Alias: 证书备注。
        # @type Alias: String

        attr_accessor :Cert, :CertType, :ProjectId, :ModuleType, :Key, :Alias

        def initialize(cert=nil, certtype=nil, projectid=nil, moduletype=nil, key=nil, _alias=nil)
          @Cert = cert
          @CertType = certtype
          @ProjectId = projectid
          @ModuleType = moduletype
          @Key = key
          @Alias = _alias
        end

        def deserialize(params)
          @Cert = params['Cert']
          @CertType = params['CertType']
          @ProjectId = params['ProjectId']
          @ModuleType = params['ModuleType']
          @Key = params['Key']
          @Alias = params['Alias']
        end
      end

      # UploadCert返回参数结构体
      class UploadCertResponse < TencentCloud::Common::AbstractModel
        # @param Id: 证书ID。
        # @type Id: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Id, :RequestId

        def initialize(id=nil, requestid=nil)
          @Id = id
          @RequestId = requestid
        end

        def deserialize(params)
          @Id = params['Id']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

