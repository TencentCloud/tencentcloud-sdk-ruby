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
  module Teo
    module V20220901
      # API 资源。
      class APIResource < TencentCloud::Common::AbstractModel
        # @param Id: 资源 ID。
        # @type Id: String
        # @param Name: 资源名称。
        # @type Name: String
        # @param APIServiceIds: API 资源关联的 API 服务 ID 列表。
        # @type APIServiceIds: Array
        # @param Path: 资源路径。
        # @type Path: String
        # @param Methods: 请求方法列表。支持以下取值：GET, POST, PUT, HEAD, PATCH, OPTIONS, DELETE。
        # @type Methods: Array
        # @param RequestConstraint: 请求内容匹配规则的具体内容，需符合表达式语法，详细规范参见产品文档。
        # @type RequestConstraint: String

        attr_accessor :Id, :Name, :APIServiceIds, :Path, :Methods, :RequestConstraint

        def initialize(id=nil, name=nil, apiserviceids=nil, path=nil, methods=nil, requestconstraint=nil)
          @Id = id
          @Name = name
          @APIServiceIds = apiserviceids
          @Path = path
          @Methods = methods
          @RequestConstraint = requestconstraint
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @APIServiceIds = params['APIServiceIds']
          @Path = params['Path']
          @Methods = params['Methods']
          @RequestConstraint = params['RequestConstraint']
        end
      end

      # API 服务配置。
      class APIService < TencentCloud::Common::AbstractModel
        # @param Id: API 服务 ID。
        # @type Id: String
        # @param Name: API 服务名称。
        # @type Name: String
        # @param BasePath: 基础路径。
        # @type BasePath: String

        attr_accessor :Id, :Name, :BasePath

        def initialize(id=nil, name=nil, basepath=nil)
          @Id = id
          @Name = name
          @BasePath = basepath
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @BasePath = params['BasePath']
        end
      end

      # 中国大陆加速优化配置。
      class AccelerateMainland < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启中国大陆加速优化配置，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 中国大陆加速优化配置。
      class AccelerateMainlandParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 中国大陆加速优化配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 加速类型
      class AccelerateType < TencentCloud::Common::AbstractModel
        # @param Switch: 加速开关。取值范围：
        # <li> on：打开;</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 加速域名
      class AccelerationDomain < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param DomainName: 加速域名名称。
        # @type DomainName: String
        # @param DomainStatus: 加速域名状态，取值有：
        # <li>online：已生效；</li>
        # <li>process：部署中；</li>
        # <li>offline：已停用；</li>
        # <li>forbidden：已封禁；</li>
        # <li>init：未生效，待激活站点；</li>
        # @type DomainStatus: String
        # @param OriginDetail: 源站信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginDetail: :class:`Tencentcloud::Teo.v20220901.models.OriginDetail`
        # @param OriginProtocol: 回源协议，取值有：
        # <li>FOLLOW: 协议跟随；</li>
        # <li>HTTP: HTTP协议回源；</li>
        # <li>HTTPS: HTTPS协议回源。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginProtocol: String
        # @param Certificate: 域名证书信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Certificate: :class:`Tencentcloud::Teo.v20220901.models.AccelerationDomainCertificate`
        # @param HttpOriginPort: HTTP回源端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpOriginPort: Integer
        # @param HttpsOriginPort: HTTPS回源端口。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpsOriginPort: Integer
        # @param IPv6Status: IPv6状态，取值有：
        # <li>follow：遵循站点IPv6配置；</li>
        # <li>on：开启状态；</li>
        # <li>off：关闭状态。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6Status: String
        # @param Cname: CNAME 地址。
        # @type Cname: String
        # @param IdentificationStatus: 加速域名归属权验证状态，取值有： <li>pending：待验证；</li> <li>finished：已完成验证。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IdentificationStatus: String
        # @param CreatedOn: 创建时间。
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间。
        # @type ModifiedOn: String
        # @param OwnershipVerification: 当域名需要进行归属权验证才能继续提供服务时，该对象会携带对应验证方式所需要的信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnershipVerification: :class:`Tencentcloud::Teo.v20220901.models.OwnershipVerification`

        attr_accessor :ZoneId, :DomainName, :DomainStatus, :OriginDetail, :OriginProtocol, :Certificate, :HttpOriginPort, :HttpsOriginPort, :IPv6Status, :Cname, :IdentificationStatus, :CreatedOn, :ModifiedOn, :OwnershipVerification

        def initialize(zoneid=nil, domainname=nil, domainstatus=nil, origindetail=nil, originprotocol=nil, certificate=nil, httporiginport=nil, httpsoriginport=nil, ipv6status=nil, cname=nil, identificationstatus=nil, createdon=nil, modifiedon=nil, ownershipverification=nil)
          @ZoneId = zoneid
          @DomainName = domainname
          @DomainStatus = domainstatus
          @OriginDetail = origindetail
          @OriginProtocol = originprotocol
          @Certificate = certificate
          @HttpOriginPort = httporiginport
          @HttpsOriginPort = httpsoriginport
          @IPv6Status = ipv6status
          @Cname = cname
          @IdentificationStatus = identificationstatus
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @OwnershipVerification = ownershipverification
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @DomainName = params['DomainName']
          @DomainStatus = params['DomainStatus']
          unless params['OriginDetail'].nil?
            @OriginDetail = OriginDetail.new
            @OriginDetail.deserialize(params['OriginDetail'])
          end
          @OriginProtocol = params['OriginProtocol']
          unless params['Certificate'].nil?
            @Certificate = AccelerationDomainCertificate.new
            @Certificate.deserialize(params['Certificate'])
          end
          @HttpOriginPort = params['HttpOriginPort']
          @HttpsOriginPort = params['HttpsOriginPort']
          @IPv6Status = params['IPv6Status']
          @Cname = params['Cname']
          @IdentificationStatus = params['IdentificationStatus']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          unless params['OwnershipVerification'].nil?
            @OwnershipVerification = OwnershipVerification.new
            @OwnershipVerification.deserialize(params['OwnershipVerification'])
          end
        end
      end

      # 加速域名所对应的证书信息。
      class AccelerationDomainCertificate < TencentCloud::Common::AbstractModel
        # @param Mode: 配置证书的模式，取值有： <li>disable：不配置证书；</li> <li>eofreecert：配置 EdgeOne 免费证书；</li> <li>sslcert：配置 SSL 证书。</li>
        # @type Mode: String
        # @param List: 服务端证书列表，相关证书部署在 EO 的入口侧。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type List: Array
        # @param ClientCertInfo: 在边缘双向认证场景下，该字段为客户端的 CA 证书，部署在 EO 节点内，用于 EO 节点认证客户端证书。
        # @type ClientCertInfo: :class:`Tencentcloud::Teo.v20220901.models.MutualTLS`
        # @param UpstreamCertInfo: 用于 EO 节点回源时携带的证书，源站启用双向认证握手时使用，用于源站认证客户端证书是否有效，确保请求来源于受信任的 EO 节点。
        # @type UpstreamCertInfo: :class:`Tencentcloud::Teo.v20220901.models.UpstreamCertInfo`

        attr_accessor :Mode, :List, :ClientCertInfo, :UpstreamCertInfo

        def initialize(mode=nil, list=nil, clientcertinfo=nil, upstreamcertinfo=nil)
          @Mode = mode
          @List = list
          @ClientCertInfo = clientcertinfo
          @UpstreamCertInfo = upstreamcertinfo
        end

        def deserialize(params)
          @Mode = params['Mode']
          unless params['List'].nil?
            @List = []
            params['List'].each do |i|
              certificateinfo_tmp = CertificateInfo.new
              certificateinfo_tmp.deserialize(i)
              @List << certificateinfo_tmp
            end
          end
          unless params['ClientCertInfo'].nil?
            @ClientCertInfo = MutualTLS.new
            @ClientCertInfo.deserialize(params['ClientCertInfo'])
          end
          unless params['UpstreamCertInfo'].nil?
            @UpstreamCertInfo = UpstreamCertInfo.new
            @UpstreamCertInfo.deserialize(params['UpstreamCertInfo'])
          end
        end
      end

      # 访问 URL 重定向 配置参数。
      class AccessURLRedirectParameters < TencentCloud::Common::AbstractModel
        # @param StatusCode: 状态码，取值为 301、302、303、307、308 之一。
        # @type StatusCode: Integer
        # @param Protocol: 目标请求协议，取值有：
        # <li>http：目标请求协议 HTTP；</li>
        # <li>https：目标请求协议 HTTPS；</li>
        # <li>follow：跟随请求。</li>
        # @type Protocol: String
        # @param HostName: 目标 HostName 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostName: :class:`Tencentcloud::Teo.v20220901.models.HostName`
        # @param URLPath: 目标路径。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type URLPath: :class:`Tencentcloud::Teo.v20220901.models.URLPath`
        # @param QueryString: 携带查询参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryString: :class:`Tencentcloud::Teo.v20220901.models.AccessURLRedirectQueryString`

        attr_accessor :StatusCode, :Protocol, :HostName, :URLPath, :QueryString

        def initialize(statuscode=nil, protocol=nil, hostname=nil, urlpath=nil, querystring=nil)
          @StatusCode = statuscode
          @Protocol = protocol
          @HostName = hostname
          @URLPath = urlpath
          @QueryString = querystring
        end

        def deserialize(params)
          @StatusCode = params['StatusCode']
          @Protocol = params['Protocol']
          unless params['HostName'].nil?
            @HostName = HostName.new
            @HostName.deserialize(params['HostName'])
          end
          unless params['URLPath'].nil?
            @URLPath = URLPath.new
            @URLPath.deserialize(params['URLPath'])
          end
          unless params['QueryString'].nil?
            @QueryString = AccessURLRedirectQueryString.new
            @QueryString.deserialize(params['QueryString'])
          end
        end
      end

      # 访问 URL 重定向 配置参数。
      class AccessURLRedirectQueryString < TencentCloud::Common::AbstractModel
        # @param Action: 执行动作，取值有：
        # <li>full：全部保留；</li>
        # <li>ignore：全部忽略。</li>
        # @type Action: String

        attr_accessor :Action

        def initialize(action=nil)
          @Action = action
        end

        def deserialize(params)
          @Action = params['Action']
        end
      end

      # 精准防护条件
      class AclCondition < TencentCloud::Common::AbstractModel
        # @param MatchFrom: 匹配字段，取值有：
        # <li>host：请求域名；</li>
        # <li>sip：客户端IP；</li>
        # <li>ua：User-Agent；</li>
        # <li>cookie：会话 Cookie；</li>
        # <li>cgi：CGI 脚本；</li>
        # <li>xff：XFF 扩展头部；</li>
        # <li>url：请求 URL；</li>
        # <li>accept：请求内容类型；</li>
        # <li>method：请求方式；</li>
        # <li>header：请求头部；</li>
        # <li>app_proto：应用层协议；</li>
        # <li>sip_proto：网络层协议；</li>
        # <li>uabot：UA 特征规则，仅bot自定义规则可用；</li>
        # <li>idcid：IDC 规则，仅bot自定义规则可用；</li>
        # <li>sipbot：搜索引擎规则，仅bot自定义规则可用；</li>
        # <li>portrait：画像分析，仅bot自定义规则可用；</li>
        # <li>header_seq：请求头顺序，仅bot自定义规则可用；</li>
        # <li>hdr：请求正文，仅Web防护自定义规则可用。</li>
        # @type MatchFrom: String
        # @param MatchParam: 匹配字符串。当 MatchFrom 为 header 时，可以填入 header 的 key 作为参数。
        # @type MatchParam: String
        # @param Operator: 匹配关系，取值有：
        # <li>equal：字符串等于；</li>
        # <li>not_equal：数值不等于；</li>
        # <li>include：字符包含；</li>
        # <li>not_include：字符不包含；</li>
        # <li>match：ip匹配；</li>
        # <li>not_match：ip不匹配；</li>
        # <li>include_area：地域包含；</li>
        # <li>is_empty：存在字段但值为空；</li>
        # <li>not_exists：不存在关键字段；</li>
        # <li>regexp：正则匹配；</li>
        # <li>len_gt：数值大于；</li>
        # <li>len_lt：数值小于；</li>
        # <li>len_eq：数值等于；</li>
        # <li>match_prefix：前缀匹配；</li>
        # <li>match_suffix：后缀匹配；</li>
        # <li>wildcard：通配符。</li>
        # @type Operator: String
        # @param MatchContent: 匹配内容。
        # @type MatchContent: String

        attr_accessor :MatchFrom, :MatchParam, :Operator, :MatchContent

        def initialize(matchfrom=nil, matchparam=nil, operator=nil, matchcontent=nil)
          @MatchFrom = matchfrom
          @MatchParam = matchparam
          @Operator = operator
          @MatchContent = matchcontent
        end

        def deserialize(params)
          @MatchFrom = params['MatchFrom']
          @MatchParam = params['MatchParam']
          @Operator = params['Operator']
          @MatchContent = params['MatchContent']
        end
      end

      # ACL配置
      class AclConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li> on：开启；</li>
        # <li> off：关闭。</li>
        # @type Switch: String
        # @param AclUserRules: 用户自定义规则。
        # @type AclUserRules: Array
        # @param Customizes: 托管定制规则
        # @type Customizes: Array

        attr_accessor :Switch, :AclUserRules, :Customizes

        def initialize(switch=nil, acluserrules=nil, customizes=nil)
          @Switch = switch
          @AclUserRules = acluserrules
          @Customizes = customizes
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['AclUserRules'].nil?
            @AclUserRules = []
            params['AclUserRules'].each do |i|
              acluserrule_tmp = AclUserRule.new
              acluserrule_tmp.deserialize(i)
              @AclUserRules << acluserrule_tmp
            end
          end
          unless params['Customizes'].nil?
            @Customizes = []
            params['Customizes'].each do |i|
              acluserrule_tmp = AclUserRule.new
              acluserrule_tmp.deserialize(i)
              @Customizes << acluserrule_tmp
            end
          end
        end
      end

      # 用户自定义规则
      class AclUserRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名。
        # @type RuleName: String
        # @param Action: 处罚动作，取值有：
        # <li>trans：放行；</li>
        # <li>drop：拦截；</li>
        # <li>monitor：观察；</li>
        # <li>ban：IP 封禁；</li>
        # <li>redirect：重定向；</li>
        # <li>page：指定页面；</li>
        # <li>alg：JavaScript 挑战。</li>
        # @type Action: String
        # @param RuleStatus: 规则状态，取值有：
        # <li>on：生效；</li>
        # <li>off：失效。</li>
        # @type RuleStatus: String
        # @param AclConditions: 自定义规则。
        # @type AclConditions: Array
        # @param RulePriority: 规则优先级，取值范围0-100。
        # @type RulePriority: Integer
        # @param RuleID: 规则 Id。仅出参使用。
        # @type RuleID: Integer
        # @param UpdateTime: 更新时间。仅出参使用。
        # @type UpdateTime: String
        # @param PunishTime: ip 封禁的惩罚时间。Action 是 ban 时必填，且不能为空，取值范围0-2天。
        # @type PunishTime: Integer
        # @param PunishTimeUnit: ip 封禁的惩罚时间单位，取值有：
        # <li>second：秒；</li>
        # <li>minutes：分；</li>
        # <li>hour：小时。</li>默认为 second。
        # @type PunishTimeUnit: String
        # @param Name: 自定义返回页面的名称。Action 是 page 时必填，且不能为空。
        # @type Name: String
        # @param PageId: 自定义返回页面的实例 Id。默认为0，代表使用系统默认拦截页面。该参数已废弃。
        # @type PageId: Integer
        # @param CustomResponseId: 自定义响应 Id。该 Id 可通过查询自定义错误页列表接口获取。默认值为default，使用系统默认页面。Action 是 page 时必填，且不能为空。
        # @type CustomResponseId: String
        # @param ResponseCode: 自定义返回页面的响应码。Action 是 page 时必填，且不能为空，取值: 100~600，不支持 3xx 响应码。默认值：567。
        # @type ResponseCode: Integer
        # @param RedirectUrl: 重定向时候的地址。Action 是 redirect 时必填，且不能为空。
        # @type RedirectUrl: String

        attr_accessor :RuleName, :Action, :RuleStatus, :AclConditions, :RulePriority, :RuleID, :UpdateTime, :PunishTime, :PunishTimeUnit, :Name, :PageId, :CustomResponseId, :ResponseCode, :RedirectUrl

        def initialize(rulename=nil, action=nil, rulestatus=nil, aclconditions=nil, rulepriority=nil, ruleid=nil, updatetime=nil, punishtime=nil, punishtimeunit=nil, name=nil, pageid=nil, customresponseid=nil, responsecode=nil, redirecturl=nil)
          @RuleName = rulename
          @Action = action
          @RuleStatus = rulestatus
          @AclConditions = aclconditions
          @RulePriority = rulepriority
          @RuleID = ruleid
          @UpdateTime = updatetime
          @PunishTime = punishtime
          @PunishTimeUnit = punishtimeunit
          @Name = name
          @PageId = pageid
          @CustomResponseId = customresponseid
          @ResponseCode = responsecode
          @RedirectUrl = redirecturl
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Action = params['Action']
          @RuleStatus = params['RuleStatus']
          unless params['AclConditions'].nil?
            @AclConditions = []
            params['AclConditions'].each do |i|
              aclcondition_tmp = AclCondition.new
              aclcondition_tmp.deserialize(i)
              @AclConditions << aclcondition_tmp
            end
          end
          @RulePriority = params['RulePriority']
          @RuleID = params['RuleID']
          @UpdateTime = params['UpdateTime']
          @PunishTime = params['PunishTime']
          @PunishTimeUnit = params['PunishTimeUnit']
          @Name = params['Name']
          @PageId = params['PageId']
          @CustomResponseId = params['CustomResponseId']
          @ResponseCode = params['ResponseCode']
          @RedirectUrl = params['RedirectUrl']
        end
      end

      # 规则引擎功能项操作，对于一种功能只对应下面三种类型的其中一种，RuleAction 数组中的每一项只能是其中一个类型，更多功能项的填写规范可调用接口 [查询规则引擎的设置参数](https://cloud.tencent.com/document/product/1552/80618) 查看。
      class Action < TencentCloud::Common::AbstractModel
        # @param NormalAction: 常规功能操作，选择该类型的功能项有：
        # <li> 访问URL 重写（AccessUrlRedirect）；</li>
        # <li> 回源 URL 重写 （UpstreamUrlRedirect）；</li>
        # <li> QUIC（QUIC）；</li>
        # <li> WebSocket （WebSocket）；</li>
        # <li> 视频拖拽（VideoSeek）；</li>
        # <li> Token 鉴权（Authentication）；</li>
        # <li> 自定义CacheKey（CacheKey）；</li>
        # <li> 节点缓存 TTL （Cache）；</li>
        # <li> 浏览器缓存 TTL（MaxAge）；</li>
        # <li> 离线缓存（OfflineCache）；</li>
        # <li> 智能加速（SmartRouting）；</li>
        # <li> 分片回源（RangeOriginPull）；</li>
        # <li> HTTP/2 回源（UpstreamHttp2）；</li>
        # <li> Host Header 重写（HostHeader）；</li>
        # <li> 强制 HTTPS（ForceRedirect）；</li>
        # <li> 回源 HTTPS（OriginPullProtocol）；</li>
        # <li> 单连接下载限速（ResponseSpeedLimit）；</li>
        # <li> 缓存预刷新（CachePrefresh）；</li>
        # <li> 智能压缩（Compression）；</li>
        # <li> Hsts；</li>
        # <li> ClientIpHeader；</li>
        # <li> SslTlsSecureConf；</li>
        # <li> OcspStapling；</li>
        # <li> HTTP/2 访问（Http2）；</li>
        # <li> 回源跟随重定向(UpstreamFollowRedirect)；</li>
        # <li> 修改源站(Origin)。</li>
        # <li> 七层回源超时(HTTPUpstreamTimeout)。</li>
        # <li> Http应答（HttpResponse）。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NormalAction: :class:`Tencentcloud::Teo.v20220901.models.NormalAction`
        # @param RewriteAction: 带有请求头/响应头的功能操作，选择该类型的功能项有：
        # <li> 修改 HTTP 请求头（RequestHeader）；</li>
        # <li> 修改HTTP响应头（ResponseHeader）。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RewriteAction: :class:`Tencentcloud::Teo.v20220901.models.RewriteAction`
        # @param CodeAction: 带有状态码的功能操作，选择该类型的功能项有：
        # <li> 自定义错误页面（ErrorPage）；</li>
        # <li> 状态码缓存 TTL（StatusCodeCache）。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CodeAction: :class:`Tencentcloud::Teo.v20220901.models.CodeAction`

        attr_accessor :NormalAction, :RewriteAction, :CodeAction

        def initialize(normalaction=nil, rewriteaction=nil, codeaction=nil)
          @NormalAction = normalaction
          @RewriteAction = rewriteaction
          @CodeAction = codeaction
        end

        def deserialize(params)
          unless params['NormalAction'].nil?
            @NormalAction = NormalAction.new
            @NormalAction.deserialize(params['NormalAction'])
          end
          unless params['RewriteAction'].nil?
            @RewriteAction = RewriteAction.new
            @RewriteAction.deserialize(params['RewriteAction'])
          end
          unless params['CodeAction'].nil?
            @CodeAction = CodeAction.new
            @CodeAction.deserialize(params['CodeAction'])
          end
        end
      end

      # 自适应频控
      class AdaptiveFrequencyControl < TencentCloud::Common::AbstractModel
        # @param Enabled: 自适应频控是否开启。取值有：<li>on：开启；</li><li>off：关闭。</li>
        # @type Enabled: String
        # @param Sensitivity: 自适应频控的限制等级，当 Enabled 为 on 时，此字段必填。取值有：<li>Loose：宽松；</li><li>Moderate：适中；</li><li>Strict：严格。</li>
        # @type Sensitivity: String
        # @param Action: 自适应频控的处置方式，当 Enabled 为 on 时，此字段必填。SecurityAction 的 Name 取值支持：<li>Monitor：观察；</li><li>Deny：拦截；</li><li>Challenge：挑战，其中ChallengeActionParameters.Name仅支持JSChallenge。</li>
        # @type Action: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`

        attr_accessor :Enabled, :Sensitivity, :Action

        def initialize(enabled=nil, sensitivity=nil, action=nil)
          @Enabled = enabled
          @Sensitivity = sensitivity
          @Action = action
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @Sensitivity = params['Sensitivity']
          unless params['Action'].nil?
            @Action = SecurityAction.new
            @Action.deserialize(params['Action'])
          end
        end
      end

      # IP 网段详情。
      class Addresses < TencentCloud::Common::AbstractModel
        # @param IPv4: IPv4 网段列表。
        # @type IPv4: Array
        # @param IPv6: IPv6 网段列表。
        # @type IPv6: Array

        attr_accessor :IPv4, :IPv6

        def initialize(ipv4=nil, ipv6=nil)
          @IPv4 = ipv4
          @IPv6 = ipv6
        end

        def deserialize(params)
          @IPv4 = params['IPv4']
          @IPv6 = params['IPv6']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询，支持模糊查询。例如过滤ID、名称、状态等。
      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class AdvancedFilter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
        # @type Values: Array
        # @param Fuzzy: 是否启用模糊查询。
        # @type Fuzzy: Boolean

        attr_accessor :Name, :Values, :Fuzzy

        def initialize(name=nil, values=nil, fuzzy=nil)
          @Name = name
          @Values = values
          @Fuzzy = fuzzy
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
          @Fuzzy = params['Fuzzy']
        end
      end

      # AI规则引擎防护
      class AiRule < TencentCloud::Common::AbstractModel
        # @param Mode: AI规则引擎状态，取值有：
        # <li> smart_status_close：关闭；</li>
        # <li> smart_status_open：拦截处置；</li>
        # <li> smart_status_observe：观察处置。</li>
        # @type Mode: String

        attr_accessor :Mode

        def initialize(mode=nil)
          @Mode = mode
        end

        def deserialize(params)
          @Mode = params['Mode']
        end
      end

      # Bot主动特征识别客户端行为校验。
      class AlgDetectJS < TencentCloud::Common::AbstractModel
        # @param Name: 操作名称。
        # @type Name: String
        # @param WorkLevel: 工作量证明 (proof_Of-Work)校验强度，默认low，取值有：
        # <li>low：低；</li>
        # <li>middle：中；</li>
        # <li>high：高。</li>
        # @type WorkLevel: String
        # @param ExecuteMode: 执行方式，js延迟执行的时间。单位为ms，默认500，取值：0～1000。
        # @type ExecuteMode: Integer
        # @param InvalidStatTime: 客户端末启用JS（末完成检测）统计周期。单位为秒，默认10，取值：5～3600。
        # @type InvalidStatTime: Integer
        # @param InvalidThreshold: 客户端末启用JS（末完成检测）触发阈值。单位为次，默认300，取值：1～100000000。
        # @type InvalidThreshold: Integer
        # @param AlgDetectResults: Bot主动特征识别客户端行为校验结果。
        # @type AlgDetectResults: Array

        attr_accessor :Name, :WorkLevel, :ExecuteMode, :InvalidStatTime, :InvalidThreshold, :AlgDetectResults

        def initialize(name=nil, worklevel=nil, executemode=nil, invalidstattime=nil, invalidthreshold=nil, algdetectresults=nil)
          @Name = name
          @WorkLevel = worklevel
          @ExecuteMode = executemode
          @InvalidStatTime = invalidstattime
          @InvalidThreshold = invalidthreshold
          @AlgDetectResults = algdetectresults
        end

        def deserialize(params)
          @Name = params['Name']
          @WorkLevel = params['WorkLevel']
          @ExecuteMode = params['ExecuteMode']
          @InvalidStatTime = params['InvalidStatTime']
          @InvalidThreshold = params['InvalidThreshold']
          unless params['AlgDetectResults'].nil?
            @AlgDetectResults = []
            params['AlgDetectResults'].each do |i|
              algdetectresult_tmp = AlgDetectResult.new
              algdetectresult_tmp.deserialize(i)
              @AlgDetectResults << algdetectresult_tmp
            end
          end
        end
      end

      # Bot主动特征识别校验结果。
      class AlgDetectResult < TencentCloud::Common::AbstractModel
        # @param Result: 校验结果，取值有：
        # <li>invalid：不合法Cookie；</li>
        # <li>cookie_empty：末携带Cookie或Cookie己过期；</li>
        # <li>js_empty：客户端末启用JS（末完成检测）；</li>
        # <li>low：会话速率和周期特征校验低风险；</li>
        # <li>middle：会话速率和周期特征校验中风险；</li>
        # <li>high：会话速率和周期特征校验高风险；</li>
        # <li>timeout：检测超时时长；</li>
        # <li>not_browser：不合法浏览器；</li>
        # <li>is_bot：Bot客户端。</li>
        # @type Result: String
        # @param Action: 处罚动作，取值有：
        # <li>drop：拦截；</li>
        # <li>monitor：观察；</li>
        # <li>silence：静默；</li>
        # <li>shortdelay：（短时间）等待后响应；</li>
        # <li>longdelay：（长时间）等待后响应。</li>
        # @type Action: String

        attr_accessor :Result, :Action

        def initialize(result=nil, action=nil)
          @Result = result
          @Action = action
        end

        def deserialize(params)
          @Result = params['Result']
          @Action = params['Action']
        end
      end

      # Bot主动特征识别规则。
      class AlgDetectRule < TencentCloud::Common::AbstractModel
        # @param RuleID: 规则id。
        # @type RuleID: Integer
        # @param RuleName: 规则名。
        # @type RuleName: String
        # @param Switch: 规则开关。
        # @type Switch: String
        # @param AlgConditions: 自定义规则。
        # @type AlgConditions: Array
        # @param AlgDetectSession: Cookie校验和会话行为分析。
        # @type AlgDetectSession: :class:`Tencentcloud::Teo.v20220901.models.AlgDetectSession`
        # @param AlgDetectJS: 客户端行为校验。
        # @type AlgDetectJS: Array
        # @param UpdateTime: 更新时间。仅出参使用。
        # @type UpdateTime: String

        attr_accessor :RuleID, :RuleName, :Switch, :AlgConditions, :AlgDetectSession, :AlgDetectJS, :UpdateTime

        def initialize(ruleid=nil, rulename=nil, switch=nil, algconditions=nil, algdetectsession=nil, algdetectjs=nil, updatetime=nil)
          @RuleID = ruleid
          @RuleName = rulename
          @Switch = switch
          @AlgConditions = algconditions
          @AlgDetectSession = algdetectsession
          @AlgDetectJS = algdetectjs
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @RuleID = params['RuleID']
          @RuleName = params['RuleName']
          @Switch = params['Switch']
          unless params['AlgConditions'].nil?
            @AlgConditions = []
            params['AlgConditions'].each do |i|
              aclcondition_tmp = AclCondition.new
              aclcondition_tmp.deserialize(i)
              @AlgConditions << aclcondition_tmp
            end
          end
          unless params['AlgDetectSession'].nil?
            @AlgDetectSession = AlgDetectSession.new
            @AlgDetectSession.deserialize(params['AlgDetectSession'])
          end
          unless params['AlgDetectJS'].nil?
            @AlgDetectJS = []
            params['AlgDetectJS'].each do |i|
              algdetectjs_tmp = AlgDetectJS.new
              algdetectjs_tmp.deserialize(i)
              @AlgDetectJS << algdetectjs_tmp
            end
          end
          @UpdateTime = params['UpdateTime']
        end
      end

      # Cookie校验与会话跟踪。
      class AlgDetectSession < TencentCloud::Common::AbstractModel
        # @param Name: 操作名称。
        # @type Name: String
        # @param DetectMode: 校验方式，默认update_detect，取值有：
        # <li>detect：仅校验；</li>
        # <li>update_detect：更新Cookie并校验。</li>
        # @type DetectMode: String
        # @param SessionAnalyzeSwitch: 会话速率和周期特征校验开关，默认off，取值有：
        # <li>off：关闭；</li>
        # <li>on：打开。</li>
        # @type SessionAnalyzeSwitch: String
        # @param InvalidStatTime: 校验结果为未携带Cookie或Cookie已过期的统计周期。单位为秒，默认10，取值：5～3600。
        # @type InvalidStatTime: Integer
        # @param InvalidThreshold: 校验结果为未携带Cookie或Cookie已过期的触发阈值。单位为次，默认300，取值：1～100000000。
        # @type InvalidThreshold: Integer
        # @param AlgDetectResults: Cookie校验校验结果。
        # @type AlgDetectResults: Array
        # @param SessionBehaviors: 会话速率和周期特征校验结果。
        # @type SessionBehaviors: Array

        attr_accessor :Name, :DetectMode, :SessionAnalyzeSwitch, :InvalidStatTime, :InvalidThreshold, :AlgDetectResults, :SessionBehaviors

        def initialize(name=nil, detectmode=nil, sessionanalyzeswitch=nil, invalidstattime=nil, invalidthreshold=nil, algdetectresults=nil, sessionbehaviors=nil)
          @Name = name
          @DetectMode = detectmode
          @SessionAnalyzeSwitch = sessionanalyzeswitch
          @InvalidStatTime = invalidstattime
          @InvalidThreshold = invalidthreshold
          @AlgDetectResults = algdetectresults
          @SessionBehaviors = sessionbehaviors
        end

        def deserialize(params)
          @Name = params['Name']
          @DetectMode = params['DetectMode']
          @SessionAnalyzeSwitch = params['SessionAnalyzeSwitch']
          @InvalidStatTime = params['InvalidStatTime']
          @InvalidThreshold = params['InvalidThreshold']
          unless params['AlgDetectResults'].nil?
            @AlgDetectResults = []
            params['AlgDetectResults'].each do |i|
              algdetectresult_tmp = AlgDetectResult.new
              algdetectresult_tmp.deserialize(i)
              @AlgDetectResults << algdetectresult_tmp
            end
          end
          unless params['SessionBehaviors'].nil?
            @SessionBehaviors = []
            params['SessionBehaviors'].each do |i|
              algdetectresult_tmp = AlgDetectResult.new
              algdetectresult_tmp.deserialize(i)
              @SessionBehaviors << algdetectresult_tmp
            end
          end
        end
      end

      # 别称域名信息。
      class AliasDomain < TencentCloud::Common::AbstractModel
        # @param AliasName: 别称域名名称。
        # @type AliasName: String
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param TargetName: 目标域名名称。
        # @type TargetName: String
        # @param Status: 别称域名状态，取值有：
        # <li> active：已生效； </li>
        # <li> pending：部署中；</li>
        # <li> conflict：被找回。 </li>
        # <li> stop：已停用；</li>
        # @type Status: String
        # @param ForbidMode: 封禁模式，取值有：
        # <li> 0：未封禁； </li>
        # <li> 11：合规封禁；</li>
        # <li> 14：未备案封禁。</li>
        # @type ForbidMode: Integer
        # @param CreatedOn: 别称域名创建时间。
        # @type CreatedOn: String
        # @param ModifiedOn: 别称域名修改时间。
        # @type ModifiedOn: String

        attr_accessor :AliasName, :ZoneId, :TargetName, :Status, :ForbidMode, :CreatedOn, :ModifiedOn

        def initialize(aliasname=nil, zoneid=nil, targetname=nil, status=nil, forbidmode=nil, createdon=nil, modifiedon=nil)
          @AliasName = aliasname
          @ZoneId = zoneid
          @TargetName = targetname
          @Status = status
          @ForbidMode = forbidmode
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
        end

        def deserialize(params)
          @AliasName = params['AliasName']
          @ZoneId = params['ZoneId']
          @TargetName = params['TargetName']
          @Status = params['Status']
          @ForbidMode = params['ForbidMode']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
        end
      end

      # Web 安全 Allow 的附加参数
      class AllowActionParameters < TencentCloud::Common::AbstractModel
        # @param MinDelayTime: 最小延迟响应时间，当配置为 0s 时，表示不延迟直接响应。支持的单位有：<li>s：秒，取值范围 0～5。</li>
        # @type MinDelayTime: String
        # @param MaxDelayTime: 最大延迟响应时间，支持的单位有：<li>s：秒，取值范围 5～10。</li>
        # @type MaxDelayTime: String

        attr_accessor :MinDelayTime, :MaxDelayTime

        def initialize(mindelaytime=nil, maxdelaytime=nil)
          @MinDelayTime = mindelaytime
          @MaxDelayTime = maxdelaytime
        end

        def deserialize(params)
          @MinDelayTime = params['MinDelayTime']
          @MaxDelayTime = params['MaxDelayTime']
        end
      end

      # 应用代理实例
      class ApplicationProxy < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param ProxyId: 代理ID。
        # @type ProxyId: String
        # @param ProxyName: 当ProxyType=hostname时，表示域名或子域名；
        # 当ProxyType=instance时，表示代理名称。
        # @type ProxyName: String
        # @param ProxyType: 四层代理模式，取值有：
        # <li>hostname：表示子域名模式；</li>
        # <li>instance：表示实例模式。</li>
        # @type ProxyType: String
        # @param PlatType: 调度模式，取值有：
        # <li>ip：表示Anycast IP调度；</li>
        # <li>domain：表示CNAME调度。</li>
        # @type PlatType: String
        # @param Area: 加速区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # 默认值：overseas
        # @type Area: String
        # @param SecurityType: 是否开启安全，取值有：
        # <li>0：关闭安全；</li>
        # <li>1：开启安全。</li>
        # @type SecurityType: Integer
        # @param AccelerateType: 是否开启加速，取值有：
        # <li>0：关闭加速；</li>
        # <li>1：开启加速。</li>
        # @type AccelerateType: Integer
        # @param SessionPersistTime: 会话保持时间。
        # @type SessionPersistTime: Integer
        # @param Status: 状态，取值有：
        # <li>online：启用；</li>
        # <li>offline：停用；</li>
        # <li>progress：部署中；</li>
        # <li>stopping：停用中；</li>
        # <li>fail：部署失败/停用失败。</li>
        # @type Status: String
        # @param BanStatus: 封禁状态，取值有：
        # <li>banned：已封禁;</li>
        # <li>banning：封禁中；</li>
        # <li>recover：已解封；</li>
        # <li>recovering：解封禁中。</li>
        # @type BanStatus: String
        # @param ScheduleValue: 调度信息。
        # @type ScheduleValue: Array
        # @param HostId: 当ProxyType=hostname时：
        # 表示代理加速唯一标识。
        # @type HostId: String
        # @param Ipv6: Ipv6访问配置。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220901.models.Ipv6`
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String
        # @param ApplicationProxyRules: 规则列表。
        # @type ApplicationProxyRules: Array
        # @param AccelerateMainland: 中国大陆加速优化配置。
        # @type AccelerateMainland: :class:`Tencentcloud::Teo.v20220901.models.AccelerateMainland`

        attr_accessor :ZoneId, :ZoneName, :ProxyId, :ProxyName, :ProxyType, :PlatType, :Area, :SecurityType, :AccelerateType, :SessionPersistTime, :Status, :BanStatus, :ScheduleValue, :HostId, :Ipv6, :UpdateTime, :ApplicationProxyRules, :AccelerateMainland

        def initialize(zoneid=nil, zonename=nil, proxyid=nil, proxyname=nil, proxytype=nil, plattype=nil, area=nil, securitytype=nil, acceleratetype=nil, sessionpersisttime=nil, status=nil, banstatus=nil, schedulevalue=nil, hostid=nil, ipv6=nil, updatetime=nil, applicationproxyrules=nil, acceleratemainland=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @ProxyId = proxyid
          @ProxyName = proxyname
          @ProxyType = proxytype
          @PlatType = plattype
          @Area = area
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @SessionPersistTime = sessionpersisttime
          @Status = status
          @BanStatus = banstatus
          @ScheduleValue = schedulevalue
          @HostId = hostid
          @Ipv6 = ipv6
          @UpdateTime = updatetime
          @ApplicationProxyRules = applicationproxyrules
          @AccelerateMainland = acceleratemainland
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @ProxyType = params['ProxyType']
          @PlatType = params['PlatType']
          @Area = params['Area']
          @SecurityType = params['SecurityType']
          @AccelerateType = params['AccelerateType']
          @SessionPersistTime = params['SessionPersistTime']
          @Status = params['Status']
          @BanStatus = params['BanStatus']
          @ScheduleValue = params['ScheduleValue']
          @HostId = params['HostId']
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          @UpdateTime = params['UpdateTime']
          unless params['ApplicationProxyRules'].nil?
            @ApplicationProxyRules = []
            params['ApplicationProxyRules'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @ApplicationProxyRules << applicationproxyrule_tmp
            end
          end
          unless params['AccelerateMainland'].nil?
            @AccelerateMainland = AccelerateMainland.new
            @AccelerateMainland.deserialize(params['AccelerateMainland'])
          end
        end
      end

      # 应用代理规则
      class ApplicationProxyRule < TencentCloud::Common::AbstractModel
        # @param Proto: 协议，取值有：
        # <li>TCP：TCP协议；</li>
        # <li>UDP：UDP协议。</li>
        # @type Proto: String
        # @param Port: 端口，支持格式：
        # <li>单个端口，如：80。</li>
        # <li>端口段，如：81-82。表示81，82两个端口。</li>
        # 注意：一条规则最多可填写20个端口。
        # @type Port: Array
        # @param OriginType: 源站类型，取值有：
        # <li>custom：手动添加；</li>
        # <li>loadbalancer：负载均衡；</li>
        # <li>origins：源站组。</li>
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # <li>当 OriginType 为 custom 时，表示一个或多个源站，如`["8.8.8.8","9.9.9.9"]` 或 `OriginValue=["test.com"]`；</li>
        # <li>当 OriginType 为 loadbalancer 时，表示一个负载均衡，如`["lb-xdffsfasdfs"]`；</li>
        # <li>当 OriginType 为 origins 时，要求有且仅有一个元素，表示源站组ID，如`["origin-537f5b41-162a-11ed-abaa-525400c5da15"]`。</li>
        # @type OriginValue: Array
        # @param RuleId: 规则ID。
        # @type RuleId: String
        # @param Status: 状态，取值有：
        # <li>online：启用；</li>
        # <li>offline：停用；</li>
        # <li>progress：部署中；</li>
        # <li>stopping：停用中；</li>
        # <li>fail：部署失败/停用失败。</li>
        # @type Status: String
        # @param ForwardClientIp: 传递客户端IP，取值有：
        # <li>TOA：TOA（仅Proto=TCP时可选）；</li>
        # <li>PPV1：Proxy Protocol传递，协议版本V1（仅Proto=TCP时可选）；</li>
        # <li>PPV2：Proxy Protocol传递，协议版本V2；</li>
        # <li>OFF：不传递。</li>默认值：OFF。
        # @type ForwardClientIp: String
        # @param SessionPersist: 是否开启会话保持，取值有：
        # <li>true：开启；</li>
        # <li>false：关闭。</li>默认值：false。
        # @type SessionPersist: Boolean
        # @param SessionPersistTime: 会话保持的时间，只有当SessionPersist为true时，该值才会生效。
        # @type SessionPersistTime: Integer
        # @param OriginPort: 源站端口，支持格式：
        # <li>单端口，如：80。</li>
        # <li>端口段：81-82，表示81，82两个端口。</li>
        # @type OriginPort: String
        # @param RuleTag: 规则标签。
        # @type RuleTag: String

        attr_accessor :Proto, :Port, :OriginType, :OriginValue, :RuleId, :Status, :ForwardClientIp, :SessionPersist, :SessionPersistTime, :OriginPort, :RuleTag

        def initialize(proto=nil, port=nil, origintype=nil, originvalue=nil, ruleid=nil, status=nil, forwardclientip=nil, sessionpersist=nil, sessionpersisttime=nil, originport=nil, ruletag=nil)
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @RuleId = ruleid
          @Status = status
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @SessionPersistTime = sessionpersisttime
          @OriginPort = originport
          @RuleTag = ruletag
        end

        def deserialize(params)
          @Proto = params['Proto']
          @Port = params['Port']
          @OriginType = params['OriginType']
          @OriginValue = params['OriginValue']
          @RuleId = params['RuleId']
          @Status = params['Status']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          @SessionPersistTime = params['SessionPersistTime']
          @OriginPort = params['OriginPort']
          @RuleTag = params['RuleTag']
        end
      end

      # 站点归属信息
      class AscriptionInfo < TencentCloud::Common::AbstractModel
        # @param Subdomain: 主机记录。
        # @type Subdomain: String
        # @param RecordType: 记录类型。
        # @type RecordType: String
        # @param RecordValue: 记录值。
        # @type RecordValue: String

        attr_accessor :Subdomain, :RecordType, :RecordValue

        def initialize(subdomain=nil, recordtype=nil, recordvalue=nil)
          @Subdomain = subdomain
          @RecordType = recordtype
          @RecordValue = recordvalue
        end

        def deserialize(params)
          @Subdomain = params['Subdomain']
          @RecordType = params['RecordType']
          @RecordValue = params['RecordValue']
        end
      end

      # 音频流配置参数。
      class AudioTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Codec: 音频流的编码格式。可选值为：
        # <li>libfdk_aac。</li>
        # @type Codec: String
        # @param AudioChannel: 音频通道数，可选值：<li>2：双通道。</li>默认值：2。
        # @type AudioChannel: Integer

        attr_accessor :Codec, :AudioChannel

        def initialize(codec=nil, audiochannel=nil)
          @Codec = codec
          @AudioChannel = audiochannel
        end

        def deserialize(params)
          @Codec = params['Codec']
          @AudioChannel = params['AudioChannel']
        end
      end

      # Token 鉴权 配置参数。
      class AuthenticationParameters < TencentCloud::Common::AbstractModel
        # @param AuthType: 鉴权类型。取值有：

        # <li>TypeA：鉴权方式 A 类型，具体含义请参考 [鉴权方式 A](https://cloud.tencent.com/document/product/1552/109329)；</li>
        # <li>TypeB：鉴权方式 B 类型，具体含义请参考 [鉴权方式 B](https://cloud.tencent.com/document/product/1552/109330)；</li>
        # <li>TypeC：鉴权方式 C 类型，具体含义请参考 [鉴权方式 C](https://cloud.tencent.com/document/product/1552/109331)；</li>
        # <li>TypeD：鉴权方式 D 类型，具体含义请参考 [鉴权方式 D](https://cloud.tencent.com/document/product/1552/109332)；</li>
        # <li>TypeVOD：鉴权方式 V 类型，具体含义请参考 [鉴权方式 V](https://cloud.tencent.com/document/product/1552/109333)。</li>
        # @type AuthType: String
        # @param SecretKey: 主鉴权密钥，由 6～40 位大小写英文字母或数字组成，不能包含 " 和 $。
        # @type SecretKey: String
        # @param Timeout: 鉴权 URL 的有效时长，单位为秒，取值：1～630720000。用于判断客户端访问请求是否过期：
        # <li>若当前时间超过 “timestamp + 有效时长” 时间，则为过期请求，直接返回 403。</li>
        # <li>若当前时间未超过 “timestamp + 有效时长” 时间，则请求未过期，继续校验 md5 字符串。</li>注意：当 AuthType 为 TypeA、TypeB、TypeC、TypeD 之一时，此字段必填。
        # @type Timeout: Integer
        # @param BackupSecretKey: 备鉴权密钥，由 6～40 位大小写英文字母或数字组成，不能包含 " 和 $。
        # @type BackupSecretKey: String
        # @param AuthParam: 鉴权参数名称，节点将校验此参数名对应的值。由 1～100 位大小写字母、数字或下划线组成。<br>注意：当 AuthType 为 TypeA、TypeD 之一时，此字段必填。
        # @type AuthParam: String
        # @param TimeParam: 鉴权时间戳，和 AuthParam 字段的值不能相同。<br>注意：当 AuthType 为 TypeD 时，此字段必填。
        # @type TimeParam: String
        # @param TimeFormat: 鉴权时间格式，取值有：
        # <li>dec：十进制；</li>
        # <li>hex：十六进制。</li>注意：当 AuthType 为 TypeD 时，此字段必填。默认为 hex。
        # @type TimeFormat: String

        attr_accessor :AuthType, :SecretKey, :Timeout, :BackupSecretKey, :AuthParam, :TimeParam, :TimeFormat

        def initialize(authtype=nil, secretkey=nil, timeout=nil, backupsecretkey=nil, authparam=nil, timeparam=nil, timeformat=nil)
          @AuthType = authtype
          @SecretKey = secretkey
          @Timeout = timeout
          @BackupSecretKey = backupsecretkey
          @AuthParam = authparam
          @TimeParam = timeparam
          @TimeFormat = timeformat
        end

        def deserialize(params)
          @AuthType = params['AuthType']
          @SecretKey = params['SecretKey']
          @Timeout = params['Timeout']
          @BackupSecretKey = params['BackupSecretKey']
          @AuthParam = params['AuthParam']
          @TimeParam = params['TimeParam']
          @TimeFormat = params['TimeFormat']
        end
      end

      # 流量防盗刷（仅适用中国大陆地区）的具体配置。
      class BandwidthAbuseDefense < TencentCloud::Common::AbstractModel
        # @param Enabled: 流量防盗刷（仅适用中国大陆地区）是否开启。取值有：<li>on：开启；</li><li>off：关闭。</li>
        # @type Enabled: String
        # @param Action: 流量防盗刷（仅适用中国大陆地区）的处置方式，当 Enabled 为 on 时，此字段必填。SecurityAction 的 Name 取值支持：<li>Monitor：观察；</li><li>Deny：拦截；</li><li>Challenge：挑战，其中ChallengeActionParameters.Name仅支持JSChallenge。</li>
        # @type Action: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`

        attr_accessor :Enabled, :Action

        def initialize(enabled=nil, action=nil)
          @Enabled = enabled
          @Action = action
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          unless params['Action'].nil?
            @Action = SecurityAction.new
            @Action.deserialize(params['Action'])
          end
        end
      end

      # 计费数据项。
      class BillingData < TencentCloud::Common::AbstractModel
        # @param Time: 数据时间戳。
        # @type Time: String
        # @param Value: 数值。
        # @type Value: Integer
        # @param ZoneId: 数据点所属站点 ID。若使用内容标识符功能，则该项值为内容标识符。
        # @type ZoneId: String
        # @param Host: 数据点所属域名。
        # @type Host: String
        # @param ProxyId: 数据点所属四层代理实例 ID。
        # @type ProxyId: String
        # @param RegionId: 数据点所属计费大区 ID。计费大区以实际服务用户客户端的 EdgeOne 节点所在区域为准。取值有：<li>CH：中国大陆境内</li><li>AF：非洲</li><li>AS1：亚太一区</li><li>AS2：亚太二区</li><li>AS3：亚太三区</li><li>EU：欧洲</li><li>MidEast：中东</li><li>NA：北美</li><li> SA：南美</li>
        # @type RegionId: String

        attr_accessor :Time, :Value, :ZoneId, :Host, :ProxyId, :RegionId

        def initialize(time=nil, value=nil, zoneid=nil, host=nil, proxyid=nil, regionid=nil)
          @Time = time
          @Value = value
          @ZoneId = zoneid
          @Host = host
          @ProxyId = proxyid
          @RegionId = regionid
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
          @ZoneId = params['ZoneId']
          @Host = params['Host']
          @ProxyId = params['ProxyId']
          @RegionId = params['RegionId']
        end
      end

      # 计费数据过滤条件。
      class BillingDataFilter < TencentCloud::Common::AbstractModel
        # @param Type: 参数名称。
        # @type Type: String
        # @param Value: 参数值。
        # @type Value: String

        attr_accessor :Type, :Value

        def initialize(type=nil, value=nil)
          @Type = type
          @Value = value
        end

        def deserialize(params)
          @Type = params['Type']
          @Value = params['Value']
        end
      end

      # 策略模板绑定的域名信息
      class BindDomainInfo < TencentCloud::Common::AbstractModel
        # @param Domain: 域名。
        # @type Domain: String
        # @param ZoneId: 域名所属的站点 ID。
        # @type ZoneId: String
        # @param Status: 绑定状态，取值有:
        # <li>process：绑定中；</li>
        # <li>online：绑定成功；</li>
        # <li>fail：绑定失败。</li>
        # @type Status: String

        attr_accessor :Domain, :ZoneId, :Status

        def initialize(domain=nil, zoneid=nil, status=nil)
          @Domain = domain
          @ZoneId = zoneid
          @Status = status
        end

        def deserialize(params)
          @Domain = params['Domain']
          @ZoneId = params['ZoneId']
          @Status = params['Status']
        end
      end

      # BindSecurityTemplateToEntity请求参数结构体
      class BindSecurityTemplateToEntityRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 需要绑定或解绑的策略模板所属站点 ID。
        # @type ZoneId: String
        # @param Entities: 绑定至策略模板（或者从策略模板解绑）的域名列表。
        # @type Entities: Array
        # @param Operate: 绑定或解绑操作选项，取值有：
        # <li>bind：绑定域名至策略模板。</li>
        # <li>unbind-keep-policy：将域名从策略模板解绑，解绑时保留当前策略。</li>
        # <li>unbind-use-default：将域名从策略模板解绑，并使用默认空白策略。</li>注意：解绑操作当前仅支持单个域名解绑。即：当 Operate 参数取值为 unbind-keep-policy 或 unbind-use-default 时，Entities 参数列表仅支持填写一个域名。
        # @type Operate: String
        # @param TemplateId: 指定绑定或解绑的策略模板 ID 或站点全局策略
        # <li>如需绑定至策略模板，或从策略模板解绑，请指定策略模板 ID。</li>
        # <li>如需绑定至站点全局策略，或从站点全局策略解绑，请使用 @ZoneLevel@domain 参数值。</li>

        # 注意：解绑后，域名将使用独立策略，并单独计算规则配额，请确保解绑前套餐规则配额充足。
        # @type TemplateId: String
        # @param OverWrite: 传入域名如果已经绑定了策略模板（含站点级防护策略），通过设置该参数表示是否替换该模板，默认值为 true。支持下列取值：<li>true： 替换域名当前绑定的模板。</li><li>false：不替换域名当前绑定的模板。</li>注意：当设置为 false 时，若传入域名已经绑定策略模板，API  将返回错误；站点级防护策略也为一种策略模板。
        # @type OverWrite: Boolean

        attr_accessor :ZoneId, :Entities, :Operate, :TemplateId, :OverWrite

        def initialize(zoneid=nil, entities=nil, operate=nil, templateid=nil, overwrite=nil)
          @ZoneId = zoneid
          @Entities = entities
          @Operate = operate
          @TemplateId = templateid
          @OverWrite = overwrite
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Entities = params['Entities']
          @Operate = params['Operate']
          @TemplateId = params['TemplateId']
          @OverWrite = params['OverWrite']
        end
      end

      # BindSecurityTemplateToEntity返回参数结构体
      class BindSecurityTemplateToEntityResponse < TencentCloud::Common::AbstractModel
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

      # 共享 CNAME 和接入域名的绑定关系
      class BindSharedCNAMEMap < TencentCloud::Common::AbstractModel
        # @param SharedCNAME: 需要绑定或解绑的共享 CNAME。
        # @type SharedCNAME: String
        # @param DomainNames: 加速域名，可传递多个，最多20个。
        # @type DomainNames: Array

        attr_accessor :SharedCNAME, :DomainNames

        def initialize(sharedcname=nil, domainnames=nil)
          @SharedCNAME = sharedcname
          @DomainNames = domainnames
        end

        def deserialize(params)
          @SharedCNAME = params['SharedCNAME']
          @DomainNames = params['DomainNames']
        end
      end

      # BindSharedCNAME请求参数结构体
      class BindSharedCNAMERequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 加速域名所属站点 ID。
        # @type ZoneId: String
        # @param BindType: 绑定类型，取值有：
        # <li>bind：绑定；</li>
        # <li>unbind：解绑。</li>
        # @type BindType: String
        # @param BindSharedCNAMEMaps: 接入域名与共享 CNAME 的绑定关系。
        # @type BindSharedCNAMEMaps: Array

        attr_accessor :ZoneId, :BindType, :BindSharedCNAMEMaps

        def initialize(zoneid=nil, bindtype=nil, bindsharedcnamemaps=nil)
          @ZoneId = zoneid
          @BindType = bindtype
          @BindSharedCNAMEMaps = bindsharedcnamemaps
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @BindType = params['BindType']
          unless params['BindSharedCNAMEMaps'].nil?
            @BindSharedCNAMEMaps = []
            params['BindSharedCNAMEMaps'].each do |i|
              bindsharedcnamemap_tmp = BindSharedCNAMEMap.new
              bindsharedcnamemap_tmp.deserialize(i)
              @BindSharedCNAMEMaps << bindsharedcnamemap_tmp
            end
          end
        end
      end

      # BindSharedCNAME返回参数结构体
      class BindSharedCNAMEResponse < TencentCloud::Common::AbstractModel
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

      # BindZoneToPlan请求参数结构体
      class BindZoneToPlanRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 未绑定套餐的站点ID。
        # @type ZoneId: String
        # @param PlanId: 待绑定的目标套餐ID。
        # @type PlanId: String

        attr_accessor :ZoneId, :PlanId

        def initialize(zoneid=nil, planid=nil)
          @ZoneId = zoneid
          @PlanId = planid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @PlanId = params['PlanId']
        end
      end

      # BindZoneToPlan返回参数结构体
      class BindZoneToPlanResponse < TencentCloud::Common::AbstractModel
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

      # Web安全IP封禁的附加参数
      class BlockIPActionParameters < TencentCloud::Common::AbstractModel
        # @param Duration: 封禁 IP 的惩罚时长。支持的单位有：<li>s：秒，取值范围1～120；</li><li>m：分，取值范围1～120；</li><li>h：小时，取值范围1～48。</li>
        # @type Duration: String

        attr_accessor :Duration

        def initialize(duration=nil)
          @Duration = duration
        end

        def deserialize(params)
          @Duration = params['Duration']
        end
      end

      # 安全Bot配置
      class BotConfig < TencentCloud::Common::AbstractModel
        # @param Switch: bot开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param BotManagedRule: 通用详细基础规则。如果为null，默认使用历史配置。
        # @type BotManagedRule: :class:`Tencentcloud::Teo.v20220901.models.BotManagedRule`
        # @param BotPortraitRule: 用户画像规则。如果为null，默认使用历史配置。
        # @type BotPortraitRule: :class:`Tencentcloud::Teo.v20220901.models.BotPortraitRule`
        # @param IntelligenceRule: Bot智能分析。如果为null，默认使用历史配置。
        # @type IntelligenceRule: :class:`Tencentcloud::Teo.v20220901.models.IntelligenceRule`
        # @param BotUserRules: Bot自定义规则。如果为null，默认使用历史配置。
        # @type BotUserRules: Array
        # @param AlgDetectRule: Bot主动特征识别规则。
        # @type AlgDetectRule: Array
        # @param Customizes: Bot托管定制策略，入参可不填，仅出参使用。
        # @type Customizes: Array

        attr_accessor :Switch, :BotManagedRule, :BotPortraitRule, :IntelligenceRule, :BotUserRules, :AlgDetectRule, :Customizes

        def initialize(switch=nil, botmanagedrule=nil, botportraitrule=nil, intelligencerule=nil, botuserrules=nil, algdetectrule=nil, customizes=nil)
          @Switch = switch
          @BotManagedRule = botmanagedrule
          @BotPortraitRule = botportraitrule
          @IntelligenceRule = intelligencerule
          @BotUserRules = botuserrules
          @AlgDetectRule = algdetectrule
          @Customizes = customizes
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['BotManagedRule'].nil?
            @BotManagedRule = BotManagedRule.new
            @BotManagedRule.deserialize(params['BotManagedRule'])
          end
          unless params['BotPortraitRule'].nil?
            @BotPortraitRule = BotPortraitRule.new
            @BotPortraitRule.deserialize(params['BotPortraitRule'])
          end
          unless params['IntelligenceRule'].nil?
            @IntelligenceRule = IntelligenceRule.new
            @IntelligenceRule.deserialize(params['IntelligenceRule'])
          end
          unless params['BotUserRules'].nil?
            @BotUserRules = []
            params['BotUserRules'].each do |i|
              botuserrule_tmp = BotUserRule.new
              botuserrule_tmp.deserialize(i)
              @BotUserRules << botuserrule_tmp
            end
          end
          unless params['AlgDetectRule'].nil?
            @AlgDetectRule = []
            params['AlgDetectRule'].each do |i|
              algdetectrule_tmp = AlgDetectRule.new
              algdetectrule_tmp.deserialize(i)
              @AlgDetectRule << algdetectrule_tmp
            end
          end
          unless params['Customizes'].nil?
            @Customizes = []
            params['Customizes'].each do |i|
              botuserrule_tmp = BotUserRule.new
              botuserrule_tmp.deserialize(i)
              @Customizes << botuserrule_tmp
            end
          end
        end
      end

      # Bot扩展处置方式，多处置动作组合。
      class BotExtendAction < TencentCloud::Common::AbstractModel
        # @param Action: 处置动作，取值有：
        # <li>monitor：观察；</li>
        # <li>alg：JavaScript挑战；</li>
        # <li>captcha：托管挑战；</li>
        # <li>random：随机，按照ExtendActions分配处置动作和比例；</li>
        # <li>silence：静默；</li>
        # <li>shortdelay：短时响应；</li>
        # <li>longdelay：长时响应。</li>
        # @type Action: String
        # @param Percent: 处置方式的触发概率，范围0-100。
        # @type Percent: Integer

        attr_accessor :Action, :Percent

        def initialize(action=nil, percent=nil)
          @Action = action
          @Percent = percent
        end

        def deserialize(params)
          @Action = params['Action']
          @Percent = params['Percent']
        end
      end

      # Bot 规则，下列规则ID可参考接口 DescribeBotManagedRules返回的ID信息
      class BotManagedRule < TencentCloud::Common::AbstractModel
        # @param Action: 触发规则后的处置方式，取值有：
        # <li>drop：拦截；</li>
        # <li>trans：放行；</li>
        # <li>alg：Javascript挑战；</li>
        # <li>monitor：观察。</li>
        # @type Action: String
        # @param RuleID: 本规则的ID。仅出参使用。
        # @type RuleID: Integer
        # @param TransManagedIds: 放行的规则ID。默认所有规则不配置放行。
        # @type TransManagedIds: Array
        # @param AlgManagedIds: JS挑战的规则ID。默认所有规则不配置JS挑战。
        # @type AlgManagedIds: Array
        # @param CapManagedIds: 数字验证码的规则ID。默认所有规则不配置数字验证码。
        # @type CapManagedIds: Array
        # @param MonManagedIds: 观察的规则ID。默认所有规则不配置观察。
        # @type MonManagedIds: Array
        # @param DropManagedIds: 拦截的规则ID。默认所有规则不配置拦截。
        # @type DropManagedIds: Array

        attr_accessor :Action, :RuleID, :TransManagedIds, :AlgManagedIds, :CapManagedIds, :MonManagedIds, :DropManagedIds

        def initialize(action=nil, ruleid=nil, transmanagedids=nil, algmanagedids=nil, capmanagedids=nil, monmanagedids=nil, dropmanagedids=nil)
          @Action = action
          @RuleID = ruleid
          @TransManagedIds = transmanagedids
          @AlgManagedIds = algmanagedids
          @CapManagedIds = capmanagedids
          @MonManagedIds = monmanagedids
          @DropManagedIds = dropmanagedids
        end

        def deserialize(params)
          @Action = params['Action']
          @RuleID = params['RuleID']
          @TransManagedIds = params['TransManagedIds']
          @AlgManagedIds = params['AlgManagedIds']
          @CapManagedIds = params['CapManagedIds']
          @MonManagedIds = params['MonManagedIds']
          @DropManagedIds = params['DropManagedIds']
        end
      end

      # Web 安全的 BOT 规则结构。
      class BotManagement < TencentCloud::Common::AbstractModel
        # @param ClientAttestationRules: 客户端认证规则的定义列表。该功能内测中，如需使用，请提工单或联系智能客服。
        # @type ClientAttestationRules: :class:`Tencentcloud::Teo.v20220901.models.ClientAttestationRules`

        attr_accessor :ClientAttestationRules

        def initialize(clientattestationrules=nil)
          @ClientAttestationRules = clientattestationrules
        end

        def deserialize(params)
          unless params['ClientAttestationRules'].nil?
            @ClientAttestationRules = ClientAttestationRules.new
            @ClientAttestationRules.deserialize(params['ClientAttestationRules'])
          end
        end
      end

      # bot 用户画像规则
      class BotPortraitRule < TencentCloud::Common::AbstractModel
        # @param Switch: 本功能的开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param RuleID: 本规则的ID。仅出参使用。
        # @type RuleID: Integer
        # @param AlgManagedIds: JS挑战的规则ID。默认所有规则不配置JS挑战。
        # @type AlgManagedIds: Array
        # @param CapManagedIds: 数字验证码的规则ID。默认所有规则不配置数字验证码。
        # @type CapManagedIds: Array
        # @param MonManagedIds: 观察的规则ID。默认所有规则不配置观察。
        # @type MonManagedIds: Array
        # @param DropManagedIds: 拦截的规则ID。默认所有规则不配置拦截。
        # @type DropManagedIds: Array

        attr_accessor :Switch, :RuleID, :AlgManagedIds, :CapManagedIds, :MonManagedIds, :DropManagedIds

        def initialize(switch=nil, ruleid=nil, algmanagedids=nil, capmanagedids=nil, monmanagedids=nil, dropmanagedids=nil)
          @Switch = switch
          @RuleID = ruleid
          @AlgManagedIds = algmanagedids
          @CapManagedIds = capmanagedids
          @MonManagedIds = monmanagedids
          @DropManagedIds = dropmanagedids
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RuleID = params['RuleID']
          @AlgManagedIds = params['AlgManagedIds']
          @CapManagedIds = params['CapManagedIds']
          @MonManagedIds = params['MonManagedIds']
          @DropManagedIds = params['DropManagedIds']
        end
      end

      # Bot自定义规则
      class BotUserRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名，只能以英文字符，数字，下划线组合，且不能以下划线开头。
        # @type RuleName: String
        # @param Action: 处置动作，取值有：
        # <li>drop：拦截；</li>
        # <li>monitor：观察；</li>
        # <li>trans：放行；</li>
        # <li>redirect：重定向；</li>
        # <li>page：指定页面；</li>
        # <li>alg：JavaScript 挑战；</li>
        # <li>captcha：托管挑战；</li>
        # <li>random：随机处置；</li>
        # <li>silence：静默；</li>
        # <li>shortdelay：短时响应；</li>
        # <li>longdelay：长时响应。</li>
        # @type Action: String
        # @param RuleStatus: 规则状态，取值有：
        # <li>on：生效；</li>
        # <li>off：不生效。</li>默认 on 生效。
        # @type RuleStatus: String
        # @param AclConditions: 规则详情。
        # @type AclConditions: Array
        # @param RulePriority: 规则权重，取值范围0-100。
        # @type RulePriority: Integer
        # @param RuleID: 规则 Id。仅出参使用。
        # @type RuleID: Integer
        # @param ExtendActions: 随机处置的处置方式及占比，非随机处置可不填暂不支持。
        # @type ExtendActions: Array
        # @param FreqFields: 过滤词，取值有：
        # <li>sip：客户端 ip。</li>
        # 默认为空字符串。
        # @type FreqFields: Array
        # @param UpdateTime: 更新时间。仅出参使用。
        # @type UpdateTime: String
        # @param FreqScope: 统计范围。取值有：
        # <li>source_to_eo：（响应）源站到 EdgeOne；</li>
        # <li>client_to_eo：（请求）客户端到 EdgeOne。</li>
        # 默认为 source_to_eo。
        # @type FreqScope: Array
        # @param Name: 自定义返回页面的名称。Action 是 page 时必填，且不能为空。
        # @type Name: String
        # @param CustomResponseId: 自定义响应 Id。该 Id 可通过查询自定义错误页列表接口获取。默认值为default，使用系统默认页面。Action 是 page 时必填，且不能为空。
        # @type CustomResponseId: String
        # @param ResponseCode: 自定义返回页面的响应码。Action 是 page 时必填，且不能为空，取值: 100~600，不支持 3xx 响应码。默认值：567。
        # @type ResponseCode: Integer
        # @param RedirectUrl: 重定向时候的地址。Action 是 redirect 时必填，且不能为空。
        # @type RedirectUrl: String

        attr_accessor :RuleName, :Action, :RuleStatus, :AclConditions, :RulePriority, :RuleID, :ExtendActions, :FreqFields, :UpdateTime, :FreqScope, :Name, :CustomResponseId, :ResponseCode, :RedirectUrl

        def initialize(rulename=nil, action=nil, rulestatus=nil, aclconditions=nil, rulepriority=nil, ruleid=nil, extendactions=nil, freqfields=nil, updatetime=nil, freqscope=nil, name=nil, customresponseid=nil, responsecode=nil, redirecturl=nil)
          @RuleName = rulename
          @Action = action
          @RuleStatus = rulestatus
          @AclConditions = aclconditions
          @RulePriority = rulepriority
          @RuleID = ruleid
          @ExtendActions = extendactions
          @FreqFields = freqfields
          @UpdateTime = updatetime
          @FreqScope = freqscope
          @Name = name
          @CustomResponseId = customresponseid
          @ResponseCode = responsecode
          @RedirectUrl = redirecturl
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Action = params['Action']
          @RuleStatus = params['RuleStatus']
          unless params['AclConditions'].nil?
            @AclConditions = []
            params['AclConditions'].each do |i|
              aclcondition_tmp = AclCondition.new
              aclcondition_tmp.deserialize(i)
              @AclConditions << aclcondition_tmp
            end
          end
          @RulePriority = params['RulePriority']
          @RuleID = params['RuleID']
          unless params['ExtendActions'].nil?
            @ExtendActions = []
            params['ExtendActions'].each do |i|
              botextendaction_tmp = BotExtendAction.new
              botextendaction_tmp.deserialize(i)
              @ExtendActions << botextendaction_tmp
            end
          end
          @FreqFields = params['FreqFields']
          @UpdateTime = params['UpdateTime']
          @FreqScope = params['FreqScope']
          @Name = params['Name']
          @CustomResponseId = params['CustomResponseId']
          @ResponseCode = params['ResponseCode']
          @RedirectUrl = params['RedirectUrl']
        end
      end

      # cc配置项。
      class CC < TencentCloud::Common::AbstractModel
        # @param Switch: Waf开关，取值为：
        # <li> on：开启；</li>
        # <li> off：关闭。</li>
        # @type Switch: String
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer

        attr_accessor :Switch, :PolicyId

        def initialize(switch=nil, policyid=nil)
          @Switch = switch
          @PolicyId = policyid
        end

        def deserialize(params)
          @Switch = params['Switch']
          @PolicyId = params['PolicyId']
        end
      end

      # 实时日志投递到腾讯云 CLS 的配置信息。
      class CLSTopic < TencentCloud::Common::AbstractModel
        # @param LogSetId: 腾讯云 CLS 日志集 ID。
        # @type LogSetId: String
        # @param TopicId: 腾讯云 CLS 日志主题 ID。
        # @type TopicId: String
        # @param LogSetRegion: 腾讯云 CLS 日志集所在的地域。
        # @type LogSetRegion: String

        attr_accessor :LogSetId, :TopicId, :LogSetRegion

        def initialize(logsetid=nil, topicid=nil, logsetregion=nil)
          @LogSetId = logsetid
          @TopicId = topicid
          @LogSetRegion = logsetregion
        end

        def deserialize(params)
          @LogSetId = params['LogSetId']
          @TopicId = params['TopicId']
          @LogSetRegion = params['LogSetRegion']
        end
      end

      # 缓存时间设置
      class Cache < TencentCloud::Common::AbstractModel
        # @param Switch: 缓存配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param CacheTime: 缓存过期时间设置。
        # 单位为秒，最大可设置为 365 天。
        # @type CacheTime: Integer
        # @param IgnoreCacheControl: 是否开启强制缓存，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreCacheControl: String

        attr_accessor :Switch, :CacheTime, :IgnoreCacheControl
        extend Gem::Deprecate
        deprecate :IgnoreCacheControl, :none, 2025, 7
        deprecate :IgnoreCacheControl=, :none, 2025, 7

        def initialize(switch=nil, cachetime=nil, ignorecachecontrol=nil)
          @Switch = switch
          @CacheTime = cachetime
          @IgnoreCacheControl = ignorecachecontrol
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CacheTime = params['CacheTime']
          @IgnoreCacheControl = params['IgnoreCacheControl']
        end
      end

      # 缓存规则配置。
      class CacheConfig < TencentCloud::Common::AbstractModel
        # @param Cache: 缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Teo.v20220901.models.Cache`
        # @param NoCache: 不缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoCache: :class:`Tencentcloud::Teo.v20220901.models.NoCache`
        # @param FollowOrigin: 遵循源站配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: :class:`Tencentcloud::Teo.v20220901.models.FollowOrigin`

        attr_accessor :Cache, :NoCache, :FollowOrigin

        def initialize(cache=nil, nocache=nil, followorigin=nil)
          @Cache = cache
          @NoCache = nocache
          @FollowOrigin = followorigin
        end

        def deserialize(params)
          unless params['Cache'].nil?
            @Cache = Cache.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['NoCache'].nil?
            @NoCache = NoCache.new
            @NoCache.deserialize(params['NoCache'])
          end
          unless params['FollowOrigin'].nil?
            @FollowOrigin = FollowOrigin.new
            @FollowOrigin.deserialize(params['FollowOrigin'])
          end
        end
      end

      # 节点缓存 TTL 自定义缓存时间配置参数。
      class CacheConfigCustomTime < TencentCloud::Common::AbstractModel
        # @param Switch: 自定义缓存时间开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param CacheTime: 自定义缓存时间数值，单位为秒，取值：0-315360000。<br>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type CacheTime: Integer

        attr_accessor :Switch, :CacheTime

        def initialize(switch=nil, cachetime=nil)
          @Switch = switch
          @CacheTime = cachetime
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CacheTime = params['CacheTime']
        end
      end

      # 节点缓存 TTL 配置参数。
      class CacheConfigParameters < TencentCloud::Common::AbstractModel
        # @param FollowOrigin: 遵循源站缓存配置。FollowOrigin、NoCache、CustomTime 最多只能配置一个 Switch 为 on。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: :class:`Tencentcloud::Teo.v20220901.models.FollowOrigin`
        # @param NoCache: 不缓存配置。FollowOrigin、NoCache、CustomTime 最多只能配置一个 Switch 为 on。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoCache: :class:`Tencentcloud::Teo.v20220901.models.NoCache`
        # @param CustomTime: 自定义缓存时间配置。FollowOrigin、NoCache、CustomTime 最多只能配置一个 Switch 为 on。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomTime: :class:`Tencentcloud::Teo.v20220901.models.CacheConfigCustomTime`

        attr_accessor :FollowOrigin, :NoCache, :CustomTime

        def initialize(followorigin=nil, nocache=nil, customtime=nil)
          @FollowOrigin = followorigin
          @NoCache = nocache
          @CustomTime = customtime
        end

        def deserialize(params)
          unless params['FollowOrigin'].nil?
            @FollowOrigin = FollowOrigin.new
            @FollowOrigin.deserialize(params['FollowOrigin'])
          end
          unless params['NoCache'].nil?
            @NoCache = NoCache.new
            @NoCache.deserialize(params['NoCache'])
          end
          unless params['CustomTime'].nil?
            @CustomTime = CacheConfigCustomTime.new
            @CustomTime.deserialize(params['CustomTime'])
          end
        end
      end

      # 缓存键配置。
      class CacheKey < TencentCloud::Common::AbstractModel
        # @param FullUrlCache: 是否开启全路径缓存，取值有：
        # <li>on：开启全路径缓存（即关闭参数忽略）；</li>
        # <li>off：关闭全路径缓存（即开启参数忽略）。</li>
        # @type FullUrlCache: String
        # @param IgnoreCase: 是否忽略大小写缓存，取值有：
        # <li>on：忽略；</li>
        # <li>off：不忽略。</li>
        # @type IgnoreCase: String
        # @param QueryString: CacheKey 中包含请求参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryString: :class:`Tencentcloud::Teo.v20220901.models.QueryString`

        attr_accessor :FullUrlCache, :IgnoreCase, :QueryString

        def initialize(fullurlcache=nil, ignorecase=nil, querystring=nil)
          @FullUrlCache = fullurlcache
          @IgnoreCase = ignorecase
          @QueryString = querystring
        end

        def deserialize(params)
          @FullUrlCache = params['FullUrlCache']
          @IgnoreCase = params['IgnoreCase']
          unless params['QueryString'].nil?
            @QueryString = QueryString.new
            @QueryString.deserialize(params['QueryString'])
          end
        end
      end

      # 缓存键配置。
      class CacheKeyConfigParameters < TencentCloud::Common::AbstractModel
        # @param FullURLCache: 是否开启全路径缓存，取值有：
        # <li>on：开启全路径缓存（即关闭参数忽略）；</li>
        # <li>off：关闭全路径缓存（即开启参数忽略）。</li>
        # @type FullURLCache: String
        # @param IgnoreCase: 是否忽略大小写缓存，取值有：
        # <li>on：忽略；</li>
        # <li>off：不忽略。</li>
        # @type IgnoreCase: String
        # @param QueryString: 查询字符串保留配置参数。此字段和 FullURLCache 必须同时设置，但不能同为 on。
        # @type QueryString: :class:`Tencentcloud::Teo.v20220901.models.CacheKeyQueryString`

        attr_accessor :FullURLCache, :IgnoreCase, :QueryString

        def initialize(fullurlcache=nil, ignorecase=nil, querystring=nil)
          @FullURLCache = fullurlcache
          @IgnoreCase = ignorecase
          @QueryString = querystring
        end

        def deserialize(params)
          @FullURLCache = params['FullURLCache']
          @IgnoreCase = params['IgnoreCase']
          unless params['QueryString'].nil?
            @QueryString = CacheKeyQueryString.new
            @QueryString.deserialize(params['QueryString'])
          end
        end
      end

      # 自定义 Cache Key Cookie 配置参数。
      class CacheKeyCookie < TencentCloud::Common::AbstractModel
        # @param Switch: 功能开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Action: 缓存动作，取值有：
        # <li>full：全部保留；</li>
        # <li> ignore：全部忽略；</li>
        # <li> includeCustom：保留指定参数；</li>
        # <li>excludeCustom：忽略指定参数。</li>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type Action: String
        # @param Values: 自定义 Cache Key Cookie 名称列表。<br>注意：当 Action 为 includeCustom 或 excludeCustom 时，此字段必填；当 Action 为 full 或 ignore 时，无需填写此字段，若填写则不生效。
        # @type Values: Array

        attr_accessor :Switch, :Action, :Values

        def initialize(switch=nil, action=nil, values=nil)
          @Switch = switch
          @Action = action
          @Values = values
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Action = params['Action']
          @Values = params['Values']
        end
      end

      # 自定义 Cache Key HTTP 请求头配置参数。
      class CacheKeyHeader < TencentCloud::Common::AbstractModel
        # @param Switch: 功能开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Values: 自定义 Cache Key HTTP 请求头列表。<br>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type Values: Array

        attr_accessor :Switch, :Values

        def initialize(switch=nil, values=nil)
          @Switch = switch
          @Values = values
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Values = params['Values']
        end
      end

      # 自定义 Cache Key 配置参数。该配置参数的 FullURLCache 和 QueryString 采用组合表达，具体示例可以参考：
      # - 查询字符串全部保留。开启忽略大小写。
      # ```
      # {
      #   "CacheKey": {
      #     "FullURLCache": "on",
      #     "QueryString": {
      #       "Switch": "off"
      #     },
      #     "IgnoreCase": "on"
      #   }
      # }
      # ```
      # - 查询字符串全部忽略。开启忽略大小写。
      # ```
      # {
      #   "CacheKey": {
      #     "FullURLCache": "off",
      #     "QueryString": {
      #       "Switch": "off"
      #     },
      #     "IgnoreCase": "on"
      #   }
      # }
      # ```
      # - 查询字符串保留指定参数。关闭忽略大小写。
      # ```
      # {
      #   "CacheKey": {
      #     "FullURLCache": "off",
      #     "QueryString": {
      #         "Switch": "on",
      #         "Action": "includeCustom",
      #         "Values": ["name1","name2","name3"]
      #     },
      #     "IgnoreCase": "off"
      #   }
      # }
      # ```
      # - 查询字符串忽略指定参数。关闭忽略大小写。
      # ```
      # {
      #   "CacheKey": {
      #     "FullURLCache": "off",
      #     "QueryString": {
      #         "Switch": "on",
      #         "Action": "excludeCustom",
      #         "Values": ["name1","name2","name3"]
      #     },
      #     "IgnoreCase": "off"
      #   }
      # }
      # ```
      class CacheKeyParameters < TencentCloud::Common::AbstractModel
        # @param FullURLCache: 查询字符串全部保留开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>注意：FullURLCache、IgnoreCase、Header、Scheme、Cookie 至少设置一个配置。此字段和 QueryString.Switch 必须同时设置，但不能同为 on。
        # @type FullURLCache: String
        # @param QueryString: 查询字符串保留配置参数。此字段和 FullURLCache 必须同时设置，但不能同为 on。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryString: :class:`Tencentcloud::Teo.v20220901.models.CacheKeyQueryString`
        # @param IgnoreCase: 忽略大小写开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>注意：FullURLCache、IgnoreCase、Header、Scheme、Cookie 至少设置一个配置。
        # @type IgnoreCase: String
        # @param Header: HTTP 请求头配置参数。FullURLCache、IgnoreCase、Header、Scheme、Cookie 至少设置一个配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Header: :class:`Tencentcloud::Teo.v20220901.models.CacheKeyHeader`
        # @param Scheme: 请求协议开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>注意：FullURLCache、IgnoreCase、Header、Scheme、Cookie 至少设置一个配置。
        # @type Scheme: String
        # @param Cookie: Cookie 配置参数。FullURLCache、IgnoreCase、Header、Scheme、Cookie 至少设置一个配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cookie: :class:`Tencentcloud::Teo.v20220901.models.CacheKeyCookie`

        attr_accessor :FullURLCache, :QueryString, :IgnoreCase, :Header, :Scheme, :Cookie

        def initialize(fullurlcache=nil, querystring=nil, ignorecase=nil, header=nil, scheme=nil, cookie=nil)
          @FullURLCache = fullurlcache
          @QueryString = querystring
          @IgnoreCase = ignorecase
          @Header = header
          @Scheme = scheme
          @Cookie = cookie
        end

        def deserialize(params)
          @FullURLCache = params['FullURLCache']
          unless params['QueryString'].nil?
            @QueryString = CacheKeyQueryString.new
            @QueryString.deserialize(params['QueryString'])
          end
          @IgnoreCase = params['IgnoreCase']
          unless params['Header'].nil?
            @Header = CacheKeyHeader.new
            @Header.deserialize(params['Header'])
          end
          @Scheme = params['Scheme']
          unless params['Cookie'].nil?
            @Cookie = CacheKeyCookie.new
            @Cookie.deserialize(params['Cookie'])
          end
        end
      end

      # 自定义 Cache Key 查询字符串配置参数。
      class CacheKeyQueryString < TencentCloud::Common::AbstractModel
        # @param Switch: 查询字符串保留/忽略指定参数开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Action: 查询字符串保留/忽略指定参数动作。取值有：
        # <li>includeCustom：表示保留部分参数；</li>
        # <li>excludeCustom：表示忽略部分参数。</li>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type Action: String
        # @param Values: 查询字符串中需保留/忽略的参数名列表。<br>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type Values: Array

        attr_accessor :Switch, :Action, :Values

        def initialize(switch=nil, action=nil, values=nil)
          @Switch = switch
          @Action = action
          @Values = values
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Action = params['Action']
          @Values = params['Values']
        end
      end

      # 节点缓存 TTL 配置参数。
      class CacheParameters < TencentCloud::Common::AbstractModel
        # @param FollowOrigin: 缓存遵循源站。不填表示不设置该配置，FollowOrigin、NoCache、CustomTime 最多只能配置一个 Switch 为 on。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FollowOrigin: :class:`Tencentcloud::Teo.v20220901.models.FollowOrigin`
        # @param NoCache: 不缓存。不填表示不设置该配置，FollowOrigin、NoCache、CustomTime 最多只能配置一个 Switch 为 on。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NoCache: :class:`Tencentcloud::Teo.v20220901.models.NoCache`
        # @param CustomTime: 自定义缓存时间。不填表示不设置该配置，FollowOrigin、NoCache、CustomTime 最多只能配置一个 Switch 为 on。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomTime: :class:`Tencentcloud::Teo.v20220901.models.CustomTime`

        attr_accessor :FollowOrigin, :NoCache, :CustomTime

        def initialize(followorigin=nil, nocache=nil, customtime=nil)
          @FollowOrigin = followorigin
          @NoCache = nocache
          @CustomTime = customtime
        end

        def deserialize(params)
          unless params['FollowOrigin'].nil?
            @FollowOrigin = FollowOrigin.new
            @FollowOrigin.deserialize(params['FollowOrigin'])
          end
          unless params['NoCache'].nil?
            @NoCache = NoCache.new
            @NoCache.deserialize(params['NoCache'])
          end
          unless params['CustomTime'].nil?
            @CustomTime = CustomTime.new
            @CustomTime.deserialize(params['CustomTime'])
          end
        end
      end

      # 缓存预刷新
      class CachePrefresh < TencentCloud::Common::AbstractModel
        # @param Switch: 缓存预刷新配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Percent: 缓存预刷新百分比，取值范围：1-99。
        # @type Percent: Integer

        attr_accessor :Switch, :Percent

        def initialize(switch=nil, percent=nil)
          @Switch = switch
          @Percent = percent
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Percent = params['Percent']
        end
      end

      # 缓存预刷新 配置参数。
      class CachePrefreshParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 缓存预刷新开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param CacheTimePercent: 预刷新时间设置为节点缓存时间的百分比数值，取值：1～99。<br>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type CacheTimePercent: Integer

        attr_accessor :Switch, :CacheTimePercent

        def initialize(switch=nil, cachetimepercent=nil)
          @Switch = switch
          @CacheTimePercent = cachetimepercent
        end

        def deserialize(params)
          @Switch = params['Switch']
          @CacheTimePercent = params['CacheTimePercent']
        end
      end

      # 节点缓存清除类型取值为 purge_cache_tag 时附带的信息。
      class CacheTag < TencentCloud::Common::AbstractModel
        # @param Domains: 待清除缓存的域名列表。
        # @type Domains: Array

        attr_accessor :Domains

        def initialize(domains=nil)
          @Domains = domains
        end

        def deserialize(params)
          @Domains = params['Domains']
        end
      end

      # https 证书配置。
      class CertificateInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 证书 ID。来源于 SSL 侧，您可以前往 [SSL 证书列表](https://console.cloud.tencent.com/ssl) 查看 CertId。
        # @type CertId: String
        # @param Alias: 证书备注名。
        # @type Alias: String
        # @param Type: 证书类型，取值有：
        # <li>default：默认证书；</li>
        # <li>upload：用户上传；</li>
        # <li>managed：腾讯云托管。</li>
        # @type Type: String
        # @param ExpireTime: 证书过期时间。
        # @type ExpireTime: String
        # @param DeployTime: 证书部署时间。
        # @type DeployTime: String
        # @param SignAlgo: 签名算法。
        # @type SignAlgo: String
        # @param Status: 证书状态，取值有：
        # <li>deployed：已部署；</li>
        # <li>processing：部署中；</li>
        # <li>applying：申请中；</li>
        # <li>failed：申请失败；</li>
        # <li>issued：绑定失败。</li>
        # @type Status: String

        attr_accessor :CertId, :Alias, :Type, :ExpireTime, :DeployTime, :SignAlgo, :Status

        def initialize(certid=nil, _alias=nil, type=nil, expiretime=nil, deploytime=nil, signalgo=nil, status=nil)
          @CertId = certid
          @Alias = _alias
          @Type = type
          @ExpireTime = expiretime
          @DeployTime = deploytime
          @SignAlgo = signalgo
          @Status = status
        end

        def deserialize(params)
          @CertId = params['CertId']
          @Alias = params['Alias']
          @Type = params['Type']
          @ExpireTime = params['ExpireTime']
          @DeployTime = params['DeployTime']
          @SignAlgo = params['SignAlgo']
          @Status = params['Status']
        end
      end

      # Web 安全 Challenge 挑战的附加参数
      class ChallengeActionParameters < TencentCloud::Common::AbstractModel
        # @param ChallengeOption: 安全执行的具体挑战动作。取值有：<li> InterstitialChallenge：插页式挑战；</li><li> InlineChallenge：内嵌式挑战；</li><li> JSChallenge：JavaScript 挑战；</li><li> ManagedChallenge：托管挑战。</li>
        # @type ChallengeOption: String
        # @param Interval: 重复挑战的时间间隔，当 Name 为 InterstitialChallenge/InlineChallenge 时，该字段必填。默认值为 300s。支持的单位有：<li>s：秒，取值范围1～60；</li><li>m：分，取值范围1～60；</li><li>h：小时，取值范围1～24。</li>
        # @type Interval: String
        # @param AttesterId: 客户端认证方式 ID 。当 Name 为 InterstitialChallenge/InlineChallenge 时，该字段必填。
        # @type AttesterId: String

        attr_accessor :ChallengeOption, :Interval, :AttesterId

        def initialize(challengeoption=nil, interval=nil, attesterid=nil)
          @ChallengeOption = challengeoption
          @Interval = interval
          @AttesterId = attesterid
        end

        def deserialize(params)
          @ChallengeOption = params['ChallengeOption']
          @Interval = params['Interval']
          @AttesterId = params['AttesterId']
        end
      end

      # CheckCnameStatus请求参数结构体
      class CheckCnameStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RecordNames: 加速域名列表。
        # @type RecordNames: Array

        attr_accessor :ZoneId, :RecordNames

        def initialize(zoneid=nil, recordnames=nil)
          @ZoneId = zoneid
          @RecordNames = recordnames
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordNames = params['RecordNames']
        end
      end

      # CheckCnameStatus返回参数结构体
      class CheckCnameStatusResponse < TencentCloud::Common::AbstractModel
        # @param CnameStatus: 加速域名 CNAME 状态信息列表。
        # @type CnameStatus: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CnameStatus, :RequestId

        def initialize(cnamestatus=nil, requestid=nil)
          @CnameStatus = cnamestatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CnameStatus'].nil?
            @CnameStatus = []
            params['CnameStatus'].each do |i|
              cnamestatus_tmp = CnameStatus.new
              cnamestatus_tmp.deserialize(i)
              @CnameStatus << cnamestatus_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 各个健康检查区域下源站的健康状态。
      class CheckRegionHealthStatus < TencentCloud::Common::AbstractModel
        # @param Region: 健康检查区域，ISO-3166-1 两位字母代码。
        # @type Region: String
        # @param Healthy: 单健康检查区域下探测源站的健康状态，取值有：
        # <li>Healthy：健康；</li>
        # <li>Unhealthy：不健康；</li>
        # <li> Undetected：未探测到数据。</li>说明：单健康检查区域下所有源站为健康，则状态为健康，否则为不健康。
        # @type Healthy: String
        # @param OriginHealthStatus: 源站健康状态。
        # @type OriginHealthStatus: Array

        attr_accessor :Region, :Healthy, :OriginHealthStatus

        def initialize(region=nil, healthy=nil, originhealthstatus=nil)
          @Region = region
          @Healthy = healthy
          @OriginHealthStatus = originhealthstatus
        end

        def deserialize(params)
          @Region = params['Region']
          @Healthy = params['Healthy']
          unless params['OriginHealthStatus'].nil?
            @OriginHealthStatus = []
            params['OriginHealthStatus'].each do |i|
              originhealthstatus_tmp = OriginHealthStatus.new
              originhealthstatus_tmp.deserialize(i)
              @OriginHealthStatus << originhealthstatus_tmp
            end
          end
        end
      end

      # 客户端认证规则
      class ClientAttestationRule < TencentCloud::Common::AbstractModel
        # @param Id: 客户端认证规则的 ID。<br>通过规则 ID 可支持不同的规则配置操作：<br> <li> <b>增加</b>新规则：ID 为空或不指定 ID 参数；</li><li> <b>修改</b>已有规则：指定需要更新/修改的规则 ID；</li><li> <b>删除</b>已有规则：BotManagement 参数中，ClientAttestationRule 列表中未包含的已有规则将被删除。</li>
        # @type Id: String
        # @param Name: 客户端认证规则的名称。
        # @type Name: String
        # @param Enabled: 规则是否开启。取值有：<li>on：开启；</li><li>off：关闭。</li>
        # @type Enabled: String
        # @param Priority: 规则的优先级，数值越小越优先执行，范围是 0 ~ 100，默认为 0。
        # @type Priority: Integer
        # @param Condition: 规则的具体内容，需符合表达式语法，详细规范参见产品文档。
        # @type Condition: String
        # @param AttesterId: 客户端认证选项 ID。
        # @type AttesterId: String
        # @param DeviceProfiles: 客户端设备配置。若 ClientAttestationRules 参数中，未指定 DeviceProfiles 参数值：保持已有客户端设备配置，不做修改。
        # @type DeviceProfiles: Array
        # @param InvalidAttestationAction: 客户端认证未通过的处置方式。SecurityAction 的 Name 取值支持：<li>Deny：拦截；</li><li>Monitor：观察；</li><li>Redirect：重定向；</li><li>Challenge：挑战。</li>默认值为 Monitor。
        # @type InvalidAttestationAction: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`

        attr_accessor :Id, :Name, :Enabled, :Priority, :Condition, :AttesterId, :DeviceProfiles, :InvalidAttestationAction

        def initialize(id=nil, name=nil, enabled=nil, priority=nil, condition=nil, attesterid=nil, deviceprofiles=nil, invalidattestationaction=nil)
          @Id = id
          @Name = name
          @Enabled = enabled
          @Priority = priority
          @Condition = condition
          @AttesterId = attesterid
          @DeviceProfiles = deviceprofiles
          @InvalidAttestationAction = invalidattestationaction
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Enabled = params['Enabled']
          @Priority = params['Priority']
          @Condition = params['Condition']
          @AttesterId = params['AttesterId']
          unless params['DeviceProfiles'].nil?
            @DeviceProfiles = []
            params['DeviceProfiles'].each do |i|
              deviceprofile_tmp = DeviceProfile.new
              deviceprofile_tmp.deserialize(i)
              @DeviceProfiles << deviceprofile_tmp
            end
          end
          unless params['InvalidAttestationAction'].nil?
            @InvalidAttestationAction = SecurityAction.new
            @InvalidAttestationAction.deserialize(params['InvalidAttestationAction'])
          end
        end
      end

      # 客户端认证的配置。
      class ClientAttestationRules < TencentCloud::Common::AbstractModel
        # @param Rules: 客户端认证的列表。使用 ModifySecurityPolicy 修改 Web 防护配置时：<li>  若未指定 SecurityPolicy.BotManagement.ClientAttestationRules 中的 Rules 参数，或 Rules 参数长度为零：清空所有客户端认证规则配置。</li> <li> 若 SecurityPolicy.BotManagement 参数中，未指定 ClientAttestationRules 参数值：保持已有客户端认证规则配置，不做修改。</li>
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              clientattestationrule_tmp = ClientAttestationRule.new
              clientattestationrule_tmp.deserialize(i)
              @Rules << clientattestationrule_tmp
            end
          end
        end
      end

      # 认证选项配置。
      class ClientAttester < TencentCloud::Common::AbstractModel
        # @param Id: 认证选项 ID。
        # @type Id: String
        # @param Name: 认证选项名称。
        # @type Name: String
        # @param Type: 认证规则类型。仅出参返回，取值有：
        # <li>PRESET: 系统预置规则，仅允许修改 AttesterDuration；</li>
        # <li>CUSTOM: 用户自定义规则。</li>
        # @type Type: String
        # @param AttesterSource: 认证方法。取值有：
        # <li>TC-RCE: 使用全栈式风控引擎进行认证；</li>
        # <li>TC-CAPTCHA: 使用天御验证码进行认证。</li>
        # @type AttesterSource: String
        # @param AttesterDuration: 认证有效时间。默认为 60s，支持的单位有：
        # <li>s：秒，取值范围 60～43200；</li>
        # <li>m：分，取值范围 1～720；</li>
        # <li>h：小时，取值范围 1～12。</li>
        # @type AttesterDuration: String
        # @param TCRCEOption: TC-RCE 认证的配置信息。
        # <li>当 AttesterSource 参数值为 TC-RCE 时，此字段必填。</li>
        # @type TCRCEOption: :class:`Tencentcloud::Teo.v20220901.models.TCRCEOption`
        # @param TCCaptchaOption: TC-CAPTCHA 认证的配置信息。
        # <li>当 AttesterSource 参数值为 TC-CAPTCHA 时，此字段必填。</li>
        # @type TCCaptchaOption: :class:`Tencentcloud::Teo.v20220901.models.TCCaptchaOption`

        attr_accessor :Id, :Name, :Type, :AttesterSource, :AttesterDuration, :TCRCEOption, :TCCaptchaOption

        def initialize(id=nil, name=nil, type=nil, attestersource=nil, attesterduration=nil, tcrceoption=nil, tccaptchaoption=nil)
          @Id = id
          @Name = name
          @Type = type
          @AttesterSource = attestersource
          @AttesterDuration = attesterduration
          @TCRCEOption = tcrceoption
          @TCCaptchaOption = tccaptchaoption
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Type = params['Type']
          @AttesterSource = params['AttesterSource']
          @AttesterDuration = params['AttesterDuration']
          unless params['TCRCEOption'].nil?
            @TCRCEOption = TCRCEOption.new
            @TCRCEOption.deserialize(params['TCRCEOption'])
          end
          unless params['TCCaptchaOption'].nil?
            @TCCaptchaOption = TCCaptchaOption.new
            @TCCaptchaOption.deserialize(params['TCCaptchaOption'])
          end
        end
      end

      # 智能客户端过滤
      class ClientFiltering < TencentCloud::Common::AbstractModel
        # @param Enabled: 智能客户端过滤是否开启。取值有：<li>on：开启；</li><li>off：关闭。</li>
        # @type Enabled: String
        # @param Action: 智能客户端过滤的处置方式，当 Enabled 为 on 时，此字段必填。SecurityAction 的 Name 取值支持：<li>Monitor：观察；</li><li>Deny：拦截；</li><li>Challenge：挑战，其中ChallengeActionParameters.Name仅支持JSChallenge。</li>
        # @type Action: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`

        attr_accessor :Enabled, :Action

        def initialize(enabled=nil, action=nil)
          @Enabled = enabled
          @Action = action
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          unless params['Action'].nil?
            @Action = SecurityAction.new
            @Action.deserialize(params['Action'])
          end
        end
      end

      # 回源时携带客户端 IP 所属地域信息，值的格式为 ISO-3166-1 两位字母代码。
      class ClientIPCountryParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param HeaderName: 存放客户端 IP 所属地域信息的请求头名称，当 Switch=on 时有效。为空则使用默认值：EO-Client-IPCountry。
        # @type HeaderName: String

        attr_accessor :Switch, :HeaderName

        def initialize(switch=nil, headername=nil)
          @Switch = switch
          @HeaderName = headername
        end

        def deserialize(params)
          @Switch = params['Switch']
          @HeaderName = params['HeaderName']
        end
      end

      # 存储客户端请求IP的头部信息配置。
      class ClientIPHeaderParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param HeaderName: 回源时，存放客户端 IP 的请求头名称。当 Switch 为 on 时，该参数必填。该参数不允许填写 X-Forwarded-For。
        # @type HeaderName: String

        attr_accessor :Switch, :HeaderName

        def initialize(switch=nil, headername=nil)
          @Switch = switch
          @HeaderName = headername
        end

        def deserialize(params)
          @Switch = params['Switch']
          @HeaderName = params['HeaderName']
        end
      end

      # 回源时携带客户端IP所属地域信息，值的格式为ISO-3166-1两位字母代码。
      class ClientIpCountry < TencentCloud::Common::AbstractModel
        # @param Switch: 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param HeaderName: 存放客户端 IP 所属地域信息的请求头名称，当 Switch=on 时有效。
        # 为空则使用默认值：EO-Client-IPCountry。
        # @type HeaderName: String

        attr_accessor :Switch, :HeaderName

        def initialize(switch=nil, headername=nil)
          @Switch = switch
          @HeaderName = headername
        end

        def deserialize(params)
          @Switch = params['Switch']
          @HeaderName = params['HeaderName']
        end
      end

      # 存储客户端请求IP的头部信息配置
      class ClientIpHeader < TencentCloud::Common::AbstractModel
        # @param Switch: 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param HeaderName: 回源时，存放客户端 IP 的请求头名称。当 Switch 为 on 时，该参数必填。该参数不允许填写 X-Forwarded-For。
        # @type HeaderName: String

        attr_accessor :Switch, :HeaderName

        def initialize(switch=nil, headername=nil)
          @Switch = switch
          @HeaderName = headername
        end

        def deserialize(params)
          @Switch = params['Switch']
          @HeaderName = params['HeaderName']
        end
      end

      # CNAME 状态
      class CnameStatus < TencentCloud::Common::AbstractModel
        # @param RecordName: 记录名称。
        # @type RecordName: String
        # @param Cname: CNAME 地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cname: String
        # @param Status: CNAME 状态信息，取值有：
        # <li>active：生效；</li>
        # <li>moved：不生效；</li>
        # @type Status: String

        attr_accessor :RecordName, :Cname, :Status

        def initialize(recordname=nil, cname=nil, status=nil)
          @RecordName = recordname
          @Cname = cname
          @Status = status
        end

        def deserialize(params)
          @RecordName = params['RecordName']
          @Cname = params['Cname']
          @Status = params['Status']
        end
      end

      # 规则引擎带有状态码的动作
      class CodeAction < TencentCloud::Common::AbstractModel
        # @param Action: 功能名称，功能名称填写规范可调用接口 [查询规则引擎的设置参数](https://cloud.tencent.com/document/product/1552/80618) 查看。
        # @type Action: String
        # @param Parameters: 操作参数。
        # @type Parameters: Array

        attr_accessor :Action, :Parameters

        def initialize(action=nil, parameters=nil)
          @Action = action
          @Parameters = parameters
        end

        def deserialize(params)
          @Action = params['Action']
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              rulecodeactionparams_tmp = RuleCodeActionParams.new
              rulecodeactionparams_tmp.deserialize(i)
              @Parameters << rulecodeactionparams_tmp
            end
          end
        end
      end

      # 智能压缩配置。
      class Compression < TencentCloud::Common::AbstractModel
        # @param Switch: 智能压缩配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Algorithms: 支持的压缩算法列表，取值有：
        # <li>brotli：brotli算法；</li>
        # <li>gzip：gzip算法。</li>
        # @type Algorithms: Array

        attr_accessor :Switch, :Algorithms

        def initialize(switch=nil, algorithms=nil)
          @Switch = switch
          @Algorithms = algorithms
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Algorithms = params['Algorithms']
        end
      end

      # 智能压缩配置。
      class CompressionParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 智能压缩配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Algorithms: 支持的压缩算法列表。当 Switch 为 on 时，此字段必填，否则此字段不生效。取值有：
        # <li>brotli：brotli 算法；</li>
        # <li>gzip：gzip 算法。</li>
        # @type Algorithms: Array

        attr_accessor :Switch, :Algorithms

        def initialize(switch=nil, algorithms=nil)
          @Switch = switch
          @Algorithms = algorithms
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Algorithms = params['Algorithms']
        end
      end

      # 配置组版本信息。
      class ConfigGroupVersionInfo < TencentCloud::Common::AbstractModel
        # @param VersionId: 版本 ID。
        # @type VersionId: String
        # @param VersionNumber: 版本号。
        # @type VersionNumber: String
        # @param GroupId: 配置组 ID。
        # @type GroupId: String
        # @param GroupType: 配置组类型。取值有：
        # <li>l7_acceleration ：七层加速配置组。</li>
        # <li>edge_functions ：边缘函数配置组。</li>
        # @type GroupType: String
        # @param Description: 版本描述。
        # @type Description: String
        # @param Status: 版本状态，取值有：
        # <li>creating：创建中；</li>
        # <li>inactive：未生效；</li>
        # <li>active：已生效。</li>
        # @type Status: String
        # @param CreateTime: 版本创建时间。时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type CreateTime: String

        attr_accessor :VersionId, :VersionNumber, :GroupId, :GroupType, :Description, :Status, :CreateTime

        def initialize(versionid=nil, versionnumber=nil, groupid=nil, grouptype=nil, description=nil, status=nil, createtime=nil)
          @VersionId = versionid
          @VersionNumber = versionnumber
          @GroupId = groupid
          @GroupType = grouptype
          @Description = description
          @Status = status
          @CreateTime = createtime
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @VersionNumber = params['VersionNumber']
          @GroupId = params['GroupId']
          @GroupType = params['GroupType']
          @Description = params['Description']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
        end
      end

      # ConfirmOriginACLUpdate请求参数结构体
      class ConfirmOriginACLUpdateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # ConfirmOriginACLUpdate返回参数结构体
      class ConfirmOriginACLUpdateResponse < TencentCloud::Common::AbstractModel
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

      # 内容标识符。该功能仅白名单开放。
      class ContentIdentifier < TencentCloud::Common::AbstractModel
        # @param ContentId: 内容标识符 ID。
        # @type ContentId: String
        # @param Description: 内容标识符描述。
        # @type Description: String
        # @param ReferenceCount: 被规则引擎引用的次数。
        # @type ReferenceCount: Integer
        # @param PlanId: 绑定的套餐 ID。
        # @type PlanId: String
        # @param Tags: 绑定的标签。
        # @type Tags: Array
        # @param Status: 内容标识符状态，取值有：
        # <li> active：已生效； </li>
        # <li> deleted：已删除。</li>
        # @type Status: String
        # @param CreatedOn: 创建时间，时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type CreatedOn: String
        # @param ModifiedOn: 最新一次更新时间，时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type ModifiedOn: String
        # @param DeletedOn: 删除时间，状态非 deleted 时候为空；时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletedOn: String

        attr_accessor :ContentId, :Description, :ReferenceCount, :PlanId, :Tags, :Status, :CreatedOn, :ModifiedOn, :DeletedOn

        def initialize(contentid=nil, description=nil, referencecount=nil, planid=nil, tags=nil, status=nil, createdon=nil, modifiedon=nil, deletedon=nil)
          @ContentId = contentid
          @Description = description
          @ReferenceCount = referencecount
          @PlanId = planid
          @Tags = tags
          @Status = status
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @DeletedOn = deletedon
        end

        def deserialize(params)
          @ContentId = params['ContentId']
          @Description = params['Description']
          @ReferenceCount = params['ReferenceCount']
          @PlanId = params['PlanId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @Status = params['Status']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @DeletedOn = params['DeletedOn']
        end
      end

      # CreateAccelerationDomain请求参数结构体
      class CreateAccelerationDomainRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 加速域名所属站点 ID。
        # @type ZoneId: String
        # @param DomainName: 加速域名。
        # @type DomainName: String
        # @param OriginInfo: 源站信息。
        # @type OriginInfo: :class:`Tencentcloud::Teo.v20220901.models.OriginInfo`
        # @param OriginProtocol: 回源协议，取值有：
        # <li>FOLLOW: 协议跟随；</li>
        # <li>HTTP: HTTP协议回源；</li>
        # <li>HTTPS: HTTPS协议回源。</li>
        # <li>不填默认为： FOLLOW。</li>
        # @type OriginProtocol: String
        # @param HttpOriginPort: HTTP回源端口，取值为1-65535，当OriginProtocol=FOLLOW/HTTP时生效, 不填默认为80。
        # @type HttpOriginPort: Integer
        # @param HttpsOriginPort: HTTPS回源端口，取值为1-65535，当OriginProtocol=FOLLOW/HTTPS时生效，不填默认为443。
        # @type HttpsOriginPort: Integer
        # @param IPv6Status: IPv6状态，取值有：
        # <li>follow：遵循站点IPv6配置；</li>
        # <li>on：开启状态；</li>
        # <li>off：关闭状态。</li>
        # <li>不填默认为：follow。</li>
        # @type IPv6Status: String

        attr_accessor :ZoneId, :DomainName, :OriginInfo, :OriginProtocol, :HttpOriginPort, :HttpsOriginPort, :IPv6Status

        def initialize(zoneid=nil, domainname=nil, origininfo=nil, originprotocol=nil, httporiginport=nil, httpsoriginport=nil, ipv6status=nil)
          @ZoneId = zoneid
          @DomainName = domainname
          @OriginInfo = origininfo
          @OriginProtocol = originprotocol
          @HttpOriginPort = httporiginport
          @HttpsOriginPort = httpsoriginport
          @IPv6Status = ipv6status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @DomainName = params['DomainName']
          unless params['OriginInfo'].nil?
            @OriginInfo = OriginInfo.new
            @OriginInfo.deserialize(params['OriginInfo'])
          end
          @OriginProtocol = params['OriginProtocol']
          @HttpOriginPort = params['HttpOriginPort']
          @HttpsOriginPort = params['HttpsOriginPort']
          @IPv6Status = params['IPv6Status']
        end
      end

      # CreateAccelerationDomain返回参数结构体
      class CreateAccelerationDomainResponse < TencentCloud::Common::AbstractModel
        # @param OwnershipVerification: 当您的站点未进行归属权验证时，您可通过该参数返回的信息单独对域名进行归属权校验。详情参考 [站点/域名归属权验证](https://cloud.tencent.com/document/product/1552/70789)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnershipVerification: :class:`Tencentcloud::Teo.v20220901.models.OwnershipVerification`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OwnershipVerification, :RequestId

        def initialize(ownershipverification=nil, requestid=nil)
          @OwnershipVerification = ownershipverification
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OwnershipVerification'].nil?
            @OwnershipVerification = OwnershipVerification.new
            @OwnershipVerification.deserialize(params['OwnershipVerification'])
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateAliasDomain请求参数结构体
      class CreateAliasDomainRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param AliasName: 别称域名名称。
        # @type AliasName: String
        # @param TargetName: 目标域名名称。
        # @type TargetName: String
        # @param CertType: 证书配置，取值有：
        # <li> none：不配置；</li>
        # <li> hosting：SSL托管证书。</li>默认取值为 none。
        # @type CertType: String
        # @param CertId: 当 CertType 取值为 hosting 时需填入相应证书 ID。
        # @type CertId: Array

        attr_accessor :ZoneId, :AliasName, :TargetName, :CertType, :CertId

        def initialize(zoneid=nil, aliasname=nil, targetname=nil, certtype=nil, certid=nil)
          @ZoneId = zoneid
          @AliasName = aliasname
          @TargetName = targetname
          @CertType = certtype
          @CertId = certid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @AliasName = params['AliasName']
          @TargetName = params['TargetName']
          @CertType = params['CertType']
          @CertId = params['CertId']
        end
      end

      # CreateAliasDomain返回参数结构体
      class CreateAliasDomainResponse < TencentCloud::Common::AbstractModel
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

      # CreateApplicationProxy请求参数结构体
      class CreateApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyName: 当 ProxyType=hostname 时，表示域名或子域名；
        # 当 ProxyType=instance 时，表示代理名称。
        # @type ProxyName: String
        # @param PlatType: 调度模式，取值有：
        # <li>ip：表示Anycast IP调度；</li>
        # <li>domain：表示CNAME调度。</li>
        # @type PlatType: String
        # @param SecurityType: 是否开启安全，取值有：
        # <li>0：关闭安全；</li>
        # <li>1：开启安全。</li>
        # @type SecurityType: Integer
        # @param AccelerateType: 是否开启加速，取值有：
        # <li>0：关闭加速；</li>
        # <li>1：开启加速。</li>
        # @type AccelerateType: Integer
        # @param ProxyType: 四层代理模式，取值有： <li>instance：表示实例模式。</li>不填写使用默认值instance。
        # @type ProxyType: String
        # @param SessionPersistTime: 会话保持时间，取值范围：30-3600，单位：秒。
        # 不填写使用默认值600。
        # @type SessionPersistTime: Integer
        # @param Ipv6: Ipv6 访问配置。
        # 不填写表示关闭 Ipv6 访问。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220901.models.Ipv6`
        # @param ApplicationProxyRules: 规则详细信息。
        # 不填写则不创建规则。
        # @type ApplicationProxyRules: Array
        # @param AccelerateMainland: 中国大陆加速优化配置。不填写表示关闭中国大陆加速优化。
        # @type AccelerateMainland: :class:`Tencentcloud::Teo.v20220901.models.AccelerateMainland`

        attr_accessor :ZoneId, :ProxyName, :PlatType, :SecurityType, :AccelerateType, :ProxyType, :SessionPersistTime, :Ipv6, :ApplicationProxyRules, :AccelerateMainland

        def initialize(zoneid=nil, proxyname=nil, plattype=nil, securitytype=nil, acceleratetype=nil, proxytype=nil, sessionpersisttime=nil, ipv6=nil, applicationproxyrules=nil, acceleratemainland=nil)
          @ZoneId = zoneid
          @ProxyName = proxyname
          @PlatType = plattype
          @SecurityType = securitytype
          @AccelerateType = acceleratetype
          @ProxyType = proxytype
          @SessionPersistTime = sessionpersisttime
          @Ipv6 = ipv6
          @ApplicationProxyRules = applicationproxyrules
          @AccelerateMainland = acceleratemainland
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyName = params['ProxyName']
          @PlatType = params['PlatType']
          @SecurityType = params['SecurityType']
          @AccelerateType = params['AccelerateType']
          @ProxyType = params['ProxyType']
          @SessionPersistTime = params['SessionPersistTime']
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          unless params['ApplicationProxyRules'].nil?
            @ApplicationProxyRules = []
            params['ApplicationProxyRules'].each do |i|
              applicationproxyrule_tmp = ApplicationProxyRule.new
              applicationproxyrule_tmp.deserialize(i)
              @ApplicationProxyRules << applicationproxyrule_tmp
            end
          end
          unless params['AccelerateMainland'].nil?
            @AccelerateMainland = AccelerateMainland.new
            @AccelerateMainland.deserialize(params['AccelerateMainland'])
          end
        end
      end

      # CreateApplicationProxy返回参数结构体
      class CreateApplicationProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 新增的四层代理应用ID。
        # @type ProxyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :RequestId

        def initialize(proxyid=nil, requestid=nil)
          @ProxyId = proxyid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateApplicationProxyRule请求参数结构体
      class CreateApplicationProxyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyId: 代理ID。
        # @type ProxyId: String
        # @param Proto: 协议，取值有：
        # <li>TCP：TCP协议；</li>
        # <li>UDP：UDP协议。</li>
        # @type Proto: String
        # @param Port: 端口，支持格式：
        # <li>80：80端口；</li>
        # <li>81-90：81至90端口。</li>
        # @type Port: Array
        # @param OriginType: 源站类型，取值有：
        # <li>custom：手动添加；</li>
        # <li>loadbalancer：负载均衡；</li>
        # <li>origins：源站组。</li>
        # @type OriginType: String
        # @param OriginValue: 源站信息：
        # <li>当 OriginType 为 custom 时，表示一个或多个源站，如`["8.8.8.8","9.9.9.9"]` 或 `OriginValue=["test.com"]`；</li>
        # <li>当 OriginType 为 loadbalancer 时，表示一个负载均衡，如`["lb-xdffsfasdfs"]`；</li>
        # <li>当 OriginType 为 origins 时，要求有且仅有一个元素，表示源站组ID，如`["origin-537f5b41-162a-11ed-abaa-525400c5da15"]`。</li>
        # @type OriginValue: Array
        # @param ForwardClientIp: 传递客户端IP，取值有：
        # <li>TOA：TOA（仅Proto=TCP时可选）；</li>
        # <li>PPV1：Proxy Protocol传递，协议版本V1（仅Proto=TCP时可选）；</li>
        # <li>PPV2：Proxy Protocol传递，协议版本V2；</li>
        # <li>OFF：不传递。</li>默认值：OFF。
        # @type ForwardClientIp: String
        # @param SessionPersist: 是否开启会话保持，取值有：
        # <li>true：开启；</li>
        # <li>false：关闭。</li>默认值：false。
        # @type SessionPersist: Boolean
        # @param SessionPersistTime: 会话保持的时间，只有当SessionPersist为true时，该值才会生效。
        # @type SessionPersistTime: Integer
        # @param OriginPort: 源站端口，支持格式：
        # <li>单端口：80；</li>
        # <li>端口段：81-90，81至90端口。</li>
        # @type OriginPort: String
        # @param RuleTag: 规则标签。默认值为空字符串。
        # @type RuleTag: String

        attr_accessor :ZoneId, :ProxyId, :Proto, :Port, :OriginType, :OriginValue, :ForwardClientIp, :SessionPersist, :SessionPersistTime, :OriginPort, :RuleTag

        def initialize(zoneid=nil, proxyid=nil, proto=nil, port=nil, origintype=nil, originvalue=nil, forwardclientip=nil, sessionpersist=nil, sessionpersisttime=nil, originport=nil, ruletag=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Proto = proto
          @Port = port
          @OriginType = origintype
          @OriginValue = originvalue
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @SessionPersistTime = sessionpersisttime
          @OriginPort = originport
          @RuleTag = ruletag
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @Proto = params['Proto']
          @Port = params['Port']
          @OriginType = params['OriginType']
          @OriginValue = params['OriginValue']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          @SessionPersistTime = params['SessionPersistTime']
          @OriginPort = params['OriginPort']
          @RuleTag = params['RuleTag']
        end
      end

      # CreateApplicationProxyRule返回参数结构体
      class CreateApplicationProxyRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId

        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCLSIndex请求参数结构体
      class CreateCLSIndexRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param TaskId: 实时日志投递任务 ID。
        # @type TaskId: String

        attr_accessor :ZoneId, :TaskId

        def initialize(zoneid=nil, taskid=nil)
          @ZoneId = zoneid
          @TaskId = taskid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TaskId = params['TaskId']
        end
      end

      # CreateCLSIndex返回参数结构体
      class CreateCLSIndexResponse < TencentCloud::Common::AbstractModel
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

      # CreateConfigGroupVersion请求参数结构体
      class CreateConfigGroupVersionRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GroupId: 待新建版本的配置组 ID。
        # @type GroupId: String
        # @param Content: 待导入的配置内容。要求采用 JSON 格式，按照 UTF-8 方式进行编码。配置文件内容可参考下方示例。
        # @type Content: String
        # @param Description: 版本描述，可输入最大长度为 50 个字符，可以通过本字段填写该版本的使用场景等。
        # @type Description: String

        attr_accessor :ZoneId, :GroupId, :Content, :Description

        def initialize(zoneid=nil, groupid=nil, content=nil, description=nil)
          @ZoneId = zoneid
          @GroupId = groupid
          @Content = content
          @Description = description
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
          @Content = params['Content']
          @Description = params['Description']
        end
      end

      # CreateConfigGroupVersion返回参数结构体
      class CreateConfigGroupVersionResponse < TencentCloud::Common::AbstractModel
        # @param VersionId: 版本 ID。
        # @type VersionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :VersionId, :RequestId

        def initialize(versionid=nil, requestid=nil)
          @VersionId = versionid
          @RequestId = requestid
        end

        def deserialize(params)
          @VersionId = params['VersionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateContentIdentifier请求参数结构体
      class CreateContentIdentifierRequest < TencentCloud::Common::AbstractModel
        # @param Description: 内容标识符的描述，长度限制不超过 20 个字符。
        # @type Description: String
        # @param PlanId: 待绑定的目标套餐 ID，仅限企业版可用。<li>当您账号下已存在套餐时，需要先前往 [套餐管理](https://console.cloud.tencent.com/edgeone/package) 获取套餐 ID，直接将内容标识符绑定至该套餐；</li><li>若您当前没有可绑定的套餐时，请先购买企业版套餐。</li>
        # @type PlanId: String
        # @param Tags: 标签。该参数用于对内容标识符进行分权限管控。您需要先前往 [标签控制台](https://console.cloud.tencent.com/tag/taglist) 创建标签才可以在此处传入对应的标签键和标签值。
        # @type Tags: Array

        attr_accessor :Description, :PlanId, :Tags

        def initialize(description=nil, planid=nil, tags=nil)
          @Description = description
          @PlanId = planid
          @Tags = tags
        end

        def deserialize(params)
          @Description = params['Description']
          @PlanId = params['PlanId']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
        end
      end

      # CreateContentIdentifier返回参数结构体
      class CreateContentIdentifierResponse < TencentCloud::Common::AbstractModel
        # @param ContentId: 生成的内容标识符 ID。创建完成之后您可以前往规则引擎在一定匹配条件下「设置内容标识符」。
        # @type ContentId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ContentId, :RequestId

        def initialize(contentid=nil, requestid=nil)
          @ContentId = contentid
          @RequestId = requestid
        end

        def deserialize(params)
          @ContentId = params['ContentId']
          @RequestId = params['RequestId']
        end
      end

      # CreateCustomizeErrorPage请求参数结构体
      class CreateCustomizeErrorPageRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Name: 自定义错误页名称，名称为 2-30 个字符。
        # @type Name: String
        # @param ContentType: 自定义错误页面类型，取值有：<li>text/html； </li><li>application/json；</li><li>text/plain；</li><li>text/xml。</li>
        # @type ContentType: String
        # @param Description: 自定义错误页面描述，描述不超过 60 个字符。
        # @type Description: String
        # @param Content: 自定义错误页面内容，内容不超过 2KB。
        # @type Content: String

        attr_accessor :ZoneId, :Name, :ContentType, :Description, :Content

        def initialize(zoneid=nil, name=nil, contenttype=nil, description=nil, content=nil)
          @ZoneId = zoneid
          @Name = name
          @ContentType = contenttype
          @Description = description
          @Content = content
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Name = params['Name']
          @ContentType = params['ContentType']
          @Description = params['Description']
          @Content = params['Content']
        end
      end

      # CreateCustomizeErrorPage返回参数结构体
      class CreateCustomizeErrorPageResponse < TencentCloud::Common::AbstractModel
        # @param PageId: 页面 ID。
        # @type PageId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PageId, :RequestId

        def initialize(pageid=nil, requestid=nil)
          @PageId = pageid
          @RequestId = requestid
        end

        def deserialize(params)
          @PageId = params['PageId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDnsRecord请求参数结构体
      class CreateDnsRecordRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Name: DNS 记录名，如果是中文、韩文、日文域名，需要转换为 punycode 后输入。
        # @type Name: String
        # @param Type: DNS 记录类型，取值有：<li>A：将域名指向一个外网 IPv4 地址，如 8.8.8.8；</li><li>AAAA：将域名指向一个外网 IPv6 地址；</li><li>MX：用于邮箱服务器。存在多条 MX 记录时，优先级越低越优先；</li><li>CNAME：将域名指向另一个域名，再由该域名解析出最终 IP 地址；</li><li>TXT：对域名进行标识和说明，常用于域名验证和 SPF 记录（反垃圾邮件）；</li><li>NS：如果需要将子域名交给其他 DNS 服务商解析，则需要添加 NS 记录。根域名无法添加 NS 记录；</li><li>CAA：指定可为本站点颁发证书的 CA；</li><li>SRV：标识某台服务器使用了某个服务，常见于微软系统的目录管理。</li>
        # 不同的记录类型呢例如 SRV、CAA 记录对主机记录名称、记录值格式有不同的要求，各记录类型的详细说明介绍和格式示例请参考：[解析记录类型介绍](https://cloud.tencent.com/document/product/1552/90453#2f681022-91ab-4a9e-ac3d-0a6c454d954e)。
        # @type Type: String
        # @param Content: DNS 记录内容，根据 Type 值填入与之相对应的内容，如果是中文、韩文、日文域名，需要转换为 punycode 后输入。
        # @type Content: String
        # @param Location: DNS 记录解析线路，不指定默认为 Default，表示默认解析线路，代表全部地域生效。

        # - 解析线路配置仅适用于当 Type（DNS 记录类型）为 A、AAAA、CNAME 时。
        # - 解析线路配置仅适用于标准版、企业版套餐使用，取值请参考：[解析线路及对应代码枚举](https://cloud.tencent.com/document/product/1552/112542)。
        # @type Location: String
        # @param TTL: 缓存时间，用户可指定值范围 60~86400，数值越小，修改记录各地生效时间越快，默认为 300，单位：秒。
        # @type TTL: Integer
        # @param Weight: DNS 记录权重，用户可指定值范围 -1~100，设置为 0 时表示不解析，不指定默认为 -1，表示不设置权重。权重配置仅适用于当 Type（DNS 记录类型）为 A、AAAA、CNAME 时。<br>注意：同一个子域名下，相同解析线路的不同 DNS 记录，应保持同时设置权重或者同时都不设置权重。
        # @type Weight: Integer
        # @param Priority: MX 记录优先级，该参数仅在当 Type（DNS 记录类型）为 MX 时生效，值越小优先级越高，用户可指定值范围0~50，不指定默认为0。
        # @type Priority: Integer

        attr_accessor :ZoneId, :Name, :Type, :Content, :Location, :TTL, :Weight, :Priority

        def initialize(zoneid=nil, name=nil, type=nil, content=nil, location=nil, ttl=nil, weight=nil, priority=nil)
          @ZoneId = zoneid
          @Name = name
          @Type = type
          @Content = content
          @Location = location
          @TTL = ttl
          @Weight = weight
          @Priority = priority
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Name = params['Name']
          @Type = params['Type']
          @Content = params['Content']
          @Location = params['Location']
          @TTL = params['TTL']
          @Weight = params['Weight']
          @Priority = params['Priority']
        end
      end

      # CreateDnsRecord返回参数结构体
      class CreateDnsRecordResponse < TencentCloud::Common::AbstractModel
        # @param RecordId: DNS 记录 ID。
        # @type RecordId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordId, :RequestId

        def initialize(recordid=nil, requestid=nil)
          @RecordId = recordid
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @RequestId = params['RequestId']
        end
      end

      # CreateFunction请求参数结构体
      class CreateFunctionRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Name: 函数名称，只能包含小写字母、数字、连字符，以数字或字母开头，以数字或字母结尾，最大支持 30 个字符。
        # @type Name: String
        # @param Content: 函数内容，当前仅支持 JavaScript 代码，最大支持 5MB 大小。
        # @type Content: String
        # @param Remark: 函数描述，最大支持 60 个字符。
        # @type Remark: String

        attr_accessor :ZoneId, :Name, :Content, :Remark

        def initialize(zoneid=nil, name=nil, content=nil, remark=nil)
          @ZoneId = zoneid
          @Name = name
          @Content = content
          @Remark = remark
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Name = params['Name']
          @Content = params['Content']
          @Remark = params['Remark']
        end
      end

      # CreateFunction返回参数结构体
      class CreateFunctionResponse < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数 ID。
        # @type FunctionId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionId, :RequestId

        def initialize(functionid=nil, requestid=nil)
          @FunctionId = functionid
          @RequestId = requestid
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @RequestId = params['RequestId']
        end
      end

      # CreateFunctionRule请求参数结构体
      class CreateFunctionRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param FunctionRuleConditions: 规则条件列表，相同触发规则的不同条件匹配项之间为或关系。
        # @type FunctionRuleConditions: Array
        # @param FunctionId: 函数 ID，命中触发规则条件后执行的函数。
        # @type FunctionId: String
        # @param Remark: 规则描述，最大支持 60 个字符。
        # @type Remark: String

        attr_accessor :ZoneId, :FunctionRuleConditions, :FunctionId, :Remark

        def initialize(zoneid=nil, functionruleconditions=nil, functionid=nil, remark=nil)
          @ZoneId = zoneid
          @FunctionRuleConditions = functionruleconditions
          @FunctionId = functionid
          @Remark = remark
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['FunctionRuleConditions'].nil?
            @FunctionRuleConditions = []
            params['FunctionRuleConditions'].each do |i|
              functionrulecondition_tmp = FunctionRuleCondition.new
              functionrulecondition_tmp.deserialize(i)
              @FunctionRuleConditions << functionrulecondition_tmp
            end
          end
          @FunctionId = params['FunctionId']
          @Remark = params['Remark']
        end
      end

      # CreateFunctionRule返回参数结构体
      class CreateFunctionRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID。
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId

        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateJustInTimeTranscodeTemplate请求参数结构体
      class CreateJustInTimeTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param TemplateName: 即时转码模板名称，长度限制：64 个字符。
        # @type TemplateName: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。默认为空。
        # @type Comment: String
        # @param VideoStreamSwitch: 启用视频流开关，取值：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>默认值：on。
        # @type VideoStreamSwitch: String
        # @param AudioStreamSwitch: 启用音频流开关，取值：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>默认值：on。
        # @type AudioStreamSwitch: String
        # @param VideoTemplate: 视频流配置参数，当 VideoStreamSwitch 为 on，该字段必填。
        # @type VideoTemplate: :class:`Tencentcloud::Teo.v20220901.models.VideoTemplateInfo`
        # @param AudioTemplate: 音频流配置参数，当 AudioStreamSwitch 为 on，该字段必填。
        # @type AudioTemplate: :class:`Tencentcloud::Teo.v20220901.models.AudioTemplateInfo`

        attr_accessor :ZoneId, :TemplateName, :Comment, :VideoStreamSwitch, :AudioStreamSwitch, :VideoTemplate, :AudioTemplate

        def initialize(zoneid=nil, templatename=nil, comment=nil, videostreamswitch=nil, audiostreamswitch=nil, videotemplate=nil, audiotemplate=nil)
          @ZoneId = zoneid
          @TemplateName = templatename
          @Comment = comment
          @VideoStreamSwitch = videostreamswitch
          @AudioStreamSwitch = audiostreamswitch
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TemplateName = params['TemplateName']
          @Comment = params['Comment']
          @VideoStreamSwitch = params['VideoStreamSwitch']
          @AudioStreamSwitch = params['AudioStreamSwitch']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfo.new
            @VideoTemplate.deserialize(params['VideoTemplate'])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfo.new
            @AudioTemplate.deserialize(params['AudioTemplate'])
          end
        end
      end

      # CreateJustInTimeTranscodeTemplate返回参数结构体
      class CreateJustInTimeTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 即时转码模板唯一标识，用于即时转码 URL 拼接。
        # @type TemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId

        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateL4Proxy请求参数结构体
      class CreateL4ProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyName: 四层代理实例名称，可输入 1-50 个字符，允许的字符为 a-z、0-9、-，且 - 不能单独注册或连续使用，不能放在开头或结尾。创建完成后不支持修改。
        # @type ProxyName: String
        # @param Area: 四层代理实例加速区域。
        # <li>mainland：中国大陆可用区；</li>
        # <li>overseas：全球可用区（不含中国大陆）；</li>
        # <li>global：全球可用区。</li>
        # @type Area: String
        # @param Ipv6: 是否开启 IPv6 访问，不填写时默认为 off。该配置仅在部分加速区域和安全防护配置下支持开启，详情请参考 [新建四层代理实例](https://cloud.tencent.com/document/product/1552/90025) 。取值为：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>

        # @type Ipv6: String
        # @param StaticIp: 是否开启固定 IP，不填写时默认为 off。该配置仅在部分加速区域和安全防护配置下支持开启，详情请参考 [新建四层代理实例](https://cloud.tencent.com/document/product/1552/90025) 。取值为：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type StaticIp: String
        # @param AccelerateMainland: 是否开启中国大陆网络优化，不填写时默认为 off。该配置仅在部分加速区域和安全防护配置下支持开启，详情请参考 [新建四层代理实例](https://cloud.tencent.com/document/product/1552/90025) 。取值为：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type AccelerateMainland: String
        # @param DDosProtectionConfig: L3/L4 DDoS 防护配置，不填写时默认使用平台默认防护选项。详情参考 [独立 DDoS 防护](https://cloud.tencent.com/document/product/1552/95994)。
        # @type DDosProtectionConfig: :class:`Tencentcloud::Teo.v20220901.models.DDosProtectionConfig`

        attr_accessor :ZoneId, :ProxyName, :Area, :Ipv6, :StaticIp, :AccelerateMainland, :DDosProtectionConfig

        def initialize(zoneid=nil, proxyname=nil, area=nil, ipv6=nil, staticip=nil, acceleratemainland=nil, ddosprotectionconfig=nil)
          @ZoneId = zoneid
          @ProxyName = proxyname
          @Area = area
          @Ipv6 = ipv6
          @StaticIp = staticip
          @AccelerateMainland = acceleratemainland
          @DDosProtectionConfig = ddosprotectionconfig
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyName = params['ProxyName']
          @Area = params['Area']
          @Ipv6 = params['Ipv6']
          @StaticIp = params['StaticIp']
          @AccelerateMainland = params['AccelerateMainland']
          unless params['DDosProtectionConfig'].nil?
            @DDosProtectionConfig = DDosProtectionConfig.new
            @DDosProtectionConfig.deserialize(params['DDosProtectionConfig'])
          end
        end
      end

      # CreateL4Proxy返回参数结构体
      class CreateL4ProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 四层实例 ID。
        # @type ProxyId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :RequestId

        def initialize(proxyid=nil, requestid=nil)
          @ProxyId = proxyid
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateL4ProxyRules请求参数结构体
      class CreateL4ProxyRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 四层代理实例 ID。
        # @type ProxyId: String
        # @param L4ProxyRules: 转发规则列表。单次最多支持 200 条转发规则。
        # 注意：L4ProxyRule 在此处使用时，Protocol、PortRange、OriginType、OriginValue、OriginPortRange 为必填字段；ClientIPPassThroughMode、SessionPersist、SessionPersistTime、RuleTag 均为选填字段；RuleId、Status 请勿填写。
        # @type L4ProxyRules: Array

        attr_accessor :ZoneId, :ProxyId, :L4ProxyRules

        def initialize(zoneid=nil, proxyid=nil, l4proxyrules=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @L4ProxyRules = l4proxyrules
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          unless params['L4ProxyRules'].nil?
            @L4ProxyRules = []
            params['L4ProxyRules'].each do |i|
              l4proxyrule_tmp = L4ProxyRule.new
              l4proxyrule_tmp.deserialize(i)
              @L4ProxyRules << l4proxyrule_tmp
            end
          end
        end
      end

      # CreateL4ProxyRules返回参数结构体
      class CreateL4ProxyRulesResponse < TencentCloud::Common::AbstractModel
        # @param L4ProxyRuleIds: 新增转发规则的 ID，以数组的形式返回。
        # @type L4ProxyRuleIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :L4ProxyRuleIds, :RequestId

        def initialize(l4proxyruleids=nil, requestid=nil)
          @L4ProxyRuleIds = l4proxyruleids
          @RequestId = requestid
        end

        def deserialize(params)
          @L4ProxyRuleIds = params['L4ProxyRuleIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateL7AccRules请求参数结构体
      class CreateL7AccRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Rules: 规则内容。
        # @type Rules: Array

        attr_accessor :ZoneId, :Rules

        def initialize(zoneid=nil, rules=nil)
          @ZoneId = zoneid
          @Rules = rules
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleengineitem_tmp = RuleEngineItem.new
              ruleengineitem_tmp.deserialize(i)
              @Rules << ruleengineitem_tmp
            end
          end
        end
      end

      # CreateL7AccRules返回参数结构体
      class CreateL7AccRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleIds: 规则 ID 列表。
        # @type RuleIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleIds, :RequestId

        def initialize(ruleids=nil, requestid=nil)
          @RuleIds = ruleids
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleIds = params['RuleIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateLoadBalancer请求参数结构体
      class CreateLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Name: 实例名称，可输入 1-200 个字符，允许字符为 a-z，A-Z，0-9，_，-。
        # @type Name: String
        # @param Type: 实例类型，取值有：
        # <li>HTTP：HTTP 专用型，支持添加 HTTP 专用型和通用型源站组，仅支持被站点加速相关服务引用（如域名服务和规则引擎）；</li>
        # <li>GENERAL：通用型，仅支持添加通用型源站组，能被站点加速服务（如域名服务和规则引擎）和四层代理引用。</li>
        # @type Type: String
        # @param OriginGroups: 源站组列表及其对应的容灾调度优先级。详情请参考 [快速创建负载均衡实例](https://cloud.tencent.com/document/product/1552/104223) 中的示例场景。
        # @type OriginGroups: Array
        # @param HealthChecker: 健康检查策略。详情请参考 [健康检查策略介绍](https://cloud.tencent.com/document/product/1552/104228)。不填写时，默认为不启用健康检查。
        # @type HealthChecker: :class:`Tencentcloud::Teo.v20220901.models.HealthChecker`
        # @param SteeringPolicy: 源站组间的流量调度策略，取值有：
        # <li>Pritory：按优先级顺序进行故障转移。</li>默认值为 Pritory。
        # @type SteeringPolicy: String
        # @param FailoverPolicy: 实际访问某源站失败时的请求重试策略，详情请参考 [请求重试策略介绍](https://cloud.tencent.com/document/product/1552/104227)，取值有：
        # <li>OtherOriginGroup：单次请求失败后，请求优先重试下一优先级源站组；</li>
        # <li>OtherRecordInOriginGroup：单次请求失败后，请求优先重试同源站组内的其他源站。</li>默认值为 OtherRecordInOriginGroup。
        # @type FailoverPolicy: String

        attr_accessor :ZoneId, :Name, :Type, :OriginGroups, :HealthChecker, :SteeringPolicy, :FailoverPolicy

        def initialize(zoneid=nil, name=nil, type=nil, origingroups=nil, healthchecker=nil, steeringpolicy=nil, failoverpolicy=nil)
          @ZoneId = zoneid
          @Name = name
          @Type = type
          @OriginGroups = origingroups
          @HealthChecker = healthchecker
          @SteeringPolicy = steeringpolicy
          @FailoverPolicy = failoverpolicy
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['OriginGroups'].nil?
            @OriginGroups = []
            params['OriginGroups'].each do |i|
              origingroupinloadbalancer_tmp = OriginGroupInLoadBalancer.new
              origingroupinloadbalancer_tmp.deserialize(i)
              @OriginGroups << origingroupinloadbalancer_tmp
            end
          end
          unless params['HealthChecker'].nil?
            @HealthChecker = HealthChecker.new
            @HealthChecker.deserialize(params['HealthChecker'])
          end
          @SteeringPolicy = params['SteeringPolicy']
          @FailoverPolicy = params['FailoverPolicy']
        end
      end

      # CreateLoadBalancer返回参数结构体
      class CreateLoadBalancerResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 负载均衡实例 ID。
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId

        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateMultiPathGatewayLine请求参数结构体
      class CreateMultiPathGatewayLineRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID 。
        # @type ZoneId: String
        # @param GatewayId: 多通道安全网关 ID 。
        # @type GatewayId: String
        # @param LineType: 线路类型，取值有：
        #  <li>direct ：直连线路，不支持修改和删除。</li> <li>proxy ：EdgeOne 四层代理线路，支持修改实例 ID 和规则 ID，不支持删除。</li> <li>custom ：自定义线路，支持修改、删除实例 ID 和规则 ID。</li>
        # @type LineType: String
        # @param LineAddress: 线路地址，格式为 ip:port。
        # @type LineAddress: String
        # @param ProxyId: 四层代理实例 ID，当线路类型 LineType 取值为 proxy（EdgeOne 四层代理）必传，可由接口 [DescribeL4Proxy](https://cloud.tencent.com/document/api/1552/103413) 获取。
        # @type ProxyId: String
        # @param RuleId: 转发规则 ID ，当线路类型 LineType 取值为 proxy（EdgeOne 四层代理）必传，可以从接口 [DescribeL4ProxyRules](https://cloud.tencent.com/document/api/1552/103412) 获取。
        # @type RuleId: String

        attr_accessor :ZoneId, :GatewayId, :LineType, :LineAddress, :ProxyId, :RuleId

        def initialize(zoneid=nil, gatewayid=nil, linetype=nil, lineaddress=nil, proxyid=nil, ruleid=nil)
          @ZoneId = zoneid
          @GatewayId = gatewayid
          @LineType = linetype
          @LineAddress = lineaddress
          @ProxyId = proxyid
          @RuleId = ruleid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GatewayId = params['GatewayId']
          @LineType = params['LineType']
          @LineAddress = params['LineAddress']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
        end
      end

      # CreateMultiPathGatewayLine返回参数结构体
      class CreateMultiPathGatewayLineResponse < TencentCloud::Common::AbstractModel
        # @param LineId: 线路 ID ， 取值有:
        # <li> line-1： EdgeOne 四层代理线路，支持修改实例和规则，不支持删除；</li>
        # <li> line-2 及以上：EdgeOne 四层代理线路或者自定义线路，支持修改、删除实例和规则。</li>
        # @type LineId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :LineId, :RequestId

        def initialize(lineid=nil, requestid=nil)
          @LineId = lineid
          @RequestId = requestid
        end

        def deserialize(params)
          @LineId = params['LineId']
          @RequestId = params['RequestId']
        end
      end

      # CreateMultiPathGateway请求参数结构体
      class CreateMultiPathGatewayRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GatewayType: 网关类型，取值有：
        # <li> cloud：云上网关，腾讯云创建和管理的网关；</li>
        # <li> private：自有网关，用户部署的私有网关。</li>
        # @type GatewayType: String
        # @param GatewayName: 网关名称，16 个字符以内，可用字符（a-z,A-Z,0-9,-,_）。
        # @type GatewayName: String
        # @param GatewayPort: 网关端口，范围 1～65535（除去 8888 ）。
        # @type GatewayPort: Integer
        # @param RegionId: 网关地域，GatewayType 取值为 cloud（云上网关）必填。可以从接口 DescribeMultiPathGatewayRegions 获取 RegionId 列表。
        # @type RegionId: String
        # @param GatewayIP: 网关地址，GatewayType 取值为 private（自有网关）必填，使用该地址时，请确保该地址已录入腾讯云多通道安全加速网关系统。如未录入，需要在本接口调用前通过工单或者联系架构师把网关 IP 地址提前录入腾讯云多通道安全加速网关系统。
        # @type GatewayIP: String

        attr_accessor :ZoneId, :GatewayType, :GatewayName, :GatewayPort, :RegionId, :GatewayIP

        def initialize(zoneid=nil, gatewaytype=nil, gatewayname=nil, gatewayport=nil, regionid=nil, gatewayip=nil)
          @ZoneId = zoneid
          @GatewayType = gatewaytype
          @GatewayName = gatewayname
          @GatewayPort = gatewayport
          @RegionId = regionid
          @GatewayIP = gatewayip
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GatewayType = params['GatewayType']
          @GatewayName = params['GatewayName']
          @GatewayPort = params['GatewayPort']
          @RegionId = params['RegionId']
          @GatewayIP = params['GatewayIP']
        end
      end

      # CreateMultiPathGateway返回参数结构体
      class CreateMultiPathGatewayResponse < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 ID。
        # @type GatewayId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GatewayId, :RequestId

        def initialize(gatewayid=nil, requestid=nil)
          @GatewayId = gatewayid
          @RequestId = requestid
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @RequestId = params['RequestId']
        end
      end

      # CreateMultiPathGatewaySecretKey请求参数结构体
      class CreateMultiPathGatewaySecretKeyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param SecretKey: 多通道安全加速网关接入密钥，base64字符串，编码前字符串长度为 32-48 个字符，非必填，不填系统自动生成，可通过接口 DescribeMultiPathGatewaySecretKey 查询。
        # @type SecretKey: String

        attr_accessor :ZoneId, :SecretKey

        def initialize(zoneid=nil, secretkey=nil)
          @ZoneId = zoneid
          @SecretKey = secretkey
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @SecretKey = params['SecretKey']
        end
      end

      # CreateMultiPathGatewaySecretKey返回参数结构体
      class CreateMultiPathGatewaySecretKeyResponse < TencentCloud::Common::AbstractModel
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

      # CreateOriginGroup请求参数结构体
      class CreateOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param Name: 源站组名称，可输入1 - 200个字符，允许的字符为 a - z, A - Z, 0 - 9, _, - 。
        # @type Name: String
        # @param Type: 源站组类型，此参数必填，取值有：
        # <li>GENERAL：通用型源站组，仅支持添加 IP/域名 源站，可以被域名服务、规则引擎、四层代理、通用型负载均衡、HTTP 专用型负载均衡引用；</li>
        # <li>HTTP： HTTP 专用型源站组，支持添加 IP/域名、对象存储源站作为源站，无法被四层代理引用，仅支持被添加加速域名、规则引擎-修改源站、HTTP 专用型负载均衡引用。</li>
        # @type Type: String
        # @param Records: 源站记录信息，此参数必填。
        # @type Records: Array
        # @param HostHeader: 回源 Host Header，仅 Type = HTTP 时传入生效，规则引擎修改 Host Header 配置优先级高于源站组的 Host Header。
        # @type HostHeader: String

        attr_accessor :ZoneId, :Name, :Type, :Records, :HostHeader

        def initialize(zoneid=nil, name=nil, type=nil, records=nil, hostheader=nil)
          @ZoneId = zoneid
          @Name = name
          @Type = type
          @Records = records
          @HostHeader = hostheader
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @Records << originrecord_tmp
            end
          end
          @HostHeader = params['HostHeader']
        end
      end

      # CreateOriginGroup返回参数结构体
      class CreateOriginGroupResponse < TencentCloud::Common::AbstractModel
        # @param OriginGroupId: 源站组ID。
        # @type OriginGroupId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginGroupId, :RequestId

        def initialize(origingroupid=nil, requestid=nil)
          @OriginGroupId = origingroupid
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginGroupId = params['OriginGroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePlanForZone请求参数结构体
      class CreatePlanForZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param PlanType: 所要购买套餐的类型，取值有：
        # <li> sta: 全球内容分发网络（不包括中国大陆）标准版套餐； </li>
        # <li> sta_with_bot: 全球内容分发网络（不包括中国大陆）标准版套餐附带bot管理；</li>
        # <li> sta_cm: 中国大陆内容分发网络标准版套餐； </li>
        # <li> sta_cm_with_bot: 中国大陆内容分发网络标准版套餐附带bot管理；</li>
        # <li> sta_global ：全球内容分发网络（包括中国大陆）标准版套餐； </li>
        # <li> sta_global_with_bot ：全球内容分发网络（包括中国大陆）标准版套餐附带bot管理；</li>
        # <li> ent: 全球内容分发网络（不包括中国大陆）企业版套餐； </li>
        # <li> ent_with_bot: 全球内容分发网络（不包括中国大陆）企业版套餐附带bot管理；</li>
        # <li> ent_cm: 中国大陆内容分发网络企业版套餐； </li>
        # <li> ent_cm_with_bot: 中国大陆内容分发网络企业版套餐附带bot管理。</li>
        # <li> ent_global ：全球内容分发网络（包括中国大陆）企业版套餐； </li>
        # <li> ent_global_with_bot ：全球内容分发网络（包括中国大陆）企业版套餐附带bot管理。</li>当前账户可购买套餐类型请以<a href="https://cloud.tencent.com/document/product/1552/80606">DescribeAvailablePlans</a>返回为准。
        # @type PlanType: String

        attr_accessor :ZoneId, :PlanType

        def initialize(zoneid=nil, plantype=nil)
          @ZoneId = zoneid
          @PlanType = plantype
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @PlanType = params['PlanType']
        end
      end

      # CreatePlanForZone返回参数结构体
      class CreatePlanForZoneResponse < TencentCloud::Common::AbstractModel
        # @param ResourceNames: 购买的资源名字列表。
        # @type ResourceNames: Array
        # @param DealNames: 购买的订单号列表。
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ResourceNames, :DealNames, :RequestId

        def initialize(resourcenames=nil, dealnames=nil, requestid=nil)
          @ResourceNames = resourcenames
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @ResourceNames = params['ResourceNames']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # CreatePlan请求参数结构体
      class CreatePlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanType: 订阅的套餐类型，取值有：<li> personal：个人版套餐，预付费套餐；</li><li> basic：基础版套餐，预付费套餐；</li><li> standard：标准版套餐，预付费套餐；</li><li> enterprise：企业版套餐，后付费套餐。</li>订阅预付费套餐时，请确保账号内有足够余额，余额不足会产生一个待支付的订单。
        # 计费概述参考 [Edgeone计费概述](https://cloud.tencent.com/document/product/1552/94156)
        # 不同套餐区别参考 [Edgeone计费套餐选型对比](https://cloud.tencent.com/document/product/1552/94165)
        # @type PlanType: String
        # @param AutoUseVoucher: 是否自动使用代金券，取值有：<li> true：是；</li><li> false：否。</li>该参数仅在 PlanType 为 personal, basic, standard 时有效。
        # 不填写使用默认值 false。
        # @type AutoUseVoucher: String
        # @param PrepaidPlanParam: 订阅预付费套餐参数，PlanType 为 personal, basic, standard 时，可以选填该参数，用于传入套餐的订阅时长和是否开启自动续费。
        # 不填该参数时，默认开通套餐时长为 1 个月，不开启自动续费。
        # @type PrepaidPlanParam: :class:`Tencentcloud::Teo.v20220901.models.PrepaidPlanParam`

        attr_accessor :PlanType, :AutoUseVoucher, :PrepaidPlanParam

        def initialize(plantype=nil, autousevoucher=nil, prepaidplanparam=nil)
          @PlanType = plantype
          @AutoUseVoucher = autousevoucher
          @PrepaidPlanParam = prepaidplanparam
        end

        def deserialize(params)
          @PlanType = params['PlanType']
          @AutoUseVoucher = params['AutoUseVoucher']
          unless params['PrepaidPlanParam'].nil?
            @PrepaidPlanParam = PrepaidPlanParam.new
            @PrepaidPlanParam.deserialize(params['PrepaidPlanParam'])
          end
        end
      end

      # CreatePlan返回参数结构体
      class CreatePlanResponse < TencentCloud::Common::AbstractModel
        # @param PlanId: 套餐 ID，形如 edgeone-2unuvzjmmn2q。
        # @type PlanId: String
        # @param DealName: 订单号。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlanId, :DealName, :RequestId

        def initialize(planid=nil, dealname=nil, requestid=nil)
          @PlanId = planid
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # CreatePrefetchTask请求参数结构体
      class CreatePrefetchTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # 若您希望快速提交不同站点下的 Targets Url，可以将其填写为 *，但前提是调用该 API 的账号必须具备主账号下全部站点资源的权限。
        # @type ZoneId: String
        # @param Targets: 要预热的资源列表，每个元素格式类似如下:
        # http://www.example.com/example.txt。参数值当前必填。
        # 注意：提交任务数受计费套餐配额限制，请查看 [EO计费套餐](https://cloud.tencent.com/document/product/1552/77380)。
        # @type Targets: Array
        # @param EncodeUrl: 是否对url进行encode，若内容含有非 ASCII 字符集的字符，请开启此开关进行编码转换（编码规则遵循 RFC3986）。
        # @type EncodeUrl: Boolean
        # @param Headers: 附带的http头部信息。
        # @type Headers: Array
        # @param PrefetchMediaSegments: 媒体分片预热控制，取值有：
        # <li>on：开启分片预热，预热描述文件，并递归解析描述文件分片进行预热；</li>
        # <li>off：仅预热提交的描述文件；</li>不填写时，默认值为 off。

        # 注意事项：
        # 1. 支持的描述文件为 M3U8，对应分片为 TS；
        # 2. 要求描述文件能正常请求，并按行业标准描述分片路径；
        # 3. 递归解析深度不超过 3 层；
        # 4. 解析获取的分片会正常累加每日预热用量，当用量超出配额时，会静默处理，不再执行预热。

        # 该参数为白名单功能，如有需要，请联系腾讯云工程师处理。
        # @type PrefetchMediaSegments: String

        attr_accessor :ZoneId, :Targets, :EncodeUrl, :Headers, :PrefetchMediaSegments
        extend Gem::Deprecate
        deprecate :EncodeUrl, :none, 2025, 7
        deprecate :EncodeUrl=, :none, 2025, 7

        def initialize(zoneid=nil, targets=nil, encodeurl=nil, headers=nil, prefetchmediasegments=nil)
          @ZoneId = zoneid
          @Targets = targets
          @EncodeUrl = encodeurl
          @Headers = headers
          @PrefetchMediaSegments = prefetchmediasegments
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Targets = params['Targets']
          @EncodeUrl = params['EncodeUrl']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              header_tmp = Header.new
              header_tmp.deserialize(i)
              @Headers << header_tmp
            end
          end
          @PrefetchMediaSegments = params['PrefetchMediaSegments']
        end
      end

      # CreatePrefetchTask返回参数结构体
      class CreatePrefetchTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String
        # @param FailedList: 失败的任务列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :FailedList, :RequestId

        def initialize(jobid=nil, failedlist=nil, requestid=nil)
          @JobId = jobid
          @FailedList = failedlist
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['FailedList'].nil?
            @FailedList = []
            params['FailedList'].each do |i|
              failreason_tmp = FailReason.new
              failreason_tmp.deserialize(i)
              @FailedList << failreason_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreatePurgeTask请求参数结构体
      class CreatePurgeTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # 若您希望快速提交不同站点下的 Targets Url，可以将其填写为 *，但前提是调用该 API 的账号必须具备主账号下全部站点资源的权限。
        # @type ZoneId: String
        # @param Type: 节点缓存清除类型，取值有：
        # <li>purge_url：URL刷新；</li>
        # <li>purge_prefix：目录刷新；</li>
        # <li>purge_host：Hostname 刷新；</li>
        # <li>purge_all：站点下全部缓存刷新；</li>
        # <li>purge_cache_tag：cache-tag 刷新。</li>缓存清除类型详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。
        # @type Type: String
        # @param Method: 节点缓存清除方法，针对目录刷新、Hostname 刷新以及刷新全部缓存类型有效，取值有：<li> invalidate：仅刷新目录下产生了更新的资源；</li><li> delete：无论目录下资源是否更新都刷新节点资源。</li>默认值： invalidate。
        # @type Method: String
        # @param Targets: 需清除缓存的资源列表，如 https://www.example.com/example.jpg，必须携带协议信息。更多元素格式依据清除缓存类型而定，可参考下方接口调用示例。<li>单次提交的任务数受计费套餐配额限制，请查看 [EO 计费套餐](https://cloud.tencent.com/document/product/1552/77380)。</li>
        # @type Targets: Array
        # @param EncodeUrl: 若有编码转换，仅清除编码转换后匹配的资源。
        # 若内容含有非 ASCII 字符集的字符，请开启此开关进行编码转换（编码规则遵循 RFC3986）。
        # @type EncodeUrl: Boolean
        # @param CacheTag: 节点缓存清除类型取值为 purge_cache_tag 时附带的信息。
        # @type CacheTag: :class:`Tencentcloud::Teo.v20220901.models.CacheTag`

        attr_accessor :ZoneId, :Type, :Method, :Targets, :EncodeUrl, :CacheTag
        extend Gem::Deprecate
        deprecate :EncodeUrl, :none, 2025, 7
        deprecate :EncodeUrl=, :none, 2025, 7

        def initialize(zoneid=nil, type=nil, method=nil, targets=nil, encodeurl=nil, cachetag=nil)
          @ZoneId = zoneid
          @Type = type
          @Method = method
          @Targets = targets
          @EncodeUrl = encodeurl
          @CacheTag = cachetag
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          @Method = params['Method']
          @Targets = params['Targets']
          @EncodeUrl = params['EncodeUrl']
          unless params['CacheTag'].nil?
            @CacheTag = CacheTag.new
            @CacheTag.deserialize(params['CacheTag'])
          end
        end
      end

      # CreatePurgeTask返回参数结构体
      class CreatePurgeTaskResponse < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String
        # @param FailedList: 失败的任务列表及原因。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JobId, :FailedList, :RequestId

        def initialize(jobid=nil, failedlist=nil, requestid=nil)
          @JobId = jobid
          @FailedList = failedlist
          @RequestId = requestid
        end

        def deserialize(params)
          @JobId = params['JobId']
          unless params['FailedList'].nil?
            @FailedList = []
            params['FailedList'].each do |i|
              failreason_tmp = FailReason.new
              failreason_tmp.deserialize(i)
              @FailedList << failreason_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # CreateRealtimeLogDeliveryTask请求参数结构体
      class CreateRealtimeLogDeliveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param TaskName: 实时日志投递任务的名称，格式为数字、英文、-和_组合，最多 200 个字符。
        # @type TaskName: String
        # @param TaskType: 实时日志投递任务类型，取值有：
        # <li>cls: 推送到腾讯云 CLS；</li>
        # <li>custom_endpoint：推送到自定义 HTTP(S) 地址；</li>
        # <li>s3：推送到 AWS S3 兼容存储桶地址。</li>
        # @type TaskType: String
        # @param EntityList: 实时日志投递任务对应的实体（七层域名或者四层代理实例）列表。取值示例如下：
        # <li>七层域名：domain.example.com；</li>
        # <li>四层代理实例：sid-2s69eb5wcms7。</li>
        # @type EntityList: Array
        # @param LogType: 数据投递类型，取值有：
        # <li>domain：站点加速日志；</li>
        # <li>application：四层代理日志；</li>
        # <li>web-rateLiming：速率限制和 CC 攻击防护日志；</li>
        # <li>web-attack：托管规则日志；</li>
        # <li>web-rule：自定义规则日志；</li>
        # <li>web-bot：Bot管理日志。</li>
        # @type LogType: String
        # @param Area: 数据投递区域，取值有：
        # <li>mainland：中国大陆境内；</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String
        # @param Fields: 投递的预设字段列表。
        # @type Fields: Array
        # @param CustomFields: 投递的自定义字段列表，支持在 HTTP 请求头、响应头、Cookie、请求正文中提取指定内容。自定义字段名称不能重复，且最多不能超过 200 个字段。单个实时日志推送任务最多添加 5 个请求正文类型的自定义字段。目前仅站点加速日志（LogType=domain）支持添加自定义字段。
        # @type CustomFields: Array
        # @param DeliveryConditions: 日志投递的过滤条件，不填表示投递全量日志。
        # @type DeliveryConditions: Array
        # @param Sample: 采样比例，采用千分制，取值范围为1-1000，例如：填写 605 表示采样比例为 60.5%。不填表示采样比例为 100%。
        # @type Sample: Integer
        # @param LogFormat: 日志投递的输出格式。不填表示为默认格式，默认格式逻辑如下：
        # <li>当 TaskType 取值为 custom_endpoint 时，默认格式为多个 JSON 对象组成的数组，每个 JSON 对象为一条日志；</li>
        # <li>当 TaskType 取值为 s3 时，默认格式为 JSON Lines；</li>特别地，当 TaskType 取值为 cls 时，LogFormat.FormatType 的值只能为 json，且 LogFormat 中其他参数将被忽略，建议不传 LogFormat。
        # @type LogFormat: :class:`Tencentcloud::Teo.v20220901.models.LogFormat`
        # @param CLS: CLS 的配置信息。当 TaskType 取值为 cls 时，该参数必填。
        # @type CLS: :class:`Tencentcloud::Teo.v20220901.models.CLSTopic`
        # @param CustomEndpoint: 自定义 HTTP 服务的配置信息。当 TaskType 取值为 custom_endpoint 时，该参数必填。
        # @type CustomEndpoint: :class:`Tencentcloud::Teo.v20220901.models.CustomEndpoint`
        # @param S3: AWS S3 兼容存储桶的配置信息。当 TaskType 取值为 s3 时，该参数必填。
        # @type S3: :class:`Tencentcloud::Teo.v20220901.models.S3`

        attr_accessor :ZoneId, :TaskName, :TaskType, :EntityList, :LogType, :Area, :Fields, :CustomFields, :DeliveryConditions, :Sample, :LogFormat, :CLS, :CustomEndpoint, :S3

        def initialize(zoneid=nil, taskname=nil, tasktype=nil, entitylist=nil, logtype=nil, area=nil, fields=nil, customfields=nil, deliveryconditions=nil, sample=nil, logformat=nil, cls=nil, customendpoint=nil, s3=nil)
          @ZoneId = zoneid
          @TaskName = taskname
          @TaskType = tasktype
          @EntityList = entitylist
          @LogType = logtype
          @Area = area
          @Fields = fields
          @CustomFields = customfields
          @DeliveryConditions = deliveryconditions
          @Sample = sample
          @LogFormat = logformat
          @CLS = cls
          @CustomEndpoint = customendpoint
          @S3 = s3
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TaskName = params['TaskName']
          @TaskType = params['TaskType']
          @EntityList = params['EntityList']
          @LogType = params['LogType']
          @Area = params['Area']
          @Fields = params['Fields']
          unless params['CustomFields'].nil?
            @CustomFields = []
            params['CustomFields'].each do |i|
              customfield_tmp = CustomField.new
              customfield_tmp.deserialize(i)
              @CustomFields << customfield_tmp
            end
          end
          unless params['DeliveryConditions'].nil?
            @DeliveryConditions = []
            params['DeliveryConditions'].each do |i|
              deliverycondition_tmp = DeliveryCondition.new
              deliverycondition_tmp.deserialize(i)
              @DeliveryConditions << deliverycondition_tmp
            end
          end
          @Sample = params['Sample']
          unless params['LogFormat'].nil?
            @LogFormat = LogFormat.new
            @LogFormat.deserialize(params['LogFormat'])
          end
          unless params['CLS'].nil?
            @CLS = CLSTopic.new
            @CLS.deserialize(params['CLS'])
          end
          unless params['CustomEndpoint'].nil?
            @CustomEndpoint = CustomEndpoint.new
            @CustomEndpoint.deserialize(params['CustomEndpoint'])
          end
          unless params['S3'].nil?
            @S3 = S3.new
            @S3.deserialize(params['S3'])
          end
        end
      end

      # CreateRealtimeLogDeliveryTask返回参数结构体
      class CreateRealtimeLogDeliveryTaskResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 创建成功的任务ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRule请求参数结构体
      class CreateRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleName: 规则名称，名称字符串长度 1～255。
        # @type RuleName: String
        # @param Status: 规则状态，取值有：
        # <li> enable: 启用； </li>
        # <li> disable: 未启用。</li>
        # @type Status: String
        # @param Rules: 规则内容。
        # @type Rules: Array
        # @param Tags: 规则标签。
        # @type Tags: Array

        attr_accessor :ZoneId, :RuleName, :Status, :Rules, :Tags

        def initialize(zoneid=nil, rulename=nil, status=nil, rules=nil, tags=nil)
          @ZoneId = zoneid
          @RuleName = rulename
          @Status = status
          @Rules = rules
          @Tags = tags
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleName = params['RuleName']
          @Status = params['Status']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @Rules << rule_tmp
            end
          end
          @Tags = params['Tags']
        end
      end

      # CreateRule返回参数结构体
      class CreateRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID。
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId

        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityAPIResource请求参数结构体
      class CreateSecurityAPIResourceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param APIResources:  API 资源列表。
        # @type APIResources: Array

        attr_accessor :ZoneId, :APIResources

        def initialize(zoneid=nil, apiresources=nil)
          @ZoneId = zoneid
          @APIResources = apiresources
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['APIResources'].nil?
            @APIResources = []
            params['APIResources'].each do |i|
              apiresource_tmp = APIResource.new
              apiresource_tmp.deserialize(i)
              @APIResources << apiresource_tmp
            end
          end
        end
      end

      # CreateSecurityAPIResource返回参数结构体
      class CreateSecurityAPIResourceResponse < TencentCloud::Common::AbstractModel
        # @param APIResourceIds: API 资源 ID 列表。
        # @type APIResourceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :APIResourceIds, :RequestId

        def initialize(apiresourceids=nil, requestid=nil)
          @APIResourceIds = apiresourceids
          @RequestId = requestid
        end

        def deserialize(params)
          @APIResourceIds = params['APIResourceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityAPIService请求参数结构体
      class CreateSecurityAPIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param APIServices:  API 服务列表。
        # @type APIServices: Array

        attr_accessor :ZoneId, :APIServices

        def initialize(zoneid=nil, apiservices=nil)
          @ZoneId = zoneid
          @APIServices = apiservices
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['APIServices'].nil?
            @APIServices = []
            params['APIServices'].each do |i|
              apiservice_tmp = APIService.new
              apiservice_tmp.deserialize(i)
              @APIServices << apiservice_tmp
            end
          end
        end
      end

      # CreateSecurityAPIService返回参数结构体
      class CreateSecurityAPIServiceResponse < TencentCloud::Common::AbstractModel
        # @param APIServiceIds: API 服务 ID 列表。
        # @type APIServiceIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :APIServiceIds, :RequestId

        def initialize(apiserviceids=nil, requestid=nil)
          @APIServiceIds = apiserviceids
          @RequestId = requestid
        end

        def deserialize(params)
          @APIServiceIds = params['APIServiceIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityClientAttester请求参数结构体
      class CreateSecurityClientAttesterRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ClientAttesters: 认证选项列表。
        # @type ClientAttesters: Array

        attr_accessor :ZoneId, :ClientAttesters

        def initialize(zoneid=nil, clientattesters=nil)
          @ZoneId = zoneid
          @ClientAttesters = clientattesters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['ClientAttesters'].nil?
            @ClientAttesters = []
            params['ClientAttesters'].each do |i|
              clientattester_tmp = ClientAttester.new
              clientattester_tmp.deserialize(i)
              @ClientAttesters << clientattester_tmp
            end
          end
        end
      end

      # CreateSecurityClientAttester返回参数结构体
      class CreateSecurityClientAttesterResponse < TencentCloud::Common::AbstractModel
        # @param ClientAttesterIds: 认证选项 ID 列表。
        # @type ClientAttesterIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClientAttesterIds, :RequestId

        def initialize(clientattesterids=nil, requestid=nil)
          @ClientAttesterIds = clientattesterids
          @RequestId = requestid
        end

        def deserialize(params)
          @ClientAttesterIds = params['ClientAttesterIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityIPGroup请求参数结构体
      class CreateSecurityIPGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 Id。
        # @type ZoneId: String
        # @param IPGroup: IP 组信息。
        # @type IPGroup: :class:`Tencentcloud::Teo.v20220901.models.IPGroup`

        attr_accessor :ZoneId, :IPGroup

        def initialize(zoneid=nil, ipgroup=nil)
          @ZoneId = zoneid
          @IPGroup = ipgroup
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['IPGroup'].nil?
            @IPGroup = IPGroup.new
            @IPGroup.deserialize(params['IPGroup'])
          end
        end
      end

      # CreateSecurityIPGroup返回参数结构体
      class CreateSecurityIPGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: IP 组 Id。
        # @type GroupId: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId

        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityJSInjectionRule请求参数结构体
      class CreateSecurityJSInjectionRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param JSInjectionRules: JavaScript 注入规则列表。
        # @type JSInjectionRules: Array

        attr_accessor :ZoneId, :JSInjectionRules

        def initialize(zoneid=nil, jsinjectionrules=nil)
          @ZoneId = zoneid
          @JSInjectionRules = jsinjectionrules
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['JSInjectionRules'].nil?
            @JSInjectionRules = []
            params['JSInjectionRules'].each do |i|
              jsinjectionrule_tmp = JSInjectionRule.new
              jsinjectionrule_tmp.deserialize(i)
              @JSInjectionRules << jsinjectionrule_tmp
            end
          end
        end
      end

      # CreateSecurityJSInjectionRule返回参数结构体
      class CreateSecurityJSInjectionRuleResponse < TencentCloud::Common::AbstractModel
        # @param JSInjectionRuleIds: JavaScript 注入规则 ID 列表。
        # @type JSInjectionRuleIds: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :JSInjectionRuleIds, :RequestId

        def initialize(jsinjectionruleids=nil, requestid=nil)
          @JSInjectionRuleIds = jsinjectionruleids
          @RequestId = requestid
        end

        def deserialize(params)
          @JSInjectionRuleIds = params['JSInjectionRuleIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateSharedCNAME请求参数结构体
      class CreateSharedCNAMERequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 共享 CNAME 所属站点的 ID。
        # @type ZoneId: String
        # @param SharedCNAMEPrefix: 共享 CNAME 前缀。请输入合法的域名前缀，例如"test-api"、"test-api.com"，限制输入 50 个字符。

        # 共享 CNAME 完整格式为：`<自定义前缀>+<zoneid中的12位随机字符串>+share.dnse[0-5].com`。

        # 例如前缀传入 example.com，EO 会为您创建共享 CNAME：example.com.sai2ig51kaa5.share.dnse2.com。
        # @type SharedCNAMEPrefix: String
        # @param Description: 描述。可输入 1-50 个任意字符。
        # @type Description: String

        attr_accessor :ZoneId, :SharedCNAMEPrefix, :Description

        def initialize(zoneid=nil, sharedcnameprefix=nil, description=nil)
          @ZoneId = zoneid
          @SharedCNAMEPrefix = sharedcnameprefix
          @Description = description
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @SharedCNAMEPrefix = params['SharedCNAMEPrefix']
          @Description = params['Description']
        end
      end

      # CreateSharedCNAME返回参数结构体
      class CreateSharedCNAMEResponse < TencentCloud::Common::AbstractModel
        # @param SharedCNAME: 共享 CNAME。格式为：`<自定义前缀>+<ZoneId中的12位随机字符串>+share.dnse[0-5].com`。
        # @type SharedCNAME: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SharedCNAME, :RequestId

        def initialize(sharedcname=nil, requestid=nil)
          @SharedCNAME = sharedcname
          @RequestId = requestid
        end

        def deserialize(params)
          @SharedCNAME = params['SharedCNAME']
          @RequestId = params['RequestId']
        end
      end

      # CreateWebSecurityTemplate请求参数结构体
      class CreateWebSecurityTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。该参数明确策略模板在访问权限上归属的站点。
        # @type ZoneId: String
        # @param TemplateName: 策略模板名称。由中文、英文、数字和下划线组成，不能以下划线开头，且长度不能超过 32 个字符。
        # @type TemplateName: String
        # @param SecurityPolicy: 安全策略模板配置内容，字段为空时生成默认配置。目前支持 Web 防护模块中的例外规则、自定义规则、速率限制规则和托管规则配置，通过表达式语法对安全策略进行配置。 Bot 管理规则配置暂不支持，正在开发中。
        # @type SecurityPolicy: :class:`Tencentcloud::Teo.v20220901.models.SecurityPolicy`

        attr_accessor :ZoneId, :TemplateName, :SecurityPolicy

        def initialize(zoneid=nil, templatename=nil, securitypolicy=nil)
          @ZoneId = zoneid
          @TemplateName = templatename
          @SecurityPolicy = securitypolicy
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TemplateName = params['TemplateName']
          unless params['SecurityPolicy'].nil?
            @SecurityPolicy = SecurityPolicy.new
            @SecurityPolicy.deserialize(params['SecurityPolicy'])
          end
        end
      end

      # CreateWebSecurityTemplate返回参数结构体
      class CreateWebSecurityTemplateResponse < TencentCloud::Common::AbstractModel
        # @param TemplateId: 策略模板 ID。
        # @type TemplateId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TemplateId, :RequestId

        def initialize(templateid=nil, requestid=nil)
          @TemplateId = templateid
          @RequestId = requestid
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateZone请求参数结构体
      class CreateZoneRequest < TencentCloud::Common::AbstractModel
        # @param Type: 站点接入类型。该参数取值如下，不填写时默认为 partial：
        # <li>partial：CNAME 接入；</li>
        # <li>full：NS 接入；</li>
        # <li>noDomainAccess：无域名接入；</li>
        # <li>dnsPodAccess：DNSPod 托管接入，该接入模式要求您的域名已托管在 DNSPod 内。</li>
        # @type Type: String
        # @param ZoneName: 站点名称。CNAME/NS 接入的时，请传入二级域名（example.com）作为站点名称；无域名接入时，该值请保留为空。
        # @type ZoneName: String
        # @param Area: Type 取值为 partial/full 时，七层域名的加速区域。以下为该参数取值，不填写时该值默认为 overseas。Type 取值为 noDomainAccess 时该值请保留为空：
        # <li> global: 全球可用区；</li>
        # <li> mainland: 中国大陆可用区；</li>
        # <li> overseas: 全球可用区（不含中国大陆）。</li>
        # @type Area: String
        # @param PlanId: 待绑定的目标套餐 ID。当您账号下已存在套餐时，可以填写此参数，直接将站点绑定至该套餐。若您当前没有可绑定的套餐时，可通过 [CreatePlan](https://cloud.tencent.com/document/product/1552/105771) 购买套餐。
        # 注意：如果不填写此参数，将创建一个处于“init”状态的站点，该站点为未激活状态，并不会显示在控制台上。您可以通过访问 [BindZoneToPlan](https://cloud.tencent.com/document/product/1552/83042) 来绑定套餐并激活站点，激活后站点可以正常提供服务。

        # @type PlanId: String
        # @param AliasZoneName: 同名站点标识。限制输入数字、英文、"." 、"-" 和 "_"，长度 200 个字符以内。详情参考 [同名站点标识](https://cloud.tencent.com/document/product/1552/70202)，无此使用场景时，该字段保留为空即可。
        # @type AliasZoneName: String
        # @param Tags: 标签。该参数用于对站点进行分权限管控、分账。需要先前往 [标签控制台](https://console.cloud.tencent.com/tag/taglist) 创建对应的标签才可以在此处传入对应的标签键和标签值。
        # @type Tags: Array
        # @param AllowDuplicates: 是否允许重复接入。
        # <li> true：允许重复接入；</li>
        # <li> false：不允许重复接入。</li>不填写使用默认值false。
        # @type AllowDuplicates: Boolean
        # @param JumpStart: 是否跳过站点现有的DNS记录扫描。默认值：false。
        # @type JumpStart: Boolean

        attr_accessor :Type, :ZoneName, :Area, :PlanId, :AliasZoneName, :Tags, :AllowDuplicates, :JumpStart
        extend Gem::Deprecate
        deprecate :AllowDuplicates, :none, 2025, 7
        deprecate :AllowDuplicates=, :none, 2025, 7
        deprecate :JumpStart, :none, 2025, 7
        deprecate :JumpStart=, :none, 2025, 7

        def initialize(type=nil, zonename=nil, area=nil, planid=nil, aliaszonename=nil, tags=nil, allowduplicates=nil, jumpstart=nil)
          @Type = type
          @ZoneName = zonename
          @Area = area
          @PlanId = planid
          @AliasZoneName = aliaszonename
          @Tags = tags
          @AllowDuplicates = allowduplicates
          @JumpStart = jumpstart
        end

        def deserialize(params)
          @Type = params['Type']
          @ZoneName = params['ZoneName']
          @Area = params['Area']
          @PlanId = params['PlanId']
          @AliasZoneName = params['AliasZoneName']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          @AllowDuplicates = params['AllowDuplicates']
          @JumpStart = params['JumpStart']
        end
      end

      # CreateZone返回参数结构体
      class CreateZoneResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param OwnershipVerification: 站点归属权验证信息。站点完成创建后，您还需要完成归属权校验，站点才能正常服务。

        # Type = partial 时，您需要参考 [站点/域名归属权验证](https://cloud.tencent.com/document/product/1552/70789) 前往您的域名解析服务商添加 TXT 记录或者前往根域名服务器添加文件，再调用接口 [VerifyOwnership]() 完成验证；

        # Type = full 时，您需要参考 [修改 DNS 服务器](https://cloud.tencent.com/document/product/1552/90452) 切换 DNS 服务器即可，可通过接口 [VerifyOwnership]() 查询 DNS 是否切换成功；

        # Type = noDomainAccess 时，该值为空，不需要进行任何操作。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnershipVerification: :class:`Tencentcloud::Teo.v20220901.models.OwnershipVerification`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :OwnershipVerification, :RequestId

        def initialize(zoneid=nil, ownershipverification=nil, requestid=nil)
          @ZoneId = zoneid
          @OwnershipVerification = ownershipverification
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['OwnershipVerification'].nil?
            @OwnershipVerification = OwnershipVerification.new
            @OwnershipVerification.deserialize(params['OwnershipVerification'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 当前生效的回源 IP 网段。
      class CurrentOriginACL < TencentCloud::Common::AbstractModel
        # @param EntireAddresses: 回源 IP 网段详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntireAddresses: :class:`Tencentcloud::Teo.v20220901.models.Addresses`
        # @param Version: 版本号。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param ActiveTime: 版本生效时间，时间是北京时间 UTC+8， 遵循 ISO 8601 标准的日期和时间格式。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveTime: String
        # @param IsPlaned: 本参数用于记录当前版本生效前是否完成「我已更新至最新回源 IP 网段」的确认。取值有：
        # <li>true：版本生效时，已完成更新至最新回源 IP 的确认；</li>
        # <li>false：版本生效时，仍未完成已更新至最新回源 IP 的确认，回源 IP 网段由后台强制更新至最新版本。</li>注意：本参数返回 false 时，请及时确认您的源站防火墙配置是否已更新至最新的回源 IP 网段，以避免出现回源失败。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsPlaned: String

        attr_accessor :EntireAddresses, :Version, :ActiveTime, :IsPlaned

        def initialize(entireaddresses=nil, version=nil, activetime=nil, isplaned=nil)
          @EntireAddresses = entireaddresses
          @Version = version
          @ActiveTime = activetime
          @IsPlaned = isplaned
        end

        def deserialize(params)
          unless params['EntireAddresses'].nil?
            @EntireAddresses = Addresses.new
            @EntireAddresses.deserialize(params['EntireAddresses'])
          end
          @Version = params['Version']
          @ActiveTime = params['ActiveTime']
          @IsPlaned = params['IsPlaned']
        end
      end

      # 实时日志投递到自定义 HTTP(S) 接口的配置信息。
      class CustomEndpoint < TencentCloud::Common::AbstractModel
        # @param Url: 实时日志投递的自定义 HTTP 接口地址，暂仅支持 HTTP/HTTPS 协议。
        # @type Url: String
        # @param AccessId: 填写自定义的 SecretId 用于生成加密签名，如果源站需要鉴权此参数必填。
        # @type AccessId: String
        # @param AccessKey: 填写自定义的 SecretKey 用于生成加密签名，如果源站需要鉴权此参数必填。
        # @type AccessKey: String
        # @param CompressType: 数据压缩类型，取值有: <li> gzip：使用 gzip 方式压缩。</li>不填表示不启用压缩。
        # @type CompressType: String
        # @param Protocol: POST 请求投递日志时，使用的应用层协议类型，取值有：
        # <li>http：HTTP 协议；</li>
        # <li>https：HTTPS 协议。</li>如果不填默认根据填写的 URL 地址解析出协议类型。
        # @type Protocol: String
        # @param Headers: 投递日志时携带的自定义请求头。若您填写的头部名称为 Content-Type 等 EdgeOne 日志推送默认携带的头部，那么您填写的头部值将覆盖默认值。头部值引用单个变量${batchSize}，以获取每次 POST 请求中包含的日志条数。
        # @type Headers: Array

        attr_accessor :Url, :AccessId, :AccessKey, :CompressType, :Protocol, :Headers

        def initialize(url=nil, accessid=nil, accesskey=nil, compresstype=nil, protocol=nil, headers=nil)
          @Url = url
          @AccessId = accessid
          @AccessKey = accesskey
          @CompressType = compresstype
          @Protocol = protocol
          @Headers = headers
        end

        def deserialize(params)
          @Url = params['Url']
          @AccessId = params['AccessId']
          @AccessKey = params['AccessKey']
          @CompressType = params['CompressType']
          @Protocol = params['Protocol']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              header_tmp = Header.new
              header_tmp.deserialize(i)
              @Headers << header_tmp
            end
          end
        end
      end

      # 自定义错误码页面结构体。
      class CustomErrorPage < TencentCloud::Common::AbstractModel
        # @param PageId: 自定义错误页面 ID。
        # @type PageId: String
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Name: 自定义错误页面名称。
        # @type Name: String
        # @param ContentType: 自定义错误页面类型。
        # @type ContentType: String
        # @param Description: 自定义错误页面描述。
        # @type Description: String
        # @param Content: 自定义错误页面内容。
        # @type Content: String
        # @param References: 自定义错误页面引用。
        # @type References: Array

        attr_accessor :PageId, :ZoneId, :Name, :ContentType, :Description, :Content, :References

        def initialize(pageid=nil, zoneid=nil, name=nil, contenttype=nil, description=nil, content=nil, references=nil)
          @PageId = pageid
          @ZoneId = zoneid
          @Name = name
          @ContentType = contenttype
          @Description = description
          @Content = content
          @References = references
        end

        def deserialize(params)
          @PageId = params['PageId']
          @ZoneId = params['ZoneId']
          @Name = params['Name']
          @ContentType = params['ContentType']
          @Description = params['Description']
          @Content = params['Content']
          unless params['References'].nil?
            @References = []
            params['References'].each do |i|
              errorpagereference_tmp = ErrorPageReference.new
              errorpagereference_tmp.deserialize(i)
              @References << errorpagereference_tmp
            end
          end
        end
      end

      # 实时日志投递任务中的自定义日志字段。
      class CustomField < TencentCloud::Common::AbstractModel
        # @param Name: 自定义日志字段类型。从 HTTP 请求和响应中的指定位置提取数据，取值有：
        # <li>ReqHeader：从 HTTP 请求头中提取指定字段值；</li>
        # <li>RspHeader：从 HTTP 响应头中提取指定字段值；</li>
        # <li>Cookie: 从 Cookie 中提取指定字段值；</li>
        # <li>ReqBody: 从 HTTP 请求正文中通过 Google RE2 正则表达式提取指定内容。</li>
        # @type Name: String
        # @param Value: 根据字段类型（Name）填入字段值的定义。需要区分大小写。
        # <li>当字段类型为 ReqHeader、RspHeader、Cookie 时，填入需要提取值的参数名称，例如：Accept-Language。可输入 1-100 个字符，允许的字符开头为字母，中间为字母、数字、-，结尾为字母、数字；</li>
        # <li>当字段类型为 ReqBody 时，填入 Google RE2 正则表达式，正则表达式长度上限为 4KB。</li>
        # @type Value: String
        # @param Enabled: 是否投递该字段，不填表示不投递此字段。
        # @type Enabled: Boolean

        attr_accessor :Name, :Value, :Enabled

        def initialize(name=nil, value=nil, enabled=nil)
          @Name = name
          @Value = value
          @Enabled = enabled
        end

        def deserialize(params)
          @Name = params['Name']
          @Value = params['Value']
          @Enabled = params['Enabled']
        end
      end

      # Web安全的自定义规则
      class CustomRule < TencentCloud::Common::AbstractModel
        # @param Name: 自定义规则的名称。
        # @type Name: String
        # @param Condition: 自定义规则的具体内容，需符合表达式语法，详细规范参见产品文档。
        # @type Condition: String
        # @param Action: 自定义规则的执行动作。	SecurityAction 的 Name 取值支持：<li>Deny：拦截；</li><li>Monitor：观察；</li><li>ReturnCustomPage：使用指定页面拦截；</li><li>Redirect：重定向至 URL；</li><li>BlockIP：IP 封禁；</li><li>JSChallenge：JavaScript 挑战；</li><li>ManagedChallenge：托管挑战；</li><li>Allow：放行。</li>
        # @type Action: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`
        # @param Enabled: 自定义规则是否开启。取值有：<li>on：开启</li><li>off：关闭</li>
        # @type Enabled: String
        # @param Id: 自定义规则的 ID。<br>通过规则 ID 可支持不同的规则配置操作：<br> - 增加新规则：ID 为空或不指定 ID 参数；<br> - 修改已有规则：指定需要更新/修改的规则 ID；<br> - 删除已有规则：CustomRules 参数中，Rules 列表中未包含的已有规则将被删除。
        # @type Id: String
        # @param RuleType: 自定义规则的类型。取值有：<li>BasicAccessRule：基础访问管控；</li><li>PreciseMatchRule：精准匹配规则，默认；</li><li>ManagedAccessRule：专家定制规则，仅出参。</li><br/>默认为PreciseMatchRule。
        # @type RuleType: String
        # @param Priority: 自定义规则的优先级，范围是 0 ~ 100，默认为 0，仅支持精准匹配规则（PreciseMatchRule）。
        # @type Priority: Integer

        attr_accessor :Name, :Condition, :Action, :Enabled, :Id, :RuleType, :Priority

        def initialize(name=nil, condition=nil, action=nil, enabled=nil, id=nil, ruletype=nil, priority=nil)
          @Name = name
          @Condition = condition
          @Action = action
          @Enabled = enabled
          @Id = id
          @RuleType = ruletype
          @Priority = priority
        end

        def deserialize(params)
          @Name = params['Name']
          @Condition = params['Condition']
          unless params['Action'].nil?
            @Action = SecurityAction.new
            @Action.deserialize(params['Action'])
          end
          @Enabled = params['Enabled']
          @Id = params['Id']
          @RuleType = params['RuleType']
          @Priority = params['Priority']
        end
      end

      # Web安全的自定义规则结构
      class CustomRules < TencentCloud::Common::AbstractModel
        # @param Rules: 自定义规则的定义列表。<br>使用 ModifySecurityPolicy 修改 Web 防护配置时: <br> -  若未指定 Rules 参数，或 Rules 参数长度为零：清空所有自定义规则配置。<br> - 若 SecurityPolicy 参数中，未指定 CustomRules 参数值：保持已有自定义规则配置，不做修改。
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              customrule_tmp = CustomRule.new
              customrule_tmp.deserialize(i)
              @Rules << customrule_tmp
            end
          end
        end
      end

      # 节点缓存 TTL 自定义缓存时间参数配置。
      class CustomTime < TencentCloud::Common::AbstractModel
        # @param Switch: 自定义缓存时间开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param IgnoreCacheControl: 忽略源站 CacheControl 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type IgnoreCacheControl: String
        # @param CacheTime: 自定义缓存时间数值，单位为秒，取值：0～315360000。<br>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type CacheTime: Integer

        attr_accessor :Switch, :IgnoreCacheControl, :CacheTime

        def initialize(switch=nil, ignorecachecontrol=nil, cachetime=nil)
          @Switch = switch
          @IgnoreCacheControl = ignorecachecontrol
          @CacheTime = cachetime
        end

        def deserialize(params)
          @Switch = params['Switch']
          @IgnoreCacheControl = params['IgnoreCacheControl']
          @CacheTime = params['CacheTime']
        end
      end

      # 负载均衡实例 HTTP/HTTPS 健康检查策略下可配置的自定义头部。
      class CustomizedHeader < TencentCloud::Common::AbstractModel
        # @param Key: 自定义头部 Key。
        # @type Key: String
        # @param Value: 自定义头部 Value。
        # @type Value: String

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # DDoS配置
      class DDoS < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # DDoS攻击事件对象
      class DDoSAttackEvent < TencentCloud::Common::AbstractModel
        # @param EventId: 事件ID。
        # @type EventId: String
        # @param AttackType: 攻击类型(对应交互事件名称)。
        # @type AttackType: String
        # @param AttackStatus: 攻击状态。
        # @type AttackStatus: Integer
        # @param AttackMaxBandWidth: 攻击最大带宽。
        # @type AttackMaxBandWidth: Integer
        # @param AttackPacketMaxRate: 攻击包速率峰值。
        # @type AttackPacketMaxRate: Integer
        # @param AttackStartTime: 攻击开始时间，单位为s。
        # @type AttackStartTime: Integer
        # @param AttackEndTime: 攻击结束时间，单位为s。
        # @type AttackEndTime: Integer
        # @param PolicyId: DDoS策略组ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: Integer
        # @param ZoneId: 站点ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param Area: 攻击事件所属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Area: String
        # @param DDoSBlockData: 封禁解封信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DDoSBlockData: Array

        attr_accessor :EventId, :AttackType, :AttackStatus, :AttackMaxBandWidth, :AttackPacketMaxRate, :AttackStartTime, :AttackEndTime, :PolicyId, :ZoneId, :Area, :DDoSBlockData

        def initialize(eventid=nil, attacktype=nil, attackstatus=nil, attackmaxbandwidth=nil, attackpacketmaxrate=nil, attackstarttime=nil, attackendtime=nil, policyid=nil, zoneid=nil, area=nil, ddosblockdata=nil)
          @EventId = eventid
          @AttackType = attacktype
          @AttackStatus = attackstatus
          @AttackMaxBandWidth = attackmaxbandwidth
          @AttackPacketMaxRate = attackpacketmaxrate
          @AttackStartTime = attackstarttime
          @AttackEndTime = attackendtime
          @PolicyId = policyid
          @ZoneId = zoneid
          @Area = area
          @DDoSBlockData = ddosblockdata
        end

        def deserialize(params)
          @EventId = params['EventId']
          @AttackType = params['AttackType']
          @AttackStatus = params['AttackStatus']
          @AttackMaxBandWidth = params['AttackMaxBandWidth']
          @AttackPacketMaxRate = params['AttackPacketMaxRate']
          @AttackStartTime = params['AttackStartTime']
          @AttackEndTime = params['AttackEndTime']
          @PolicyId = params['PolicyId']
          @ZoneId = params['ZoneId']
          @Area = params['Area']
          unless params['DDoSBlockData'].nil?
            @DDoSBlockData = []
            params['DDoSBlockData'].each do |i|
              ddosblockdata_tmp = DDoSBlockData.new
              ddosblockdata_tmp.deserialize(i)
              @DDoSBlockData << ddosblockdata_tmp
            end
          end
        end
      end

      # DDoS封禁解封信息
      class DDoSBlockData < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，采用unix时间戳。
        # @type StartTime: Integer
        # @param EndTime: 结束时间，采用unix时间戳, 为0表示还处于封禁中。
        # @type EndTime: Integer
        # @param BlockArea: 封禁受影响区域。
        # @type BlockArea: String

        attr_accessor :StartTime, :EndTime, :BlockArea

        def initialize(starttime=nil, endtime=nil, blockarea=nil)
          @StartTime = starttime
          @EndTime = endtime
          @BlockArea = blockarea
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @BlockArea = params['BlockArea']
        end
      end

      # 独立 DDoS 防护配置。
      class DDoSProtection < TencentCloud::Common::AbstractModel
        # @param ProtectionOption: 指定独立 DDoS 的防护范围。取值为：
        # <li> protect_all_domains：独立 DDoS 防护对站点内全部域名生效，新接入域名自动开启独立 DDoS 防护，入参为 protect_all_domains 时，入参 DomainDDoSProtections 不作处理；</li>
        # <li> protect_specified_domains：仅对指定域名生效，具体范围可通过 DomainDDoSProtection 参数指定。</li>
        # @type ProtectionOption: String
        # @param DomainDDoSProtections: 域名的独立 DDoS 防护配置。在入参场景中：
        # <li> 当 ProtectionOption 保持为 protect_specified_domains 时：未填写的域名维持原有独立 DDoS 防护配置不变，显式指定的域名​按传入参数更新；</li>
        # <li> 当 ProtectionOption 由 protect_all_domains 切换为 protect_specified_domains 时：若 DomainDDoSProtections 传空，停用站点下全部域名的独立 DDoS 防护；若 DomainDDoSProtections 不为空，参数中指定的域名停用或保持独立 DDoS 防护，其余未列出的域名统一停用独立 DDoS 防护。</li>
        # @type DomainDDoSProtections: Array
        # @param SharedCNAMEDDoSProtections: 共享 CNAME 的独立 DDoS 防护配置。仅作为出参使用。
        # @type SharedCNAMEDDoSProtections: Array

        attr_accessor :ProtectionOption, :DomainDDoSProtections, :SharedCNAMEDDoSProtections

        def initialize(protectionoption=nil, domainddosprotections=nil, sharedcnameddosprotections=nil)
          @ProtectionOption = protectionoption
          @DomainDDoSProtections = domainddosprotections
          @SharedCNAMEDDoSProtections = sharedcnameddosprotections
        end

        def deserialize(params)
          @ProtectionOption = params['ProtectionOption']
          unless params['DomainDDoSProtections'].nil?
            @DomainDDoSProtections = []
            params['DomainDDoSProtections'].each do |i|
              domainddosprotection_tmp = DomainDDoSProtection.new
              domainddosprotection_tmp.deserialize(i)
              @DomainDDoSProtections << domainddosprotection_tmp
            end
          end
          unless params['SharedCNAMEDDoSProtections'].nil?
            @SharedCNAMEDDoSProtections = []
            params['SharedCNAMEDDoSProtections'].each do |i|
              domainddosprotection_tmp = DomainDDoSProtection.new
              domainddosprotection_tmp.deserialize(i)
              @SharedCNAMEDDoSProtections << domainddosprotection_tmp
            end
          end
        end
      end

      # 适用于四层代理或 Web 站点服务的独立 DDoS 防护规格配置。
      class DDosProtectionConfig < TencentCloud::Common::AbstractModel
        # @param LevelMainland: 中国大陆地区独立 DDoS 防护的规格。详情请参考 [独立 DDoS 防护相关费用](https://cloud.tencent.com/document/product/1552/94162)
        # <li>PLATFORM：平台默认防护，即不开启独立 DDoS 防护；</li>
        # <li>BASE30_MAX300：开启独立 DDoS 防护，提供 30 Gbps 保底防护带宽以及 300 Gbps 弹性防护带宽；</li>
        # <li>BASE60_MAX600：开启独立 DDoS 防护，提供 60 Gbps 保底防护带宽以及 600 Gbps 弹性防护带宽。</li>不填写参数时，取默认值 PLATFORM。
        # @type LevelMainland: String
        # @param MaxBandwidthMainland: 中国大陆地区独立 DDoS 防护的弹性防护带宽配置。
        # 仅当开启中国大陆区域独立 DDos 防护时有效（详见 LevelMainland 参数配置），且取值范围有如下限制：
        # <li>开启中国大陆地区独立 DDoS 防护，使用 30 Gbps 保底防护带宽规格时（ LevelMainland 参数值为 BASE30_MAX300 ）：有效取值范围为 30 至 300，单位为 Gbps；</li>
        # <li>开启中国大陆地区独立 DDoS 防护，使用 60 Gbps 保底防护带宽规格时（ LevelMainland 参数值为 BASE60_MAX600 ）：有效取值范围为 60 至 600，单位为 Gbps；</li>
        # <li>使用平台默认防护（ LevelMainland 参数值为 PLATFORM ）：不支持配置，本参数值无效。</li>
        # @type MaxBandwidthMainland: Integer
        # @param LevelOverseas: 全球（除中国大陆以外）地区独立 DDoS 防护的规格。
        # <li>PLATFORM：平台默认防护，即不开启独立 DDoS 防护；</li>
        # <li>ANYCAST300：开启独立 DDoS 防护，提供 300 Gbps 防护带宽；</li>
        # <li>ANYCAST_ALLIN：开启独立 DDoS 防护，使用全部可用防护资源进行防护。</li>不填写参数时，取默认值 PLATFORM。
        # @type LevelOverseas: String

        attr_accessor :LevelMainland, :MaxBandwidthMainland, :LevelOverseas

        def initialize(levelmainland=nil, maxbandwidthmainland=nil, leveloverseas=nil)
          @LevelMainland = levelmainland
          @MaxBandwidthMainland = maxbandwidthmainland
          @LevelOverseas = leveloverseas
        end

        def deserialize(params)
          @LevelMainland = params['LevelMainland']
          @MaxBandwidthMainland = params['MaxBandwidthMainland']
          @LevelOverseas = params['LevelOverseas']
        end
      end

      # https 服务端证书配置
      class DefaultServerCertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 服务器证书 ID。
        # @type CertId: String
        # @param Alias: 证书备注名。
        # @type Alias: String
        # @param Type: 证书类型，取值有：
        # <li>default: 默认证书;</li>
        # <li>upload:用户上传;</li>
        # <li>managed:腾讯云托管。</li>
        # @type Type: String
        # @param ExpireTime: 证书过期时间。
        # @type ExpireTime: String
        # @param EffectiveTime: 证书生效时间。
        # @type EffectiveTime: String
        # @param CommonName: 证书公用名。
        # @type CommonName: String
        # @param SubjectAltName: 证书SAN域名。
        # @type SubjectAltName: Array
        # @param Status: 部署状态，取值有：
        # <li>processing: 部署中；</li>
        # <li>deployed: 已部署；</li>
        # <li>failed: 部署失败。</li>
        # @type Status: String
        # @param Message: Status为失败时,此字段返回失败原因。
        # @type Message: String
        # @param SignAlgo: 证书算法。
        # @type SignAlgo: String

        attr_accessor :CertId, :Alias, :Type, :ExpireTime, :EffectiveTime, :CommonName, :SubjectAltName, :Status, :Message, :SignAlgo

        def initialize(certid=nil, _alias=nil, type=nil, expiretime=nil, effectivetime=nil, commonname=nil, subjectaltname=nil, status=nil, message=nil, signalgo=nil)
          @CertId = certid
          @Alias = _alias
          @Type = type
          @ExpireTime = expiretime
          @EffectiveTime = effectivetime
          @CommonName = commonname
          @SubjectAltName = subjectaltname
          @Status = status
          @Message = message
          @SignAlgo = signalgo
        end

        def deserialize(params)
          @CertId = params['CertId']
          @Alias = params['Alias']
          @Type = params['Type']
          @ExpireTime = params['ExpireTime']
          @EffectiveTime = params['EffectiveTime']
          @CommonName = params['CommonName']
          @SubjectAltName = params['SubjectAltName']
          @Status = params['Status']
          @Message = params['Message']
          @SignAlgo = params['SignAlgo']
        end
      end

      # DeleteAccelerationDomains请求参数结构体
      class DeleteAccelerationDomainsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 加速域名所属站点ID。
        # @type ZoneId: String
        # @param DomainNames: 需要删除的加速域名ID列表。
        # @type DomainNames: Array
        # @param Force: 是否强制删除。当域名存在关联资源（如马甲域名、流量调度功能）时，是否强制删除该域名，取值有：
        # <li> true：删除该域名及所有关联资源；</li>
        # <li> false：当该加速域名存在关联资源时，不允许删除。</li>不填写，默认值为：false。
        # @type Force: Boolean

        attr_accessor :ZoneId, :DomainNames, :Force

        def initialize(zoneid=nil, domainnames=nil, force=nil)
          @ZoneId = zoneid
          @DomainNames = domainnames
          @Force = force
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @DomainNames = params['DomainNames']
          @Force = params['Force']
        end
      end

      # DeleteAccelerationDomains返回参数结构体
      class DeleteAccelerationDomainsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAliasDomain请求参数结构体
      class DeleteAliasDomainRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param AliasNames: 待删除别称域名名称。如果为空，则不执行删除操作。
        # @type AliasNames: Array

        attr_accessor :ZoneId, :AliasNames

        def initialize(zoneid=nil, aliasnames=nil)
          @ZoneId = zoneid
          @AliasNames = aliasnames
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @AliasNames = params['AliasNames']
        end
      end

      # DeleteAliasDomain返回参数结构体
      class DeleteAliasDomainResponse < TencentCloud::Common::AbstractModel
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

      # DeleteApplicationProxy请求参数结构体
      class DeleteApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyId: 代理ID。
        # @type ProxyId: String

        attr_accessor :ZoneId, :ProxyId

        def initialize(zoneid=nil, proxyid=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
        end
      end

      # DeleteApplicationProxy返回参数结构体
      class DeleteApplicationProxyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteApplicationProxyRule请求参数结构体
      class DeleteApplicationProxyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyId: 代理ID。
        # @type ProxyId: String
        # @param RuleId: 规则ID。
        # @type RuleId: String

        attr_accessor :ZoneId, :ProxyId, :RuleId

        def initialize(zoneid=nil, proxyid=nil, ruleid=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleId = ruleid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
        end
      end

      # DeleteApplicationProxyRule返回参数结构体
      class DeleteApplicationProxyRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteContentIdentifier请求参数结构体
      class DeleteContentIdentifierRequest < TencentCloud::Common::AbstractModel
        # @param ContentId: 内容标识符 ID。
        # @type ContentId: String

        attr_accessor :ContentId

        def initialize(contentid=nil)
          @ContentId = contentid
        end

        def deserialize(params)
          @ContentId = params['ContentId']
        end
      end

      # DeleteContentIdentifier返回参数结构体
      class DeleteContentIdentifierResponse < TencentCloud::Common::AbstractModel
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

      # DeleteCustomErrorPage请求参数结构体
      class DeleteCustomErrorPageRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param PageId: 自定义页面 ID。
        # @type PageId: String

        attr_accessor :ZoneId, :PageId

        def initialize(zoneid=nil, pageid=nil)
          @ZoneId = zoneid
          @PageId = pageid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @PageId = params['PageId']
        end
      end

      # DeleteCustomErrorPage返回参数结构体
      class DeleteCustomErrorPageResponse < TencentCloud::Common::AbstractModel
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

      # DeleteDnsRecords请求参数结构体
      class DeleteDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RecordIds: 待删除的 DNS 记录 ID 列表，上限：1000。
        # @type RecordIds: Array

        attr_accessor :ZoneId, :RecordIds

        def initialize(zoneid=nil, recordids=nil)
          @ZoneId = zoneid
          @RecordIds = recordids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordIds = params['RecordIds']
        end
      end

      # DeleteDnsRecords返回参数结构体
      class DeleteDnsRecordsResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFunction请求参数结构体
      class DeleteFunctionRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param FunctionId: 函数 ID。
        # @type FunctionId: String

        attr_accessor :ZoneId, :FunctionId

        def initialize(zoneid=nil, functionid=nil)
          @ZoneId = zoneid
          @FunctionId = functionid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @FunctionId = params['FunctionId']
        end
      end

      # DeleteFunction返回参数结构体
      class DeleteFunctionResponse < TencentCloud::Common::AbstractModel
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

      # DeleteFunctionRules请求参数结构体
      class DeleteFunctionRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleIds: 规则 ID 列表。
        # @type RuleIds: Array

        attr_accessor :ZoneId, :RuleIds

        def initialize(zoneid=nil, ruleids=nil)
          @ZoneId = zoneid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleIds = params['RuleIds']
        end
      end

      # DeleteFunctionRules返回参数结构体
      class DeleteFunctionRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteJustInTimeTranscodeTemplates请求参数结构体
      class DeleteJustInTimeTranscodeTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param TemplateIds: 需删除的即时转码模板唯一标识数组，长度限制：100。
        # @type TemplateIds: Array

        attr_accessor :ZoneId, :TemplateIds

        def initialize(zoneid=nil, templateids=nil)
          @ZoneId = zoneid
          @TemplateIds = templateids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TemplateIds = params['TemplateIds']
        end
      end

      # DeleteJustInTimeTranscodeTemplates返回参数结构体
      class DeleteJustInTimeTranscodeTemplatesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteL4Proxy请求参数结构体
      class DeleteL4ProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 四层代理实例 ID。
        # @type ProxyId: String

        attr_accessor :ZoneId, :ProxyId

        def initialize(zoneid=nil, proxyid=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
        end
      end

      # DeleteL4Proxy返回参数结构体
      class DeleteL4ProxyResponse < TencentCloud::Common::AbstractModel
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

      # DeleteL4ProxyRules请求参数结构体
      class DeleteL4ProxyRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 四层代理实例 ID。
        # @type ProxyId: String
        # @param RuleIds: 转发规则 ID 列表。单次最多支持 200 条转发规则。
        # @type RuleIds: Array

        attr_accessor :ZoneId, :ProxyId, :RuleIds

        def initialize(zoneid=nil, proxyid=nil, ruleids=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @RuleIds = params['RuleIds']
        end
      end

      # DeleteL4ProxyRules返回参数结构体
      class DeleteL4ProxyRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteL7AccRules请求参数结构体
      class DeleteL7AccRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleIds: 需要删除的规则 ID 列表。您可以通过 DescribeL7AccRules 获取 Ruleid。
        # @type RuleIds: Array

        attr_accessor :ZoneId, :RuleIds

        def initialize(zoneid=nil, ruleids=nil)
          @ZoneId = zoneid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleIds = params['RuleIds']
        end
      end

      # DeleteL7AccRules返回参数结构体
      class DeleteL7AccRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteLoadBalancer请求参数结构体
      class DeleteLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param InstanceId: 负载均衡实例 ID。
        # @type InstanceId: String

        attr_accessor :ZoneId, :InstanceId

        def initialize(zoneid=nil, instanceid=nil)
          @ZoneId = zoneid
          @InstanceId = instanceid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @InstanceId = params['InstanceId']
        end
      end

      # DeleteLoadBalancer返回参数结构体
      class DeleteLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMultiPathGatewayLine请求参数结构体
      class DeleteMultiPathGatewayLineRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GatewayId: 网关 ID。
        # @type GatewayId: String
        # @param LineId: 线路 ID。
        # @type LineId: String

        attr_accessor :ZoneId, :GatewayId, :LineId

        def initialize(zoneid=nil, gatewayid=nil, lineid=nil)
          @ZoneId = zoneid
          @GatewayId = gatewayid
          @LineId = lineid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GatewayId = params['GatewayId']
          @LineId = params['LineId']
        end
      end

      # DeleteMultiPathGatewayLine返回参数结构体
      class DeleteMultiPathGatewayLineResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMultiPathGateway请求参数结构体
      class DeleteMultiPathGatewayRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GatewayId: 网关 ID。
        # @type GatewayId: String

        attr_accessor :ZoneId, :GatewayId

        def initialize(zoneid=nil, gatewayid=nil)
          @ZoneId = zoneid
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GatewayId = params['GatewayId']
        end
      end

      # DeleteMultiPathGateway返回参数结构体
      class DeleteMultiPathGatewayResponse < TencentCloud::Common::AbstractModel
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

      # DeleteOriginGroup请求参数结构体
      class DeleteOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param GroupId: 源站组 ID，此参数必填。
        # @type GroupId: String

        attr_accessor :ZoneId, :GroupId

        def initialize(zoneid=nil, groupid=nil)
          @ZoneId = zoneid
          @GroupId = groupid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
        end
      end

      # DeleteOriginGroup返回参数结构体
      class DeleteOriginGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRealtimeLogDeliveryTask请求参数结构体
      class DeleteRealtimeLogDeliveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param TaskId: 实时日志投递任务 ID。
        # @type TaskId: String

        attr_accessor :ZoneId, :TaskId

        def initialize(zoneid=nil, taskid=nil)
          @ZoneId = zoneid
          @TaskId = taskid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TaskId = params['TaskId']
        end
      end

      # DeleteRealtimeLogDeliveryTask返回参数结构体
      class DeleteRealtimeLogDeliveryTaskResponse < TencentCloud::Common::AbstractModel
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

      # DeleteRules请求参数结构体
      class DeleteRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleIds: 指定删除的规则 ID 列表。
        # @type RuleIds: Array

        attr_accessor :ZoneId, :RuleIds

        def initialize(zoneid=nil, ruleids=nil)
          @ZoneId = zoneid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleIds = params['RuleIds']
        end
      end

      # DeleteRules返回参数结构体
      class DeleteRulesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityAPIResource请求参数结构体
      class DeleteSecurityAPIResourceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param APIResourceIds: 需要删除的 API 资源 ID 列表。
        # @type APIResourceIds: Array

        attr_accessor :ZoneId, :APIResourceIds

        def initialize(zoneid=nil, apiresourceids=nil)
          @ZoneId = zoneid
          @APIResourceIds = apiresourceids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @APIResourceIds = params['APIResourceIds']
        end
      end

      # DeleteSecurityAPIResource返回参数结构体
      class DeleteSecurityAPIResourceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityAPIService请求参数结构体
      class DeleteSecurityAPIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param APIServiceIds: API 服务 ID 列表。
        # @type APIServiceIds: Array

        attr_accessor :ZoneId, :APIServiceIds

        def initialize(zoneid=nil, apiserviceids=nil)
          @ZoneId = zoneid
          @APIServiceIds = apiserviceids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @APIServiceIds = params['APIServiceIds']
        end
      end

      # DeleteSecurityAPIService返回参数结构体
      class DeleteSecurityAPIServiceResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityClientAttester请求参数结构体
      class DeleteSecurityClientAttesterRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ClientAttesterIds: 客户端认证选项 ID。
        # @type ClientAttesterIds: Array

        attr_accessor :ZoneId, :ClientAttesterIds

        def initialize(zoneid=nil, clientattesterids=nil)
          @ZoneId = zoneid
          @ClientAttesterIds = clientattesterids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ClientAttesterIds = params['ClientAttesterIds']
        end
      end

      # DeleteSecurityClientAttester返回参数结构体
      class DeleteSecurityClientAttesterResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityIPGroup请求参数结构体
      class DeleteSecurityIPGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 Id。
        # @type ZoneId: String
        # @param GroupId: IP 组 Id。
        # @type GroupId: Integer

        attr_accessor :ZoneId, :GroupId

        def initialize(zoneid=nil, groupid=nil)
          @ZoneId = zoneid
          @GroupId = groupid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
        end
      end

      # DeleteSecurityIPGroup返回参数结构体
      class DeleteSecurityIPGroupResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSecurityJSInjectionRule请求参数结构体
      class DeleteSecurityJSInjectionRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param JSInjectionRuleIds: JavaScript 注入规则 ID 列表。
        # @type JSInjectionRuleIds: Array

        attr_accessor :ZoneId, :JSInjectionRuleIds

        def initialize(zoneid=nil, jsinjectionruleids=nil)
          @ZoneId = zoneid
          @JSInjectionRuleIds = jsinjectionruleids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @JSInjectionRuleIds = params['JSInjectionRuleIds']
        end
      end

      # DeleteSecurityJSInjectionRule返回参数结构体
      class DeleteSecurityJSInjectionRuleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSharedCNAME请求参数结构体
      class DeleteSharedCNAMERequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 共享 CNAME 所属站点 ID。
        # @type ZoneId: String
        # @param SharedCNAME: 需要删除的共享 CNAME。
        # @type SharedCNAME: String

        attr_accessor :ZoneId, :SharedCNAME

        def initialize(zoneid=nil, sharedcname=nil)
          @ZoneId = zoneid
          @SharedCNAME = sharedcname
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @SharedCNAME = params['SharedCNAME']
        end
      end

      # DeleteSharedCNAME返回参数结构体
      class DeleteSharedCNAMEResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWebSecurityTemplate请求参数结构体
      class DeleteWebSecurityTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。需要传入目标策略模板在访问权限上归属的站点，可使用 DescribeWebSecurityTemplates 接口查询策略模板归属的站点。
        # @type ZoneId: String
        # @param TemplateId: 策略模板 ID。
        # @type TemplateId: String

        attr_accessor :ZoneId, :TemplateId

        def initialize(zoneid=nil, templateid=nil)
          @ZoneId = zoneid
          @TemplateId = templateid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TemplateId = params['TemplateId']
        end
      end

      # DeleteWebSecurityTemplate返回参数结构体
      class DeleteWebSecurityTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteZone请求参数结构体
      class DeleteZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DeleteZone返回参数结构体
      class DeleteZoneResponse < TencentCloud::Common::AbstractModel
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

      # 实时日志投递条件，用于定义投递日志范围。DeliveryCondition 数组内多个项的关系为“或”，内层 Conditions 数组内多个项的关系为“且”。
      class DeliveryCondition < TencentCloud::Common::AbstractModel
        # @param Conditions: 日志过滤条件，详细的过滤条件如下：
        # <li>EdgeResponseStatusCode：按照 EdgeOne 节点响应返回给客户端的状态码进行过滤。<br>   支持运算符：equal、great、less、great_equal、less_equal<br>   取值范围：任意大于等于 0 的整数</li>
        # <li>OriginResponseStatusCode：按照源站响应状态码进行过滤。<br>   支持运算符：equal、great、less、great_equal、less_equal<br>   取值范围：任意大于等于 -1 的整数</li>
        # <li>SecurityAction：按照请求命中安全规则后的最终处置动作进行过滤。<br>   支持运算符：equal<br>   可选项如下：<br>   -：未知/未命中<br>   Monitor：观察<br>   JSChallenge：JavaScript 挑战<br>   Deny：拦截<br>   Allow：放行<br>   BlockIP：IP 封禁<br>   Redirect：重定向<br>   ReturnCustomPage：返回自定义页面<br>   ManagedChallenge：托管挑战<br>   Silence：静默<br>   LongDelay：长时间等待后响应<br>   ShortDelay：短时间等待后响应</li>
        # <li>SecurityModule：按照最终处置请求的安全模块名称进行过滤。<br>   支持运算符：equal<br>   可选项如下：<br>   -：未知/未命中<br>   CustomRule：Web防护 - 自定义规则<br>   RateLimitingCustomRule：Web防护 - 速率限制规则<br>   ManagedRule：Web防护 - 托管规则<br>   L7DDoS：Web防护 - CC攻击防护<br>   BotManagement：Bot管理 - Bot基础管理<br>   BotClientReputation：Bot管理 - 客户端画像分析<br>   BotBehaviorAnalysis：Bot管理 - Bot智能分析<br>   BotCustomRule：Bot管理 - 自定义Bot规则<br>   BotActiveDetection：Bot管理 - 主动特征识别</li>
        # @type Conditions: Array

        attr_accessor :Conditions

        def initialize(conditions=nil)
          @Conditions = conditions
        end

        def deserialize(params)
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @Conditions << querycondition_tmp
            end
          end
        end
      end

      # 安全执行动作为封禁的附加参数。
      class DenyActionParameters < TencentCloud::Common::AbstractModel
        # @param BlockIp: 是否对来源 IP 延长封禁。取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 启用后，对触发规则的客户端 IP 持续拦截。当启用该选项时，必须同时指定 BlockIpDuration 参数。
        # 注意：该选项不可与 ReturnCustomPage 或 Stall 选项同时启用。
        # @type BlockIp: String
        # @param BlockIpDuration: 当 BlockIP 为 on 时IP 的封禁时长。
        # @type BlockIpDuration: String
        # @param ReturnCustomPage: 是否使用自定义页面。取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 启用后，使用自定义页面内容拦截（响应）请求，当启用该选项时，必须同时指定 ResponseCode 和 ErrorPageId 参数。
        # 注意：该选项不可与 BlockIp 或 Stall 选项同时启用。
        # @type ReturnCustomPage: String
        # @param ResponseCode: 自定义页面的状态码。
        # @type ResponseCode: String
        # @param ErrorPageId: 自定义页面的PageId。
        # @type ErrorPageId: String
        # @param Stall: 是否对请求来源挂起不予处理。取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 启用后，不再响应当前连接会话内请求，且不会主动断开连接。用于爬虫对抗时，消耗客户端连接资源。
        # 注意：该选项不可与 BlockIp 或 ReturnCustomPage 选项同时启用。
        # @type Stall: String

        attr_accessor :BlockIp, :BlockIpDuration, :ReturnCustomPage, :ResponseCode, :ErrorPageId, :Stall

        def initialize(blockip=nil, blockipduration=nil, returncustompage=nil, responsecode=nil, errorpageid=nil, stall=nil)
          @BlockIp = blockip
          @BlockIpDuration = blockipduration
          @ReturnCustomPage = returncustompage
          @ResponseCode = responsecode
          @ErrorPageId = errorpageid
          @Stall = stall
        end

        def deserialize(params)
          @BlockIp = params['BlockIp']
          @BlockIpDuration = params['BlockIpDuration']
          @ReturnCustomPage = params['ReturnCustomPage']
          @ResponseCode = params['ResponseCode']
          @ErrorPageId = params['ErrorPageId']
          @Stall = params['Stall']
        end
      end

      # DeployConfigGroupVersion请求参数结构体
      class DeployConfigGroupVersionRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param EnvId: 环境 ID。请填写版本需要发布到的环境 ID。
        # @type EnvId: String
        # @param ConfigGroupVersionInfos: 需要发布的版本信息。可以同时变更多个不同配置组的版本，每个配置组一次仅支持变更一个版本。
        # @type ConfigGroupVersionInfos: Array
        # @param Description: 变更说明。用于描述此次变更的内容、原因，最大支持 100 个字符。
        # @type Description: String

        attr_accessor :ZoneId, :EnvId, :ConfigGroupVersionInfos, :Description

        def initialize(zoneid=nil, envid=nil, configgroupversioninfos=nil, description=nil)
          @ZoneId = zoneid
          @EnvId = envid
          @ConfigGroupVersionInfos = configgroupversioninfos
          @Description = description
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @EnvId = params['EnvId']
          unless params['ConfigGroupVersionInfos'].nil?
            @ConfigGroupVersionInfos = []
            params['ConfigGroupVersionInfos'].each do |i|
              configgroupversioninfo_tmp = ConfigGroupVersionInfo.new
              configgroupversioninfo_tmp.deserialize(i)
              @ConfigGroupVersionInfos << configgroupversioninfo_tmp
            end
          end
          @Description = params['Description']
        end
      end

      # DeployConfigGroupVersion返回参数结构体
      class DeployConfigGroupVersionResponse < TencentCloud::Common::AbstractModel
        # @param RecordId: 发布记录 ID。
        # @type RecordId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RecordId, :RequestId

        def initialize(recordid=nil, requestid=nil)
          @RecordId = recordid
          @RequestId = requestid
        end

        def deserialize(params)
          @RecordId = params['RecordId']
          @RequestId = params['RequestId']
        end
      end

      # 配置组版本发布记录详情。
      class DeployRecord < TencentCloud::Common::AbstractModel
        # @param ConfigGroupVersionInfos: 发布版本的详细信息。
        # @type ConfigGroupVersionInfos: Array
        # @param DeployTime: 发布时间。时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type DeployTime: String
        # @param Status: 发布状态，取值有：
        # <li> deploying ：发布中；</li>
        # <li>failure ：发布失败；</li>
        # <li>success： 发布成功。</li>
        # @type Status: String
        # @param Message: 发布结果信息。
        # @type Message: String
        # @param RecordId: 发布记录 ID。
        # @type RecordId: String
        # @param Description: 变更说明。
        # @type Description: String

        attr_accessor :ConfigGroupVersionInfos, :DeployTime, :Status, :Message, :RecordId, :Description

        def initialize(configgroupversioninfos=nil, deploytime=nil, status=nil, message=nil, recordid=nil, description=nil)
          @ConfigGroupVersionInfos = configgroupversioninfos
          @DeployTime = deploytime
          @Status = status
          @Message = message
          @RecordId = recordid
          @Description = description
        end

        def deserialize(params)
          unless params['ConfigGroupVersionInfos'].nil?
            @ConfigGroupVersionInfos = []
            params['ConfigGroupVersionInfos'].each do |i|
              configgroupversioninfo_tmp = ConfigGroupVersionInfo.new
              configgroupversioninfo_tmp.deserialize(i)
              @ConfigGroupVersionInfos << configgroupversioninfo_tmp
            end
          end
          @DeployTime = params['DeployTime']
          @Status = params['Status']
          @Message = params['Message']
          @RecordId = params['RecordId']
          @Description = params['Description']
        end
      end

      # DescribeAccelerationDomains请求参数结构体
      class DescribeAccelerationDomainsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 加速域名所属站点 ID。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认值：20，上限：200。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values 的上限为 20。该参数不填写时，返回当前 zone-id 下所有域名信息。详细的过滤条件如下：
        # <li>domain-name：按照加速域名进行过滤；</li>
        # <li>origin-type：按照源站类型进行过滤；</li>
        # <li>origin：按照主源站地址进行过滤；</li>
        # <li>backup-origin： 按照备用源站地址进行过滤；</li>
        # <li>domain-cname：按照 CNAME 进行过滤；</li>
        # <li>share-cname：按照共享 CNAME 进行过滤；</li>
        # @type Filters: Array
        # @param Order: 可根据该字段对返回结果进行排序，取值有：
        # <li>created_on：加速域名创建时间；</li>
        # <li>domain-name：加速域名。</li>不填写时，默认对返回结果按照 domain-name 排序。
        # @type Order: String
        # @param Direction: 排序方向，如果是字段值为数字，则根据数字大小排序；如果字段值为文本，则根据 ascill 码的大小排序。取值有：
        # <li>asc：升序排列；</li>
        # <li>desc：降序排列。</li>不填写使用默认值 asc。
        # @type Direction: String
        # @param Match: 匹配方式，取值有：
        # <li>all：返回匹配所有查询条件的加速域名；</li>
        # <li>any：返回匹配任意一个查询条件的加速域名。</li>不填写时默认值为 all。
        # @type Match: String

        attr_accessor :ZoneId, :Offset, :Limit, :Filters, :Order, :Direction, :Match

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil, order=nil, direction=nil, match=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Order = order
          @Direction = direction
          @Match = match
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
          @Order = params['Order']
          @Direction = params['Direction']
          @Match = params['Match']
        end
      end

      # DescribeAccelerationDomains返回参数结构体
      class DescribeAccelerationDomainsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的加速域名个数。
        # @type TotalCount: Integer
        # @param AccelerationDomains: 符合查询条件的所有加速域名的信息。
        # @type AccelerationDomains: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccelerationDomains, :RequestId

        def initialize(totalcount=nil, accelerationdomains=nil, requestid=nil)
          @TotalCount = totalcount
          @AccelerationDomains = accelerationdomains
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AccelerationDomains'].nil?
            @AccelerationDomains = []
            params['AccelerationDomains'].each do |i|
              accelerationdomain_tmp = AccelerationDomain.new
              accelerationdomain_tmp.deserialize(i)
              @AccelerationDomains << accelerationdomain_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeAliasDomains请求参数结构体
      class DescribeAliasDomainsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>target-name：目标域名名称进行过滤；</li>
        # <li>alias-name：按照别称域名名称进行过滤。</li>模糊查询时仅支持过滤字段名为 alias-name。
        # @type Filters: Array

        attr_accessor :ZoneId, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
        end
      end

      # DescribeAliasDomains返回参数结构体
      class DescribeAliasDomainsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的别称域名个数。
        # @type TotalCount: Integer
        # @param AliasDomains: 别称域名详细信息列表。
        # @type AliasDomains: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AliasDomains, :RequestId

        def initialize(totalcount=nil, aliasdomains=nil, requestid=nil)
          @TotalCount = totalcount
          @AliasDomains = aliasdomains
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['AliasDomains'].nil?
            @AliasDomains = []
            params['AliasDomains'].each do |i|
              aliasdomain_tmp = AliasDomain.new
              aliasdomain_tmp.deserialize(i)
              @AliasDomains << aliasdomain_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeApplicationProxies请求参数结构体
      class DescribeApplicationProxiesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。该参数必填。
        # @type ZoneId: String
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：<li>proxy-id<br>   按照【<strong>代理ID</strong>】进行过滤。代理ID形如：proxy-ev2sawbwfd。<br>   类型：String<br>   必选：否</li><li>zone-id<br>   按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-vawer2vadg。<br>   类型：String<br>   必选：否</li><li>rule-tag<br>   按照【<strong>规则标签</strong>】对应用代理下的规则进行过滤。规则标签形如：rule-service-1。<br>   类型：String<br>   必选：否</li>
        # @type Filters: Array
        # @param Offset: 分页查询偏移量。默认为0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer

        attr_accessor :ZoneId, :Filters, :Offset, :Limit

        def initialize(zoneid=nil, filters=nil, offset=nil, limit=nil)
          @ZoneId = zoneid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeApplicationProxies返回参数结构体
      class DescribeApplicationProxiesResponse < TencentCloud::Common::AbstractModel
        # @param ApplicationProxies: 应用代理列表。
        # @type ApplicationProxies: Array
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ApplicationProxies, :TotalCount, :RequestId

        def initialize(applicationproxies=nil, totalcount=nil, requestid=nil)
          @ApplicationProxies = applicationproxies
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ApplicationProxies'].nil?
            @ApplicationProxies = []
            params['ApplicationProxies'].each do |i|
              applicationproxy_tmp = ApplicationProxy.new
              applicationproxy_tmp.deserialize(i)
              @ApplicationProxies << applicationproxy_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAvailablePlans请求参数结构体
      class DescribeAvailablePlansRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAvailablePlans返回参数结构体
      class DescribeAvailablePlansResponse < TencentCloud::Common::AbstractModel
        # @param PlanInfo: 当前账户可购买套餐类型及相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PlanInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PlanInfo, :RequestId

        def initialize(planinfo=nil, requestid=nil)
          @PlanInfo = planinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PlanInfo'].nil?
            @PlanInfo = []
            params['PlanInfo'].each do |i|
              planinfo_tmp = PlanInfo.new
              planinfo_tmp.deserialize(i)
              @PlanInfo << planinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeBillingData请求参数结构体
      class DescribeBillingDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。查询时间范围（`EndTime` - `StartTime`）需小于等于 31 天。
        # @type EndTime: String
        # @param ZoneIds: 站点 ID 集合，此参数必填。最多传入 100 个站点 ID。若需查询腾讯云主账号下所有站点数据，请用 `*` 代替，查询账号级别数据需具备本接口全部站点资源权限。
        # @type ZoneIds: Array
        # @param MetricName: 指标列表，取值如下：
        # <b>四/七层加速流量：</b><li>acc_flux: 内容加速流量，单位为 Byte；</li><li>smt_flux: 智能加速流量，单位为 Byte；</li><li>l4_flux: 四层加速流量，单位为 Byte；</li><li>sec_flux: 独立防护流量，单位为 Byte；</li><li>zxctg_flux: 中国大陆网络优化流量，单位为 Byte。</li><br><b>四/七层加速带宽:</b><li>acc_bandwidth: 内容加速带宽，单位为 bps；</li><li>smt_bandwidth: 智能加速带宽，单位为 bps；</li><li>l4_bandwidth: 四层加速带宽，单位为 bps；</li><li>sec_bandwidth: 独立防护带宽，单位为 bps；</li><li>zxctg_bandwidth: 中国大陆网络优化带宽，单位为 bps。</li><br><b>HTTP/HTTPS 安全请求数：</b><li>sec_request_clean: HTTP/HTTPS 请求，单位为次。</li><b><br>增值服务用量：</b><li>smt_request_clean: 智能加速请求，单位为次；</li><li>quic_request: QUIC 请求，单位为次；</li><li>bot_request_clean: Bot 请求，单位为次；</li><li>cls_count: 实时日志推送条数，单位为条；</li><li>ddos_bandwidth: 弹性 DDoS 防护带宽，单位为 bps。</li><br><b>边缘计算用量：</b><li>edgefunction_request：边缘函数请求数，单位为次；</li><li>edgefunction_cpu_time：边缘函数CPU处理时间，单位为毫秒。</li>
        # <b>媒体处理用量：</b><li>total_transcode：所有规格音频，视频即时转码，转封装时长，单位为秒；</li><li>remux：转封装时长，单位为秒；</li><li>transcode_audio：音频转码时长，单位为秒；</li><li>transcode_H264_SD：H.264 编码方式的标清视频（短边 <= 480 px）时长，单位为秒；</li><li>transcode_H264_HD：H.264 编码方式的高清视频（短边 <= 720 px）时长，单位为秒；</li><li>transcode_H264_FHD：H.264 编码方式的全高清视频（短边 <= 1080 px）时长，单位为秒；</li><li>transcode_H264_2K：H.264 编码方式的 2K 视频（短边 <= 1440 px）时长，单位为秒。</li>
        # @type MetricName: String
        # @param Interval: 查询时间粒度，取值有：
        # <li>5min：5 分钟粒度；</li>
        # <li>hour：1 小时粒度；</li>
        # <li>day：1 天粒度。</li>
        # @type Interval: String
        # @param Filters: 过滤条件，详细的过滤条件取值如下：
        # <li>host：按照域名进行过滤。示例值：test.example.com。<br></li>
        # <li>proxy-id：按照四层代理实例 ID 进行过滤。示例值：sid-2rugn89bkla9。<br></li>
        # <li>region-id：按照计费大区进行过滤。可选项如下：<br>  CH：中国大陆境内<br>  AF：非洲<br>  AS1：亚太一区<br>  AS2：亚太二区<br>  AS3：亚太三区<br>  EU：欧洲<br>  MidEast：中东<br>  NA：北美<br>  SA：南美</li>
        # 说明：相同 `Type` 的 `BillingDataFilter` 之间为“或”关系，不同 `Type` 的 `BillingDataFilter` 之间为“且”关系。
        # @type Filters: Array
        # @param GroupBy: 分组聚合维度。最多允许同时按照两种维度进行分组。取值如下：  <li>zone-id：按照站点 ID 进行分组，若使用了内容标识符功能，则优先按照内容标识符分组；<br></li><li>host：按照域名进行分组；<br></li> <li>proxy-id：按照四层代理实例 ID 进行分组；<br></li> <li>region-id：按照计费大区进行分组。</li>
        # @type GroupBy: Array

        attr_accessor :StartTime, :EndTime, :ZoneIds, :MetricName, :Interval, :Filters, :GroupBy

        def initialize(starttime=nil, endtime=nil, zoneids=nil, metricname=nil, interval=nil, filters=nil, groupby=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ZoneIds = zoneids
          @MetricName = metricname
          @Interval = interval
          @Filters = filters
          @GroupBy = groupby
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ZoneIds = params['ZoneIds']
          @MetricName = params['MetricName']
          @Interval = params['Interval']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              billingdatafilter_tmp = BillingDataFilter.new
              billingdatafilter_tmp.deserialize(i)
              @Filters << billingdatafilter_tmp
            end
          end
          @GroupBy = params['GroupBy']
        end
      end

      # DescribeBillingData返回参数结构体
      class DescribeBillingDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: 数据点列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
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
              billingdata_tmp = BillingData.new
              billingdata_tmp.deserialize(i)
              @Data << billingdata_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigGroupVersionDetail请求参数结构体
      class DescribeConfigGroupVersionDetailRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param VersionId: 版本 ID。
        # @type VersionId: String

        attr_accessor :ZoneId, :VersionId

        def initialize(zoneid=nil, versionid=nil)
          @ZoneId = zoneid
          @VersionId = versionid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @VersionId = params['VersionId']
        end
      end

      # DescribeConfigGroupVersionDetail返回参数结构体
      class DescribeConfigGroupVersionDetailResponse < TencentCloud::Common::AbstractModel
        # @param ConfigGroupVersionInfo: 版本信息。
        # @type ConfigGroupVersionInfo: :class:`Tencentcloud::Teo.v20220901.models.ConfigGroupVersionInfo`
        # @param Content: 版本文件的内容。以 JSON 格式返回。
        # @type Content: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ConfigGroupVersionInfo, :Content, :RequestId

        def initialize(configgroupversioninfo=nil, content=nil, requestid=nil)
          @ConfigGroupVersionInfo = configgroupversioninfo
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ConfigGroupVersionInfo'].nil?
            @ConfigGroupVersionInfo = ConfigGroupVersionInfo.new
            @ConfigGroupVersionInfo.deserialize(params['ConfigGroupVersionInfo'])
          end
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # DescribeConfigGroupVersions请求参数结构体
      class DescribeConfigGroupVersionsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GroupId: 配置组 ID。
        # @type GroupId: String
        # @param Filters: 过滤条件，Filters.Values 的上限为 20，该参数不填写时，返回所选配置组下的所有版本信息。详细的过滤条件如下：
        # <li>version-id：按照版本 ID 进行过滤；</li>
        # @type Filters: Array
        # @param Offset: 分页查询偏移量。默认值为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值为 20，最大值为 100。
        # @type Limit: Integer

        attr_accessor :ZoneId, :GroupId, :Filters, :Offset, :Limit

        def initialize(zoneid=nil, groupid=nil, filters=nil, offset=nil, limit=nil)
          @ZoneId = zoneid
          @GroupId = groupid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeConfigGroupVersions返回参数结构体
      class DescribeConfigGroupVersionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 版本总数。
        # @type TotalCount: Integer
        # @param ConfigGroupVersionInfos: 版本信息列表。
        # @type ConfigGroupVersionInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ConfigGroupVersionInfos, :RequestId

        def initialize(totalcount=nil, configgroupversioninfos=nil, requestid=nil)
          @TotalCount = totalcount
          @ConfigGroupVersionInfos = configgroupversioninfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ConfigGroupVersionInfos'].nil?
            @ConfigGroupVersionInfos = []
            params['ConfigGroupVersionInfos'].each do |i|
              configgroupversioninfo_tmp = ConfigGroupVersionInfo.new
              configgroupversioninfo_tmp.deserialize(i)
              @ConfigGroupVersionInfos << configgroupversioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContentIdentifiers请求参数结构体
      class DescribeContentIdentifiersRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：100。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters 的上限为 20，Filters.Values 的上限为 20。该参数不填写时，默认返回当前 AppId 下有权限的内容标识符。详细的过滤条件如下：<li>description：按照内容标识符描述批量进行过滤；例如：test；</li><li>content-id：按照内容标识符 ID 批量进行过滤；例如：eocontent-2noz78a8ev6k；</li><li>tag-key：按照标签键进行过滤；</li> <li>tag-value： 按照标签值进行过滤；</li><li>status：按照内容标识符状态进行过滤，取值有：active：生效中；deleted：已删除。</li>仅支持按照 description 模糊查询，其余字段需要精准查询。
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :Filters

        def initialize(offset=nil, limit=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
        end
      end

      # DescribeContentIdentifiers返回参数结构体
      class DescribeContentIdentifiersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的内容标识符总数。
        # @type TotalCount: Integer
        # @param ContentIdentifiers: 内容标识符详细内容列表。
        # @type ContentIdentifiers: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ContentIdentifiers, :RequestId

        def initialize(totalcount=nil, contentidentifiers=nil, requestid=nil)
          @TotalCount = totalcount
          @ContentIdentifiers = contentidentifiers
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ContentIdentifiers'].nil?
            @ContentIdentifiers = []
            params['ContentIdentifiers'].each do |i|
              contentidentifier_tmp = ContentIdentifier.new
              contentidentifier_tmp.deserialize(i)
              @ContentIdentifiers << contentidentifier_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeContentQuota请求参数结构体
      class DescribeContentQuotaRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeContentQuota返回参数结构体
      class DescribeContentQuotaResponse < TencentCloud::Common::AbstractModel
        # @param PurgeQuota: 刷新相关配额。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PurgeQuota: Array
        # @param PrefetchQuota: 预热相关配额。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrefetchQuota: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PurgeQuota, :PrefetchQuota, :RequestId

        def initialize(purgequota=nil, prefetchquota=nil, requestid=nil)
          @PurgeQuota = purgequota
          @PrefetchQuota = prefetchquota
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['PurgeQuota'].nil?
            @PurgeQuota = []
            params['PurgeQuota'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @PurgeQuota << quota_tmp
            end
          end
          unless params['PrefetchQuota'].nil?
            @PrefetchQuota = []
            params['PrefetchQuota'].each do |i|
              quota_tmp = Quota.new
              quota_tmp.deserialize(i)
              @PrefetchQuota << quota_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCustomErrorPages请求参数结构体
      class DescribeCustomErrorPagesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Filters: 过滤条件，Filters.Values 的上限为20，详细的过滤条件Name值如下：
        # <li>page-id： 按照页面 ID 进行过滤；</li>
        # <li>name： 按照页面名称进行过滤；</li>
        # <li>description：按照页面描述过滤；</li>
        # <li>content-type：按照页面类型过滤。</li>
        # @type Filters: Array
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer

        attr_accessor :ZoneId, :Filters, :Offset, :Limit

        def initialize(zoneid=nil, filters=nil, offset=nil, limit=nil)
          @ZoneId = zoneid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCustomErrorPages返回参数结构体
      class DescribeCustomErrorPagesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 自定义错误页面总数。
        # @type TotalCount: Integer
        # @param ErrorPages: 自定义错误页面数据列表。
        # @type ErrorPages: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ErrorPages, :RequestId

        def initialize(totalcount=nil, errorpages=nil, requestid=nil)
          @TotalCount = totalcount
          @ErrorPages = errorpages
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ErrorPages'].nil?
            @ErrorPages = []
            params['ErrorPages'].each do |i|
              customerrorpage_tmp = CustomErrorPage.new
              customerrorpage_tmp.deserialize(i)
              @ErrorPages << customerrorpage_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSAttackData请求参数结构体
      class DescribeDDoSAttackDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。查询时间范围（`EndTime` - `StartTime`）需小于等于 31 天。
        # @type EndTime: String
        # @param MetricNames: 统计指标列表，取值有：
        # <li>ddos_attackMaxBandwidth：攻击带宽峰值；</li>
        # <li>ddos_attackMaxPackageRate：攻击包速率峰值 ；</li>
        # <li>ddos_attackBandwidth：攻击带宽曲线；</li>
        # <li>ddos_attackPackageRate：攻击包速率曲线。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点 ID 集合，此参数必填。最多传入 100 个站点 ID。若需查询腾讯云主账号下所有站点数据，请用 `*` 代替，查询账号级别数据需具备本接口全部站点资源权限。
        # @type ZoneIds: Array
        # @param PolicyIds: DDoS策略组ID列表，不填默认选择全部策略ID。
        # @type PolicyIds: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天。</li>不填将根据开始时间与结束时间的间隔自动推算粒度，具体为：1小时范围内以min粒度查询，2天范围内以5min粒度查询，7天范围内以hour粒度查询，超过7天以day粒度查询。
        # @type Interval: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据；</li>
        # <li>global：全球数据。</li>不填默认取值为global。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :PolicyIds, :Interval, :Area

        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, policyids=nil, interval=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @PolicyIds = policyids
          @Interval = interval
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @ZoneIds = params['ZoneIds']
          @PolicyIds = params['PolicyIds']
          @Interval = params['Interval']
          @Area = params['Area']
        end
      end

      # DescribeDDoSAttackData返回参数结构体
      class DescribeDDoSAttackDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: DDoS攻击数据内容列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              secentry_tmp = SecEntry.new
              secentry_tmp.deserialize(i)
              @Data << secentry_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSAttackEvent请求参数结构体
      class DescribeDDoSAttackEventRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间，时间范围为 30 天。
        # @type StartTime: String
        # @param EndTime: 结束时间。查询时间范围（`EndTime` - `StartTime`）需小于等于 31 天。
        # @type EndTime: String
        # @param PolicyIds: ddos策略组集合，不填默认选择全部策略。
        # @type PolicyIds: Array
        # @param ZoneIds: 站点 ID 集合，此参数必填。最多传入 100 个站点 ID。若需查询腾讯云主账号下所有站点数据，请用 `*` 代替，查询账号级别数据需具备本接口全部站点资源权限。
        # @type ZoneIds: Array
        # @param Limit: 分页查询的限制数目，默认值为20，最大查询条目为1000。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为0。
        # @type Offset: Integer
        # @param ShowDetail: 展示攻击详情的参数，若填false，默认只返回攻击次数，不返回攻击详情；若填true，返回攻击详情。
        # @type ShowDetail: Boolean
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据；</li>
        # <li>global：全球数据；</li>不填默认取值为global。
        # @type Area: String
        # @param OrderBy: 排序字段，取值有：
        # <li>MaxBandWidth：带宽峰值；</li>
        # <li>AttackStartTime：攻击开始时间。</li>不填默认值为：AttackStartTime。
        # @type OrderBy: String
        # @param OrderType: 排序方式，取值有：
        # <li>asc：升序方式；</li>
        # <li>desc：降序方式。</li>不填默认值为：desc。
        # @type OrderType: String

        attr_accessor :StartTime, :EndTime, :PolicyIds, :ZoneIds, :Limit, :Offset, :ShowDetail, :Area, :OrderBy, :OrderType

        def initialize(starttime=nil, endtime=nil, policyids=nil, zoneids=nil, limit=nil, offset=nil, showdetail=nil, area=nil, orderby=nil, ordertype=nil)
          @StartTime = starttime
          @EndTime = endtime
          @PolicyIds = policyids
          @ZoneIds = zoneids
          @Limit = limit
          @Offset = offset
          @ShowDetail = showdetail
          @Area = area
          @OrderBy = orderby
          @OrderType = ordertype
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @PolicyIds = params['PolicyIds']
          @ZoneIds = params['ZoneIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @ShowDetail = params['ShowDetail']
          @Area = params['Area']
          @OrderBy = params['OrderBy']
          @OrderType = params['OrderType']
        end
      end

      # DescribeDDoSAttackEvent返回参数结构体
      class DescribeDDoSAttackEventResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDOS攻击事件数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              ddosattackevent_tmp = DDoSAttackEvent.new
              ddosattackevent_tmp.deserialize(i)
              @Data << ddosattackevent_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSAttackTopData请求参数结构体
      class DescribeDDoSAttackTopDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。查询时间范围（`EndTime` - `StartTime`）需小于等于 31 天。
        # @type EndTime: String
        # @param MetricName: 查询的统计指标，取值有：
        # <li>ddos_attackFlux_protocol：按各协议的攻击流量排行；</li>
        # <li>ddos_attackPackageNum_protocol：按各协议的攻击包量排行；</li>
        # <li>ddos_attackNum_attackType：按各攻击类型的攻击数量排行；</li>
        # <li>ddos_attackNum_sregion：按攻击源地区的攻击数量排行；</li>
        # <li>ddos_attackFlux_sip：按攻击源IP的攻击数量排行；</li>
        # <li>ddos_attackFlux_sregion：按攻击源地区的攻击数量排行。</li>
        # @type MetricName: String
        # @param ZoneIds: 站点 ID 集合，此参数必填。最多传入 100 个站点 ID。若需查询腾讯云主账号下所有站点数据，请用 `*` 代替，查询账号级别数据需具备本接口全部站点资源权限。
        # @type ZoneIds: Array
        # @param PolicyIds: DDoS策略组ID集合，不填默认选择全部策略ID。
        # @type PolicyIds: Array
        # @param AttackType: 攻击类型，取值有：
        # <li>flood：洪泛攻击；</li>
        # <li>icmpFlood：icmp洪泛攻击；</li>
        # <li>all：所有的攻击类型。</li>不填默认为all，表示查询全部攻击类型。
        # @type AttackType: String
        # @param ProtocolType: 协议类型，取值有：
        # <li>tcp：tcp协议；</li>
        # <li>udp：udp协议；</li>
        # <li>all：所有的协议类型。</li>不填默认为all，表示查询所有协议。
        # @type ProtocolType: String
        # @param Port: 端口号。
        # @type Port: Integer
        # @param Limit: 查询前多少个数据，不填默认默认为10， 表示查询前top 10的数据。
        # @type Limit: Integer
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据。</li>不填将根据用户所在地智能选择地区。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricName, :ZoneIds, :PolicyIds, :AttackType, :ProtocolType, :Port, :Limit, :Area

        def initialize(starttime=nil, endtime=nil, metricname=nil, zoneids=nil, policyids=nil, attacktype=nil, protocoltype=nil, port=nil, limit=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @ZoneIds = zoneids
          @PolicyIds = policyids
          @AttackType = attacktype
          @ProtocolType = protocoltype
          @Port = port
          @Limit = limit
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @ZoneIds = params['ZoneIds']
          @PolicyIds = params['PolicyIds']
          @AttackType = params['AttackType']
          @ProtocolType = params['ProtocolType']
          @Port = params['Port']
          @Limit = params['Limit']
          @Area = params['Area']
        end
      end

      # DescribeDDoSAttackTopData返回参数结构体
      class DescribeDDoSAttackTopDataResponse < TencentCloud::Common::AbstractModel
        # @param Data: DDoS攻击Top数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :TotalCount, :RequestId

        def initialize(data=nil, totalcount=nil, requestid=nil)
          @Data = data
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              topentry_tmp = TopEntry.new
              topentry_tmp.deserialize(i)
              @Data << topentry_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDDoSProtection请求参数结构体
      class DescribeDDoSProtectionRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeDDoSProtection返回参数结构体
      class DescribeDDoSProtectionResponse < TencentCloud::Common::AbstractModel
        # @param DDoSProtection: 独立 DDoS 防护配置。用于控制独立 DDoS 防护的生效范围。
        # @type DDoSProtection: :class:`Tencentcloud::Teo.v20220901.models.DDoSProtection`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DDoSProtection, :RequestId

        def initialize(ddosprotection=nil, requestid=nil)
          @DDoSProtection = ddosprotection
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DDoSProtection'].nil?
            @DDoSProtection = DDoSProtection.new
            @DDoSProtection.deserialize(params['DDoSProtection'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDefaultCertificates请求参数结构体
      class DescribeDefaultCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Filters: 过滤条件，Filters.Values的上限为5。详细的过滤条件如下：
        # <li>zone-id<br>   按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-xxx。<br>   类型：String<br>   必选：是 </li>
        # @type Filters: Array
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：100。
        # @type Limit: Integer

        attr_accessor :ZoneId, :Filters, :Offset, :Limit

        def initialize(zoneid=nil, filters=nil, offset=nil, limit=nil)
          @ZoneId = zoneid
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeDefaultCertificates返回参数结构体
      class DescribeDefaultCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 证书总数。
        # @type TotalCount: Integer
        # @param DefaultServerCertInfo: 默认证书列表。
        # @type DefaultServerCertInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DefaultServerCertInfo, :RequestId

        def initialize(totalcount=nil, defaultservercertinfo=nil, requestid=nil)
          @TotalCount = totalcount
          @DefaultServerCertInfo = defaultservercertinfo
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DefaultServerCertInfo'].nil?
            @DefaultServerCertInfo = []
            params['DefaultServerCertInfo'].each do |i|
              defaultservercertinfo_tmp = DefaultServerCertInfo.new
              defaultservercertinfo_tmp.deserialize(i)
              @DefaultServerCertInfo << defaultservercertinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDeployHistory请求参数结构体
      class DescribeDeployHistoryRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param EnvId: 环境 ID。
        # @type EnvId: String
        # @param Filters: 过滤条件，Filters.Values 的上限为 20，详细的过滤条件如下：
        # <li>record-id：按照发布记录 ID 进行过滤进行过滤。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :EnvId, :Filters

        def initialize(zoneid=nil, envid=nil, filters=nil)
          @ZoneId = zoneid
          @EnvId = envid
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @EnvId = params['EnvId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
        end
      end

      # DescribeDeployHistory返回参数结构体
      class DescribeDeployHistoryResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 发布记录总数。
        # @type TotalCount: Integer
        # @param Records: 发布记录详情。
        # @type Records: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Records, :RequestId

        def initialize(totalcount=nil, records=nil, requestid=nil)
          @TotalCount = totalcount
          @Records = records
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              deployrecord_tmp = DeployRecord.new
              deployrecord_tmp.deserialize(i)
              @Records << deployrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeDnsRecords请求参数结构体
      class DescribeDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认值：20，上限：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values 的上限为20。详细的过滤条件如下：<li>id： 按照 DNS 记录 ID 进行过滤，支持模糊查询；</li><li>name：按照 DNS 记录名称进行过滤，支持模糊查询；</li><li>content：按照 DNS 记录内容进行过滤，支持模糊查询；</li><li>type：按照 DNS 记录类型进行过滤，不支持模糊查询。可选项：<br>   A：将域名指向一个外网 IPv4 地址，如 8.8.8.8；<br>   AAAA：将域名指向一个外网 IPv6 地址；<br>   CNAME：将域名指向另一个域名，再由该域名解析出最终 IP 地址；<br>   TXT：对域名进行标识和说明，常用于域名验证和 SPF 记录（反垃圾邮件）；<br>   NS：如果需要将子域名交给其他 DNS 服务商解析，则需要添加 NS 记录。根域名无法添加 NS 记录；<br>   CAA：指定可为本站点颁发证书的 CA；<br>   SRV：标识某台服务器使用了某个服务，常见于微软系统的目录管理；<br>   MX：指定收件人邮件服务器。</li><li>ttl：按照解析生效时间进行过滤，不支持模糊查询。</li>
        # @type Filters: Array
        # @param SortBy: 排序依据，取值有：<li>content：DNS 记录内容；</li><li>created-on：DNS 记录创建时间；</li><li>name：DNS 记录名称；</li><li>ttl：缓存时间；</li><li>type：DNS 记录类型。</li>默认根据 type, name 属性组合排序。
        # @type SortBy: String
        # @param SortOrder: 列表排序方式，取值有：<li>asc：升序排列；</li><li>desc：降序排列。</li>默认值为 asc。
        # @type SortOrder: String
        # @param Match: 匹配方式，取值有：<li>all：返回匹配所有查询条件的记录；</li><li>any：返回匹配任意一个查询条件的记录。</li>默认值为 all。
        # @type Match: String

        attr_accessor :ZoneId, :Offset, :Limit, :Filters, :SortBy, :SortOrder, :Match

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil, sortby=nil, sortorder=nil, match=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @SortBy = sortby
          @SortOrder = sortorder
          @Match = match
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
          @SortBy = params['SortBy']
          @SortOrder = params['SortOrder']
          @Match = params['Match']
        end
      end

      # DescribeDnsRecords返回参数结构体
      class DescribeDnsRecordsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: DNS 记录总数。
        # @type TotalCount: Integer
        # @param DnsRecords: DNS 记录列表。
        # @type DnsRecords: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DnsRecords, :RequestId

        def initialize(totalcount=nil, dnsrecords=nil, requestid=nil)
          @TotalCount = totalcount
          @DnsRecords = dnsrecords
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['DnsRecords'].nil?
            @DnsRecords = []
            params['DnsRecords'].each do |i|
              dnsrecord_tmp = DnsRecord.new
              dnsrecord_tmp.deserialize(i)
              @DnsRecords << dnsrecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeEnvironments请求参数结构体
      class DescribeEnvironmentsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeEnvironments返回参数结构体
      class DescribeEnvironmentsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 环境总数。
        # @type TotalCount: Integer
        # @param EnvInfos: 环境列表。
        # @type EnvInfos: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :EnvInfos, :RequestId

        def initialize(totalcount=nil, envinfos=nil, requestid=nil)
          @TotalCount = totalcount
          @EnvInfos = envinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['EnvInfos'].nil?
            @EnvInfos = []
            params['EnvInfos'].each do |i|
              envinfo_tmp = EnvInfo.new
              envinfo_tmp.deserialize(i)
              @EnvInfos << envinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFunctionRules请求参数结构体
      class DescribeFunctionRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Filters: 过滤条件列表，多个条件为且关系，Filters.Values 的上限为 20。详细的过滤条件如下：
        # <li>rule-id：按照【规则 ID】进行精确匹配。</li>
        # <li>function-id：按照【函数 ID】进行精确匹配。</li>
        # <li>remark：按照【规则描述】进行模糊匹配。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :Filters

        def initialize(zoneid=nil, filters=nil)
          @ZoneId = zoneid
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
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

      # DescribeFunctionRules返回参数结构体
      class DescribeFunctionRulesResponse < TencentCloud::Common::AbstractModel
        # @param FunctionRules: 规则详情列表。
        # @type FunctionRules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FunctionRules, :RequestId

        def initialize(functionrules=nil, requestid=nil)
          @FunctionRules = functionrules
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FunctionRules'].nil?
            @FunctionRules = []
            params['FunctionRules'].each do |i|
              functionrule_tmp = FunctionRule.new
              functionrule_tmp.deserialize(i)
              @FunctionRules << functionrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFunctionRuntimeEnvironment请求参数结构体
      class DescribeFunctionRuntimeEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param FunctionId: 函数 ID。
        # @type FunctionId: String

        attr_accessor :ZoneId, :FunctionId

        def initialize(zoneid=nil, functionid=nil)
          @ZoneId = zoneid
          @FunctionId = functionid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @FunctionId = params['FunctionId']
        end
      end

      # DescribeFunctionRuntimeEnvironment返回参数结构体
      class DescribeFunctionRuntimeEnvironmentResponse < TencentCloud::Common::AbstractModel
        # @param EnvironmentVariables: 环境变量列表。
        # @type EnvironmentVariables: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EnvironmentVariables, :RequestId

        def initialize(environmentvariables=nil, requestid=nil)
          @EnvironmentVariables = environmentvariables
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['EnvironmentVariables'].nil?
            @EnvironmentVariables = []
            params['EnvironmentVariables'].each do |i|
              functionenvironmentvariable_tmp = FunctionEnvironmentVariable.new
              functionenvironmentvariable_tmp.deserialize(i)
              @EnvironmentVariables << functionenvironmentvariable_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeFunctions请求参数结构体
      class DescribeFunctionsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param FunctionIds: 按照函数 ID 列表过滤。
        # @type FunctionIds: Array
        # @param Filters: 过滤条件列表，多个条件为且关系，Filters.Values 的上限为 20。详细的过滤条件如下：
        # <li>name：按照【函数名称】进行模糊匹配。</li>
        # <li>remark：按照【函数描述】进行模糊匹配。</li>
        # @type Filters: Array
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：200。
        # @type Limit: Integer

        attr_accessor :ZoneId, :FunctionIds, :Filters, :Offset, :Limit

        def initialize(zoneid=nil, functionids=nil, filters=nil, offset=nil, limit=nil)
          @ZoneId = zoneid
          @FunctionIds = functionids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @FunctionIds = params['FunctionIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeFunctions返回参数结构体
      class DescribeFunctionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的函数总数。
        # @type TotalCount: Integer
        # @param Functions: 符合查询条件的所有函数信息。
        # @type Functions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Functions, :RequestId

        def initialize(totalcount=nil, functions=nil, requestid=nil)
          @TotalCount = totalcount
          @Functions = functions
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Functions'].nil?
            @Functions = []
            params['Functions'].each do |i|
              function_tmp = Function.new
              function_tmp.deserialize(i)
              @Functions << function_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeHostsSetting请求参数结构体
      class DescribeHostsSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量。默认值： 0，最小值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值： 100，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>host：按照域名进行过滤。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeHostsSetting返回参数结构体
      class DescribeHostsSettingResponse < TencentCloud::Common::AbstractModel
        # @param DetailHosts: 域名列表。
        # @type DetailHosts: Array
        # @param TotalNumber: 域名数量。
        # @type TotalNumber: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DetailHosts, :TotalNumber, :RequestId

        def initialize(detailhosts=nil, totalnumber=nil, requestid=nil)
          @DetailHosts = detailhosts
          @TotalNumber = totalnumber
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['DetailHosts'].nil?
            @DetailHosts = []
            params['DetailHosts'].each do |i|
              detailhost_tmp = DetailHost.new
              detailhost_tmp.deserialize(i)
              @DetailHosts << detailhost_tmp
            end
          end
          @TotalNumber = params['TotalNumber']
          @RequestId = params['RequestId']
        end
      end

      # DescribeIPRegion请求参数结构体
      class DescribeIPRegionRequest < TencentCloud::Common::AbstractModel
        # @param IPs: 待查询的 IP 列表，支持 IPV4 和 IPV6，最大可查询 100 条。
        # @type IPs: Array

        attr_accessor :IPs

        def initialize(ips=nil)
          @IPs = ips
        end

        def deserialize(params)
          @IPs = params['IPs']
        end
      end

      # DescribeIPRegion返回参数结构体
      class DescribeIPRegionResponse < TencentCloud::Common::AbstractModel
        # @param IPRegionInfo: IP 归属信息列表。
        # @type IPRegionInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IPRegionInfo, :RequestId

        def initialize(ipregioninfo=nil, requestid=nil)
          @IPRegionInfo = ipregioninfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IPRegionInfo'].nil?
            @IPRegionInfo = []
            params['IPRegionInfo'].each do |i|
              ipregioninfo_tmp = IPRegionInfo.new
              ipregioninfo_tmp.deserialize(i)
              @IPRegionInfo << ipregioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeIdentifications请求参数结构体
      class DescribeIdentificationsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>zone-name：按照站点名称进行过滤。</li>
        # @type Filters: Array
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer

        attr_accessor :Filters, :Offset, :Limit

        def initialize(filters=nil, offset=nil, limit=nil)
          @Filters = filters
          @Offset = offset
          @Limit = limit
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
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeIdentifications返回参数结构体
      class DescribeIdentificationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的站点个数。
        # @type TotalCount: Integer
        # @param Identifications: 站点验证信息列表。
        # @type Identifications: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Identifications, :RequestId

        def initialize(totalcount=nil, identifications=nil, requestid=nil)
          @TotalCount = totalcount
          @Identifications = identifications
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Identifications'].nil?
            @Identifications = []
            params['Identifications'].each do |i|
              identification_tmp = Identification.new
              identification_tmp.deserialize(i)
              @Identifications << identification_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeJustInTimeTranscodeTemplates请求参数结构体
      class DescribeJustInTimeTranscodeTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param Filters: 过滤条件，Filters 的上限为 20，Filters.Values 的上限为 20。该参数不填写时，默认返回当前 ZoneId 下有权限的即时转码模板。详细的过滤条件如下：<li>template-name：按照模版名批量进行过滤。例如：mytemplate；</li><li>template-type：按照模板类型批量进行过滤。例如：preset 或 custom。</li><li>template-id：按照模板 ID 批量进行过滤。例如：C1LZ7982VgTpYhJ7M。</li>默认为空。
        # @type Filters: Array
        # @param SortBy: 排序字段，取值有：<li>createTime：模板创建时间。</li>默认值为：createTime。
        # @type SortBy: String
        # @param SortOrder: 排序方式，取值有：<li>asc：升序方式；</li><li>desc：降序方式。</li>默认值为：desc。
        # @type SortOrder: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：20，最大值：1000。
        # @type Limit: Integer

        attr_accessor :ZoneId, :Filters, :SortBy, :SortOrder, :Offset, :Limit

        def initialize(zoneid=nil, filters=nil, sortby=nil, sortorder=nil, offset=nil, limit=nil)
          @ZoneId = zoneid
          @Filters = filters
          @SortBy = sortby
          @SortOrder = sortorder
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @SortBy = params['SortBy']
          @SortOrder = params['SortOrder']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeJustInTimeTranscodeTemplates返回参数结构体
      class DescribeJustInTimeTranscodeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param TemplateSet: 模板详情列表。
        # @type TemplateSet: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
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
              justintimetranscodetemplate_tmp = JustInTimeTranscodeTemplate.new
              justintimetranscodetemplate_tmp.deserialize(i)
              @TemplateSet << justintimetranscodetemplate_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL4Proxy请求参数结构体
      class DescribeL4ProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 四层代理实例所属站点的 ID。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，不填写时默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values 的上限为 20。该参数不填写时，返回当前 zone-id 下所有四层代理实例信息。详细的过滤条件如下：
        # <li>proxy-id：按照四层代理实例 ID 进行过滤；</li>
        # <li>ddos-protection-type：按照安全防护类型进行过滤。</li>

        # @type Filters: Array

        attr_accessor :ZoneId, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeL4Proxy返回参数结构体
      class DescribeL4ProxyResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 四层代理实例的数量。
        # @type TotalCount: Integer
        # @param L4Proxies: 四层代理实例列表。
        # @type L4Proxies: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :L4Proxies, :RequestId

        def initialize(totalcount=nil, l4proxies=nil, requestid=nil)
          @TotalCount = totalcount
          @L4Proxies = l4proxies
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['L4Proxies'].nil?
            @L4Proxies = []
            params['L4Proxies'].each do |i|
              l4proxy_tmp = L4Proxy.new
              l4proxy_tmp.deserialize(i)
              @L4Proxies << l4proxy_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL4ProxyRules请求参数结构体
      class DescribeL4ProxyRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 四层代理实例 ID。
        # @type ProxyId: String
        # @param Offset: 分页查询偏移量，不填写时默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。不填写时返回当前四层实例下所有的规则信息，详细的过滤条件如下：  <li>rule-id：按照规则 ID 对四层代理实例下的规则进行过滤。规则 ID 形如：rule-31vv7qig0vjy；</li> <li>rule-tag：按照规则标签对四层代理实例下的规则进行过滤。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :ProxyId, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, proxyid=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeL4ProxyRules返回参数结构体
      class DescribeL4ProxyRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 转发规则总数。
        # @type TotalCount: Integer
        # @param L4ProxyRules: 转发规则列表。
        # @type L4ProxyRules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :L4ProxyRules, :RequestId

        def initialize(totalcount=nil, l4proxyrules=nil, requestid=nil)
          @TotalCount = totalcount
          @L4ProxyRules = l4proxyrules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['L4ProxyRules'].nil?
            @L4ProxyRules = []
            params['L4ProxyRules'].each do |i|
              l4proxyrule_tmp = L4ProxyRule.new
              l4proxyrule_tmp.deserialize(i)
              @L4ProxyRules << l4proxyrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL7AccRules请求参数结构体
      class DescribeL7AccRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Filters: 过滤条件，Filters.Values 的上限为 20，不填写此参数时默认按顺序返回站点下的规则。详细的过滤条件如下：
        # <li>rule-id：按照规则 ID 进行过滤。</li>
        # @type Filters: Array
        # @param Limit: 分页查询限制数目，默认值：20，上限：1000。
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer

        attr_accessor :ZoneId, :Filters, :Limit, :Offset

        def initialize(zoneid=nil, filters=nil, limit=nil, offset=nil)
          @ZoneId = zoneid
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeL7AccRules返回参数结构体
      class DescribeL7AccRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 规则总数。
        # @type TotalCount: Integer
        # @param Rules: 规则列表，规则按照从上到下的顺序执行，详情参考[规则生效优先级](https://cloud.tencent.com/document/product/1552/70901#.E4.BC.98.E5.85.88.E7.BA.A7)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Rules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Rules, :RequestId

        def initialize(totalcount=nil, rules=nil, requestid=nil)
          @TotalCount = totalcount
          @Rules = rules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ruleengineitem_tmp = RuleEngineItem.new
              ruleengineitem_tmp.deserialize(i)
              @Rules << ruleengineitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeL7AccSetting请求参数结构体
      class DescribeL7AccSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeL7AccSetting返回参数结构体
      class DescribeL7AccSettingResponse < TencentCloud::Common::AbstractModel
        # @param ZoneSetting: 站点加速全局配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneSetting: :class:`Tencentcloud::Teo.v20220901.models.ZoneConfigParameters`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneSetting, :RequestId

        def initialize(zonesetting=nil, requestid=nil)
          @ZoneSetting = zonesetting
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ZoneSetting'].nil?
            @ZoneSetting = ZoneConfigParameters.new
            @ZoneSetting.deserialize(params['ZoneSetting'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeLoadBalancerList请求参数结构体
      class DescribeLoadBalancerListRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认值：20，最大值：100。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values 的上限为 20。该参数不填写时，返回当前 zone-id 下所有负载均衡实例信息。详细的过滤条件如下：
        # <li>InstanceName：按照负载均衡实例名称进行过滤；</li>
        # <li>InstanceId：按照负载均衡实例 ID 进行过滤。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeLoadBalancerList返回参数结构体
      class DescribeLoadBalancerListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 负载均衡实例总数。
        # @type TotalCount: Integer
        # @param LoadBalancerList: 负载均衡实例列表。
        # @type LoadBalancerList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :LoadBalancerList, :RequestId

        def initialize(totalcount=nil, loadbalancerlist=nil, requestid=nil)
          @TotalCount = totalcount
          @LoadBalancerList = loadbalancerlist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['LoadBalancerList'].nil?
            @LoadBalancerList = []
            params['LoadBalancerList'].each do |i|
              loadbalancer_tmp = LoadBalancer.new
              loadbalancer_tmp.deserialize(i)
              @LoadBalancerList << loadbalancer_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMultiPathGatewayLine请求参数结构体
      class DescribeMultiPathGatewayLineRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GatewayId: 网关 ID。
        # @type GatewayId: String
        # @param LineId: 线路 ID。
        # @type LineId: String

        attr_accessor :ZoneId, :GatewayId, :LineId

        def initialize(zoneid=nil, gatewayid=nil, lineid=nil)
          @ZoneId = zoneid
          @GatewayId = gatewayid
          @LineId = lineid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GatewayId = params['GatewayId']
          @LineId = params['LineId']
        end
      end

      # DescribeMultiPathGatewayLine返回参数结构体
      class DescribeMultiPathGatewayLineResponse < TencentCloud::Common::AbstractModel
        # @param Line: 线路信息。
        # @type Line: :class:`Tencentcloud::Teo.v20220901.models.MultiPathGatewayLine`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Line, :RequestId

        def initialize(line=nil, requestid=nil)
          @Line = line
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Line'].nil?
            @Line = MultiPathGatewayLine.new
            @Line.deserialize(params['Line'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMultiPathGatewayRegions请求参数结构体
      class DescribeMultiPathGatewayRegionsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeMultiPathGatewayRegions返回参数结构体
      class DescribeMultiPathGatewayRegionsResponse < TencentCloud::Common::AbstractModel
        # @param GatewayRegions: 网关可用地域列表。
        # @type GatewayRegions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GatewayRegions, :RequestId

        def initialize(gatewayregions=nil, requestid=nil)
          @GatewayRegions = gatewayregions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GatewayRegions'].nil?
            @GatewayRegions = []
            params['GatewayRegions'].each do |i|
              gatewayregion_tmp = GatewayRegion.new
              gatewayregion_tmp.deserialize(i)
              @GatewayRegions << gatewayregion_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMultiPathGateway请求参数结构体
      class DescribeMultiPathGatewayRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GatewayId: 网关 ID。
        # @type GatewayId: String

        attr_accessor :ZoneId, :GatewayId

        def initialize(zoneid=nil, gatewayid=nil)
          @ZoneId = zoneid
          @GatewayId = gatewayid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GatewayId = params['GatewayId']
        end
      end

      # DescribeMultiPathGateway返回参数结构体
      class DescribeMultiPathGatewayResponse < TencentCloud::Common::AbstractModel
        # @param GatewayDetail: 网关详情。
        # @type GatewayDetail: :class:`Tencentcloud::Teo.v20220901.models.MultiPathGateway`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GatewayDetail, :RequestId

        def initialize(gatewaydetail=nil, requestid=nil)
          @GatewayDetail = gatewaydetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['GatewayDetail'].nil?
            @GatewayDetail = MultiPathGateway.new
            @GatewayDetail.deserialize(params['GatewayDetail'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeMultiPathGatewaySecretKey请求参数结构体
      class DescribeMultiPathGatewaySecretKeyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeMultiPathGatewaySecretKey返回参数结构体
      class DescribeMultiPathGatewaySecretKeyResponse < TencentCloud::Common::AbstractModel
        # @param SecretKey: 接入密钥。
        # @type SecretKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretKey, :RequestId

        def initialize(secretkey=nil, requestid=nil)
          @SecretKey = secretkey
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMultiPathGateways请求参数结构体
      class DescribeMultiPathGatewaysRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 网关列表的过滤字段，该参数不填写时，返回当前 appid 下所有网关信息，详细的过滤条件如下：
        # <li> gateway-type：按照网关类型进行过滤，支持取值 cloud 和 private，分别代表过滤云上网关和自由网关；</li>
        # <li> keyword：按照网关名的关键字进行过滤。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
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

      # DescribeMultiPathGateways返回参数结构体
      class DescribeMultiPathGatewaysResponse < TencentCloud::Common::AbstractModel
        # @param Gateways: 网关详情。
        # @type Gateways: Array
        # @param TotalCount: 总条数。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Gateways, :TotalCount, :RequestId

        def initialize(gateways=nil, totalcount=nil, requestid=nil)
          @Gateways = gateways
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Gateways'].nil?
            @Gateways = []
            params['Gateways'].each do |i|
              multipathgateway_tmp = MultiPathGateway.new
              multipathgateway_tmp.deserialize(i)
              @Gateways << multipathgateway_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOriginACL请求参数结构体
      class DescribeOriginACLRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeOriginACL返回参数结构体
      class DescribeOriginACLResponse < TencentCloud::Common::AbstractModel
        # @param OriginACLInfo: 七层加速域名/四层代理实例与回源 IP 网段的绑定关系详情。
        # @type OriginACLInfo: :class:`Tencentcloud::Teo.v20220901.models.OriginACLInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginACLInfo, :RequestId

        def initialize(originaclinfo=nil, requestid=nil)
          @OriginACLInfo = originaclinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OriginACLInfo'].nil?
            @OriginACLInfo = OriginACLInfo.new
            @OriginACLInfo.deserialize(params['OriginACLInfo'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOriginGroupHealthStatus请求参数结构体
      class DescribeOriginGroupHealthStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param LBInstanceId: 负载均衡实例 ID。
        # @type LBInstanceId: String
        # @param OriginGroupIds: 源站组 ID。不填写时默认获取负载均衡下所有源站组的健康状态。
        # @type OriginGroupIds: Array

        attr_accessor :ZoneId, :LBInstanceId, :OriginGroupIds

        def initialize(zoneid=nil, lbinstanceid=nil, origingroupids=nil)
          @ZoneId = zoneid
          @LBInstanceId = lbinstanceid
          @OriginGroupIds = origingroupids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @LBInstanceId = params['LBInstanceId']
          @OriginGroupIds = params['OriginGroupIds']
        end
      end

      # DescribeOriginGroupHealthStatus返回参数结构体
      class DescribeOriginGroupHealthStatusResponse < TencentCloud::Common::AbstractModel
        # @param OriginGroupHealthStatusList: 源站组下源站的健康状态。
        # @type OriginGroupHealthStatusList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginGroupHealthStatusList, :RequestId

        def initialize(origingrouphealthstatuslist=nil, requestid=nil)
          @OriginGroupHealthStatusList = origingrouphealthstatuslist
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OriginGroupHealthStatusList'].nil?
            @OriginGroupHealthStatusList = []
            params['OriginGroupHealthStatusList'].each do |i|
              origingrouphealthstatusdetail_tmp = OriginGroupHealthStatusDetail.new
              origingrouphealthstatusdetail_tmp.deserialize(i)
              @OriginGroupHealthStatusList << origingrouphealthstatusdetail_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOriginGroup请求参数结构体
      class DescribeOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID，此参数必填。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量，不填默认为0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，不填默认为20，取值：1-1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>origin-group-id：按照源站组 ID 进行过滤，不支持模糊查询。源站组 ID 形如：origin-2ccgtb24-7dc5-46s2-9r3e-95825d53dwe3a；</li><li>origin-group-name： 按照源站组名称进行过滤，使用模糊查询时，仅支持填写一个源站组名称。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
        end
      end

      # DescribeOriginGroup返回参数结构体
      class DescribeOriginGroupResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 记录总数。
        # @type TotalCount: Integer
        # @param OriginGroups: 源站组信息。
        # @type OriginGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :OriginGroups, :RequestId

        def initialize(totalcount=nil, origingroups=nil, requestid=nil)
          @TotalCount = totalcount
          @OriginGroups = origingroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['OriginGroups'].nil?
            @OriginGroups = []
            params['OriginGroups'].each do |i|
              origingroup_tmp = OriginGroup.new
              origingroup_tmp.deserialize(i)
              @OriginGroups << origingroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOriginProtection请求参数结构体
      class DescribeOriginProtectionRequest < TencentCloud::Common::AbstractModel
        # @param ZoneIds: 查询的站点ID集合。该参数必填。
        # @type ZoneIds: Array
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>need-update<br>   按照【<strong>站点是否需要更新源站防护IP白名单</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   true：需要更新<br>   false：无需更新<br></li>
        # <li>plan-support<br>   按照【<strong>站点套餐是否支持源站防护</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   true：支持<br>   false：不支持<br></li>
        # @type Filters: Array
        # @param Offset: 分页查询偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer

        attr_accessor :ZoneIds, :Filters, :Offset, :Limit

        def initialize(zoneids=nil, filters=nil, offset=nil, limit=nil)
          @ZoneIds = zoneids
          @Filters = filters
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @ZoneIds = params['ZoneIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeOriginProtection返回参数结构体
      class DescribeOriginProtectionResponse < TencentCloud::Common::AbstractModel
        # @param OriginProtectionInfo: 源站防护信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OriginProtectionInfo: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginProtectionInfo, :RequestId

        def initialize(originprotectioninfo=nil, requestid=nil)
          @OriginProtectionInfo = originprotectioninfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['OriginProtectionInfo'].nil?
            @OriginProtectionInfo = []
            params['OriginProtectionInfo'].each do |i|
              originprotectioninfo_tmp = OriginProtectionInfo.new
              originprotectioninfo_tmp.deserialize(i)
              @OriginProtectionInfo << originprotectioninfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeOverviewL7Data请求参数结构体
      class DescribeOverviewL7DataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 查询的指标，取值有：
        # <li>l7Flow_outFlux: Edegone响应流量；</li>
        # <li>l7Flow_inFlux: Edgeone请求流量；</li>
        # <li>l7Flow_outBandwidth: Edegone响应带宽；</li>
        # <li>l7Flow_inBandwidth: Edegone请求带宽；</li>
        # <li>l7Flow_hit_outFlux: 缓存命中流量；</li>
        # <li>l7Flow_request: 访问请求数；</li>
        # <li>l7Flow_flux: 访问请求上行+下行流量；</li>
        # <li>l7Flow_bandwidth：访问请求上行+下行带宽。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点 ID 集合，此参数必填。
        # @type ZoneIds: Array
        # @param Domains: 查询的域名集合，此参数已经废弃。
        # @type Domains: Array
        # @param Protocol: 查询的协议类型，取值有：
        # <li>http: http协议；</li>
        # <li>https: https协议；</li>
        # <li>http2: http2协议；</li>
        # <li>all:  所有协议。</li>不填默认为all，此参数暂未生效。
        # @type Protocol: String
        # @param Interval: 查询时间粒度，取值有：
        # <li>min：1分钟；</li>
        # <li>5min：5分钟；</li>
        # <li>hour：1小时；</li>
        # <li>day：1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：1小时范围内以min粒度查询，2天范围内以5min粒度查询，7天范围内以hour粒度查询，超过7天以day粒度查询。
        # @type Interval: String
        # @param Filters: 过滤条件，详细的过滤条件Key值如下：
        # <li>socket<br>   按照【<strong>HTTP协议类型</strong>】进行过滤。<br>   对应的Value可选项如下：<br>   HTTP：HTTP 协议；<br>   HTTPS：HTTPS协议；<br>   QUIC：QUIC协议。</li>
        # <li>domain<br>   按照【<strong>域名</strong>】进行过滤。</li>
        # <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。</li>
        # <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。</li>
        # @type Filters: Array
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据；</li>
        # <li>global：全球数据。</li>不填默认取值为global。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :Domains, :Protocol, :Interval, :Filters, :Area

        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, domains=nil, protocol=nil, interval=nil, filters=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @Domains = domains
          @Protocol = protocol
          @Interval = interval
          @Filters = filters
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @Protocol = params['Protocol']
          @Interval = params['Interval']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @Filters << querycondition_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeOverviewL7Data返回参数结构体
      class DescribeOverviewL7DataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 七层监控类时序流量数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              timingdatarecord_tmp = TimingDataRecord.new
              timingdatarecord_tmp.deserialize(i)
              @Data << timingdatarecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePlans请求参数结构体
      class DescribePlansRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件，Filters.Values 的上限为 20。详细的过滤条件如下：<li>plan-type<br>  按照【<strong>套餐类型</strong>】进行过滤。<br>  可选的类型有：<br>  plan-trial：试用版套餐；<br>  plan-personal：个人版套餐；<br>  plan-basic：基础版套餐； <br>  plan-standard：标准版套餐； <br>  plan-enterprise：企业版套餐。 </li><li>plan-id<br>  按照【<strong>套餐 ID</strong>】进行过滤。套餐 ID 形如：edgeone-268z103ob0sx。</li><li>area<br>  按照【<strong>套餐加速地域</strong>】进行过滤。</li>  服务区域，可选的类型有：<br>  mainland: 中国大陆；<br>  overseas: 全球（不包括中国大陆)；<br>  global: 全球（包括中国大陆)。<br><li>status<br>  按照【<strong>套餐状态</strong>】进行过滤。<br>  可选的状态有：<br>  normal：正常状态；<br>  expiring-soon：即将过期；<br>  expired：已到期;<br>  isolated：已隔离。</li>
        # @type Filters: Array
        # @param Order: 排序字段，取值有：
        # <li> enable-time：生效时间；</li>
        # <li> expire-time：过期时间。</li>不填写使用默认值 enable-time。
        # @type Order: String
        # @param Direction: 排序方向，取值有：
        # <li>asc：从小到大排序；</li>
        # <li>desc：从大到小排序。</li>不填写使用默认值 desc。
        # @type Direction: String
        # @param Limit: 分页查询限制数目。默认值：20，最大值：200。
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer

        attr_accessor :Filters, :Order, :Direction, :Limit, :Offset

        def initialize(filters=nil, order=nil, direction=nil, limit=nil, offset=nil)
          @Filters = filters
          @Order = order
          @Direction = direction
          @Limit = limit
          @Offset = offset
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
          @Order = params['Order']
          @Direction = params['Direction']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribePlans返回参数结构体
      class DescribePlansResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的套餐个数。
        # @type TotalCount: Integer
        # @param Plans: 套餐信息列表。
        # @type Plans: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Plans, :RequestId

        def initialize(totalcount=nil, plans=nil, requestid=nil)
          @TotalCount = totalcount
          @Plans = plans
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Plans'].nil?
            @Plans = []
            params['Plans'].each do |i|
              plan_tmp = Plan.new
              plan_tmp.deserialize(i)
              @Plans << plan_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePrefetchTasks请求参数结构体
      class DescribePrefetchTasksRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。该参数必填。
        # @type ZoneId: String
        # @param StartTime: 查询起始时间，时间与 job-id 必填一个。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，时间与 job-id 必填一个。
        # @type EndTime: String
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认值：20，上限：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values 的上限为 20。详细的过滤条件如下：<li>job-id：按照任务 ID 进行过滤。job-id 形如：1379afjk91u32h，暂不支持多值，不支持模糊查询；</li><li>target：按照目标资源信息进行过滤。target 形如：http://www.qq.com/1.txt，暂不支持多值，不支持模糊查询；</li><li>domains：按照域名行过滤。domains 形如：www.qq.com，不支持模糊查询；</li><li>statuses：按照任务状态进行过滤，不支持模糊查询。可选项：<br>   processing：处理中<br>   success：成功<br>   failed：失败<br>   timeout：超时<br>   invalid：无效。即源站响应非 2xx 状态码，请检查源站服务。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :StartTime, :EndTime, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
        end
      end

      # DescribePrefetchTasks返回参数结构体
      class DescribePrefetchTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该查询条件总共条目数。
        # @type TotalCount: Integer
        # @param Tasks: 任务结果列表。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId

        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribePurgeTasks请求参数结构体
      class DescribePurgeTasksRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。该参数必填。
        # @type ZoneId: String
        # @param StartTime: 查询起始时间，时间与 job-id 必填一个。
        # @type StartTime: String
        # @param EndTime: 查询结束时间，时间与 job-id 必填一个。
        # @type EndTime: String
        # @param Offset: 分页查询偏移量，默认为 0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目，默认值：20，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>job-id：按照任务 ID 进行过滤。job-id 形如：1379afjk91u32h，暂不支持多值，不支持模糊查询；</li>
        # <li>target：按照目标资源信息进行过滤，target 形如：http://www.qq.com/1.txt 或者 tag1，暂不支持多值，支持模糊查询；</li>
        # <li>domains：按照域名进行过滤，形如：www.qq.com，不支持模糊查询；</li>
        # <li>statuses：按照任务状态进行过滤，不支持模糊查询。可选项：<br>   processing：处理中<br>   success：成功<br>   failed：失败<br>   timeout：超时</li>
        # <li>type：按照清除缓存类型进行过滤，暂不支持多值，不支持模糊查询。可选项：<br>   purge_url：URL<br>   purge_prefix：前缀<br>   purge_all：全部缓存内容<br>   purge_host：Hostname<br>   purge_cache_tag：CacheTag</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :StartTime, :EndTime, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, starttime=nil, endtime=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @StartTime = starttime
          @EndTime = endtime
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
        end
      end

      # DescribePurgeTasks返回参数结构体
      class DescribePurgeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 该查询条件总共条目数。
        # @type TotalCount: Integer
        # @param Tasks: 任务结果列表。
        # @type Tasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Tasks, :RequestId

        def initialize(totalcount=nil, tasks=nil, requestid=nil)
          @TotalCount = totalcount
          @Tasks = tasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Tasks'].nil?
            @Tasks = []
            params['Tasks'].each do |i|
              task_tmp = Task.new
              task_tmp.deserialize(i)
              @Tasks << task_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealtimeLogDeliveryTasks请求参数结构体
      class DescribeRealtimeLogDeliveryTasksRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：1000。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values 的上限为 20。该参数不填写时，返回当前 zone-id 下所有实时日志投递任务信息。详细的过滤条件如下：
        # <li>task-id：按照实时日志投递任务 ID进行过滤。不支持模糊查询。</li>
        # <li>task-name：按照实时日志投递任务名称进行过滤。支持模糊查询，使用模糊查询时，仅支持填写一个实时日志投递任务名称。</li>
        # <li>entity-list：按照实时日志投递任务对应的实体进行过滤。不支持模糊查询。示例值：domain.example.com 或者 sid-2s69eb5wcms7。</li>
        # <li>task-type：按照实时日志投递任务类型进行过滤。不支持模糊查询。可选项如下：<br>   cls: 推送到腾讯云 CLS；<br>   custom_endpoint：推送到自定义 HTTP(S) 地址；<br>   s3：推送到 AWS S3 兼容存储桶地址。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :Offset, :Limit, :Filters

        def initialize(zoneid=nil, offset=nil, limit=nil, filters=nil)
          @ZoneId = zoneid
          @Offset = offset
          @Limit = limit
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
        end
      end

      # DescribeRealtimeLogDeliveryTasks返回参数结构体
      class DescribeRealtimeLogDeliveryTasksResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合查询条件的实时日志投递任务个数。
        # @type TotalCount: Integer
        # @param RealtimeLogDeliveryTasks: 符合查询条件的所有实时日志投递任务列表。
        # @type RealtimeLogDeliveryTasks: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RealtimeLogDeliveryTasks, :RequestId

        def initialize(totalcount=nil, realtimelogdeliverytasks=nil, requestid=nil)
          @TotalCount = totalcount
          @RealtimeLogDeliveryTasks = realtimelogdeliverytasks
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['RealtimeLogDeliveryTasks'].nil?
            @RealtimeLogDeliveryTasks = []
            params['RealtimeLogDeliveryTasks'].each do |i|
              realtimelogdeliverytask_tmp = RealtimeLogDeliveryTask.new
              realtimelogdeliverytask_tmp.deserialize(i)
              @RealtimeLogDeliveryTasks << realtimelogdeliverytask_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRules请求参数结构体
      class DescribeRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Filters: 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        # <li>rule-id：按照规则 ID 进行过滤。</li>
        # @type Filters: Array

        attr_accessor :ZoneId, :Filters

        def initialize(zoneid=nil, filters=nil)
          @ZoneId = zoneid
          @Filters = filters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
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

      # DescribeRules返回参数结构体
      class DescribeRulesResponse < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleItems: 规则列表，按规则执行顺序从先往后排序。
        # @type RuleItems: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneId, :RuleItems, :RequestId

        def initialize(zoneid=nil, ruleitems=nil, requestid=nil)
          @ZoneId = zoneid
          @RuleItems = ruleitems
          @RequestId = requestid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['RuleItems'].nil?
            @RuleItems = []
            params['RuleItems'].each do |i|
              ruleitem_tmp = RuleItem.new
              ruleitem_tmp.deserialize(i)
              @RuleItems << ruleitem_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeRulesSetting请求参数结构体
      class DescribeRulesSettingRequest < TencentCloud::Common::AbstractModel


        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRulesSetting返回参数结构体
      class DescribeRulesSettingResponse < TencentCloud::Common::AbstractModel
        # @param Actions: 规则引擎可应用匹配请求的设置列表及其详细建议配置信息。
        # @type Actions: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Actions, :RequestId

        def initialize(actions=nil, requestid=nil)
          @Actions = actions
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              rulessettingaction_tmp = RulesSettingAction.new
              rulessettingaction_tmp.deserialize(i)
              @Actions << rulessettingaction_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityAPIResource请求参数结构体
      class DescribeSecurityAPIResourceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Limit: 分页查询限制数目。默认值：20，最大值：100。
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer

        attr_accessor :ZoneId, :Limit, :Offset

        def initialize(zoneid=nil, limit=nil, offset=nil)
          @ZoneId = zoneid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSecurityAPIResource返回参数结构体
      class DescribeSecurityAPIResourceResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: API 资源总数量。
        # @type TotalCount: Integer
        # @param APIResources: API 资源列表。
        # @type APIResources: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :APIResources, :RequestId

        def initialize(totalcount=nil, apiresources=nil, requestid=nil)
          @TotalCount = totalcount
          @APIResources = apiresources
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['APIResources'].nil?
            @APIResources = []
            params['APIResources'].each do |i|
              apiresource_tmp = APIResource.new
              apiresource_tmp.deserialize(i)
              @APIResources << apiresource_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityAPIService请求参数结构体
      class DescribeSecurityAPIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Limit: 分页查询限制数目。默认值：20，最大值：100。
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer

        attr_accessor :ZoneId, :Limit, :Offset

        def initialize(zoneid=nil, limit=nil, offset=nil)
          @ZoneId = zoneid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSecurityAPIService返回参数结构体
      class DescribeSecurityAPIServiceResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: API 服务总数量。
        # @type TotalCount: Integer
        # @param APIServices: API 服务列表。
        # @type APIServices: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :APIServices, :RequestId

        def initialize(totalcount=nil, apiservices=nil, requestid=nil)
          @TotalCount = totalcount
          @APIServices = apiservices
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['APIServices'].nil?
            @APIServices = []
            params['APIServices'].each do |i|
              apiservice_tmp = APIService.new
              apiservice_tmp.deserialize(i)
              @APIServices << apiservice_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityClientAttester请求参数结构体
      class DescribeSecurityClientAttesterRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Limit: 分页查询限制数目。默认值：20，最大值：100。
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer

        attr_accessor :ZoneId, :Limit, :Offset

        def initialize(zoneid=nil, limit=nil, offset=nil)
          @ZoneId = zoneid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSecurityClientAttester返回参数结构体
      class DescribeSecurityClientAttesterResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 认证选项总数量。
        # @type TotalCount: Integer
        # @param ClientAttesters: 认证选项列表。
        # @type ClientAttesters: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ClientAttesters, :RequestId

        def initialize(totalcount=nil, clientattesters=nil, requestid=nil)
          @TotalCount = totalcount
          @ClientAttesters = clientattesters
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['ClientAttesters'].nil?
            @ClientAttesters = []
            params['ClientAttesters'].each do |i|
              clientattester_tmp = ClientAttester.new
              clientattester_tmp.deserialize(i)
              @ClientAttesters << clientattester_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityIPGroupContent请求参数结构体
      class DescribeSecurityIPGroupContentRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GroupId: IP 组 ID。
        # @type GroupId: Integer
        # @param Limit: 分页查询限制数目。默认值：2000，最大值：100000。
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer

        attr_accessor :ZoneId, :GroupId, :Limit, :Offset

        def initialize(zoneid=nil, groupid=nil, limit=nil, offset=nil)
          @ZoneId = zoneid
          @GroupId = groupid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSecurityIPGroupContent返回参数结构体
      class DescribeSecurityIPGroupContentResponse < TencentCloud::Common::AbstractModel
        # @param IPTotalCount: IP 组中正在生效的 IP 或网段个数。
        # @type IPTotalCount: Integer
        # @param IPList: 满足查询条件的 IP 或网段列表。受 Limit 和 Offset 参数限制。
        # @type IPList: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IPTotalCount, :IPList, :RequestId

        def initialize(iptotalcount=nil, iplist=nil, requestid=nil)
          @IPTotalCount = iptotalcount
          @IPList = iplist
          @RequestId = requestid
        end

        def deserialize(params)
          @IPTotalCount = params['IPTotalCount']
          @IPList = params['IPList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityIPGroupInfo请求参数结构体
      class DescribeSecurityIPGroupInfoRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点的 ID ，用于指定查询的站点范围。
        # @type ZoneId: String
        # @param Limit: 单次返回的最大条目数。默认值为 20 ，最大查询条目为 1000 。
        # @type Limit: Integer
        # @param Offset: 分页查询的起始条目偏移量。默认值为 0 。
        # @type Offset: Integer

        attr_accessor :ZoneId, :Limit, :Offset

        def initialize(zoneid=nil, limit=nil, offset=nil)
          @ZoneId = zoneid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSecurityIPGroupInfo返回参数结构体
      class DescribeSecurityIPGroupInfoResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的满足条件的 IP 组数量。
        # @type TotalCount: Integer
        # @param IPGroups: IP 组的详细配置信息。包含每个 IP 组的 ID 、名称和 IP /网段列表信息。
        # @type IPGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :IPGroups, :RequestId

        def initialize(totalcount=nil, ipgroups=nil, requestid=nil)
          @TotalCount = totalcount
          @IPGroups = ipgroups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['IPGroups'].nil?
            @IPGroups = []
            params['IPGroups'].each do |i|
              ipgroup_tmp = IPGroup.new
              ipgroup_tmp.deserialize(i)
              @IPGroups << ipgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityIPGroup请求参数结构体
      class DescribeSecurityIPGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID ，用于指定查询的站点范围。
        # @type ZoneId: String
        # @param GroupIds: 指定安全 IP 组 ID。 <li>提供该参数时，仅查询指定 ID 的安全 IP 组配置；</li> <li>不传递参数时，返回站点下所有安全 IP 组信息。</li>
        # @type GroupIds: Array

        attr_accessor :ZoneId, :GroupIds

        def initialize(zoneid=nil, groupids=nil)
          @ZoneId = zoneid
          @GroupIds = groupids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupIds = params['GroupIds']
        end
      end

      # DescribeSecurityIPGroup返回参数结构体
      class DescribeSecurityIPGroupResponse < TencentCloud::Common::AbstractModel
        # @param IPGroups: 安全 IP 组的详细配置信息。包含每个安全 IP 组的 ID 、名称、IP / 网段总数量、 IP / 网段列表信息和过期时间信息。
        # @type IPGroups: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :IPGroups, :RequestId

        def initialize(ipgroups=nil, requestid=nil)
          @IPGroups = ipgroups
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['IPGroups'].nil?
            @IPGroups = []
            params['IPGroups'].each do |i|
              ipgroup_tmp = IPGroup.new
              ipgroup_tmp.deserialize(i)
              @IPGroups << ipgroup_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityJSInjectionRule请求参数结构体
      class DescribeSecurityJSInjectionRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Limit: 分页查询限制数目。默认值：20，最大值：100。
        # @type Limit: Integer
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer

        attr_accessor :ZoneId, :Limit, :Offset

        def initialize(zoneid=nil, limit=nil, offset=nil)
          @ZoneId = zoneid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSecurityJSInjectionRule返回参数结构体
      class DescribeSecurityJSInjectionRuleResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: JavaScript 注入规则总数量。
        # @type TotalCount: Integer
        # @param JSInjectionRules: JavaScript 注入规则列表。
        # @type JSInjectionRules: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :JSInjectionRules, :RequestId

        def initialize(totalcount=nil, jsinjectionrules=nil, requestid=nil)
          @TotalCount = totalcount
          @JSInjectionRules = jsinjectionrules
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['JSInjectionRules'].nil?
            @JSInjectionRules = []
            params['JSInjectionRules'].each do |i|
              jsinjectionrule_tmp = JSInjectionRule.new
              jsinjectionrule_tmp.deserialize(i)
              @JSInjectionRules << jsinjectionrule_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicy请求参数结构体
      class DescribeSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Entity: 安全策略类型，可使用以下参数值进行查询： <li>ZoneDefaultPolicy：用于指定查询站点级策略；</li><li>Template：用于指定查询策略模板，需要同时指定 TemplateId 参数；</li><li>Host：用于指定查询域名级策略（注意：当使用域名来指定域名服务策略时，仅支持已经应用了域名级策略的域名服务或者策略模板）。</li>
        # @type Entity: String
        # @param TemplateId: 指定策略模板 ID。当 Entity 参数值为 Template 时，使用本参数指定策略模板的 ID 查询模板配置。
        # @type TemplateId: String
        # @param Host: 指定域名。当 Entity 参数值为 Host 时，使用本参数指定的域名级策略查询域名配置，例如：使用 www.example.com ，配置该域名的域名级策略。
        # @type Host: String

        attr_accessor :ZoneId, :Entity, :TemplateId, :Host

        def initialize(zoneid=nil, entity=nil, templateid=nil, host=nil)
          @ZoneId = zoneid
          @Entity = entity
          @TemplateId = templateid
          @Host = host
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Entity = params['Entity']
          @TemplateId = params['TemplateId']
          @Host = params['Host']
        end
      end

      # DescribeSecurityPolicy返回参数结构体
      class DescribeSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param SecurityPolicy: 安全策略配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityPolicy: :class:`Tencentcloud::Teo.v20220901.models.SecurityPolicy`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityPolicy, :RequestId

        def initialize(securitypolicy=nil, requestid=nil)
          @SecurityPolicy = securitypolicy
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityPolicy'].nil?
            @SecurityPolicy = SecurityPolicy.new
            @SecurityPolicy.deserialize(params['SecurityPolicy'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityTemplateBindings请求参数结构体
      class DescribeSecurityTemplateBindingsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 要查询的站点 ID。
        # @type ZoneId: String
        # @param TemplateId: 要查询的策略模板 ID。
        # @type TemplateId: Array

        attr_accessor :ZoneId, :TemplateId

        def initialize(zoneid=nil, templateid=nil)
          @ZoneId = zoneid
          @TemplateId = templateid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeSecurityTemplateBindings返回参数结构体
      class DescribeSecurityTemplateBindingsResponse < TencentCloud::Common::AbstractModel
        # @param SecurityTemplate: 指定策略模板的绑定关系列表。

        # 当某个站点中的域名包含在指定策略模板的绑定关系中时，绑定关系列表 `TemplateScope` 中会包含该站点的 `ZoneId`，和该站点下的和该策略模板有关的域名绑定关系。

        # 注意：当没有任何域名正在绑定或已经绑定到指定策略模板时，绑定关系为空。即：返回结构体中，`TemplateScope` 数组长度为 0。

        # 绑定关系中，同一域名可能在 `EntityStatus` 列表中重复出现，并标记为不同 `Status` 。例如，正在被绑定到其他策略模板的域名，会同时标记为 `online` 和 `pending` 。
        # @type SecurityTemplate: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityTemplate, :RequestId

        def initialize(securitytemplate=nil, requestid=nil)
          @SecurityTemplate = securitytemplate
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityTemplate'].nil?
            @SecurityTemplate = []
            params['SecurityTemplate'].each do |i|
              securitytemplatebinding_tmp = SecurityTemplateBinding.new
              securitytemplatebinding_tmp.deserialize(i)
              @SecurityTemplate << securitytemplatebinding_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTimingL4Data请求参数结构体
      class DescribeTimingL4DataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。查询时间范围（`EndTime` - `StartTime`）需小于等于 31 天。
        # @type EndTime: String
        # @param MetricNames: 查询指标，取值有：
        # <li>l4Flow_connections: 访问并发连接数；</li>
        # <li>l4Flow_flux: 访问总流量；</li>
        # <li>l4Flow_inFlux: 访问入流量；</li>
        # <li>l4Flow_outFlux: 访问出流量；</li>
        # <li>l4Flow_inBandwidth: 访问入向带宽峰值；</li>
        # <li>l4Flow_outBandwidth: 访问出向带宽峰值。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点 ID 集合，此参数必填。最多传入 100 个站点 ID。若需查询腾讯云主账号下所有站点数据，请用 `*` 代替，查询账号级别数据需具备本接口全部站点资源权限。
        # @type ZoneIds: Array
        # @param ProxyIds: 四层实例列表, 不填表示选择全部实例。
        # @type ProxyIds: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min: 1分钟 ；</li>
        # <li>5min: 5分钟 ；</li>
        # <li>hour: 1小时 ；</li>
        # <li>day: 1天 。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：1小时范围内以min粒度查询，2天范围内以5min粒度查询，7天范围内以hour粒度查询，超过7天以day粒度查询。
        # @type Interval: String
        # @param Filters: 过滤条件，详细的过滤条件Key值如下：
        # <li>ruleId：按照转发规则 ID 进行过滤。</li>
        # <li>proxyId：按照四层代理实例 ID 进行过滤。</li>
        # @type Filters: Array
        # @param Area: 数据归属地区。该参数已废弃。请在 Filters.country 中按客户端地域过滤数据。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :ProxyIds, :Interval, :Filters, :Area

        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, proxyids=nil, interval=nil, filters=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @ProxyIds = proxyids
          @Interval = interval
          @Filters = filters
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @ZoneIds = params['ZoneIds']
          @ProxyIds = params['ProxyIds']
          @Interval = params['Interval']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @Filters << querycondition_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeTimingL4Data返回参数结构体
      class DescribeTimingL4DataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 四层时序流量数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              timingdatarecord_tmp = TimingDataRecord.new
              timingdatarecord_tmp.deserialize(i)
              @Data << timingdatarecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTimingL7AnalysisData请求参数结构体
      class DescribeTimingL7AnalysisDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。查询时间范围（`EndTime` - `StartTime`）需小于等于 31 天。
        # @type EndTime: String
        # @param MetricNames: 指标列表，取值有:
        # <li>l7Flow_outFlux: L7 EdgeOne 响应流量，单位：Byte；</li>
        # <li>l7Flow_inFlux: L7 客户端请求流量，单位：Byte；</li>
        # <li>l7Flow_flux: L7 访问总流量（EdgeOne 响应+客户端请求），单位：Byte；</li>
        # <li>l7Flow_outBandwidth: L7 EdgeOne 响应带宽，单位：bps；</li>
        # <li>l7Flow_inBandwidth：L7 客户端请求带宽，单位：bps；</li>
        # <li>l7Flow_bandwidth：L7 访问总带宽（EdgeOne 响应+客户端请求），单位：bps；</li>
        # <li>l7Flow_request: L7 访问请求数，单位：次；</li>
        # <li> l7Flow_avgResponseTime: L7 访问平均响应耗时，单位：ms；</li>
        # <li> l7Flow_avgFirstByteResponseTime: L7 访问平均首字节响应耗时，单位：ms。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点 ID 集合，此参数必填。最多传入 100 个站点 ID。若需查询腾讯云主账号下所有站点数据，请用 `*` 代替，查询账号级别数据需具备本接口全部站点资源权限。
        # @type ZoneIds: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min: 1分钟；</li>
        # <li>5min: 5分钟；</li>
        # <li>hour: 1小时；</li>
        # <li>day: 1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：2 小时范围内以 min 粒度查询，2 天范围内以 5min 粒度查询，7 天范围内以 hour 粒度查询，超过 7 天以 day 粒度查询。
        # @type Interval: String
        # @param Filters: 过滤条件，详细的过滤条件 Key 值如下：
        # <li>country：按照国家/地区进行过滤，国家/地区遵循 <a href="https://baike.baidu.com/item/ISO%203166-1/5269555">ISO 3166-1 alpha-2</a> 规范。示例值：CN。</li>
        # <li>province：按照省份进行过滤，此参数只支持服务区域为中国大陆。省份代码参考<a href="https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8">境内省份映射表</a>，示例值：22。</li>
        # <li>isp：按照运营商进行过滤，此参数只支持服务区域为中国大陆。对应的 Value 可选项如下：<br>   2：中国电信；<br>   26：中国联通；<br>   1046：中国移动；<br>   3947：中国铁通；<br>   38：教育网；<br>   43：长城宽带；<br>   0：其他运营商。</li>
        # <li>domain：按照子域名进行过滤，示例值： www.example.com。</li>
        # <li>url：按照 URL Path 进行过滤，示例值：/content 或 /content/test.jpg。若填写 url 参数，则最多可查询近 30 天的数据。</li>
        # <li>referer：按照 Referer 请求头部进行过滤，示例值：http://www.example.com/。若填写 referer 参数，则最多可查询近 30 天的数据；</li>
        # <li>resourceType：按照资源类型进行过滤，资源类型一般是文件后缀，示例值：.jpg。若填写 resourceType 参数，则最多可查询近 30 天的数据；</li>
        # <li>protocol：按照 HTTP 协议版本进行过滤。对应的 Value 可选项如下：<br>   HTTP/1.0；<br>   HTTP/1.1；<br>   HTTP/2.0；<br>   HTTP/3；<br>   WebSocket。</li>
        # <li>socket：按照 HTTP协议类型进行过滤。对应的 Value 可选项如下：<br>   HTTP：HTTP 协议；<br>   HTTPS：HTTPS 协议；<br>   QUIC：QUIC 协议。</li>
        # <li>statusCode：按照边缘状态码进行过滤。若填写 statusCode 参数，则最多可查询近 30 天的数据。对应的 Value 可选项如下：<br>   1XX：1xx类型的状态码；<br>   2XX：2xx类型的状态码；<br>   3XX：3xx类型的状态码；<br>   4XX：4xx类型的状态码；<br>   5XX：5xx类型的状态码；<br>   在 [0,600) 范围内的整数。</li>
        # <li>browserType：按照浏览器类型进行过滤。若填写 browserType 参数，则最多可查询近 30 天的数据。对应 Value 的可选项如下：<br>   Firefox：Firefox浏览器；<br>   Chrome：Chrome浏览器；<br>   Safari：Safari浏览器；<br>   Other：其他浏览器类型；<br>   Empty：浏览器类型为空；<br>   Bot：搜索引擎爬虫；<br>   MicrosoftEdge：MicrosoftEdge浏览器；<br>   IE：IE浏览器；<br>   Opera：Opera浏览器；<br>   QQBrowser：QQ浏览器；<br>   LBBrowser：LB浏览器；<br>   MaxthonBrowser：Maxthon浏览器；<br>   SouGouBrowser：搜狗浏览器；<br>   BIDUBrowser：百度浏览器；<br>   TaoBrowser：淘浏览器；<br>   UBrowser：UC浏览器。</li>
        # <li>deviceType：按照设备类型进行过滤。若填写 deviceType 参数，则最多可查询近 30 天的数据。对应 Value 的可选项如下：<br>   TV：TV设备；<br>   Tablet：Tablet设备；<br>   Mobile：Mobile设备；<br>   Desktop：Desktop设备；<br>   Other：其他设备类型；<br>   Empty：设备类型为空。</li>
        # <li>operatingSystemType：按照操作系统类型进行过滤。若填写 operatingSystemType 参数，则最多可查询近 30 天的数据。对应 Value 的可选项如下：<br>   Linux：Linux操作系统；<br>   MacOS：MacOs操作系统；<br>   Android：Android操作系统；<br>   IOS：IOS操作系统；<br>   Windows：Windows操作系统；<br>   NetBSD：NetBSD；<br>   ChromiumOS：ChromiumOS；<br>   Bot：搜索引擎爬虫；<br>   Other：其他类型的操作系统；<br>   Empty：操作系统为空。</li>
        # <li>tlsVersion：按照 TLS 版本进行过滤。若填写 tlsVersion 参数，则最多可查询近 30 天的数据。对应 Value 的可选项如下：<br>   TLS1.0；<br>   TLS1.1；<br>   TLS1.2；<br>   TLS1.3。</li>
        # <li>ipVersion：按照 IP 版本进行过滤。对应 Value 的可选项如下：<br>   4：IPv4；<br>   6：IPv6。</li>
        # <li>cacheType：按照缓存状态进行过滤。对应 Value 的可选项如下：<br>   hit：请求命中 EdgeOne 节点缓存，资源由节点缓存提供。资源部分命中缓存也会记录为 hit。<br>   miss：请求未命中 EdgeOne 节点缓存，资源由源站提供。<br>   dynamic：请求的资源无法缓存/未配置被节点缓存，资源由源站提供。<br>   other：无法被识别的缓存状态。边缘函数响应的请求会记录为 other。</li>
        # <li>clientIp：按照客户端 IP 进行过滤。若填写 clientIp 参数，则最多可查询近 30 天的数据。</li>
        # <li>userAgent：按照 User-Agent 请求头部进行过滤。若填写 userAgent 参数，则最多可查询近 30 天的数据。</li>
        # @type Filters: Array
        # @param Area: 数据归属地区。该参数已废弃。请在 Filters.country 中按客户端地域过滤数据。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :Interval, :Filters, :Area

        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, interval=nil, filters=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @Interval = interval
          @Filters = filters
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @ZoneIds = params['ZoneIds']
          @Interval = params['Interval']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @Filters << querycondition_tmp
            end
          end
          @Area = params['Area']
        end
      end

      # DescribeTimingL7AnalysisData返回参数结构体
      class DescribeTimingL7AnalysisDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 时序流量数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              timingdatarecord_tmp = TimingDataRecord.new
              timingdatarecord_tmp.deserialize(i)
              @Data << timingdatarecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTimingL7CacheData请求参数结构体
      class DescribeTimingL7CacheDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricNames: 查询的指标，取值有：
        # <li>l7Cache_outFlux：响应流量；</li>
        # <li>l7Cache_request：响应请求数；</li>
        # <li> l7Cache_outBandwidth：响应带宽。</li>
        # @type MetricNames: Array
        # @param ZoneIds: 站点 ID 集合，此参数必填。
        # @type ZoneIds: Array
        # @param Filters: 过滤条件，详细的过滤条件如下：
        # <li>domain<br>   按照【<strong>子域名</strong>】进行过滤，子域名形如： test.example.com。<br>   类型：String<br>   必选：否</li>
        # <li>url<br>   按照【<strong>URL</strong>】进行过滤，此参数只支持30天的时间范围，URL形如：/content。<br>   类型：String<br>   必选：否</li>
        # <li>resourceType<br>   按照【<strong>资源类型</strong>】进行过滤，此参数只支持30天的时间范围，资源类型形如：jpg，png。<br>   类型：String<br>   必选：否</li>
        # <li>cacheType<br>   按照【<strong>缓存类型</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   hit：命中缓存；<br>   dynamic：资源不可缓存；<br>   miss：未命中缓存。</li>
        # <li>statusCode<br>   按照【<strong>状态码</strong>】进行过滤，此参数只支持30天的时间范围。<br>   类型：String<br>   必选：否<br>   可选项：<br>   1XX：1xx类型的状态码；<br>   100：100状态码；<br>   101：101状态码；<br>   102：102状态码；<br>   2XX：2xx类型的状态码；<br>   200：200状态码；<br>   201：201状态码；<br>   202：202状态码；<br>   203：203状态码；<br>   204：204状态码；<br>   100：100状态码；<br>   206：206状态码；<br>   207：207状态码；<br>   3XX：3xx类型的状态码；<br>   300：300状态码；<br>   301：301状态码；<br>   302：302状态码；<br>   303：303状态码；<br>   304：304状态码；<br>   305：305状态码；<br>   307：307状态码；<br>   4XX：4xx类型的状态码；<br>   400：400状态码；<br>   401：401状态码；<br>   402：402状态码；<br>   403：403状态码；<br>   404：404状态码；<br>   405：405状态码；<br>   406：406状态码；<br>   407：407状态码；<br>   408：408状态码；<br>   409：409状态码；<br>   410：410状态码；<br>   411：411状态码；<br>   412：412状态码；<br>   412：413状态码；<br>   414：414状态码；<br>   415：415状态码；<br>   416：416状态码；<br>   417：417状态码；<br>   422：422状态码；<br>   423：423状态码；<br>   424：424状态码；<br>   426：426状态码；<br>   451：451状态码；<br>   5XX：5xx类型的状态码；<br>   500：500状态码；<br>   501：501状态码；<br>   502：502状态码；<br>   503：503状态码；<br>   504：504状态码；<br>   505：505状态码；<br>   506：506状态码；<br>   507：507状态码；<br>   510：510状态码；<br>   514：514状态码；<br>   544：544状态码。</li>
        # <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        # <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        # @type Filters: Array
        # @param Interval: 查询时间粒度，可选的值有：
        # <li>min：1分钟的时间粒度；</li>
        # <li>5min：5分钟的时间粒度；</li>
        # <li>hour：1小时的时间粒度；</li>
        # <li>day：1天的时间粒度。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        # @type Interval: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据；</li>
        # <li>global：全球数据。</li>不填默认取值为global。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricNames, :ZoneIds, :Filters, :Interval, :Area

        def initialize(starttime=nil, endtime=nil, metricnames=nil, zoneids=nil, filters=nil, interval=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @ZoneIds = zoneids
          @Filters = filters
          @Interval = interval
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @ZoneIds = params['ZoneIds']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @Filters << querycondition_tmp
            end
          end
          @Interval = params['Interval']
          @Area = params['Area']
        end
      end

      # DescribeTimingL7CacheData返回参数结构体
      class DescribeTimingL7CacheDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 七层缓存分析时序类流量数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              timingdatarecord_tmp = TimingDataRecord.new
              timingdatarecord_tmp.deserialize(i)
              @Data << timingdatarecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopL7AnalysisData请求参数结构体
      class DescribeTopL7AnalysisDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。查询时间范围（`EndTime` - `StartTime`）需小于等于 31 天。
        # @type EndTime: String
        # @param MetricName: 查询的指标，取值有：
        # <li> l7Flow_outFlux_country：按国家/地区维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_outFlux_province：按中国大陆境内省份维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_outFlux_statusCode：按状态码维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_outFlux_domain：按域名维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_outFlux_url：按 URL Path 维度统计 L7 EdgeOne 响应流量指标; </li>
        # <li> l7Flow_outFlux_resourceType：按资源类型维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_outFlux_sip：按客户端 IP 维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_outFlux_referers：按 Referer 维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_outFlux_ua_device：按设备类型维度统计 L7 EdgeOne 响应流量指标; </li>
        # <li> l7Flow_outFlux_ua_browser：按浏览器类型维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_outFlux_ua_os：按操作系统类型维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_outFlux_ua：按 User-Agent 维度统计 L7 EdgeOne 响应流量指标；</li>
        # <li> l7Flow_request_country：按国家/地区维度统计 L7 访问请求数指标；</li>
        # <li> l7Flow_request_province：按中国大陆境内省份维度统计 L7 访问请求数指标；</li>
        # <li> l7Flow_request_statusCode：按状态码维度统计 L7 访问请求数指标；</li>
        # <li> l7Flow_request_domain：按域名维度统计 L7 访问请求数指标；</li>
        # <li> l7Flow_request_url：按 URL Path 维度统计 L7 访问请求数指标; </li>
        # <li> l7Flow_request_resourceType：按资源类型维度统计 L7 访问请求数指标；</li>
        # <li> l7Flow_request_sip：按客户端 IP 维度统计 L7 访问请求数指标；</li>
        # <li> l7Flow_request_referer：按 Referer 维度统计 L7 访问请求数指标；</li>
        # <li> l7Flow_request_ua_device：按设备类型维度统计 L7 访问请求数指标; </li>
        # <li> l7Flow_request_ua_browser：按浏览器类型维度统计 L7 访问请求数指标；</li>
        # <li> l7Flow_request_ua_os：按操作系统类型维度统计 L7 访问请求数指标；</li>
        # <li> l7Flow_request_ua：按 User-Agent 维度统计 L7 访问请求数指标。</li>

        # @type MetricName: String
        # @param ZoneIds: 站点 ID 集合，此参数必填。最多传入 100 个站点 ID。若需查询腾讯云主账号下所有站点数据，请用 `*` 代替，查询账号级别数据需具备本接口全部站点资源权限。
        # @type ZoneIds: Array
        # @param Limit: 查询前多少个 top 数据，最大值为1000。不填默认为10，表示查询 top10 的数据。
        # @type Limit: Integer
        # @param Filters: 过滤条件，详细的过滤条件 Key 值如下：
        # <li>country：按照国家/地区进行过滤，国家/地区遵循 <a href="https://baike.baidu.com/item/ISO%203166-1/5269555">ISO 3166-1 alpha-2</a> 规范。示例值：CN。</li>
        # <li>province：按照省份进行过滤，此参数只支持服务区域为中国大陆。省份代码参考<a href="https://cloud.tencent.com/document/product/228/6316#.E5.8C.BA.E5.9F.9F-.2F-.E8.BF.90.E8.90.A5.E5.95.86.E6.98.A0.E5.B0.84.E8.A1.A8">境内省份映射表</a>，示例值：22。</li>
        # <li>isp：按照运营商进行过滤，此参数只支持服务区域为中国大陆。对应的 Value 可选项如下：<br>   2：中国电信；<br>   26：中国联通；<br>   1046：中国移动；<br>   3947：中国铁通；<br>   38：教育网；<br>   43：长城宽带；<br>   0：其他运营商。</li>
        # <li>domain：按照子域名进行过滤，示例值： www.example.com。</li>
        # <li>url：按照 URL Path 进行过滤，示例值：/content 或 /content/test.jpg。若填写 url 参数，则最多可查询近 30 天的数据。</li>
        # <li>referer：按照 Referer 请求头部进行过滤，示例值：http://www.example.com/。若填写 referer 参数，则最多可查询近 30 天的数据；</li>
        # <li>resourceType：按照资源类型进行过滤，资源类型一般是文件后缀，示例值：.jpg。若填写 resourceType 参数，则最多可查询近 30 天的数据；</li>
        # <li>protocol：按照 HTTP 协议版本进行过滤。对应的 Value 可选项如下：<br>   HTTP/1.0；<br>   HTTP/1.1；<br>   HTTP/2.0；<br>   HTTP/3；<br>   WebSocket。</li>
        # <li>socket：按照 HTTP协议类型进行过滤。对应的 Value 可选项如下：<br>   HTTP：HTTP 协议；<br>   HTTPS：HTTPS 协议；<br>   QUIC：QUIC 协议。</li>
        # <li>statusCode：按照边缘状态码进行过滤。若填写 statusCode 参数，则最多可查询近 30 天的数据。对应的 Value 可选项如下：<br>   1XX：1xx类型的状态码；<br>   2XX：2xx类型的状态码；<br>   3XX：3xx类型的状态码；<br>   4XX：4xx类型的状态码；<br>   5XX：5xx类型的状态码；<br>   在 [0,600) 范围内的整数。</li>
        # <li>browserType：按照浏览器类型进行过滤。若填写 browserType 参数，则最多可查询近 30 天的数据。对应 Value 的可选项如下：<br>   Firefox：Firefox浏览器；<br>   Chrome：Chrome浏览器；<br>   Safari：Safari浏览器；<br>   Other：其他浏览器类型；<br>   Empty：浏览器类型为空；<br>   Bot：搜索引擎爬虫；<br>   MicrosoftEdge：MicrosoftEdge浏览器；<br>   IE：IE浏览器；<br>   Opera：Opera浏览器；<br>   QQBrowser：QQ浏览器；<br>   LBBrowser：LB浏览器；<br>   MaxthonBrowser：Maxthon浏览器；<br>   SouGouBrowser：搜狗浏览器；<br>   BIDUBrowser：百度浏览器；<br>   TaoBrowser：淘浏览器；<br>   UBrowser：UC浏览器。</li>
        # <li>deviceType：按照设备类型进行过滤。若填写 deviceType 参数，则最多可查询近 30 天的数据。对应 Value 的可选项如下：<br>   TV：TV设备；<br>   Tablet：Tablet设备；<br>   Mobile：Mobile设备；<br>   Desktop：Desktop设备；<br>   Other：其他设备类型；<br>   Empty：设备类型为空。</li>
        # <li>operatingSystemType：按照操作系统类型进行过滤。若填写 operatingSystemType 参数，则最多可查询近 30 天的数据。对应 Value 的可选项如下：<br>   Linux：Linux操作系统；<br>   MacOS：MacOs操作系统；<br>   Android：Android操作系统；<br>   IOS：IOS操作系统；<br>   Windows：Windows操作系统；<br>   NetBSD：NetBSD；<br>   ChromiumOS：ChromiumOS；<br>   Bot：搜索引擎爬虫；<br>   Other：其他类型的操作系统；<br>   Empty：操作系统为空。</li>
        # <li>tlsVersion：按照 TLS 版本进行过滤。若填写 tlsVersion 参数，则最多可查询近 30 天的数据。对应 Value 的可选项如下：<br>   TLS1.0；<br>   TLS1.1；<br>   TLS1.2；<br>   TLS1.3。</li>
        # <li>ipVersion：按照 IP 版本进行过滤。对应 Value 的可选项如下：<br>   4：IPv4；<br>   6：IPv6。</li>
        # <li>cacheType：按照缓存状态进行过滤。对应 Value 的可选项如下：<br>   hit：请求命中 EdgeOne 节点缓存，资源由节点缓存提供。资源部分命中缓存也会记录为 hit。<br>   miss：请求未命中 EdgeOne 节点缓存，资源由源站提供。<br>   dynamic：请求的资源无法缓存/未配置被节点缓存，资源由源站提供。<br>   other：无法被识别的缓存状态。边缘函数响应的请求会记录为 other。</li>
        # <li>clientIp：按照客户端 IP 进行过滤。若填写 clientIp 参数，则最多可查询近 30 天的数据。</li>
        # <li>userAgent：按照 User-Agent 请求头部进行过滤。若填写 userAgent 参数，则最多可查询近 30 天的数据。</li>
        # @type Filters: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min: 1分钟；</li>
        # <li>5min: 5分钟；</li>
        # <li>hour: 1小时；</li>
        # <li>day: 1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：2 小时范围内以 min 粒度查询，2 天范围内以 5min 粒度查询，7 天范围内以 hour 粒度查询，超过 7 天以 day 粒度查询。
        # @type Interval: String
        # @param Area: 数据归属地区。该参数已废弃。请在 Filters.country 中按客户端地域过滤数据。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricName, :ZoneIds, :Limit, :Filters, :Interval, :Area

        def initialize(starttime=nil, endtime=nil, metricname=nil, zoneids=nil, limit=nil, filters=nil, interval=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @ZoneIds = zoneids
          @Limit = limit
          @Filters = filters
          @Interval = interval
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @ZoneIds = params['ZoneIds']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @Filters << querycondition_tmp
            end
          end
          @Interval = params['Interval']
          @Area = params['Area']
        end
      end

      # DescribeTopL7AnalysisData返回参数结构体
      class DescribeTopL7AnalysisDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 七层访问数据按照 MetricName 指定统计维度的前 topN 数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              topdatarecord_tmp = TopDataRecord.new
              topdatarecord_tmp.deserialize(i)
              @Data << topdatarecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTopL7CacheData请求参数结构体
      class DescribeTopL7CacheDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param MetricName: 查询的指标，取值有：
        # <li> l7Cache_outFlux_domain：host/域名；</li>
        # <li> l7Cache_outFlux_url：url地址；</li>
        # <li> l7Cache_outFlux_resourceType：资源类型；</li>
        # <li> l7Cache_outFlux_statusCode：状态码。</li>
        # @type MetricName: String
        # @param ZoneIds: 站点 ID 集合，此参数必填。
        # @type ZoneIds: Array
        # @param Limit: 查询前多少个数据，最大值为1000，不填默认为10， 表示查询前top 10的数据。
        # @type Limit: Integer
        # @param Filters: 过滤条件，详细的过滤条件如下：
        # <li>domain<br>   按照【<strong>子域名</strong>】进行过滤，子域名形如： test.example.com。<br>   类型：String<br>   必选：否</li>
        # <li>url<br>   按照【<strong>URL</strong>】进行过滤，此参数只支持30天的时间范围，URL形如：/content。<br>   类型：String<br>   必选：否</li>
        # <li>resourceType<br>   按照【<strong>资源类型</strong>】进行过滤，此参数只支持30天的时间范围，资源类型形如：jpg，png。<br>   类型：String<br>   必选：否</li>
        # <li>cacheType<br>   按照【<strong>缓存类型</strong>】进行过滤。<br>   类型：String<br>   必选：否<br>   可选项：<br>   hit：命中缓存；<br>   dynamic：资源不可缓存；<br>   miss：未命中缓存。</li>
        # <li>statusCode<br>   按照【<strong>状态码</strong>】进行过滤，此参数只支持30天的时间范围。<br>   类型：String<br>   必选：否<br>   可选项：<br>   1XX：1xx类型的状态码；<br>   100：100状态码；<br>   101：101状态码；<br>   102：102状态码；<br>   2XX：2xx类型的状态码；<br>   200：200状态码；<br>   201：201状态码；<br>   202：202状态码；<br>   203：203状态码；<br>   204：204状态码；<br>   100：100状态码；<br>   206：206状态码；<br>   207：207状态码；<br>   3XX：3xx类型的状态码；<br>   300：300状态码；<br>   301：301状态码；<br>   302：302状态码；<br>   303：303状态码；<br>   304：304状态码；<br>   305：305状态码；<br>   307：307状态码；<br>   4XX：4xx类型的状态码；<br>   400：400状态码；<br>   401：401状态码；<br>   402：402状态码；<br>   403：403状态码；<br>   404：404状态码；<br>   405：405状态码；<br>   406：406状态码；<br>   407：407状态码；<br>   408：408状态码；<br>   409：409状态码；<br>   410：410状态码；<br>   411：411状态码；<br>   412：412状态码；<br>   412：413状态码；<br>   414：414状态码；<br>   415：415状态码；<br>   416：416状态码；<br>   417：417状态码；<br>   422：422状态码；<br>   423：423状态码；<br>   424：424状态码；<br>   426：426状态码；<br>   451：451状态码；<br>   5XX：5xx类型的状态码；<br>   500：500状态码；<br>   501：501状态码；<br>   502：502状态码；<br>   503：503状态码；<br>   504：504状态码；<br>   505：505状态码；<br>   506：506状态码；<br>   507：507状态码；<br>   510：510状态码；<br>   514：514状态码；<br>   544：544状态码。</li>
        # <li>tagKey<br>   按照【<strong>标签Key</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        # <li>tagValue<br>   按照【<strong>标签Value</strong>】进行过滤。<br>   类型：String<br>   必选：否</li>
        # @type Filters: Array
        # @param Interval: 查询时间粒度，取值有：
        # <li>min: 1分钟；</li>
        # <li>5min: 5分钟；</li>
        # <li>hour: 1小时；</li>
        # <li>day: 1天。</li>不填将根据开始时间跟结束时间的间距自动推算粒度，具体为：一小时范围内以min粒度查询，两天范围内以5min粒度查询，七天范围内以hour粒度查询，超过七天以day粒度查询。
        # @type Interval: String
        # @param Area: 数据归属地区，取值有：
        # <li>overseas：全球（除中国大陆地区）数据；</li>
        # <li>mainland：中国大陆地区数据；</li>
        # <li>global：全球数据。</li>不填默认取值为global。
        # @type Area: String

        attr_accessor :StartTime, :EndTime, :MetricName, :ZoneIds, :Limit, :Filters, :Interval, :Area

        def initialize(starttime=nil, endtime=nil, metricname=nil, zoneids=nil, limit=nil, filters=nil, interval=nil, area=nil)
          @StartTime = starttime
          @EndTime = endtime
          @MetricName = metricname
          @ZoneIds = zoneids
          @Limit = limit
          @Filters = filters
          @Interval = interval
          @Area = area
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricName = params['MetricName']
          @ZoneIds = params['ZoneIds']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              querycondition_tmp = QueryCondition.new
              querycondition_tmp.deserialize(i)
              @Filters << querycondition_tmp
            end
          end
          @Interval = params['Interval']
          @Area = params['Area']
        end
      end

      # DescribeTopL7CacheData返回参数结构体
      class DescribeTopL7CacheDataResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 七层缓存TopN流量数据列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              topdatarecord_tmp = TopDataRecord.new
              topdatarecord_tmp.deserialize(i)
              @Data << topdatarecord_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebSecurityTemplate请求参数结构体
      class DescribeWebSecurityTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。需要传入目标策略模板在访问权限上归属的站点，可使用 DescribeWebSecurityTemplates 接口查询策略模板归属的站点。
        # @type ZoneId: String
        # @param TemplateId: 策略模板 ID。
        # @type TemplateId: String

        attr_accessor :ZoneId, :TemplateId

        def initialize(zoneid=nil, templateid=nil)
          @ZoneId = zoneid
          @TemplateId = templateid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TemplateId = params['TemplateId']
        end
      end

      # DescribeWebSecurityTemplate返回参数结构体
      class DescribeWebSecurityTemplateResponse < TencentCloud::Common::AbstractModel
        # @param SecurityPolicy: 安全策略模板配置内容，Bot 配置暂不支持，正在开发中。
        # @type SecurityPolicy: :class:`Tencentcloud::Teo.v20220901.models.SecurityPolicy`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecurityPolicy, :RequestId

        def initialize(securitypolicy=nil, requestid=nil)
          @SecurityPolicy = securitypolicy
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['SecurityPolicy'].nil?
            @SecurityPolicy = SecurityPolicy.new
            @SecurityPolicy.deserialize(params['SecurityPolicy'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWebSecurityTemplates请求参数结构体
      class DescribeWebSecurityTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneIds: 站点 ID 列表。单次查询最多传入 100 个站点。
        # @type ZoneIds: Array

        attr_accessor :ZoneIds

        def initialize(zoneids=nil)
          @ZoneIds = zoneids
        end

        def deserialize(params)
          @ZoneIds = params['ZoneIds']
        end
      end

      # DescribeWebSecurityTemplates返回参数结构体
      class DescribeWebSecurityTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 策略模板总数。
        # @type TotalCount: Integer
        # @param SecurityPolicyTemplates: 策略模板列表。
        # @type SecurityPolicyTemplates: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SecurityPolicyTemplates, :RequestId

        def initialize(totalcount=nil, securitypolicytemplates=nil, requestid=nil)
          @TotalCount = totalcount
          @SecurityPolicyTemplates = securitypolicytemplates
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['SecurityPolicyTemplates'].nil?
            @SecurityPolicyTemplates = []
            params['SecurityPolicyTemplates'].each do |i|
              securitypolicytemplateinfo_tmp = SecurityPolicyTemplateInfo.new
              securitypolicytemplateinfo_tmp.deserialize(i)
              @SecurityPolicyTemplates << securitypolicytemplateinfo_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneConfigImportResult请求参数结构体
      class DescribeZoneConfigImportResultRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param TaskId: 表示需要查询结果的导入配置任务 Id，导入任务 Id 仅支持查询最近 7 天的导入任务。
        # @type TaskId: String

        attr_accessor :ZoneId, :TaskId

        def initialize(zoneid=nil, taskid=nil)
          @ZoneId = zoneid
          @TaskId = taskid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TaskId = params['TaskId']
        end
      end

      # DescribeZoneConfigImportResult返回参数结构体
      class DescribeZoneConfigImportResultResponse < TencentCloud::Common::AbstractModel
        # @param Status: 本次导入任务的导入状态。取值有：  <li>success：表示配置项导入成功；</li> <li>failure：表示配置项导入失败；</li> <li>doing：表示配置项正在导入中。</li>
        # @type Status: String
        # @param Message: 本次导入任务的状态的提示信息。当配置项导入失败时，可通过本字段查看失败原因。
        # @type Message: String
        # @param Content: 本次导入任务的配置内容。
        # @type Content: String
        # @param ImportTime: 本次导入任务的开始时间。
        # @type ImportTime: String
        # @param FinishTime: 本次导入任务的结束时间。
        # @type FinishTime: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Message, :Content, :ImportTime, :FinishTime, :RequestId

        def initialize(status=nil, message=nil, content=nil, importtime=nil, finishtime=nil, requestid=nil)
          @Status = status
          @Message = message
          @Content = content
          @ImportTime = importtime
          @FinishTime = finishtime
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Message = params['Message']
          @Content = params['Content']
          @ImportTime = params['ImportTime']
          @FinishTime = params['FinishTime']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZoneSetting请求参数结构体
      class DescribeZoneSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DescribeZoneSetting返回参数结构体
      class DescribeZoneSettingResponse < TencentCloud::Common::AbstractModel
        # @param ZoneSetting: 站点配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneSetting: :class:`Tencentcloud::Teo.v20220901.models.ZoneSetting`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ZoneSetting, :RequestId

        def initialize(zonesetting=nil, requestid=nil)
          @ZoneSetting = zonesetting
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ZoneSetting'].nil?
            @ZoneSetting = ZoneSetting.new
            @ZoneSetting.deserialize(params['ZoneSetting'])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 分页查询偏移量。默认值：0。
        # @type Offset: Integer
        # @param Limit: 分页查询限制数目。默认值：20，最大值：100。
        # @type Limit: Integer
        # @param Filters: 过滤条件，Filters.Values 的上限为 20。该参数不填写时，返回当前 appid 下有权限的所有站点信息。详细的过滤条件如下：
        # <li>zone-name：按照站点名称进行过滤；</li><li>zone-id：按照站点 ID进行过滤。站点 ID 形如：zone-2noz78a8ev6k；</li><li>status：按照站点状态进行过滤；</li><li>tag-key：按照标签键进行过滤；</li><li>tag-value： 按照标签值进行过滤。</li><li>alias-zone-name： 按照同名站点标识进行过滤。</li>模糊查询时支持过滤字段名为 zone-name 或 alias-zone-name。
        # @type Filters: Array
        # @param Order: 可根据该字段对返回结果进行排序，取值有：
        # <li> type：接入类型；</li>
        # <li> area：加速区域；</li>
        # <li> create-time：创建时间；</li>
        # <li> zone-name：站点名称；</li>
        # <li> use-time：最近使用时间；</li>
        # <li> active-status：生效状态。</li>不填写时对返回结果默认按照 create-time 排序。
        # @type Order: String
        # @param Direction: 排序方向，如果是字段值为数字，则根据数字大小排序；如果字段值为文本，则根据 ascill 码的大小排序。取值有：
        # <li> asc：从小到大排序；</li>
        # <li> desc：从大到小排序。</li>不填写使用默认值 desc。
        # @type Direction: String

        attr_accessor :Offset, :Limit, :Filters, :Order, :Direction

        def initialize(offset=nil, limit=nil, filters=nil, order=nil, direction=nil)
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @Order = order
          @Direction = direction
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              advancedfilter_tmp = AdvancedFilter.new
              advancedfilter_tmp.deserialize(i)
              @Filters << advancedfilter_tmp
            end
          end
          @Order = params['Order']
          @Direction = params['Direction']
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的站点个数。
        # @type TotalCount: Integer
        # @param Zones: 站点详细信息。
        # @type Zones: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Zones, :RequestId

        def initialize(totalcount=nil, zones=nil, requestid=nil)
          @TotalCount = totalcount
          @Zones = zones
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Zones'].nil?
            @Zones = []
            params['Zones'].each do |i|
              zone_tmp = Zone.new
              zone_tmp.deserialize(i)
              @Zones << zone_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DestroyPlan请求参数结构体
      class DestroyPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 套餐 ID，形如 edgeone-2wdo315m2y4c。
        # @type PlanId: String

        attr_accessor :PlanId

        def initialize(planid=nil)
          @PlanId = planid
        end

        def deserialize(params)
          @PlanId = params['PlanId']
        end
      end

      # DestroyPlan返回参数结构体
      class DestroyPlanResponse < TencentCloud::Common::AbstractModel
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

      # 域名配置信息
      class DetailHost < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param Status: 加速服务状态，取值为：
        # <li> process：部署中；</li>
        # <li> online：已启动；</li>
        # <li> offline：已关闭。</li>
        # @type Status: String
        # @param Host: 域名。
        # @type Host: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param Cname: 分配的Cname域名
        # @type Cname: String
        # @param Id: 资源ID。
        # @type Id: String
        # @param InstanceId: 实例ID。
        # @type InstanceId: String
        # @param Lock: 锁状态。
        # @type Lock: Integer
        # @param Mode: 域名状态类型。
        # @type Mode: Integer
        # @param Area: 域名加速地域，取值有：
        # <li> global：全球；</li>
        # <li> mainland：中国大陆；</li>
        # <li> overseas：境外区域。</li>
        # @type Area: String
        # @param AccelerateType: 加速类型配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccelerateType: :class:`Tencentcloud::Teo.v20220901.models.AccelerateType`
        # @param Https: Https配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: :class:`Tencentcloud::Teo.v20220901.models.Https`
        # @param CacheConfig: 缓存配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheConfig: :class:`Tencentcloud::Teo.v20220901.models.CacheConfig`
        # @param Origin: 源站配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: :class:`Tencentcloud::Teo.v20220901.models.Origin`
        # @param SecurityType: 安全类型。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SecurityType: :class:`Tencentcloud::Teo.v20220901.models.SecurityType`
        # @param CacheKey: 缓存键配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220901.models.CacheKey`
        # @param Compression: 智能压缩配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: :class:`Tencentcloud::Teo.v20220901.models.Compression`
        # @param Waf: Waf防护配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Waf: :class:`Tencentcloud::Teo.v20220901.models.Waf`
        # @param CC: CC防护配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CC: :class:`Tencentcloud::Teo.v20220901.models.CC`
        # @param DDoS: DDoS防护配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DDoS: :class:`Tencentcloud::Teo.v20220901.models.DDoS`
        # @param SmartRouting: 智能路由配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220901.models.SmartRouting`
        # @param Ipv6: Ipv6访问配置项。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220901.models.Ipv6`
        # @param ClientIpCountry: 回源时是否携带客户端IP所属地域信息的配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIpCountry: :class:`Tencentcloud::Teo.v20220901.models.ClientIpCountry`

        attr_accessor :ZoneId, :Status, :Host, :ZoneName, :Cname, :Id, :InstanceId, :Lock, :Mode, :Area, :AccelerateType, :Https, :CacheConfig, :Origin, :SecurityType, :CacheKey, :Compression, :Waf, :CC, :DDoS, :SmartRouting, :Ipv6, :ClientIpCountry

        def initialize(zoneid=nil, status=nil, host=nil, zonename=nil, cname=nil, id=nil, instanceid=nil, lock=nil, mode=nil, area=nil, acceleratetype=nil, https=nil, cacheconfig=nil, origin=nil, securitytype=nil, cachekey=nil, compression=nil, waf=nil, cc=nil, ddos=nil, smartrouting=nil, ipv6=nil, clientipcountry=nil)
          @ZoneId = zoneid
          @Status = status
          @Host = host
          @ZoneName = zonename
          @Cname = cname
          @Id = id
          @InstanceId = instanceid
          @Lock = lock
          @Mode = mode
          @Area = area
          @AccelerateType = acceleratetype
          @Https = https
          @CacheConfig = cacheconfig
          @Origin = origin
          @SecurityType = securitytype
          @CacheKey = cachekey
          @Compression = compression
          @Waf = waf
          @CC = cc
          @DDoS = ddos
          @SmartRouting = smartrouting
          @Ipv6 = ipv6
          @ClientIpCountry = clientipcountry
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Status = params['Status']
          @Host = params['Host']
          @ZoneName = params['ZoneName']
          @Cname = params['Cname']
          @Id = params['Id']
          @InstanceId = params['InstanceId']
          @Lock = params['Lock']
          @Mode = params['Mode']
          @Area = params['Area']
          unless params['AccelerateType'].nil?
            @AccelerateType = AccelerateType.new
            @AccelerateType.deserialize(params['AccelerateType'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['CacheConfig'].nil?
            @CacheConfig = CacheConfig.new
            @CacheConfig.deserialize(params['CacheConfig'])
          end
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          unless params['SecurityType'].nil?
            @SecurityType = SecurityType.new
            @SecurityType.deserialize(params['SecurityType'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['Waf'].nil?
            @Waf = Waf.new
            @Waf.deserialize(params['Waf'])
          end
          unless params['CC'].nil?
            @CC = CC.new
            @CC.deserialize(params['CC'])
          end
          unless params['DDoS'].nil?
            @DDoS = DDoS.new
            @DDoS.deserialize(params['DDoS'])
          end
          unless params['SmartRouting'].nil?
            @SmartRouting = SmartRouting.new
            @SmartRouting.deserialize(params['SmartRouting'])
          end
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          unless params['ClientIpCountry'].nil?
            @ClientIpCountry = ClientIpCountry.new
            @ClientIpCountry.deserialize(params['ClientIpCountry'])
          end
        end
      end

      # 检测长度限制配置条件。
      class DetectLengthLimitCondition < TencentCloud::Common::AbstractModel
        # @param Name: 匹配条件的参数名称，取值有：
        # <li>body_depth：请求正文包部分的检测深度。</li>
        # @type Name: String
        # @param Values: 匹配条件的参数值，取值与 Name 成对使用。
        # 当 Name 值为 body_depth 时， Values 只支持传入单个值，取值有：
        # <li>10KB；</li>
        # <li>64KB；</li>
        # <li>128KB。</li>
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 检测长度限制
      class DetectLengthLimitConfig < TencentCloud::Common::AbstractModel
        # @param DetectLengthLimitRules: 检测长度限制的规则列表。
        # @type DetectLengthLimitRules: Array

        attr_accessor :DetectLengthLimitRules

        def initialize(detectlengthlimitrules=nil)
          @DetectLengthLimitRules = detectlengthlimitrules
        end

        def deserialize(params)
          unless params['DetectLengthLimitRules'].nil?
            @DetectLengthLimitRules = []
            params['DetectLengthLimitRules'].each do |i|
              detectlengthlimitrule_tmp = DetectLengthLimitRule.new
              detectlengthlimitrule_tmp.deserialize(i)
              @DetectLengthLimitRules << detectlengthlimitrule_tmp
            end
          end
        end
      end

      # 检测长度限制规则详情
      class DetectLengthLimitRule < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则Id。仅出参使用。
        # @type RuleId: Integer
        # @param RuleName: 规则名称。仅出参使用。
        # @type RuleName: String
        # @param Description: 规则描述，仅出参使用。
        # @type Description: String
        # @param Conditions: 规则配置条件。仅出参使用。
        # @type Conditions: Array
        # @param Action: 处置方式，取值有：
        # <li>skip：当请求正文数据超过 Conditions 出参中 body_depth 设置的检测深度时，跳过所有请求正文内容的检测；</li>
        # <li>scan：仅检测 Conditions 出参中 body_depth 设置的检测深度，对超出部分的请求正文内容直接截断处理，超出部分的请求正文不会经过安全检测。</li>仅出参使用。
        # @type Action: String

        attr_accessor :RuleId, :RuleName, :Description, :Conditions, :Action

        def initialize(ruleid=nil, rulename=nil, description=nil, conditions=nil, action=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @Description = description
          @Conditions = conditions
          @Action = action
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Description = params['Description']
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              detectlengthlimitcondition_tmp = DetectLengthLimitCondition.new
              detectlengthlimitcondition_tmp.deserialize(i)
              @Conditions << detectlengthlimitcondition_tmp
            end
          end
          @Action = params['Action']
        end
      end

      # 客户端设备配置
      class DeviceProfile < TencentCloud::Common::AbstractModel
        # @param ClientType: 客户端设备类型。取值有：<li>iOS；</li><li>Android；</li><li>WebView。</li>
        # @type ClientType: String
        # @param HighRiskMinScore: 判定请求为高风险的最低值，取值范围为 1～99。数值越大请求风险越高越接近 Bot 客户端发起的请求。默认值为 50，对应含义 51～100 为高风险。
        # @type HighRiskMinScore: Integer
        # @param HighRiskRequestAction: 高风险请求的处置方式。SecurityAction 的 Name 取值支持：<li>Deny：拦截；</li><li>Monitor：观察；</li><li>Redirect：重定向；</li><li>Challenge：挑战。</li>默认值为 Monitor。
        # @type HighRiskRequestAction: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`
        # @param MediumRiskMinScore: 判定请求为中风险的最低值，取值范围为 1～99。数值越大请求风险越高越接近 Bot 客户端发起的请求。默认值为 15，对应含义 16～50 为中风险。
        # @type MediumRiskMinScore: Integer
        # @param MediumRiskRequestAction: 中风险请求的处置方式。SecurityAction 的 Name 取值支持：<li>Deny：拦截；</li><li>Monitor：观察；</li><li>Redirect：重定向；</li><li>Challenge：挑战。</li>默认值为 Monitor。
        # @type MediumRiskRequestAction: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`

        attr_accessor :ClientType, :HighRiskMinScore, :HighRiskRequestAction, :MediumRiskMinScore, :MediumRiskRequestAction

        def initialize(clienttype=nil, highriskminscore=nil, highriskrequestaction=nil, mediumriskminscore=nil, mediumriskrequestaction=nil)
          @ClientType = clienttype
          @HighRiskMinScore = highriskminscore
          @HighRiskRequestAction = highriskrequestaction
          @MediumRiskMinScore = mediumriskminscore
          @MediumRiskRequestAction = mediumriskrequestaction
        end

        def deserialize(params)
          @ClientType = params['ClientType']
          @HighRiskMinScore = params['HighRiskMinScore']
          unless params['HighRiskRequestAction'].nil?
            @HighRiskRequestAction = SecurityAction.new
            @HighRiskRequestAction.deserialize(params['HighRiskRequestAction'])
          end
          @MediumRiskMinScore = params['MediumRiskMinScore']
          unless params['MediumRiskRequestAction'].nil?
            @MediumRiskRequestAction = SecurityAction.new
            @MediumRiskRequestAction.deserialize(params['MediumRiskRequestAction'])
          end
        end
      end

      # 最新IP白名单列表相比于当前IP白名单列表的区别
      class DiffIPWhitelist < TencentCloud::Common::AbstractModel
        # @param LatestIPWhitelist: 最新IP白名单列表。
        # @type LatestIPWhitelist: :class:`Tencentcloud::Teo.v20220901.models.IPWhitelist`
        # @param AddedIPWhitelist: 最新IP白名单列表相比于当前IP白名单列表，新增部分。
        # @type AddedIPWhitelist: :class:`Tencentcloud::Teo.v20220901.models.IPWhitelist`
        # @param RemovedIPWhitelist: 最新IP白名单列表相比于当前IP白名单列表，删减部分。
        # @type RemovedIPWhitelist: :class:`Tencentcloud::Teo.v20220901.models.IPWhitelist`
        # @param NoChangeIPWhitelist: 最新IP白名单列表相比于当前IP白名单列表，不变部分。
        # @type NoChangeIPWhitelist: :class:`Tencentcloud::Teo.v20220901.models.IPWhitelist`

        attr_accessor :LatestIPWhitelist, :AddedIPWhitelist, :RemovedIPWhitelist, :NoChangeIPWhitelist

        def initialize(latestipwhitelist=nil, addedipwhitelist=nil, removedipwhitelist=nil, nochangeipwhitelist=nil)
          @LatestIPWhitelist = latestipwhitelist
          @AddedIPWhitelist = addedipwhitelist
          @RemovedIPWhitelist = removedipwhitelist
          @NoChangeIPWhitelist = nochangeipwhitelist
        end

        def deserialize(params)
          unless params['LatestIPWhitelist'].nil?
            @LatestIPWhitelist = IPWhitelist.new
            @LatestIPWhitelist.deserialize(params['LatestIPWhitelist'])
          end
          unless params['AddedIPWhitelist'].nil?
            @AddedIPWhitelist = IPWhitelist.new
            @AddedIPWhitelist.deserialize(params['AddedIPWhitelist'])
          end
          unless params['RemovedIPWhitelist'].nil?
            @RemovedIPWhitelist = IPWhitelist.new
            @RemovedIPWhitelist.deserialize(params['RemovedIPWhitelist'])
          end
          unless params['NoChangeIPWhitelist'].nil?
            @NoChangeIPWhitelist = IPWhitelist.new
            @NoChangeIPWhitelist.deserialize(params['NoChangeIPWhitelist'])
          end
        end
      end

      # DisableOriginACL请求参数结构体
      class DisableOriginACLRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # DisableOriginACL返回参数结构体
      class DisableOriginACLResponse < TencentCloud::Common::AbstractModel
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

      # DNS 记录
      class DnsRecord < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。<br>注意：ZoneId 仅做出参使用，在 ModifyDnsRecords 不可作为入参使用，如有传此参数，会忽略。
        # @type ZoneId: String
        # @param RecordId: DNS 记录 ID。
        # @type RecordId: String
        # @param Name: DNS 记录名。
        # @type Name: String
        # @param Type: DNS 记录类型，取值有：
        # <li>A：将域名指向一个外网 IPv4 地址，如 8.8.8.8；</li>
        # <li>AAAA：将域名指向一个外网 IPv6 地址；</li>
        # <li>MX：用于邮箱服务器。存在多条 MX 记录时，优先级越低越优先；</li>
        # <li>CNAME：将域名指向另一个域名，再由该域名解析出最终 IP 地址；</li>
        # <li>TXT：对域名进行标识和说明，常用于域名验证和 SPF 记录（反垃圾邮件）；</li>
        # <li>NS：如果需要将子域名交给其他 DNS 服务商解析，则需要添加 NS 记录。根域名无法添加 NS 记录；</li>
        # <li>CAA：指定可为本站点颁发证书的 CA；</li>
        # <li>SRV：标识某台服务器使用了某个服务，常见于微软系统的目录管理。</li>
        # @type Type: String
        # @param Location: DNS 记录解析线路，不指定默认为 Default，表示默认解析线路，代表全部地域生效。<br>解析线路配置仅适用于当 Type（DNS 记录类型）为 A、AAAA、CNAME 时。<br>取值请参考：[解析线路及对应代码枚举](https://cloud.tencent.com/document/product/1552/112542)。
        # @type Location: String
        # @param Content: DNS 记录内容。根据 Type 值填入与之相对应的内容。
        # @type Content: String
        # @param TTL: 缓存时间，取值范围 60~86400，数值越小，修改记录各地生效时间越快，单位：秒。
        # @type TTL: Integer
        # @param Weight: DNS 记录权重，取值范围 -1~100，为 -1 时表示不分配权重，为 0 时表示不解析。权重配置仅适用于当 Type（DNS 记录类型）为 A、AAAA、CNAME 时。
        # @type Weight: Integer
        # @param Priority: MX 记录优先级，取值范围 0~50，数值越小越优先。
        # @type Priority: Integer
        # @param Status: DNS 记录解析状态，取值有：<li>enable：已生效；</li><li>disable：已停用。</li>注意：Status 仅做出参使用，在 ModifyDnsRecords 不可作为入参使用，如有传此参数，会忽略。
        # @type Status: String
        # @param CreatedOn: 创建时间。<br>注意：CreatedOn 仅做出参使用，在 ModifyDnsRecords 不可作为入参使用，如有传此参数，会忽略。
        # @type CreatedOn: String
        # @param ModifiedOn: 修改时间。<br>注意：ModifiedOn 仅做出参使用，在 ModifyDnsRecords 不可作为入参使用，如有传此参数，会忽略。
        # @type ModifiedOn: String

        attr_accessor :ZoneId, :RecordId, :Name, :Type, :Location, :Content, :TTL, :Weight, :Priority, :Status, :CreatedOn, :ModifiedOn

        def initialize(zoneid=nil, recordid=nil, name=nil, type=nil, location=nil, content=nil, ttl=nil, weight=nil, priority=nil, status=nil, createdon=nil, modifiedon=nil)
          @ZoneId = zoneid
          @RecordId = recordid
          @Name = name
          @Type = type
          @Location = location
          @Content = content
          @TTL = ttl
          @Weight = weight
          @Priority = priority
          @Status = status
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordId = params['RecordId']
          @Name = params['Name']
          @Type = params['Type']
          @Location = params['Location']
          @Content = params['Content']
          @TTL = params['TTL']
          @Weight = params['Weight']
          @Priority = params['Priority']
          @Status = params['Status']
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
        end
      end

      # CNAME 接入，使用 DNS 解析验证时所需的信息。
      class DnsVerification < TencentCloud::Common::AbstractModel
        # @param Subdomain: 主机记录。
        # @type Subdomain: String
        # @param RecordType: 记录类型。
        # @type RecordType: String
        # @param RecordValue: 记录值。
        # @type RecordValue: String

        attr_accessor :Subdomain, :RecordType, :RecordValue

        def initialize(subdomain=nil, recordtype=nil, recordvalue=nil)
          @Subdomain = subdomain
          @RecordType = recordtype
          @RecordValue = recordvalue
        end

        def deserialize(params)
          @Subdomain = params['Subdomain']
          @RecordType = params['RecordType']
          @RecordValue = params['RecordValue']
        end
      end

      # 域名的独立 DDoS 防护信息。
      class DomainDDoSProtection < TencentCloud::Common::AbstractModel
        # @param Domain: 域名。
        # @type Domain: String
        # @param Switch: 域名的独立 DDoS 开关，取值为：
        # <li> on：已开启；</li>
        # <li> off：已关闭。</li>
        # @type Switch: String

        attr_accessor :Domain, :Switch

        def initialize(domain=nil, switch=nil)
          @Domain = domain
          @Switch = switch
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Switch = params['Switch']
        end
      end

      # DownloadL4Logs请求参数结构体
      class DownloadL4LogsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param ZoneIds: 站点 ID 集合，此参数必填。
        # @type ZoneIds: Array
        # @param ProxyIds: 四层实例 ID 集合。
        # @type ProxyIds: Array
        # @param Limit: 分页查询的限制数目，默认值为 20，最大查询条目为 300。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为 0。
        # @type Offset: Integer

        attr_accessor :StartTime, :EndTime, :ZoneIds, :ProxyIds, :Limit, :Offset

        def initialize(starttime=nil, endtime=nil, zoneids=nil, proxyids=nil, limit=nil, offset=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ZoneIds = zoneids
          @ProxyIds = proxyids
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ZoneIds = params['ZoneIds']
          @ProxyIds = params['ProxyIds']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DownloadL4Logs返回参数结构体
      class DownloadL4LogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 四层离线日志数据列表。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              l4offlinelog_tmp = L4OfflineLog.new
              l4offlinelog_tmp.deserialize(i)
              @Data << l4offlinelog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # DownloadL7Logs请求参数结构体
      class DownloadL7LogsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间。
        # @type StartTime: String
        # @param EndTime: 结束时间。
        # @type EndTime: String
        # @param ZoneIds: 站点ID集合，此参数必填。
        # @type ZoneIds: Array
        # @param Domains: 子域名集合，不填默认选择全部子域名。
        # @type Domains: Array
        # @param Limit: 分页查询的限制数目，默认值为 20，最大查询条目为 300。
        # @type Limit: Integer
        # @param Offset: 分页的偏移量，默认值为 0。
        # @type Offset: Integer

        attr_accessor :StartTime, :EndTime, :ZoneIds, :Domains, :Limit, :Offset

        def initialize(starttime=nil, endtime=nil, zoneids=nil, domains=nil, limit=nil, offset=nil)
          @StartTime = starttime
          @EndTime = endtime
          @ZoneIds = zoneids
          @Domains = domains
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @ZoneIds = params['ZoneIds']
          @Domains = params['Domains']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DownloadL7Logs返回参数结构体
      class DownloadL7LogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总条数。
        # @type TotalCount: Integer
        # @param Data: 七层离线日志数据列表。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Data, :RequestId

        def initialize(totalcount=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          unless params['Data'].nil?
            @Data = []
            params['Data'].each do |i|
              l7offlinelog_tmp = L7OfflineLog.new
              l7offlinelog_tmp.deserialize(i)
              @Data << l7offlinelog_tmp
            end
          end
          @RequestId = params['RequestId']
        end
      end

      # 拦截页面的总体配置，用于配置各个模块的拦截后行为。
      class DropPageConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param WafDropPageDetail: Waf(托管规则)模块的拦截页面配置。如果为null，默认使用历史配置。
        # @type WafDropPageDetail: :class:`Tencentcloud::Teo.v20220901.models.DropPageDetail`
        # @param AclDropPageDetail: 自定义页面的拦截页面配置。如果为null，默认使用历史配置。
        # @type AclDropPageDetail: :class:`Tencentcloud::Teo.v20220901.models.DropPageDetail`

        attr_accessor :Switch, :WafDropPageDetail, :AclDropPageDetail

        def initialize(switch=nil, wafdroppagedetail=nil, acldroppagedetail=nil)
          @Switch = switch
          @WafDropPageDetail = wafdroppagedetail
          @AclDropPageDetail = acldroppagedetail
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['WafDropPageDetail'].nil?
            @WafDropPageDetail = DropPageDetail.new
            @WafDropPageDetail.deserialize(params['WafDropPageDetail'])
          end
          unless params['AclDropPageDetail'].nil?
            @AclDropPageDetail = DropPageDetail.new
            @AclDropPageDetail.deserialize(params['AclDropPageDetail'])
          end
        end
      end

      # 拦截页面的配置信息
      class DropPageDetail < TencentCloud::Common::AbstractModel
        # @param PageId: 拦截页面的唯一 Id。系统默认包含一个自带拦截页面，Id 值为0。
        # 该 Id 可通过创建拦截页面接口进行上传获取。如传入0，代表使用系统默认拦截页面。该参数已废弃。
        # @type PageId: Integer
        # @param StatusCode: 拦截页面的 HTTP 状态码。状态码取值：100～600，不支持 3xx 状态码。托管规则拦截页面默认：566，安全防护（除托管规则外）拦截页面默认：567.
        # @type StatusCode: Integer
        # @param Name: 页面文件名或 url。
        # @type Name: String
        # @param Type: 页面的类型，取值有：
        # <li>page：指定页面。</li>
        # @type Type: String
        # @param CustomResponseId: 自定义响应 Id。该 Id 可通过查询自定义错误页列表接口获取。默认值为default，使用系统默认页面。Type 类型是 page 时必填，且不能为空。
        # @type CustomResponseId: String

        attr_accessor :PageId, :StatusCode, :Name, :Type, :CustomResponseId

        def initialize(pageid=nil, statuscode=nil, name=nil, type=nil, customresponseid=nil)
          @PageId = pageid
          @StatusCode = statuscode
          @Name = name
          @Type = type
          @CustomResponseId = customresponseid
        end

        def deserialize(params)
          @PageId = params['PageId']
          @StatusCode = params['StatusCode']
          @Name = params['Name']
          @Type = params['Type']
          @CustomResponseId = params['CustomResponseId']
        end
      end

      # EnableOriginACL请求参数结构体
      class EnableOriginACLRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param L7EnableMode: 七层加速域名开启源站防护的模式。
        # <li>all：针对站点下的所有七层加速域名开启。</li>
        # <li>specific：针对站点下指定的七层加速域名开启。</li>当参数为空时，默认为 specific。
        # @type L7EnableMode: String
        # @param L7Hosts: 开启源站防护的七层加速域名列表，仅当参数 L7EnableMode 为 specific 时生效。L7EnableMode 为 all 时，请保留此参数为空。单次最大仅支持填写 200 个七层加速域名。
        # @type L7Hosts: Array
        # @param L4EnableMode: 四层代理实例开启源站防护的模式。
        # <li>all：针对站点下的所有四层代理实例开启。</li>
        # <li>specific：针对站点下指定的四层代理实例开启。</li>当参数为空时，默认为 specific。
        # @type L4EnableMode: String
        # @param L4ProxyIds: 开启源站防护的四层代理实例列表，仅当参数 L4EnableMode 为 specific 时生效。L4EnableMode 为 all 时，请保留此参数为空。单次最大仅支持填写 100 个四层代理实例。
        # @type L4ProxyIds: Array

        attr_accessor :ZoneId, :L7EnableMode, :L7Hosts, :L4EnableMode, :L4ProxyIds

        def initialize(zoneid=nil, l7enablemode=nil, l7hosts=nil, l4enablemode=nil, l4proxyids=nil)
          @ZoneId = zoneid
          @L7EnableMode = l7enablemode
          @L7Hosts = l7hosts
          @L4EnableMode = l4enablemode
          @L4ProxyIds = l4proxyids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @L7EnableMode = params['L7EnableMode']
          @L7Hosts = params['L7Hosts']
          @L4EnableMode = params['L4EnableMode']
          @L4ProxyIds = params['L4ProxyIds']
        end
      end

      # EnableOriginACL返回参数结构体
      class EnableOriginACLResponse < TencentCloud::Common::AbstractModel
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

      # 安全实例状态。
      class EntityStatus < TencentCloud::Common::AbstractModel
        # @param Entity: 实例名，现在只有子域名。
        # @type Entity: String
        # @param Status: 实例配置下发状态，取值有：
        # <li>online：配置已生效；</li><li>fail：配置失败；</li><li> process：配置下发中。</li>
        # @type Status: String
        # @param Message: 实例配置下发信息提示。
        # @type Message: String

        attr_accessor :Entity, :Status, :Message

        def initialize(entity=nil, status=nil, message=nil)
          @Entity = entity
          @Status = status
          @Message = message
        end

        def deserialize(params)
          @Entity = params['Entity']
          @Status = params['Status']
          @Message = params['Message']
        end
      end

      # 环境信息。
      class EnvInfo < TencentCloud::Common::AbstractModel
        # @param EnvId: 环境 ID。
        # @type EnvId: String
        # @param EnvType: 环境类型，取值有：
        # <li>production: 生产环境；</li><li>staging: 测试环境。</li>
        # @type EnvType: String
        # @param Status: 环境状态，取值有：
        # <li>creating：创建中；</li>
        # <li>running：稳定运行中，可进行版本变更；</li>
        # <li>version_deploying：版本部署中，不能进行新的变更。</li>
        # @type Status: String
        # @param Scope: 当前环境的配置生效范围：
        # <li>当 EnvType 取值为 production 时，该参数值为 ["ALL"]，代表全网生效；</li>
        # <li>当 EnvType 取值为 staging 时，会返回测试节点 IP，可用于绑定 host 测试。</li>
        # @type Scope: Array
        # @param CurrentConfigGroupVersionInfos: 当前环境中各配置组实际生效的版本，根据 Status 的取值有以下两种情况：
        # <li>当 Status 取值为 version_deploying 时，本字段返回的值为执行变更动作之前生效的版本，即新版本部署期间，实际生效的版本为执行变更动作之前的版本；</li>
        # <li>当 Status 取值为 running 时，本字段返回的值即为当前实际生效的版本。</li>
        # @type CurrentConfigGroupVersionInfos: Array
        # @param CreateTime: 创建时间。时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type UpdateTime: String

        attr_accessor :EnvId, :EnvType, :Status, :Scope, :CurrentConfigGroupVersionInfos, :CreateTime, :UpdateTime

        def initialize(envid=nil, envtype=nil, status=nil, scope=nil, currentconfiggroupversioninfos=nil, createtime=nil, updatetime=nil)
          @EnvId = envid
          @EnvType = envtype
          @Status = status
          @Scope = scope
          @CurrentConfigGroupVersionInfos = currentconfiggroupversioninfos
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @EnvId = params['EnvId']
          @EnvType = params['EnvType']
          @Status = params['Status']
          @Scope = params['Scope']
          unless params['CurrentConfigGroupVersionInfos'].nil?
            @CurrentConfigGroupVersionInfos = []
            params['CurrentConfigGroupVersionInfos'].each do |i|
              configgroupversioninfo_tmp = ConfigGroupVersionInfo.new
              configgroupversioninfo_tmp.deserialize(i)
              @CurrentConfigGroupVersionInfos << configgroupversioninfo_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 自定义错误页面。
      class ErrorPage < TencentCloud::Common::AbstractModel
        # @param StatusCode: 状态码。支持范围为 400、403、404、405、414、416、451、500、501、502、503、504。
        # @type StatusCode: Integer
        # @param RedirectURL: 重定向 URL，需要为完整跳转路径，如 https://www.test.com/error.html。
        # @type RedirectURL: String

        attr_accessor :StatusCode, :RedirectURL

        def initialize(statuscode=nil, redirecturl=nil)
          @StatusCode = statuscode
          @RedirectURL = redirecturl
        end

        def deserialize(params)
          @StatusCode = params['StatusCode']
          @RedirectURL = params['RedirectURL']
        end
      end

      # 自定义错误页面配置参数。
      class ErrorPageParameters < TencentCloud::Common::AbstractModel
        # @param ErrorPageParams: 自定义错误页面配置列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPageParams: Array

        attr_accessor :ErrorPageParams

        def initialize(errorpageparams=nil)
          @ErrorPageParams = errorpageparams
        end

        def deserialize(params)
          unless params['ErrorPageParams'].nil?
            @ErrorPageParams = []
            params['ErrorPageParams'].each do |i|
              errorpage_tmp = ErrorPage.new
              errorpage_tmp.deserialize(i)
              @ErrorPageParams << errorpage_tmp
            end
          end
        end
      end

      # 自定义错误页面被引用的来源
      class ErrorPageReference < TencentCloud::Common::AbstractModel
        # @param BusinessId: 引用的业务 ID，如自定义拦截规则 ID。
        # @type BusinessId: String

        attr_accessor :BusinessId

        def initialize(businessid=nil)
          @BusinessId = businessid
        end

        def deserialize(params)
          @BusinessId = params['BusinessId']
        end
      end

      # 例外规则，用于配置需要跳过特定场景的规则
      class ExceptConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param ExceptUserRules: 例外规则详情。如果为null，默认使用历史配置。
        # @type ExceptUserRules: Array

        attr_accessor :Switch, :ExceptUserRules

        def initialize(switch=nil, exceptuserrules=nil)
          @Switch = switch
          @ExceptUserRules = exceptuserrules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['ExceptUserRules'].nil?
            @ExceptUserRules = []
            params['ExceptUserRules'].each do |i|
              exceptuserrule_tmp = ExceptUserRule.new
              exceptuserrule_tmp.deserialize(i)
              @ExceptUserRules << exceptuserrule_tmp
            end
          end
        end
      end

      # 例外规则的配置，包含生效的条件，生效的范围。
      class ExceptUserRule < TencentCloud::Common::AbstractModel
        # @param RuleName: 规则名称，不可使用中文。
        # @type RuleName: String
        # @param Action: 规则的处置方式，当前仅支持skip：跳过全部托管规则。
        # @type Action: String
        # @param RuleStatus: 规则生效状态，取值有：
        # <li>on：生效；</li>
        # <li>off：失效。</li>
        # @type RuleStatus: String
        # @param RuleID: 规则ID。仅出参使用。默认由底层生成。
        # @type RuleID: Integer
        # @param UpdateTime: 更新时间，如果为null，默认由底层按当前时间生成。
        # @type UpdateTime: String
        # @param ExceptUserRuleConditions: 匹配条件。
        # @type ExceptUserRuleConditions: Array
        # @param ExceptUserRuleScope: 规则生效的范围。
        # @type ExceptUserRuleScope: :class:`Tencentcloud::Teo.v20220901.models.ExceptUserRuleScope`
        # @param RulePriority: 优先级，取值范围0-100。如果为null，默认由底层设置为0。
        # @type RulePriority: Integer

        attr_accessor :RuleName, :Action, :RuleStatus, :RuleID, :UpdateTime, :ExceptUserRuleConditions, :ExceptUserRuleScope, :RulePriority

        def initialize(rulename=nil, action=nil, rulestatus=nil, ruleid=nil, updatetime=nil, exceptuserruleconditions=nil, exceptuserrulescope=nil, rulepriority=nil)
          @RuleName = rulename
          @Action = action
          @RuleStatus = rulestatus
          @RuleID = ruleid
          @UpdateTime = updatetime
          @ExceptUserRuleConditions = exceptuserruleconditions
          @ExceptUserRuleScope = exceptuserrulescope
          @RulePriority = rulepriority
        end

        def deserialize(params)
          @RuleName = params['RuleName']
          @Action = params['Action']
          @RuleStatus = params['RuleStatus']
          @RuleID = params['RuleID']
          @UpdateTime = params['UpdateTime']
          unless params['ExceptUserRuleConditions'].nil?
            @ExceptUserRuleConditions = []
            params['ExceptUserRuleConditions'].each do |i|
              exceptuserrulecondition_tmp = ExceptUserRuleCondition.new
              exceptuserrulecondition_tmp.deserialize(i)
              @ExceptUserRuleConditions << exceptuserrulecondition_tmp
            end
          end
          unless params['ExceptUserRuleScope'].nil?
            @ExceptUserRuleScope = ExceptUserRuleScope.new
            @ExceptUserRuleScope.deserialize(params['ExceptUserRuleScope'])
          end
          @RulePriority = params['RulePriority']
        end
      end

      # 例外规则生效的具体条件。
      class ExceptUserRuleCondition < TencentCloud::Common::AbstractModel
        # @param MatchFrom: 匹配项，取值有：
        # <li>host：请求域名；</li>
        # <li>sip：客户端IP；</li>
        # <li>ua：User-Agent；</li>
        # <li>cookie：会话 Cookie；</li>
        # <li>cgi：CGI 脚本；</li>
        # <li>xff：XFF 扩展头部；</li>
        # <li>url：请求 URL；</li>
        # <li>accept：请求内容类型；</li>
        # <li>method：请求方式；</li>
        # <li>header：请求头部；</li>
        # <li>sip_proto：网络层协议。</li>
        # @type MatchFrom: String
        # @param MatchParam: 匹配项的参数。仅当 MatchFrom 为 header 时，可以使用本参数，值可填入 header 的 key 作为参数。
        # @type MatchParam: String
        # @param Operator: 匹配操作符，取值有：
        # <li>equal：字符串等于；</li>
        # <li>not_equal：数值不等于；</li>
        # <li>include：字符包含；</li>
        # <li>not_include：字符不包含；</li>
        # <li>match：ip匹配；</li>
        # <li>not_match：ip不匹配；</li>
        # <li>include_area：地域包含；</li>
        # <li>is_empty：存在字段但值为空；</li>
        # <li>not_exists：不存在关键字段；</li>
        # <li>regexp：正则匹配；</li>
        # <li>len_gt：数值大于；</li>
        # <li>len_lt：数值小于；</li>
        # <li>len_eq：数值等于；</li>
        # <li>match_prefix：前缀匹配；</li>
        # <li>match_suffix：后缀匹配；</li>
        # <li>wildcard：通配符。</li>
        # @type Operator: String
        # @param MatchContent: 匹配值。
        # @type MatchContent: String

        attr_accessor :MatchFrom, :MatchParam, :Operator, :MatchContent

        def initialize(matchfrom=nil, matchparam=nil, operator=nil, matchcontent=nil)
          @MatchFrom = matchfrom
          @MatchParam = matchparam
          @Operator = operator
          @MatchContent = matchcontent
        end

        def deserialize(params)
          @MatchFrom = params['MatchFrom']
          @MatchParam = params['MatchParam']
          @Operator = params['Operator']
          @MatchContent = params['MatchContent']
        end
      end

      # 例外规则的生效范围。
      class ExceptUserRuleScope < TencentCloud::Common::AbstractModel
        # @param Type: 例外规则类型。其中complete模式代表全量数据进行例外，partial模式代表可选择指定模块指定字段进行例外，该字段取值有：
        # <li>complete：完全跳过模式；</li>
        # <li>partial：部分跳过模式。</li>
        # @type Type: String
        # @param Modules: 生效的模块，该字段取值有：
        # <li>waf：托管规则；</li>
        # <li>rate：速率限制；</li>
        # <li>acl：自定义规则；</li>
        # <li>cc：cc攻击防护；</li>
        # <li>bot：Bot防护。</li>
        # @type Modules: Array
        # @param PartialModules: 跳过部分规则ID的例外规则详情。如果为null，默认使用历史配置。
        # @type PartialModules: Array
        # @param SkipConditions: 跳过具体字段不去扫描的例外规则详情。如果为null，默认使用历史配置。
        # @type SkipConditions: Array

        attr_accessor :Type, :Modules, :PartialModules, :SkipConditions

        def initialize(type=nil, modules=nil, partialmodules=nil, skipconditions=nil)
          @Type = type
          @Modules = modules
          @PartialModules = partialmodules
          @SkipConditions = skipconditions
        end

        def deserialize(params)
          @Type = params['Type']
          @Modules = params['Modules']
          unless params['PartialModules'].nil?
            @PartialModules = []
            params['PartialModules'].each do |i|
              partialmodule_tmp = PartialModule.new
              partialmodule_tmp.deserialize(i)
              @PartialModules << partialmodule_tmp
            end
          end
          unless params['SkipConditions'].nil?
            @SkipConditions = []
            params['SkipConditions'].each do |i|
              skipcondition_tmp = SkipCondition.new
              skipcondition_tmp.deserialize(i)
              @SkipConditions << skipcondition_tmp
            end
          end
        end
      end

      # Web安全的例外规则
      class ExceptionRule < TencentCloud::Common::AbstractModel
        # @param Id: 例外规则的 ID。<br>通过规则 ID 可支持不同的规则配置操作：<br> <li> <b>增加</b>新规则：ID 为空或不指定 ID 参数；</li><li> <b>修改</b>已有规则：指定需要更新/修改的规则 ID；</li><li> <b>删除</b>已有规则：ExceptionRules 参数中，Rules 列表中未包含的已有规则将被删除。</li>
        # @type Id: String
        # @param Name: 例外规则的名称。
        # @type Name: String
        # @param Condition: 例外规则的具体内容，需符合表达式语法，详细规范参见产品文档。
        # @type Condition: String
        # @param SkipScope: 例外规则执行选项，取值有：<li>WebSecurityModules: 指定例外规则的安全防护模块。</li><li>ManagedRules：指定托管规则。</li>
        # @type SkipScope: String
        # @param SkipOption: 跳过请求的具体类型，取值有：<li>SkipOnAllRequestFields: 跳过所有请求；</li><li>SkipOnSpecifiedRequestFields: 跳过指定请求字段。</li>仅当 SkipScope 为 ManagedRules 时有效。
        # @type SkipOption: String
        # @param WebSecurityModulesForException: 指定例外规则的安全防护模块，仅当 SkipScope 为 WebSecurityModules 时有效。取值有：<li>websec-mod-managed-rules：托管规则；</li><li>websec-mod-rate-limiting：速率限制；</li><li>websec-mod-custom-rules：自定义规则；</li><li>websec-mod-adaptive-control：自适应频控、智能客户端过滤、慢速攻击防护、流量盗刷防护；</li><li>websec-mod-bot：Bot管理。</li>
        # @type WebSecurityModulesForException: Array
        # @param ManagedRulesForException: 指定例外规则的具体托管规则，仅当 SkipScope 为 ManagedRules 时有效，且此时不能指定 ManagedRuleGroupsForException 。
        # @type ManagedRulesForException: Array
        # @param ManagedRuleGroupsForException: 指定例外规则的托管规则组，仅当 SkipScope 为 ManagedRules 时有效，且此时不能指定 ManagedRulesForException 。
        # @type ManagedRuleGroupsForException: Array
        # @param RequestFieldsForException: 指定例外规则跳过指定请求字段的具体配置，仅当 SkipScope 为 ManagedRules 并且 SkipOption 为 SkipOnSpecifiedRequestFields 时有效。
        # @type RequestFieldsForException: Array
        # @param Enabled: 例外规则是否开启。取值有：<li>on：开启</li><li>off：关闭</li>
        # @type Enabled: String

        attr_accessor :Id, :Name, :Condition, :SkipScope, :SkipOption, :WebSecurityModulesForException, :ManagedRulesForException, :ManagedRuleGroupsForException, :RequestFieldsForException, :Enabled

        def initialize(id=nil, name=nil, condition=nil, skipscope=nil, skipoption=nil, websecuritymodulesforexception=nil, managedrulesforexception=nil, managedrulegroupsforexception=nil, requestfieldsforexception=nil, enabled=nil)
          @Id = id
          @Name = name
          @Condition = condition
          @SkipScope = skipscope
          @SkipOption = skipoption
          @WebSecurityModulesForException = websecuritymodulesforexception
          @ManagedRulesForException = managedrulesforexception
          @ManagedRuleGroupsForException = managedrulegroupsforexception
          @RequestFieldsForException = requestfieldsforexception
          @Enabled = enabled
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Condition = params['Condition']
          @SkipScope = params['SkipScope']
          @SkipOption = params['SkipOption']
          @WebSecurityModulesForException = params['WebSecurityModulesForException']
          @ManagedRulesForException = params['ManagedRulesForException']
          @ManagedRuleGroupsForException = params['ManagedRuleGroupsForException']
          unless params['RequestFieldsForException'].nil?
            @RequestFieldsForException = []
            params['RequestFieldsForException'].each do |i|
              requestfieldsforexception_tmp = RequestFieldsForException.new
              requestfieldsforexception_tmp.deserialize(i)
              @RequestFieldsForException << requestfieldsforexception_tmp
            end
          end
          @Enabled = params['Enabled']
        end
      end

      # Web安全的例外规则
      class ExceptionRules < TencentCloud::Common::AbstractModel
        # @param Rules: 例外规则的定义列表。使用 ModifySecurityPolicy 修改 Web 防护配置时: <li>若未指定 Rules 参数，或 Rules 参数长度为零：清空所有例外规则配置。</li><li>若 SecurityPolicy 参数中，未指定 ExceptionRules 参数值：保持已有例外规则配置，不做修改。</li>
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              exceptionrule_tmp = ExceptionRule.new
              exceptionrule_tmp.deserialize(i)
              @Rules << exceptionrule_tmp
            end
          end
        end
      end

      # ExportZoneConfig请求参数结构体
      class ExportZoneConfigRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Types: 导出配置项的类型列表，不填表示导出所有类型的配置，当前支持的取值有：<li>L7AccelerationConfig：表示导出七层加速配置，对应控制台「站点加速-全局加速配置」和「站点加速-规则引擎」。</li>
        # 需注意：后续支持导出的类型会随着迭代增加，导出所有类型时需要注意导出文件大小，建议使用时指定需要导出的配置类型，以便控制请求响应包负载大小。
        # @type Types: Array

        attr_accessor :ZoneId, :Types

        def initialize(zoneid=nil, types=nil)
          @ZoneId = zoneid
          @Types = types
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Types = params['Types']
        end
      end

      # ExportZoneConfig返回参数结构体
      class ExportZoneConfigResponse < TencentCloud::Common::AbstractModel
        # @param Content: 导出的配置的具体内容。以 JSON 格式返回，按照 UTF-8 方式进行编码。配置内容可参考下方示例。
        # @type Content: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Content, :RequestId

        def initialize(content=nil, requestid=nil)
          @Content = content
          @RequestId = requestid
        end

        def deserialize(params)
          @Content = params['Content']
          @RequestId = params['RequestId']
        end
      end

      # 失败原因
      class FailReason < TencentCloud::Common::AbstractModel
        # @param Reason: 失败原因。
        # @type Reason: String
        # @param Targets: 处理失败的资源列表。
        # @type Targets: Array

        attr_accessor :Reason, :Targets

        def initialize(reason=nil, targets=nil)
          @Reason = reason
          @Targets = targets
        end

        def deserialize(params)
          @Reason = params['Reason']
          @Targets = params['Targets']
        end
      end

      # 站点归属权校验——文件校验信息。
      class FileAscriptionInfo < TencentCloud::Common::AbstractModel
        # @param IdentifyPath: 文件校验目录。
        # @type IdentifyPath: String
        # @param IdentifyContent: 文件校验内容。
        # @type IdentifyContent: String

        attr_accessor :IdentifyPath, :IdentifyContent

        def initialize(identifypath=nil, identifycontent=nil)
          @IdentifyPath = identifypath
          @IdentifyContent = identifycontent
        end

        def deserialize(params)
          @IdentifyPath = params['IdentifyPath']
          @IdentifyContent = params['IdentifyContent']
        end
      end

      # CNAME 接入，使用文件验证时所需的信息。
      class FileVerification < TencentCloud::Common::AbstractModel
        # @param Path: EdgeOne 后台服务器将通过 Scheme + Host + URL Path 的格式（例如 https://www.example.com/.well-known/teo-verification/z12h416twn.txt）获取文件验证信息。该字段为您需要创建的 URL Path 部分。
        # @type Path: String
        # @param Content: 验证文件的内容。该字段的内容需要您填写至 Path 字段返回的 txt 文件中。
        # @type Content: String

        attr_accessor :Path, :Content

        def initialize(path=nil, content=nil)
          @Path = path
          @Content = content
        end

        def deserialize(params)
          @Path = params['Path']
          @Content = params['Content']
        end
      end

      # 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等。
      # 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
      # 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 慢速攻击的首段包配置。
      class FirstPartConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param StatTime: 首段包的统计时长，单位是秒，即期望首段包的统计时长是多少，默认5秒。
        # @type StatTime: Integer

        attr_accessor :Switch, :StatTime

        def initialize(switch=nil, stattime=nil)
          @Switch = switch
          @StatTime = stattime
        end

        def deserialize(params)
          @Switch = params['Switch']
          @StatTime = params['StatTime']
        end
      end

      # 缓存遵循源站配置。
      class FollowOrigin < TencentCloud::Common::AbstractModel
        # @param Switch: 遵循源站配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param DefaultCache: 源站未返回 Cache-Control 头时，缓存/不缓存开关。当 Switch 为 on 时，此字段必填，当 Switch 为 off 时，无需填写此字段，若填写则不生效。取值有：
        # <li>on：缓存；</li>
        # <li>off：不缓存。</li>
        # @type DefaultCache: String
        # @param DefaultCacheStrategy: 源站未返回 Cache-Control 头时，使用/不使用默认缓存策略开关。当 DefaultCache 为 on 时，此字段必填，否则此字段不生效；当 DefaultCacheTime 不为 0 时，此字段必须为 off。取值有：
        # <li>on：使用默认缓存策略；</li>
        # <li>off：不使用默认缓存策略。</li>
        # @type DefaultCacheStrategy: String
        # @param DefaultCacheTime: 源站未返回 Cache-Control 头时，表示默认的缓存时间，单位为秒，取值：0-315360000。当 DefaultCache 为 on 时，此字段必填，否则此字段不生效；当 DefaultCacheStrategy 为 on 时， 此字段必须为 0。
        # @type DefaultCacheTime: Integer

        attr_accessor :Switch, :DefaultCache, :DefaultCacheStrategy, :DefaultCacheTime

        def initialize(switch=nil, defaultcache=nil, defaultcachestrategy=nil, defaultcachetime=nil)
          @Switch = switch
          @DefaultCache = defaultcache
          @DefaultCacheStrategy = defaultcachestrategy
          @DefaultCacheTime = defaultcachetime
        end

        def deserialize(params)
          @Switch = params['Switch']
          @DefaultCache = params['DefaultCache']
          @DefaultCacheStrategy = params['DefaultCacheStrategy']
          @DefaultCacheTime = params['DefaultCacheTime']
        end
      end

      # 访问协议强制 HTTPS 跳转配置。
      class ForceRedirect < TencentCloud::Common::AbstractModel
        # @param Switch: 访问强制跳转配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param RedirectStatusCode: 重定向状态码，取值有：
        # <li>301：301跳转；</li>
        # <li>302：302跳转。</li>
        # @type RedirectStatusCode: Integer

        attr_accessor :Switch, :RedirectStatusCode

        def initialize(switch=nil, redirectstatuscode=nil)
          @Switch = switch
          @RedirectStatusCode = redirectstatuscode
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RedirectStatusCode = params['RedirectStatusCode']
        end
      end

      # 访问协议强制 HTTPS 跳转配置。
      class ForceRedirectHTTPSParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 访问强制跳转配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param RedirectStatusCode: 重定向状态码。当 Switch 为 on 时，此字段必填，否则此字段不生效。取值有：
        # <li>301：301跳转；</li>
        # <li>302：302跳转。</li>
        # @type RedirectStatusCode: Integer

        attr_accessor :Switch, :RedirectStatusCode

        def initialize(switch=nil, redirectstatuscode=nil)
          @Switch = switch
          @RedirectStatusCode = redirectstatuscode
        end

        def deserialize(params)
          @Switch = params['Switch']
          @RedirectStatusCode = params['RedirectStatusCode']
        end
      end

      # 边缘函数详情
      class Function < TencentCloud::Common::AbstractModel
        # @param FunctionId: 函数 ID。
        # @type FunctionId: String
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Name: 函数名字。
        # @type Name: String
        # @param Remark: 函数描述。
        # @type Remark: String
        # @param Content: 函数内容。
        # @type Content: String
        # @param Domain: 函数默认域名。
        # @type Domain: String
        # @param CreateTime: 创建时间。时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type CreateTime: String
        # @param UpdateTime: 修改时间。时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type UpdateTime: String

        attr_accessor :FunctionId, :ZoneId, :Name, :Remark, :Content, :Domain, :CreateTime, :UpdateTime

        def initialize(functionid=nil, zoneid=nil, name=nil, remark=nil, content=nil, domain=nil, createtime=nil, updatetime=nil)
          @FunctionId = functionid
          @ZoneId = zoneid
          @Name = name
          @Remark = remark
          @Content = content
          @Domain = domain
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @FunctionId = params['FunctionId']
          @ZoneId = params['ZoneId']
          @Name = params['Name']
          @Remark = params['Remark']
          @Content = params['Content']
          @Domain = params['Domain']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 边缘函数环境变量
      class FunctionEnvironmentVariable < TencentCloud::Common::AbstractModel
        # @param Key: 变量的名称，限制只能包含大小写字母、数字，特殊字符仅支持 @ . - _ ，最大 64 个字节，不支持重复。
        # @type Key: String
        # @param Value: 变量的值，限制最大 5000 字节，默认值为空。
        # @type Value: String
        # @param Type: 变量的类型，取值有：
        # <li>string：字符串类型；</li>
        # <li>json：json 对象类型。</li>默认值为：string。
        # @type Type: String

        attr_accessor :Key, :Value, :Type

        def initialize(key=nil, value=nil, type=nil)
          @Key = key
          @Value = value
          @Type = type
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Type = params['Type']
        end
      end

      # 边缘函数触发规则。
      class FunctionRule < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID。
        # @type RuleId: String
        # @param FunctionRuleConditions: 规则条件列表，列表项之间为或关系。
        # @type FunctionRuleConditions: Array
        # @param FunctionId: 函数 ID，命中触发规则条件后执行的函数。
        # @type FunctionId: String
        # @param Remark: 规则描述。
        # @type Remark: String
        # @param FunctionName: 函数名称。
        # @type FunctionName: String
        # @param Priority: 函数触发规则优先级，数值越大，优先级越高。
        # @type Priority: Integer
        # @param CreateTime: 创建时间。时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。时间为世界标准时间（UTC）， 遵循 ISO 8601 标准的日期和时间格式。
        # @type UpdateTime: String

        attr_accessor :RuleId, :FunctionRuleConditions, :FunctionId, :Remark, :FunctionName, :Priority, :CreateTime, :UpdateTime

        def initialize(ruleid=nil, functionruleconditions=nil, functionid=nil, remark=nil, functionname=nil, priority=nil, createtime=nil, updatetime=nil)
          @RuleId = ruleid
          @FunctionRuleConditions = functionruleconditions
          @FunctionId = functionid
          @Remark = remark
          @FunctionName = functionname
          @Priority = priority
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          unless params['FunctionRuleConditions'].nil?
            @FunctionRuleConditions = []
            params['FunctionRuleConditions'].each do |i|
              functionrulecondition_tmp = FunctionRuleCondition.new
              functionrulecondition_tmp.deserialize(i)
              @FunctionRuleConditions << functionrulecondition_tmp
            end
          end
          @FunctionId = params['FunctionId']
          @Remark = params['Remark']
          @FunctionName = params['FunctionName']
          @Priority = params['Priority']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 边缘函数触发规则条件。
      class FunctionRuleCondition < TencentCloud::Common::AbstractModel
        # @param RuleConditions: 边缘函数触发规则条件，该列表内所有项全部满足即判断该条件满足。
        # @type RuleConditions: Array

        attr_accessor :RuleConditions

        def initialize(ruleconditions=nil)
          @RuleConditions = ruleconditions
        end

        def deserialize(params)
          unless params['RuleConditions'].nil?
            @RuleConditions = []
            params['RuleConditions'].each do |i|
              rulecondition_tmp = RuleCondition.new
              rulecondition_tmp.deserialize(i)
              @RuleConditions << rulecondition_tmp
            end
          end
        end
      end

      # 多通道安全网关可用地域
      class GatewayRegion < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域 ID 。
        # @type RegionId: String
        # @param CNName: 中文地域名称。
        # @type CNName: String
        # @param ENName: 英文地域名称。
        # @type ENName: String

        attr_accessor :RegionId, :CNName, :ENName

        def initialize(regionid=nil, cnname=nil, enname=nil)
          @RegionId = regionid
          @CNName = cnname
          @ENName = enname
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @CNName = params['CNName']
          @ENName = params['ENName']
        end
      end

      # Grpc配置项
      class Grpc < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启 Grpc 配置，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # gRPC 配置项。
      class GrpcParameters < TencentCloud::Common::AbstractModel
        # @param Switch: gRPC 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # HSTS 配置参数。
      class HSTSParameters < TencentCloud::Common::AbstractModel
        # @param Switch: HSTS 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Timeout: 缓存 HSTS 头部时间，单位为秒，取值：1-31536000。<br>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type Timeout: Integer
        # @param IncludeSubDomains: 是否允许其他子域名继承相同的 HSTS 头部，取值有：
        # <li>on：允许其他子域名继承相同的 HSTS 头部；</li>
        # <li>off：不允许其他子域名继承相同的 HSTS 头部。</li>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type IncludeSubDomains: String
        # @param Preload: 是否允许浏览器预加载 HSTS 头部，取值有：
        # <li>on：允许浏览器预加载 HSTS 头部；</li>
        # <li>off：不允许浏览器预加载 HSTS 头部。</li>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type Preload: String

        attr_accessor :Switch, :Timeout, :IncludeSubDomains, :Preload

        def initialize(switch=nil, timeout=nil, includesubdomains=nil, preload=nil)
          @Switch = switch
          @Timeout = timeout
          @IncludeSubDomains = includesubdomains
          @Preload = preload
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Timeout = params['Timeout']
          @IncludeSubDomains = params['IncludeSubDomains']
          @Preload = params['Preload']
        end
      end

      # HTTP2 接入配置参数。
      class HTTP2Parameters < TencentCloud::Common::AbstractModel
        # @param Switch: HTTP2 接入配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # HTTP 应答配置参数。
      class HTTPResponseParameters < TencentCloud::Common::AbstractModel
        # @param StatusCode: 响应状态码。支持 2XX、4XX、5XX，不包括 499、514、101、301、302、303、509、520-599。
        # @type StatusCode: Integer
        # @param ResponsePage: 响应页面 ID。
        # @type ResponsePage: String

        attr_accessor :StatusCode, :ResponsePage

        def initialize(statuscode=nil, responsepage=nil)
          @StatusCode = statuscode
          @ResponsePage = responsepage
        end

        def deserialize(params)
          @StatusCode = params['StatusCode']
          @ResponsePage = params['ResponsePage']
        end
      end

      # 七层回源超时配置。
      class HTTPUpstreamTimeoutParameters < TencentCloud::Common::AbstractModel
        # @param ResponseTimeout: HTTP 应答超时时间，单位为秒，取值：5～600。
        # @type ResponseTimeout: Integer

        attr_accessor :ResponseTimeout

        def initialize(responsetimeout=nil)
          @ResponseTimeout = responsetimeout
        end

        def deserialize(params)
          @ResponseTimeout = params['ResponseTimeout']
        end
      end

      # HandleFunctionRuntimeEnvironment请求参数结构体
      class HandleFunctionRuntimeEnvironmentRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param FunctionId: 函数 ID。
        # @type FunctionId: String
        # @param Operation: 操作类型，取值有：
        # <li>setEnvironmentVariable：设置环境变量，当环境变量存在时为修改行为，否则为添加行为；</li>
        # <li>deleteEnvironmentVariable：删除环境变量变量；</li>
        # <li>clearEnvironmentVariable：清空环境变量变量；</li>
        # <li>resetEnvironmentVariable：重置环境变量变量。</li>
        # @type Operation: String
        # @param EnvironmentVariables: 环境变量列表，函数运行环境最多支持 64 个变量。当 Operation 取值为 setEnvironmentVariable、deleteEnvironmentVariable、resetEnvironmentVariable 时必填。
        # @type EnvironmentVariables: Array

        attr_accessor :ZoneId, :FunctionId, :Operation, :EnvironmentVariables

        def initialize(zoneid=nil, functionid=nil, operation=nil, environmentvariables=nil)
          @ZoneId = zoneid
          @FunctionId = functionid
          @Operation = operation
          @EnvironmentVariables = environmentvariables
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @FunctionId = params['FunctionId']
          @Operation = params['Operation']
          unless params['EnvironmentVariables'].nil?
            @EnvironmentVariables = []
            params['EnvironmentVariables'].each do |i|
              functionenvironmentvariable_tmp = FunctionEnvironmentVariable.new
              functionenvironmentvariable_tmp.deserialize(i)
              @EnvironmentVariables << functionenvironmentvariable_tmp
            end
          end
        end
      end

      # HandleFunctionRuntimeEnvironment返回参数结构体
      class HandleFunctionRuntimeEnvironmentResponse < TencentCloud::Common::AbstractModel
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

      # 刷新预热附带的头部信息
      class Header < TencentCloud::Common::AbstractModel
        # @param Name: HTTP头部名称。
        # @type Name: String
        # @param Value: HTTP头部值。
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

      # HTTP 头部设置规则。
      class HeaderAction < TencentCloud::Common::AbstractModel
        # @param Action: HTTP 头部设置方式。取值有：
        # <li>set：设置。变更指定头部参数的取值为设置后的值；</li>
        # <li>del：删除。删除指定的头部参数；</li>
        # <li>add：增加。增加指定的头部参数。</li>
        # @type Action: String
        # @param Name: HTTP 头部名称。
        # @type Name: String
        # @param Value: HTTP 头部值。当 Action 取值为 set 或者 add 时，该参数必填；当 Action 取值为 del 时，该参数无需填写。
        # @type Value: String

        attr_accessor :Action, :Name, :Value

        def initialize(action=nil, name=nil, value=nil)
          @Action = action
          @Name = name
          @Value = value
        end

        def deserialize(params)
          @Action = params['Action']
          @Name = params['Name']
          @Value = params['Value']
        end
      end

      # 负载均衡实例健康检查策略。
      class HealthChecker < TencentCloud::Common::AbstractModel
        # @param Type: 健康检查策略，取值有：
        # <li>HTTP；</li>
        # <li>HTTPS；</li>
        # <li>TCP；</li>
        # <li>UDP；</li>
        # <li>ICMP Ping；</li>
        # <li>NoCheck。</li>
        # 注意：NoCheck 表示不启用健康检查策略。
        # @type Type: String
        # @param Port: 检查端口。当 Type=HTTP 或 Type=HTTPS 或 Type=TCP 或 Type=UDP 时为必填。
        # @type Port: Integer
        # @param Interval: 检查频率，表示多久发起一次健康检查任务，单位为秒。可取值有：30，60，180，300 或 600。
        # @type Interval: Integer
        # @param Timeout: 每一次健康检查的超时时间，若健康检查消耗时间大于此值，则检查结果判定为”不健康“， 单位为秒，默认值为 5s，取值必须小于 Interval。
        # @type Timeout: Integer
        # @param HealthThreshold: 健康阈值，表示连续几次健康检查结果为"健康"，则判断源站为"健康"，单位为次，默认 3 次，最小取值 1 次。
        # @type HealthThreshold: Integer
        # @param CriticalThreshold: 不健康阈值，表示连续几次健康检查结果为"不健康"，则判断源站为"不健康"，单位为次，默认 2 次。
        # @type CriticalThreshold: Integer
        # @param Path: 该参数仅当 Type=HTTP 或 Type=HTTPS 时有效，表示探测路径，需要填写完整的 host/path，不包含协议部分，例如：www.example.com/test。
        # @type Path: String
        # @param Method: 该参数仅当 Type=HTTP 或 Type=HTTPS 时有效，表示请求方法，取值有：
        # <li>GET；</li>
        # <li>HEAD。</li>
        # @type Method: String
        # @param ExpectedCodes: 该参数仅当 Type=HTTP 或 Type=HTTPS 时有效，表示探测节点向源站发起健康检查时，响应哪些状态码可用于认定探测结果为健康。
        # @type ExpectedCodes: Array
        # @param Headers: 该参数仅当 Type=HTTP 或 Type=HTTPS 时有效，表示探测请求携带的自定义  HTTP 请求头，至多可配置 10 个。
        # @type Headers: Array
        # @param FollowRedirect: 该参数仅当 Type=HTTP 或 Type=HTTPS 时有效，表示是否启用遵循 301/302 重定向。启用后，301/302 默认为"健康"的状态码，默认跳转 3 次。
        # @type FollowRedirect: String
        # @param SendContext: 该参数仅当 Type=UDP 时有效，表示健康检查发送的内容。只允许 ASCII 可见字符，最大长度限制 500 个字符。
        # @type SendContext: String
        # @param RecvContext: 该参数仅当 Type=UDP 时有效，表示健康检查期望源站返回结果。只允许 ASCII 可见字符，最大长度限制 500 个字符。
        # @type RecvContext: String

        attr_accessor :Type, :Port, :Interval, :Timeout, :HealthThreshold, :CriticalThreshold, :Path, :Method, :ExpectedCodes, :Headers, :FollowRedirect, :SendContext, :RecvContext

        def initialize(type=nil, port=nil, interval=nil, timeout=nil, healththreshold=nil, criticalthreshold=nil, path=nil, method=nil, expectedcodes=nil, headers=nil, followredirect=nil, sendcontext=nil, recvcontext=nil)
          @Type = type
          @Port = port
          @Interval = interval
          @Timeout = timeout
          @HealthThreshold = healththreshold
          @CriticalThreshold = criticalthreshold
          @Path = path
          @Method = method
          @ExpectedCodes = expectedcodes
          @Headers = headers
          @FollowRedirect = followredirect
          @SendContext = sendcontext
          @RecvContext = recvcontext
        end

        def deserialize(params)
          @Type = params['Type']
          @Port = params['Port']
          @Interval = params['Interval']
          @Timeout = params['Timeout']
          @HealthThreshold = params['HealthThreshold']
          @CriticalThreshold = params['CriticalThreshold']
          @Path = params['Path']
          @Method = params['Method']
          @ExpectedCodes = params['ExpectedCodes']
          unless params['Headers'].nil?
            @Headers = []
            params['Headers'].each do |i|
              customizedheader_tmp = CustomizedHeader.new
              customizedheader_tmp.deserialize(i)
              @Headers << customizedheader_tmp
            end
          end
          @FollowRedirect = params['FollowRedirect']
          @SendContext = params['SendContext']
          @RecvContext = params['RecvContext']
        end
      end

      # Host Header 重写配置参数。
      class HostHeaderParameters < TencentCloud::Common::AbstractModel
        # @param Action: 执行动作，取值有：
        # <li>followOrigin：跟随源站域名；</li>
        # <li>custom：自定义。</li>
        # @type Action: String
        # @param ServerName: Host Header 重写，需要填写完整域名。<br>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type ServerName: String

        attr_accessor :Action, :ServerName

        def initialize(action=nil, servername=nil)
          @Action = action
          @ServerName = servername
        end

        def deserialize(params)
          @Action = params['Action']
          @ServerName = params['ServerName']
        end
      end

      # 访问 URL 重定向 HostName 配置参数。
      class HostName < TencentCloud::Common::AbstractModel
        # @param Action: 目标 HostName 配置，取值有：
        # <li>follow：跟随请求；</li>
        # <li>custom：自定义。</li>
        # @type Action: String
        # @param Value: 目标 HostName 自定义取值，最大长度 1024。<br>注意：当 Action 为 custom 时，此字段必填；当 Action 为 follow 时，此字段不生效。
        # @type Value: String

        attr_accessor :Action, :Value

        def initialize(action=nil, value=nil)
          @Action = action
          @Value = value
        end

        def deserialize(params)
          @Action = params['Action']
          @Value = params['Value']
        end
      end

      # Hsts配置
      class Hsts < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param MaxAge: MaxAge 数值。单位为秒，最大值为1天。
        # @type MaxAge: Integer
        # @param IncludeSubDomains: 是否包含子域名，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type IncludeSubDomains: String
        # @param Preload: 是否开启预加载，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Preload: String

        attr_accessor :Switch, :MaxAge, :IncludeSubDomains, :Preload

        def initialize(switch=nil, maxage=nil, includesubdomains=nil, preload=nil)
          @Switch = switch
          @MaxAge = maxage
          @IncludeSubDomains = includesubdomains
          @Preload = preload
        end

        def deserialize(params)
          @Switch = params['Switch']
          @MaxAge = params['MaxAge']
          @IncludeSubDomains = params['IncludeSubDomains']
          @Preload = params['Preload']
        end
      end

      # HTTP DDOS防护配置。
      class HttpDDoSProtection < TencentCloud::Common::AbstractModel
        # @param AdaptiveFrequencyControl: 自适应频控的具体配置。
        # @type AdaptiveFrequencyControl: :class:`Tencentcloud::Teo.v20220901.models.AdaptiveFrequencyControl`
        # @param ClientFiltering: 智能客户端过滤的具体配置。
        # @type ClientFiltering: :class:`Tencentcloud::Teo.v20220901.models.ClientFiltering`
        # @param BandwidthAbuseDefense: 流量防盗刷的具体配置。
        # @type BandwidthAbuseDefense: :class:`Tencentcloud::Teo.v20220901.models.BandwidthAbuseDefense`
        # @param SlowAttackDefense: 慢速攻击防护的具体配置。
        # @type SlowAttackDefense: :class:`Tencentcloud::Teo.v20220901.models.SlowAttackDefense`

        attr_accessor :AdaptiveFrequencyControl, :ClientFiltering, :BandwidthAbuseDefense, :SlowAttackDefense

        def initialize(adaptivefrequencycontrol=nil, clientfiltering=nil, bandwidthabusedefense=nil, slowattackdefense=nil)
          @AdaptiveFrequencyControl = adaptivefrequencycontrol
          @ClientFiltering = clientfiltering
          @BandwidthAbuseDefense = bandwidthabusedefense
          @SlowAttackDefense = slowattackdefense
        end

        def deserialize(params)
          unless params['AdaptiveFrequencyControl'].nil?
            @AdaptiveFrequencyControl = AdaptiveFrequencyControl.new
            @AdaptiveFrequencyControl.deserialize(params['AdaptiveFrequencyControl'])
          end
          unless params['ClientFiltering'].nil?
            @ClientFiltering = ClientFiltering.new
            @ClientFiltering.deserialize(params['ClientFiltering'])
          end
          unless params['BandwidthAbuseDefense'].nil?
            @BandwidthAbuseDefense = BandwidthAbuseDefense.new
            @BandwidthAbuseDefense.deserialize(params['BandwidthAbuseDefense'])
          end
          unless params['SlowAttackDefense'].nil?
            @SlowAttackDefense = SlowAttackDefense.new
            @SlowAttackDefense.deserialize(params['SlowAttackDefense'])
          end
        end
      end

      # 域名 https 加速配置，默认为关闭状态
      class Https < TencentCloud::Common::AbstractModel
        # @param Http2: http2 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Http2: String
        # @param OcspStapling: OCSP 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type OcspStapling: String
        # @param TlsVersion: Tls 版本设置，取值有：
        # <li>TLSv1：TLSv1版本；</li>
        # <li>TLSV1.1：TLSv1.1版本；</li>
        # <li>TLSV1.2：TLSv1.2版本；</li>
        # <li>TLSv1.3：TLSv1.3版本。</li>修改时必须开启连续的版本。
        # @type TlsVersion: Array
        # @param Hsts: HSTS 配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Hsts: :class:`Tencentcloud::Teo.v20220901.models.Hsts`
        # @param CertInfo: 证书配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertInfo: Array
        # @param ApplyType: 申请类型，取值有：
        # <li>apply：托管EdgeOne；</li>
        # <li>none：不托管EdgeOne。</li>不填，默认取值为none。
        # @type ApplyType: String
        # @param CipherSuite: 密码套件，取值有：
        # <li>loose-v2023：提供高兼容性，安全性一般，支持 TLS 1.0-1.3 密码套件；</li>
        # <li>general-v2023：提供较高兼容性，安全性中等，支持 TLS 1.2-1.3 密码套件；</li>
        # <li>strict-v2023：提供高安全性能，禁用所有含不安全隐患的加密套件，支持 TLS 1.2-1.3 密码套件。</li>
        # @type CipherSuite: String

        attr_accessor :Http2, :OcspStapling, :TlsVersion, :Hsts, :CertInfo, :ApplyType, :CipherSuite

        def initialize(http2=nil, ocspstapling=nil, tlsversion=nil, hsts=nil, certinfo=nil, applytype=nil, ciphersuite=nil)
          @Http2 = http2
          @OcspStapling = ocspstapling
          @TlsVersion = tlsversion
          @Hsts = hsts
          @CertInfo = certinfo
          @ApplyType = applytype
          @CipherSuite = ciphersuite
        end

        def deserialize(params)
          @Http2 = params['Http2']
          @OcspStapling = params['OcspStapling']
          @TlsVersion = params['TlsVersion']
          unless params['Hsts'].nil?
            @Hsts = Hsts.new
            @Hsts.deserialize(params['Hsts'])
          end
          unless params['CertInfo'].nil?
            @CertInfo = []
            params['CertInfo'].each do |i|
              servercertinfo_tmp = ServerCertInfo.new
              servercertinfo_tmp.deserialize(i)
              @CertInfo << servercertinfo_tmp
            end
          end
          @ApplyType = params['ApplyType']
          @CipherSuite = params['CipherSuite']
        end
      end

      # 存储定时过期时间和对应 IP。
      class IPExpireInfo < TencentCloud::Common::AbstractModel
        # @param ExpireTime: 定时过期时间，遵循 ISO 8601 标准的日期和时间格式。例如 "2022-01-01T00:00:00+08:00"。
        # @type ExpireTime: String
        # @param IPList: IP 列表。仅支持 IP  及 IP 网段。
        # @type IPList: Array

        attr_accessor :ExpireTime, :IPList

        def initialize(expiretime=nil, iplist=nil)
          @ExpireTime = expiretime
          @IPList = iplist
        end

        def deserialize(params)
          @ExpireTime = params['ExpireTime']
          @IPList = params['IPList']
        end
      end

      # IP 网段组
      class IPGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 组 Id，创建时填 0 即可。
        # @type GroupId: Integer
        # @param Name: 组名称。
        # @type Name: String
        # @param Content: IP 组内容，仅支持 IP 及 IP 网段。
        # @type Content: Array
        # @param IPTotalCount: IP 组中正在生效的 IP 或网段个数。作为出参时有效，作为入参时无需填写该字段。
        # @type IPTotalCount: Integer
        # @param IPExpireInfo: IP 定时过期信息。
        # 作为入参，用于为指定的 IP 地址或网段配置定时过期时间。
        # 作为出参，包含以下两类信息：
        # <li>当前未到期的定时过期信息：尚未触发的过期配置。</li>
        # <li>一周内已到期的定时过期信息：已触发的过期配置。</li>
        # @type IPExpireInfo: Array

        attr_accessor :GroupId, :Name, :Content, :IPTotalCount, :IPExpireInfo

        def initialize(groupid=nil, name=nil, content=nil, iptotalcount=nil, ipexpireinfo=nil)
          @GroupId = groupid
          @Name = name
          @Content = content
          @IPTotalCount = iptotalcount
          @IPExpireInfo = ipexpireinfo
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Name = params['Name']
          @Content = params['Content']
          @IPTotalCount = params['IPTotalCount']
          unless params['IPExpireInfo'].nil?
            @IPExpireInfo = []
            params['IPExpireInfo'].each do |i|
              ipexpireinfo_tmp = IPExpireInfo.new
              ipexpireinfo_tmp.deserialize(i)
              @IPExpireInfo << ipexpireinfo_tmp
            end
          end
        end
      end

      # IP 归属信息查询
      class IPRegionInfo < TencentCloud::Common::AbstractModel
        # @param IP: IP 地址，IPV4 或 IPV6。
        # @type IP: String
        # @param IsEdgeOneIP: IP 是否属于 EdgeOne 节点，取值有：
        # <li>yes：该 IP 属于 EdgeOne 节点；</li>
        # <li>no：该 IP 不属于 EdgeOne 节点。</li>
        # @type IsEdgeOneIP: String

        attr_accessor :IP, :IsEdgeOneIP

        def initialize(ip=nil, isedgeoneip=nil)
          @IP = ip
          @IsEdgeOneIP = isedgeoneip
        end

        def deserialize(params)
          @IP = params['IP']
          @IsEdgeOneIP = params['IsEdgeOneIP']
        end
      end

      # 源站防护IP白名单
      class IPWhitelist < TencentCloud::Common::AbstractModel
        # @param IPv4: IPv4列表。
        # @type IPv4: Array
        # @param IPv6: IPv6列表。
        # @type IPv6: Array

        attr_accessor :IPv4, :IPv6

        def initialize(ipv4=nil, ipv6=nil)
          @IPv4 = ipv4
          @IPv6 = ipv6
        end

        def deserialize(params)
          @IPv4 = params['IPv4']
          @IPv6 = params['IPv6']
        end
      end

      # IPv6 访问配置。
      class IPv6Parameters < TencentCloud::Common::AbstractModel
        # @param Switch: IPv6 访问功能配置，取值有：
        # <li>on：开启 IPv6 访问功能；</li>
        # <li>off：关闭 IPv6 访问功能。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 站点验证信息
      class Identification < TencentCloud::Common::AbstractModel
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param Domain: 验证子域名。验证站点时，该值为空。验证子域名是为具体子域名。
        # @type Domain: String
        # @param Status: 验证状态，取值有：
        # <li> pending：验证中；</li>
        # <li> finished：验证完成。</li>
        # @type Status: String
        # @param Ascription: 站点归属权校验：Dns校验信息。
        # @type Ascription: :class:`Tencentcloud::Teo.v20220901.models.AscriptionInfo`
        # @param OriginalNameServers: 域名当前的 NS 记录。
        # @type OriginalNameServers: Array
        # @param FileAscription: 站点归属权校验：文件校验信息。
        # @type FileAscription: :class:`Tencentcloud::Teo.v20220901.models.FileAscriptionInfo`

        attr_accessor :ZoneName, :Domain, :Status, :Ascription, :OriginalNameServers, :FileAscription

        def initialize(zonename=nil, domain=nil, status=nil, ascription=nil, originalnameservers=nil, fileascription=nil)
          @ZoneName = zonename
          @Domain = domain
          @Status = status
          @Ascription = ascription
          @OriginalNameServers = originalnameservers
          @FileAscription = fileascription
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
          @Domain = params['Domain']
          @Status = params['Status']
          unless params['Ascription'].nil?
            @Ascription = AscriptionInfo.new
            @Ascription.deserialize(params['Ascription'])
          end
          @OriginalNameServers = params['OriginalNameServers']
          unless params['FileAscription'].nil?
            @FileAscription = FileAscriptionInfo.new
            @FileAscription.deserialize(params['FileAscription'])
          end
        end
      end

      # IdentifyZone请求参数结构体
      class IdentifyZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param Domain: 站点下的子域名。如果验证站点下的子域名，则传该值，否则为空。
        # @type Domain: String

        attr_accessor :ZoneName, :Domain

        def initialize(zonename=nil, domain=nil)
          @ZoneName = zonename
          @Domain = domain
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
          @Domain = params['Domain']
        end
      end

      # IdentifyZone返回参数结构体
      class IdentifyZoneResponse < TencentCloud::Common::AbstractModel
        # @param Ascription: 站点归属校验：Dns校验信息。
        # @type Ascription: :class:`Tencentcloud::Teo.v20220901.models.AscriptionInfo`
        # @param FileAscription: 站点归属权校验：文件校验信息。
        # @type FileAscription: :class:`Tencentcloud::Teo.v20220901.models.FileAscriptionInfo`
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Ascription, :FileAscription, :RequestId

        def initialize(ascription=nil, fileascription=nil, requestid=nil)
          @Ascription = ascription
          @FileAscription = fileascription
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Ascription'].nil?
            @Ascription = AscriptionInfo.new
            @Ascription.deserialize(params['Ascription'])
          end
          unless params['FileAscription'].nil?
            @FileAscription = FileAscriptionInfo.new
            @FileAscription.deserialize(params['FileAscription'])
          end
          @RequestId = params['RequestId']
        end
      end

      # 图片优化配置。
      class ImageOptimize < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # ImportZoneConfig请求参数结构体
      class ImportZoneConfigRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Content: 待导入的配置内容。要求采用 JSON 格式，按照 UTF-8 方式进行编码。配置内容可通过站点配置导出接口（ExportZoneConfig）获取。您可以单独导入「站点加速-全局加速配置」或「站点加速-规则引擎」，传入对应的字段即可，详情可以参考下方示例。
        # @type Content: String

        attr_accessor :ZoneId, :Content

        def initialize(zoneid=nil, content=nil)
          @ZoneId = zoneid
          @Content = content
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Content = params['Content']
        end
      end

      # ImportZoneConfig返回参数结构体
      class ImportZoneConfigResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 表示该次导入配置的任务 Id，通过查询站点配置导入结果接口（DescribeZoneConfigImportResult）获取本次导入任务执行的结果。注意：导入任务 Id 仅支持查询最近 7 天的导入任务。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId

        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # IncreasePlanQuota请求参数结构体
      class IncreasePlanQuotaRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 套餐 ID, 形如 edgeone-2unuvzjmmn2q。
        # @type PlanId: String
        # @param QuotaType: 新增的套餐配额类型，取值有：<li> site：站点数；</li><li> precise_access_control_rule：Web 防护 - 自定义规则 - 精准匹配策略的规则配额；</li><li> rate_limiting_rule：Web 防护 - 速率限制 - 精准速率限制模块的规则配额。</li>
        # @type QuotaType: String
        # @param QuotaNumber: 新增的配额个数。单次新增的配额个数上限为 100。
        # @type QuotaNumber: Integer

        attr_accessor :PlanId, :QuotaType, :QuotaNumber

        def initialize(planid=nil, quotatype=nil, quotanumber=nil)
          @PlanId = planid
          @QuotaType = quotatype
          @QuotaNumber = quotanumber
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @QuotaType = params['QuotaType']
          @QuotaNumber = params['QuotaNumber']
        end
      end

      # IncreasePlanQuota返回参数结构体
      class IncreasePlanQuotaResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # 智能分析规则
      class IntelligenceRule < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param IntelligenceRuleItems: 规则详情。
        # @type IntelligenceRuleItems: Array

        attr_accessor :Switch, :IntelligenceRuleItems

        def initialize(switch=nil, intelligenceruleitems=nil)
          @Switch = switch
          @IntelligenceRuleItems = intelligenceruleitems
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['IntelligenceRuleItems'].nil?
            @IntelligenceRuleItems = []
            params['IntelligenceRuleItems'].each do |i|
              intelligenceruleitem_tmp = IntelligenceRuleItem.new
              intelligenceruleitem_tmp.deserialize(i)
              @IntelligenceRuleItems << intelligenceruleitem_tmp
            end
          end
        end
      end

      # Bot智能分析规则详情
      class IntelligenceRuleItem < TencentCloud::Common::AbstractModel
        # @param Label: 智能分析标签，取值有：
        # <li>evil_bot：恶意bot；</li>
        # <li>suspect_bot：疑似bot；</li>
        # <li>good_bot：良好bot；</li>
        # <li>normal：正常请求。</li>
        # @type Label: String
        # @param Action: 触发智能分析标签对应的处置方式，取值有：
        # <li>drop：拦截；</li>
        # <li>trans：放行；</li>
        # <li>alg：Javascript挑战；</li>
        # <li>captcha：数字验证码；</li>
        # <li>monitor：观察。</li>
        # @type Action: String

        attr_accessor :Label, :Action

        def initialize(label=nil, action=nil)
          @Label = label
          @Action = action
        end

        def deserialize(params)
          @Label = params['Label']
          @Action = params['Action']
        end
      end

      # IP黑白名单及IP区域控制配置
      class IpTableConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭；</li>
        # @type Switch: String
        # @param IpTableRules: 基础管控规则。如果为null，默认使用历史配置。
        # @type IpTableRules: Array

        attr_accessor :Switch, :IpTableRules

        def initialize(switch=nil, iptablerules=nil)
          @Switch = switch
          @IpTableRules = iptablerules
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['IpTableRules'].nil?
            @IpTableRules = []
            params['IpTableRules'].each do |i|
              iptablerule_tmp = IpTableRule.new
              iptablerule_tmp.deserialize(i)
              @IpTableRules << iptablerule_tmp
            end
          end
        end
      end

      # 自定义规则-基础访问管控配置。
      class IpTableRule < TencentCloud::Common::AbstractModel
        # @param Action: 动作，取值有：
        # <li> drop：拦截；</li>
        # <li> trans：放行；</li>
        # <li> monitor：观察。</li>
        # @type Action: String
        # @param MatchFrom: 根据类型匹配，取值有：
        # <li>ip：客户端 IP 进行匹配；</li>
        # <li>area：客户端 IP 所属地区匹配；</li>
        # <li>asn：客户端所属的自治系统进行匹配；</li>
        # <li>referer：请求头 Referer 进行匹配；</li>
        # <li>ua：请求头 User-Agent 进行匹配；</li>
        # <li>url：请求 URL 进行匹配。</li>
        # @type MatchFrom: String
        # @param Operator: 规则的匹配方式。取值有：
        # <li> match：匹配，适用于 MatchFrom 为 ip；</li>
        # <li> not_match：不匹配，适用于 MatchFrom 为 ip；</li>
        # <li> include_area：地域包含，适用于 MatchFrom 为 area；</li>
        # <li> not_include_area：地域不包含，适用于 MatchFrom 为 area；</li>
        # <li> asn_match：ASN 包含，适用于 MatchFrom 为 asn；</li>
        # <li> asn_not_match：ASN 不包含，适用于 MatchFrom 为 asn；</li>
        # <li> equal：等于，适用于 MatchFrom 为 ua , referer；</li>
        # <li> not_equal：不等于，适用于 MatchFrom 为 ua , referer；</li>
        # <li> include：通配符匹配，适用于 MatchFrom 为 ua , referer , url；</li>
        # <li> not_include：通配符不匹配，适用于 MatchFrom 为 ua , referer；</li>
        # <li> is_emty：配置内容为空，适用于 MatchFrom 为 ua , referer；</li>
        # <li> not_exists：配置内容不存在，适用于 MatchFrom 为 ua , referer。</li>
        # @type Operator: String
        # @param RuleID: 规则id。仅出参使用。
        # @type RuleID: Integer
        # @param UpdateTime: 更新时间。仅出参使用。
        # @type UpdateTime: String
        # @param Status: 规则启用状态。取值有：
        # <li> on：启用；</li>
        # <li> off：未启用。</li>
        # 当入参缺省时，按 on 取值。
        # @type Status: String
        # @param RuleName: 规则名。
        # @type RuleName: String
        # @param MatchContent: 匹配内容。支持多值输入。
        # <li>当输入多个匹配值时，请使用英文逗号分隔；</li>
        # <li>当 MatchFrom 为 ua 时，不支持多值输入；</li>
        # <li>当 Operator 为 is_empty 或 not_exists 时，本字段入参值无效。</li>
        # @type MatchContent: String

        attr_accessor :Action, :MatchFrom, :Operator, :RuleID, :UpdateTime, :Status, :RuleName, :MatchContent

        def initialize(action=nil, matchfrom=nil, operator=nil, ruleid=nil, updatetime=nil, status=nil, rulename=nil, matchcontent=nil)
          @Action = action
          @MatchFrom = matchfrom
          @Operator = operator
          @RuleID = ruleid
          @UpdateTime = updatetime
          @Status = status
          @RuleName = rulename
          @MatchContent = matchcontent
        end

        def deserialize(params)
          @Action = params['Action']
          @MatchFrom = params['MatchFrom']
          @Operator = params['Operator']
          @RuleID = params['RuleID']
          @UpdateTime = params['UpdateTime']
          @Status = params['Status']
          @RuleName = params['RuleName']
          @MatchContent = params['MatchContent']
        end
      end

      # Ipv6访问配置
      class Ipv6 < TencentCloud::Common::AbstractModel
        # @param Switch: Ipv6 访问功能配置，取值有：
        # <li>on：开启Ipv6访问功能；</li>
        # <li>off：关闭Ipv6访问功能。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 视频即时处理配置
      class JITVideoProcess < TencentCloud::Common::AbstractModel
        # @param Switch: 视频即时处理配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # JavaScript 注入规则。
      class JSInjectionRule < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID。
        # @type RuleId: String
        # @param Name: 规则名称。
        # @type Name: String
        # @param Priority: 规则优先级，数值越小越优先执行，范围是 0 ~ 100，默认为 0。
        # @type Priority: Integer
        # @param Condition: 匹配条件内容。需符合表达式语法，详细规范参见产品文档。
        # @type Condition: String
        # @param InjectJS: JavaScript 注入选项。默认值为 run-attestations，取值有：
        # <li> no-injection: 不注入 JavaScript;</li>
        # <li> inject-sdk-only: 注入当前支持的所有认证方式的 SDK，当前支持：TC-RCE 和 TC-CAPTCHA。注意：若需执行认证检测，请配置挑战规则。</li>
        # @type InjectJS: String

        attr_accessor :RuleId, :Name, :Priority, :Condition, :InjectJS

        def initialize(ruleid=nil, name=nil, priority=nil, condition=nil, injectjs=nil)
          @RuleId = ruleid
          @Name = name
          @Priority = priority
          @Condition = condition
          @InjectJS = injectjs
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Name = params['Name']
          @Priority = params['Priority']
          @Condition = params['Condition']
          @InjectJS = params['InjectJS']
        end
      end

      # 即时转码模板详情。
      class JustInTimeTranscodeTemplate < TencentCloud::Common::AbstractModel
        # @param TemplateId: 即时转码模板唯一标识。
        # @type TemplateId: String
        # @param TemplateName: 转码模板名称。
        # @type TemplateName: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param Type: 模板类型，取值：<li>preset：系统预置模板；</li><li>custom：用户自定义模板。</li>
        # @type Type: String
        # @param VideoStreamSwitch: 启用视频流开关，取值：<li>on：开启；</li><li>off：关闭。</li>
        # @type VideoStreamSwitch: String
        # @param AudioStreamSwitch: 启用音频流开关，取值：<li>on：开启；</li><li>off：关闭。</li>
        # @type AudioStreamSwitch: String
        # @param VideoTemplate: 视频流配置参数，仅当 VideoStreamSwitch 为 on，该字段有效。
        # @type VideoTemplate: :class:`Tencentcloud::Teo.v20220901.models.VideoTemplateInfo`
        # @param AudioTemplate: 音频流配置参数，仅当 AudioStreamSwitch 为 on，该字段有效。
        # @type AudioTemplate: :class:`Tencentcloud::Teo.v20220901.models.AudioTemplateInfo`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :TemplateId, :TemplateName, :Comment, :Type, :VideoStreamSwitch, :AudioStreamSwitch, :VideoTemplate, :AudioTemplate, :CreateTime, :UpdateTime

        def initialize(templateid=nil, templatename=nil, comment=nil, type=nil, videostreamswitch=nil, audiostreamswitch=nil, videotemplate=nil, audiotemplate=nil, createtime=nil, updatetime=nil)
          @TemplateId = templateid
          @TemplateName = templatename
          @Comment = comment
          @Type = type
          @VideoStreamSwitch = videostreamswitch
          @AudioStreamSwitch = audiostreamswitch
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          @Comment = params['Comment']
          @Type = params['Type']
          @VideoStreamSwitch = params['VideoStreamSwitch']
          @AudioStreamSwitch = params['AudioStreamSwitch']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfo.new
            @VideoTemplate.deserialize(params['VideoTemplate'])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfo.new
            @AudioTemplate.deserialize(params['AudioTemplate'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 离线日志详细信息
      class L4OfflineLog < TencentCloud::Common::AbstractModel
        # @param ProxyId: 四层代理实例 ID。
        # @type ProxyId: String
        # @param Area: 日志所属区域，取值有：
        # <li>mainland：中国大陆境内;</li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String
        # @param LogPacketName: 离线日志数据包名。
        # @type LogPacketName: String
        # @param Url: 离线日志下载地址。
        # @type Url: String
        # @param LogTime: 日志打包时间，此参数已经废弃。
        # @type LogTime: Integer
        # @param LogStartTime: 日志打包开始时间。
        # @type LogStartTime: String
        # @param LogEndTime: 日志打包结束时间。
        # @type LogEndTime: String
        # @param Size: 日志大小，单位为 Byte。
        # @type Size: Integer

        attr_accessor :ProxyId, :Area, :LogPacketName, :Url, :LogTime, :LogStartTime, :LogEndTime, :Size

        def initialize(proxyid=nil, area=nil, logpacketname=nil, url=nil, logtime=nil, logstarttime=nil, logendtime=nil, size=nil)
          @ProxyId = proxyid
          @Area = area
          @LogPacketName = logpacketname
          @Url = url
          @LogTime = logtime
          @LogStartTime = logstarttime
          @LogEndTime = logendtime
          @Size = size
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @Area = params['Area']
          @LogPacketName = params['LogPacketName']
          @Url = params['Url']
          @LogTime = params['LogTime']
          @LogStartTime = params['LogStartTime']
          @LogEndTime = params['LogEndTime']
          @Size = params['Size']
        end
      end

      # 四层代理实例。
      class L4Proxy < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 四层代理实例 ID。
        # @type ProxyId: String
        # @param ProxyName: 四层代理实例名称。
        # @type ProxyName: String
        # @param Area: 四层代理实例的加速区域。
        # <li>mainland：中国大陆可用区；</li>
        # <li>overseas： 全球可用区（不含中国大陆）；</li>
        #  <li>global：全球可用区。</li>
        # @type Area: String
        # @param Cname: 接入 CNAME。
        # @type Cname: String
        # @param Ips: 开启固定 IP 后，该值会返回对应的接入 IP；未开启时，该值为空。
        # @type Ips: Array
        # @param Status: 四层代理实例状态。
        # <li>online：已启用；</li>
        # <li>offline：已停用；</li>
        # <li>progress：部署中；</li>
        # <li>stopping：停用中；</li>
        # <li>banned：已封禁；</li>
        # <li>fail：部署失败/停用失败。</li>
        # @type Status: String
        # @param Ipv6: 是否开启 IPv6 访问。
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Ipv6: String
        # @param StaticIp: 是否开启固定 IP。
        #  <li>on：开启；</li> <li>off：关闭。</li>
        # @type StaticIp: String
        # @param AccelerateMainland: 是否开启中国大陆网络优化。
        #  <li>on：开启</li> <li>off：关闭</li>
        # @type AccelerateMainland: String
        # @param DDosProtectionConfig: 安全防护配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DDosProtectionConfig: :class:`Tencentcloud::Teo.v20220901.models.DDosProtectionConfig`
        # @param L4ProxyRuleCount: 四层代理实例下的转发规则数量。
        # @type L4ProxyRuleCount: Integer
        # @param UpdateTime: 最新变更时间。
        # @type UpdateTime: String

        attr_accessor :ZoneId, :ProxyId, :ProxyName, :Area, :Cname, :Ips, :Status, :Ipv6, :StaticIp, :AccelerateMainland, :DDosProtectionConfig, :L4ProxyRuleCount, :UpdateTime

        def initialize(zoneid=nil, proxyid=nil, proxyname=nil, area=nil, cname=nil, ips=nil, status=nil, ipv6=nil, staticip=nil, acceleratemainland=nil, ddosprotectionconfig=nil, l4proxyrulecount=nil, updatetime=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @ProxyName = proxyname
          @Area = area
          @Cname = cname
          @Ips = ips
          @Status = status
          @Ipv6 = ipv6
          @StaticIp = staticip
          @AccelerateMainland = acceleratemainland
          @DDosProtectionConfig = ddosprotectionconfig
          @L4ProxyRuleCount = l4proxyrulecount
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @Area = params['Area']
          @Cname = params['Cname']
          @Ips = params['Ips']
          @Status = params['Status']
          @Ipv6 = params['Ipv6']
          @StaticIp = params['StaticIp']
          @AccelerateMainland = params['AccelerateMainland']
          unless params['DDosProtectionConfig'].nil?
            @DDosProtectionConfig = DDosProtectionConfig.new
            @DDosProtectionConfig.deserialize(params['DDosProtectionConfig'])
          end
          @L4ProxyRuleCount = params['L4ProxyRuleCount']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 四层远程鉴权信息
      class L4ProxyRemoteAuth < TencentCloud::Common::AbstractModel
        # @param Switch: 四层远程鉴权开关，取值有：
        # <li>on：表示开启;</li>
        # <li>off：表示关闭。</li>
        # @type Switch: String
        # @param Address: 远程鉴权服务地址，格式为: domain/ip:port。例：example.auth.com:8888
        # @type Address: String
        # @param ServerFaultyBehavior: 远程鉴权服务不可访问后，经过四层转发规则默认回源行为，取值有：
        # <li>reject：表示进行拦截，拒绝访问;</li>
        # <li>allow：表示允许通过。</li>
        # @type ServerFaultyBehavior: String

        attr_accessor :Switch, :Address, :ServerFaultyBehavior

        def initialize(switch=nil, address=nil, serverfaultybehavior=nil)
          @Switch = switch
          @Address = address
          @ServerFaultyBehavior = serverfaultybehavior
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Address = params['Address']
          @ServerFaultyBehavior = params['ServerFaultyBehavior']
        end
      end

      # 四层代理转发规则详情。
      class L4ProxyRule < TencentCloud::Common::AbstractModel
        # @param RuleId: 转发规则 ID。
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数请勿填写；在 ModifyL4ProxyRules 作为入参使用时，该参数必填。
        # @type RuleId: String
        # @param Protocol: 转发协议。取值有：
        # <li>TCP：TCP 协议；</li>
        # <li>UDP：UDP 协议。</li>
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数必填；在 ModifyL4ProxyRules 作为入参使用时，该参数选填，不填写时表示不修改。
        # @type Protocol: String
        # @param PortRange: 转发端口，支持按照以下形式填写：
        # <li>单端口，如：80；</li>
        # <li>端口段，如：81-85。表示 81、82、83、84、85 五个端口。</li>
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数必填；在 ModifyL4ProxyRules 作为入参使用时，该参数选填，不填写时表示不修改。
        # @type PortRange: Array
        # @param OriginType: 源站类型，取值有：
        # <li>IP_DOMAIN：IP/域名源站；</li>
        # <li>ORIGIN_GROUP：源站组；</li>
        # <li>LB：负载均衡，当前仅白名单开放。</li>
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数必填；在 ModifyL4ProxyRules 作为入参使用时，该参数选填，不填写时表示不修改。
        # @type OriginType: String
        # @param OriginValue: 源站地址：
        # <li>当 OriginType 为 IP_DOMAIN 时，填写 IP 或域名，如 8.8.8.8 或 test.com ；</li>
        # <li>当 OriginType 为 ORIGIN_GROUP 时，填写源站组 ID，如 og-537y24vf5b41；</li>
        # <li>当 OriginType 为 LB 时，填写负载均衡实例 ID，如 lb-2qwk30xf7s9g。</li>
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数必填；在 ModifyL4ProxyRules 作为入参使用时，该参数选填，不填写时表示不修改。
        # @type OriginValue: Array
        # @param OriginPortRange: 源站端口，支持按照以下形式填写：
        # <li>单端口，如：80；</li>
        # <li>端口段，如：81-85，表示 81、82、83、84、85 五个端口。填写端口段时，则需要与转发端口段长度保持一致，例如转发端口：80-90，则转发端口：90-100。</li>
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数必填；在 ModifyL4ProxyRules 作为入参使用时，该参数选填，不填写时表示不修改。
        # @type OriginPortRange: String
        # @param ClientIPPassThroughMode: 传递客户端 IP 的形式，取值有：
        # <li>TOA：TOA（仅 Protocol = TCP 时可选）；</li>
        # <li>PPV1：Proxy Protocol 传递，协议版本 V1（仅 Protocol = TCP 时可选）；</li>
        # <li>PPV2：Proxy Protocol 传递，协议版本 V2；</li>
        # <li>SPP：Simple Proxy Protocol 传递，（仅 Protocol = UDP 时可选）；</li>
        # <li>OFF：不传递。</li>
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数选填，不填写时默认为 OFF；在 ModifyL4ProxyRules 作为入参使用时，该参数选填，不填写表示不修改。
        # @type ClientIPPassThroughMode: String
        # @param SessionPersist: 是否开启会话保持，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数选填，不填写时默认为 off；在 ModifyL4ProxyRules 作为入参使用时，该参数选填，不填写表示不修改。
        # @type SessionPersist: String
        # @param SessionPersistTime: 会话保持时间，取值范围为 30-3600，单位为秒。
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数选填，仅当 SessionPersist = on 时，该值才会生效，且当 SessionPersist = on ，该值不填写默认为 3600；在 ModifyL4ProxyRules 作为入参使用时，该参数选填，不填写表示不修改。
        # @type SessionPersistTime: Integer
        # @param RuleTag: 规则标签。可输入1-50 个任意字符。
        # 注意：L4ProxyRule 在 CreateL4ProxyRules 作为入参使用时，该参数选填；在 ModifyL4ProxyRules 作为入参使用时，该参数选填，不填写表示不修改。
        # @type RuleTag: String
        # @param Status: 规则状态，取值有：
        # <li>online：已启用；</li>
        # <li>offline：已停用；</li>
        # <li>progress：部署中；</li>
        # <li>stopping：停用中；</li>
        # <li>fail：部署失败/停用失败。</li>
        # 注意：L4ProxyRule 在 CreateL4ProxyRules、ModifyL4ProxyRules 作为入参使用时，该参数请勿填写。
        # @type Status: String
        # @param BuId: BuID。
        # @type BuId: String
        # @param RemoteAuth: 远程鉴权信息。
        # 注意：RemoteAuth 在 CreateL4ProxyRules 或 ModifyL4ProxyRules 不可作为入参使用，如有传此参数，会忽略。在 DescribeL4ProxyRules 返回为空时，表示没有开启远程鉴权。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RemoteAuth: :class:`Tencentcloud::Teo.v20220901.models.L4ProxyRemoteAuth`

        attr_accessor :RuleId, :Protocol, :PortRange, :OriginType, :OriginValue, :OriginPortRange, :ClientIPPassThroughMode, :SessionPersist, :SessionPersistTime, :RuleTag, :Status, :BuId, :RemoteAuth

        def initialize(ruleid=nil, protocol=nil, portrange=nil, origintype=nil, originvalue=nil, originportrange=nil, clientippassthroughmode=nil, sessionpersist=nil, sessionpersisttime=nil, ruletag=nil, status=nil, buid=nil, remoteauth=nil)
          @RuleId = ruleid
          @Protocol = protocol
          @PortRange = portrange
          @OriginType = origintype
          @OriginValue = originvalue
          @OriginPortRange = originportrange
          @ClientIPPassThroughMode = clientippassthroughmode
          @SessionPersist = sessionpersist
          @SessionPersistTime = sessionpersisttime
          @RuleTag = ruletag
          @Status = status
          @BuId = buid
          @RemoteAuth = remoteauth
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Protocol = params['Protocol']
          @PortRange = params['PortRange']
          @OriginType = params['OriginType']
          @OriginValue = params['OriginValue']
          @OriginPortRange = params['OriginPortRange']
          @ClientIPPassThroughMode = params['ClientIPPassThroughMode']
          @SessionPersist = params['SessionPersist']
          @SessionPersistTime = params['SessionPersistTime']
          @RuleTag = params['RuleTag']
          @Status = params['Status']
          @BuId = params['BuId']
          unless params['RemoteAuth'].nil?
            @RemoteAuth = L4ProxyRemoteAuth.new
            @RemoteAuth.deserialize(params['RemoteAuth'])
          end
        end
      end

      # 七层离线日志详细信息。
      class L7OfflineLog < TencentCloud::Common::AbstractModel
        # @param Domain: 离线日志域名。
        # @type Domain: String
        # @param Area: 日志所属区域，取值有：
        # <li>mainland：中国大陆境内; </li>
        # <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String
        # @param LogPacketName: 离线日志数据包名。
        # @type LogPacketName: String
        # @param Url: 离线日志下载地址。
        # @type Url: String
        # @param LogTime: 日志打包时间，此参数已经废弃。
        # @type LogTime: Integer
        # @param LogStartTime: 日志打包开始时间。
        # @type LogStartTime: String
        # @param LogEndTime: 日志打包结束时间。
        # @type LogEndTime: String
        # @param Size: 日志原始大小，单位 Byte。
        # @type Size: Integer

        attr_accessor :Domain, :Area, :LogPacketName, :Url, :LogTime, :LogStartTime, :LogEndTime, :Size

        def initialize(domain=nil, area=nil, logpacketname=nil, url=nil, logtime=nil, logstarttime=nil, logendtime=nil, size=nil)
          @Domain = domain
          @Area = area
          @LogPacketName = logpacketname
          @Url = url
          @LogTime = logtime
          @LogStartTime = logstarttime
          @LogEndTime = logendtime
          @Size = size
        end

        def deserialize(params)
          @Domain = params['Domain']
          @Area = params['Area']
          @LogPacketName = params['LogPacketName']
          @Url = params['Url']
          @LogTime = params['LogTime']
          @LogStartTime = params['LogStartTime']
          @LogEndTime = params['LogEndTime']
          @Size = params['Size']
        end
      end

      # 负载均衡实例信息。
      class LoadBalancer < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例 ID。
        # @type InstanceId: String
        # @param Name: 实例名称，可输入 1-200 个字符，允许字符为 a-z，A-Z，0-9，_，-。
        # @type Name: String
        # @param Type: 实例类型，取值有：
        # <li>HTTP：HTTP 专用型，支持添加 HTTP 专用型和通用型源站组，仅支持被站点加速相关服务引用（如域名服务和规则引擎）；</li>
        # <li>GENERAL：通用型，仅支持添加通用型源站组，能被站点加速服务（如域名服务和规则引擎）和四层代理引用。</li>
        # @type Type: String
        # @param HealthChecker: 健康检查策略。详情请参考 [健康检查策略介绍](https://cloud.tencent.com/document/product/1552/104228)。
        # @type HealthChecker: :class:`Tencentcloud::Teo.v20220901.models.HealthChecker`
        # @param SteeringPolicy: 源站组间的流量调度策略，取值有：
        # <li>Pritory：按优先级顺序进行故障转移 。</li>
        # @type SteeringPolicy: String
        # @param FailoverPolicy: 实际访问某源站失败时的请求重试策略，详情请参考 [请求重试策略介绍](https://cloud.tencent.com/document/product/1552/104227)，取值有：
        # <li>OtherOriginGroup：单次请求失败后，请求优先重试下一优先级源站组；</li>
        # <li>OtherRecordInOriginGroup：单次请求失败后，请求优先重试同源站组内的其他源站。</li>
        # @type FailoverPolicy: String
        # @param OriginGroupHealthStatus: 源站组健康状态。
        # @type OriginGroupHealthStatus: Array
        # @param Status: 负载均衡状态，取值有：
        # <li>Pending：部署中；</li>
        # <li>Deleting：删除中；</li>
        # <li>Running：已生效。</li>
        # @type Status: String
        # @param L4UsedList: 该负载均衡实例绑的四层代理实例的列表。
        # @type L4UsedList: Array
        # @param L7UsedList: 该负载均衡实例绑定的七层域名列表。
        # @type L7UsedList: Array

        attr_accessor :InstanceId, :Name, :Type, :HealthChecker, :SteeringPolicy, :FailoverPolicy, :OriginGroupHealthStatus, :Status, :L4UsedList, :L7UsedList

        def initialize(instanceid=nil, name=nil, type=nil, healthchecker=nil, steeringpolicy=nil, failoverpolicy=nil, origingrouphealthstatus=nil, status=nil, l4usedlist=nil, l7usedlist=nil)
          @InstanceId = instanceid
          @Name = name
          @Type = type
          @HealthChecker = healthchecker
          @SteeringPolicy = steeringpolicy
          @FailoverPolicy = failoverpolicy
          @OriginGroupHealthStatus = origingrouphealthstatus
          @Status = status
          @L4UsedList = l4usedlist
          @L7UsedList = l7usedlist
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['HealthChecker'].nil?
            @HealthChecker = HealthChecker.new
            @HealthChecker.deserialize(params['HealthChecker'])
          end
          @SteeringPolicy = params['SteeringPolicy']
          @FailoverPolicy = params['FailoverPolicy']
          unless params['OriginGroupHealthStatus'].nil?
            @OriginGroupHealthStatus = []
            params['OriginGroupHealthStatus'].each do |i|
              origingrouphealthstatus_tmp = OriginGroupHealthStatus.new
              origingrouphealthstatus_tmp.deserialize(i)
              @OriginGroupHealthStatus << origingrouphealthstatus_tmp
            end
          end
          @Status = params['Status']
          @L4UsedList = params['L4UsedList']
          @L7UsedList = params['L7UsedList']
        end
      end

      # 实时日志投递的输出格式。您可以直接通过 FormatType 参数使用指定预设日志输出格式（JSON Lines / csv），也可以在预设日志输出格式基础上，通过其他参数来自定义变体输出格式。
      class LogFormat < TencentCloud::Common::AbstractModel
        # @param FormatType: 日志投递的预设输出格式类型，取值有：
        # <li>json：使用预设日志输出格式 JSON Lines，单条日志中的字段以键值对方式呈现；</li>
        # <li>csv：使用预设日志输出格式 csv，单条日志中仅呈现字段值，不呈现字段名称。</li>
        # @type FormatType: String
        # @param BatchPrefix: 在每个日志投递批次之前添加的字符串。每个日志投递批次可能包含多条日志记录。
        # @type BatchPrefix: String
        # @param BatchSuffix: 在每个日志投递批次后附加的字符串。
        # @type BatchSuffix: String
        # @param RecordPrefix: 在每条日志记录之前添加的字符串。
        # @type RecordPrefix: String
        # @param RecordSuffix: 在每条日志记录后附加的字符串。
        # @type RecordSuffix: String
        # @param RecordDelimiter: 插入日志记录之间作为分隔符的字符串，取值有：
        # <li>\n：换行符；</li>
        # <li>\t：制表符；</li>
        # <li>，：半角逗号。</li>
        # @type RecordDelimiter: String
        # @param FieldDelimiter: 单条日志记录内，插入字段之间作为分隔符的字符串，取值有：
        # <li>\t：制表符；</li>
        # <li>，：半角逗号；</li>
        # <li>;：半角分号。</li>
        # @type FieldDelimiter: String

        attr_accessor :FormatType, :BatchPrefix, :BatchSuffix, :RecordPrefix, :RecordSuffix, :RecordDelimiter, :FieldDelimiter

        def initialize(formattype=nil, batchprefix=nil, batchsuffix=nil, recordprefix=nil, recordsuffix=nil, recorddelimiter=nil, fielddelimiter=nil)
          @FormatType = formattype
          @BatchPrefix = batchprefix
          @BatchSuffix = batchsuffix
          @RecordPrefix = recordprefix
          @RecordSuffix = recordsuffix
          @RecordDelimiter = recorddelimiter
          @FieldDelimiter = fielddelimiter
        end

        def deserialize(params)
          @FormatType = params['FormatType']
          @BatchPrefix = params['BatchPrefix']
          @BatchSuffix = params['BatchSuffix']
          @RecordPrefix = params['RecordPrefix']
          @RecordSuffix = params['RecordSuffix']
          @RecordDelimiter = params['RecordDelimiter']
          @FieldDelimiter = params['FieldDelimiter']
        end
      end

      # 托管规则的项配置
      class ManagedRuleAction < TencentCloud::Common::AbstractModel
        # @param RuleId: 托管规则组下的具体项，用于改写此单条规则项配置的内容，具体参考产品文档。
        # @type RuleId: String
        # @param Action: RuleId 中指定托管规则项的处置动作。 SecurityAction 的 Name 取值支持：<li>Deny：拦截，响应拦截页面；</li><li>Monitor：观察，不处理请求记录安全事件到日志中；</li><li>Disabled：未启用，不扫描请求跳过该规则。</li>
        # @type Action: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`

        attr_accessor :RuleId, :Action

        def initialize(ruleid=nil, action=nil)
          @RuleId = ruleid
          @Action = action
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          unless params['Action'].nil?
            @Action = SecurityAction.new
            @Action.deserialize(params['Action'])
          end
        end
      end

      # 托管规则自动更新选项
      class ManagedRuleAutoUpdate < TencentCloud::Common::AbstractModel
        # @param AutoUpdateToLatestVersion: 是否开启自动更新至最新版本。取值有：<li>on：开启</li><li>off：关闭</li>
        # @type AutoUpdateToLatestVersion: String
        # @param RulesetVersion: 当前使用的版本，格式符合ISO 8601标准，如2023-12-21T12:00:32Z，默认为空，仅出参。
        # @type RulesetVersion: String

        attr_accessor :AutoUpdateToLatestVersion, :RulesetVersion

        def initialize(autoupdatetolatestversion=nil, rulesetversion=nil)
          @AutoUpdateToLatestVersion = autoupdatetolatestversion
          @RulesetVersion = rulesetversion
        end

        def deserialize(params)
          @AutoUpdateToLatestVersion = params['AutoUpdateToLatestVersion']
          @RulesetVersion = params['RulesetVersion']
        end
      end

      # 托管规则详情
      class ManagedRuleDetail < TencentCloud::Common::AbstractModel
        # @param RuleId: 托管规则Id。
        # @type RuleId: String
        # @param RiskLevel: 托管规则的防护级别。取值有：<li>low：低风险，此规则风险较低，适用于非常严格控制环境下的访问场景，该等级规则可能造成较多的误报；</li><li>medium：中风险，表示此条规则风险正常，适用较为严格的防护场景；</li><li>high：高风险，表示此条规则风险较高，大多数场景不会产生误报；</li><li>extreme：超高风险，表示此条规则风险极高，基本不会产生误报；</li>
        # @type RiskLevel: String
        # @param Description: 规则描述。
        # @type Description: String
        # @param Tags: 规则标签。部分类型的规则不存在标签。
        # @type Tags: Array
        # @param RuleVersion: 规则所属版本。
        # @type RuleVersion: String

        attr_accessor :RuleId, :RiskLevel, :Description, :Tags, :RuleVersion

        def initialize(ruleid=nil, risklevel=nil, description=nil, tags=nil, ruleversion=nil)
          @RuleId = ruleid
          @RiskLevel = risklevel
          @Description = description
          @Tags = tags
          @RuleVersion = ruleversion
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RiskLevel = params['RiskLevel']
          @Description = params['Description']
          @Tags = params['Tags']
          @RuleVersion = params['RuleVersion']
        end
      end

      # 托管规则组配置。
      class ManagedRuleGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 托管规则的组名称，未指定配置的规则分组将按照默认配置处理，GroupId 的具体取值参考产品文档。
        # @type GroupId: String
        # @param SensitivityLevel: 托管规则组的防护级别。取值有：<li>loose：宽松，只包含超高风险规则，此时需配置Action，且RuleActions配置无效；</li><li>normal：正常，包含超高风险和高风险规则，此时需配置Action，且RuleActions配置无效；</li><li>strict：严格，包含超高风险、高风险和中风险规则，此时需配置Action，且RuleActions配置无效；</li><li>extreme：超严格，包含超高风险、高风险、中风险和低风险规则，此时需配置Action，且RuleActions配置无效；</li><li>custom：自定义，精细化策略，按单条规则配置处置方式，此时Action字段无效，使用RuleActions配置单条规则的精细化策略。</li>
        # @type SensitivityLevel: String
        # @param Action: 托管规则组的处置动作。SecurityAction 的 Name 取值支持：<li>Deny：拦截，响应拦截页面；</li><li>Monitor：观察，不处理请求记录安全事件到日志中；</li><li>Disabled：未启用，不扫描请求跳过该规则。</li>
        # @type Action: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`
        # @param RuleActions: 托管规则组下规则项的具体配置，仅在 SensitivityLevel 为 custom 时配置生效。
        # @type RuleActions: Array
        # @param MetaData: 托管规则组信息，仅出参。
        # @type MetaData: :class:`Tencentcloud::Teo.v20220901.models.ManagedRuleGroupMeta`

        attr_accessor :GroupId, :SensitivityLevel, :Action, :RuleActions, :MetaData

        def initialize(groupid=nil, sensitivitylevel=nil, action=nil, ruleactions=nil, metadata=nil)
          @GroupId = groupid
          @SensitivityLevel = sensitivitylevel
          @Action = action
          @RuleActions = ruleactions
          @MetaData = metadata
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @SensitivityLevel = params['SensitivityLevel']
          unless params['Action'].nil?
            @Action = SecurityAction.new
            @Action.deserialize(params['Action'])
          end
          unless params['RuleActions'].nil?
            @RuleActions = []
            params['RuleActions'].each do |i|
              managedruleaction_tmp = ManagedRuleAction.new
              managedruleaction_tmp.deserialize(i)
              @RuleActions << managedruleaction_tmp
            end
          end
          unless params['MetaData'].nil?
            @MetaData = ManagedRuleGroupMeta.new
            @MetaData.deserialize(params['MetaData'])
          end
        end
      end

      # 托管规则组信息
      class ManagedRuleGroupMeta < TencentCloud::Common::AbstractModel
        # @param GroupDetail: 托管规则组描述，仅出参。
        # @type GroupDetail: String
        # @param GroupName: 托管规则组名称，仅出参。
        # @type GroupName: String
        # @param RuleDetails: 当前托管规则组下的所有子规则信息，仅出参。
        # @type RuleDetails: Array

        attr_accessor :GroupDetail, :GroupName, :RuleDetails

        def initialize(groupdetail=nil, groupname=nil, ruledetails=nil)
          @GroupDetail = groupdetail
          @GroupName = groupname
          @RuleDetails = ruledetails
        end

        def deserialize(params)
          @GroupDetail = params['GroupDetail']
          @GroupName = params['GroupName']
          unless params['RuleDetails'].nil?
            @RuleDetails = []
            params['RuleDetails'].each do |i|
              managedruledetail_tmp = ManagedRuleDetail.new
              managedruledetail_tmp.deserialize(i)
              @RuleDetails << managedruledetail_tmp
            end
          end
        end
      end

      # Web安全的托管规则
      class ManagedRules < TencentCloud::Common::AbstractModel
        # @param Enabled: 托管规则是否开启。取值有：<li>on：开启，所有托管规则按配置生效；</li><li>off：关闭，所有托管规则不生效。</li>
        # @type Enabled: String
        # @param DetectionOnly: 评估模式是否开启，仅在 Enabled 参数为 on 时有效。取值有：<li>on：开启，表示所有托管规则以观察模式生效；</li><li>off：关闭，表示所有托管规则以实际配置生效。</li>
        # @type DetectionOnly: String
        # @param SemanticAnalysis: 托管规则语义分析选项是否开启，仅在 Enabled 参数为 on 时有效。取值有：<li>on：开启，对请求进行语义分析后进行处理；</li><li>off：关闭，对请求不进行语义分析，直接进行处理。</li> <br/>默认为 off。
        # @type SemanticAnalysis: String
        # @param AutoUpdate: 托管规则自动更新选项。
        # @type AutoUpdate: :class:`Tencentcloud::Teo.v20220901.models.ManagedRuleAutoUpdate`
        # @param ManagedRuleGroups: 托管规则组的配置。如果此结构传空数组或 GroupId 未包含在列表内将按照默认方式处理。
        # @type ManagedRuleGroups: Array

        attr_accessor :Enabled, :DetectionOnly, :SemanticAnalysis, :AutoUpdate, :ManagedRuleGroups

        def initialize(enabled=nil, detectiononly=nil, semanticanalysis=nil, autoupdate=nil, managedrulegroups=nil)
          @Enabled = enabled
          @DetectionOnly = detectiononly
          @SemanticAnalysis = semanticanalysis
          @AutoUpdate = autoupdate
          @ManagedRuleGroups = managedrulegroups
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @DetectionOnly = params['DetectionOnly']
          @SemanticAnalysis = params['SemanticAnalysis']
          unless params['AutoUpdate'].nil?
            @AutoUpdate = ManagedRuleAutoUpdate.new
            @AutoUpdate.deserialize(params['AutoUpdate'])
          end
          unless params['ManagedRuleGroups'].nil?
            @ManagedRuleGroups = []
            params['ManagedRuleGroups'].each do |i|
              managedrulegroup_tmp = ManagedRuleGroup.new
              managedrulegroup_tmp.deserialize(i)
              @ManagedRuleGroups << managedrulegroup_tmp
            end
          end
        end
      end

      # 浏览器缓存规则配置，用于设置 MaxAge 默认值，默认为关闭状态
      class MaxAge < TencentCloud::Common::AbstractModel
        # @param FollowOrigin: 是否遵循源站，取值有：
        # <li>on：遵循源站，忽略MaxAge 时间设置；</li>
        # <li>off：不遵循源站，使用MaxAge 时间设置。</li>
        # @type FollowOrigin: String
        # @param MaxAgeTime: MaxAge 时间设置，单位秒，最大365天。
        # 注意：时间为0，即不缓存。
        # @type MaxAgeTime: Integer

        attr_accessor :FollowOrigin, :MaxAgeTime

        def initialize(followorigin=nil, maxagetime=nil)
          @FollowOrigin = followorigin
          @MaxAgeTime = maxagetime
        end

        def deserialize(params)
          @FollowOrigin = params['FollowOrigin']
          @MaxAgeTime = params['MaxAgeTime']
        end
      end

      # 浏览器缓存 TTL 配置参数。
      class MaxAgeParameters < TencentCloud::Common::AbstractModel
        # @param FollowOrigin: 遵循源站 Cache-Control 开关，取值有：
        # <li>on：遵循源站，忽略 CacheTime 时间设置；</li>
        # <li>off：不遵循源站，使用 CacheTime 时间设置。</li>
        # @type FollowOrigin: String
        # @param CacheTime: 自定义缓存时间数值，单位为秒，取值：0～315360000。<br>注意：当 FollowOrigin 为 off 时，表示不遵循源站，使用 CacheTime 设置缓存时间，否则此字段不生效。
        # @type CacheTime: Integer

        attr_accessor :FollowOrigin, :CacheTime

        def initialize(followorigin=nil, cachetime=nil)
          @FollowOrigin = followorigin
          @CacheTime = cachetime
        end

        def deserialize(params)
          @FollowOrigin = params['FollowOrigin']
          @CacheTime = params['CacheTime']
        end
      end

      # 正文传输最小速率阈值的具体配置。
      class MinimalRequestBodyTransferRate < TencentCloud::Common::AbstractModel
        # @param MinimalAvgTransferRateThreshold: 正文传输最小速率阈值，单位仅支持bps。
        # @type MinimalAvgTransferRateThreshold: String
        # @param CountingPeriod: 正文传输最小速率统计时间范围，取值有：<li>10s：10秒；</li><li>30s：30秒；</li><li>60s：60秒；</li><li>120s：120秒。</li>
        # @type CountingPeriod: String
        # @param Enabled: 正文传输最小速率阈值是否开启。取值有：<li>on：开启；</li><li>off：关闭。</li>
        # @type Enabled: String

        attr_accessor :MinimalAvgTransferRateThreshold, :CountingPeriod, :Enabled

        def initialize(minimalavgtransferratethreshold=nil, countingperiod=nil, enabled=nil)
          @MinimalAvgTransferRateThreshold = minimalavgtransferratethreshold
          @CountingPeriod = countingperiod
          @Enabled = enabled
        end

        def deserialize(params)
          @MinimalAvgTransferRateThreshold = params['MinimalAvgTransferRateThreshold']
          @CountingPeriod = params['CountingPeriod']
          @Enabled = params['Enabled']
        end
      end

      # ModifyAccelerationDomain请求参数结构体
      class ModifyAccelerationDomainRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 加速域名所属站点ID。
        # @type ZoneId: String
        # @param DomainName: 加速域名名称。
        # @type DomainName: String
        # @param OriginInfo: 源站信息。
        # @type OriginInfo: :class:`Tencentcloud::Teo.v20220901.models.OriginInfo`
        # @param OriginProtocol: 回源协议，取值有：
        # <li>FOLLOW: 协议跟随；</li>
        # <li>HTTP: HTTP协议回源；</li>
        # <li>HTTPS: HTTPS协议回源。</li>
        # <li>不填保持原有配置。</li>
        # @type OriginProtocol: String
        # @param HttpOriginPort: HTTP回源端口，取值为1-65535，当OriginProtocol=FOLLOW/HTTP时生效, 不填保持原有配置。
        # @type HttpOriginPort: Integer
        # @param HttpsOriginPort: HTTPS回源端口，取值为1-65535，当OriginProtocol=FOLLOW/HTTPS时生效，不填保持原有配置。
        # @type HttpsOriginPort: Integer
        # @param IPv6Status: IPv6状态，取值有：
        # <li>follow：遵循站点IPv6配置；</li>
        # <li>on：开启状态；</li>
        # <li>off：关闭状态。</li>
        # <li>不填保持原有配置。</li>
        # @type IPv6Status: String

        attr_accessor :ZoneId, :DomainName, :OriginInfo, :OriginProtocol, :HttpOriginPort, :HttpsOriginPort, :IPv6Status

        def initialize(zoneid=nil, domainname=nil, origininfo=nil, originprotocol=nil, httporiginport=nil, httpsoriginport=nil, ipv6status=nil)
          @ZoneId = zoneid
          @DomainName = domainname
          @OriginInfo = origininfo
          @OriginProtocol = originprotocol
          @HttpOriginPort = httporiginport
          @HttpsOriginPort = httpsoriginport
          @IPv6Status = ipv6status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @DomainName = params['DomainName']
          unless params['OriginInfo'].nil?
            @OriginInfo = OriginInfo.new
            @OriginInfo.deserialize(params['OriginInfo'])
          end
          @OriginProtocol = params['OriginProtocol']
          @HttpOriginPort = params['HttpOriginPort']
          @HttpsOriginPort = params['HttpsOriginPort']
          @IPv6Status = params['IPv6Status']
        end
      end

      # ModifyAccelerationDomain返回参数结构体
      class ModifyAccelerationDomainResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAccelerationDomainStatuses请求参数结构体
      class ModifyAccelerationDomainStatusesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 加速域名所属站点ID。
        # @type ZoneId: String
        # @param DomainNames: 要执行状态变更的加速域名列表。
        # @type DomainNames: Array
        # @param Status: 加速域名状态，取值有：
        # <li>online：启用；</li>
        # <li>offline：停用。</li>
        # @type Status: String
        # @param Force: 是否强制停用。当域名存在关联资源（如马甲域名、流量调度功能）时，是否强制停用该域名，取值有：
        # <li> true：停用该域名及所有关联资源；</li>
        # <li> false：当该加速域名存在关联资源时，不允许停用。</li>不填写，默认值为：false。
        # @type Force: Boolean

        attr_accessor :ZoneId, :DomainNames, :Status, :Force

        def initialize(zoneid=nil, domainnames=nil, status=nil, force=nil)
          @ZoneId = zoneid
          @DomainNames = domainnames
          @Status = status
          @Force = force
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @DomainNames = params['DomainNames']
          @Status = params['Status']
          @Force = params['Force']
        end
      end

      # ModifyAccelerationDomainStatuses返回参数结构体
      class ModifyAccelerationDomainStatusesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAliasDomain请求参数结构体
      class ModifyAliasDomainRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param AliasName: 别称域名名称。
        # @type AliasName: String
        # @param TargetName: 目标域名名称。
        # @type TargetName: String
        # @param CertType: 证书配置，取值有：
        # <li> none：不配置；</li>
        # <li> hosting：SSL托管证书；</li>
        # <li> apply：申请免费证书。</li>不填写保持原有配置。
        # @type CertType: String
        # @param CertId: 当 CertType 取值为 hosting 时填入相应证书 ID。
        # @type CertId: Array

        attr_accessor :ZoneId, :AliasName, :TargetName, :CertType, :CertId

        def initialize(zoneid=nil, aliasname=nil, targetname=nil, certtype=nil, certid=nil)
          @ZoneId = zoneid
          @AliasName = aliasname
          @TargetName = targetname
          @CertType = certtype
          @CertId = certid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @AliasName = params['AliasName']
          @TargetName = params['TargetName']
          @CertType = params['CertType']
          @CertId = params['CertId']
        end
      end

      # ModifyAliasDomain返回参数结构体
      class ModifyAliasDomainResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAliasDomainStatus请求参数结构体
      class ModifyAliasDomainStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Paused: 别称域名状态，取值有：
        # <li> false：开启别称域名；</li>
        # <li> true：关闭别称域名。</li>
        # @type Paused: Boolean
        # @param AliasNames: 待修改状态的别称域名名称。如果为空，则不执行修改状态操作。
        # @type AliasNames: Array

        attr_accessor :ZoneId, :Paused, :AliasNames

        def initialize(zoneid=nil, paused=nil, aliasnames=nil)
          @ZoneId = zoneid
          @Paused = paused
          @AliasNames = aliasnames
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Paused = params['Paused']
          @AliasNames = params['AliasNames']
        end
      end

      # ModifyAliasDomainStatus返回参数结构体
      class ModifyAliasDomainStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApplicationProxy请求参数结构体
      class ModifyApplicationProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 代理 ID。
        # @type ProxyId: String
        # @param ProxyName: 当 ProxyType=hostname 时，表示域名或子域名；
        # 当 ProxyType=instance 时，表示代理名称。
        # @type ProxyName: String
        # @param SessionPersistTime: 会话保持时间，取值范围：30-3600，单位：秒。
        # 不填写保持原有配置。
        # @type SessionPersistTime: Integer
        # @param ProxyType: 四层代理模式，取值有：
        # <li>instance：表示实例模式。</li>不填写使用默认值instance。
        # @type ProxyType: String
        # @param Ipv6: Ipv6 访问配置，不填写保持原有配置。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220901.models.Ipv6`
        # @param AccelerateMainland: 中国大陆加速优化配置。 不填写表示保持原有配置。
        # @type AccelerateMainland: :class:`Tencentcloud::Teo.v20220901.models.AccelerateMainland`

        attr_accessor :ZoneId, :ProxyId, :ProxyName, :SessionPersistTime, :ProxyType, :Ipv6, :AccelerateMainland

        def initialize(zoneid=nil, proxyid=nil, proxyname=nil, sessionpersisttime=nil, proxytype=nil, ipv6=nil, acceleratemainland=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @ProxyName = proxyname
          @SessionPersistTime = sessionpersisttime
          @ProxyType = proxytype
          @Ipv6 = ipv6
          @AccelerateMainland = acceleratemainland
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @SessionPersistTime = params['SessionPersistTime']
          @ProxyType = params['ProxyType']
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          unless params['AccelerateMainland'].nil?
            @AccelerateMainland = AccelerateMainland.new
            @AccelerateMainland.deserialize(params['AccelerateMainland'])
          end
        end
      end

      # ModifyApplicationProxy返回参数结构体
      class ModifyApplicationProxyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApplicationProxyRule请求参数结构体
      class ModifyApplicationProxyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyId: 代理ID。
        # @type ProxyId: String
        # @param RuleId: 规则ID。
        # @type RuleId: String
        # @param OriginType: 源站类型，取值有：
        # <li>custom：手动添加；</li>
        # <li>origins：源站组。</li>
        # @type OriginType: String
        # @param Port: 端口，支持格式：
        # <li>80：80端口；</li>
        # <li>81-90：81至90端口。</li>
        # @type Port: Array
        # @param Proto: 协议，取值有：
        # <li>TCP：TCP协议；</li>
        # <li>UDP：UDP协议。</li>不填保持原有值。
        # @type Proto: String
        # @param OriginValue: 源站信息：
        # <li>当 OriginType 为 custom 时，表示一个或多个源站，如`["8.8.8.8","9.9.9.9"]` 或 `OriginValue=["test.com"]`；</li>
        # <li>当 OriginType 为 origins 时，要求有且仅有一个元素，表示源站组ID，如`["origin-537f5b41-162a-11ed-abaa-525400c5da15"]`。</li>

        # 不填保持原有值。
        # @type OriginValue: Array
        # @param ForwardClientIp: 传递客户端IP，取值有：
        # <li>TOA：TOA（仅Proto=TCP时可选）；</li>
        # <li>PPV1：Proxy Protocol传递，协议版本V1（仅Proto=TCP时可选）；</li>
        # <li>PPV2：Proxy Protocol传递，协议版本V2；</li>
        # <li>OFF：不传递。</li>不填保持原有值。
        # @type ForwardClientIp: String
        # @param SessionPersist: 是否开启会话保持，取值有：
        # <li>true：开启；</li>
        # <li>false：关闭。</li>不填为false。
        # @type SessionPersist: Boolean
        # @param SessionPersistTime: 会话保持的时间，只有当SessionPersist为true时，该值才会生效。
        # @type SessionPersistTime: Integer
        # @param OriginPort: 源站端口，支持格式：
        # <li>单端口：80；</li>
        # <li>端口段：81-90，81至90端口。</li>
        # @type OriginPort: String
        # @param RuleTag: 规则标签。不填保持原有值。
        # @type RuleTag: String

        attr_accessor :ZoneId, :ProxyId, :RuleId, :OriginType, :Port, :Proto, :OriginValue, :ForwardClientIp, :SessionPersist, :SessionPersistTime, :OriginPort, :RuleTag

        def initialize(zoneid=nil, proxyid=nil, ruleid=nil, origintype=nil, port=nil, proto=nil, originvalue=nil, forwardclientip=nil, sessionpersist=nil, sessionpersisttime=nil, originport=nil, ruletag=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleId = ruleid
          @OriginType = origintype
          @Port = port
          @Proto = proto
          @OriginValue = originvalue
          @ForwardClientIp = forwardclientip
          @SessionPersist = sessionpersist
          @SessionPersistTime = sessionpersisttime
          @OriginPort = originport
          @RuleTag = ruletag
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
          @OriginType = params['OriginType']
          @Port = params['Port']
          @Proto = params['Proto']
          @OriginValue = params['OriginValue']
          @ForwardClientIp = params['ForwardClientIp']
          @SessionPersist = params['SessionPersist']
          @SessionPersistTime = params['SessionPersistTime']
          @OriginPort = params['OriginPort']
          @RuleTag = params['RuleTag']
        end
      end

      # ModifyApplicationProxyRule返回参数结构体
      class ModifyApplicationProxyRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApplicationProxyRuleStatus请求参数结构体
      class ModifyApplicationProxyRuleStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyId: 代理ID。
        # @type ProxyId: String
        # @param RuleId: 规则ID。
        # @type RuleId: String
        # @param Status: 状态，取值有：
        # <li>offline: 停用；</li>
        # <li>online: 启用。</li>
        # @type Status: String

        attr_accessor :ZoneId, :ProxyId, :RuleId, :Status

        def initialize(zoneid=nil, proxyid=nil, ruleid=nil, status=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleId = ruleid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
          @Status = params['Status']
        end
      end

      # ModifyApplicationProxyRuleStatus返回参数结构体
      class ModifyApplicationProxyRuleStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyApplicationProxyStatus请求参数结构体
      class ModifyApplicationProxyStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param ProxyId: 代理ID。
        # @type ProxyId: String
        # @param Status: 状态，取值有：
        # <li>offline: 停用；</li>
        # <li>online: 启用。</li>
        # @type Status: String

        attr_accessor :ZoneId, :ProxyId, :Status

        def initialize(zoneid=nil, proxyid=nil, status=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @Status = params['Status']
        end
      end

      # ModifyApplicationProxyStatus返回参数结构体
      class ModifyApplicationProxyStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyContentIdentifier请求参数结构体
      class ModifyContentIdentifierRequest < TencentCloud::Common::AbstractModel
        # @param ContentId: 内容标识符 ID。
        # @type ContentId: String
        # @param Description: 内容标识符描述，长度限制不超过 20 个字符。
        # @type Description: String

        attr_accessor :ContentId, :Description

        def initialize(contentid=nil, description=nil)
          @ContentId = contentid
          @Description = description
        end

        def deserialize(params)
          @ContentId = params['ContentId']
          @Description = params['Description']
        end
      end

      # ModifyContentIdentifier返回参数结构体
      class ModifyContentIdentifierResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCustomErrorPage请求参数结构体
      class ModifyCustomErrorPageRequest < TencentCloud::Common::AbstractModel
        # @param PageId: 自定义错误页面 ID。
        # @type PageId: String
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Name: 自定义错误页名称，名称为2 - 60个字符。
        # @type Name: String
        # @param Description: 自定义错误页描述，描述内容不超过60个字符。
        # @type Description: String
        # @param ContentType: 自定义错误页面类型，取值有：<li>text/html。 </li><li>application/json。</li><li>plain/text。</li><li>text/xml。</li>
        # @type ContentType: String
        # @param Content: 自定义错误页面内容。内容不超过 2KB。
        # @type Content: String

        attr_accessor :PageId, :ZoneId, :Name, :Description, :ContentType, :Content

        def initialize(pageid=nil, zoneid=nil, name=nil, description=nil, contenttype=nil, content=nil)
          @PageId = pageid
          @ZoneId = zoneid
          @Name = name
          @Description = description
          @ContentType = contenttype
          @Content = content
        end

        def deserialize(params)
          @PageId = params['PageId']
          @ZoneId = params['ZoneId']
          @Name = params['Name']
          @Description = params['Description']
          @ContentType = params['ContentType']
          @Content = params['Content']
        end
      end

      # ModifyCustomErrorPage返回参数结构体
      class ModifyCustomErrorPageResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDDoSProtection请求参数结构体
      class ModifyDDoSProtectionRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param DDoSProtection: 独立 DDoS 防护配置。
        # @type DDoSProtection: :class:`Tencentcloud::Teo.v20220901.models.DDoSProtection`

        attr_accessor :ZoneId, :DDoSProtection

        def initialize(zoneid=nil, ddosprotection=nil)
          @ZoneId = zoneid
          @DDoSProtection = ddosprotection
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['DDoSProtection'].nil?
            @DDoSProtection = DDoSProtection.new
            @DDoSProtection.deserialize(params['DDoSProtection'])
          end
        end
      end

      # ModifyDDoSProtection返回参数结构体
      class ModifyDDoSProtectionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDnsRecords请求参数结构体
      class ModifyDnsRecordsRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID 。
        # @type ZoneId: String
        # @param DnsRecords: DNS 记录修改数据列表，一次最多修改100条。
        # @type DnsRecords: Array

        attr_accessor :ZoneId, :DnsRecords

        def initialize(zoneid=nil, dnsrecords=nil)
          @ZoneId = zoneid
          @DnsRecords = dnsrecords
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['DnsRecords'].nil?
            @DnsRecords = []
            params['DnsRecords'].each do |i|
              dnsrecord_tmp = DnsRecord.new
              dnsrecord_tmp.deserialize(i)
              @DnsRecords << dnsrecord_tmp
            end
          end
        end
      end

      # ModifyDnsRecords返回参数结构体
      class ModifyDnsRecordsResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDnsRecordsStatus请求参数结构体
      class ModifyDnsRecordsStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RecordsToEnable: 待启用的 DNS 记录 ID 列表，上限：200。<br>注意：同个 DNS 记录 ID 不能同时存在于 RecordsToEnable 和 RecordsToDisable。
        # @type RecordsToEnable: Array
        # @param RecordsToDisable: 待停用的 DNS 记录 ID 列表，上限：200。<br>注意：同个 DNS 记录 ID 不能同时存在于 RecordsToEnable 和 RecordsToDisable。
        # @type RecordsToDisable: Array

        attr_accessor :ZoneId, :RecordsToEnable, :RecordsToDisable

        def initialize(zoneid=nil, recordstoenable=nil, recordstodisable=nil)
          @ZoneId = zoneid
          @RecordsToEnable = recordstoenable
          @RecordsToDisable = recordstodisable
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RecordsToEnable = params['RecordsToEnable']
          @RecordsToDisable = params['RecordsToDisable']
        end
      end

      # ModifyDnsRecordsStatus返回参数结构体
      class ModifyDnsRecordsStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFunction请求参数结构体
      class ModifyFunctionRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param FunctionId: 函数 ID。
        # @type FunctionId: String
        # @param Remark: 函数描述，最大支持 60 个字符，不填写保持原有配置。
        # @type Remark: String
        # @param Content: 函数内容，当前仅支持 JavaScript 代码，最大支持 5MB 大小，不填写保持原有配置。
        # @type Content: String

        attr_accessor :ZoneId, :FunctionId, :Remark, :Content

        def initialize(zoneid=nil, functionid=nil, remark=nil, content=nil)
          @ZoneId = zoneid
          @FunctionId = functionid
          @Remark = remark
          @Content = content
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @FunctionId = params['FunctionId']
          @Remark = params['Remark']
          @Content = params['Content']
        end
      end

      # ModifyFunction返回参数结构体
      class ModifyFunctionResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFunctionRulePriority请求参数结构体
      class ModifyFunctionRulePriorityRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleIds: 规则 ID 列表，必须填入调整优先级后的所有规则 ID，多条规则执行顺序依次从上往下，不填写保持原优先级顺序。
        # @type RuleIds: Array

        attr_accessor :ZoneId, :RuleIds

        def initialize(zoneid=nil, ruleids=nil)
          @ZoneId = zoneid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleIds = params['RuleIds']
        end
      end

      # ModifyFunctionRulePriority返回参数结构体
      class ModifyFunctionRulePriorityResponse < TencentCloud::Common::AbstractModel
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

      # ModifyFunctionRule请求参数结构体
      class ModifyFunctionRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleId: 规则 ID。
        # @type RuleId: String
        # @param FunctionRuleConditions: 规则条件列表，相同触发规则的不同条件匹配项之间为或关系，不填写保持原有配置。
        # @type FunctionRuleConditions: Array
        # @param FunctionId: 函数 ID，命中触发规则条件后执行的函数，不填写保持原有配置。
        # @type FunctionId: String
        # @param Remark: 规则描述，最大支持 60 个字符，不填写保持原有配置。
        # @type Remark: String

        attr_accessor :ZoneId, :RuleId, :FunctionRuleConditions, :FunctionId, :Remark

        def initialize(zoneid=nil, ruleid=nil, functionruleconditions=nil, functionid=nil, remark=nil)
          @ZoneId = zoneid
          @RuleId = ruleid
          @FunctionRuleConditions = functionruleconditions
          @FunctionId = functionid
          @Remark = remark
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleId = params['RuleId']
          unless params['FunctionRuleConditions'].nil?
            @FunctionRuleConditions = []
            params['FunctionRuleConditions'].each do |i|
              functionrulecondition_tmp = FunctionRuleCondition.new
              functionrulecondition_tmp.deserialize(i)
              @FunctionRuleConditions << functionrulecondition_tmp
            end
          end
          @FunctionId = params['FunctionId']
          @Remark = params['Remark']
        end
      end

      # ModifyFunctionRule返回参数结构体
      class ModifyFunctionRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyHostsCertificate请求参数结构体
      class ModifyHostsCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Hosts: 需要修改证书配置的加速域名。
        # @type Hosts: Array
        # @param Mode: 配置服务端证书的模式，取值有：
        # <li>disable：不配置服务端证书；</li>
        # <li>eofreecert：配置 EdgeOne 免费服务端证书；</li>
        # <li>sslcert：配置 SSL 托管服务端证书；</li>
        # 不填写表示服务端证书保持原有配置。
        # @type Mode: String
        # @param ServerCertInfo: SSL 证书配置，本参数仅在 mode 为 sslcert 时生效，传入对应证书的 CertId 即可。您可以前往 [SSL 证书列表](https://console.cloud.tencent.com/ssl) 查看 CertId。
        # @type ServerCertInfo: Array
        # @param ApplyType: 托管类型，取值有：
        # <li>none：不托管EO；</li>
        # <li>apply：托管EO</li>
        # 不填，默认取值为none。
        # @type ApplyType: String
        # @param ClientCertInfo: 在边缘双向认证场景下，该字段为客户端的 CA 证书，部署在 EO 节点内，用于客户端对 EO 节点进行认证。默认关闭，不填写表示保持原有配置。
        # @type ClientCertInfo: :class:`Tencentcloud::Teo.v20220901.models.MutualTLS`

        attr_accessor :ZoneId, :Hosts, :Mode, :ServerCertInfo, :ApplyType, :ClientCertInfo
        extend Gem::Deprecate
        deprecate :ApplyType, :none, 2025, 7
        deprecate :ApplyType=, :none, 2025, 7

        def initialize(zoneid=nil, hosts=nil, mode=nil, servercertinfo=nil, applytype=nil, clientcertinfo=nil)
          @ZoneId = zoneid
          @Hosts = hosts
          @Mode = mode
          @ServerCertInfo = servercertinfo
          @ApplyType = applytype
          @ClientCertInfo = clientcertinfo
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Hosts = params['Hosts']
          @Mode = params['Mode']
          unless params['ServerCertInfo'].nil?
            @ServerCertInfo = []
            params['ServerCertInfo'].each do |i|
              servercertinfo_tmp = ServerCertInfo.new
              servercertinfo_tmp.deserialize(i)
              @ServerCertInfo << servercertinfo_tmp
            end
          end
          @ApplyType = params['ApplyType']
          unless params['ClientCertInfo'].nil?
            @ClientCertInfo = MutualTLS.new
            @ClientCertInfo.deserialize(params['ClientCertInfo'])
          end
        end
      end

      # ModifyHostsCertificate返回参数结构体
      class ModifyHostsCertificateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyL4Proxy请求参数结构体
      class ModifyL4ProxyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 应用 ID。
        # @type ProxyId: String
        # @param Ipv6: 是否开启 IPv6 访问。 不填该参数时，表示不修改该配置。该配置仅在部分加速区域和安全防护配置下支持开启，详情请参考 [新建四层代理实例](https://cloud.tencent.com/document/product/1552/90025) 。取值为：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Ipv6: String
        # @param AccelerateMainland: 是否开启中国大陆网络优化。不填该参数时，表示不修改该配置。该配置仅在部分加速区域和安全防护配置下支持开启，详情请参考 [新建四层代理实例](https://cloud.tencent.com/document/product/1552/90025) 。取值为：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type AccelerateMainland: String

        attr_accessor :ZoneId, :ProxyId, :Ipv6, :AccelerateMainland

        def initialize(zoneid=nil, proxyid=nil, ipv6=nil, acceleratemainland=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Ipv6 = ipv6
          @AccelerateMainland = acceleratemainland
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @Ipv6 = params['Ipv6']
          @AccelerateMainland = params['AccelerateMainland']
        end
      end

      # ModifyL4Proxy返回参数结构体
      class ModifyL4ProxyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyL4ProxyRules请求参数结构体
      class ModifyL4ProxyRulesRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 四层代理实例 ID。
        # @type ProxyId: String
        # @param L4ProxyRules: 转发规则列表。单次最多支持 200 条转发规则。
        # 注意：L4ProxyRule 在此处使用时，RuleId 为必填字段；Protocol、PortRange、OriginType、OriginValue、OriginPortRange、ClientIPPassThroughMode、SessionPersist、SessionPersistTime、RuleTag 均为选填字段，不填写表示不修改；Status 请勿填写。
        # @type L4ProxyRules: Array

        attr_accessor :ZoneId, :ProxyId, :L4ProxyRules

        def initialize(zoneid=nil, proxyid=nil, l4proxyrules=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @L4ProxyRules = l4proxyrules
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          unless params['L4ProxyRules'].nil?
            @L4ProxyRules = []
            params['L4ProxyRules'].each do |i|
              l4proxyrule_tmp = L4ProxyRule.new
              l4proxyrule_tmp.deserialize(i)
              @L4ProxyRules << l4proxyrule_tmp
            end
          end
        end
      end

      # ModifyL4ProxyRules返回参数结构体
      class ModifyL4ProxyRulesResponse < TencentCloud::Common::AbstractModel
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

      # ModifyL4ProxyRulesStatus请求参数结构体
      class ModifyL4ProxyRulesStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 四层代理实例 ID。
        # @type ProxyId: String
        # @param RuleIds: 转发规则 ID 列表。单次最多支持 200 条转发规则。
        # @type RuleIds: Array
        # @param Status: 转发规则状态，取值有：
        # <li>online：启用；</li>
        # <li>offline：停用。</li>
        # @type Status: String

        attr_accessor :ZoneId, :ProxyId, :RuleIds, :Status

        def initialize(zoneid=nil, proxyid=nil, ruleids=nil, status=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @RuleIds = ruleids
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @RuleIds = params['RuleIds']
          @Status = params['Status']
        end
      end

      # ModifyL4ProxyRulesStatus返回参数结构体
      class ModifyL4ProxyRulesStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyL4ProxyStatus请求参数结构体
      class ModifyL4ProxyStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ProxyId: 四层代理实例 ID。
        # @type ProxyId: String
        # @param Status: 四层代理实例状态，取值有：
        # <li>online：启用；</li>
        # <li>offline：停用。</li>
        # @type Status: String

        attr_accessor :ZoneId, :ProxyId, :Status

        def initialize(zoneid=nil, proxyid=nil, status=nil)
          @ZoneId = zoneid
          @ProxyId = proxyid
          @Status = status
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ProxyId = params['ProxyId']
          @Status = params['Status']
        end
      end

      # ModifyL4ProxyStatus返回参数结构体
      class ModifyL4ProxyStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyL7AccRulePriority请求参数结构体
      class ModifyL7AccRulePriorityRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleIds: 站点 ID 下完整的规则 ID 列表，规则 ID 列表可以通过 [查询七层加速规则](https://cloud.tencent.com/document/product/1552/115820) 获取，最终优先级顺序将调整成规则 ID 列表的顺序，从前往后依次执行。
        # @type RuleIds: Array

        attr_accessor :ZoneId, :RuleIds

        def initialize(zoneid=nil, ruleids=nil)
          @ZoneId = zoneid
          @RuleIds = ruleids
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleIds = params['RuleIds']
        end
      end

      # ModifyL7AccRulePriority返回参数结构体
      class ModifyL7AccRulePriorityResponse < TencentCloud::Common::AbstractModel
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

      # ModifyL7AccRule请求参数结构体
      class ModifyL7AccRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Rule: 需要修改的规则。您可以先通过 DescribeL7AccRules 接口来获取需要修改的规则的 Ruleid，然后传入修改后的规则内容，原规则内容会被覆盖式更新。
        # @type Rule: :class:`Tencentcloud::Teo.v20220901.models.RuleEngineItem`

        attr_accessor :ZoneId, :Rule

        def initialize(zoneid=nil, rule=nil)
          @ZoneId = zoneid
          @Rule = rule
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['Rule'].nil?
            @Rule = RuleEngineItem.new
            @Rule.deserialize(params['Rule'])
          end
        end
      end

      # ModifyL7AccRule返回参数结构体
      class ModifyL7AccRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifyL7AccSetting请求参数结构体
      class ModifyL7AccSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ZoneConfig: 站点加速全局配置，该参数中的配置会对站点下的所有域名生效。您只需直接修改所需的配置，未传入的其他配置将保持原有状态。

        # @type ZoneConfig: :class:`Tencentcloud::Teo.v20220901.models.ZoneConfig`

        attr_accessor :ZoneId, :ZoneConfig

        def initialize(zoneid=nil, zoneconfig=nil)
          @ZoneId = zoneid
          @ZoneConfig = zoneconfig
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['ZoneConfig'].nil?
            @ZoneConfig = ZoneConfig.new
            @ZoneConfig.deserialize(params['ZoneConfig'])
          end
        end
      end

      # ModifyL7AccSetting返回参数结构体
      class ModifyL7AccSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyLoadBalancer请求参数结构体
      class ModifyLoadBalancerRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param InstanceId: 负载均衡实例 ID。
        # @type InstanceId: String
        # @param Name: 实例名称，可输入 1-200 个字符，允许字符为 a-z，A-Z，0-9，_，-。不填写表示维持原有配置。
        # @type Name: String
        # @param OriginGroups: 源站组列表及其对应的容灾调度优先级。详情请参考 [快速创建负载均衡实例](https://cloud.tencent.com/document/product/1552/104223) 中的示例场景。不填写表示维持原有配置。
        # @type OriginGroups: Array
        # @param HealthChecker: 健康检查策略。详情请参考 [健康检查策略介绍](https://cloud.tencent.com/document/product/1552/104228)。不填写表示维持原有配置。
        # @type HealthChecker: :class:`Tencentcloud::Teo.v20220901.models.HealthChecker`
        # @param SteeringPolicy: 源站组间的流量调度策略，取值有：
        # <li>Pritory：按优先级顺序进行故障转移 。</li>不填写表示维持原有配置。
        # @type SteeringPolicy: String
        # @param FailoverPolicy: 实际访问某源站失败时的请求重试策略，详情请参考 [请求重试策略介绍](https://cloud.tencent.com/document/product/1552/104227)，取值有：
        # <li>OtherOriginGroup：单次请求失败后，请求优先重试下一优先级源站组；</li>
        # <li>OtherRecordInOriginGroup：单次请求失败后，请求优先重试同源站组内的其他源站。</li>不填写表示维持原有配置。
        # @type FailoverPolicy: String

        attr_accessor :ZoneId, :InstanceId, :Name, :OriginGroups, :HealthChecker, :SteeringPolicy, :FailoverPolicy

        def initialize(zoneid=nil, instanceid=nil, name=nil, origingroups=nil, healthchecker=nil, steeringpolicy=nil, failoverpolicy=nil)
          @ZoneId = zoneid
          @InstanceId = instanceid
          @Name = name
          @OriginGroups = origingroups
          @HealthChecker = healthchecker
          @SteeringPolicy = steeringpolicy
          @FailoverPolicy = failoverpolicy
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          unless params['OriginGroups'].nil?
            @OriginGroups = []
            params['OriginGroups'].each do |i|
              origingroupinloadbalancer_tmp = OriginGroupInLoadBalancer.new
              origingroupinloadbalancer_tmp.deserialize(i)
              @OriginGroups << origingroupinloadbalancer_tmp
            end
          end
          unless params['HealthChecker'].nil?
            @HealthChecker = HealthChecker.new
            @HealthChecker.deserialize(params['HealthChecker'])
          end
          @SteeringPolicy = params['SteeringPolicy']
          @FailoverPolicy = params['FailoverPolicy']
        end
      end

      # ModifyLoadBalancer返回参数结构体
      class ModifyLoadBalancerResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMultiPathGatewayLine请求参数结构体
      class ModifyMultiPathGatewayLineRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GatewayId: 多通道安全加速网关 ID 。
        # @type GatewayId: String
        # @param LineId: 线路 ID ， 取值有:
        # <li> line-1： EdgeOne 四层代理线路，支持修改实例和规则，不支持删除；</li>
        # <li> line-2 及以上：EdgeOne 四层代理线路或者自定义线路，支持修改、删除实例和规则。</li>
        # @type LineId: String
        # @param LineType: 线路类型，取值有：
        # <li>proxy ：EdgeOne 四层代理线路，支持修改实例和规则，不支持删除；</li>
        # <li>custom ：自定义线路，支持编辑、删除实例和规则。</li>
        # @type LineType: String
        # @param LineAddress: 线路地址，格式为 host:port，直连线路（ LineType 取值为 direct ）不允许修改，其余类型支持修改。
        # @type LineAddress: String
        # @param ProxyId: 四层代理实例 ID  ，当线路类型 LineType  取值为 proxy（EdgeOne 四层代理）可传入，进行修改。
        # @type ProxyId: String
        # @param RuleId: 转发规则 ID ，当线路类型 LineType 取值为 proxy（EdgeOne 四层代理）可传入，进行修改。
        # @type RuleId: String

        attr_accessor :ZoneId, :GatewayId, :LineId, :LineType, :LineAddress, :ProxyId, :RuleId

        def initialize(zoneid=nil, gatewayid=nil, lineid=nil, linetype=nil, lineaddress=nil, proxyid=nil, ruleid=nil)
          @ZoneId = zoneid
          @GatewayId = gatewayid
          @LineId = lineid
          @LineType = linetype
          @LineAddress = lineaddress
          @ProxyId = proxyid
          @RuleId = ruleid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GatewayId = params['GatewayId']
          @LineId = params['LineId']
          @LineType = params['LineType']
          @LineAddress = params['LineAddress']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
        end
      end

      # ModifyMultiPathGatewayLine返回参数结构体
      class ModifyMultiPathGatewayLineResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMultiPathGateway请求参数结构体
      class ModifyMultiPathGatewayRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param GatewayId: 网关 ID。
        # @type GatewayId: String
        # @param GatewayName: 网关名称，16 个字符以内，可用字符（a-z,A-Z,0-9,-,_）。
        # @type GatewayName: String
        # @param GatewayIP: 网关地址，GatewayType 取值为 private（自有网关）可填入进行修改，使用该地址时，请确保该地址已录入腾讯云多通道安全加速网关系统。如未录入，需要在本接口调用前通过工单或者联系架构师把网关 IP 地址提前录入腾讯云多通道安全加速网关系统。
        # @type GatewayIP: String
        # @param GatewayPort: 网关端口，范围 1～65535（除去 8888 ），只支持修改 GatewayType 取值为 private 的自有网关。
        # @type GatewayPort: Integer

        attr_accessor :ZoneId, :GatewayId, :GatewayName, :GatewayIP, :GatewayPort

        def initialize(zoneid=nil, gatewayid=nil, gatewayname=nil, gatewayip=nil, gatewayport=nil)
          @ZoneId = zoneid
          @GatewayId = gatewayid
          @GatewayName = gatewayname
          @GatewayIP = gatewayip
          @GatewayPort = gatewayport
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GatewayId = params['GatewayId']
          @GatewayName = params['GatewayName']
          @GatewayIP = params['GatewayIP']
          @GatewayPort = params['GatewayPort']
        end
      end

      # ModifyMultiPathGateway返回参数结构体
      class ModifyMultiPathGatewayResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMultiPathGatewaySecretKey请求参数结构体
      class ModifyMultiPathGatewaySecretKeyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param SecretKey: 多通道安全加速网关接入密钥，base64 字符串，编码前字符串长度为 32-48 个字符。
        # @type SecretKey: String

        attr_accessor :ZoneId, :SecretKey

        def initialize(zoneid=nil, secretkey=nil)
          @ZoneId = zoneid
          @SecretKey = secretkey
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @SecretKey = params['SecretKey']
        end
      end

      # ModifyMultiPathGatewaySecretKey返回参数结构体
      class ModifyMultiPathGatewaySecretKeyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyOriginACL请求参数结构体
      class ModifyOriginACLRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param OriginACLEntities: 需要启用/关闭特定回源 IP 网段回源的实例。
        # @type OriginACLEntities: Array

        attr_accessor :ZoneId, :OriginACLEntities

        def initialize(zoneid=nil, originaclentities=nil)
          @ZoneId = zoneid
          @OriginACLEntities = originaclentities
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['OriginACLEntities'].nil?
            @OriginACLEntities = []
            params['OriginACLEntities'].each do |i|
              originaclentity_tmp = OriginACLEntity.new
              originaclentity_tmp.deserialize(i)
              @OriginACLEntities << originaclentity_tmp
            end
          end
        end
      end

      # ModifyOriginACL返回参数结构体
      class ModifyOriginACLResponse < TencentCloud::Common::AbstractModel
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

      # ModifyOriginGroup请求参数结构体
      class ModifyOriginGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID
        # @type ZoneId: String
        # @param GroupId: 源站组 ID，此参数必填。
        # @type GroupId: String
        # @param Name: 源站组名称，不填保持原有配置，可输入1 - 200个字符，允许的字符为 a - z, A - Z, 0 - 9, _, - 。
        # @type Name: String
        # @param Type: 源站组类型，取值有：
        # <li>GENERAL：通用型源站组，仅支持添加 IP/域名 源站，可以被域名服务、规则引擎、四层代理、通用型负载均衡引用；</li>
        # <li>HTTP： HTTP专用型源站组，支持添加 IP/域名、对象存储源站，无法被四层代理引用。</li>不填保持原有配置。
        # @type Type: String
        # @param Records: 源站记录信息，不填保持原有配置。
        # @type Records: Array
        # @param HostHeader: 回源 Host Header，仅 Type = HTTP 时生效， 不填或者填空表示不配置回源Host，规则引擎修改 Host Header 配置优先级高于源站组的 Host Header。
        # @type HostHeader: String

        attr_accessor :ZoneId, :GroupId, :Name, :Type, :Records, :HostHeader

        def initialize(zoneid=nil, groupid=nil, name=nil, type=nil, records=nil, hostheader=nil)
          @ZoneId = zoneid
          @GroupId = groupid
          @Name = name
          @Type = type
          @Records = records
          @HostHeader = hostheader
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @GroupId = params['GroupId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @Records << originrecord_tmp
            end
          end
          @HostHeader = params['HostHeader']
        end
      end

      # ModifyOriginGroup返回参数结构体
      class ModifyOriginGroupResponse < TencentCloud::Common::AbstractModel
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

      # 修改源站配置参数。
      class ModifyOriginParameters < TencentCloud::Common::AbstractModel
        # @param OriginType: 源站类型。取值有：
        # <li>IPDomain：IPV4、IPV6 或域名类型源站；</li>
        # <li>OriginGroup：源站组类型源站；</li>
        # <li>LoadBalance：负载均衡，该功能内测中，如需使用，请提工单或联系智能客服；</li>
        # <li>COS：腾讯云 COS 对象存储源站；</li>
        # <li>AWSS3：支持 AWS S3 协议的所有对象存储源站。</li>
        # @type OriginType: String
        # @param Origin: 源站地址，根据 OriginType 的取值分为以下情况：
        # <li>当 OriginType = IPDomain 时，该参数请填写 IPV4、IPV6 地址或域名；</li>
        # <li>当 OriginType = COS 时，该参数请填写 COS 桶的访问域名；</li>
        # <li>当 OriginType = AWSS3，该参数请填写 S3 桶的访问域名；</li>
        # <li>当 OriginType = OriginGroup 时，该参数请填写源站组 ID；</li>
        # <li>当 OriginType = LoadBalance 时，该参数请填写负载均衡实例 ID，该功能当前仅白名单开放。</li>
        # @type Origin: String
        # @param OriginProtocol: 回源协议配置。当 OriginType 取值为 IPDomain、OriginGroup、LoadBalance 时该参数必填。取值有：
        # <li>http：使用 HTTP 协议；</li>
        # <li>https：使用 HTTPS 协议；</li>
        # <li>follow：协议跟随。</li>
        # @type OriginProtocol: String
        # @param HTTPOriginPort: HTTP 回源端口，取值范围 1～65535。当回源协议 OriginProtocol 为 http 或者 follow 时该参数必填。
        # @type HTTPOriginPort: Integer
        # @param HTTPSOriginPort: HTTPS 回源端口，取值范围 1～65535。当回源协议 OriginProtocol 为 https 或者 follow 时该参数必填。
        # @type HTTPSOriginPort: Integer
        # @param PrivateAccess: 指定是否允许访问私有对象存储源站，当源站类型 OriginType = COS 或 AWSS3 时该参数必填，取值有：
        # <li>on：使用私有鉴权；</li>
        # <li>off：不使用私有鉴权。</li>
        # @type PrivateAccess: String
        # @param PrivateParameters: 私有鉴权使用参数，该参数仅当 OriginType = AWSS3 且 PrivateAccess = on 时会生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateParameters: :class:`Tencentcloud::Teo.v20220901.models.OriginPrivateParameters`

        attr_accessor :OriginType, :Origin, :OriginProtocol, :HTTPOriginPort, :HTTPSOriginPort, :PrivateAccess, :PrivateParameters

        def initialize(origintype=nil, origin=nil, originprotocol=nil, httporiginport=nil, httpsoriginport=nil, privateaccess=nil, privateparameters=nil)
          @OriginType = origintype
          @Origin = origin
          @OriginProtocol = originprotocol
          @HTTPOriginPort = httporiginport
          @HTTPSOriginPort = httpsoriginport
          @PrivateAccess = privateaccess
          @PrivateParameters = privateparameters
        end

        def deserialize(params)
          @OriginType = params['OriginType']
          @Origin = params['Origin']
          @OriginProtocol = params['OriginProtocol']
          @HTTPOriginPort = params['HTTPOriginPort']
          @HTTPSOriginPort = params['HTTPSOriginPort']
          @PrivateAccess = params['PrivateAccess']
          unless params['PrivateParameters'].nil?
            @PrivateParameters = OriginPrivateParameters.new
            @PrivateParameters.deserialize(params['PrivateParameters'])
          end
        end
      end

      # ModifyPlan请求参数结构体
      class ModifyPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 套餐 ID，形如 edgeone-2unuvzjmmn2q。
        # @type PlanId: String
        # @param RenewFlag: 预付费套餐自动续费配置。若开启了自动续费，则会在套餐到期前一天自动续费，仅支持个人版，基础版，标准版套餐。不填写表示保持原有配置。
        # @type RenewFlag: :class:`Tencentcloud::Teo.v20220901.models.RenewFlag`

        attr_accessor :PlanId, :RenewFlag

        def initialize(planid=nil, renewflag=nil)
          @PlanId = planid
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          unless params['RenewFlag'].nil?
            @RenewFlag = RenewFlag.new
            @RenewFlag.deserialize(params['RenewFlag'])
          end
        end
      end

      # ModifyPlan返回参数结构体
      class ModifyPlanResponse < TencentCloud::Common::AbstractModel
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

      # ModifyRealtimeLogDeliveryTask请求参数结构体
      class ModifyRealtimeLogDeliveryTaskRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param TaskId: 实时日志投递任务 ID。
        # @type TaskId: String
        # @param TaskName: 实时日志投递任务的名称，格式为数字、英文、-和_组合，最多 200 个字符。不填保持原有配置。
        # @type TaskName: String
        # @param DeliveryStatus: 实时日志投递任务的状态，取值有：
        # <li>enabled: 启用；</li>
        # <li>disabled: 停用。</li>不填保持原有配置。
        # @type DeliveryStatus: String
        # @param EntityList: 实时日志投递任务对应的实体（七层域名或者四层代理实例）列表。取值示例如下：
        # <li>七层域名：domain.example.com；</li>
        # <li>四层代理实例：sid-2s69eb5wcms7。</li>不填保持原有配置。
        # @type EntityList: Array
        # @param Fields: 投递的预设字段列表。不填保持原有配置。
        # @type Fields: Array
        # @param CustomFields: 投递的自定义字段列表，支持在 HTTP 请求头、响应头、Cookie、请求正文中提取指定内容。不填保持原有配置。自定义字段名称不能重复，且最多不能超过 200 个字段。单个实时日志推送任务最多添加 5 个请求正文类型的自定义字段。目前仅站点加速日志（LogType=domain）支持添加自定义字段。
        # @type CustomFields: Array
        # @param DeliveryConditions: 日志投递的过滤条件。不填表示投递全量日志。
        # @type DeliveryConditions: Array
        # @param Sample: 采样比例，采用千分制，取值范围为1-1000，例如：填写 605 表示采样比例为 60.5%。不填保持原有配置。
        # @type Sample: Integer
        # @param LogFormat: 日志投递的输出格式。不填保持原有配置。
        # 特别地，当 TaskType 取值为 cls 时，LogFormat.FormatType 的值只能为 json，且 LogFormat 中其他参数将被忽略，建议不传 LogFormat。
        # @type LogFormat: :class:`Tencentcloud::Teo.v20220901.models.LogFormat`
        # @param CustomEndpoint: 自定义 HTTP 服务的配置信息，不填保持原有配置。
        # @type CustomEndpoint: :class:`Tencentcloud::Teo.v20220901.models.CustomEndpoint`
        # @param S3: AWS S3 兼容存储桶的配置信息，不填保持原有配置。
        # @type S3: :class:`Tencentcloud::Teo.v20220901.models.S3`

        attr_accessor :ZoneId, :TaskId, :TaskName, :DeliveryStatus, :EntityList, :Fields, :CustomFields, :DeliveryConditions, :Sample, :LogFormat, :CustomEndpoint, :S3

        def initialize(zoneid=nil, taskid=nil, taskname=nil, deliverystatus=nil, entitylist=nil, fields=nil, customfields=nil, deliveryconditions=nil, sample=nil, logformat=nil, customendpoint=nil, s3=nil)
          @ZoneId = zoneid
          @TaskId = taskid
          @TaskName = taskname
          @DeliveryStatus = deliverystatus
          @EntityList = entitylist
          @Fields = fields
          @CustomFields = customfields
          @DeliveryConditions = deliveryconditions
          @Sample = sample
          @LogFormat = logformat
          @CustomEndpoint = customendpoint
          @S3 = s3
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @DeliveryStatus = params['DeliveryStatus']
          @EntityList = params['EntityList']
          @Fields = params['Fields']
          unless params['CustomFields'].nil?
            @CustomFields = []
            params['CustomFields'].each do |i|
              customfield_tmp = CustomField.new
              customfield_tmp.deserialize(i)
              @CustomFields << customfield_tmp
            end
          end
          unless params['DeliveryConditions'].nil?
            @DeliveryConditions = []
            params['DeliveryConditions'].each do |i|
              deliverycondition_tmp = DeliveryCondition.new
              deliverycondition_tmp.deserialize(i)
              @DeliveryConditions << deliverycondition_tmp
            end
          end
          @Sample = params['Sample']
          unless params['LogFormat'].nil?
            @LogFormat = LogFormat.new
            @LogFormat.deserialize(params['LogFormat'])
          end
          unless params['CustomEndpoint'].nil?
            @CustomEndpoint = CustomEndpoint.new
            @CustomEndpoint.deserialize(params['CustomEndpoint'])
          end
          unless params['S3'].nil?
            @S3 = S3.new
            @S3.deserialize(params['S3'])
          end
        end
      end

      # ModifyRealtimeLogDeliveryTask返回参数结构体
      class ModifyRealtimeLogDeliveryTaskResponse < TencentCloud::Common::AbstractModel
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

      # 修改 HTTP 回源请求头配置参数。
      class ModifyRequestHeaderParameters < TencentCloud::Common::AbstractModel
        # @param HeaderActions: HTTP 头部设置规则列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderActions: Array

        attr_accessor :HeaderActions

        def initialize(headeractions=nil)
          @HeaderActions = headeractions
        end

        def deserialize(params)
          unless params['HeaderActions'].nil?
            @HeaderActions = []
            params['HeaderActions'].each do |i|
              headeraction_tmp = HeaderAction.new
              headeraction_tmp.deserialize(i)
              @HeaderActions << headeraction_tmp
            end
          end
        end
      end

      # 修改 HTTP 节点响应头配置参数。
      class ModifyResponseHeaderParameters < TencentCloud::Common::AbstractModel
        # @param HeaderActions: HTTP 回源头部规则列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeaderActions: Array

        attr_accessor :HeaderActions

        def initialize(headeractions=nil)
          @HeaderActions = headeractions
        end

        def deserialize(params)
          unless params['HeaderActions'].nil?
            @HeaderActions = []
            params['HeaderActions'].each do |i|
              headeraction_tmp = HeaderAction.new
              headeraction_tmp.deserialize(i)
              @HeaderActions << headeraction_tmp
            end
          end
        end
      end

      # ModifyRule请求参数结构体
      class ModifyRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param RuleName: 规则名称，字符串名称长度 1~255。
        # @type RuleName: String
        # @param Rules: 规则内容。
        # @type Rules: Array
        # @param RuleId: 规则 ID。
        # @type RuleId: String
        # @param Status: 规则状态，取值有：
        # <li> enable: 启用； </li>
        # <li> disable: 未启用。</li>
        # @type Status: String
        # @param Tags: 规则标签。
        # @type Tags: Array

        attr_accessor :ZoneId, :RuleName, :Rules, :RuleId, :Status, :Tags

        def initialize(zoneid=nil, rulename=nil, rules=nil, ruleid=nil, status=nil, tags=nil)
          @ZoneId = zoneid
          @RuleName = rulename
          @Rules = rules
          @RuleId = ruleid
          @Status = status
          @Tags = tags
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @RuleName = params['RuleName']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @Rules << rule_tmp
            end
          end
          @RuleId = params['RuleId']
          @Status = params['Status']
          @Tags = params['Tags']
        end
      end

      # ModifyRule返回参数结构体
      class ModifyRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则 ID。
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId

        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # ModifySecurityAPIResource请求参数结构体
      class ModifySecurityAPIResourceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param APIResources: API 资源列表。
        # @type APIResources: Array

        attr_accessor :ZoneId, :APIResources

        def initialize(zoneid=nil, apiresources=nil)
          @ZoneId = zoneid
          @APIResources = apiresources
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['APIResources'].nil?
            @APIResources = []
            params['APIResources'].each do |i|
              apiresource_tmp = APIResource.new
              apiresource_tmp.deserialize(i)
              @APIResources << apiresource_tmp
            end
          end
        end
      end

      # ModifySecurityAPIResource返回参数结构体
      class ModifySecurityAPIResourceResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityAPIService请求参数结构体
      class ModifySecurityAPIServiceRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param APIServices: API 服务列表。
        # @type APIServices: Array

        attr_accessor :ZoneId, :APIServices

        def initialize(zoneid=nil, apiservices=nil)
          @ZoneId = zoneid
          @APIServices = apiservices
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['APIServices'].nil?
            @APIServices = []
            params['APIServices'].each do |i|
              apiservice_tmp = APIService.new
              apiservice_tmp.deserialize(i)
              @APIServices << apiservice_tmp
            end
          end
        end
      end

      # ModifySecurityAPIService返回参数结构体
      class ModifySecurityAPIServiceResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityClientAttester请求参数结构体
      class ModifySecurityClientAttesterRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ClientAttesters: 认证选项列表。
        # @type ClientAttesters: Array

        attr_accessor :ZoneId, :ClientAttesters

        def initialize(zoneid=nil, clientattesters=nil)
          @ZoneId = zoneid
          @ClientAttesters = clientattesters
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['ClientAttesters'].nil?
            @ClientAttesters = []
            params['ClientAttesters'].each do |i|
              clientattester_tmp = ClientAttester.new
              clientattester_tmp.deserialize(i)
              @ClientAttesters << clientattester_tmp
            end
          end
        end
      end

      # ModifySecurityClientAttester返回参数结构体
      class ModifySecurityClientAttesterResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityIPGroup请求参数结构体
      class ModifySecurityIPGroupRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 Id。
        # @type ZoneId: String
        # @param IPGroup: IP 组配置。
        # @type IPGroup: :class:`Tencentcloud::Teo.v20220901.models.IPGroup`
        # @param Mode: 操作类型，取值有：<li> append: 向 IPGroup 中添加新的 IP 地址或设置定时过期时间；</li><li>  remove: 从 IPGroup 中删除指定的 IP 地址或其定时过期时间；</li><li>  update: 完全替换 IPGroup 中 Content 或 ExpireInfo 的内容，并且可以修改 IPGroup 的名称。</li>    使用 append 操作时注意：   <li> 为 IP 或网段添加定时过期时间时，必须晚于当前时间。如果该 IP 或网段在组中不存在，必须同时在 Content 参数中添加该 IP 或网段。若该 IP 或网段已存在过期时间，则新时间将覆盖原有时间。</li>  使用 remove 操作时注意： <li> 删除 IP 或网段时，相关的未过期的定时过期时间也会被删除；</li> <li> 删除定时过期时间时，仅能删除当前未过期的时间。</li>  使用 update 操作时注意： <li> 替换 Content 内容时，不在 Content 中的 IP 或网段的未过期时间会被删除；</li> <li> 替换 IPExpireInfo 内容时，IPExpireInfo 中的 IP 或网段必须在 Content 中或在 IP 组中存在。</li>
        # @type Mode: String

        attr_accessor :ZoneId, :IPGroup, :Mode

        def initialize(zoneid=nil, ipgroup=nil, mode=nil)
          @ZoneId = zoneid
          @IPGroup = ipgroup
          @Mode = mode
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['IPGroup'].nil?
            @IPGroup = IPGroup.new
            @IPGroup.deserialize(params['IPGroup'])
          end
          @Mode = params['Mode']
        end
      end

      # ModifySecurityIPGroup返回参数结构体
      class ModifySecurityIPGroupResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityJSInjectionRule请求参数结构体
      class ModifySecurityJSInjectionRuleRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param JSInjectionRules: JavaScript 注入规则列表。
        # @type JSInjectionRules: Array

        attr_accessor :ZoneId, :JSInjectionRules

        def initialize(zoneid=nil, jsinjectionrules=nil)
          @ZoneId = zoneid
          @JSInjectionRules = jsinjectionrules
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['JSInjectionRules'].nil?
            @JSInjectionRules = []
            params['JSInjectionRules'].each do |i|
              jsinjectionrule_tmp = JSInjectionRule.new
              jsinjectionrule_tmp.deserialize(i)
              @JSInjectionRules << jsinjectionrule_tmp
            end
          end
        end
      end

      # ModifySecurityJSInjectionRule返回参数结构体
      class ModifySecurityJSInjectionRuleResponse < TencentCloud::Common::AbstractModel
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

      # ModifySecurityPolicy请求参数结构体
      class ModifySecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param SecurityConfig: 安全策略配置。<li>当 SecurityPolicy 参数中的 ExceptionRules 被设置时，SecurityConfig 参数中的 ExceptConfig 将被忽略；</li><li>当 SecurityPolicy 参数中的 CustomRules 被设置时，SecurityConfig 参数中的 AclConfig、 IpTableConfig 将被忽略；</li><li>当 SecurityPolicy 参数中的 HttpDDoSProtection 和 RateLimitingRules 被设置时，SecurityConfig 参数中的 RateLimitConfig 将被忽略；</li><li>当 SecurityPolicy 参数中的 ManagedRule 被设置时，SecurityConfig 参数中的 WafConfig 将被忽略；</li><li>对于例外规则、自定义规则、速率限制以及托管规则策略配置建议使用 SecurityPolicy 参数进行设置。</li>
        # @type SecurityConfig: :class:`Tencentcloud::Teo.v20220901.models.SecurityConfig`
        # @param SecurityPolicy: 安全策略配置。对 Web 例外规则、防护自定义策略、速率规则和托管规则配置建议使用，支持表达式语法对安全策略进行配置。
        # @type SecurityPolicy: :class:`Tencentcloud::Teo.v20220901.models.SecurityPolicy`
        # @param Entity: 安全策略类型，可使用以下参数值： <li>ZoneDefaultPolicy：用于指定站点级策略；</li><li>Template：用于指定策略模板，需要同时指定 TemplateId 参数；</li><li>Host：用于指定域名级策略（注意：当使用域名来指定域名服务策略时，仅支持已经应用了域名级策略的域名服务或者策略模板）。</li>
        # @type Entity: String
        # @param Host: 指定域名。当 Entity 参数值为 Host 时，使用本参数指定的域名级策略，例如：使用 www.example.com ，配置该域名的域名级策略。
        # @type Host: String
        # @param TemplateId: 指定策略模板 ID。当 Entity 参数值为 Template 时，使用本参数指定策略模板的 ID。
        # @type TemplateId: String

        attr_accessor :ZoneId, :SecurityConfig, :SecurityPolicy, :Entity, :Host, :TemplateId

        def initialize(zoneid=nil, securityconfig=nil, securitypolicy=nil, entity=nil, host=nil, templateid=nil)
          @ZoneId = zoneid
          @SecurityConfig = securityconfig
          @SecurityPolicy = securitypolicy
          @Entity = entity
          @Host = host
          @TemplateId = templateid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['SecurityConfig'].nil?
            @SecurityConfig = SecurityConfig.new
            @SecurityConfig.deserialize(params['SecurityConfig'])
          end
          unless params['SecurityPolicy'].nil?
            @SecurityPolicy = SecurityPolicy.new
            @SecurityPolicy.deserialize(params['SecurityPolicy'])
          end
          @Entity = params['Entity']
          @Host = params['Host']
          @TemplateId = params['TemplateId']
        end
      end

      # ModifySecurityPolicy返回参数结构体
      class ModifySecurityPolicyResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWebSecurityTemplate请求参数结构体
      class ModifyWebSecurityTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。需要传入目标策略模板在访问权限上归属的站点，可使用 DescribeWebSecurityTemplates 接口查询策略模板归属的站点。
        # @type ZoneId: String
        # @param TemplateId: 策略模板 ID。
        # @type TemplateId: String
        # @param TemplateName: 修改后的策略模板名称。由中文、英文、数字和下划线组成，不能以下划线开头，且长度不能超过32个字符。字段为空时则不修改。
        # @type TemplateName: String
        # @param SecurityPolicy: 安全策略模板配置内容。值为空时不修改；没有传入的子模块结构不会被修改。目前支持 Web 防护模块中的例外规则、自定义规则、速率限制规则和托管规则配置，通过表达式语法对安全策略进行配置。 Bot 管理规则配置暂不支持，正在开发中。
        # 特别说明：当入参某个子模块结构时，请确保携带所有需要保留的规则内容，未传入规则内容视为删除。
        # @type SecurityPolicy: :class:`Tencentcloud::Teo.v20220901.models.SecurityPolicy`

        attr_accessor :ZoneId, :TemplateId, :TemplateName, :SecurityPolicy

        def initialize(zoneid=nil, templateid=nil, templatename=nil, securitypolicy=nil)
          @ZoneId = zoneid
          @TemplateId = templateid
          @TemplateName = templatename
          @SecurityPolicy = securitypolicy
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          unless params['SecurityPolicy'].nil?
            @SecurityPolicy = SecurityPolicy.new
            @SecurityPolicy.deserialize(params['SecurityPolicy'])
          end
        end
      end

      # ModifyWebSecurityTemplate返回参数结构体
      class ModifyWebSecurityTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyZone请求参数结构体
      class ModifyZoneRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Type: 站点接入方式，取值有：
        # <li>full：NS 接入；</li>
        # <li>partial：CNAME 接入，如果站点当前是无域名接入，仅支持切换到 CNAME 接入；</li>
        # <li>dnsPodAccess：DNSPod 托管接入，该接入模式要求您的域名已托管在 DNSPod 内。</li>不填写保持原有配置。
        # @type Type: String
        # @param VanityNameServers: 自定义站点信息，以替代系统默认分配的名称服务器。不填写保持原有配置。当站点是无域名接入方式时不允许传此参数。
        # @type VanityNameServers: :class:`Tencentcloud::Teo.v20220901.models.VanityNameServers`
        # @param AliasZoneName: 同名站点标识。限制输入数字、英文、"." 、"-" 和 "_"，长度 200 个字符以内。
        # @type AliasZoneName: String
        # @param Area: 站点接入地域，取值有：
        # <li> global：全球；</li>
        # <li> mainland：中国大陆；</li>
        # <li> overseas：境外区域。</li>当站点是无域名接入方式时，不允许传此参数。
        # @type Area: String
        # @param ZoneName: 站点名称。仅当站点由无域名接入方式切换到CNAME接入方式的场景下有效。
        # @type ZoneName: String

        attr_accessor :ZoneId, :Type, :VanityNameServers, :AliasZoneName, :Area, :ZoneName

        def initialize(zoneid=nil, type=nil, vanitynameservers=nil, aliaszonename=nil, area=nil, zonename=nil)
          @ZoneId = zoneid
          @Type = type
          @VanityNameServers = vanitynameservers
          @AliasZoneName = aliaszonename
          @Area = area
          @ZoneName = zonename
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Type = params['Type']
          unless params['VanityNameServers'].nil?
            @VanityNameServers = VanityNameServers.new
            @VanityNameServers.deserialize(params['VanityNameServers'])
          end
          @AliasZoneName = params['AliasZoneName']
          @Area = params['Area']
          @ZoneName = params['ZoneName']
        end
      end

      # ModifyZone返回参数结构体
      class ModifyZoneResponse < TencentCloud::Common::AbstractModel
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

      # ModifyZoneSetting请求参数结构体
      class ModifyZoneSettingRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 待变更的站点 ID。
        # @type ZoneId: String
        # @param CacheConfig: 缓存过期时间配置。
        # 不填写表示保持原有配置。
        # @type CacheConfig: :class:`Tencentcloud::Teo.v20220901.models.CacheConfig`
        # @param CacheKey: 节点缓存键配置。
        # 不填写表示保持原有配置。
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220901.models.CacheKey`
        # @param MaxAge: 浏览器缓存配置。
        # 不填写表示保持原有配置。
        # @type MaxAge: :class:`Tencentcloud::Teo.v20220901.models.MaxAge`
        # @param OfflineCache: 离线缓存配置。
        # 不填写表示保持原有配置。
        # @type OfflineCache: :class:`Tencentcloud::Teo.v20220901.models.OfflineCache`
        # @param Quic: Quic 访问配置。
        # 不填写表示保持原有配置。
        # @type Quic: :class:`Tencentcloud::Teo.v20220901.models.Quic`
        # @param PostMaxSize: Post 请求传输配置。
        # 不填写表示保持原有配置。
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220901.models.PostMaxSize`
        # @param Compression: 智能压缩配置。
        # 不填写表示保持原有配置。
        # @type Compression: :class:`Tencentcloud::Teo.v20220901.models.Compression`
        # @param UpstreamHttp2: Http2 回源配置。
        # 不填写表示保持原有配置。
        # @type UpstreamHttp2: :class:`Tencentcloud::Teo.v20220901.models.UpstreamHttp2`
        # @param ForceRedirect: 访问协议强制 Https 跳转配置。
        # 不填写表示保持原有配置。
        # @type ForceRedirect: :class:`Tencentcloud::Teo.v20220901.models.ForceRedirect`
        # @param Https: Https 加速配置。
        # 不填写表示保持原有配置。
        # @type Https: :class:`Tencentcloud::Teo.v20220901.models.Https`
        # @param Origin: 源站配置。
        # 不填写表示保持原有配置。
        # @type Origin: :class:`Tencentcloud::Teo.v20220901.models.Origin`
        # @param SmartRouting: 智能加速配置。
        # 不填写表示保持原有配置。
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220901.models.SmartRouting`
        # @param WebSocket: WebSocket 配置。
        # 不填写表示保持原有配置。
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220901.models.WebSocket`
        # @param ClientIpHeader: 客户端 IP 回源请求头配置。
        # 不填写表示保持原有配置。
        # @type ClientIpHeader: :class:`Tencentcloud::Teo.v20220901.models.ClientIpHeader`
        # @param CachePrefresh: 缓存预刷新配置。
        # 不填写表示保持原有配置。
        # @type CachePrefresh: :class:`Tencentcloud::Teo.v20220901.models.CachePrefresh`
        # @param Ipv6: Ipv6 访问配置。
        # 不填写表示保持原有配置。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220901.models.Ipv6`
        # @param ClientIpCountry: 回源时是否携带客户端 IP 所属地域信息的配置。
        # 不填写表示保持原有配置。
        # @type ClientIpCountry: :class:`Tencentcloud::Teo.v20220901.models.ClientIpCountry`
        # @param Grpc: Grpc 协议支持配置。
        # 不填写表示保持原有配置。
        # @type Grpc: :class:`Tencentcloud::Teo.v20220901.models.Grpc`
        # @param ImageOptimize: 图片优化配置。
        # 不填写表示关闭。
        # @type ImageOptimize: :class:`Tencentcloud::Teo.v20220901.models.ImageOptimize`
        # @param StandardDebug: 标准 Debug 配置。
        # @type StandardDebug: :class:`Tencentcloud::Teo.v20220901.models.StandardDebug`
        # @param JITVideoProcess: 视频即时处理配置。不填写表示保持原有配置。
        # @type JITVideoProcess: :class:`Tencentcloud::Teo.v20220901.models.JITVideoProcess`

        attr_accessor :ZoneId, :CacheConfig, :CacheKey, :MaxAge, :OfflineCache, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :Https, :Origin, :SmartRouting, :WebSocket, :ClientIpHeader, :CachePrefresh, :Ipv6, :ClientIpCountry, :Grpc, :ImageOptimize, :StandardDebug, :JITVideoProcess

        def initialize(zoneid=nil, cacheconfig=nil, cachekey=nil, maxage=nil, offlinecache=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, https=nil, origin=nil, smartrouting=nil, websocket=nil, clientipheader=nil, cacheprefresh=nil, ipv6=nil, clientipcountry=nil, grpc=nil, imageoptimize=nil, standarddebug=nil, jitvideoprocess=nil)
          @ZoneId = zoneid
          @CacheConfig = cacheconfig
          @CacheKey = cachekey
          @MaxAge = maxage
          @OfflineCache = offlinecache
          @Quic = quic
          @PostMaxSize = postmaxsize
          @Compression = compression
          @UpstreamHttp2 = upstreamhttp2
          @ForceRedirect = forceredirect
          @Https = https
          @Origin = origin
          @SmartRouting = smartrouting
          @WebSocket = websocket
          @ClientIpHeader = clientipheader
          @CachePrefresh = cacheprefresh
          @Ipv6 = ipv6
          @ClientIpCountry = clientipcountry
          @Grpc = grpc
          @ImageOptimize = imageoptimize
          @StandardDebug = standarddebug
          @JITVideoProcess = jitvideoprocess
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['CacheConfig'].nil?
            @CacheConfig = CacheConfig.new
            @CacheConfig.deserialize(params['CacheConfig'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAge.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          unless params['OfflineCache'].nil?
            @OfflineCache = OfflineCache.new
            @OfflineCache.deserialize(params['OfflineCache'])
          end
          unless params['Quic'].nil?
            @Quic = Quic.new
            @Quic.deserialize(params['Quic'])
          end
          unless params['PostMaxSize'].nil?
            @PostMaxSize = PostMaxSize.new
            @PostMaxSize.deserialize(params['PostMaxSize'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['UpstreamHttp2'].nil?
            @UpstreamHttp2 = UpstreamHttp2.new
            @UpstreamHttp2.deserialize(params['UpstreamHttp2'])
          end
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          unless params['SmartRouting'].nil?
            @SmartRouting = SmartRouting.new
            @SmartRouting.deserialize(params['SmartRouting'])
          end
          unless params['WebSocket'].nil?
            @WebSocket = WebSocket.new
            @WebSocket.deserialize(params['WebSocket'])
          end
          unless params['ClientIpHeader'].nil?
            @ClientIpHeader = ClientIpHeader.new
            @ClientIpHeader.deserialize(params['ClientIpHeader'])
          end
          unless params['CachePrefresh'].nil?
            @CachePrefresh = CachePrefresh.new
            @CachePrefresh.deserialize(params['CachePrefresh'])
          end
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          unless params['ClientIpCountry'].nil?
            @ClientIpCountry = ClientIpCountry.new
            @ClientIpCountry.deserialize(params['ClientIpCountry'])
          end
          unless params['Grpc'].nil?
            @Grpc = Grpc.new
            @Grpc.deserialize(params['Grpc'])
          end
          unless params['ImageOptimize'].nil?
            @ImageOptimize = ImageOptimize.new
            @ImageOptimize.deserialize(params['ImageOptimize'])
          end
          unless params['StandardDebug'].nil?
            @StandardDebug = StandardDebug.new
            @StandardDebug.deserialize(params['StandardDebug'])
          end
          unless params['JITVideoProcess'].nil?
            @JITVideoProcess = JITVideoProcess.new
            @JITVideoProcess.deserialize(params['JITVideoProcess'])
          end
        end
      end

      # ModifyZoneSetting返回参数结构体
      class ModifyZoneSettingResponse < TencentCloud::Common::AbstractModel
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

      # ModifyZoneStatus请求参数结构体
      class ModifyZoneStatusRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param Paused: 站点状态，取值有：
        # <li> false：开启站点；</li>
        # <li> true：关闭站点。</li>
        # @type Paused: Boolean

        attr_accessor :ZoneId, :Paused

        def initialize(zoneid=nil, paused=nil)
          @ZoneId = zoneid
          @Paused = paused
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Paused = params['Paused']
        end
      end

      # ModifyZoneStatus返回参数结构体
      class ModifyZoneStatusResponse < TencentCloud::Common::AbstractModel
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

      # 多通道安全网关详情
      class MultiPathGateway < TencentCloud::Common::AbstractModel
        # @param GatewayId: 网关 ID。
        # @type GatewayId: String
        # @param GatewayName: 网关名。
        # @type GatewayName: String
        # @param GatewayType: 网关类型，取值有：
        # <li> cloud：云上网关，腾讯云创建和管理的网关。</li>
        # <li> private：自有网关，用户部署的私有网关。</li>
        # @type GatewayType: String
        # @param GatewayPort: 网关端口，范围 1～65535（除去 8888 ）。
        # @type GatewayPort: Integer
        # @param Status: 网关状态，取值有：
        # <li> creating : 创建中；</li>
        # <li> online : 在线；</li>
        # <li> offline : 离线；</li>
        # <li> disable : 已停用。</li>
        # @type Status: String
        # @param GatewayIP: 网关 IP， 格式为 IPv4。
        # @type GatewayIP: String
        # @param RegionId: 网关地域 Id，可以从接口 DescribeMultiPathGatewayRegions 获取 RegionId 列表。
        # @type RegionId: String
        # @param Lines: 线路信息，当查询网关信息详情 DescribeMultiPathGateway 的时候会返回，当查询网关列表 DescribeMultiPathGateways 的时候不会返回。
        # @type Lines: Array

        attr_accessor :GatewayId, :GatewayName, :GatewayType, :GatewayPort, :Status, :GatewayIP, :RegionId, :Lines

        def initialize(gatewayid=nil, gatewayname=nil, gatewaytype=nil, gatewayport=nil, status=nil, gatewayip=nil, regionid=nil, lines=nil)
          @GatewayId = gatewayid
          @GatewayName = gatewayname
          @GatewayType = gatewaytype
          @GatewayPort = gatewayport
          @Status = status
          @GatewayIP = gatewayip
          @RegionId = regionid
          @Lines = lines
        end

        def deserialize(params)
          @GatewayId = params['GatewayId']
          @GatewayName = params['GatewayName']
          @GatewayType = params['GatewayType']
          @GatewayPort = params['GatewayPort']
          @Status = params['Status']
          @GatewayIP = params['GatewayIP']
          @RegionId = params['RegionId']
          unless params['Lines'].nil?
            @Lines = []
            params['Lines'].each do |i|
              multipathgatewayline_tmp = MultiPathGatewayLine.new
              multipathgatewayline_tmp.deserialize(i)
              @Lines << multipathgatewayline_tmp
            end
          end
        end
      end

      # 多通道安全网关线路信息
      class MultiPathGatewayLine < TencentCloud::Common::AbstractModel
        # @param LineId: 线路 ID ， 其中 line-0 和 line-1 为系统内置线路 ID，取值有:
        # <li> line-0：直连线路，不支持添加、编辑和删除；</li>
        # <li> line-1： EdgeOne 四层代理线路，支持修改实例和规则，不支持删除；</li>
        # <li> line-2 及以上：EdgeOne 四层代理线路或者自定义线路，支持修改、删除实例和规则。</li>
        # @type LineId: String
        # @param LineType: 线路类型，取值有：
        # <li>direct ：直连线路，不支持编辑、不支持删除；</li>
        # <li>proxy ：EdgeOne 四层代理线路，支持编辑修改实例和规则，不支持删除；</li>
        # <li>custom ：自定义线路，支持编辑、支持删除。</li>
        # @type LineType: String
        # @param LineAddress: 线路地址，格式为 host:port 。
        # @type LineAddress: String
        # @param ProxyId: 四层代理实例 ID  ，当线路类型 LineType 取值为 proxy（EdgeOne 四层代理）返回。
        # @type ProxyId: String
        # @param RuleId: 转发规则 ID ，当线路类型 LineType 取值为 proxy（EdgeOne 四层代理）返回。
        # @type RuleId: String

        attr_accessor :LineId, :LineType, :LineAddress, :ProxyId, :RuleId

        def initialize(lineid=nil, linetype=nil, lineaddress=nil, proxyid=nil, ruleid=nil)
          @LineId = lineid
          @LineType = linetype
          @LineAddress = lineaddress
          @ProxyId = proxyid
          @RuleId = ruleid
        end

        def deserialize(params)
          @LineId = params['LineId']
          @LineType = params['LineType']
          @LineAddress = params['LineAddress']
          @ProxyId = params['ProxyId']
          @RuleId = params['RuleId']
        end
      end

      # HTTPS 双向认证。
      class MutualTLS < TencentCloud::Common::AbstractModel
        # @param Switch: 双向认证配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param CertInfos: 双向认证证书列表。
        # 注意：MutualTLS 在 ModifyHostsCertificate 作为入参使用时，该参数传入对应证书的 CertId 即可。您可以前往 [SSL 证书列表](https://console.cloud.tencent.com/ssl) 查看 CertId。
        # @type CertInfos: Array

        attr_accessor :Switch, :CertInfos

        def initialize(switch=nil, certinfos=nil)
          @Switch = switch
          @CertInfos = certinfos
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['CertInfos'].nil?
            @CertInfos = []
            params['CertInfos'].each do |i|
              certificateinfo_tmp = CertificateInfo.new
              certificateinfo_tmp.deserialize(i)
              @CertInfos << certificateinfo_tmp
            end
          end
        end
      end

      # 当回源 IP 网段发生更新时，该字段会返回下一个版本将要生效的回源 IP 网段，包含与当前生效的回源 IP 网段的对比。
      class NextOriginACL < TencentCloud::Common::AbstractModel
        # @param Version: 版本号。
        # @type Version: String
        # @param PlannedActiveTime: 版本生效时间，时间是北京时间 UTC+8， 遵循 ISO 8601 标准的日期和时间格式。
        # @type PlannedActiveTime: String
        # @param EntireAddresses: 回源 IP 网段详情。
        # @type EntireAddresses: :class:`Tencentcloud::Teo.v20220901.models.Addresses`
        # @param AddedAddresses: 最新回源 IP 网段相较于 CurrentOrginACL 中回源 IP 网段新增的部分。
        # @type AddedAddresses: :class:`Tencentcloud::Teo.v20220901.models.Addresses`
        # @param RemovedAddresses: 最新回源 IP 网段相较于 CurrentOrginACL 中回源 IP 网段删减的部分。
        # @type RemovedAddresses: :class:`Tencentcloud::Teo.v20220901.models.Addresses`
        # @param NoChangeAddresses: 最新回源 IP 网段相较于 CurrentOrginACL 中回源 IP 网段无变化的部分。
        # @type NoChangeAddresses: :class:`Tencentcloud::Teo.v20220901.models.Addresses`

        attr_accessor :Version, :PlannedActiveTime, :EntireAddresses, :AddedAddresses, :RemovedAddresses, :NoChangeAddresses

        def initialize(version=nil, plannedactivetime=nil, entireaddresses=nil, addedaddresses=nil, removedaddresses=nil, nochangeaddresses=nil)
          @Version = version
          @PlannedActiveTime = plannedactivetime
          @EntireAddresses = entireaddresses
          @AddedAddresses = addedaddresses
          @RemovedAddresses = removedaddresses
          @NoChangeAddresses = nochangeaddresses
        end

        def deserialize(params)
          @Version = params['Version']
          @PlannedActiveTime = params['PlannedActiveTime']
          unless params['EntireAddresses'].nil?
            @EntireAddresses = Addresses.new
            @EntireAddresses.deserialize(params['EntireAddresses'])
          end
          unless params['AddedAddresses'].nil?
            @AddedAddresses = Addresses.new
            @AddedAddresses.deserialize(params['AddedAddresses'])
          end
          unless params['RemovedAddresses'].nil?
            @RemovedAddresses = Addresses.new
            @RemovedAddresses.deserialize(params['RemovedAddresses'])
          end
          unless params['NoChangeAddresses'].nil?
            @NoChangeAddresses = Addresses.new
            @NoChangeAddresses.deserialize(params['NoChangeAddresses'])
          end
        end
      end

      # 不缓存配置
      class NoCache < TencentCloud::Common::AbstractModel
        # @param Switch: 不缓存配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 规则引擎常规类型的动作
      class NormalAction < TencentCloud::Common::AbstractModel
        # @param Action: 功能名称，功能名称填写规范可调用接口 [查询规则引擎的设置参数](https://cloud.tencent.com/document/product/1552/80618) 查看。
        # @type Action: String
        # @param Parameters: 参数。
        # @type Parameters: Array

        attr_accessor :Action, :Parameters

        def initialize(action=nil, parameters=nil)
          @Action = action
          @Parameters = parameters
        end

        def deserialize(params)
          @Action = params['Action']
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              rulenormalactionparams_tmp = RuleNormalActionParams.new
              rulenormalactionparams_tmp.deserialize(i)
              @Parameters << rulenormalactionparams_tmp
            end
          end
        end
      end

      # NS 接入，切换 DNS 服务器所需的信息。
      class NsVerification < TencentCloud::Common::AbstractModel
        # @param NameServers: NS 接入时，分配给用户的 DNS 服务器地址，需要将域名的 NameServer 切换至该地址。
        # @type NameServers: Array

        attr_accessor :NameServers

        def initialize(nameservers=nil)
          @NameServers = nameservers
        end

        def deserialize(params)
          @NameServers = params['NameServers']
        end
      end

      # OCSP 装订配置参数。
      class OCSPStaplingParameters < TencentCloud::Common::AbstractModel
        # @param Switch: OCSP 装订配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 离线缓存是否开启
      class OfflineCache < TencentCloud::Common::AbstractModel
        # @param Switch: 离线缓存是否开启，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 离线缓存是否开启。
      class OfflineCacheParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 离线缓存开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 源站配置。
      class Origin < TencentCloud::Common::AbstractModel
        # @param Origins: 主源站列表。
        # @type Origins: Array
        # @param BackupOrigins: 备源站列表。
        # @type BackupOrigins: Array
        # @param OriginPullProtocol: 回源协议配置，取值有：
        # <li>http：强制 http 回源；</li>
        # <li>follow：协议跟随回源；</li>
        # <li>https：强制 https 回源。</li>
        # @type OriginPullProtocol: String
        # @param CosPrivateAccess: 源站为腾讯云 COS 时，是否为私有访问 bucket，取值有：
        # <li>on：私有访问；</li>
        # <li>off：公共访问。</li>
        # @type CosPrivateAccess: String

        attr_accessor :Origins, :BackupOrigins, :OriginPullProtocol, :CosPrivateAccess

        def initialize(origins=nil, backuporigins=nil, originpullprotocol=nil, cosprivateaccess=nil)
          @Origins = origins
          @BackupOrigins = backuporigins
          @OriginPullProtocol = originpullprotocol
          @CosPrivateAccess = cosprivateaccess
        end

        def deserialize(params)
          @Origins = params['Origins']
          @BackupOrigins = params['BackupOrigins']
          @OriginPullProtocol = params['OriginPullProtocol']
          @CosPrivateAccess = params['CosPrivateAccess']
        end
      end

      # 需要配置特定回源 IP 网段回源的实例。
      class OriginACLEntity < TencentCloud::Common::AbstractModel
        # @param Type: 实例类型，取值有：
        # - l7：七层加速域名；
        # - l4：四层代理实例。
        # @type Type: String
        # @param Instances: 实例详情，取值有：
        # - 当 Type = l7 时，请填写七层加速域名；
        # - 当 Type = l4 时，请填写四层代理实例 ID。
        # @type Instances: Array
        # @param OperationMode: 操作模式，取值有：
        # <li>enable：启用；</li>
        # <li>disable：停用。</li>
        # @type OperationMode: String

        attr_accessor :Type, :Instances, :OperationMode

        def initialize(type=nil, instances=nil, operationmode=nil)
          @Type = type
          @Instances = instances
          @OperationMode = operationmode
        end

        def deserialize(params)
          @Type = params['Type']
          @Instances = params['Instances']
          @OperationMode = params['OperationMode']
        end
      end

      # 七层加速域名/四层代理实例与回源 IP 网段的绑定关系，以及回源 IP 网段详情。
      class OriginACLInfo < TencentCloud::Common::AbstractModel
        # @param L7Hosts: 启用了特定回源 IP 网段回源的七层加速域名列表。源站防护未开启时为空。
        # @type L7Hosts: Array
        # @param L4ProxyIds: 启用了特定回源 IP 网段回源的四层代理实例列表。源站防护未开启时为空。
        # @type L4ProxyIds: Array
        # @param CurrentOriginACL: 当前生效的回源 IP 网段。源站防护未开启时为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentOriginACL: :class:`Tencentcloud::Teo.v20220901.models.CurrentOriginACL`
        # @param NextOriginACL: 当回源 IP 网段发生更新时，该字段会返回下一个版本将要生效的回源 IP 网段，包含与当前回源 IP 网段的对比。无更新或者源站防护未开启时该字段为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NextOriginACL: :class:`Tencentcloud::Teo.v20220901.models.NextOriginACL`
        # @param Status: 源站防护状态，取值有：
        # <li>online：已生效；</li>
        # <li>offline：已停用；</li>
        # <li>updating: 配置部署中。</li>
        # @type Status: String

        attr_accessor :L7Hosts, :L4ProxyIds, :CurrentOriginACL, :NextOriginACL, :Status

        def initialize(l7hosts=nil, l4proxyids=nil, currentoriginacl=nil, nextoriginacl=nil, status=nil)
          @L7Hosts = l7hosts
          @L4ProxyIds = l4proxyids
          @CurrentOriginACL = currentoriginacl
          @NextOriginACL = nextoriginacl
          @Status = status
        end

        def deserialize(params)
          @L7Hosts = params['L7Hosts']
          @L4ProxyIds = params['L4ProxyIds']
          unless params['CurrentOriginACL'].nil?
            @CurrentOriginACL = CurrentOriginACL.new
            @CurrentOriginACL.deserialize(params['CurrentOriginACL'])
          end
          unless params['NextOriginACL'].nil?
            @NextOriginACL = NextOriginACL.new
            @NextOriginACL.deserialize(params['NextOriginACL'])
          end
          @Status = params['Status']
        end
      end

      # 加速域名源站信息。
      class OriginDetail < TencentCloud::Common::AbstractModel
        # @param OriginType: 源站类型，取值有：
        # <li>IP_DOMAIN：IPV4、IPV6 或域名类型源站；</li>
        # <li>COS：腾讯云 COS 对象存储源站；</li>
        # <li>AWS_S3：AWS S3 对象存储源站；</li>
        # <li>ORIGIN_GROUP：源站组类型源站；</li>
        # <li>VOD：云点播；</li>
        # <li>SPACE：源站卸载，当前仅白名单开放；</li>
        # <li>LB：负载均衡，当前仅白名单开放。</li>
        # @type OriginType: String
        # @param Origin: 源站地址，根据 OriginType 的取值分为以下情况：
        # <li>当 OriginType = IP_DOMAIN 时，该参数为 IPv4、IPv6 地址或域名；</li>
        # <li>当 OriginType = COS 时，该参数为 COS 桶的访问域名；</li>
        # <li>当 OriginType = AWS_S3，该参数为 S3 桶的访问域名；</li>
        # <li>当 OriginType = ORIGIN_GROUP 时，该参数为源站组 ID；</li>
        # <li>当 OriginType = VOD 时，该参数请填写云点播应用 ID ；</li>
        # @type Origin: String
        # @param BackupOrigin: 备用源站组 ID，该参数仅在 OriginType = ORIGIN_GROUP 且配置了备源站组时会生效。
        # @type BackupOrigin: String
        # @param OriginGroupName: 主源源站组名称，当 OriginType = ORIGIN_GROUP 时该参数会返回值。
        # @type OriginGroupName: String
        # @param BackOriginGroupName: 备用源站组名称，该参数仅当 OriginType = ORIGIN_GROUP 且配置了备用源站组时会生效。
        # @type BackOriginGroupName: String
        # @param PrivateAccess: 指定是否允许访问私有对象存储源站，该参数仅当源站类型OriginType = COS 或 AWS_S3 时会生效，取值有：
        # <li>on：使用私有鉴权；</li>
        # <li>off：不使用私有鉴权。</li>
        # 不填写，默认值为 off。
        # @type PrivateAccess: String
        # @param PrivateParameters: 私有鉴权使用参数，该参数仅当源站类型 PrivateAccess = on 时会生效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PrivateParameters: Array
        # @param HostHeader: 当前配置的回源 HOST 头。
        # @type HostHeader: String
        # @param VodeoSubAppId: MO 子应用 ID
        # @type VodeoSubAppId: Integer
        # @param VodeoDistributionRange: MO 分发范围，取值有： <li>All：全部</li> <li>Bucket：存储桶</li>
        # @type VodeoDistributionRange: String
        # @param VodeoBucketId: MO 存储桶 ID，分发范围(DistributionRange)为存储桶(Bucket)时必填
        # @type VodeoBucketId: String
        # @param VodOriginScope: 云点播回源范围，当 OriginType = VOD 时该参数会返回值。取值有:<li>all：当前源站对应的云点播应用内所有文件，默认值为 all；</li> <li>bucket：当前源站对应的云点播应用下指定某一个存储桶内的文件。通过参数 VodBucketId 来指定存储桶。
        # </li>
        # @type VodOriginScope: String
        # @param VodBucketId: 云点播存储桶 ID，该参数当 OriginType = VOD 且 VodOriginScope = bucket 时必填。数据来源：云点播专业版应用下存储桶的存储 ID 。
        # @type VodBucketId: String

        attr_accessor :OriginType, :Origin, :BackupOrigin, :OriginGroupName, :BackOriginGroupName, :PrivateAccess, :PrivateParameters, :HostHeader, :VodeoSubAppId, :VodeoDistributionRange, :VodeoBucketId, :VodOriginScope, :VodBucketId
        extend Gem::Deprecate
        deprecate :VodeoSubAppId, :none, 2025, 7
        deprecate :VodeoSubAppId=, :none, 2025, 7
        deprecate :VodeoDistributionRange, :none, 2025, 7
        deprecate :VodeoDistributionRange=, :none, 2025, 7
        deprecate :VodeoBucketId, :none, 2025, 7
        deprecate :VodeoBucketId=, :none, 2025, 7

        def initialize(origintype=nil, origin=nil, backuporigin=nil, origingroupname=nil, backorigingroupname=nil, privateaccess=nil, privateparameters=nil, hostheader=nil, vodeosubappid=nil, vodeodistributionrange=nil, vodeobucketid=nil, vodoriginscope=nil, vodbucketid=nil)
          @OriginType = origintype
          @Origin = origin
          @BackupOrigin = backuporigin
          @OriginGroupName = origingroupname
          @BackOriginGroupName = backorigingroupname
          @PrivateAccess = privateaccess
          @PrivateParameters = privateparameters
          @HostHeader = hostheader
          @VodeoSubAppId = vodeosubappid
          @VodeoDistributionRange = vodeodistributionrange
          @VodeoBucketId = vodeobucketid
          @VodOriginScope = vodoriginscope
          @VodBucketId = vodbucketid
        end

        def deserialize(params)
          @OriginType = params['OriginType']
          @Origin = params['Origin']
          @BackupOrigin = params['BackupOrigin']
          @OriginGroupName = params['OriginGroupName']
          @BackOriginGroupName = params['BackOriginGroupName']
          @PrivateAccess = params['PrivateAccess']
          unless params['PrivateParameters'].nil?
            @PrivateParameters = []
            params['PrivateParameters'].each do |i|
              privateparameter_tmp = PrivateParameter.new
              privateparameter_tmp.deserialize(i)
              @PrivateParameters << privateparameter_tmp
            end
          end
          @HostHeader = params['HostHeader']
          @VodeoSubAppId = params['VodeoSubAppId']
          @VodeoDistributionRange = params['VodeoDistributionRange']
          @VodeoBucketId = params['VodeoBucketId']
          @VodOriginScope = params['VodOriginScope']
          @VodBucketId = params['VodBucketId']
        end
      end

      # 源站组信息
      class OriginGroup < TencentCloud::Common::AbstractModel
        # @param GroupId: 源站组ID。
        # @type GroupId: String
        # @param Name: 源站组名称。
        # @type Name: String
        # @param Type: 源站组类型，取值有：
        # <li>GENERAL：通用型源站组；</li>
        # <li>HTTP： HTTP专用型源站组。</li>
        # @type Type: String
        # @param Records: 源站记录信息。
        # @type Records: Array
        # @param References: 源站组被引用实例列表。
        # @type References: Array
        # @param CreateTime: 源站组创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 源站组更新时间。
        # @type UpdateTime: String
        # @param HostHeader: 回源Host Header。
        # @type HostHeader: String

        attr_accessor :GroupId, :Name, :Type, :Records, :References, :CreateTime, :UpdateTime, :HostHeader

        def initialize(groupid=nil, name=nil, type=nil, records=nil, references=nil, createtime=nil, updatetime=nil, hostheader=nil)
          @GroupId = groupid
          @Name = name
          @Type = type
          @Records = records
          @References = references
          @CreateTime = createtime
          @UpdateTime = updatetime
          @HostHeader = hostheader
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Name = params['Name']
          @Type = params['Type']
          unless params['Records'].nil?
            @Records = []
            params['Records'].each do |i|
              originrecord_tmp = OriginRecord.new
              originrecord_tmp.deserialize(i)
              @Records << originrecord_tmp
            end
          end
          unless params['References'].nil?
            @References = []
            params['References'].each do |i|
              origingroupreference_tmp = OriginGroupReference.new
              origingroupreference_tmp.deserialize(i)
              @References << origingroupreference_tmp
            end
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @HostHeader = params['HostHeader']
        end
      end

      # 源站组健康状态。
      class OriginGroupHealthStatus < TencentCloud::Common::AbstractModel
        # @param OriginGroupID: 源站组 ID。
        # @type OriginGroupID: String
        # @param OriginGroupName: 源站组名。
        # @type OriginGroupName: String
        # @param OriginType: 源站组类型，取值有：
        # <li>HTTP：HTTP 专用型；</li>
        # <li>GENERAL：通用型。</li>
        # @type OriginType: String
        # @param Priority: 优先级。
        # @type Priority: String
        # @param OriginHealthStatus: 源站组里各源站的健康状态。
        # @type OriginHealthStatus: Array

        attr_accessor :OriginGroupID, :OriginGroupName, :OriginType, :Priority, :OriginHealthStatus

        def initialize(origingroupid=nil, origingroupname=nil, origintype=nil, priority=nil, originhealthstatus=nil)
          @OriginGroupID = origingroupid
          @OriginGroupName = origingroupname
          @OriginType = origintype
          @Priority = priority
          @OriginHealthStatus = originhealthstatus
        end

        def deserialize(params)
          @OriginGroupID = params['OriginGroupID']
          @OriginGroupName = params['OriginGroupName']
          @OriginType = params['OriginType']
          @Priority = params['Priority']
          unless params['OriginHealthStatus'].nil?
            @OriginHealthStatus = []
            params['OriginHealthStatus'].each do |i|
              originhealthstatus_tmp = OriginHealthStatus.new
              originhealthstatus_tmp.deserialize(i)
              @OriginHealthStatus << originhealthstatus_tmp
            end
          end
        end
      end

      # 源站组健康状态详情。
      class OriginGroupHealthStatusDetail < TencentCloud::Common::AbstractModel
        # @param OriginGroupId: 源站组 ID。
        # @type OriginGroupId: String
        # @param OriginHealthStatus: 根据所有探测区域的结果综合决策出来的源站组下各个源站的健康状态。超过一半的地域判定该源站不健康，则对应状态为不健康，否则为健康。
        # @type OriginHealthStatus: Array
        # @param CheckRegionHealthStatus: 各个健康检查区域下源站的健康状态。
        # @type CheckRegionHealthStatus: Array

        attr_accessor :OriginGroupId, :OriginHealthStatus, :CheckRegionHealthStatus

        def initialize(origingroupid=nil, originhealthstatus=nil, checkregionhealthstatus=nil)
          @OriginGroupId = origingroupid
          @OriginHealthStatus = originhealthstatus
          @CheckRegionHealthStatus = checkregionhealthstatus
        end

        def deserialize(params)
          @OriginGroupId = params['OriginGroupId']
          unless params['OriginHealthStatus'].nil?
            @OriginHealthStatus = []
            params['OriginHealthStatus'].each do |i|
              originhealthstatus_tmp = OriginHealthStatus.new
              originhealthstatus_tmp.deserialize(i)
              @OriginHealthStatus << originhealthstatus_tmp
            end
          end
          unless params['CheckRegionHealthStatus'].nil?
            @CheckRegionHealthStatus = []
            params['CheckRegionHealthStatus'].each do |i|
              checkregionhealthstatus_tmp = CheckRegionHealthStatus.new
              checkregionhealthstatus_tmp.deserialize(i)
              @CheckRegionHealthStatus << checkregionhealthstatus_tmp
            end
          end
        end
      end

      # 负载均衡实例中需要绑定的源站组和优先级关系。
      class OriginGroupInLoadBalancer < TencentCloud::Common::AbstractModel
        # @param Priority: 优先级，填写格式为 "priority_" + "数字"，最高优先级为 "priority_1"。参考取值有：
        # <li>priority_1：第一优先级；</li>
        # <li>priority_2：第二优先级；</li>
        # <li>priority_3：第三优先级。</li>其他优先级可以将数字递增，最多可以递增至 "priority_10"。
        # @type Priority: String
        # @param OriginGroupId: 源站组 ID。
        # @type OriginGroupId: String

        attr_accessor :Priority, :OriginGroupId

        def initialize(priority=nil, origingroupid=nil)
          @Priority = priority
          @OriginGroupId = origingroupid
        end

        def deserialize(params)
          @Priority = params['Priority']
          @OriginGroupId = params['OriginGroupId']
        end
      end

      # 源站组引用服务。
      class OriginGroupReference < TencentCloud::Common::AbstractModel
        # @param InstanceType: 引用服务类型，取值有：
        # <li>AccelerationDomain: 加速域名；</li>
        # <li>RuleEngine: 规则引擎；</li>
        # <li>Loadbalance: 负载均衡；</li>
        # <li>ApplicationProxy: 四层代理。</li>
        # @type InstanceType: String
        # @param InstanceId: 引用类型的实例ID。
        # @type InstanceId: String
        # @param InstanceName: 应用类型的实例名称。
        # @type InstanceName: String

        attr_accessor :InstanceType, :InstanceId, :InstanceName

        def initialize(instancetype=nil, instanceid=nil, instancename=nil)
          @InstanceType = instancetype
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceType = params['InstanceType']
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # 源站组里的源站健康状态。
      class OriginHealthStatus < TencentCloud::Common::AbstractModel
        # @param Origin: 源站。
        # @type Origin: String
        # @param Healthy: 源站健康状态，取值有：
        # <li>Healthy：健康；</li>
        # <li>Unhealthy：不健康；</li>
        # <li>Undetected：未探测到数据。</li>
        # @type Healthy: String

        attr_accessor :Origin, :Healthy

        def initialize(origin=nil, healthy=nil)
          @Origin = origin
          @Healthy = healthy
        end

        def deserialize(params)
          @Origin = params['Origin']
          @Healthy = params['Healthy']
        end
      end

      # 加速域名源站信息。
      class OriginInfo < TencentCloud::Common::AbstractModel
        # @param OriginType: 源站类型，取值有：
        # <li>IP_DOMAIN：IPV4、IPV6 或域名类型源站；</li>
        # <li>COS：腾讯云 COS 对象存储源站；</li>
        # <li>AWS_S3：AWS S3 对象存储源站；</li>
        # <li>ORIGIN_GROUP：源站组类型源站；</li>
        #  <li>VOD：云点播；</li>
        # <li>SPACE：源站卸载，当前仅白名单开放；</li>
        # <li>LB：负载均衡，当前仅白名单开放。</li>
        # @type OriginType: String
        # @param Origin: 源站地址，根据 OriginType 的取值分为以下情况：
        # <li>当 OriginType = IP_DOMAIN 时，该参数请填写 IPv4、IPv6 地址或域名；</li>
        # <li>当 OriginType = COS 时，该参数请填写 COS 桶的访问域名；</li>
        # <li>当 OriginType = AWS_S3，该参数请填写 S3 桶的访问域名；</li>
        # <li>当 OriginType = ORIGIN_GROUP 时，该参数请填写源站组 ID；</li>
        # <li>当 OriginType = VOD 时，该参数请填写云点播应用 ID ；</li>
        # <li>当 OriginType = LB 时，该参数请填写负载均衡实例 ID，该功能当前仅白名单开放；</li>
        # <li>当 OriginType = SPACE 时，该参数请填写源站卸载空间 ID，该功能当前仅白名单开放。</li>
        # @type Origin: String
        # @param BackupOrigin: 备用源站组 ID，该参数仅在 OriginType = ORIGIN_GROUP 时生效，该字段为旧版能力，调用后控制台无法进行配置修改，如需使用请提交工单咨询。
        # @type BackupOrigin: String
        # @param PrivateAccess: 指定是否允许访问私有对象存储源站，该参数仅当源站类型 OriginType = COS 或 AWS_S3 时会生效，取值有：
        # <li>on：使用私有鉴权；</li>
        # <li>off：不使用私有鉴权。</li>
        # 不填写时，默认值为off。
        # @type PrivateAccess: String
        # @param PrivateParameters: 私有鉴权使用参数，该参数仅当源站类型 PrivateAccess = on 时会生效。
        # @type PrivateParameters: Array
        # @param HostHeader: 自定义回源 HOST 头，该参数仅当 OriginType=IP_DOMAIN 时生效。
        # 如果 OriginType=COS 或 AWS_S3 时，回源 HOST 头将与源站域名保持一致。
        # 如果OriginType=ORIGIN_GROUP 时，回源 HOST 头遵循源站组内配置，如果没有配置则默认为加速域名。
        # 如果 OriginType=VOD 或 SPACE 时，无需配置该头部，按对应的回源域名生效。
        # @type HostHeader: String
        # @param VodeoSubAppId: VODEO 子应用 ID。该参数当 OriginType = VODEO 时必填。
        # @type VodeoSubAppId: Integer
        # @param VodeoDistributionRange: VODEO 分发范围，该参数当 OriginType = VODEO 时必填。取值有：
        # <li>All：当前应用下所有存储桶；</li>
        # <li>Bucket：指定的某一个存储桶。</li>
        # @type VodeoDistributionRange: String
        # @param VodeoBucketId: VODEO 存储桶 ID，该参数当 OriginType = VODEO 且 VodeoDistributionRange = Bucket 时必填。
        # @type VodeoBucketId: String
        # @param VodOriginScope: 云点播回源范围，该参数当 OriginType = VOD 时生效。取值有：<li>all：当前源站对应的云点播应用内所有文件，默认值为 all；</li><li>bucket：当前源站对应的云点播应用下指定某一个存储桶内的文件。通过参数 VodBucketId 来指定存储桶。
        # </li>
        # @type VodOriginScope: String
        # @param VodBucketId: VOD 存储桶 ID，该参数当 OriginType = VOD 且 VodOriginScope = bucket 时必填。数据来源：云点播专业版应用下存储桶的存储 ID 。
        # @type VodBucketId: String

        attr_accessor :OriginType, :Origin, :BackupOrigin, :PrivateAccess, :PrivateParameters, :HostHeader, :VodeoSubAppId, :VodeoDistributionRange, :VodeoBucketId, :VodOriginScope, :VodBucketId
        extend Gem::Deprecate
        deprecate :VodeoSubAppId, :none, 2025, 7
        deprecate :VodeoSubAppId=, :none, 2025, 7
        deprecate :VodeoDistributionRange, :none, 2025, 7
        deprecate :VodeoDistributionRange=, :none, 2025, 7
        deprecate :VodeoBucketId, :none, 2025, 7
        deprecate :VodeoBucketId=, :none, 2025, 7

        def initialize(origintype=nil, origin=nil, backuporigin=nil, privateaccess=nil, privateparameters=nil, hostheader=nil, vodeosubappid=nil, vodeodistributionrange=nil, vodeobucketid=nil, vodoriginscope=nil, vodbucketid=nil)
          @OriginType = origintype
          @Origin = origin
          @BackupOrigin = backuporigin
          @PrivateAccess = privateaccess
          @PrivateParameters = privateparameters
          @HostHeader = hostheader
          @VodeoSubAppId = vodeosubappid
          @VodeoDistributionRange = vodeodistributionrange
          @VodeoBucketId = vodeobucketid
          @VodOriginScope = vodoriginscope
          @VodBucketId = vodbucketid
        end

        def deserialize(params)
          @OriginType = params['OriginType']
          @Origin = params['Origin']
          @BackupOrigin = params['BackupOrigin']
          @PrivateAccess = params['PrivateAccess']
          unless params['PrivateParameters'].nil?
            @PrivateParameters = []
            params['PrivateParameters'].each do |i|
              privateparameter_tmp = PrivateParameter.new
              privateparameter_tmp.deserialize(i)
              @PrivateParameters << privateparameter_tmp
            end
          end
          @HostHeader = params['HostHeader']
          @VodeoSubAppId = params['VodeoSubAppId']
          @VodeoDistributionRange = params['VodeoDistributionRange']
          @VodeoBucketId = params['VodeoBucketId']
          @VodOriginScope = params['VodOriginScope']
          @VodBucketId = params['VodBucketId']
        end
      end

      # 对象存储源站私有鉴权参数。
      class OriginPrivateParameters < TencentCloud::Common::AbstractModel
        # @param AccessKeyId: 鉴权参数 Access Key ID。
        # @type AccessKeyId: String
        # @param SecretAccessKey: 鉴权参数 Secret Access Key。
        # @type SecretAccessKey: String
        # @param SignatureVersion: 鉴权版本。取值有：
        # <li>v2：v2版本；</li>
        # <li>v4：v4版本。</li>
        # @type SignatureVersion: String
        # @param Region: 存储桶地域。
        # @type Region: String

        attr_accessor :AccessKeyId, :SecretAccessKey, :SignatureVersion, :Region

        def initialize(accesskeyid=nil, secretaccesskey=nil, signatureversion=nil, region=nil)
          @AccessKeyId = accesskeyid
          @SecretAccessKey = secretaccesskey
          @SignatureVersion = signatureversion
          @Region = region
        end

        def deserialize(params)
          @AccessKeyId = params['AccessKeyId']
          @SecretAccessKey = params['SecretAccessKey']
          @SignatureVersion = params['SignatureVersion']
          @Region = params['Region']
        end
      end

      # 源站防护信息
      class OriginProtectionInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # @type ZoneId: String
        # @param Hosts: 域名列表。
        # @type Hosts: Array
        # @param ProxyIds: 代理ID列表。
        # @type ProxyIds: Array
        # @param CurrentIPWhitelist: 当前版本的IP白名单。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CurrentIPWhitelist: :class:`Tencentcloud::Teo.v20220901.models.IPWhitelist`
        # @param NeedUpdate: 该站点是否需要更新源站白名单，取值有：
        # <li>true ：需要更新IP白名单 ；</li>
        # <li>false ：无需更新IP白名单。</li>
        # @type NeedUpdate: Boolean
        # @param Status: 源站防护状态，取值有：
        # <li>online ：源站防护启用中 ；</li>
        # <li>offline ：源站防护已停用 ；</li>
        # <li>nonactivate ：源站防护未激活，仅在从未使用过源站防护功能的站点调用中返回。</li>
        # @type Status: String
        # @param PlanSupport: 站点套餐是否支持源站防护，取值有：
        # <li>true ：支持 ；</li>
        # <li>false ：不支持。</li>
        # @type PlanSupport: Boolean
        # @param DiffIPWhitelist: 最新IP白名单与当前IP白名单的对比。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiffIPWhitelist: :class:`Tencentcloud::Teo.v20220901.models.DiffIPWhitelist`

        attr_accessor :ZoneId, :Hosts, :ProxyIds, :CurrentIPWhitelist, :NeedUpdate, :Status, :PlanSupport, :DiffIPWhitelist

        def initialize(zoneid=nil, hosts=nil, proxyids=nil, currentipwhitelist=nil, needupdate=nil, status=nil, plansupport=nil, diffipwhitelist=nil)
          @ZoneId = zoneid
          @Hosts = hosts
          @ProxyIds = proxyids
          @CurrentIPWhitelist = currentipwhitelist
          @NeedUpdate = needupdate
          @Status = status
          @PlanSupport = plansupport
          @DiffIPWhitelist = diffipwhitelist
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @Hosts = params['Hosts']
          @ProxyIds = params['ProxyIds']
          unless params['CurrentIPWhitelist'].nil?
            @CurrentIPWhitelist = IPWhitelist.new
            @CurrentIPWhitelist.deserialize(params['CurrentIPWhitelist'])
          end
          @NeedUpdate = params['NeedUpdate']
          @Status = params['Status']
          @PlanSupport = params['PlanSupport']
          unless params['DiffIPWhitelist'].nil?
            @DiffIPWhitelist = DiffIPWhitelist.new
            @DiffIPWhitelist.deserialize(params['DiffIPWhitelist'])
          end
        end
      end

      # 源站组记录
      class OriginRecord < TencentCloud::Common::AbstractModel
        # @param Record: 源站记录值，不包含端口信息，可以为：IPv4，IPv6，域名格式。
        # @type Record: String
        # @param Type: 源站类型，取值有：
        # <li>IP_DOMAIN：IPV4、IPV6、域名类型源站；</li>
        # <li>COS：COS源。</li>
        # <li>AWS_S3：AWS S3对象存储源站。</li>
        # @type Type: String
        # @param RecordId: 源站记录ID。
        # @type RecordId: String
        # @param Weight: 源站权重，取值为0-100, 不填表示不设置权重，由系统自由调度，填0表示权重为0, 流量将不会调度到此源站。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Weight: Integer
        # @param Private: 是否私有鉴权，当源站类型 RecordType=COS/AWS_S3 时生效，取值有：
        # <li>true：使用私有鉴权；</li>
        # <li>false：不使用私有鉴权。</li>不填写，默认值为：false。
        # @type Private: Boolean
        # @param PrivateParameters: 私有鉴权参数，当源站类型Private=true时有效。
        # @type PrivateParameters: Array

        attr_accessor :Record, :Type, :RecordId, :Weight, :Private, :PrivateParameters

        def initialize(record=nil, type=nil, recordid=nil, weight=nil, private=nil, privateparameters=nil)
          @Record = record
          @Type = type
          @RecordId = recordid
          @Weight = weight
          @Private = private
          @PrivateParameters = privateparameters
        end

        def deserialize(params)
          @Record = params['Record']
          @Type = params['Type']
          @RecordId = params['RecordId']
          @Weight = params['Weight']
          @Private = params['Private']
          unless params['PrivateParameters'].nil?
            @PrivateParameters = []
            params['PrivateParameters'].each do |i|
              privateparameter_tmp = PrivateParameter.new
              privateparameter_tmp.deserialize(i)
              @PrivateParameters << privateparameter_tmp
            end
          end
        end
      end

      # 该结构体表示各种场景、模式下，用于验证用户对站点域名的归属权内容。
      class OwnershipVerification < TencentCloud::Common::AbstractModel
        # @param DnsVerification: CNAME 、无域名接入时，使用 DNS 解析验证时所需的信息。详情参考 [站点/域名归属权验证
        # ](https://cloud.tencent.com/document/product/1552/70789#7af6ecf8-afca-4e35-8811-b5797ed1bde5)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DnsVerification: :class:`Tencentcloud::Teo.v20220901.models.DnsVerification`
        # @param FileVerification: CNAME 、无域名接入时，使用文件验证时所需的信息。详情参考 [站点/域名归属权验证
        # ](https://cloud.tencent.com/document/product/1552/70789#7af6ecf8-afca-4e35-8811-b5797ed1bde5)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileVerification: :class:`Tencentcloud::Teo.v20220901.models.FileVerification`
        # @param NsVerification: NS 接入，切换 DNS 服务器所需的信息。详情参考 [修改 DNS 服务器](https://cloud.tencent.com/document/product/1552/90452)。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NsVerification: :class:`Tencentcloud::Teo.v20220901.models.NsVerification`

        attr_accessor :DnsVerification, :FileVerification, :NsVerification

        def initialize(dnsverification=nil, fileverification=nil, nsverification=nil)
          @DnsVerification = dnsverification
          @FileVerification = fileverification
          @NsVerification = nsverification
        end

        def deserialize(params)
          unless params['DnsVerification'].nil?
            @DnsVerification = DnsVerification.new
            @DnsVerification.deserialize(params['DnsVerification'])
          end
          unless params['FileVerification'].nil?
            @FileVerification = FileVerification.new
            @FileVerification.deserialize(params['FileVerification'])
          end
          unless params['NsVerification'].nil?
            @NsVerification = NsVerification.new
            @NsVerification.deserialize(params['NsVerification'])
          end
        end
      end

      # 例外规则的详细模块配置。
      class PartialModule < TencentCloud::Common::AbstractModel
        # @param Module: 模块名称，取值为：
        # <li>managed-rule：托管规则 Id；</li>
        # <li>managed-group：托管规则组；</li>
        # <li>waf：待废弃，托管规则。</li>
        # @type Module: String
        # @param Include: 模块下的需要例外的具体规则ID列表。
        # @type Include: Array

        attr_accessor :Module, :Include

        def initialize(_module=nil, include=nil)
          @Module = _module
          @Include = include
        end

        def deserialize(params)
          @Module = params['Module']
          @Include = params['Include']
        end
      end

      # 套餐信息
      class Plan < TencentCloud::Common::AbstractModel
        # @param PlanType: 套餐类型。取值有：
        # <li>plan-trial: 试用版套餐；</li>
        # <li>plan-personal: 个人版套餐；</li>
        # <li>plan-basic: 基础版套餐；</li>
        # <li>plan-standard: 标准版套餐；</li>
        # <li>plan-enterprise-v2: 企业版套餐；</li>
        # <li>plan-enterprise-model-a: 企业版 Model A 套餐。</li>
        # <li>plan-enterprise: 旧企业版套餐。</li>
        # @type PlanType: String
        # @param PlanId: 套餐 ID。形如 edgeone-2y041pblwaxe。
        # @type PlanId: String
        # @param Area: 服务区域，取值有：
        # <li>mainland: 中国大陆；</li>
        # <li>overseas: 全球（不包括中国大陆）；</li>
        # <li>global: 全球（包括中国大陆）。</li>
        # @type Area: String
        # @param AutoRenewal: 自动续费开关。取值有：
        # <li>true: 已开启自动续费；</li>
        # <li>false: 未开启自动续费。</li>
        # @type AutoRenewal: Boolean
        # @param Status: 套餐状态，取值有：
        # <li>normal：正常状态；</li>
        # <li>expiring-soon：即将到期状态；</li>
        # <li>expired：到期状态；</li>
        # <li>isolated：隔离状态；</li>
        # <li>overdue-isolated：欠费隔离状态。</li>
        # @type Status: String
        # @param PayMode: 付费类型，取值有：
        # <li>0: 后付费；</li>
        # <li>1: 预付费。</li>
        # @type PayMode: Integer
        # @param ZonesInfo: 套餐绑定的站点信息，包括站点id和站点名称，站点状态。
        # @type ZonesInfo: Array
        # @param SmartRequestCapacity: 套餐内智能加速请求数规格，单位：次。
        # @type SmartRequestCapacity: Integer
        # @param VAUCapacity: 套餐内VAU规格，单位：个。
        # @type VAUCapacity: Integer
        # @param AccTrafficCapacity: 套餐内内容加速流量规格，单位：字节。
        # @type AccTrafficCapacity: Integer
        # @param SmartTrafficCapacity: 套餐内智能加速流量规格，单位：字节。
        # @type SmartTrafficCapacity: Integer
        # @param DDoSTrafficCapacity: 套餐内DDoS防护流量规格，单位：字节。
        # @type DDoSTrafficCapacity: Integer
        # @param SecTrafficCapacity: 套餐内安全流量规格，单位：字节。
        # @type SecTrafficCapacity: Integer
        # @param SecRequestCapacity: 套餐内安全请求数规格，单位：次。
        # @type SecRequestCapacity: Integer
        # @param L4TrafficCapacity: 套餐内四层加速流量规格，单位：字节。
        # @type L4TrafficCapacity: Integer
        # @param CrossMLCTrafficCapacity: 套餐内中国大陆网络优化流量规格，单位：字节。
        # @type CrossMLCTrafficCapacity: Integer
        # @param Bindable: 套餐是否允许绑定新站点，取值有：
        # <li>true: 允许绑定新站点；</li>
        # <li>false: 不允许绑定新站点。</li>
        # @type Bindable: String
        # @param EnabledTime: 套餐生效时间。
        # @type EnabledTime: String
        # @param ExpiredTime: 套餐过期时间。
        # @type ExpiredTime: String
        # @param Features: 套餐所支持的功能，取值有：<li>ContentAcceleration：内容加速功能；</li><li>SmartAcceleration：智能加速功能；</li><li>L4：四层加速功能；</li><li>Waf：高级 Web 防护；</li><li>QUIC：QUIC功能；</li><li>CrossMLC：中国大陆网络优化功能；</li><li>ProcessMedia：媒体处理功能；</li><li>L4DDoS：四层DDoS防护功能；</li>L7DDoS功能只会出现以下所有规格中的一项<li>L7DDoS.CM30G；七层DDoS防护功能-中国大陆30G保底带宽规格；</li><li>L7DDoS.CM60G；七层DDoS防护功能-中国大陆60G保底带宽规格；</li><li>L7DDoS.CM100G；七层DDoS防护功能-中国大陆100G保底带宽规格；</li><li>L7DDoS.Anycast300G；七层DDoS防护功能-中国大陆以外Anycast300G保底带宽规格；</li><li>L7DDoS.AnycastUnlimited；七层DDoS防护功能-中国大陆以外Anycast无上限全力防护规格；</li><li>L7DDoS.CM30G_Anycast300G；七层DDoS防护功能-中国大陆30G保底带宽规格，中国大陆以外Anycast300G保底带宽规格；</li><li>L7DDoS.CM60G_Anycast300G；七层DDoS防护功能-中国大陆60G保底带宽规格，中国大陆以外Anycast300G保底带宽规格；</li><li>L7DDoS.CM100G_Anycast300G；七层DDoS防护功能-中国大陆100G保底带宽规格，中国大陆以外Anycast300G保底带宽规格；</li><li>L7DDoS.CM30G_AnycastUnlimited；七层DDoS防护功能-中国大陆30G保底带宽规格，中国大陆以外Anycast无上限全力防护规格；</li><li>L7DDoS.CM60G_AnycastUnlimited；七层DDoS防护功能-中国大陆60G保底带宽规格，中国大陆以外Anycast无上限全力防护规格；</li><li>L7DDoS.CM100G_AnycastUnlimited；七层DDoS防护功能-中国大陆100G保底带宽规格，中国大陆以外Anycast无上限全力防护规格；</li>
        # @type Features: Array

        attr_accessor :PlanType, :PlanId, :Area, :AutoRenewal, :Status, :PayMode, :ZonesInfo, :SmartRequestCapacity, :VAUCapacity, :AccTrafficCapacity, :SmartTrafficCapacity, :DDoSTrafficCapacity, :SecTrafficCapacity, :SecRequestCapacity, :L4TrafficCapacity, :CrossMLCTrafficCapacity, :Bindable, :EnabledTime, :ExpiredTime, :Features

        def initialize(plantype=nil, planid=nil, area=nil, autorenewal=nil, status=nil, paymode=nil, zonesinfo=nil, smartrequestcapacity=nil, vaucapacity=nil, acctrafficcapacity=nil, smarttrafficcapacity=nil, ddostrafficcapacity=nil, sectrafficcapacity=nil, secrequestcapacity=nil, l4trafficcapacity=nil, crossmlctrafficcapacity=nil, bindable=nil, enabledtime=nil, expiredtime=nil, features=nil)
          @PlanType = plantype
          @PlanId = planid
          @Area = area
          @AutoRenewal = autorenewal
          @Status = status
          @PayMode = paymode
          @ZonesInfo = zonesinfo
          @SmartRequestCapacity = smartrequestcapacity
          @VAUCapacity = vaucapacity
          @AccTrafficCapacity = acctrafficcapacity
          @SmartTrafficCapacity = smarttrafficcapacity
          @DDoSTrafficCapacity = ddostrafficcapacity
          @SecTrafficCapacity = sectrafficcapacity
          @SecRequestCapacity = secrequestcapacity
          @L4TrafficCapacity = l4trafficcapacity
          @CrossMLCTrafficCapacity = crossmlctrafficcapacity
          @Bindable = bindable
          @EnabledTime = enabledtime
          @ExpiredTime = expiredtime
          @Features = features
        end

        def deserialize(params)
          @PlanType = params['PlanType']
          @PlanId = params['PlanId']
          @Area = params['Area']
          @AutoRenewal = params['AutoRenewal']
          @Status = params['Status']
          @PayMode = params['PayMode']
          unless params['ZonesInfo'].nil?
            @ZonesInfo = []
            params['ZonesInfo'].each do |i|
              zoneinfo_tmp = ZoneInfo.new
              zoneinfo_tmp.deserialize(i)
              @ZonesInfo << zoneinfo_tmp
            end
          end
          @SmartRequestCapacity = params['SmartRequestCapacity']
          @VAUCapacity = params['VAUCapacity']
          @AccTrafficCapacity = params['AccTrafficCapacity']
          @SmartTrafficCapacity = params['SmartTrafficCapacity']
          @DDoSTrafficCapacity = params['DDoSTrafficCapacity']
          @SecTrafficCapacity = params['SecTrafficCapacity']
          @SecRequestCapacity = params['SecRequestCapacity']
          @L4TrafficCapacity = params['L4TrafficCapacity']
          @CrossMLCTrafficCapacity = params['CrossMLCTrafficCapacity']
          @Bindable = params['Bindable']
          @EnabledTime = params['EnabledTime']
          @ExpiredTime = params['ExpiredTime']
          @Features = params['Features']
        end
      end

      # edgeone套餐信息
      class PlanInfo < TencentCloud::Common::AbstractModel
        # @param Currency: 结算货币类型，取值有：
        # <li> CNY ：人民币结算； </li>
        # <li> USD ：美元结算。</li>
        # @type Currency: String
        # @param Flux: 套餐所含流量，该流量数值为安全加速流量，内容加速流量和智能加速流量的总和（单位：字节）。
        # @type Flux: Integer
        # @param Frequency: 结算周期，取值有：
        # <li> y ：按年结算； </li>
        # <li> m ：按月结算；</li>
        # <li> h ：按小时结算； </li>
        # <li> M ：按分钟结算；</li>
        # <li> s ：按秒结算。 </li>
        # @type Frequency: String
        # @param PlanType: 套餐类型，取值有：
        # <li> sta ：全球内容分发网络（不包括中国大陆）标准版套餐； </li>
        # <li> sta_with_bot ：全球内容分发网络（不包括中国大陆）标准版套餐附带bot管理；</li>
        # <li> sta_cm ：中国大陆内容分发网络标准版套餐； </li>
        # <li> sta_cm_with_bot ：中国大陆内容分发网络标准版套餐附带bot管理；</li>
        # <li> sta_global ：全球内容分发网络（包括中国大陆）标准版套餐； </li>
        # <li> sta_global_with_bot ：全球内容分发网络（包括中国大陆）标准版套餐附带bot管理；</li>
        # <li> ent ：全球内容分发网络（不包括中国大陆）企业版套餐； </li>
        # <li> ent_with_bot ： 全球内容分发网络（不包括中国大陆）企业版套餐附带bot管理；</li>
        # <li> ent_cm ：中国大陆内容分发网络企业版套餐； </li>
        # <li> ent_cm_with_bot ：中国大陆内容分发网络企业版套餐附带bot管理；</li>
        # <li> ent_global ：全球内容分发网络（包括中国大陆）企业版套餐； </li>
        # <li> ent_global_with_bot ：全球内容分发网络（包括中国大陆）企业版套餐附带bot管理。</li>
        # @type PlanType: String
        # @param Price: 套餐价格（单位：分）。
        # @type Price: Float
        # @param Request: 套餐所含请求次数，该请求次数为安全加速请求次数。（单位：次）。
        # @type Request: Integer
        # @param SiteNumber: 套餐所能绑定的站点个数。
        # @type SiteNumber: Integer
        # @param Area: 套餐加速区域类型，取值有：
        # <li> mainland ：中国大陆； </li>
        # <li> overseas ：全球（不包括中国大陆）；</li>
        # <li> global ：全球（包括中国大陆）。 </li>
        # @type Area: String

        attr_accessor :Currency, :Flux, :Frequency, :PlanType, :Price, :Request, :SiteNumber, :Area

        def initialize(currency=nil, flux=nil, frequency=nil, plantype=nil, price=nil, request=nil, sitenumber=nil, area=nil)
          @Currency = currency
          @Flux = flux
          @Frequency = frequency
          @PlanType = plantype
          @Price = price
          @Request = request
          @SiteNumber = sitenumber
          @Area = area
        end

        def deserialize(params)
          @Currency = params['Currency']
          @Flux = params['Flux']
          @Frequency = params['Frequency']
          @PlanType = params['PlanType']
          @Price = params['Price']
          @Request = params['Request']
          @SiteNumber = params['SiteNumber']
          @Area = params['Area']
        end
      end

      # POST请求上传文件流式传输最大限制
      class PostMaxSize < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启 POST 请求上传文件限制，平台默认为限制为32MB，取值有：
        # <li>on：开启限制；</li>
        # <li>off：关闭限制。</li>
        # @type Switch: String
        # @param MaxSize: 最大限制，取值在1MB和500MB之间。单位字节。
        # @type MaxSize: Integer

        attr_accessor :Switch, :MaxSize

        def initialize(switch=nil, maxsize=nil)
          @Switch = switch
          @MaxSize = maxsize
        end

        def deserialize(params)
          @Switch = params['Switch']
          @MaxSize = params['MaxSize']
        end
      end

      # POST 请求上传文件流式传输最大限制。
      class PostMaxSizeParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启 POST 请求上传文件限制，单位为 Byte，平台默认为限制为 32 * 2<sup>20</sup> Byte，取值有：<li>on：开启限制；</li><li>off：关闭限制。</li>
        # @type Switch: String
        # @param MaxSize: POST 请求上传文件流式传输最大限制，单位为 Byte，取值：1 * 2<sup>20</sup> Byte～500 * 2<sup>20</sup> Byte。
        # @type MaxSize: Integer

        attr_accessor :Switch, :MaxSize

        def initialize(switch=nil, maxsize=nil)
          @Switch = switch
          @MaxSize = maxsize
        end

        def deserialize(params)
          @Switch = params['Switch']
          @MaxSize = params['MaxSize']
        end
      end

      # 预付费套餐计费参数
      class PrepaidPlanParam < TencentCloud::Common::AbstractModel
        # @param Period: 订阅预付费套餐的周期，单位：月，取值有：1，2，3，4，5，6，7，8，9，10，11，12，24，36。

        # 不填写使用默认值 1。
        # @type Period: Integer
        # @param RenewFlag: 预付费套餐的自动续费标志，取值有：
        # <li> on：开启自动续费；</li>
        # <li> off：不开启自动续费。</li>
        # 不填写使用默认值 off，自动续费时，默认续费1个月。
        # @type RenewFlag: String

        attr_accessor :Period, :RenewFlag

        def initialize(period=nil, renewflag=nil)
          @Period = period
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @Period = params['Period']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 对象存储源站私有鉴权参数
      class PrivateParameter < TencentCloud::Common::AbstractModel
        # @param Name: 私有鉴权参数名称，取值有：
        # <li>AccessKeyId：鉴权参数 Access Key ID；</li>
        # <li>SecretAccessKey：鉴权参数 Secret Access Key；</li>
        # <li>SignatureVersion：鉴权版本，v2 或者 v4；</li>
        # <li>Region：存储桶地域。</li>
        # @type Name: String
        # @param Value: 私有鉴权参数值。
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

      # QUIC 配置项。
      class QUICParameters < TencentCloud::Common::AbstractModel
        # @param Switch: QUIC 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 查询条件
      class QueryCondition < TencentCloud::Common::AbstractModel
        # @param Key: 筛选条件的key。
        # @type Key: String
        # @param Operator: 查询条件操作符，操作类型有：
        # <li>equals: 等于；</li>
        # <li>notEquals: 不等于；</li>
        # <li>include: 包含；</li>
        # <li>notInclude: 不包含; </li>
        # <li>startWith: 开始的值是value；</li>
        # <li>notStartWith: 不以value的值开始；</li>
        # <li>endWith: 结尾是value值；</li>
        # <li>notEndWith: 不以value的值结尾。</li>
        # @type Operator: String
        # @param Value: 筛选条件的值。
        # @type Value: Array

        attr_accessor :Key, :Operator, :Value

        def initialize(key=nil, operator=nil, value=nil)
          @Key = key
          @Operator = operator
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Operator = params['Operator']
          @Value = params['Value']
        end
      end

      # CacheKey中包含请求参数
      class QueryString < TencentCloud::Common::AbstractModel
        # @param Switch: CacheKey是否由QueryString组成，取值有：
        # <li>on：是；</li>
        # <li>off：否。</li>
        # @type Switch: String
        # @param Action: CacheKey使用QueryString的方式，取值有：
        # <li>includeCustom：使用部分url参数；</li>
        # <li>excludeCustom：排除部分url参数。</li>
        # @type Action: String
        # @param Value: 使用/排除的url参数数组。
        # @type Value: Array

        attr_accessor :Switch, :Action, :Value

        def initialize(switch=nil, action=nil, value=nil)
          @Switch = switch
          @Action = action
          @Value = value
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Action = params['Action']
          @Value = params['Value']
        end
      end

      # Quic配置项
      class Quic < TencentCloud::Common::AbstractModel
        # @param Switch: 是否开启 Quic 配置，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 刷新/预热 可用量及配额
      class Quota < TencentCloud::Common::AbstractModel
        # @param Batch: 单次批量提交配额上限。
        # @type Batch: Integer
        # @param Daily: 每日提交配额上限。
        # @type Daily: Integer
        # @param DailyAvailable: 每日剩余的可提交配额。
        # @type DailyAvailable: Integer
        # @param Type: 刷新预热缓存类型，取值有：
        # <li> purge_prefix：按前缀刷新；</li>
        # <li> purge_url：按URL刷新；</li>
        # <li> purge_host：按Hostname刷新；</li>
        # <li> purge_all：刷新全部缓存内容；</li>
        # <li> purge_cache_tag：按CacheTag刷新；</li><li> prefetch_url：按URL预热。</li>
        # @type Type: String

        attr_accessor :Batch, :Daily, :DailyAvailable, :Type

        def initialize(batch=nil, daily=nil, dailyavailable=nil, type=nil)
          @Batch = batch
          @Daily = daily
          @DailyAvailable = dailyavailable
          @Type = type
        end

        def deserialize(params)
          @Batch = params['Batch']
          @Daily = params['Daily']
          @DailyAvailable = params['DailyAvailable']
          @Type = params['Type']
        end
      end

      # 分片回源配置参数。
      class RangeOriginPullParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 分片回源开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 速率限制规则
      class RateLimitConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param RateLimitUserRules: 速率限制-用户规则列表。如果为null，默认使用历史配置。
        # @type RateLimitUserRules: Array
        # @param RateLimitTemplate: 速率限制模板功能。如果为null，默认使用历史配置。
        # @type RateLimitTemplate: :class:`Tencentcloud::Teo.v20220901.models.RateLimitTemplate`
        # @param RateLimitIntelligence: 智能客户端过滤。如果为null，默认使用历史配置。
        # @type RateLimitIntelligence: :class:`Tencentcloud::Teo.v20220901.models.RateLimitIntelligence`
        # @param RateLimitCustomizes: 速率限制-托管定制规则。如果为null，默认使用历史配置。
        # @type RateLimitCustomizes: Array

        attr_accessor :Switch, :RateLimitUserRules, :RateLimitTemplate, :RateLimitIntelligence, :RateLimitCustomizes

        def initialize(switch=nil, ratelimituserrules=nil, ratelimittemplate=nil, ratelimitintelligence=nil, ratelimitcustomizes=nil)
          @Switch = switch
          @RateLimitUserRules = ratelimituserrules
          @RateLimitTemplate = ratelimittemplate
          @RateLimitIntelligence = ratelimitintelligence
          @RateLimitCustomizes = ratelimitcustomizes
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['RateLimitUserRules'].nil?
            @RateLimitUserRules = []
            params['RateLimitUserRules'].each do |i|
              ratelimituserrule_tmp = RateLimitUserRule.new
              ratelimituserrule_tmp.deserialize(i)
              @RateLimitUserRules << ratelimituserrule_tmp
            end
          end
          unless params['RateLimitTemplate'].nil?
            @RateLimitTemplate = RateLimitTemplate.new
            @RateLimitTemplate.deserialize(params['RateLimitTemplate'])
          end
          unless params['RateLimitIntelligence'].nil?
            @RateLimitIntelligence = RateLimitIntelligence.new
            @RateLimitIntelligence.deserialize(params['RateLimitIntelligence'])
          end
          unless params['RateLimitCustomizes'].nil?
            @RateLimitCustomizes = []
            params['RateLimitCustomizes'].each do |i|
              ratelimituserrule_tmp = RateLimitUserRule.new
              ratelimituserrule_tmp.deserialize(i)
              @RateLimitCustomizes << ratelimituserrule_tmp
            end
          end
        end
      end

      # 智能客户端过滤
      class RateLimitIntelligence < TencentCloud::Common::AbstractModel
        # @param Switch: 功能开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Action: 执行动作，取值有：
        # <li>monitor：观察；</li>
        # <li>alg：挑战。</li>
        # @type Action: String
        # @param RuleId: 规则id，仅出参使用。
        # @type RuleId: Integer

        attr_accessor :Switch, :Action, :RuleId

        def initialize(switch=nil, action=nil, ruleid=nil)
          @Switch = switch
          @Action = action
          @RuleId = ruleid
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Action = params['Action']
          @RuleId = params['RuleId']
        end
      end

      # 速率限制模板
      class RateLimitTemplate < TencentCloud::Common::AbstractModel
        # @param Mode: 模板等级名称，取值有：
        # <li>sup_loose：超级宽松；</li>
        # <li>loose：宽松；</li>
        # <li>emergency：紧急；</li>
        # <li>normal：适中；</li>
        # <li>strict：严格；</li>
        # <li>close：关闭，仅精准速率限制生效。</li>
        # @type Mode: String
        # @param Action: 模板处置方式，取值有：
        # <li>alg：JavaScript挑战；</li>
        # <li>monitor：观察。</li>不填写默认取alg。
        # @type Action: String
        # @param RateLimitTemplateDetail: 模板值详情。仅出参返回。
        # @type RateLimitTemplateDetail: :class:`Tencentcloud::Teo.v20220901.models.RateLimitTemplateDetail`

        attr_accessor :Mode, :Action, :RateLimitTemplateDetail

        def initialize(mode=nil, action=nil, ratelimittemplatedetail=nil)
          @Mode = mode
          @Action = action
          @RateLimitTemplateDetail = ratelimittemplatedetail
        end

        def deserialize(params)
          @Mode = params['Mode']
          @Action = params['Action']
          unless params['RateLimitTemplateDetail'].nil?
            @RateLimitTemplateDetail = RateLimitTemplateDetail.new
            @RateLimitTemplateDetail.deserialize(params['RateLimitTemplateDetail'])
          end
        end
      end

      # 模板当前详细配置
      class RateLimitTemplateDetail < TencentCloud::Common::AbstractModel
        # @param Mode: 模板等级名称，取值有：
        # <li>sup_loose：超级宽松；</li>
        # <li>loose：宽松；</li>
        # <li>emergency：紧急；</li>
        # <li>normal：适中；</li>
        # <li>strict：严格；</li>
        # <li>close：关闭，仅精准速率限制生效。</li>
        # @type Mode: String
        # @param ID: 唯一id。
        # @type ID: Integer
        # @param Action: 模板处置方式，取值有：
        # <li>alg：JavaScript挑战；</li>
        # <li>monitor：观察。</li>
        # @type Action: String
        # @param PunishTime: 惩罚时间，取值范围0-2天，单位秒。
        # @type PunishTime: Integer
        # @param Threshold: 统计阈值，单位是次，取值范围0-4294967294。
        # @type Threshold: Integer
        # @param Period: 统计周期，取值范围0-120秒。
        # @type Period: Integer

        attr_accessor :Mode, :ID, :Action, :PunishTime, :Threshold, :Period

        def initialize(mode=nil, id=nil, action=nil, punishtime=nil, threshold=nil, period=nil)
          @Mode = mode
          @ID = id
          @Action = action
          @PunishTime = punishtime
          @Threshold = threshold
          @Period = period
        end

        def deserialize(params)
          @Mode = params['Mode']
          @ID = params['ID']
          @Action = params['Action']
          @PunishTime = params['PunishTime']
          @Threshold = params['Threshold']
          @Period = params['Period']
        end
      end

      # RateLimit规则
      class RateLimitUserRule < TencentCloud::Common::AbstractModel
        # @param Threshold: 速率限制统计阈值，单位是次，取值范围0-4294967294。
        # @type Threshold: Integer
        # @param Period: 速率限制统计时间，取值范围 10/20/30/40/50/60 单位是秒。
        # @type Period: Integer
        # @param RuleName: 规则名，只能以英文字符，数字，下划线组合，且不能以下划线开头。
        # @type RuleName: String
        # @param Action: 处置动作，取值有： <li>monitor：观察；</li> <li>drop：拦截；</li><li> redirect：重定向；</li><li> page：指定页面；</li><li>alg：JavaScript 挑战。</li>
        # @type Action: String
        # @param PunishTime: 惩罚时长，0-2天。
        # @type PunishTime: Integer
        # @param PunishTimeUnit: 处罚时长单位，取值有：
        # <li>second：秒；</li>
        # <li>minutes：分钟；</li>
        # <li>hour：小时。</li>
        # @type PunishTimeUnit: String
        # @param RuleStatus: 规则状态，取值有：
        # <li>on：生效；</li>
        # <li>off：不生效。</li>默认 on 生效。
        # @type RuleStatus: String
        # @param AclConditions: 规则详情。
        # @type AclConditions: Array
        # @param RulePriority: 规则权重，取值范围0-100。
        # @type RulePriority: Integer
        # @param RuleID: 规则 Id。仅出参使用。
        # @type RuleID: Integer
        # @param FreqFields: 过滤词，取值有：
        # <li>sip：客户端 ip。</li>
        # 默认为空字符串。
        # @type FreqFields: Array
        # @param UpdateTime: 更新时间。仅出参使用。修改时默认为当前时间。
        # @type UpdateTime: String
        # @param FreqScope: 统计范围。取值有：
        # <li>source_to_eo：（响应）源站到  EdgeOne；</li>
        # <li>client_to_eo：（请求）客户端到  EdgeOne。</li>
        # 默认为 source_to_eo。
        # @type FreqScope: Array
        # @param Name: 自定义返回页面的名称。Action 是 page 时必填，且不能为空。
        # @type Name: String
        # @param CustomResponseId: 自定义响应 Id。该 Id 可通过查询自定义错误页列表接口获取。默认值为default，使用系统默认页面。Action 是 page 时必填，且不能为空。
        # @type CustomResponseId: String
        # @param ResponseCode: 自定义返回页面的响应码。Action 是 page 时必填，且不能为空，取值: 100~600，不支持 3xx 响应码。默认值：567。
        # @type ResponseCode: Integer
        # @param RedirectUrl: 重定向时候的地址。Action 是 redirect 时必填，且不能为空。
        # @type RedirectUrl: String

        attr_accessor :Threshold, :Period, :RuleName, :Action, :PunishTime, :PunishTimeUnit, :RuleStatus, :AclConditions, :RulePriority, :RuleID, :FreqFields, :UpdateTime, :FreqScope, :Name, :CustomResponseId, :ResponseCode, :RedirectUrl

        def initialize(threshold=nil, period=nil, rulename=nil, action=nil, punishtime=nil, punishtimeunit=nil, rulestatus=nil, aclconditions=nil, rulepriority=nil, ruleid=nil, freqfields=nil, updatetime=nil, freqscope=nil, name=nil, customresponseid=nil, responsecode=nil, redirecturl=nil)
          @Threshold = threshold
          @Period = period
          @RuleName = rulename
          @Action = action
          @PunishTime = punishtime
          @PunishTimeUnit = punishtimeunit
          @RuleStatus = rulestatus
          @AclConditions = aclconditions
          @RulePriority = rulepriority
          @RuleID = ruleid
          @FreqFields = freqfields
          @UpdateTime = updatetime
          @FreqScope = freqscope
          @Name = name
          @CustomResponseId = customresponseid
          @ResponseCode = responsecode
          @RedirectUrl = redirecturl
        end

        def deserialize(params)
          @Threshold = params['Threshold']
          @Period = params['Period']
          @RuleName = params['RuleName']
          @Action = params['Action']
          @PunishTime = params['PunishTime']
          @PunishTimeUnit = params['PunishTimeUnit']
          @RuleStatus = params['RuleStatus']
          unless params['AclConditions'].nil?
            @AclConditions = []
            params['AclConditions'].each do |i|
              aclcondition_tmp = AclCondition.new
              aclcondition_tmp.deserialize(i)
              @AclConditions << aclcondition_tmp
            end
          end
          @RulePriority = params['RulePriority']
          @RuleID = params['RuleID']
          @FreqFields = params['FreqFields']
          @UpdateTime = params['UpdateTime']
          @FreqScope = params['FreqScope']
          @Name = params['Name']
          @CustomResponseId = params['CustomResponseId']
          @ResponseCode = params['ResponseCode']
          @RedirectUrl = params['RedirectUrl']
        end
      end

      # 速率限制的具体配置。
      class RateLimitingRule < TencentCloud::Common::AbstractModel
        # @param Id: 精准速率限制的 ID。<br>通过规则 ID 可支持不同的规则配置操作：<br> <li> <b>增加</b>新规则：ID 为空或不指定 ID 参数；</li><li><b>修改</b>已有规则：指定需要更新/修改的规则 ID；</li><li><b>删除</b>已有规则：RateLimitingRules 参数中，Rules 列表中未包含的已有规则将被删除。</li>
        # @type Id: String
        # @param Name: 精准速率限制的名称。
        # @type Name: String
        # @param Condition: 精准速率限制的具体内容，需符合表达式语法，详细规范参见产品文档。
        # @type Condition: String
        # @param CountBy: 速率阈值请求特征的匹配方式， 当 Enabled 为 on 时，此字段必填。<br /><br />当条件有多个时，将组合多个条件共同进行统计计算，条件最多不可超过5条。取值有：<br/><li><b>http.request.ip</b>：客户端 IP；</li><li><b>http.request.xff_header_ip</b>：客户端 IP（优先匹配 XFF 头部）；</li><li><b>http.request.uri.path</b>：请求的访问路径；</li><li><b>http.request.cookies['session']</b>：名称为session的Cookie，其中session可替换为自己指定的参数；</li><li><b>http.request.headers['user-agent']</b>：名称为user-agent的HTTP头部，其中user-agent可替换为自己指定的参数；</li><li><b>http.request.ja3</b>：请求的JA3指纹；</li><li><b>http.request.uri.query['test']</b>：名称为test的URL查询参数，其中test可替换为自己指定的参数。</li>
        # @type CountBy: Array
        # @param MaxRequestThreshold: 精准速率限制在时间范围内的累计拦截次数，取值范围 1 ~ 100000。
        # @type MaxRequestThreshold: Integer
        # @param CountingPeriod: 统计的时间窗口，取值有：<li>1s：1秒；</li><li>5s：5秒；</li><li>10s：10秒；</li><li>20s：20秒；</li><li>30s：30秒；</li><li>40s：40秒；</li><li>50s：50秒；</li><li>1m：1分钟；</li><li>2m：2分钟；</li><li>5m：5分钟；</li><li>10m：10分钟；</li><li>1h：1小时。</li>
        # @type CountingPeriod: String
        # @param ActionDuration: Action 动作的持续时长，单位仅支持：<li>s：秒，取值 1 ~ 120；</li><li>m：分钟，取值 1 ~ 120；</li><li>h：小时，取值 1 ~ 48；</li><li>d：天，取值 1 ~ 30。</li>
        # @type ActionDuration: String
        # @param Action: 精准速率限制的处置方式。取值有：<li>Monitor：观察；</li><li>Deny：拦截，其中DenyActionParameters.Name支持Deny和ReturnCustomPage；</li><li>Challenge：挑战，其中ChallengeActionParameters.Name支持JSChallenge和ManagedChallenge；</li><li>Redirect：重定向至URL；</li>
        # @type Action: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`
        # @param Priority: 精准速率限制的优先级，范围是 0 ~ 100，默认为 0。
        # @type Priority: Integer
        # @param Enabled: 精准速率限制规则是否开启。取值有：<li>on：开启；</li><li>off：关闭。</li>
        # @type Enabled: String

        attr_accessor :Id, :Name, :Condition, :CountBy, :MaxRequestThreshold, :CountingPeriod, :ActionDuration, :Action, :Priority, :Enabled

        def initialize(id=nil, name=nil, condition=nil, countby=nil, maxrequestthreshold=nil, countingperiod=nil, actionduration=nil, action=nil, priority=nil, enabled=nil)
          @Id = id
          @Name = name
          @Condition = condition
          @CountBy = countby
          @MaxRequestThreshold = maxrequestthreshold
          @CountingPeriod = countingperiod
          @ActionDuration = actionduration
          @Action = action
          @Priority = priority
          @Enabled = enabled
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Condition = params['Condition']
          @CountBy = params['CountBy']
          @MaxRequestThreshold = params['MaxRequestThreshold']
          @CountingPeriod = params['CountingPeriod']
          @ActionDuration = params['ActionDuration']
          unless params['Action'].nil?
            @Action = SecurityAction.new
            @Action.deserialize(params['Action'])
          end
          @Priority = params['Priority']
          @Enabled = params['Enabled']
        end
      end

      # 精准速率限制的配置
      class RateLimitingRules < TencentCloud::Common::AbstractModel
        # @param Rules: 精准速率限制的定义列表。使用 ModifySecurityPolicy 修改 Web 防护配置时: <br> <li>  若未指定 Rules 参数，或 Rules 参数长度为零：清空所有精准速率限制配置。</li> <li> 若 SecurityPolicy 参数中，未指定 RateLimitingRules 参数值：保持已有自定义规则配置，不做修改。</li>
        # @type Rules: Array

        attr_accessor :Rules

        def initialize(rules=nil)
          @Rules = rules
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              ratelimitingrule_tmp = RateLimitingRule.new
              ratelimitingrule_tmp.deserialize(i)
              @Rules << ratelimitingrule_tmp
            end
          end
        end
      end

      # 实时日志投递任务。
      class RealtimeLogDeliveryTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 实时日志投递任务 ID。
        # @type TaskId: String
        # @param TaskName: 实时日志投递任务的名称。
        # @type TaskName: String
        # @param DeliveryStatus: 实时日志投递任务的状态，取值有： <li>enabled: 已启用；</li> <li>disabled: 已停用；</li><li>deleted: 异常删除状态，请检查目的地腾讯云 CLS 日志集/日志主题是否已被删除。</li>
        # @type DeliveryStatus: String
        # @param TaskType: 实时日志投递任务类型，取值有： <li>cls: 推送到腾讯云 CLS；</li> <li>custom_endpoint：推送到自定义 HTTP(S) 地址；</li> <li>s3：推送到 AWS S3 兼容存储桶地址。</li>
        # @type TaskType: String
        # @param EntityList: 实时日志投递任务对应的实体（七层域名或者四层代理实例）列表。取值示例如下： <li>七层域名：domain.example.com；</li> <li>四层代理实例：sid-2s69eb5wcms7。</li>
        # @type EntityList: Array
        # @param LogType: 数据投递类型，取值有： <li>domain：站点加速日志；</li> <li>application：四层代理日志；</li> <li>web-rateLiming：速率限制和 CC 攻击防护日志；</li> <li>web-attack：托管规则日志；</li> <li>web-rule：自定义规则日志；</li> <li>web-bot：Bot管理日志。</li>
        # @type LogType: String
        # @param Area: 数据投递区域，取值有： <li>mainland：中国大陆境内；</li> <li>overseas：全球（不含中国大陆）。</li>
        # @type Area: String
        # @param Fields: 投递的预设字段列表。
        # @type Fields: Array
        # @param CustomFields: 投递的自定义字段列表。
        # @type CustomFields: Array
        # @param DeliveryConditions: 日志投递的过滤条件。
        # @type DeliveryConditions: Array
        # @param Sample: 采样比例，采用千分制，取值范围为1-1000，例如：605 表示采样比例为 60.5%。
        # @type Sample: Integer
        # @param LogFormat: 日志投递的输出格式。出参为 null 时表示为默认格式，默认格式逻辑如下：
        # <li>当 TaskType 取值为 custom_endpoint 时，默认格式为多个 JSON 对象组成的数组，每个 JSON 对象为一条日志；</li>
        # <li>当 TaskType 取值为 s3 时，默认格式为 JSON Lines。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LogFormat: :class:`Tencentcloud::Teo.v20220901.models.LogFormat`
        # @param CLS: CLS 的配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CLS: :class:`Tencentcloud::Teo.v20220901.models.CLSTopic`
        # @param CustomEndpoint: 自定义 HTTP 服务的配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CustomEndpoint: :class:`Tencentcloud::Teo.v20220901.models.CustomEndpoint`
        # @param S3: AWS S3 兼容存储桶的配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type S3: :class:`Tencentcloud::Teo.v20220901.models.S3`
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 更新时间。
        # @type UpdateTime: String

        attr_accessor :TaskId, :TaskName, :DeliveryStatus, :TaskType, :EntityList, :LogType, :Area, :Fields, :CustomFields, :DeliveryConditions, :Sample, :LogFormat, :CLS, :CustomEndpoint, :S3, :CreateTime, :UpdateTime

        def initialize(taskid=nil, taskname=nil, deliverystatus=nil, tasktype=nil, entitylist=nil, logtype=nil, area=nil, fields=nil, customfields=nil, deliveryconditions=nil, sample=nil, logformat=nil, cls=nil, customendpoint=nil, s3=nil, createtime=nil, updatetime=nil)
          @TaskId = taskid
          @TaskName = taskname
          @DeliveryStatus = deliverystatus
          @TaskType = tasktype
          @EntityList = entitylist
          @LogType = logtype
          @Area = area
          @Fields = fields
          @CustomFields = customfields
          @DeliveryConditions = deliveryconditions
          @Sample = sample
          @LogFormat = logformat
          @CLS = cls
          @CustomEndpoint = customendpoint
          @S3 = s3
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskName = params['TaskName']
          @DeliveryStatus = params['DeliveryStatus']
          @TaskType = params['TaskType']
          @EntityList = params['EntityList']
          @LogType = params['LogType']
          @Area = params['Area']
          @Fields = params['Fields']
          unless params['CustomFields'].nil?
            @CustomFields = []
            params['CustomFields'].each do |i|
              customfield_tmp = CustomField.new
              customfield_tmp.deserialize(i)
              @CustomFields << customfield_tmp
            end
          end
          unless params['DeliveryConditions'].nil?
            @DeliveryConditions = []
            params['DeliveryConditions'].each do |i|
              deliverycondition_tmp = DeliveryCondition.new
              deliverycondition_tmp.deserialize(i)
              @DeliveryConditions << deliverycondition_tmp
            end
          end
          @Sample = params['Sample']
          unless params['LogFormat'].nil?
            @LogFormat = LogFormat.new
            @LogFormat.deserialize(params['LogFormat'])
          end
          unless params['CLS'].nil?
            @CLS = CLSTopic.new
            @CLS.deserialize(params['CLS'])
          end
          unless params['CustomEndpoint'].nil?
            @CustomEndpoint = CustomEndpoint.new
            @CustomEndpoint.deserialize(params['CustomEndpoint'])
          end
          unless params['S3'].nil?
            @S3 = S3.new
            @S3.deserialize(params['S3'])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # Web安全重定向的附加参数
      class RedirectActionParameters < TencentCloud::Common::AbstractModel
        # @param URL: 重定向的URL。
        # @type URL: String

        attr_accessor :URL

        def initialize(url=nil)
          @URL = url
        end

        def deserialize(params)
          @URL = params['URL']
        end
      end

      # RefreshMultiPathGatewaySecretKey请求参数结构体
      class RefreshMultiPathGatewaySecretKeyRequest < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String

        attr_accessor :ZoneId

        def initialize(zoneid=nil)
          @ZoneId = zoneid
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
        end
      end

      # RefreshMultiPathGatewaySecretKey返回参数结构体
      class RefreshMultiPathGatewaySecretKeyResponse < TencentCloud::Common::AbstractModel
        # @param SecretKey: 多通道安全加速网关接入密钥。
        # @type SecretKey: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SecretKey, :RequestId

        def initialize(secretkey=nil, requestid=nil)
          @SecretKey = secretkey
          @RequestId = requestid
        end

        def deserialize(params)
          @SecretKey = params['SecretKey']
          @RequestId = params['RequestId']
        end
      end

      # 预付费套餐自动续费配置项。
      class RenewFlag < TencentCloud::Common::AbstractModel
        # @param Switch: 预付费套餐的自动续费标志，取值有：
        # <li> on：开启自动续费；</li>
        # <li> off：不开启自动续费。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # RenewPlan请求参数结构体
      class RenewPlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 套餐 ID，形如 edgeone-2unuvzjmmn2q。
        # @type PlanId: String
        # @param Period: 续费套餐的时长，单位：月，取值有：1，2，3，4，5，6，7，8，9，10，11，12，24，36。
        # @type Period: Integer
        # @param AutoUseVoucher: 是否自动使用代金券，取值有：<li> true：是；</li><li> false：否。</li>不填写使用默认值 false。
        # @type AutoUseVoucher: String

        attr_accessor :PlanId, :Period, :AutoUseVoucher

        def initialize(planid=nil, period=nil, autousevoucher=nil)
          @PlanId = planid
          @Period = period
          @AutoUseVoucher = autousevoucher
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @Period = params['Period']
          @AutoUseVoucher = params['AutoUseVoucher']
        end
      end

      # RenewPlan返回参数结构体
      class RenewPlanResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # 正文传输超时时长的具体配置。
      class RequestBodyTransferTimeout < TencentCloud::Common::AbstractModel
        # @param IdleTimeout: 正文传输超时时长，取值 5 ~ 120，单位仅支持秒（s）。
        # @type IdleTimeout: String
        # @param Enabled: 正文传输超时时长是否开启。取值有：<li>on：开启；</li><li>off：关闭。</li>
        # @type Enabled: String

        attr_accessor :IdleTimeout, :Enabled

        def initialize(idletimeout=nil, enabled=nil)
          @IdleTimeout = idletimeout
          @Enabled = enabled
        end

        def deserialize(params)
          @IdleTimeout = params['IdleTimeout']
          @Enabled = params['Enabled']
        end
      end

      # 例外规则中的跳过字段配置
      class RequestFieldsForException < TencentCloud::Common::AbstractModel
        # @param Scope: 跳过的具体字段。取值支持：<br/>
        # <li>body.json：JSON 请求内容；此时 Condition 支持 key、value,  TargetField 支持 key、value，例如 { "Scope": "body.json",  "Condition": "", "TargetField": "key" }，表示 JSON 请求内容所有参数跳过 WAF 扫描；</li>
        # <li style="margin-top:5px">cookie：Cookie；此时 Condition 支持 key、value,  TargetField 支持 key、value，例如 { "Scope": "cookie",  "Condition": "${key} in ['account-id'] and ${value} like ['prefix-*']", "TargetField": "value" }，表示 Cookie 参数名称等于account-id 并且参数值通配符匹配 prefix-* 跳过 WAF 扫描；</li>
        # <li style="margin-top:5px">header：HTTP 头部参数；此时 Condition 支持 key、value,  TargetField 支持 key、value，例如 { "Scope": "header",  "Condition": "${key} like ['x-auth-*']", "TargetField": "value" }，表示 header 参数名称通配符匹配 x-auth-* 跳过 WAF 扫描；</li>
        # <li style="margin-top:5px">uri.query：URL 编码内容/查询参数；此时 Condition 支持 key、value,  TargetField 支持 key、value，例如 { "Scope": "uri.query",  "Condition": "${key} in ['action'] and ${value} in ['upload', 'delete']", "TargetField": "value" }，表示 URL 编码内容/查询参数的参数名称等于 action 并且参数值等于 upload 或 delete 跳过 WAF 扫描；</li>
        # <li style="margin-top:5px">uri：请求路径URI；此时 Condition 必须为空， TargetField 支持 query、path、fullpath，例如 { "Scope": "uri",  "Condition": "", "TargetField": "query" }，表示请求路径 URI 仅查询参数跳过 WAF 扫描；</li>
        # <li style="margin-top:5px">body：请求正文内容。此时 Condition 必须为空， TargetField 支持 fullbody、multipart，例如 { "Scope": "body",  "Condition": "", "TargetField": "fullbody" }，表示请求正文内容为完整请求正文跳过 WAF 扫描；</li>
        # @type Scope: String
        # @param Condition: 跳过的具体字段的表达式，需要符合表达式语法。<br />
        # Condition  支持表达式配置语法：<li> 按规则的匹配条件表达式语法编写，支持引用 key、value。</li><li> 支持 in、like 操作符，以及 and 逻辑组合。</li>
        # 例如：<li>${key} in ['x-trace-id']：参数名称等于x-trace-id。</li><li>${key} in ['x-trace-id'] and ${value} like ['Bearer *']：参数名称等于x-trace-id并且参数值通配符匹配Bearer *。</li>
        # @type Condition: String
        # @param TargetField: Scope 参数使用不同取值时，TargetField 表达式中支持的值如下：
        # <li> body.json：支持 key、value</li>
        # <li> cookie：支持 key、value</li>
        # <li> header：支持 key、value</li>
        # <li> uri.query：支持 key、value</li>
        # <li> uri：支持 path、query、fullpath</li>
        # <li> body：支持 fullbody、multipart</li>
        # @type TargetField: String

        attr_accessor :Scope, :Condition, :TargetField

        def initialize(scope=nil, condition=nil, targetfield=nil)
          @Scope = scope
          @Condition = condition
          @TargetField = targetfield
        end

        def deserialize(params)
          @Scope = params['Scope']
          @Condition = params['Condition']
          @TargetField = params['TargetField']
        end
      end

      # 计费资源
      class Resource < TencentCloud::Common::AbstractModel
        # @param Id: 资源 ID。
        # @type Id: String
        # @param PayMode: 付费模式，取值有：
        # <li>0：后付费。</li>
        # @type PayMode: Integer
        # @param CreateTime: 创建时间。
        # @type CreateTime: String
        # @param EnableTime: 生效时间。
        # @type EnableTime: String
        # @param ExpireTime: 失效时间。
        # @type ExpireTime: String
        # @param Status: 套餐状态，取值有：
        # <li>normal：正常；</li>
        # <li>isolated：隔离；</li>
        # <li>destroyed：销毁。</li>
        # @type Status: String
        # @param Sv: 询价参数。
        # @type Sv: Array
        # @param AutoRenewFlag: 是否自动续费，取值有：
        # <li>0：默认状态；</li>
        # <li>1：自动续费；</li>
        # <li>2：不自动续费。</li>
        # @type AutoRenewFlag: Integer
        # @param PlanId: 套餐关联资源 ID。
        # @type PlanId: String
        # @param Area: 地域，取值有：
        # <li>mainland：国内；</li>
        # <li>overseas：海外。</li>
        # <li>global：全球。</li>
        # @type Area: String
        # @param Group: 资源类型，取值有：
        # <li>plan：套餐类型；</li>
        # <li>pay-as-you-go：后付费类型。</li>
        # <li>value-added：增值服务类型。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Group: String
        # @param ZoneNumber: 当前资源绑定的站点数量。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneNumber: Integer
        # @param Type: 资源标记类型，取值有：
        # <li>vodeo：vodeo资源。</li>
        # @type Type: String

        attr_accessor :Id, :PayMode, :CreateTime, :EnableTime, :ExpireTime, :Status, :Sv, :AutoRenewFlag, :PlanId, :Area, :Group, :ZoneNumber, :Type

        def initialize(id=nil, paymode=nil, createtime=nil, enabletime=nil, expiretime=nil, status=nil, sv=nil, autorenewflag=nil, planid=nil, area=nil, group=nil, zonenumber=nil, type=nil)
          @Id = id
          @PayMode = paymode
          @CreateTime = createtime
          @EnableTime = enabletime
          @ExpireTime = expiretime
          @Status = status
          @Sv = sv
          @AutoRenewFlag = autorenewflag
          @PlanId = planid
          @Area = area
          @Group = group
          @ZoneNumber = zonenumber
          @Type = type
        end

        def deserialize(params)
          @Id = params['Id']
          @PayMode = params['PayMode']
          @CreateTime = params['CreateTime']
          @EnableTime = params['EnableTime']
          @ExpireTime = params['ExpireTime']
          @Status = params['Status']
          unless params['Sv'].nil?
            @Sv = []
            params['Sv'].each do |i|
              sv_tmp = Sv.new
              sv_tmp.deserialize(i)
              @Sv << sv_tmp
            end
          end
          @AutoRenewFlag = params['AutoRenewFlag']
          @PlanId = params['PlanId']
          @Area = params['Area']
          @Group = params['Group']
          @ZoneNumber = params['ZoneNumber']
          @Type = params['Type']
        end
      end

      # 单连接下载限速配置参数。
      class ResponseSpeedLimitParameters < TencentCloud::Common::AbstractModel
        # @param Mode: 下载限速模式，取值有：
        # <li>LimitUponDownload：全过程下载限速；</li>
        # <li>LimitAfterSpecificBytesDownloaded：全速下载特定字节后开始限速；</li>
        # <li>LimitAfterSpecificSecondsDownloaded：全速下载特定时间后开始限速。</li>
        # @type Mode: String
        # @param MaxSpeed: 限速值，指定限速大小，填写含单位的数值或变量。当前支持单位有：KB/s。
        # @type MaxSpeed: String
        # @param StartAt: 限速开始值，可以为下载大小或指定时长，填写含单位的数值或变量，指定下载大小或指定时长。

        # - 当Mode 取值为 LimitAfterSpecificBytesDownloaded 时，单位取值有： KB；

        # - 当Mode 取值为 LimitAfterSpecificSecondsDownloaded 时，单位取值有： s。
        # @type StartAt: String

        attr_accessor :Mode, :MaxSpeed, :StartAt

        def initialize(mode=nil, maxspeed=nil, startat=nil)
          @Mode = mode
          @MaxSpeed = maxspeed
          @StartAt = startat
        end

        def deserialize(params)
          @Mode = params['Mode']
          @MaxSpeed = params['MaxSpeed']
          @StartAt = params['StartAt']
        end
      end

      # Web安全自定义页面的附加参数
      class ReturnCustomPageActionParameters < TencentCloud::Common::AbstractModel
        # @param ResponseCode: 响应状态码。
        # @type ResponseCode: String
        # @param ErrorPageId: 响应的自定义页面ID。
        # @type ErrorPageId: String

        attr_accessor :ResponseCode, :ErrorPageId

        def initialize(responsecode=nil, errorpageid=nil)
          @ResponseCode = responsecode
          @ErrorPageId = errorpageid
        end

        def deserialize(params)
          @ResponseCode = params['ResponseCode']
          @ErrorPageId = params['ErrorPageId']
        end
      end

      # 规则引擎HTTP请求头/响应头类型的动作
      class RewriteAction < TencentCloud::Common::AbstractModel
        # @param Action: 功能名称，功能名称填写规范可调用接口 [查询规则引擎的设置参数](https://cloud.tencent.com/document/product/1552/80618) 查看。
        # @type Action: String
        # @param Parameters: 参数。
        # @type Parameters: Array

        attr_accessor :Action, :Parameters

        def initialize(action=nil, parameters=nil)
          @Action = action
          @Parameters = parameters
        end

        def deserialize(params)
          @Action = params['Action']
          unless params['Parameters'].nil?
            @Parameters = []
            params['Parameters'].each do |i|
              rulerewriteactionparams_tmp = RuleRewriteActionParams.new
              rulerewriteactionparams_tmp.deserialize(i)
              @Parameters << rulerewriteactionparams_tmp
            end
          end
        end
      end

      # 规则引擎规则项，Conditions 数组内多个项的关系为 或，内层 Conditions 列表内多个项的关系为 且。
      class Rule < TencentCloud::Common::AbstractModel
        # @param Conditions: 执行功能判断条件。
        # 注意：满足该数组内任意一项条件，功能即可执行。
        # @type Conditions: Array
        # @param Actions: 执行的功能。注意：Actions 和 SubRules 不可都为空
        # @type Actions: Array
        # @param SubRules: 嵌套规则。注意：SubRules 和 Actions 不可都为空
        # @type SubRules: Array

        attr_accessor :Conditions, :Actions, :SubRules

        def initialize(conditions=nil, actions=nil, subrules=nil)
          @Conditions = conditions
          @Actions = actions
          @SubRules = subrules
        end

        def deserialize(params)
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              ruleandconditions_tmp = RuleAndConditions.new
              ruleandconditions_tmp.deserialize(i)
              @Conditions << ruleandconditions_tmp
            end
          end
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              action_tmp = Action.new
              action_tmp.deserialize(i)
              @Actions << action_tmp
            end
          end
          unless params['SubRules'].nil?
            @SubRules = []
            params['SubRules'].each do |i|
              subruleitem_tmp = SubRuleItem.new
              subruleitem_tmp.deserialize(i)
              @SubRules << subruleitem_tmp
            end
          end
        end
      end

      # 规则引擎条件且关系条件列表
      class RuleAndConditions < TencentCloud::Common::AbstractModel
        # @param Conditions: 规则引擎条件，该数组内所有项全部满足即判断该条件满足。
        # @type Conditions: Array

        attr_accessor :Conditions

        def initialize(conditions=nil)
          @Conditions = conditions
        end

        def deserialize(params)
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              rulecondition_tmp = RuleCondition.new
              rulecondition_tmp.deserialize(i)
              @Conditions << rulecondition_tmp
            end
          end
        end
      end

      # 子规则分支。
      class RuleBranch < TencentCloud::Common::AbstractModel
        # @param Condition: [匹配条件](https://cloud.tencent.com/document/product/1552/90438#33f65828-c6c6-4b66-a011-25a20b548d5d)。
        # @type Condition: String
        # @param Actions: [操作](https://cloud.tencent.com/document/product/1552/90438#c7bd7e02-9247-4a72-b0e4-11c27cadb198)。<br>注意：Actions 和 SubRules 不可同时为空。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Actions: Array
        # @param SubRules: 子规则列表。此列表中时存在多条规则，按照从上往下的顺序依次执行。<br>注意：SubRules 和 Actions 不可同时为空。且当前只支持填写一层 SubRules。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubRules: Array

        attr_accessor :Condition, :Actions, :SubRules

        def initialize(condition=nil, actions=nil, subrules=nil)
          @Condition = condition
          @Actions = actions
          @SubRules = subrules
        end

        def deserialize(params)
          @Condition = params['Condition']
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              ruleengineaction_tmp = RuleEngineAction.new
              ruleengineaction_tmp.deserialize(i)
              @Actions << ruleengineaction_tmp
            end
          end
          unless params['SubRules'].nil?
            @SubRules = []
            params['SubRules'].each do |i|
              ruleenginesubrule_tmp = RuleEngineSubRule.new
              ruleenginesubrule_tmp.deserialize(i)
              @SubRules << ruleenginesubrule_tmp
            end
          end
        end
      end

      # 规则引擎可应用于匹配请求的设置详细信息，可选参数配置项
      class RuleChoicePropertiesItem < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称。
        # @type Name: String
        # @param Type: 参数值类型。
        # <li> CHOICE：参数值只能在 ChoicesValue 中选择； </li>
        # <li> TOGGLE：参数值为开关类型，可在 ChoicesValue 中选择；</li>
        # <li> CUSTOM_NUM：参数值用户自定义，整型类型；</li>
        # <li> CUSTOM_STRING：参数值用户自定义，字符串类型。</li>
        # @type Type: String
        # @param ChoicesValue: 参数值的可选值。
        # 注意：若参数值为用户自定义则该数组为空数组。
        # @type ChoicesValue: Array
        # @param Min: 数值参数的最小值，非数值参数或 Min 和 Max 值都为 0 则此项无意义。
        # @type Min: Integer
        # @param Max: 数值参数的最大值，非数值参数或 Min 和 Max 值都为 0 则此项无意义。
        # @type Max: Integer
        # @param IsMultiple: 参数值是否支持多选或者填写多个。
        # @type IsMultiple: Boolean
        # @param IsAllowEmpty: 是否允许为空。
        # @type IsAllowEmpty: Boolean
        # @param ExtraParameter: 特殊参数。
        # <li> 为 NULL：RuleAction 选择 NormalAction；</li>
        # <li> 成员参数 Id 为 Action：RuleAction 选择 RewirteAction；</li>
        # <li> 成员参数 Id 为 StatusCode：RuleAction 选择 CodeAction。</li>
        # @type ExtraParameter: :class:`Tencentcloud::Teo.v20220901.models.RuleExtraParameter`

        attr_accessor :Name, :Type, :ChoicesValue, :Min, :Max, :IsMultiple, :IsAllowEmpty, :ExtraParameter

        def initialize(name=nil, type=nil, choicesvalue=nil, min=nil, max=nil, ismultiple=nil, isallowempty=nil, extraparameter=nil)
          @Name = name
          @Type = type
          @ChoicesValue = choicesvalue
          @Min = min
          @Max = max
          @IsMultiple = ismultiple
          @IsAllowEmpty = isallowempty
          @ExtraParameter = extraparameter
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @ChoicesValue = params['ChoicesValue']
          @Min = params['Min']
          @Max = params['Max']
          @IsMultiple = params['IsMultiple']
          @IsAllowEmpty = params['IsAllowEmpty']
          unless params['ExtraParameter'].nil?
            @ExtraParameter = RuleExtraParameter.new
            @ExtraParameter.deserialize(params['ExtraParameter'])
          end
        end
      end

      # 规则引擎条件使用StatusCode字段动作参数
      class RuleCodeActionParams < TencentCloud::Common::AbstractModel
        # @param StatusCode: 状态 Code。
        # @type StatusCode: Integer
        # @param Name: 参数名称，参数填写规范可调用接口 [查询规则引擎的设置参数](https://cloud.tencent.com/document/product/1552/80618) 查看。
        # @type Name: String
        # @param Values: 参数值。
        # @type Values: Array

        attr_accessor :StatusCode, :Name, :Values

        def initialize(statuscode=nil, name=nil, values=nil)
          @StatusCode = statuscode
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @StatusCode = params['StatusCode']
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 规则引擎条件参数
      class RuleCondition < TencentCloud::Common::AbstractModel
        # @param Operator: 运算符，取值有：
        # <li> equal: 等于； </li>
        # <li> notequal: 不等于；</li>
        # <li> exist: 存在； </li>
        # <li> notexist: 不存在。</li>
        # @type Operator: String
        # @param Target: 匹配类型，取值有： <li> filename：文件名； </li> <li> extension：文件后缀； </li> <li> host：HOST； </li> <li> full_url：URL Full，当前站点下完整 URL 路径，必须包含 HTTP 协议，Host 和 路径； </li> <li> url：URL Path，当前站点下 URL 路径的请求； </li><li>client_country：客户端国家/地区；</li> <li> query_string：查询字符串，当前站点下请求 URL 的查询字符串； </li> <li> request_header：HTTP 请求头部。 </li><li> client_ip：客户端 IP。 </li><li> request_protocol：请求协议。 </li><li> request_method：HTTP 请求方法。 </li>
        # @type Target: String
        # @param Values: 对应匹配类型的参数值，仅在匹配类型为查询字符串或HTTP请求头并且运算符取值为存在或不存在时允许传空数组，对应匹配类型有：
        # <li> 文件后缀：jpg、txt 等文件后缀；</li>
        # <li> 文件名称：例如 foo.jpg 中的 foo；</li>
        # <li> 全部（站点任意请求）：all；</li>
        # <li> HOST：当前站点下的 host ，例如www.maxx55.com；</li>
        # <li> URL Path：当前站点下 URL 路径的请求，例如：/example；</li>
        # <li> URL Full：当前站点下完整 URL 请求，必须包含 HTTP 协议，Host 和 路径，例如：https://www.maxx55.cn/example；</li>
        # <li> 客户端国家/地区：符合 ISO3166 标准的国家/地区标识；</li>
        # <li> 查询字符串: 当前站点下 URL 请求中查询字符串的参数值，例如 lang=cn&version=1 中的 cn 和 1； </li>
        # <li> HTTP 请求头: HTTP 请求头部字段值，例如 Accept-Language:zh-CN,zh;q=0.9中的zh-CN,zh;q=0.9 ；</li>
        # <li> 客户端 IP: 当前请求携带的客户端请求 IP，支持 IPv4/IPv6, 支持 IP 段； </li>
        # <li> 请求协议: 当前请求的协议，取值范围为：HTTP、HTTPS；</li>
        # <li> HTTP 请求方法: 当前请求的方法，取值范围为：GET、HEAD、POST、PUT、DELETE、TRACE、CONNECT、OPTIONS、PATCH、COPY、LOCK、MKCOL、MOVE、PROPFIND、PROPPATCH、UNLOCK。 </li>
        # @type Values: Array
        # @param IgnoreCase: 是否忽略参数值的大小写，默认值为 false。
        # @type IgnoreCase: Boolean
        # @param Name: 对应匹配类型的参数名称，在 Target 值为以下取值时有效，有效时值不能为空：
        # <li> query_string（查询字符串）: 当前站点下URL请求中查询字符串的参数名称，例如lang=cn&version=1中的lang和version； </li>
        # <li> request_header（HTTP 请求头）: HTTP请求头部字段名，例如Accept-Language:zh-CN,zh;q=0.9中的Accept-Language。 </li>
        # @type Name: String
        # @param IgnoreNameCase: 是否忽略参数名称的大小写，默认值为 false。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IgnoreNameCase: Boolean

        attr_accessor :Operator, :Target, :Values, :IgnoreCase, :Name, :IgnoreNameCase
        extend Gem::Deprecate
        deprecate :IgnoreNameCase, :none, 2025, 7
        deprecate :IgnoreNameCase=, :none, 2025, 7

        def initialize(operator=nil, target=nil, values=nil, ignorecase=nil, name=nil, ignorenamecase=nil)
          @Operator = operator
          @Target = target
          @Values = values
          @IgnoreCase = ignorecase
          @Name = name
          @IgnoreNameCase = ignorenamecase
        end

        def deserialize(params)
          @Operator = params['Operator']
          @Target = params['Target']
          @Values = params['Values']
          @IgnoreCase = params['IgnoreCase']
          @Name = params['Name']
          @IgnoreNameCase = params['IgnoreNameCase']
        end
      end

      # 规则引擎操作。
      class RuleEngineAction < TencentCloud::Common::AbstractModel
        # @param Name: 操作名称。名称需要与参数结构体对应，例如 Name=Cache，则 CacheParameters 必填。
        # <li>Cache：节点缓存 TTL；</li>
        # <li>CacheKey：自定义 Cache Key；</li>
        # <li>CachePrefresh：缓存预刷新；</li>
        # <li>AccessURLRedirect：访问 URL 重定向；</li>
        # <li>UpstreamURLRewrite：回源 URL 重写；</li>
        # <li>QUIC：QUIC；</li>
        # <li>WebSocket：WebSocket；</li>
        # <li>Authentication：Token 鉴权；</li>
        # <li>MaxAge：浏览器缓存 TTL；</li>
        # <li>StatusCodeCache：状态码缓存 TTL；</li>
        # <li>OfflineCache：离线缓存；</li>
        # <li>SmartRouting：智能加速；</li>
        # <li>RangeOriginPull：分片回源 ；</li>
        # <li>UpstreamHTTP2：HTTP2 回源；</li>
        # <li>HostHeader：Host Header 重写；</li>
        # <li>ForceRedirectHTTPS：访问协议强制 HTTPS 跳转配置；</li>
        # <li>OriginPullProtocol：回源 HTTPS；</li>
        # <li>Compression：智能压缩配置；</li>
        # <li>HSTS：HSTS；</li>
        # <li>ClientIPHeader：存储客户端请求 IP 的头部信息配置；</li>
        # <li>OCSPStapling：OCSP 装订；</li>
        # <li>HTTP2：HTTP2 接入；</li>
        # <li>PostMaxSize：POST 请求上传文件流式传输最大限制配置；</li>
        # <li>ClientIPCountry：回源时携带客户端 IP 所属地域信息；</li>
        # <li>UpstreamFollowRedirect：回源跟随重定向参数配置；</li>
        # <li>UpstreamRequest：回源请求参数；</li>
        # <li>TLSConfig：SSL/TLS 安全；</li>
        # <li>ModifyOrigin：修改源站；</li>
        # <li>HTTPUpstreamTimeout：七层回源超时配置；</li>
        # <li>HttpResponse：HTTP 应答；</li>
        # <li>ErrorPage：自定义错误页面；</li>
        # <li>ModifyResponseHeader：修改 HTTP 节点响应头；</li>
        # <li>ModifyRequestHeader：修改 HTTP 节点请求头；</li>
        # <li>ResponseSpeedLimit：单连接下载限速；</li>
        # <li>SetContentIdentifier：设置内容标识符；</li>
        # <li>Vary：Vary 特性配置。</li>
        # @type Name: String
        # @param CacheParameters: 节点缓存 TTL 配置参数，当 Name 取值为 Cache 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheParameters: :class:`Tencentcloud::Teo.v20220901.models.CacheParameters`
        # @param CacheKeyParameters: 自定义 Cache Key 配置参数，当 Name 取值为 CacheKey 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKeyParameters: :class:`Tencentcloud::Teo.v20220901.models.CacheKeyParameters`
        # @param CachePrefreshParameters: 缓存预刷新配置参数，当 Name 取值为 CachePrefresh 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CachePrefreshParameters: :class:`Tencentcloud::Teo.v20220901.models.CachePrefreshParameters`
        # @param AccessURLRedirectParameters: 访问 URL 重定向配置参数，当 Name 取值为 AccessURLRedirect 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessURLRedirectParameters: :class:`Tencentcloud::Teo.v20220901.models.AccessURLRedirectParameters`
        # @param UpstreamURLRewriteParameters: 回源 URL 重写配置参数，当 Name 取值为 UpstreamURLRewrite 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamURLRewriteParameters: :class:`Tencentcloud::Teo.v20220901.models.UpstreamURLRewriteParameters`
        # @param QUICParameters: QUIC 配置参数，当 Name 取值为 QUIC 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QUICParameters: :class:`Tencentcloud::Teo.v20220901.models.QUICParameters`
        # @param WebSocketParameters: WebSocket 配置参数，当 Name 取值为 WebSocket 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSocketParameters: :class:`Tencentcloud::Teo.v20220901.models.WebSocketParameters`
        # @param AuthenticationParameters: Token 鉴权配置参数，当 Name 取值为 Authentication 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthenticationParameters: :class:`Tencentcloud::Teo.v20220901.models.AuthenticationParameters`
        # @param MaxAgeParameters: 浏览器缓存 TTL 配置参数，当 Name 取值为 MaxAge 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAgeParameters: :class:`Tencentcloud::Teo.v20220901.models.MaxAgeParameters`
        # @param StatusCodeCacheParameters: 状态码缓存 TTL 配置参数，当 Name 取值为 StatusCodeCache 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCodeCacheParameters: :class:`Tencentcloud::Teo.v20220901.models.StatusCodeCacheParameters`
        # @param OfflineCacheParameters: 离线缓存配置参数，当 Name 取值为 OfflineCache 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineCacheParameters: :class:`Tencentcloud::Teo.v20220901.models.OfflineCacheParameters`
        # @param SmartRoutingParameters: 智能加速配置参数，当 Name 取值为 SmartRouting 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmartRoutingParameters: :class:`Tencentcloud::Teo.v20220901.models.SmartRoutingParameters`
        # @param RangeOriginPullParameters: 分片回源配置参数，当 Name 取值为 RangeOriginPull 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RangeOriginPullParameters: :class:`Tencentcloud::Teo.v20220901.models.RangeOriginPullParameters`
        # @param UpstreamHTTP2Parameters: HTTP2 回源配置参数，当 Name 取值为 UpstreamHTTP2 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamHTTP2Parameters: :class:`Tencentcloud::Teo.v20220901.models.UpstreamHTTP2Parameters`
        # @param HostHeaderParameters: Host Header 重写配置参数，当 Name 取值为 HostHeader 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HostHeaderParameters: :class:`Tencentcloud::Teo.v20220901.models.HostHeaderParameters`
        # @param ForceRedirectHTTPSParameters: 访问协议强制 HTTPS 跳转配置，当 Name 取值为 ForceRedirectHTTPS 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirectHTTPSParameters: :class:`Tencentcloud::Teo.v20220901.models.ForceRedirectHTTPSParameters`
        # @param CompressionParameters: 智能压缩配置，当 Name 取值为 Compression 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CompressionParameters: :class:`Tencentcloud::Teo.v20220901.models.CompressionParameters`
        # @param HSTSParameters: HSTS 配置参数，当 Name 取值为 HSTS 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HSTSParameters: :class:`Tencentcloud::Teo.v20220901.models.HSTSParameters`
        # @param ClientIPHeaderParameters: 存储客户端请求 IP 的头部信息配置，当 Name 取值为 ClientIPHeader 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIPHeaderParameters: :class:`Tencentcloud::Teo.v20220901.models.ClientIPHeaderParameters`
        # @param OCSPStaplingParameters: OCSP 装订配置参数，当 Name 取值为 OCSPStapling 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OCSPStaplingParameters: :class:`Tencentcloud::Teo.v20220901.models.OCSPStaplingParameters`
        # @param HTTP2Parameters: HTTP2 接入配置参数，当 Name 取值为 HTTP2 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTP2Parameters: :class:`Tencentcloud::Teo.v20220901.models.HTTP2Parameters`
        # @param PostMaxSizeParameters: POST 请求上传文件流式传输最大限制配置，当 Name 取值为 PostMaxSize 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostMaxSizeParameters: :class:`Tencentcloud::Teo.v20220901.models.PostMaxSizeParameters`
        # @param ClientIPCountryParameters: 回源时携带客户端 IP 所属地域信息配置参数，当 Name 取值为 ClientIPCountry 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIPCountryParameters: :class:`Tencentcloud::Teo.v20220901.models.ClientIPCountryParameters`
        # @param UpstreamFollowRedirectParameters: 回源跟随重定向参数配置，当 Name 取值为 UpstreamFollowRedirect 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamFollowRedirectParameters: :class:`Tencentcloud::Teo.v20220901.models.UpstreamFollowRedirectParameters`
        # @param UpstreamRequestParameters: 回源请求参数配置参数，当 Name 取值为 UpstreamRequest 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamRequestParameters: :class:`Tencentcloud::Teo.v20220901.models.UpstreamRequestParameters`
        # @param TLSConfigParameters: SSL/TLS 安全配置参数，当 Name 取值为 TLSConfig 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TLSConfigParameters: :class:`Tencentcloud::Teo.v20220901.models.TLSConfigParameters`
        # @param ModifyOriginParameters: 修改源站配置参数，当 Name 取值为 ModifyOrigin 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyOriginParameters: :class:`Tencentcloud::Teo.v20220901.models.ModifyOriginParameters`
        # @param HTTPUpstreamTimeoutParameters: 七层回源超时配置，当 Name 取值为 HTTPUpstreamTimeout 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTPUpstreamTimeoutParameters: :class:`Tencentcloud::Teo.v20220901.models.HTTPUpstreamTimeoutParameters`
        # @param HttpResponseParameters: HTTP 应答配置参数，当 Name 取值为 HttpResponse 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HttpResponseParameters: :class:`Tencentcloud::Teo.v20220901.models.HTTPResponseParameters`
        # @param ErrorPageParameters: 自定义错误页面配置参数，当 Name 取值为 ErrorPage 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPageParameters: :class:`Tencentcloud::Teo.v20220901.models.ErrorPageParameters`
        # @param ModifyResponseHeaderParameters: 修改 HTTP 节点响应头配置参数，当 Name 取值为 ModifyResponseHeader 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyResponseHeaderParameters: :class:`Tencentcloud::Teo.v20220901.models.ModifyResponseHeaderParameters`
        # @param ModifyRequestHeaderParameters: 修改 HTTP 节点请求头配置参数，当 Name 取值为 ModifyRequestHeader 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyRequestHeaderParameters: :class:`Tencentcloud::Teo.v20220901.models.ModifyRequestHeaderParameters`
        # @param ResponseSpeedLimitParameters: 单连接下载限速配置参数，当 Name 取值为 ResponseSpeedLimit 时，该参数必填。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ResponseSpeedLimitParameters: :class:`Tencentcloud::Teo.v20220901.models.ResponseSpeedLimitParameters`
        # @param SetContentIdentifierParameters: 内容标识配置参数，当 Name 取值为 SetContentIdentifier 时，该参数必填。

        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetContentIdentifierParameters: :class:`Tencentcloud::Teo.v20220901.models.SetContentIdentifierParameters`
        # @param VaryParameters: Vary 特性配置参数，当 Name 取值为 Vary 时，该参数必填。
        # @type VaryParameters: :class:`Tencentcloud::Teo.v20220901.models.VaryParameters`

        attr_accessor :Name, :CacheParameters, :CacheKeyParameters, :CachePrefreshParameters, :AccessURLRedirectParameters, :UpstreamURLRewriteParameters, :QUICParameters, :WebSocketParameters, :AuthenticationParameters, :MaxAgeParameters, :StatusCodeCacheParameters, :OfflineCacheParameters, :SmartRoutingParameters, :RangeOriginPullParameters, :UpstreamHTTP2Parameters, :HostHeaderParameters, :ForceRedirectHTTPSParameters, :CompressionParameters, :HSTSParameters, :ClientIPHeaderParameters, :OCSPStaplingParameters, :HTTP2Parameters, :PostMaxSizeParameters, :ClientIPCountryParameters, :UpstreamFollowRedirectParameters, :UpstreamRequestParameters, :TLSConfigParameters, :ModifyOriginParameters, :HTTPUpstreamTimeoutParameters, :HttpResponseParameters, :ErrorPageParameters, :ModifyResponseHeaderParameters, :ModifyRequestHeaderParameters, :ResponseSpeedLimitParameters, :SetContentIdentifierParameters, :VaryParameters

        def initialize(name=nil, cacheparameters=nil, cachekeyparameters=nil, cacheprefreshparameters=nil, accessurlredirectparameters=nil, upstreamurlrewriteparameters=nil, quicparameters=nil, websocketparameters=nil, authenticationparameters=nil, maxageparameters=nil, statuscodecacheparameters=nil, offlinecacheparameters=nil, smartroutingparameters=nil, rangeoriginpullparameters=nil, upstreamhttp2parameters=nil, hostheaderparameters=nil, forceredirecthttpsparameters=nil, compressionparameters=nil, hstsparameters=nil, clientipheaderparameters=nil, ocspstaplingparameters=nil, http2parameters=nil, postmaxsizeparameters=nil, clientipcountryparameters=nil, upstreamfollowredirectparameters=nil, upstreamrequestparameters=nil, tlsconfigparameters=nil, modifyoriginparameters=nil, httpupstreamtimeoutparameters=nil, httpresponseparameters=nil, errorpageparameters=nil, modifyresponseheaderparameters=nil, modifyrequestheaderparameters=nil, responsespeedlimitparameters=nil, setcontentidentifierparameters=nil, varyparameters=nil)
          @Name = name
          @CacheParameters = cacheparameters
          @CacheKeyParameters = cachekeyparameters
          @CachePrefreshParameters = cacheprefreshparameters
          @AccessURLRedirectParameters = accessurlredirectparameters
          @UpstreamURLRewriteParameters = upstreamurlrewriteparameters
          @QUICParameters = quicparameters
          @WebSocketParameters = websocketparameters
          @AuthenticationParameters = authenticationparameters
          @MaxAgeParameters = maxageparameters
          @StatusCodeCacheParameters = statuscodecacheparameters
          @OfflineCacheParameters = offlinecacheparameters
          @SmartRoutingParameters = smartroutingparameters
          @RangeOriginPullParameters = rangeoriginpullparameters
          @UpstreamHTTP2Parameters = upstreamhttp2parameters
          @HostHeaderParameters = hostheaderparameters
          @ForceRedirectHTTPSParameters = forceredirecthttpsparameters
          @CompressionParameters = compressionparameters
          @HSTSParameters = hstsparameters
          @ClientIPHeaderParameters = clientipheaderparameters
          @OCSPStaplingParameters = ocspstaplingparameters
          @HTTP2Parameters = http2parameters
          @PostMaxSizeParameters = postmaxsizeparameters
          @ClientIPCountryParameters = clientipcountryparameters
          @UpstreamFollowRedirectParameters = upstreamfollowredirectparameters
          @UpstreamRequestParameters = upstreamrequestparameters
          @TLSConfigParameters = tlsconfigparameters
          @ModifyOriginParameters = modifyoriginparameters
          @HTTPUpstreamTimeoutParameters = httpupstreamtimeoutparameters
          @HttpResponseParameters = httpresponseparameters
          @ErrorPageParameters = errorpageparameters
          @ModifyResponseHeaderParameters = modifyresponseheaderparameters
          @ModifyRequestHeaderParameters = modifyrequestheaderparameters
          @ResponseSpeedLimitParameters = responsespeedlimitparameters
          @SetContentIdentifierParameters = setcontentidentifierparameters
          @VaryParameters = varyparameters
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['CacheParameters'].nil?
            @CacheParameters = CacheParameters.new
            @CacheParameters.deserialize(params['CacheParameters'])
          end
          unless params['CacheKeyParameters'].nil?
            @CacheKeyParameters = CacheKeyParameters.new
            @CacheKeyParameters.deserialize(params['CacheKeyParameters'])
          end
          unless params['CachePrefreshParameters'].nil?
            @CachePrefreshParameters = CachePrefreshParameters.new
            @CachePrefreshParameters.deserialize(params['CachePrefreshParameters'])
          end
          unless params['AccessURLRedirectParameters'].nil?
            @AccessURLRedirectParameters = AccessURLRedirectParameters.new
            @AccessURLRedirectParameters.deserialize(params['AccessURLRedirectParameters'])
          end
          unless params['UpstreamURLRewriteParameters'].nil?
            @UpstreamURLRewriteParameters = UpstreamURLRewriteParameters.new
            @UpstreamURLRewriteParameters.deserialize(params['UpstreamURLRewriteParameters'])
          end
          unless params['QUICParameters'].nil?
            @QUICParameters = QUICParameters.new
            @QUICParameters.deserialize(params['QUICParameters'])
          end
          unless params['WebSocketParameters'].nil?
            @WebSocketParameters = WebSocketParameters.new
            @WebSocketParameters.deserialize(params['WebSocketParameters'])
          end
          unless params['AuthenticationParameters'].nil?
            @AuthenticationParameters = AuthenticationParameters.new
            @AuthenticationParameters.deserialize(params['AuthenticationParameters'])
          end
          unless params['MaxAgeParameters'].nil?
            @MaxAgeParameters = MaxAgeParameters.new
            @MaxAgeParameters.deserialize(params['MaxAgeParameters'])
          end
          unless params['StatusCodeCacheParameters'].nil?
            @StatusCodeCacheParameters = StatusCodeCacheParameters.new
            @StatusCodeCacheParameters.deserialize(params['StatusCodeCacheParameters'])
          end
          unless params['OfflineCacheParameters'].nil?
            @OfflineCacheParameters = OfflineCacheParameters.new
            @OfflineCacheParameters.deserialize(params['OfflineCacheParameters'])
          end
          unless params['SmartRoutingParameters'].nil?
            @SmartRoutingParameters = SmartRoutingParameters.new
            @SmartRoutingParameters.deserialize(params['SmartRoutingParameters'])
          end
          unless params['RangeOriginPullParameters'].nil?
            @RangeOriginPullParameters = RangeOriginPullParameters.new
            @RangeOriginPullParameters.deserialize(params['RangeOriginPullParameters'])
          end
          unless params['UpstreamHTTP2Parameters'].nil?
            @UpstreamHTTP2Parameters = UpstreamHTTP2Parameters.new
            @UpstreamHTTP2Parameters.deserialize(params['UpstreamHTTP2Parameters'])
          end
          unless params['HostHeaderParameters'].nil?
            @HostHeaderParameters = HostHeaderParameters.new
            @HostHeaderParameters.deserialize(params['HostHeaderParameters'])
          end
          unless params['ForceRedirectHTTPSParameters'].nil?
            @ForceRedirectHTTPSParameters = ForceRedirectHTTPSParameters.new
            @ForceRedirectHTTPSParameters.deserialize(params['ForceRedirectHTTPSParameters'])
          end
          unless params['CompressionParameters'].nil?
            @CompressionParameters = CompressionParameters.new
            @CompressionParameters.deserialize(params['CompressionParameters'])
          end
          unless params['HSTSParameters'].nil?
            @HSTSParameters = HSTSParameters.new
            @HSTSParameters.deserialize(params['HSTSParameters'])
          end
          unless params['ClientIPHeaderParameters'].nil?
            @ClientIPHeaderParameters = ClientIPHeaderParameters.new
            @ClientIPHeaderParameters.deserialize(params['ClientIPHeaderParameters'])
          end
          unless params['OCSPStaplingParameters'].nil?
            @OCSPStaplingParameters = OCSPStaplingParameters.new
            @OCSPStaplingParameters.deserialize(params['OCSPStaplingParameters'])
          end
          unless params['HTTP2Parameters'].nil?
            @HTTP2Parameters = HTTP2Parameters.new
            @HTTP2Parameters.deserialize(params['HTTP2Parameters'])
          end
          unless params['PostMaxSizeParameters'].nil?
            @PostMaxSizeParameters = PostMaxSizeParameters.new
            @PostMaxSizeParameters.deserialize(params['PostMaxSizeParameters'])
          end
          unless params['ClientIPCountryParameters'].nil?
            @ClientIPCountryParameters = ClientIPCountryParameters.new
            @ClientIPCountryParameters.deserialize(params['ClientIPCountryParameters'])
          end
          unless params['UpstreamFollowRedirectParameters'].nil?
            @UpstreamFollowRedirectParameters = UpstreamFollowRedirectParameters.new
            @UpstreamFollowRedirectParameters.deserialize(params['UpstreamFollowRedirectParameters'])
          end
          unless params['UpstreamRequestParameters'].nil?
            @UpstreamRequestParameters = UpstreamRequestParameters.new
            @UpstreamRequestParameters.deserialize(params['UpstreamRequestParameters'])
          end
          unless params['TLSConfigParameters'].nil?
            @TLSConfigParameters = TLSConfigParameters.new
            @TLSConfigParameters.deserialize(params['TLSConfigParameters'])
          end
          unless params['ModifyOriginParameters'].nil?
            @ModifyOriginParameters = ModifyOriginParameters.new
            @ModifyOriginParameters.deserialize(params['ModifyOriginParameters'])
          end
          unless params['HTTPUpstreamTimeoutParameters'].nil?
            @HTTPUpstreamTimeoutParameters = HTTPUpstreamTimeoutParameters.new
            @HTTPUpstreamTimeoutParameters.deserialize(params['HTTPUpstreamTimeoutParameters'])
          end
          unless params['HttpResponseParameters'].nil?
            @HttpResponseParameters = HTTPResponseParameters.new
            @HttpResponseParameters.deserialize(params['HttpResponseParameters'])
          end
          unless params['ErrorPageParameters'].nil?
            @ErrorPageParameters = ErrorPageParameters.new
            @ErrorPageParameters.deserialize(params['ErrorPageParameters'])
          end
          unless params['ModifyResponseHeaderParameters'].nil?
            @ModifyResponseHeaderParameters = ModifyResponseHeaderParameters.new
            @ModifyResponseHeaderParameters.deserialize(params['ModifyResponseHeaderParameters'])
          end
          unless params['ModifyRequestHeaderParameters'].nil?
            @ModifyRequestHeaderParameters = ModifyRequestHeaderParameters.new
            @ModifyRequestHeaderParameters.deserialize(params['ModifyRequestHeaderParameters'])
          end
          unless params['ResponseSpeedLimitParameters'].nil?
            @ResponseSpeedLimitParameters = ResponseSpeedLimitParameters.new
            @ResponseSpeedLimitParameters.deserialize(params['ResponseSpeedLimitParameters'])
          end
          unless params['SetContentIdentifierParameters'].nil?
            @SetContentIdentifierParameters = SetContentIdentifierParameters.new
            @SetContentIdentifierParameters.deserialize(params['SetContentIdentifierParameters'])
          end
          unless params['VaryParameters'].nil?
            @VaryParameters = VaryParameters.new
            @VaryParameters.deserialize(params['VaryParameters'])
          end
        end
      end

      # 规则引擎规则详情。
      class RuleEngineItem < TencentCloud::Common::AbstractModel
        # @param Status: 规则状态。取值有：<li> enable: 启用； </li><li> disable: 未启用。</li>
        # @type Status: String
        # @param RuleId: 规则 ID。规则的唯一性标识，当调用 ModifyL7AccRules 时，该参数必填。
        # @type RuleId: String
        # @param RuleName: 规则名称。名称长度限制不超过 255 个字符。
        # @type RuleName: String
        # @param Description: 规则注释。可以填写多个注释。
        # @type Description: Array
        # @param Branches: 子规则分支。此列表当前只支持填写一项规则，多填无效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Branches: Array
        # @param RulePriority: 规则优先级。仅作为出参使用。
        # @type RulePriority: Integer

        attr_accessor :Status, :RuleId, :RuleName, :Description, :Branches, :RulePriority

        def initialize(status=nil, ruleid=nil, rulename=nil, description=nil, branches=nil, rulepriority=nil)
          @Status = status
          @RuleId = ruleid
          @RuleName = rulename
          @Description = description
          @Branches = branches
          @RulePriority = rulepriority
        end

        def deserialize(params)
          @Status = params['Status']
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Description = params['Description']
          unless params['Branches'].nil?
            @Branches = []
            params['Branches'].each do |i|
              rulebranch_tmp = RuleBranch.new
              rulebranch_tmp.deserialize(i)
              @Branches << rulebranch_tmp
            end
          end
          @RulePriority = params['RulePriority']
        end
      end

      # 子规则。
      class RuleEngineSubRule < TencentCloud::Common::AbstractModel
        # @param Branches: 子规则分支
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Branches: Array
        # @param Description: 规则注释。
        # @type Description: Array

        attr_accessor :Branches, :Description

        def initialize(branches=nil, description=nil)
          @Branches = branches
          @Description = description
        end

        def deserialize(params)
          unless params['Branches'].nil?
            @Branches = []
            params['Branches'].each do |i|
              rulebranch_tmp = RuleBranch.new
              rulebranch_tmp.deserialize(i)
              @Branches << rulebranch_tmp
            end
          end
          @Description = params['Description']
        end
      end

      # 规则引擎参数详情信息，特殊参数类型。
      class RuleExtraParameter < TencentCloud::Common::AbstractModel
        # @param Id: 参数名，取值有：
        # <li> Action：修改 HTTP 头部所需参数，RuleAction 选择 RewirteAction；</li>
        # <li> StatusCode：状态码相关功能所需参数，RuleAction 选择 CodeAction。</li>
        # @type Id: String
        # @param Type: 参数值类型。
        # <li> CHOICE：参数值只能在 Values 中选择； </li>
        # <li> CUSTOM_NUM：参数值用户自定义，整型类型；</li>
        # <li> CUSTOM_STRING：参数值用户自定义，字符串类型。</li>
        # @type Type: String
        # @param Choices: 可选参数值。
        # 注意：当 Id 的值为 StatusCode 时数组中的值为整型，填写参数值时请填写字符串的整型数值。
        # @type Choices: Array

        attr_accessor :Id, :Type, :Choices

        def initialize(id=nil, type=nil, choices=nil)
          @Id = id
          @Type = type
          @Choices = choices
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Choices = params['Choices']
        end
      end

      # 规则引擎规则详情
      class RuleItem < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID。
        # @type RuleId: String
        # @param RuleName: 规则名称，名称字符串长度 1~255。
        # @type RuleName: String
        # @param Status: 规则状态，取值有:
        # <li> enable: 启用； </li>
        # <li> disable: 未启用。 </li>
        # @type Status: String
        # @param Rules: 规则内容。
        # @type Rules: Array
        # @param RulePriority: 规则优先级, 值越大优先级越高，最小为 1。
        # @type RulePriority: Integer
        # @param Tags: 规则标签。
        # @type Tags: Array

        attr_accessor :RuleId, :RuleName, :Status, :Rules, :RulePriority, :Tags

        def initialize(ruleid=nil, rulename=nil, status=nil, rules=nil, rulepriority=nil, tags=nil)
          @RuleId = ruleid
          @RuleName = rulename
          @Status = status
          @Rules = rules
          @RulePriority = rulepriority
          @Tags = tags
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RuleName = params['RuleName']
          @Status = params['Status']
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              rule_tmp = Rule.new
              rule_tmp.deserialize(i)
              @Rules << rule_tmp
            end
          end
          @RulePriority = params['RulePriority']
          @Tags = params['Tags']
        end
      end

      # 规则引擎条件常规动作参数
      class RuleNormalActionParams < TencentCloud::Common::AbstractModel
        # @param Name: 参数名称，参数填写规范可调用接口 [查询规则引擎的设置参数](https://cloud.tencent.com/document/product/1552/80618) 查看。
        # @type Name: String
        # @param Values: 参数值。
        # @type Values: Array

        attr_accessor :Name, :Values

        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 规则引擎条件 HTTP 请求/响应头操作动作参数。
      class RuleRewriteActionParams < TencentCloud::Common::AbstractModel
        # @param Action: 功能参数名称，参数填写规范可调用接口 [查询规则引擎的设置参数](https://cloud.tencent.com/document/product/1552/80618) 查看。现在只有三种取值：
        # <li> add：添加 HTTP 头部；</li>
        # <li> set：重写 HTTP 头部；</li>
        # <li> del：删除 HTTP 头部。</li>
        # @type Action: String
        # @param Name: 参数名称。
        # @type Name: String
        # @param Values: 参数值。
        # @type Values: Array

        attr_accessor :Action, :Name, :Values

        def initialize(action=nil, name=nil, values=nil)
          @Action = action
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Action = params['Action']
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 规则引擎可应用于匹配请求的设置详细信息。
      class RulesProperties < TencentCloud::Common::AbstractModel
        # @param Name: 值为参数名称。
        # @type Name: String
        # @param Min: 数值参数的最小值，非数值参数或 Min 和 Max 值都为 0 则此项无意义。
        # @type Min: Integer
        # @param ChoicesValue: 参数值的可选值。
        # 注意：若参数值为用户自定义则该数组为空数组。
        # @type ChoicesValue: Array
        # @param Type: 参数值类型。
        # <li> CHOICE：参数值只能在 ChoicesValue 中选择； </li>
        # <li> TOGGLE：参数值为开关类型，可在 ChoicesValue 中选择；</li>
        # <li> OBJECT：参数值为对象类型，ChoiceProperties 为改对象类型关联的属性；</li>
        # <li> CUSTOM_NUM：参数值用户自定义，整型类型；</li>
        # <li> CUSTOM_STRING：参数值用户自定义，字符串类型。</li>注意：当参数类型为 OBJECT 类型时，请注意参考 [示例2 参数为 OBJECT 类型的创建](https://cloud.tencent.com/document/product/1552/80622#.E7.A4.BA.E4.BE.8B2-.E4.BF.AE.E6.94.B9.E6.BA.90.E7.AB.99.E4.B8.BAIP.E5.9F.9F.E5.90.8D)
        # @type Type: String
        # @param Max: 数值参数的最大值，非数值参数或 Min 和 Max 值都为 0 则此项无意义。
        # @type Max: Integer
        # @param IsMultiple: 参数值是否支持多选或者填写多个。
        # @type IsMultiple: Boolean
        # @param IsAllowEmpty: 是否允许为空。
        # @type IsAllowEmpty: Boolean
        # @param ChoiceProperties: 该参数对应的关联配置参数，属于调用接口的必填参数。
        # 注意：如果可选参数无特殊新增参数则该数组为空数组。
        # @type ChoiceProperties: Array
        # @param ExtraParameter: <li> 为 NULL：无特殊参数，RuleAction 选择 NormalAction；</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExtraParameter: :class:`Tencentcloud::Teo.v20220901.models.RuleExtraParameter`

        attr_accessor :Name, :Min, :ChoicesValue, :Type, :Max, :IsMultiple, :IsAllowEmpty, :ChoiceProperties, :ExtraParameter

        def initialize(name=nil, min=nil, choicesvalue=nil, type=nil, max=nil, ismultiple=nil, isallowempty=nil, choiceproperties=nil, extraparameter=nil)
          @Name = name
          @Min = min
          @ChoicesValue = choicesvalue
          @Type = type
          @Max = max
          @IsMultiple = ismultiple
          @IsAllowEmpty = isallowempty
          @ChoiceProperties = choiceproperties
          @ExtraParameter = extraparameter
        end

        def deserialize(params)
          @Name = params['Name']
          @Min = params['Min']
          @ChoicesValue = params['ChoicesValue']
          @Type = params['Type']
          @Max = params['Max']
          @IsMultiple = params['IsMultiple']
          @IsAllowEmpty = params['IsAllowEmpty']
          unless params['ChoiceProperties'].nil?
            @ChoiceProperties = []
            params['ChoiceProperties'].each do |i|
              rulechoicepropertiesitem_tmp = RuleChoicePropertiesItem.new
              rulechoicepropertiesitem_tmp.deserialize(i)
              @ChoiceProperties << rulechoicepropertiesitem_tmp
            end
          end
          unless params['ExtraParameter'].nil?
            @ExtraParameter = RuleExtraParameter.new
            @ExtraParameter.deserialize(params['ExtraParameter'])
          end
        end
      end

      # 规则引擎可应用于匹配请求的设置列表及其详细信息
      class RulesSettingAction < TencentCloud::Common::AbstractModel
        # @param Action: 功能名称，取值有：
        # <li> 访问URL 重写（AccessUrlRedirect）；</li>
        # <li> 回源 URL 重写 （UpstreamUrlRedirect）；</li>
        # <li> 自定义错误页面
        # (ErrorPage)；</li>
        # <li> QUIC（QUIC）；</li>
        # <li> WebSocket （WebSocket）；</li>
        # <li> 视频拖拽（VideoSeek）；</li>
        # <li> Token 鉴权（Authentication）；</li>
        # <li> 自定义CacheKey（CacheKey）；</li>
        # <li> 节点缓存 TTL （Cache）；</li>
        # <li> 浏览器缓存 TTL（MaxAge）；</li>
        # <li> 离线缓存（OfflineCache）；</li>
        # <li> 智能加速（SmartRouting）；</li>
        # <li> 分片回源（RangeOriginPull）；</li>
        # <li> HTTP/2 回源（UpstreamHttp2）；</li>
        # <li> Host Header 重写（HostHeader）；</li>
        # <li> 强制 HTTPS（ForceRedirect）；</li>
        # <li> 回源 HTTPS（OriginPullProtocol）；</li>
        # <li> 缓存预刷新（CachePrefresh）；</li>
        # <li> 智能压缩（Compression）；</li>
        # <li> 修改 HTTP 请求头（RequestHeader）；</li>
        # <li> 修改HTTP响应头（ResponseHeader）;</li>
        # <li> 状态码缓存 TTL（StatusCodeCache）;</li>
        # <li> Hsts；</li>
        # <li> ClientIpHeader；</li>
        # <li> TlsVersion；</li>
        # <li> OcspStapling。</li>
        # @type Action: String
        # @param Properties: 参数信息。
        # @type Properties: Array

        attr_accessor :Action, :Properties

        def initialize(action=nil, properties=nil)
          @Action = action
          @Properties = properties
        end

        def deserialize(params)
          @Action = params['Action']
          unless params['Properties'].nil?
            @Properties = []
            params['Properties'].each do |i|
              rulesproperties_tmp = RulesProperties.new
              rulesproperties_tmp.deserialize(i)
              @Properties << rulesproperties_tmp
            end
          end
        end
      end

      # 实时日志投递到 AWS S3 兼容存储桶的配置信息。
      class S3 < TencentCloud::Common::AbstractModel
        # @param Endpoint: 不包含存储桶名称或路径的 URL，例如：`https://storage.googleapis.com`、`https://s3.ap-northeast-2.amazonaws.com`、`https://cos.ap-nanjing.myqcloud.com`。
        # @type Endpoint: String
        # @param Region: 存储桶所在的地域，例如：`ap-northeast-2`。
        # @type Region: String
        # @param Bucket: 存储桶名称和日志存储目录，例如：`your_bucket_name/EO-logs/`。如果存储桶中无此目录则会自动创建。
        # @type Bucket: String
        # @param AccessId: 访问存储桶使用的 Access Key ID。
        # @type AccessId: String
        # @param AccessKey: 访问存储桶使用的 secret key。
        # @type AccessKey: String
        # @param CompressType: 数据压缩类型，取值有: <li> gzip：gzip压缩。</li>不填表示不启用压缩。
        # @type CompressType: String

        attr_accessor :Endpoint, :Region, :Bucket, :AccessId, :AccessKey, :CompressType

        def initialize(endpoint=nil, region=nil, bucket=nil, accessid=nil, accesskey=nil, compresstype=nil)
          @Endpoint = endpoint
          @Region = region
          @Bucket = bucket
          @AccessId = accessid
          @AccessKey = accesskey
          @CompressType = compresstype
        end

        def deserialize(params)
          @Endpoint = params['Endpoint']
          @Region = params['Region']
          @Bucket = params['Bucket']
          @AccessId = params['AccessId']
          @AccessKey = params['AccessKey']
          @CompressType = params['CompressType']
        end
      end

      # 安全数据Entry返回值
      class SecEntry < TencentCloud::Common::AbstractModel
        # @param Key: 查询维度值。
        # @type Key: String
        # @param Value: 查询维度下详细数据。
        # @type Value: Array

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          unless params['Value'].nil?
            @Value = []
            params['Value'].each do |i|
              secentryvalue_tmp = SecEntryValue.new
              secentryvalue_tmp.deserialize(i)
              @Value << secentryvalue_tmp
            end
          end
        end
      end

      # 安全数据维度值信息
      class SecEntryValue < TencentCloud::Common::AbstractModel
        # @param Metric: 指标名称。
        # @type Metric: String
        # @param Detail: 时序数据详情。
        # @type Detail: Array
        # @param Max: 最大值。
        # @type Max: Integer
        # @param Avg: 平均值。
        # @type Avg: Float
        # @param Sum: 数据总和。
        # @type Sum: Float

        attr_accessor :Metric, :Detail, :Max, :Avg, :Sum

        def initialize(metric=nil, detail=nil, max=nil, avg=nil, sum=nil)
          @Metric = metric
          @Detail = detail
          @Max = max
          @Avg = avg
          @Sum = sum
        end

        def deserialize(params)
          @Metric = params['Metric']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              timingdataitem_tmp = TimingDataItem.new
              timingdataitem_tmp.deserialize(i)
              @Detail << timingdataitem_tmp
            end
          end
          @Max = params['Max']
          @Avg = params['Avg']
          @Sum = params['Sum']
        end
      end

      # 安全的执行动作
      class SecurityAction < TencentCloud::Common::AbstractModel
        # @param Name: 安全执行的具体动作。取值有：
        # <li>Deny：拦截，阻止请求访问站点资源；</li>
        # <li>Monitor：观察，仅记录日志；</li>
        # <li>Redirect：重定向至 URL；</li>
        # <li>Disabled：未启用，不启用指定规则；</li>
        # <li>Allow：允许访问，但延迟处理请求；</li>
        # <li>Challenge：挑战，响应挑战内容；</li>
        # <li>BlockIP：待废弃，IP 封禁；</li>
        # <li>ReturnCustomPage：待废弃，使用指定页面拦截；</li>
        # <li>JSChallenge：待废弃，JavaScript 挑战；</li>
        # <li>ManagedChallenge：待废弃，托管挑战。</li>
        # @type Name: String
        # @param DenyActionParameters: 当 Name 为 Deny 时的附加参数。
        # @type DenyActionParameters: :class:`Tencentcloud::Teo.v20220901.models.DenyActionParameters`
        # @param RedirectActionParameters: 当 Name 为 Redirect 时的附加参数。
        # @type RedirectActionParameters: :class:`Tencentcloud::Teo.v20220901.models.RedirectActionParameters`
        # @param AllowActionParameters: 当 Name 为 Allow 时的附加参数。
        # @type AllowActionParameters: :class:`Tencentcloud::Teo.v20220901.models.AllowActionParameters`
        # @param ChallengeActionParameters: 当 Name 为 Challenge 时的附加参数。
        # @type ChallengeActionParameters: :class:`Tencentcloud::Teo.v20220901.models.ChallengeActionParameters`
        # @param BlockIPActionParameters: 待废弃，当 Name 为 BlockIP 时的附加参数。
        # @type BlockIPActionParameters: :class:`Tencentcloud::Teo.v20220901.models.BlockIPActionParameters`
        # @param ReturnCustomPageActionParameters: 待废弃，当 Name 为 ReturnCustomPage 时的附加参数。
        # @type ReturnCustomPageActionParameters: :class:`Tencentcloud::Teo.v20220901.models.ReturnCustomPageActionParameters`

        attr_accessor :Name, :DenyActionParameters, :RedirectActionParameters, :AllowActionParameters, :ChallengeActionParameters, :BlockIPActionParameters, :ReturnCustomPageActionParameters

        def initialize(name=nil, denyactionparameters=nil, redirectactionparameters=nil, allowactionparameters=nil, challengeactionparameters=nil, blockipactionparameters=nil, returncustompageactionparameters=nil)
          @Name = name
          @DenyActionParameters = denyactionparameters
          @RedirectActionParameters = redirectactionparameters
          @AllowActionParameters = allowactionparameters
          @ChallengeActionParameters = challengeactionparameters
          @BlockIPActionParameters = blockipactionparameters
          @ReturnCustomPageActionParameters = returncustompageactionparameters
        end

        def deserialize(params)
          @Name = params['Name']
          unless params['DenyActionParameters'].nil?
            @DenyActionParameters = DenyActionParameters.new
            @DenyActionParameters.deserialize(params['DenyActionParameters'])
          end
          unless params['RedirectActionParameters'].nil?
            @RedirectActionParameters = RedirectActionParameters.new
            @RedirectActionParameters.deserialize(params['RedirectActionParameters'])
          end
          unless params['AllowActionParameters'].nil?
            @AllowActionParameters = AllowActionParameters.new
            @AllowActionParameters.deserialize(params['AllowActionParameters'])
          end
          unless params['ChallengeActionParameters'].nil?
            @ChallengeActionParameters = ChallengeActionParameters.new
            @ChallengeActionParameters.deserialize(params['ChallengeActionParameters'])
          end
          unless params['BlockIPActionParameters'].nil?
            @BlockIPActionParameters = BlockIPActionParameters.new
            @BlockIPActionParameters.deserialize(params['BlockIPActionParameters'])
          end
          unless params['ReturnCustomPageActionParameters'].nil?
            @ReturnCustomPageActionParameters = ReturnCustomPageActionParameters.new
            @ReturnCustomPageActionParameters.deserialize(params['ReturnCustomPageActionParameters'])
          end
        end
      end

      # Web安全配置
      class SecurityConfig < TencentCloud::Common::AbstractModel
        # @param WafConfig: 托管规则。如果入参为空或不填，默认使用历史配置。
        # @type WafConfig: :class:`Tencentcloud::Teo.v20220901.models.WafConfig`
        # @param RateLimitConfig: 速率限制。如果入参为空或不填，默认使用历史配置。
        # @type RateLimitConfig: :class:`Tencentcloud::Teo.v20220901.models.RateLimitConfig`
        # @param AclConfig: 自定义规则。如果入参为空或不填，默认使用历史配置。
        # @type AclConfig: :class:`Tencentcloud::Teo.v20220901.models.AclConfig`
        # @param BotConfig: Bot配置。如果入参为空或不填，默认使用历史配置。
        # @type BotConfig: :class:`Tencentcloud::Teo.v20220901.models.BotConfig`
        # @param SwitchConfig: 七层防护总开关。如果入参为空或不填，默认使用历史配置。
        # @type SwitchConfig: :class:`Tencentcloud::Teo.v20220901.models.SwitchConfig`
        # @param IpTableConfig: 基础访问管控。如果入参为空或不填，默认使用历史配置。
        # @type IpTableConfig: :class:`Tencentcloud::Teo.v20220901.models.IpTableConfig`
        # @param ExceptConfig: 例外规则配置。如果入参为空或不填，默认使用历史配置。
        # @type ExceptConfig: :class:`Tencentcloud::Teo.v20220901.models.ExceptConfig`
        # @param DropPageConfig: 自定义拦截页面配置。如果入参为空或不填，默认使用历史配置。
        # @type DropPageConfig: :class:`Tencentcloud::Teo.v20220901.models.DropPageConfig`
        # @param TemplateConfig: 模板配置。此处仅出参数使用。
        # @type TemplateConfig: :class:`Tencentcloud::Teo.v20220901.models.TemplateConfig`
        # @param SlowPostConfig: 慢速攻击配置。如果入参为空或不填，默认使用历史配置。
        # @type SlowPostConfig: :class:`Tencentcloud::Teo.v20220901.models.SlowPostConfig`
        # @param DetectLengthLimitConfig: 检测长度限制配置。仅出参使用。
        # @type DetectLengthLimitConfig: :class:`Tencentcloud::Teo.v20220901.models.DetectLengthLimitConfig`

        attr_accessor :WafConfig, :RateLimitConfig, :AclConfig, :BotConfig, :SwitchConfig, :IpTableConfig, :ExceptConfig, :DropPageConfig, :TemplateConfig, :SlowPostConfig, :DetectLengthLimitConfig

        def initialize(wafconfig=nil, ratelimitconfig=nil, aclconfig=nil, botconfig=nil, switchconfig=nil, iptableconfig=nil, exceptconfig=nil, droppageconfig=nil, templateconfig=nil, slowpostconfig=nil, detectlengthlimitconfig=nil)
          @WafConfig = wafconfig
          @RateLimitConfig = ratelimitconfig
          @AclConfig = aclconfig
          @BotConfig = botconfig
          @SwitchConfig = switchconfig
          @IpTableConfig = iptableconfig
          @ExceptConfig = exceptconfig
          @DropPageConfig = droppageconfig
          @TemplateConfig = templateconfig
          @SlowPostConfig = slowpostconfig
          @DetectLengthLimitConfig = detectlengthlimitconfig
        end

        def deserialize(params)
          unless params['WafConfig'].nil?
            @WafConfig = WafConfig.new
            @WafConfig.deserialize(params['WafConfig'])
          end
          unless params['RateLimitConfig'].nil?
            @RateLimitConfig = RateLimitConfig.new
            @RateLimitConfig.deserialize(params['RateLimitConfig'])
          end
          unless params['AclConfig'].nil?
            @AclConfig = AclConfig.new
            @AclConfig.deserialize(params['AclConfig'])
          end
          unless params['BotConfig'].nil?
            @BotConfig = BotConfig.new
            @BotConfig.deserialize(params['BotConfig'])
          end
          unless params['SwitchConfig'].nil?
            @SwitchConfig = SwitchConfig.new
            @SwitchConfig.deserialize(params['SwitchConfig'])
          end
          unless params['IpTableConfig'].nil?
            @IpTableConfig = IpTableConfig.new
            @IpTableConfig.deserialize(params['IpTableConfig'])
          end
          unless params['ExceptConfig'].nil?
            @ExceptConfig = ExceptConfig.new
            @ExceptConfig.deserialize(params['ExceptConfig'])
          end
          unless params['DropPageConfig'].nil?
            @DropPageConfig = DropPageConfig.new
            @DropPageConfig.deserialize(params['DropPageConfig'])
          end
          unless params['TemplateConfig'].nil?
            @TemplateConfig = TemplateConfig.new
            @TemplateConfig.deserialize(params['TemplateConfig'])
          end
          unless params['SlowPostConfig'].nil?
            @SlowPostConfig = SlowPostConfig.new
            @SlowPostConfig.deserialize(params['SlowPostConfig'])
          end
          unless params['DetectLengthLimitConfig'].nil?
            @DetectLengthLimitConfig = DetectLengthLimitConfig.new
            @DetectLengthLimitConfig.deserialize(params['DetectLengthLimitConfig'])
          end
        end
      end

      # 安全策略配置
      class SecurityPolicy < TencentCloud::Common::AbstractModel
        # @param CustomRules: 自定义规则配置。
        # @type CustomRules: :class:`Tencentcloud::Teo.v20220901.models.CustomRules`
        # @param ManagedRules: 托管规则配置。
        # @type ManagedRules: :class:`Tencentcloud::Teo.v20220901.models.ManagedRules`
        # @param HttpDDoSProtection: HTTP DDOS 防护配置。
        # @type HttpDDoSProtection: :class:`Tencentcloud::Teo.v20220901.models.HttpDDoSProtection`
        # @param RateLimitingRules: 速率限制规则配置。
        # @type RateLimitingRules: :class:`Tencentcloud::Teo.v20220901.models.RateLimitingRules`
        # @param ExceptionRules: 例外规则配置。
        # @type ExceptionRules: :class:`Tencentcloud::Teo.v20220901.models.ExceptionRules`
        # @param BotManagement: Bot 管理配置。
        # @type BotManagement: :class:`Tencentcloud::Teo.v20220901.models.BotManagement`

        attr_accessor :CustomRules, :ManagedRules, :HttpDDoSProtection, :RateLimitingRules, :ExceptionRules, :BotManagement

        def initialize(customrules=nil, managedrules=nil, httpddosprotection=nil, ratelimitingrules=nil, exceptionrules=nil, botmanagement=nil)
          @CustomRules = customrules
          @ManagedRules = managedrules
          @HttpDDoSProtection = httpddosprotection
          @RateLimitingRules = ratelimitingrules
          @ExceptionRules = exceptionrules
          @BotManagement = botmanagement
        end

        def deserialize(params)
          unless params['CustomRules'].nil?
            @CustomRules = CustomRules.new
            @CustomRules.deserialize(params['CustomRules'])
          end
          unless params['ManagedRules'].nil?
            @ManagedRules = ManagedRules.new
            @ManagedRules.deserialize(params['ManagedRules'])
          end
          unless params['HttpDDoSProtection'].nil?
            @HttpDDoSProtection = HttpDDoSProtection.new
            @HttpDDoSProtection.deserialize(params['HttpDDoSProtection'])
          end
          unless params['RateLimitingRules'].nil?
            @RateLimitingRules = RateLimitingRules.new
            @RateLimitingRules.deserialize(params['RateLimitingRules'])
          end
          unless params['ExceptionRules'].nil?
            @ExceptionRules = ExceptionRules.new
            @ExceptionRules.deserialize(params['ExceptionRules'])
          end
          unless params['BotManagement'].nil?
            @BotManagement = BotManagement.new
            @BotManagement.deserialize(params['BotManagement'])
          end
        end
      end

      # 策略模板信息
      class SecurityPolicyTemplateInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: 策略模板所属的站点 ID。
        # @type ZoneId: String
        # @param TemplateId: 策略模板 ID。
        # @type TemplateId: String
        # @param TemplateName: 策略模板名称。
        # @type TemplateName: String
        # @param BindDomains: 策略模板绑定的域名信息。
        # @type BindDomains: Array

        attr_accessor :ZoneId, :TemplateId, :TemplateName, :BindDomains

        def initialize(zoneid=nil, templateid=nil, templatename=nil, binddomains=nil)
          @ZoneId = zoneid
          @TemplateId = templateid
          @TemplateName = templatename
          @BindDomains = binddomains
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
          unless params['BindDomains'].nil?
            @BindDomains = []
            params['BindDomains'].each do |i|
              binddomaininfo_tmp = BindDomainInfo.new
              binddomaininfo_tmp.deserialize(i)
              @BindDomains << binddomaininfo_tmp
            end
          end
        end
      end

      # 安全策略模板的绑定关系。
      class SecurityTemplateBinding < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID
        # @type TemplateId: String
        # @param TemplateScope: 模板绑定状态。
        # @type TemplateScope: Array

        attr_accessor :TemplateId, :TemplateScope

        def initialize(templateid=nil, templatescope=nil)
          @TemplateId = templateid
          @TemplateScope = templatescope
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          unless params['TemplateScope'].nil?
            @TemplateScope = []
            params['TemplateScope'].each do |i|
              templatescope_tmp = TemplateScope.new
              templatescope_tmp.deserialize(i)
              @TemplateScope << templatescope_tmp
            end
          end
        end
      end

      # 安全类型配置项。
      class SecurityType < TencentCloud::Common::AbstractModel
        # @param Switch: 安全类型开关，取值为：
        # <li> on：开启；</li>
        # <li> off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # https 服务端证书配置
      class ServerCertInfo < TencentCloud::Common::AbstractModel
        # @param CertId: 服务器证书 ID。来源于 SSL 侧，您可以前往 [SSL 证书列表](https://console.cloud.tencent.com/ssl) 查看 CertId。
        # @type CertId: String
        # @param Alias: 证书备注名。
        # @type Alias: String
        # @param Type: 证书类型，取值有：
        # <li>default：默认证书；</li>
        # <li>upload：用户上传；</li>
        # <li>managed：腾讯云托管。</li>
        # @type Type: String
        # @param ExpireTime: 证书过期时间。
        # @type ExpireTime: String
        # @param DeployTime: 证书部署时间。
        # @type DeployTime: String
        # @param SignAlgo: 签名算法。
        # @type SignAlgo: String
        # @param CommonName: 证书归属域名名称。
        # @type CommonName: String

        attr_accessor :CertId, :Alias, :Type, :ExpireTime, :DeployTime, :SignAlgo, :CommonName

        def initialize(certid=nil, _alias=nil, type=nil, expiretime=nil, deploytime=nil, signalgo=nil, commonname=nil)
          @CertId = certid
          @Alias = _alias
          @Type = type
          @ExpireTime = expiretime
          @DeployTime = deploytime
          @SignAlgo = signalgo
          @CommonName = commonname
        end

        def deserialize(params)
          @CertId = params['CertId']
          @Alias = params['Alias']
          @Type = params['Type']
          @ExpireTime = params['ExpireTime']
          @DeployTime = params['DeployTime']
          @SignAlgo = params['SignAlgo']
          @CommonName = params['CommonName']
        end
      end

      # 内容标识配置参数。
      class SetContentIdentifierParameters < TencentCloud::Common::AbstractModel
        # @param ContentIdentifier: 内容标识id
        # @type ContentIdentifier: String

        attr_accessor :ContentIdentifier

        def initialize(contentidentifier=nil)
          @ContentIdentifier = contentidentifier
        end

        def deserialize(params)
          @ContentIdentifier = params['ContentIdentifier']
        end
      end

      # 例外规则的跳过匹配条件，即在例外时根据本匹配条件，略过指定字段及内容。
      class SkipCondition < TencentCloud::Common::AbstractModel
        # @param Type: 例外跳过类型，取值为：
        # <li>header_fields：HTTP请求Header；</li>
        # <li>cookie：HTTP请求Cookie；</li>
        # <li>query_string：HTTP请求URL中的Query参数；</li>
        # <li>uri：HTTP请求URI；</li>
        # <li>body_raw：HTTP请求Body；</li>
        # <li>body_json： JSON格式的HTTP Body。</li>
        # @type Type: String
        # @param Selector: 选择跳过的字段，取值为：
        # <li>args：uri 下选择 query 参数: ?name1=jack&age=12；</li>
        # <li>path：uri 下选择部分路径：/path/to/resource.jpg；</li>
        # <li>full：uri 下选择完整路径：example.com/path/to/resource.jpg?name1=jack&age=12；</li>
        # <li>upload_filename：分段文件名，即分段传输文件时；</li>
        # <li>keys：所有的Key；</li>
        # <li>values：匹配Key对应的值；</li>
        # <li>key_value：匹配Key及匹配Value。</li>
        # @type Selector: String
        # @param MatchFromType: 匹配Key所使用的匹配方式，取值为：
        # <li>equal：精准匹配，等于；</li>
        # <li>wildcard：通配符匹配，支持 * 通配。</li>
        # @type MatchFromType: String
        # @param MatchFrom: 匹配Key的值。
        # @type MatchFrom: Array
        # @param MatchContentType: 匹配Content所使用的匹配方式，取值为：
        # <li>equal：精准匹配，等于；</li>
        # <li>wildcard：通配符匹配，支持 * 通配。</li>
        # @type MatchContentType: String
        # @param MatchContent: 匹配Value的值。
        # @type MatchContent: Array

        attr_accessor :Type, :Selector, :MatchFromType, :MatchFrom, :MatchContentType, :MatchContent

        def initialize(type=nil, selector=nil, matchfromtype=nil, matchfrom=nil, matchcontenttype=nil, matchcontent=nil)
          @Type = type
          @Selector = selector
          @MatchFromType = matchfromtype
          @MatchFrom = matchfrom
          @MatchContentType = matchcontenttype
          @MatchContent = matchcontent
        end

        def deserialize(params)
          @Type = params['Type']
          @Selector = params['Selector']
          @MatchFromType = params['MatchFromType']
          @MatchFrom = params['MatchFrom']
          @MatchContentType = params['MatchContentType']
          @MatchContent = params['MatchContent']
        end
      end

      # 慢速攻击防护的具体配置。
      class SlowAttackDefense < TencentCloud::Common::AbstractModel
        # @param Enabled: 慢速攻击防护是否开启。取值有：<li>on：开启；</li><li>off：关闭。</li>
        # @type Enabled: String
        # @param Action: 慢速攻击防护的处置方式，当 Enabled 为 on 时，此字段必填。SecurityAction 的 Name 取值支持：<li>Monitor：观察；</li><li>Deny：拦截；</li>
        # @type Action: :class:`Tencentcloud::Teo.v20220901.models.SecurityAction`
        # @param MinimalRequestBodyTransferRate: 正文传输最小速率阈值的具体配置，当 Enabled 为 on 时，此字段必填。
        # @type MinimalRequestBodyTransferRate: :class:`Tencentcloud::Teo.v20220901.models.MinimalRequestBodyTransferRate`
        # @param RequestBodyTransferTimeout: 正文传输超时时长的具体配置，当 Enabled 为 on 时，此字段必填。
        # @type RequestBodyTransferTimeout: :class:`Tencentcloud::Teo.v20220901.models.RequestBodyTransferTimeout`

        attr_accessor :Enabled, :Action, :MinimalRequestBodyTransferRate, :RequestBodyTransferTimeout

        def initialize(enabled=nil, action=nil, minimalrequestbodytransferrate=nil, requestbodytransfertimeout=nil)
          @Enabled = enabled
          @Action = action
          @MinimalRequestBodyTransferRate = minimalrequestbodytransferrate
          @RequestBodyTransferTimeout = requestbodytransfertimeout
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          unless params['Action'].nil?
            @Action = SecurityAction.new
            @Action.deserialize(params['Action'])
          end
          unless params['MinimalRequestBodyTransferRate'].nil?
            @MinimalRequestBodyTransferRate = MinimalRequestBodyTransferRate.new
            @MinimalRequestBodyTransferRate.deserialize(params['MinimalRequestBodyTransferRate'])
          end
          unless params['RequestBodyTransferTimeout'].nil?
            @RequestBodyTransferTimeout = RequestBodyTransferTimeout.new
            @RequestBodyTransferTimeout.deserialize(params['RequestBodyTransferTimeout'])
          end
        end
      end

      # 慢速攻击配置。
      class SlowPostConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param FirstPartConfig: 首包配置。
        # @type FirstPartConfig: :class:`Tencentcloud::Teo.v20220901.models.FirstPartConfig`
        # @param SlowRateConfig: 基础配置。
        # @type SlowRateConfig: :class:`Tencentcloud::Teo.v20220901.models.SlowRateConfig`
        # @param Action: 慢速攻击的处置动作，取值有：
        # <li>monitor：观察；</li>
        # <li>drop：拦截。</li>
        # @type Action: String
        # @param RuleId: 本规则的Id。
        # @type RuleId: Integer

        attr_accessor :Switch, :FirstPartConfig, :SlowRateConfig, :Action, :RuleId

        def initialize(switch=nil, firstpartconfig=nil, slowrateconfig=nil, action=nil, ruleid=nil)
          @Switch = switch
          @FirstPartConfig = firstpartconfig
          @SlowRateConfig = slowrateconfig
          @Action = action
          @RuleId = ruleid
        end

        def deserialize(params)
          @Switch = params['Switch']
          unless params['FirstPartConfig'].nil?
            @FirstPartConfig = FirstPartConfig.new
            @FirstPartConfig.deserialize(params['FirstPartConfig'])
          end
          unless params['SlowRateConfig'].nil?
            @SlowRateConfig = SlowRateConfig.new
            @SlowRateConfig.deserialize(params['SlowRateConfig'])
          end
          @Action = params['Action']
          @RuleId = params['RuleId']
        end
      end

      # 慢速攻击的基础配置。
      class SlowRateConfig < TencentCloud::Common::AbstractModel
        # @param Switch: 开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Interval: 统计的间隔，单位是秒，即在首段包传输结束后，将数据传输轴按照本参数切分，每个分片独立计算慢速攻击。
        # @type Interval: Integer
        # @param Threshold: 统计时应用的速率阈值，单位是bps，即如果本分片中的传输速率没达到本参数的值，则判定为慢速攻击，应用慢速攻击的处置方式。
        # @type Threshold: Integer

        attr_accessor :Switch, :Interval, :Threshold

        def initialize(switch=nil, interval=nil, threshold=nil)
          @Switch = switch
          @Interval = interval
          @Threshold = threshold
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Interval = params['Interval']
          @Threshold = params['Threshold']
        end
      end

      # 智能加速配置
      class SmartRouting < TencentCloud::Common::AbstractModel
        # @param Switch: 智能加速配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能加速配置。
      class SmartRoutingParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 智能加速配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 支持标准debug结构体
      class StandardDebug < TencentCloud::Common::AbstractModel
        # @param Switch: Debug 功能开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param AllowClientIPList: 允许的客户端来源。支持填写 IPv4 以及 IPv6 的 IP/IP 段。0.0.0.0/0 表示允许所有 IPv4 客户端进行调试，::/0 表示允许所有 IPv6 客户端进行调试。
        # @type AllowClientIPList: Array
        # @param ExpireTime: Debug 功能到期时间。超出设置的时间，则功能失效。
        # @type ExpireTime: String

        attr_accessor :Switch, :AllowClientIPList, :ExpireTime

        def initialize(switch=nil, allowclientiplist=nil, expiretime=nil)
          @Switch = switch
          @AllowClientIPList = allowclientiplist
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @Switch = params['Switch']
          @AllowClientIPList = params['AllowClientIPList']
          @ExpireTime = params['ExpireTime']
        end
      end

      # Debug 调试结构体。
      class StandardDebugParameters < TencentCloud::Common::AbstractModel
        # @param Switch: Debug 功能开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param AllowClientIPList: 允许的客户端来源。支持填写 IPv4 以及 IPv6 的 IP 网段。0.0.0.0/0 表示允许所有 IPv4 客户端进行调试；::/0 表示允许所有 IPv6 客户端进行调试；不能填写 127.0.0.1。<br>注意：当 Switch 字段为 on 时，此字段必填，且填写个数为 1～100；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type AllowClientIPList: Array
        # @param Expires: Debug 功能到期时间。超出设置的时间，则功能失效。<br>注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type Expires: String

        attr_accessor :Switch, :AllowClientIPList, :Expires

        def initialize(switch=nil, allowclientiplist=nil, expires=nil)
          @Switch = switch
          @AllowClientIPList = allowclientiplist
          @Expires = expires
        end

        def deserialize(params)
          @Switch = params['Switch']
          @AllowClientIPList = params['AllowClientIPList']
          @Expires = params['Expires']
        end
      end

      # 状态码缓存 TTL 配置参数内部结构。
      class StatusCodeCacheParam < TencentCloud::Common::AbstractModel
        # @param StatusCode: 状态码，取值为 400、 401、403、 404、 405、 407、 414、 500、 501、 502、 503、 504、 509、 514 之一。
        # @type StatusCode: Integer
        # @param CacheTime: 缓存时间数值，单位为秒，取值：0～31536000。
        # @type CacheTime: Integer

        attr_accessor :StatusCode, :CacheTime

        def initialize(statuscode=nil, cachetime=nil)
          @StatusCode = statuscode
          @CacheTime = cachetime
        end

        def deserialize(params)
          @StatusCode = params['StatusCode']
          @CacheTime = params['CacheTime']
        end
      end

      # 状态码缓存 TTL 配置参数。
      class StatusCodeCacheParameters < TencentCloud::Common::AbstractModel
        # @param StatusCodeCacheParams: 状态码缓存 TTL 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StatusCodeCacheParams: Array

        attr_accessor :StatusCodeCacheParams

        def initialize(statuscodecacheparams=nil)
          @StatusCodeCacheParams = statuscodecacheparams
        end

        def deserialize(params)
          unless params['StatusCodeCacheParams'].nil?
            @StatusCodeCacheParams = []
            params['StatusCodeCacheParams'].each do |i|
              statuscodecacheparam_tmp = StatusCodeCacheParam.new
              statuscodecacheparam_tmp.deserialize(i)
              @StatusCodeCacheParams << statuscodecacheparam_tmp
            end
          end
        end
      end

      # 嵌套规则信息。
      class SubRule < TencentCloud::Common::AbstractModel
        # @param Conditions: 执行功能判断条件。
        # 注意：满足该数组内任意一项条件，功能即可执行。
        # @type Conditions: Array
        # @param Actions: 执行的功能。
        # @type Actions: Array

        attr_accessor :Conditions, :Actions

        def initialize(conditions=nil, actions=nil)
          @Conditions = conditions
          @Actions = actions
        end

        def deserialize(params)
          unless params['Conditions'].nil?
            @Conditions = []
            params['Conditions'].each do |i|
              ruleandconditions_tmp = RuleAndConditions.new
              ruleandconditions_tmp.deserialize(i)
              @Conditions << ruleandconditions_tmp
            end
          end
          unless params['Actions'].nil?
            @Actions = []
            params['Actions'].each do |i|
              action_tmp = Action.new
              action_tmp.deserialize(i)
              @Actions << action_tmp
            end
          end
        end
      end

      # 规则引擎嵌套规则
      class SubRuleItem < TencentCloud::Common::AbstractModel
        # @param Rules: 嵌套规则信息。
        # @type Rules: Array
        # @param Tags: 规则标签。
        # @type Tags: Array

        attr_accessor :Rules, :Tags

        def initialize(rules=nil, tags=nil)
          @Rules = rules
          @Tags = tags
        end

        def deserialize(params)
          unless params['Rules'].nil?
            @Rules = []
            params['Rules'].each do |i|
              subrule_tmp = SubRule.new
              subrule_tmp.deserialize(i)
              @Rules << subrule_tmp
            end
          end
          @Tags = params['Tags']
        end
      end

      # 询价参数
      class Sv < TencentCloud::Common::AbstractModel
        # @param Key: 询价参数键。
        # @type Key: String
        # @param Value: 询价参数值。
        # @type Value: String
        # @param Pack: 询价参数映射的配额，取值有：
        # <li>zone：站点数；</li>
        # <li>custom-rule：自定义规则数；</li>
        # <li>rate-limiting-rule：速率限制规则数；</li>
        # <li>l4-proxy-instance：四层代理实例数。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Pack: String
        # @param InstanceId: 询价参数映射的四层代理实例Id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param ProtectionSpecs: 询价参数对应的防护等级。
        # 取值有： <li> cm_30G：中国大陆加速区域保底防护30Gbps；</li><li> cm_60G：中国大陆加速区域保底防护60Gbps；</li><li> cm_100G：中国大陆加速区域保底防护100Gbps；</li><li> anycast_300G：全球加速区域（除中国大陆）Anycast联防300Gbps；</li><li> anycast_unlimited：全球加速区域（除中国大陆）Anycast无上限全力防护；</li><li> cm_30G_anycast_300G：中国大陆加速区域保底防护30Gbps，全球加速区域（除中国大陆）Anycast联防300Gbps；</li><li> cm_30G_anycast_unlimited：中国大陆加速区域保底防护30Gbps，全球加速区域（除中国大陆）Anycast无上限全力防护；</li><li> cm_60G_anycast_300G：中国大陆加速区域保底防护60Gbps，全球加速区域（除中国大陆）Anycast联防300Gbps；</li><li> cm_60G_anycast_unlimited：中国大陆加速区域保底防护60Gbps，全球加速区域（除中国大陆）Anycast无上限全力防护；</li><li> cm_100G_anycast_300G：中国大陆加速区域保底防护100Gbps，全球加速区域（除中国大陆）Anycast联防300Gbps；</li><li> cm_100G_anycast_unlimited：中国大陆加速区域保底防护100Gbps，全球加速区域（除中国大陆）Anycast无上限全力防护。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProtectionSpecs: String

        attr_accessor :Key, :Value, :Pack, :InstanceId, :ProtectionSpecs

        def initialize(key=nil, value=nil, pack=nil, instanceid=nil, protectionspecs=nil)
          @Key = key
          @Value = value
          @Pack = pack
          @InstanceId = instanceid
          @ProtectionSpecs = protectionspecs
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
          @Pack = params['Pack']
          @InstanceId = params['InstanceId']
          @ProtectionSpecs = params['ProtectionSpecs']
        end
      end

      # 功能总开关
      class SwitchConfig < TencentCloud::Common::AbstractModel
        # @param WebSwitch: Web类型的安全总开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>不影响DDoS与Bot的开关。
        # @type WebSwitch: String

        attr_accessor :WebSwitch

        def initialize(webswitch=nil)
          @WebSwitch = webswitch
        end

        def deserialize(params)
          @WebSwitch = params['WebSwitch']
        end
      end

      # 验证码认证实例信息。
      class TCCaptchaOption < TencentCloud::Common::AbstractModel
        # @param CaptchaAppId: CaptchaAppId 信息。
        # @type CaptchaAppId: String
        # @param AppSecretKey: AppSecretKey 信息。
        # @type AppSecretKey: String

        attr_accessor :CaptchaAppId, :AppSecretKey

        def initialize(captchaappid=nil, appsecretkey=nil)
          @CaptchaAppId = captchaappid
          @AppSecretKey = appsecretkey
        end

        def deserialize(params)
          @CaptchaAppId = params['CaptchaAppId']
          @AppSecretKey = params['AppSecretKey']
        end
      end

      # RCE 认证选项实例信息。
      class TCRCEOption < TencentCloud::Common::AbstractModel
        # @param Channel: Channel 信息。
        # @type Channel: String

        attr_accessor :Channel

        def initialize(channel=nil)
          @Channel = channel
        end

        def deserialize(params)
          @Channel = params['Channel']
        end
      end

      # SSL/TLS 安全配置参数。
      class TLSConfigParameters < TencentCloud::Common::AbstractModel
        # @param Version: TLS 版本。至少填写一个，如果是多个时，需要为连续版本号，例如：开启 TLS1、1.1、1.2 和 1.3，不可仅开启 1 和 1.2 而关闭 1.1。取值有：<li>TLSv1：TLSv1 版本；</li><li>TLSv1.1：TLSv1.1 版本；</li><li>TLSv1.2：TLSv1.2 版本；</li><li>TLSv1.3：TLSv1.3 版本。</li>
        # @type Version: Array
        # @param CipherSuite: 密码套件。详细介绍请参考 [TLS 版本及密码套件说明](https://cloud.tencent.com/document/product/1552/86545)。取值有：<li>loose-v2023：loose-v2023 密码套件；</li><li>general-v2023：general-v2023 密码套件；</li><li>strict-v2023：strict-v2023 密码套件。</li>
        # @type CipherSuite: String

        attr_accessor :Version, :CipherSuite

        def initialize(version=nil, ciphersuite=nil)
          @Version = version
          @CipherSuite = ciphersuite
        end

        def deserialize(params)
          @Version = params['Version']
          @CipherSuite = params['CipherSuite']
        end
      end

      # 标签配置
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagKey: String
        # @param TagValue: 标签值。
        # 注意：此字段可能返回 null，表示取不到有效值。
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

      # 内容管理任务结果
      class Task < TencentCloud::Common::AbstractModel
        # @param JobId: 任务 ID。
        # @type JobId: String
        # @param Target: 资源。
        # @type Target: String
        # @param Type: 任务类型。
        # @type Type: String
        # @param Method: 节点缓存清除方法，取值有：
        # <li>invalidate：标记过期，用户请求时触发回源校验，即发送带有 If-None-Match 和 If-Modified-Since 头部的 HTTP 条件请求。若源站响应 200，则节点会回源拉取新的资源并更新缓存；若源站响应 304，则节点不会更新缓存；</li>
        # <li>delete：直接删除节点缓存，用户请求时触发回源拉取资源。</li>
        # @type Method: String
        # @param Status: 状态。取值有：
        # <li>processing：处理中；</li>
        # <li>success：成功；</li>
        # <li>failed：失败；</li>
        # <li>timeout：超时；</li>
        # <li>canceled：已取消。</li>
        # @type Status: String
        # @param CreateTime: 任务创建时间。
        # @type CreateTime: String
        # @param UpdateTime: 任务完成时间。
        # @type UpdateTime: String
        # @param FailType: 刷新、预热失败类型。取值有：
        # <li>taskFailed：任务失败；</li>
        # <li>quotaExceeded：配额超限；</li>
        # <li>downloadManifestFailed：下载描述文件失败；</li>
        # <li>accessDenied：访问被拒绝。</li>
        # <li>originPullFailed：回源失败。</li>
        # @type FailType: String
        # @param FailMessage: 刷新、预热失败描述。
        # @type FailMessage: String

        attr_accessor :JobId, :Target, :Type, :Method, :Status, :CreateTime, :UpdateTime, :FailType, :FailMessage

        def initialize(jobid=nil, target=nil, type=nil, method=nil, status=nil, createtime=nil, updatetime=nil, failtype=nil, failmessage=nil)
          @JobId = jobid
          @Target = target
          @Type = type
          @Method = method
          @Status = status
          @CreateTime = createtime
          @UpdateTime = updatetime
          @FailType = failtype
          @FailMessage = failmessage
        end

        def deserialize(params)
          @JobId = params['JobId']
          @Target = params['Target']
          @Type = params['Type']
          @Method = params['Method']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @FailType = params['FailType']
          @FailMessage = params['FailMessage']
        end
      end

      # 安全模板配置
      class TemplateConfig < TencentCloud::Common::AbstractModel
        # @param TemplateId: 模板ID。
        # @type TemplateId: String
        # @param TemplateName: 模板名称。
        # @type TemplateName: String

        attr_accessor :TemplateId, :TemplateName

        def initialize(templateid=nil, templatename=nil)
          @TemplateId = templateid
          @TemplateName = templatename
        end

        def deserialize(params)
          @TemplateId = params['TemplateId']
          @TemplateName = params['TemplateName']
        end
      end

      # 安全模板绑定域名状态
      class TemplateScope < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneId: String
        # @param EntityStatus: 实例状态列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EntityStatus: Array

        attr_accessor :ZoneId, :EntityStatus

        def initialize(zoneid=nil, entitystatus=nil)
          @ZoneId = zoneid
          @EntityStatus = entitystatus
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          unless params['EntityStatus'].nil?
            @EntityStatus = []
            params['EntityStatus'].each do |i|
              entitystatus_tmp = EntityStatus.new
              entitystatus_tmp.deserialize(i)
              @EntityStatus << entitystatus_tmp
            end
          end
        end
      end

      # 统计曲线数据项
      class TimingDataItem < TencentCloud::Common::AbstractModel
        # @param Timestamp: 返回数据对应时间点，采用 unix 秒级时间戳。
        # @type Timestamp: Integer
        # @param Value: 具体数值。
        # @type Value: Integer

        attr_accessor :Timestamp, :Value

        def initialize(timestamp=nil, value=nil)
          @Timestamp = timestamp
          @Value = value
        end

        def deserialize(params)
          @Timestamp = params['Timestamp']
          @Value = params['Value']
        end
      end

      # 时序数据信息
      class TimingDataRecord < TencentCloud::Common::AbstractModel
        # @param TypeKey: 查询维度值。
        # @type TypeKey: String
        # @param TypeValue: 详细时序数据。
        # @type TypeValue: Array

        attr_accessor :TypeKey, :TypeValue

        def initialize(typekey=nil, typevalue=nil)
          @TypeKey = typekey
          @TypeValue = typevalue
        end

        def deserialize(params)
          @TypeKey = params['TypeKey']
          unless params['TypeValue'].nil?
            @TypeValue = []
            params['TypeValue'].each do |i|
              timingtypevalue_tmp = TimingTypeValue.new
              timingtypevalue_tmp.deserialize(i)
              @TypeValue << timingtypevalue_tmp
            end
          end
        end
      end

      # 时序类型详细数据
      class TimingTypeValue < TencentCloud::Common::AbstractModel
        # @param Sum: 数据和。
        # @type Sum: Integer
        # @param Max: 最大值。
        # @type Max: Integer
        # @param Avg: 平均值。
        # @type Avg: Integer
        # @param MetricName: 指标名。
        # @type MetricName: String
        # @param Detail: 详细数据。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Detail: Array

        attr_accessor :Sum, :Max, :Avg, :MetricName, :Detail

        def initialize(sum=nil, max=nil, avg=nil, metricname=nil, detail=nil)
          @Sum = sum
          @Max = max
          @Avg = avg
          @MetricName = metricname
          @Detail = detail
        end

        def deserialize(params)
          @Sum = params['Sum']
          @Max = params['Max']
          @Avg = params['Avg']
          @MetricName = params['MetricName']
          unless params['Detail'].nil?
            @Detail = []
            params['Detail'].each do |i|
              timingdataitem_tmp = TimingDataItem.new
              timingdataitem_tmp.deserialize(i)
              @Detail << timingdataitem_tmp
            end
          end
        end
      end

      # Top类数据记录
      class TopDataRecord < TencentCloud::Common::AbstractModel
        # @param TypeKey: 查询维度值。
        # @type TypeKey: String
        # @param DetailData: top数据排行。
        # @type DetailData: Array

        attr_accessor :TypeKey, :DetailData

        def initialize(typekey=nil, detaildata=nil)
          @TypeKey = typekey
          @DetailData = detaildata
        end

        def deserialize(params)
          @TypeKey = params['TypeKey']
          unless params['DetailData'].nil?
            @DetailData = []
            params['DetailData'].each do |i|
              topdetaildata_tmp = TopDetailData.new
              topdetaildata_tmp.deserialize(i)
              @DetailData << topdetaildata_tmp
            end
          end
        end
      end

      # Top数据的详细信息
      class TopDetailData < TencentCloud::Common::AbstractModel
        # @param Key: 字段名。
        # @type Key: String
        # @param Value: 字段值。
        # @type Value: Integer

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          @Value = params['Value']
        end
      end

      # TopN的Entry数据
      class TopEntry < TencentCloud::Common::AbstractModel
        # @param Key: top查询维度值。
        # @type Key: String
        # @param Value: 查询具体数据。
        # @type Value: Array

        attr_accessor :Key, :Value

        def initialize(key=nil, value=nil)
          @Key = key
          @Value = value
        end

        def deserialize(params)
          @Key = params['Key']
          unless params['Value'].nil?
            @Value = []
            params['Value'].each do |i|
              topentryvalue_tmp = TopEntryValue.new
              topentryvalue_tmp.deserialize(i)
              @Value << topentryvalue_tmp
            end
          end
        end
      end

      # TopN数据Entry
      class TopEntryValue < TencentCloud::Common::AbstractModel
        # @param Name: 排序实体名。
        # @type Name: String
        # @param Count: 排序实体数量。
        # @type Count: Integer

        attr_accessor :Name, :Count

        def initialize(name=nil, count=nil)
          @Name = name
          @Count = count
        end

        def deserialize(params)
          @Name = params['Name']
          @Count = params['Count']
        end
      end

      # 访问 URL 重定向路径配置参数。
      class URLPath < TencentCloud::Common::AbstractModel
        # @param Action: 执行动作，取值有：
        # <li>follow：跟随请求；</li>
        # <li>custom：自定义；</li>
        # <li>regex：正则匹配。</li>
        # @type Action: String
        # @param Regex: 正则匹配的表达式，长度范围为 1～1024。<br>注意：当 Action 为 regex 时，此字段必填；当 Action 为 follow 或 custom 时，无需填写此字段，若填写则不生效。
        # @type Regex: String
        # @param Value: 重定向的目标URL，长度范围为 1～1024。<br>注意：当 Action 为 regex 或 custom 时，此字段必填；当 Action 为 follow 时，无需填写此字段，若填写则不生效。
        # @type Value: String

        attr_accessor :Action, :Regex, :Value

        def initialize(action=nil, regex=nil, value=nil)
          @Action = action
          @Regex = regex
          @Value = value
        end

        def deserialize(params)
          @Action = params['Action']
          @Regex = params['Regex']
          @Value = params['Value']
        end
      end

      # UpgradePlan请求参数结构体
      class UpgradePlanRequest < TencentCloud::Common::AbstractModel
        # @param PlanId: 套餐 ID，形如 edgeone-2unuvzjmmn2q。
        # @type PlanId: String
        # @param PlanType: 需要升级到的目标套餐版本，取值有：<li> basic：基础版套餐；</li><li> standard：标准版套餐。</li>
        # @type PlanType: String
        # @param AutoUseVoucher: 是否自动使用代金券，取值有：<li> true：是；</li><li> false：否。</li>不填写使用默认值 false。
        # @type AutoUseVoucher: String

        attr_accessor :PlanId, :PlanType, :AutoUseVoucher

        def initialize(planid=nil, plantype=nil, autousevoucher=nil)
          @PlanId = planid
          @PlanType = plantype
          @AutoUseVoucher = autousevoucher
        end

        def deserialize(params)
          @PlanId = params['PlanId']
          @PlanType = params['PlanType']
          @AutoUseVoucher = params['AutoUseVoucher']
        end
      end

      # UpgradePlan返回参数结构体
      class UpgradePlanResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单号。
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId

        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # 用于 EO 节点回源时携带的证书，源站启用双向认证握手时使用，用于源站认证客户端证书是否有效，确保请求来源于受信任的 EO 节点。
      class UpstreamCertInfo < TencentCloud::Common::AbstractModel
        # @param UpstreamMutualTLS: 在回源双向认证场景下，该字段为 EO 节点回源时携带的证书（包含公钥、私钥即可），部署在 EO 节点，用于源站对 EO 节点进行认证。在作为入参使用时，不填写表示保持原有配置。
        # @type UpstreamMutualTLS: :class:`Tencentcloud::Teo.v20220901.models.MutualTLS`

        attr_accessor :UpstreamMutualTLS

        def initialize(upstreammutualtls=nil)
          @UpstreamMutualTLS = upstreammutualtls
        end

        def deserialize(params)
          unless params['UpstreamMutualTLS'].nil?
            @UpstreamMutualTLS = MutualTLS.new
            @UpstreamMutualTLS.deserialize(params['UpstreamMutualTLS'])
          end
        end
      end

      # 回源跟随重定向参数配置。
      class UpstreamFollowRedirectParameters < TencentCloud::Common::AbstractModel
        # @param Switch: 回源跟随重定向配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param MaxTimes: 最大重定向次数。取值为 1-5。
        # 注意：当 Switch 为 on 时，此字段必填；当 Switch 为 off 时，无需填写此字段，若填写则不生效。
        # @type MaxTimes: Integer

        attr_accessor :Switch, :MaxTimes

        def initialize(switch=nil, maxtimes=nil)
          @Switch = switch
          @MaxTimes = maxtimes
        end

        def deserialize(params)
          @Switch = params['Switch']
          @MaxTimes = params['MaxTimes']
        end
      end

      # HTTP2 回源配置。
      class UpstreamHTTP2Parameters < TencentCloud::Common::AbstractModel
        # @param Switch: HTTP2 回源配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # Http2回源配置
      class UpstreamHttp2 < TencentCloud::Common::AbstractModel
        # @param Switch: http2 回源配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 回源请求参数 Cookie 配置。
      class UpstreamRequestCookie < TencentCloud::Common::AbstractModel
        # @param Switch: 回源请求参数 Cookie 配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Action: 回源请求参数 Cookie 模式。当 Switch 为 on 时，该参数必填。取值有：
        # <li>full：表示全部保留；</li>
        # <li>ignore：表示全部忽略；</li>
        # <li>includeCustom：表示保留部分参数；</li>
        # <li>excludeCustom：表示忽略部分参数。</li>
        # @type Action: String
        # @param Values: 指定参数值。仅当查询字符串模式 Action 为 includeCustom 或者 excludeCustom 时该参数生效，用于指定需要保留或者忽略的参数。最大支持 10 个参数。
        # @type Values: Array

        attr_accessor :Switch, :Action, :Values

        def initialize(switch=nil, action=nil, values=nil)
          @Switch = switch
          @Action = action
          @Values = values
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Action = params['Action']
          @Values = params['Values']
        end
      end

      # 回源请求参数配置参数。
      class UpstreamRequestParameters < TencentCloud::Common::AbstractModel
        # @param QueryString: 查询字符串配置。可选配置项，不填表示不配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QueryString: :class:`Tencentcloud::Teo.v20220901.models.UpstreamRequestQueryString`
        # @param Cookie: Cookie 配置。可选配置项，不填表示不配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cookie: :class:`Tencentcloud::Teo.v20220901.models.UpstreamRequestCookie`

        attr_accessor :QueryString, :Cookie

        def initialize(querystring=nil, cookie=nil)
          @QueryString = querystring
          @Cookie = cookie
        end

        def deserialize(params)
          unless params['QueryString'].nil?
            @QueryString = UpstreamRequestQueryString.new
            @QueryString.deserialize(params['QueryString'])
          end
          unless params['Cookie'].nil?
            @Cookie = UpstreamRequestCookie.new
            @Cookie.deserialize(params['Cookie'])
          end
        end
      end

      # 回源请求参数查询字符串配置。
      class UpstreamRequestQueryString < TencentCloud::Common::AbstractModel
        # @param Switch: 回源请求参数查询字符串配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String
        # @param Action: 查询字符串模式。当 Switch 为 on 时，该参数必填。取值有：
        # <li>full：全部保留；</li>
        # <li>ignore：全部忽略；</li>
        # <li>includeCustom：保留部分参数；</li>
        # <li>excludeCustom：忽略部分参数。</li>
        # @type Action: String
        # @param Values: 指定参数值。仅当查询字符串模式 Action 为 includeCustom 或者 excludeCustom 时该参数生效，用于指定需要保留或者忽略的参数。最大支持 10 个参数。
        # @type Values: Array

        attr_accessor :Switch, :Action, :Values

        def initialize(switch=nil, action=nil, values=nil)
          @Switch = switch
          @Action = action
          @Values = values
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Action = params['Action']
          @Values = params['Values']
        end
      end

      # 回源 URL 重写 配置参数。
      class UpstreamURLRewriteParameters < TencentCloud::Common::AbstractModel
        # @param Type: 回源 URL 重写类型。仅支持填写 Path。
        # @type Type: String
        # @param Action: 回源 URL 重写动作。取值有：
        # <li><b>replace</b>：指替换完整路径。用于将完整的请求 URL Path 替换为指定路径。
        # </li>
        # <li><b>addPrefix</b>：指增加路径前缀。用于增加指定路径前缀至请求 URL Path。
        # </li>
        # <li><b>rmvPrefix</b>：指移除路径前缀。用于移除请求 URL Path 的指定路径前缀。
        # </li>
        # <li><b>regexReplace</b>：指正则替换完整路径。用于通过 Google RE2 正则表达式匹配和替换完整路径。
        # </li>
        # @type Action: String
        # @param Value: 回源 URL 重写值。需要满足 URL Path 规范，且保证重写后的 Path 以 / 开头，以防止回源 URL 的 Host 被修改，长度范围为 1～1024。当 Action 为 addPrefix 时，不能以 / 结尾；当 Action 为 rmvPrefix 时，不能存在 *；当 Action 为 regexReplace 时，支持用 $NUM 引用正则捕获组，其中 NUM 代表组编号，如 $1，最多支持 $9。
        # @type Value: String
        # @param Regex: 回源 URL 重写用于正则替换匹配完整路径的正则表达式。需要满足 Google RE2 规范，长度范围为 1～1024。当 Action 为 regexReplace 时，此字段必填，否则无需填写此字段。
        # @type Regex: String

        attr_accessor :Type, :Action, :Value, :Regex

        def initialize(type=nil, action=nil, value=nil, regex=nil)
          @Type = type
          @Action = action
          @Value = value
          @Regex = regex
        end

        def deserialize(params)
          @Type = params['Type']
          @Action = params['Action']
          @Value = params['Value']
          @Regex = params['Regex']
        end
      end

      # 自定义 nameservers
      class VanityNameServers < TencentCloud::Common::AbstractModel
        # @param Switch: 自定义 ns 开关，取值有：
        # <li> on：开启；</li>
        # <li> off：关闭。</li>
        # @type Switch: String
        # @param Servers: 自定义 ns 列表。
        # @type Servers: Array

        attr_accessor :Switch, :Servers

        def initialize(switch=nil, servers=nil)
          @Switch = switch
          @Servers = servers
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Servers = params['Servers']
        end
      end

      # 自定义名字服务器 IP 信息
      class VanityNameServersIps < TencentCloud::Common::AbstractModel
        # @param Name: 自定义名字服务器名称。
        # @type Name: String
        # @param IPv4: 自定义名字服务器 IPv4 地址。
        # @type IPv4: String

        attr_accessor :Name, :IPv4

        def initialize(name=nil, ipv4=nil)
          @Name = name
          @IPv4 = ipv4
        end

        def deserialize(params)
          @Name = params['Name']
          @IPv4 = params['IPv4']
        end
      end

      # [Vary 特性](https://cloud.tencent.com/document/product/1552/89301) 配置参数。
      class VaryParameters < TencentCloud::Common::AbstractModel
        # @param Switch: Vary 特性配置开关，取值有：
        # <li>on：开启；</li>
        # <li>off：关闭。</li>
        # @type Switch: String

        attr_accessor :Switch

        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # VerifyOwnership请求参数结构体
      class VerifyOwnershipRequest < TencentCloud::Common::AbstractModel
        # @param Domain: 站点域名或者站点下的加速域名。
        # @type Domain: String

        attr_accessor :Domain

        def initialize(domain=nil)
          @Domain = domain
        end

        def deserialize(params)
          @Domain = params['Domain']
        end
      end

      # VerifyOwnership返回参数结构体
      class VerifyOwnershipResponse < TencentCloud::Common::AbstractModel
        # @param Status: 归属权验证结果。
        # <li>success：验证成功；</li>
        # <li>fail：验证失败。</li>
        # @type Status: String
        # @param Result: 当验证结果为不通过时，该字段会返回原因，协助您排查问题。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，由服务端生成，每次请求都会返回（若请求因其他原因未能抵达服务端，则该次请求不会获得 RequestId）。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Result, :RequestId

        def initialize(status=nil, result=nil, requestid=nil)
          @Status = status
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 视频流配置参数。
      class VideoTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Codec: 视频流的编码格式，可选值：<li>H.264: 使用 H.264 编码；</li><li>H.265: 使用 H.265 编码。</li>
        # @type Codec: String
        # @param Fps: 视频帧率，取值范围：[0, 30]，单位：Hz。
        # 取值为 0，表示帧率和原始视频保持一致，但最大不超过 30。
        # 默认值：0。
        # @type Fps: Float
        # @param Bitrate: 视频流的码率，取值范围：0 和 [128, 10000]，单位：kbps。
        # 取值为 0，表示自动根据视频画面和质量选择视频码率。
        # 默认值：0。
        # @type Bitrate: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：<li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li><li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>默认值：open。
        # @type ResolutionAdaptive: String
        # @param Width: 视频流宽度（或长边）的最大值，取值范围：0 和 [128, 1920]，单位：px。<li>当 Width、Height 均为 0，则分辨率同源；</li><li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li><li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li><li>当 Width、Height 均非 0，则分辨率按用户指定。</li>默认值：0。
        # @type Width: Integer
        # @param Height: 视频流高度（或短边）的最大值，取值范围：0 和 [128, 1080]，单位：px。<li>当 Width、Height 均为 0，则分辨率同源；</li><li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li><li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li><li>当 Width、Height 均非 0，则分辨率按用户指定。</li>默认值：0。
        # @type Height: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：<li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁”或者“拉长”。</li><li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li><li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li><li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊填充。</li>默认值：black 。
        # @type FillType: String

        attr_accessor :Codec, :Fps, :Bitrate, :ResolutionAdaptive, :Width, :Height, :FillType

        def initialize(codec=nil, fps=nil, bitrate=nil, resolutionadaptive=nil, width=nil, height=nil, filltype=nil)
          @Codec = codec
          @Fps = fps
          @Bitrate = bitrate
          @ResolutionAdaptive = resolutionadaptive
          @Width = width
          @Height = height
          @FillType = filltype
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Fps = params['Fps']
          @Bitrate = params['Bitrate']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Width = params['Width']
          @Height = params['Height']
          @FillType = params['FillType']
        end
      end

      # 无
      class Waf < TencentCloud::Common::AbstractModel
        # @param Switch: Waf开关，取值为：
        # <li> on：开启；</li>
        # <li> off：关闭。</li>
        # @type Switch: String
        # @param PolicyId: 策略ID。
        # @type PolicyId: Integer

        attr_accessor :Switch, :PolicyId

        def initialize(switch=nil, policyid=nil)
          @Switch = switch
          @PolicyId = policyid
        end

        def deserialize(params)
          @Switch = params['Switch']
          @PolicyId = params['PolicyId']
        end
      end

      # Waf配置。
      class WafConfig < TencentCloud::Common::AbstractModel
        # @param Switch: WafConfig开关，取值有：
        # <li> on：开启；</li>
        # <li> off：关闭。</li>开关仅与配置是否生效有关，即使为off（关闭），也可以正常修改配置的内容。
        # @type Switch: String
        # @param Level: 上一次设置的防护级别，取值有：
        # <li> loose：宽松；</li>
        # <li> normal：正常；</li>
        # <li> strict：严格；</li>
        # <li> stricter：超严格；</li>
        # <li> custom：自定义。</li>
        # @type Level: String
        # @param Mode: 全局WAF模式，取值有：
        # <li> block：阻断（全局阻断，但可对详细规则配置观察）；</li>
        # <li> observe：观察（无论详细规则配置什么，都为观察）。</li>
        # @type Mode: String
        # @param WafRule: 托管规则详细配置。如果为null，默认使用历史配置。
        # @type WafRule: :class:`Tencentcloud::Teo.v20220901.models.WafRule`
        # @param AiRule: AI规则引擎防护配置。如果为null，默认使用历史配置。
        # @type AiRule: :class:`Tencentcloud::Teo.v20220901.models.AiRule`

        attr_accessor :Switch, :Level, :Mode, :WafRule, :AiRule

        def initialize(switch=nil, level=nil, mode=nil, wafrule=nil, airule=nil)
          @Switch = switch
          @Level = level
          @Mode = mode
          @WafRule = wafrule
          @AiRule = airule
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Level = params['Level']
          @Mode = params['Mode']
          unless params['WafRule'].nil?
            @WafRule = WafRule.new
            @WafRule.deserialize(params['WafRule'])
          end
          unless params['AiRule'].nil?
            @AiRule = AiRule.new
            @AiRule.deserialize(params['AiRule'])
          end
        end
      end

      # Waf规则
      class WafRule < TencentCloud::Common::AbstractModel
        # @param Switch: 托管规则开关，取值有：
        # <li> on：开启；</li>
        # <li> off：关闭。</li>
        # @type Switch: String
        # @param BlockRuleIDs: 黑名单ID列表，将规则ID加入本参数列表中代表该ID关闭，即该规则ID不再生效。
        # @type BlockRuleIDs: Array
        # @param ObserveRuleIDs: 观察模式ID列表，将规则ID加入本参数列表中代表该ID使用观察模式生效，即该规则ID进入观察模式。
        # @type ObserveRuleIDs: Array

        attr_accessor :Switch, :BlockRuleIDs, :ObserveRuleIDs

        def initialize(switch=nil, blockruleids=nil, observeruleids=nil)
          @Switch = switch
          @BlockRuleIDs = blockruleids
          @ObserveRuleIDs = observeruleids
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockRuleIDs = params['BlockRuleIDs']
          @ObserveRuleIDs = params['ObserveRuleIDs']
        end
      end

      # WebSocket配置
      class WebSocket < TencentCloud::Common::AbstractModel
        # @param Switch: WebSocket 超时时间配置开关，取值有：
        # <li>on：使用Timeout作为WebSocket超时时间；</li>
        # <li>off：平台仍支持WebSocket连接，此时使用系统默认的15秒为超时时间。</li>
        # @type Switch: String
        # @param Timeout: 超时时间，单位为秒，最大超时时间120秒。
        # @type Timeout: Integer

        attr_accessor :Switch, :Timeout

        def initialize(switch=nil, timeout=nil)
          @Switch = switch
          @Timeout = timeout
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Timeout = params['Timeout']
        end
      end

      # WebSocket 配置。
      class WebSocketParameters < TencentCloud::Common::AbstractModel
        # @param Switch: WebSocket 超时时间配置开关，取值有：
        # <li>on：使用 Timeout 作为 WebSocket 超时时间；</li>
        # <li>off：平台仍支持 WebSocket 连接，此时使用系统默认的 15 秒为超时时间。</li>
        # @type Switch: String
        # @param Timeout: 超时时间，单位为秒，最大超时时间 120 秒。<br>注意：当 Switch 为 on 时，此字段必填，否则此字段不生效。
        # @type Timeout: Integer

        attr_accessor :Switch, :Timeout

        def initialize(switch=nil, timeout=nil)
          @Switch = switch
          @Timeout = timeout
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Timeout = params['Timeout']
        end
      end

      # 站点信息
      class Zone < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点 ID。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param OriginalNameServers: 站点当前使用的 NS 列表。
        # @type OriginalNameServers: Array
        # @param NameServers: 腾讯云分配的 NS 列表。
        # @type NameServers: Array
        # @param Status: 站点状态，取值有：
        # <li> active：NS 已切换； </li>
        # <li> pending：NS 未切换；</li>
        # <li> moved：NS 已切走；</li>
        # <li> deactivated：被封禁。 </li>
        # <li> initializing：待绑定套餐。 </li>
        # @type Status: String
        # @param Type: 站点接入方式，取值有：
        # <li> full：NS 接入；</li>
        # <li> partial：CNAME 接入；</li>
        # <li> noDomainAccess：无域名接入；</li>
        # @type Type: String
        # @param Paused: 站点是否关闭。
        # @type Paused: Boolean
        # @param CnameSpeedUp: 是否开启 CNAME 加速，取值有：
        # <li> enabled：开启；</li>
        # <li> disabled：关闭。</li>
        # @type CnameSpeedUp: String
        # @param CnameStatus: CNAME 接入状态，取值有：
        # <li> finished：站点已验证；</li>
        # <li> pending：站点验证中。</li>
        # @type CnameStatus: String
        # @param Tags: 资源标签列表。
        # @type Tags: Array
        # @param Resources: 计费资源列表。
        # @type Resources: Array
        # @param CreatedOn: 站点创建时间。
        # @type CreatedOn: String
        # @param ModifiedOn: 站点修改时间。
        # @type ModifiedOn: String
        # @param Area: 站点接入地域，取值有：
        # <li> global：全球；</li>
        # <li> mainland：中国大陆；</li>
        # <li> overseas：境外区域。</li>
        # @type Area: String
        # @param VanityNameServers: 用户自定义 NS 信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VanityNameServers: :class:`Tencentcloud::Teo.v20220901.models.VanityNameServers`
        # @param VanityNameServersIps: 用户自定义 NS IP 信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VanityNameServersIps: Array
        # @param ActiveStatus: 展示状态，取值有：
        # <li> active：已启用；</li>
        # <li> inactive：未生效；</li>
        # <li> paused：已停用。</li>
        # @type ActiveStatus: String
        # @param AliasZoneName: 站点别名。数字、英文、-和_组合，限制20个字符。
        # @type AliasZoneName: String
        # @param IsFake: 是否伪站点，取值有：
        # <li> 0：非伪站点；</li>
        # <li> 1：伪站点。</li>
        # @type IsFake: Integer
        # @param LockStatus: 锁定状态，取值有：<li> enable：正常，允许进行修改操作；</li><li> disable：锁定中，不允许进行修改操作；</li><li> plan_migrate：套餐迁移中，不允许进行修改操作。</li>
        # @type LockStatus: String
        # @param OwnershipVerification: 归属权验证信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OwnershipVerification: :class:`Tencentcloud::Teo.v20220901.models.OwnershipVerification`

        attr_accessor :ZoneId, :ZoneName, :OriginalNameServers, :NameServers, :Status, :Type, :Paused, :CnameSpeedUp, :CnameStatus, :Tags, :Resources, :CreatedOn, :ModifiedOn, :Area, :VanityNameServers, :VanityNameServersIps, :ActiveStatus, :AliasZoneName, :IsFake, :LockStatus, :OwnershipVerification

        def initialize(zoneid=nil, zonename=nil, originalnameservers=nil, nameservers=nil, status=nil, type=nil, paused=nil, cnamespeedup=nil, cnamestatus=nil, tags=nil, resources=nil, createdon=nil, modifiedon=nil, area=nil, vanitynameservers=nil, vanitynameserversips=nil, activestatus=nil, aliaszonename=nil, isfake=nil, lockstatus=nil, ownershipverification=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @OriginalNameServers = originalnameservers
          @NameServers = nameservers
          @Status = status
          @Type = type
          @Paused = paused
          @CnameSpeedUp = cnamespeedup
          @CnameStatus = cnamestatus
          @Tags = tags
          @Resources = resources
          @CreatedOn = createdon
          @ModifiedOn = modifiedon
          @Area = area
          @VanityNameServers = vanitynameservers
          @VanityNameServersIps = vanitynameserversips
          @ActiveStatus = activestatus
          @AliasZoneName = aliaszonename
          @IsFake = isfake
          @LockStatus = lockstatus
          @OwnershipVerification = ownershipverification
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @OriginalNameServers = params['OriginalNameServers']
          @NameServers = params['NameServers']
          @Status = params['Status']
          @Type = params['Type']
          @Paused = params['Paused']
          @CnameSpeedUp = params['CnameSpeedUp']
          @CnameStatus = params['CnameStatus']
          unless params['Tags'].nil?
            @Tags = []
            params['Tags'].each do |i|
              tag_tmp = Tag.new
              tag_tmp.deserialize(i)
              @Tags << tag_tmp
            end
          end
          unless params['Resources'].nil?
            @Resources = []
            params['Resources'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @Resources << resource_tmp
            end
          end
          @CreatedOn = params['CreatedOn']
          @ModifiedOn = params['ModifiedOn']
          @Area = params['Area']
          unless params['VanityNameServers'].nil?
            @VanityNameServers = VanityNameServers.new
            @VanityNameServers.deserialize(params['VanityNameServers'])
          end
          unless params['VanityNameServersIps'].nil?
            @VanityNameServersIps = []
            params['VanityNameServersIps'].each do |i|
              vanitynameserversips_tmp = VanityNameServersIps.new
              vanitynameserversips_tmp.deserialize(i)
              @VanityNameServersIps << vanitynameserversips_tmp
            end
          end
          @ActiveStatus = params['ActiveStatus']
          @AliasZoneName = params['AliasZoneName']
          @IsFake = params['IsFake']
          @LockStatus = params['LockStatus']
          unless params['OwnershipVerification'].nil?
            @OwnershipVerification = OwnershipVerification.new
            @OwnershipVerification.deserialize(params['OwnershipVerification'])
          end
        end
      end

      # 站点加速配置。
      class ZoneConfig < TencentCloud::Common::AbstractModel
        # @param SmartRouting: 智能加速配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220901.models.SmartRoutingParameters`
        # @param Cache: 缓存过期时间配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Cache: :class:`Tencentcloud::Teo.v20220901.models.CacheConfigParameters`
        # @param MaxAge: 浏览器缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: :class:`Tencentcloud::Teo.v20220901.models.MaxAgeParameters`
        # @param CacheKey: 节点缓存键配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220901.models.CacheKeyConfigParameters`
        # @param CachePrefresh: 缓存预刷新配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CachePrefresh: :class:`Tencentcloud::Teo.v20220901.models.CachePrefreshParameters`
        # @param OfflineCache: 离线缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineCache: :class:`Tencentcloud::Teo.v20220901.models.OfflineCacheParameters`
        # @param Compression: 智能压缩配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: :class:`Tencentcloud::Teo.v20220901.models.CompressionParameters`
        # @param ForceRedirectHTTPS: 访问协议强制 HTTPS 跳转配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirectHTTPS: :class:`Tencentcloud::Teo.v20220901.models.ForceRedirectHTTPSParameters`
        # @param HSTS: HSTS 相关配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HSTS: :class:`Tencentcloud::Teo.v20220901.models.HSTSParameters`
        # @param TLSConfig: TLS 相关配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TLSConfig: :class:`Tencentcloud::Teo.v20220901.models.TLSConfigParameters`
        # @param OCSPStapling: OCSP 装订配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OCSPStapling: :class:`Tencentcloud::Teo.v20220901.models.OCSPStaplingParameters`
        # @param HTTP2: HTTP2 相关配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HTTP2: :class:`Tencentcloud::Teo.v20220901.models.HTTP2Parameters`
        # @param QUIC: QUIC 访问配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type QUIC: :class:`Tencentcloud::Teo.v20220901.models.QUICParameters`
        # @param UpstreamHTTP2: HTTP2 回源配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamHTTP2: :class:`Tencentcloud::Teo.v20220901.models.UpstreamHTTP2Parameters`
        # @param IPv6: IPv6 访问配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IPv6: :class:`Tencentcloud::Teo.v20220901.models.IPv6Parameters`
        # @param WebSocket: WebSocket 配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220901.models.WebSocketParameters`
        # @param PostMaxSize: POST 请求传输配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220901.models.PostMaxSizeParameters`
        # @param ClientIPHeader: 客户端 IP 回源请求头配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIPHeader: :class:`Tencentcloud::Teo.v20220901.models.ClientIPHeaderParameters`
        # @param ClientIPCountry: 回源时是否携带客户端 IP 所属地域信息的配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIPCountry: :class:`Tencentcloud::Teo.v20220901.models.ClientIPCountryParameters`
        # @param Grpc: gRPC 协议支持配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grpc: :class:`Tencentcloud::Teo.v20220901.models.GrpcParameters`
        # @param AccelerateMainland: 中国大陆加速优化配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccelerateMainland: :class:`Tencentcloud::Teo.v20220901.models.AccelerateMainlandParameters`
        # @param StandardDebug: 标准 Debug 配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandardDebug: :class:`Tencentcloud::Teo.v20220901.models.StandardDebugParameters`

        attr_accessor :SmartRouting, :Cache, :MaxAge, :CacheKey, :CachePrefresh, :OfflineCache, :Compression, :ForceRedirectHTTPS, :HSTS, :TLSConfig, :OCSPStapling, :HTTP2, :QUIC, :UpstreamHTTP2, :IPv6, :WebSocket, :PostMaxSize, :ClientIPHeader, :ClientIPCountry, :Grpc, :AccelerateMainland, :StandardDebug

        def initialize(smartrouting=nil, cache=nil, maxage=nil, cachekey=nil, cacheprefresh=nil, offlinecache=nil, compression=nil, forceredirecthttps=nil, hsts=nil, tlsconfig=nil, ocspstapling=nil, http2=nil, quic=nil, upstreamhttp2=nil, ipv6=nil, websocket=nil, postmaxsize=nil, clientipheader=nil, clientipcountry=nil, grpc=nil, acceleratemainland=nil, standarddebug=nil)
          @SmartRouting = smartrouting
          @Cache = cache
          @MaxAge = maxage
          @CacheKey = cachekey
          @CachePrefresh = cacheprefresh
          @OfflineCache = offlinecache
          @Compression = compression
          @ForceRedirectHTTPS = forceredirecthttps
          @HSTS = hsts
          @TLSConfig = tlsconfig
          @OCSPStapling = ocspstapling
          @HTTP2 = http2
          @QUIC = quic
          @UpstreamHTTP2 = upstreamhttp2
          @IPv6 = ipv6
          @WebSocket = websocket
          @PostMaxSize = postmaxsize
          @ClientIPHeader = clientipheader
          @ClientIPCountry = clientipcountry
          @Grpc = grpc
          @AccelerateMainland = acceleratemainland
          @StandardDebug = standarddebug
        end

        def deserialize(params)
          unless params['SmartRouting'].nil?
            @SmartRouting = SmartRoutingParameters.new
            @SmartRouting.deserialize(params['SmartRouting'])
          end
          unless params['Cache'].nil?
            @Cache = CacheConfigParameters.new
            @Cache.deserialize(params['Cache'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAgeParameters.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          unless params['CacheKey'].nil?
            @CacheKey = CacheKeyConfigParameters.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['CachePrefresh'].nil?
            @CachePrefresh = CachePrefreshParameters.new
            @CachePrefresh.deserialize(params['CachePrefresh'])
          end
          unless params['OfflineCache'].nil?
            @OfflineCache = OfflineCacheParameters.new
            @OfflineCache.deserialize(params['OfflineCache'])
          end
          unless params['Compression'].nil?
            @Compression = CompressionParameters.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['ForceRedirectHTTPS'].nil?
            @ForceRedirectHTTPS = ForceRedirectHTTPSParameters.new
            @ForceRedirectHTTPS.deserialize(params['ForceRedirectHTTPS'])
          end
          unless params['HSTS'].nil?
            @HSTS = HSTSParameters.new
            @HSTS.deserialize(params['HSTS'])
          end
          unless params['TLSConfig'].nil?
            @TLSConfig = TLSConfigParameters.new
            @TLSConfig.deserialize(params['TLSConfig'])
          end
          unless params['OCSPStapling'].nil?
            @OCSPStapling = OCSPStaplingParameters.new
            @OCSPStapling.deserialize(params['OCSPStapling'])
          end
          unless params['HTTP2'].nil?
            @HTTP2 = HTTP2Parameters.new
            @HTTP2.deserialize(params['HTTP2'])
          end
          unless params['QUIC'].nil?
            @QUIC = QUICParameters.new
            @QUIC.deserialize(params['QUIC'])
          end
          unless params['UpstreamHTTP2'].nil?
            @UpstreamHTTP2 = UpstreamHTTP2Parameters.new
            @UpstreamHTTP2.deserialize(params['UpstreamHTTP2'])
          end
          unless params['IPv6'].nil?
            @IPv6 = IPv6Parameters.new
            @IPv6.deserialize(params['IPv6'])
          end
          unless params['WebSocket'].nil?
            @WebSocket = WebSocketParameters.new
            @WebSocket.deserialize(params['WebSocket'])
          end
          unless params['PostMaxSize'].nil?
            @PostMaxSize = PostMaxSizeParameters.new
            @PostMaxSize.deserialize(params['PostMaxSize'])
          end
          unless params['ClientIPHeader'].nil?
            @ClientIPHeader = ClientIPHeaderParameters.new
            @ClientIPHeader.deserialize(params['ClientIPHeader'])
          end
          unless params['ClientIPCountry'].nil?
            @ClientIPCountry = ClientIPCountryParameters.new
            @ClientIPCountry.deserialize(params['ClientIPCountry'])
          end
          unless params['Grpc'].nil?
            @Grpc = GrpcParameters.new
            @Grpc.deserialize(params['Grpc'])
          end
          unless params['AccelerateMainland'].nil?
            @AccelerateMainland = AccelerateMainlandParameters.new
            @AccelerateMainland.deserialize(params['AccelerateMainland'])
          end
          unless params['StandardDebug'].nil?
            @StandardDebug = StandardDebugParameters.new
            @StandardDebug.deserialize(params['StandardDebug'])
          end
        end
      end

      # 站点配置相关信息。
      class ZoneConfigParameters < TencentCloud::Common::AbstractModel
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param ZoneConfig: 站点配置信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ZoneConfig: :class:`Tencentcloud::Teo.v20220901.models.ZoneConfig`

        attr_accessor :ZoneName, :ZoneConfig

        def initialize(zonename=nil, zoneconfig=nil)
          @ZoneName = zonename
          @ZoneConfig = zoneconfig
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
          unless params['ZoneConfig'].nil?
            @ZoneConfig = ZoneConfig.new
            @ZoneConfig.deserialize(params['ZoneConfig'])
          end
        end
      end

      # 返回站点信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param ZoneId: 站点id。
        # @type ZoneId: String
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param Paused: 站点是否停用。取值有：<li>false：非停用；</li>
        # <li>true：停用。</li>
        # @type Paused: Boolean

        attr_accessor :ZoneId, :ZoneName, :Paused

        def initialize(zoneid=nil, zonename=nil, paused=nil)
          @ZoneId = zoneid
          @ZoneName = zonename
          @Paused = paused
        end

        def deserialize(params)
          @ZoneId = params['ZoneId']
          @ZoneName = params['ZoneName']
          @Paused = params['Paused']
        end
      end

      # 站点配置。
      class ZoneSetting < TencentCloud::Common::AbstractModel
        # @param ZoneName: 站点名称。
        # @type ZoneName: String
        # @param Area: 站点加速区域信息，取值有：
        # <li> mainland：中国境内加速；</li>
        # <li> overseas：中国境外加速。</li>
        # @type Area: String
        # @param CacheKey: 节点缓存键配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheKey: :class:`Tencentcloud::Teo.v20220901.models.CacheKey`
        # @param Quic: Quic访问配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Quic: :class:`Tencentcloud::Teo.v20220901.models.Quic`
        # @param PostMaxSize: POST请求传输配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostMaxSize: :class:`Tencentcloud::Teo.v20220901.models.PostMaxSize`
        # @param Compression: 智能压缩配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Compression: :class:`Tencentcloud::Teo.v20220901.models.Compression`
        # @param UpstreamHttp2: Http2回源配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpstreamHttp2: :class:`Tencentcloud::Teo.v20220901.models.UpstreamHttp2`
        # @param ForceRedirect: 访问协议强制Https跳转配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForceRedirect: :class:`Tencentcloud::Teo.v20220901.models.ForceRedirect`
        # @param CacheConfig: 缓存过期时间配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CacheConfig: :class:`Tencentcloud::Teo.v20220901.models.CacheConfig`
        # @param Origin: 源站配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: :class:`Tencentcloud::Teo.v20220901.models.Origin`
        # @param SmartRouting: 智能加速配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SmartRouting: :class:`Tencentcloud::Teo.v20220901.models.SmartRouting`
        # @param MaxAge: 浏览器缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MaxAge: :class:`Tencentcloud::Teo.v20220901.models.MaxAge`
        # @param OfflineCache: 离线缓存配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OfflineCache: :class:`Tencentcloud::Teo.v20220901.models.OfflineCache`
        # @param WebSocket: WebSocket配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WebSocket: :class:`Tencentcloud::Teo.v20220901.models.WebSocket`
        # @param ClientIpHeader: 客户端IP回源请求头配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIpHeader: :class:`Tencentcloud::Teo.v20220901.models.ClientIpHeader`
        # @param CachePrefresh: 缓存预刷新配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CachePrefresh: :class:`Tencentcloud::Teo.v20220901.models.CachePrefresh`
        # @param Ipv6: Ipv6访问配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Ipv6: :class:`Tencentcloud::Teo.v20220901.models.Ipv6`
        # @param Https: Https 加速配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Https: :class:`Tencentcloud::Teo.v20220901.models.Https`
        # @param ClientIpCountry: 回源时是否携带客户端IP所属地域信息的配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIpCountry: :class:`Tencentcloud::Teo.v20220901.models.ClientIpCountry`
        # @param Grpc: Grpc协议支持配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grpc: :class:`Tencentcloud::Teo.v20220901.models.Grpc`
        # @param ImageOptimize: 图片优化相关配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageOptimize: :class:`Tencentcloud::Teo.v20220901.models.ImageOptimize`
        # @param AccelerateMainland: 中国大陆加速优化配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccelerateMainland: :class:`Tencentcloud::Teo.v20220901.models.AccelerateMainland`
        # @param StandardDebug: 标准 Debug 配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StandardDebug: :class:`Tencentcloud::Teo.v20220901.models.StandardDebug`
        # @param JITVideoProcess: 视频即时处理配置。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type JITVideoProcess: :class:`Tencentcloud::Teo.v20220901.models.JITVideoProcess`

        attr_accessor :ZoneName, :Area, :CacheKey, :Quic, :PostMaxSize, :Compression, :UpstreamHttp2, :ForceRedirect, :CacheConfig, :Origin, :SmartRouting, :MaxAge, :OfflineCache, :WebSocket, :ClientIpHeader, :CachePrefresh, :Ipv6, :Https, :ClientIpCountry, :Grpc, :ImageOptimize, :AccelerateMainland, :StandardDebug, :JITVideoProcess

        def initialize(zonename=nil, area=nil, cachekey=nil, quic=nil, postmaxsize=nil, compression=nil, upstreamhttp2=nil, forceredirect=nil, cacheconfig=nil, origin=nil, smartrouting=nil, maxage=nil, offlinecache=nil, websocket=nil, clientipheader=nil, cacheprefresh=nil, ipv6=nil, https=nil, clientipcountry=nil, grpc=nil, imageoptimize=nil, acceleratemainland=nil, standarddebug=nil, jitvideoprocess=nil)
          @ZoneName = zonename
          @Area = area
          @CacheKey = cachekey
          @Quic = quic
          @PostMaxSize = postmaxsize
          @Compression = compression
          @UpstreamHttp2 = upstreamhttp2
          @ForceRedirect = forceredirect
          @CacheConfig = cacheconfig
          @Origin = origin
          @SmartRouting = smartrouting
          @MaxAge = maxage
          @OfflineCache = offlinecache
          @WebSocket = websocket
          @ClientIpHeader = clientipheader
          @CachePrefresh = cacheprefresh
          @Ipv6 = ipv6
          @Https = https
          @ClientIpCountry = clientipcountry
          @Grpc = grpc
          @ImageOptimize = imageoptimize
          @AccelerateMainland = acceleratemainland
          @StandardDebug = standarddebug
          @JITVideoProcess = jitvideoprocess
        end

        def deserialize(params)
          @ZoneName = params['ZoneName']
          @Area = params['Area']
          unless params['CacheKey'].nil?
            @CacheKey = CacheKey.new
            @CacheKey.deserialize(params['CacheKey'])
          end
          unless params['Quic'].nil?
            @Quic = Quic.new
            @Quic.deserialize(params['Quic'])
          end
          unless params['PostMaxSize'].nil?
            @PostMaxSize = PostMaxSize.new
            @PostMaxSize.deserialize(params['PostMaxSize'])
          end
          unless params['Compression'].nil?
            @Compression = Compression.new
            @Compression.deserialize(params['Compression'])
          end
          unless params['UpstreamHttp2'].nil?
            @UpstreamHttp2 = UpstreamHttp2.new
            @UpstreamHttp2.deserialize(params['UpstreamHttp2'])
          end
          unless params['ForceRedirect'].nil?
            @ForceRedirect = ForceRedirect.new
            @ForceRedirect.deserialize(params['ForceRedirect'])
          end
          unless params['CacheConfig'].nil?
            @CacheConfig = CacheConfig.new
            @CacheConfig.deserialize(params['CacheConfig'])
          end
          unless params['Origin'].nil?
            @Origin = Origin.new
            @Origin.deserialize(params['Origin'])
          end
          unless params['SmartRouting'].nil?
            @SmartRouting = SmartRouting.new
            @SmartRouting.deserialize(params['SmartRouting'])
          end
          unless params['MaxAge'].nil?
            @MaxAge = MaxAge.new
            @MaxAge.deserialize(params['MaxAge'])
          end
          unless params['OfflineCache'].nil?
            @OfflineCache = OfflineCache.new
            @OfflineCache.deserialize(params['OfflineCache'])
          end
          unless params['WebSocket'].nil?
            @WebSocket = WebSocket.new
            @WebSocket.deserialize(params['WebSocket'])
          end
          unless params['ClientIpHeader'].nil?
            @ClientIpHeader = ClientIpHeader.new
            @ClientIpHeader.deserialize(params['ClientIpHeader'])
          end
          unless params['CachePrefresh'].nil?
            @CachePrefresh = CachePrefresh.new
            @CachePrefresh.deserialize(params['CachePrefresh'])
          end
          unless params['Ipv6'].nil?
            @Ipv6 = Ipv6.new
            @Ipv6.deserialize(params['Ipv6'])
          end
          unless params['Https'].nil?
            @Https = Https.new
            @Https.deserialize(params['Https'])
          end
          unless params['ClientIpCountry'].nil?
            @ClientIpCountry = ClientIpCountry.new
            @ClientIpCountry.deserialize(params['ClientIpCountry'])
          end
          unless params['Grpc'].nil?
            @Grpc = Grpc.new
            @Grpc.deserialize(params['Grpc'])
          end
          unless params['ImageOptimize'].nil?
            @ImageOptimize = ImageOptimize.new
            @ImageOptimize.deserialize(params['ImageOptimize'])
          end
          unless params['AccelerateMainland'].nil?
            @AccelerateMainland = AccelerateMainland.new
            @AccelerateMainland.deserialize(params['AccelerateMainland'])
          end
          unless params['StandardDebug'].nil?
            @StandardDebug = StandardDebug.new
            @StandardDebug.deserialize(params['StandardDebug'])
          end
          unless params['JITVideoProcess'].nil?
            @JITVideoProcess = JITVideoProcess.new
            @JITVideoProcess.deserialize(params['JITVideoProcess'])
          end
        end
      end

    end
  end
end

