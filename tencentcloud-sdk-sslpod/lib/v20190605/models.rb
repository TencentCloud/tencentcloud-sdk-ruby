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
  module Sslpod
    module V20190605
      # 证书信息
      class CertInfo < TencentCloud::Common::AbstractModel
        # @param Hash: 证书sha1
        # @type Hash: String
        # @param CN: 证书通用名称
        # @type CN: String
        # @param SANs: 备用名称
        # @type SANs: String
        # @param KeyAlgo: 公钥算法
        # @type KeyAlgo: String
        # @param Issuer: 颁发者
        # @type Issuer: String
        # @param BeginTime: 有效期开始
        # @type BeginTime: String
        # @param EndTime: 有效期结束
        # @type EndTime: String
        # @param Days: 剩余天数
        # @type Days: Integer
        # @param Brand: 品牌
        # @type Brand: String
        # @param TrustStatus: 信任状态
        # @type TrustStatus: String
        # @param CertType: 证书类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertType: String

        attr_accessor :Hash, :CN, :SANs, :KeyAlgo, :Issuer, :BeginTime, :EndTime, :Days, :Brand, :TrustStatus, :CertType

        def initialize(hash=nil, cn=nil, sans=nil, keyalgo=nil, issuer=nil, begintime=nil, endtime=nil, days=nil, brand=nil, truststatus=nil, certtype=nil)
          @Hash = hash
          @CN = cn
          @SANs = sans
          @KeyAlgo = keyalgo
          @Issuer = issuer
          @BeginTime = begintime
          @EndTime = endtime
          @Days = days
          @Brand = brand
          @TrustStatus = truststatus
          @CertType = certtype
        end

        def deserialize(params)
          @Hash = params['Hash']
          @CN = params['CN']
          @SANs = params['SANs']
          @KeyAlgo = params['KeyAlgo']
          @Issuer = params['Issuer']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @Days = params['Days']
          @Brand = params['Brand']
          @TrustStatus = params['TrustStatus']
          @CertType = params['CertType']
        end
      end

      # 直方图数据结构
      class ChartHistogram < TencentCloud::Common::AbstractModel
        # @param Name: 项目名
        # @type Name: String
        # @param Children: 项目值
        # @type Children: Array

        attr_accessor :Name, :Children

        def initialize(name=nil, children=nil)
          @Name = name
          @Children = children
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['Children'].nil?
            @Children = []
            params['Children'].each do |i|
              chartnamevalue_tmp = ChartNameValue.new
              chartnamevalue_tmp.deserialize(i)
              @Children << chartnamevalue_tmp
            end
          end
        end
      end

      # 通用图表键值对
      class ChartNameValue < TencentCloud::Common::AbstractModel
        # @param Name: 图表项名称
        # @type Name: String
        # @param Value: 图表项值
        # @type Value: Integer

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

      # CreateDomain请求参数结构体
      class CreateDomainRequest < TencentCloud::Common::AbstractModel
        # @param ServerType: 监控的服务器类型（0：web，1：smtp，2：imap，3：pops）
        # @type ServerType: Integer
        # @param Domain: 添加的域名
        # @type Domain: String
        # @param Port: 添加的端口
        # @type Port: String
        # @param IP: 指定域名的IP
        # @type IP: String
        # @param Notice: 是否开启通知告警；true：开启通知告警，false：关闭通知告警
        # @type Notice: Boolean
        # @param Tags: 给域名添加标签，多个以逗号隔开
        # @type Tags: String

        attr_accessor :ServerType, :Domain, :Port, :IP, :Notice, :Tags

        def initialize(servertype=nil, domain=nil, port=nil, ip=nil, notice=nil, tags=nil)
          @ServerType = servertype
          @Domain = domain
          @Port = port
          @IP = ip
          @Notice = notice
          @Tags = tags
        end

        def deserialize(params)
          @ServerType = params['ServerType']
          @Domain = params['Domain']
          @Port = params['Port']
          @IP = params['IP']
          @Notice = params['Notice']
          @Tags = params['Tags']
        end
      end

      # CreateDomain返回参数结构体
      class CreateDomainResponse < TencentCloud::Common::AbstractModel
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

      # 面板数据
      class DashboardResult < TencentCloud::Common::AbstractModel
        # @param SecurityLevelPie: 安全等级图表
        # @type SecurityLevelPie: Array
        # @param CertBrandsPie: 证书品牌图表
        # @type CertBrandsPie: Array
        # @param CertValidTimePie: 证书有效时间图表
        # @type CertValidTimePie: Array
        # @param CertTypePie: 证书类型图表
        # @type CertTypePie: Array
        # @param SSLBugsLoopholeHistogram: ssl bugs图表
        # @type SSLBugsLoopholeHistogram: Array
        # @param ComplianceHistogram: 合规图表
        # @type ComplianceHistogram: Array

        attr_accessor :SecurityLevelPie, :CertBrandsPie, :CertValidTimePie, :CertTypePie, :SSLBugsLoopholeHistogram, :ComplianceHistogram

        def initialize(securitylevelpie=nil, certbrandspie=nil, certvalidtimepie=nil, certtypepie=nil, sslbugsloopholehistogram=nil, compliancehistogram=nil)
          @SecurityLevelPie = securitylevelpie
          @CertBrandsPie = certbrandspie
          @CertValidTimePie = certvalidtimepie
          @CertTypePie = certtypepie
          @SSLBugsLoopholeHistogram = sslbugsloopholehistogram
          @ComplianceHistogram = compliancehistogram
        end

        def deserialize(params)
          unless params['SecurityLevelPie'].nil?
            @SecurityLevelPie = []
            params['SecurityLevelPie'].each do |i|
              chartnamevalue_tmp = ChartNameValue.new
              chartnamevalue_tmp.deserialize(i)
              @SecurityLevelPie << chartnamevalue_tmp
            end
          end
          unless params['CertBrandsPie'].nil?
            @CertBrandsPie = []
            params['CertBrandsPie'].each do |i|
              chartnamevalue_tmp = ChartNameValue.new
              chartnamevalue_tmp.deserialize(i)
              @CertBrandsPie << chartnamevalue_tmp
            end
          end
          unless params['CertValidTimePie'].nil?
            @CertValidTimePie = []
            params['CertValidTimePie'].each do |i|
              chartnamevalue_tmp = ChartNameValue.new
              chartnamevalue_tmp.deserialize(i)
              @CertValidTimePie << chartnamevalue_tmp
            end
          end
          unless params['CertTypePie'].nil?
            @CertTypePie = []
            params['CertTypePie'].each do |i|
              chartnamevalue_tmp = ChartNameValue.new
              chartnamevalue_tmp.deserialize(i)
              @CertTypePie << chartnamevalue_tmp
            end
          end
          unless params['SSLBugsLoopholeHistogram'].nil?
            @SSLBugsLoopholeHistogram = []
            params['SSLBugsLoopholeHistogram'].each do |i|
              charthistogram_tmp = ChartHistogram.new
              charthistogram_tmp.deserialize(i)
              @SSLBugsLoopholeHistogram << charthistogram_tmp
            end
          end
          unless params['ComplianceHistogram'].nil?
            @ComplianceHistogram = []
            params['ComplianceHistogram'].each do |i|
              charthistogram_tmp = ChartHistogram.new
              charthistogram_tmp.deserialize(i)
              @ComplianceHistogram << charthistogram_tmp
            end
          end
        end
      end

      # DeleteDomain请求参数结构体
      class DeleteDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainId: 域名ID，可通过<a href="https://cloud.tencent.com/document/api/1084/49339">搜索域名</a>接口获得
        # @type DomainId: Integer

        attr_accessor :DomainId

        def initialize(domainid=nil)
          @DomainId = domainid
        end

        def deserialize(params)
          @DomainId = params['DomainId']
        end
      end

      # DeleteDomain返回参数结构体
      class DeleteDomainResponse < TencentCloud::Common::AbstractModel
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

      # DescribeDashboard请求参数结构体
      class DescribeDashboardRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDashboard返回参数结构体
      class DescribeDashboardResponse < TencentCloud::Common::AbstractModel
        # @param Data: dashboard面板数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: :class:`Tencentcloud::Sslpod.v20190605.models.DashboardResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DashboardResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainCerts请求参数结构体
      class DescribeDomainCertsRequest < TencentCloud::Common::AbstractModel
        # @param DomainId: 域名ID，可通过搜索域名接口获得
        # @type DomainId: Integer

        attr_accessor :DomainId

        def initialize(domainid=nil)
          @DomainId = domainid
        end

        def deserialize(params)
          @DomainId = params['DomainId']
        end
      end

      # DescribeDomainCerts返回参数结构体
      class DescribeDomainCertsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 证书信息
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              certinfo_tmp = CertInfo.new
              certinfo_tmp.deserialize(i)
              @Data << certinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainTags请求参数结构体
      class DescribeDomainTagsRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDomainTags返回参数结构体
      class DescribeDomainTagsResponse < TencentCloud::Common::AbstractModel
        # @param Data: Tag数组
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # 监控域名列表
      class DescribeDomains < TencentCloud::Common::AbstractModel
        # @param Result: 列表数据
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Result: Array
        # @param SearchTotal: 搜索出来的数量
        # @type SearchTotal: Integer
        # @param Total: 总数
        # @type Total: Integer
        # @param AllowMonitoringCount: 允许的监控数量
        # @type AllowMonitoringCount: Integer
        # @param CurrentMonitoringCount: 当前监控的数量
        # @type CurrentMonitoringCount: Integer
        # @param AllowMaxAddDomain: 允许添加域名总数
        # @type AllowMaxAddDomain: Integer

        attr_accessor :Result, :SearchTotal, :Total, :AllowMonitoringCount, :CurrentMonitoringCount, :AllowMaxAddDomain

        def initialize(result=nil, searchtotal=nil, total=nil, allowmonitoringcount=nil, currentmonitoringcount=nil, allowmaxadddomain=nil)
          @Result = result
          @SearchTotal = searchtotal
          @Total = total
          @AllowMonitoringCount = allowmonitoringcount
          @CurrentMonitoringCount = currentmonitoringcount
          @AllowMaxAddDomain = allowmaxadddomain
        end

        def deserialize(params)
          unless params['Result'].nil?
            @Result = []
            params['Result'].each do |i|
              domainsiteinfo_tmp = DomainSiteInfo.new
              domainsiteinfo_tmp.deserialize(i)
              @Result << domainsiteinfo_tmp
            end
          end
          @SearchTotal = params['SearchTotal']
          @Total = params['Total']
          @AllowMonitoringCount = params['AllowMonitoringCount']
          @CurrentMonitoringCount = params['CurrentMonitoringCount']
          @AllowMaxAddDomain = params['AllowMaxAddDomain']
        end
      end

      # DescribeDomains请求参数结构体
      class DescribeDomainsRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量
        # @type Offset: Integer
        # @param Limit: 获取数量
        # @type Limit: Integer
        # @param SearchType: 搜索的类型有：none，tags，grade，brand，code，hash，limit，domain。
        # 选tags，入参请填Tag，
        # 选grade，入参请填Grade，
        # 选brand，入参请填Brand，
        # 选code，入参请填Code，
        # 选hash，入参请填Hash
        # 选limit，标识只返回数量信息
        # 选domain，入参请填Domain
        # @type SearchType: String
        # @param Tag: 标签，多个标签用逗号分隔
        # @type Tag: String
        # @param Grade: 等级
        # @type Grade: String
        # @param Brand: 品牌
        # @type Brand: String
        # @param Code: 混合搜索
        # @type Code: String
        # @param Hash: 证书指纹
        # @type Hash: String
        # @param Item: 搜索图标类型
        # @type Item: String
        # @param Status: 搜索图标值
        # @type Status: String
        # @param Domain: 搜索域名
        # @type Domain: String

        attr_accessor :Offset, :Limit, :SearchType, :Tag, :Grade, :Brand, :Code, :Hash, :Item, :Status, :Domain

        def initialize(offset=nil, limit=nil, searchtype=nil, tag=nil, grade=nil, brand=nil, code=nil, hash=nil, item=nil, status=nil, domain=nil)
          @Offset = offset
          @Limit = limit
          @SearchType = searchtype
          @Tag = tag
          @Grade = grade
          @Brand = brand
          @Code = code
          @Hash = hash
          @Item = item
          @Status = status
          @Domain = domain
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchType = params['SearchType']
          @Tag = params['Tag']
          @Grade = params['Grade']
          @Brand = params['Brand']
          @Code = params['Code']
          @Hash = params['Hash']
          @Item = params['Item']
          @Status = params['Status']
          @Domain = params['Domain']
        end
      end

      # DescribeDomains返回参数结构体
      class DescribeDomainsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 列表数据
        # @type Data: :class:`Tencentcloud::Sslpod.v20190605.models.DescribeDomains`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = DescribeDomains.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeNoticeInfo请求参数结构体
      class DescribeNoticeInfoRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeNoticeInfo返回参数结构体
      class DescribeNoticeInfoResponse < TencentCloud::Common::AbstractModel
        # @param Data: 通知信息结果
        # @type Data: :class:`Tencentcloud::Sslpod.v20190605.models.NoticeInfoResult`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = NoticeInfoResult.new
            @Data.deserialize(params['Data'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 监控的域名站点信息
      class DomainSiteInfo < TencentCloud::Common::AbstractModel
        # @param Id: ID标识
        # @type Id: Integer
        # @param Domain: 域名
        # @type Domain: String
        # @param Ip: IP地址
        # @type Ip: String
        # @param AutoIP: 是否自动获取IP：true：是，false:否
        # @type AutoIP: Boolean
        # @param Grade: 评级
        # "A+"，
        #  "A"，
        # "A-"，
        # "B"，
        # "C"，
        # "D"，
        #  "E"，
        #  "F"，
        # "T"，
        # @type Grade: String
        # @param Brand: 证书品牌
        # @type Brand: String
        # @param ServerType: 监控服务类型
        # 0 :Web
        # 1: SMTP
        # 2: IMAP
        # 3: POP3
        # @type ServerType: Integer
        # @param GradeCode: 评级Code
        # 0："unknown"，
        # 1："A+"，
        # 2： "A"，
        # 3："A-"，
        # 4："B"，
        # 5："C"，
        # 6："D"，
        # 7： "E"，
        # 8： "F"，
        # 9："T"，
        # @type GradeCode: Integer
        # @param Notice: 是否监控告警；true：是，false:否
        # @type Notice: Boolean
        # @param AccountDomainId: 账号域名关系ID
        # @type AccountDomainId: Integer
        # @param Tags: 标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tags: Array
        # @param Status: 域名状态:
        # 连接异常，
        # 证书已过期，
        # 证书已吊销，
        # 证书黑名单，
        # 证书域名不匹配，
        # 证书不可信，
        # 证书密钥弱，
        # 证书即将过期，少于7天，
        # 证书即将过期，少于30天，
        # 正常，
        # 部分异常
        # @type Status: String
        # @param Port: 域名端口
        # @type Port: String

        attr_accessor :Id, :Domain, :Ip, :AutoIP, :Grade, :Brand, :ServerType, :GradeCode, :Notice, :AccountDomainId, :Tags, :Status, :Port

        def initialize(id=nil, domain=nil, ip=nil, autoip=nil, grade=nil, brand=nil, servertype=nil, gradecode=nil, notice=nil, accountdomainid=nil, tags=nil, status=nil, port=nil)
          @Id = id
          @Domain = domain
          @Ip = ip
          @AutoIP = autoip
          @Grade = grade
          @Brand = brand
          @ServerType = servertype
          @GradeCode = gradecode
          @Notice = notice
          @AccountDomainId = accountdomainid
          @Tags = tags
          @Status = status
          @Port = port
        end

        def deserialize(params)
          @Id = params['Id']
          @Domain = params['Domain']
          @Ip = params['Ip']
          @AutoIP = params['AutoIP']
          @Grade = params['Grade']
          @Brand = params['Brand']
          @ServerType = params['ServerType']
          @GradeCode = params['GradeCode']
          @Notice = params['Notice']
          @AccountDomainId = params['AccountDomainId']
          @Tags = params['Tags']
          @Status = params['Status']
          @Port = params['Port']
        end
      end

      # 通知额度限制信息
      class LimitInfo < TencentCloud::Common::AbstractModel
        # @param Type: 通知类型：
        # limit_emai：邮件
        # limit_wechat：微信
        # limit_phone：手机
        # @type Type: String
        # @param Total: 总量
        # @type Total: Integer
        # @param Sent: 已发送
        # @type Sent: Integer

        attr_accessor :Type, :Total, :Sent

        def initialize(type=nil, total=nil, sent=nil)
          @Type = type
          @Total = total
          @Sent = sent
        end

        def deserialize(params)
          @Type = params['Type']
          @Total = params['Total']
          @Sent = params['Sent']
        end
      end

      # ModifyDomainTags请求参数结构体
      class ModifyDomainTagsRequest < TencentCloud::Common::AbstractModel
        # @param AccountDomainId: 账号下域名ID
        # @type AccountDomainId: Integer
        # @param Tags: 更新后的tag，多个以逗号隔开
        # @type Tags: String

        attr_accessor :AccountDomainId, :Tags

        def initialize(accountdomainid=nil, tags=nil)
          @AccountDomainId = accountdomainid
          @Tags = tags
        end

        def deserialize(params)
          @AccountDomainId = params['AccountDomainId']
          @Tags = params['Tags']
        end
      end

      # ModifyDomainTags返回参数结构体
      class ModifyDomainTagsResponse < TencentCloud::Common::AbstractModel
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

      # 通知信息结果
      class NoticeInfoResult < TencentCloud::Common::AbstractModel
        # @param Id: 通知ID
        # @type Id: Integer
        # @param NoticeType: 通知开关信息；0：关闭；15开启
        # @type NoticeType: Integer
        # @param LimitInfos: 额度信息
        # @type LimitInfos: Array

        attr_accessor :Id, :NoticeType, :LimitInfos

        def initialize(id=nil, noticetype=nil, limitinfos=nil)
          @Id = id
          @NoticeType = noticetype
          @LimitInfos = limitinfos
        end

        def deserialize(params)
          @Id = params['Id']
          @NoticeType = params['NoticeType']
          unless params['LimitInfos'].nil?
            @LimitInfos = []
            params['LimitInfos'].each do |i|
              limitinfo_tmp = LimitInfo.new
              limitinfo_tmp.deserialize(i)
              @LimitInfos << limitinfo_tmp
            end
          end
        end
      end

      # RefreshDomain请求参数结构体
      class RefreshDomainRequest < TencentCloud::Common::AbstractModel
        # @param DomainId: 域名列表中的ID，可通过搜索域名接口获得
        # @type DomainId: Integer

        attr_accessor :DomainId

        def initialize(domainid=nil)
          @DomainId = domainid
        end

        def deserialize(params)
          @DomainId = params['DomainId']
        end
      end

      # RefreshDomain返回参数结构体
      class RefreshDomainResponse < TencentCloud::Common::AbstractModel
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

      # ResolveDomain请求参数结构体
      class ResolveDomainRequest < TencentCloud::Common::AbstractModel
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

      # ResolveDomain返回参数结构体
      class ResolveDomainResponse < TencentCloud::Common::AbstractModel
        # @param Data: 响应数据
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId

        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end

